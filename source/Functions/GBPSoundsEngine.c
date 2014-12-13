/*
 * GBPSoundsEngine.c
 *
 *  Created on: 17 Oct 2013
 *      Author: Jamie
 */

#include "Data/MusicData.h"
#include "Data/MemoryLocations.h"
#include "Functions/LoadUnalignedCode.h"
#include "Functions/MemoryManagement.h"
#include "Functions/Flags.h"

#define SetOctave0 0xD8
#define SetOctave7 0xD0
#define SONG_FADE_FRAME_DELAY 5

typedef enum SoundEngineCommands
{
	SetNoteAttributesAndLength,
	SetKeyShift,
	SetTempo,
	SetDutyCycle,
	SetNoteAttributes,
	Arpeggiate,
	SetDutyCycle2,
	Portamento,
	PitchBend,
	SetModulation,
	E2,
	E3,
	E4,
	SetChannelVolume,
	SetTone,
	E7,
	E8,
	E9,
	EA,
	EB,
	EC,
	ED,
	EE,
	SetPan,
	F0,
	F1,
	F2,
	F3,
	F4,
	F5,
	F6,
	F7,
	F8,
	F9,
	FA,
	JumpIf,
	Jump,
	Goto,
	Call,
	End
} SoundEngineCommands;

void SetOnTrackEndFunction(VoidFunctionPointerVoid functionPtr, int channelNumber)
{
	if (channelNumber < GBP_Set_Max)
	{
		gbpData[channelNumber].onEndFunction = functionPtr;
	}
}

void ClearMusicPlaybackData(u32 channelSet)
{
	memset32(&(gbpData[channelSet]), 0, sizeof(GBPMusicStruct) >> 2);
}

u16 CalculateLengthOfTone(u8 frameDelay, u16 tempo, u8 bitLength, u16 previousLeftover)
{
	return ((frameDelay * (bitLength + 1)) * tempo) + previousLeftover;
}

u16 CalculateTonePitchFromMidiNumber(u8 commandID, s8 keyShift, u8 octave, u16 tone)
{
	s16 note = ((commandID & 0xF0) >> 4) - 1;
	note += keyShift;
	while (note < 0)
	{
		note += 12;
		octave--;
	}
	while (note > 11)
	{
		note -= 12;
		octave++;
	}
	return (u16)((2048 - (CGBFreq[note] >> (2 + octave))) + tone);
}

u16 CalculateWavePitchFromMidiNumber(u8 commandID, s8 keyShift, u8 octave, u16 tone)
{
	s16 note = (((commandID & 0xF0) >> 4) - 1);
	note += (12 * octave);
	note += keyShift;
	if (note > 75)
	{
		note = 75;
	}
	return (u16)(freq[note] + tone);
}

void ExecuteToneModifications(GBPToneData* theData, u8 trackID, u8 commandID, u16 tempo)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	u16 activationValue = 0;
	u16 firstValue = 0;
	u16 secondValue = 0;
	u16 noteLength = CalculateLengthOfTone(theData[0].frameDelay, tempo, (commandID & 0xF), theData[0].noteLength2);
	theData[0].noteLength1 = (noteLength & 0xFF00) >> 8;
	theData[0].noteLength2 = noteLength & 0xFF;
	if ((commandID & 0xF0) != 0)
	{
		theData[0].pitch = CalculateTonePitchFromMidiNumber(commandID, theData[0].keyShift, theData[0].currentOctave, theData[0].tone);
		activationValue = theData[0].pitch | 0x8000;
		secondValue = (theData[0].currentVoice << 6) | (theData[0].fadeSpeed << 8) | (theData[0].fadeDirection << 11) | (theData[0].velocity << 12);
		firstValue = 0;
	}
	else
	{
		theData[0].pitch = 0;
	}
	tone1Controller[(trackID << 2)] = (trackID == 0)?firstValue:secondValue;
	if (trackID == 0)
	{
		tone1Controller[1] = secondValue;
	}
	tone1Controller[(trackID << 2) + 2] = activationValue;
	if (player.stereoSound == 1)
	{
		if (trackID == 0)
		{
			u8 pan = theData[0].pan & 0x11;
			u16 valueToWrite = (tone1Controller[0x10] & 0xEEFF) | (pan << 0x8);
			tone1Controller[0x10] = valueToWrite;
		}
		else
		{
			u8 pan = theData[0].pan & 0x22;
			u16 valueToWrite = (tone1Controller[0x10] & 0xDDFF) | (pan << 0x8);
			tone1Controller[0x10] = valueToWrite;
		}
	}
	theData[0].nextInstruction++;
}

void ExecuteWaveModifications(GBPWaveData* theData, u8 commandID, u16 tempo)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	u16 velocity = 0;
	u16 pitch = 0;
	u16 activationValue = 0;
	u16 noteLength = CalculateLengthOfTone(theData[0].frameDelay, tempo, (commandID & 0xF), theData[0].noteLength2);
	theData[0].noteLength1 = (noteLength & 0xFF00) >> 8;
	theData[0].noteLength2 = noteLength & 0xFF;
	if ((commandID & 0xF0) != 0)
	{
		theData[0].pitch = CalculateWavePitchFromMidiNumber(commandID, theData[0].keyShift, theData[0].currentOctave, theData[0].tone);
		velocity = theData[0].velocity << 13;
		pitch = theData[0].pitch | 0x8000;
		activationValue = 0x80;
	}
	else
	{
		theData[0].pitch = 0;
	}
	if (player.stereoSound == 1)
	{
		u8 pan = theData[0].pan & 0x44;
		u16 valueToWrite = (tone1Controller[0x10] & 0xBBFF) | (pan << 0x8);
		tone1Controller[0x10] = valueToWrite;
	}
	tone1Controller[8] = activationValue;
	tone1Controller[9] = velocity;
	tone1Controller[10] = pitch;
}

void WriteNoisePattern(GBPNoiseData* theData)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	u16 value1 = (theData[0].samplePointer[0] & 0xF);
	theData[0].noiseFrameDelay = value1;
	u16 value2 = (theData[0].samplePointer[1] << 8) | 0x3F;
	u16 value3 = theData[0].samplePointer[2] | 0x8000;
	theData[0].samplePointer += 3;
	tone1Controller[12] = value2;
	tone1Controller[14] = value3;
}

void ExecuteNoiseModifications(GBPNoiseData* theData, u8 commandID, u16 tempo)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	u16 noteLength = CalculateLengthOfTone(theData[0].frameDelay, tempo, (commandID & 0xF), theData[0].noteLength2);
	theData[0].noteLength1 = (noteLength & 0xFF00) >> 8;
	theData[0].noteLength2 = noteLength & 0xFF;
	if (player.stereoSound == 1)
	{
		u8 pan = theData[0].pan & 0x88;
		u16 valueToWrite = (tone1Controller[0x10] & 0x77FF) | (pan << 0x8);
		tone1Controller[0x10] = valueToWrite;
	}
	if ((commandID & 0xF0) != 0)
	{
		u32 engineSet = theData[0].noiseSet;
		u32* location = (u32*)((u32*)noiseDataPointers)[engineSet];
		location = (u32*)(location[(commandID & 0xF0) >> 4]);
		theData[0].samplePointer = (u8*)location;
		theData[0].noiseActive = 1;
		WriteNoisePattern(theData);
	}
	else
	{
		tone1Controller[12] = 0;
		tone1Controller[14] = 0;
	}
}

void NullifyHardware()
{
	memset32((void*)(&gbpBuffer), 0, 9);
}

void StopSongPlayback()
{
	ClearMusicPlaybackData(GBP_Set_BGM);
	NullifyHardware();
	currentSongPlaybackStatus = DoNothing;
	currentSongID = 0;
}

void PauseSongPlayback()
{
	gbpData[GBP_Set_BGM].isPlaying = false;
	NullifyHardware();
}

void ResumeSongPlayback()
{
	gbpData[GBP_Set_BGM].isPlaying = true;
	currentSongPlaybackStatus = ContinueSong;
}

u16 U16LittleEndianToBigEndian(u16 input)
{
	u16 temp = (input & 0xFF) << 8;
	return (input >> 8) | temp;
}

u8 ExecuteCommandsTone(GBPToneData* theData, u8 commandID, u8 trackID, u32 musicSetIndex)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	u8 commandLength = 1;
	if (commandID >= SetOctave7 && commandID < SetOctave0)
	{
		theData[0].currentOctave = 7 - (commandID & 7);
	}
	else
	{
		commandID -= SetOctave0;
		switch (commandID)
		{
			case SetNoteAttributesAndLength:
			{
				u8 theValue = theData[0].nextInstruction[1];
				theData[0].frameDelay = ((theValue == 0 || theValue > 0xF) ? 0xC : theValue);
				u8 byte2 = theData[0].nextInstruction[2];
				theData[0].velocity = (byte2 & 0xF0) >> 4;
				theData[0].fadeSpeed = byte2 & 0x7;
				theData[0].fadeDirection = (byte2 & 0x8) >> 3;
				commandLength = 3;
				break;
			}
			case SetKeyShift:
			{
				s8 keyShift = theData[0].nextInstruction[1];
				theData[0].keyShift = (-12 * ((keyShift & 0x10) >> 4)) + (keyShift & 0xF);
				commandLength = 2;
				break;
			}
			case SetTempo:
				gbpData[musicSetIndex].tempo = U16LittleEndianToBigEndian(LoadUShortNumber(theData[0].nextInstruction, 1));
				commandLength = 3;
				break;
			case SetDutyCycle: case SetDutyCycle2:
				theData[0].currentVoice = theData[0].nextInstruction[1];
				commandLength = 2;
				break;
			case SetNoteAttributes:
			{
				u8 byte2 = theData[0].nextInstruction[1];
				theData[0].velocity = (byte2 & 0xF0) >> 4;
				theData[0].fadeSpeed = byte2 & 0x7;
				theData[0].fadeDirection = (byte2 & 0x8) >> 3;
				commandLength = 2;
				break;
			}
			case Arpeggiate:
			{
				u8 byte = theData[0].nextInstruction[1];
				if (byte != 0)
				{
					GenericSetFlag(ArpeggiationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
					theData[0].arpeggiationDelayCount = (byte & 0xF0) >> 4;
					theData[0].arpeggiationCountdown = theData[0].arpeggiationDelayCount;
					GenericClearFlag(ArpeggiationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
					theData[0].arpeggiationVoice = byte & 0x3;
				}
				else
				{
					GenericClearFlag(ArpeggiationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				}
				commandLength = 2;
				break;
			}
			case PitchBend:
				GenericSetFlag(PitchBendActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				// Note that this is incomplete and requires research into how pitch
				// bends are handled in the original engine
				//u8 byte = theData[0].nextInstruction[2];
				commandLength = 3;
				break;
			case Portamento:
				// No data for this as yet as it is a completely custom effect
				// At least it is in terms of this engine, since the
				// portamento effect is not present in RBY or GSC
				GenericSetFlag(PortamentoActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				theData[0].portamentoDelay = theData[0].nextInstruction[1];
				theData[0].portamentoSpeed = theData[0].nextInstruction[2];
				theData[0].portamentoTarget = CalculateTonePitchFromMidiNumber(theData[0].nextInstruction[3], theData[0].keyShift, theData[0].currentOctave, theData[0].tone);
				commandLength = 4;
				break;
			case SetModulation:
			{
				u8 theByte = theData[0].nextInstruction[2];
				if (theByte != 0)
				{
					theData[0].modulationDelay = theData[0].nextInstruction[1] & 0x3F;
					theData[0].modulationMode = (theData[0].nextInstruction[1] & 0xC0) >> 6;
					theData[0].modulationDepth = (theByte & 0xF0) >> 4;
					theData[0].modulationSpeed = theByte & 0xF;
					GenericSetFlag(ModulationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				}
				else
				{
					GenericClearFlag(ModulationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				}
				commandLength = 3;
				break;
			}
			case SetChannelVolume:
				if (theData[0].channelVolume != theData[0].nextInstruction[1])
				{
					theData[0].channelVolume = theData[0].nextInstruction[1];
					tone1Controller[16] = (tone1Controller[16] & 0xFF00) | theData[0].channelVolume;
				}
				commandLength = 2;
				break;
			case SetTone:
				theData[0].tone = U16LittleEndianToBigEndian(LoadUShortNumber(theData[0].nextInstruction, 1));
				commandLength = 3;
				break;
			case SetPan:
			{
				u8 byte = theData[0].nextInstruction[1];
				theData[0].pan = (byte == 0) ? 0xFF : byte;
				commandLength = 2;
				break;
			}
			case JumpIf:
				commandLength = 6;
				break;
			case Jump:
				theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 1);
				commandLength = 0;
				break;
			case Goto:
				if (theData[0].returnLocation == 0)
				{
					if (theData[0].nextInstruction[1] == 0 || theData[0].nextInstruction[1] - 1 > theData[0].loopCounter)
					{
						if (theData[0].nextInstruction[1] != 0)
						{
							theData[0].loopCounter++;
						}
						theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 2);
						commandLength = 0;
					}
					else if (theData[0].nextInstruction[1] != 0 && theData[0].loopCounter != 0)
					{
						theData[0].loopCounter = 0;
						commandLength = 6;
					}
				}
				else
				{
					if (theData[0].nextInstruction[1] == 0 || theData[0].nextInstruction[1] - 1 > theData[0].loopCounter2)
					{
						if (theData[0].nextInstruction[1] != 0)
						{
							theData[0].loopCounter2++;
						}
						theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 2);
						commandLength = 0;
					}
					else if (theData[0].nextInstruction[1] != 0 && theData[0].loopCounter2 != 0)
					{
						theData[0].loopCounter2 = 0;
						commandLength = 6;
					}
				}
				break;
			case Call:
				if (theData[0].returnLocation == 0)
				{
					theData[0].returnLocation = theData[0].nextInstruction + 5;
					theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 1);
				}
				commandLength = 0;
				break;
			case End:
				commandLength = 0;
				if (theData[0].returnLocation == 0)
				{
					if (trackID == 0)
					{
						gbpData[musicSetIndex].tone1Included = 0;
					}
					else
					{
						gbpData[musicSetIndex].tone2Included = 0;
					}
					return 0xFF;
				}
				else
				{
					theData[0].nextInstruction = theData[0].returnLocation;
					theData[0].returnLocation = 0;
				}
				break;
		}
	}
	theData[0].nextInstruction += commandLength;
	return theData[0].nextInstruction[0];
}

void SwitchWavePattern(u8 patternID)
{
	vu16* tone1Controller = (vu16*)(0x04000060);
	if (patternID < NUMWAVEPATTERNS)
	{
		WavePattern* mainPattern = (WavePattern*)0x04000090;
		tone1Controller[8] = 0x40;
		mainPattern[0] = patterns[patternID];
		tone1Controller[8] = 0x0;
	}
}

u8 ExecuteCommandsWave(GBPWaveData* theData, u8 commandID, u32 musicSetIndex)
{
	u8 commandLength = 1;
	if (commandID >= 0xD0 && commandID < 0xD8)
	{
		theData[0].currentOctave = 7 - (commandID & 7);
	}
	else
	{
		commandID -= 0xD8;
		switch (commandID)
		{
			case 0:
			{
				u8 theValue = theData[0].nextInstruction[1];
				theData[0].frameDelay = ((theValue == 0 || theValue > 0xF) ? 0xC : theValue);
				u8 byte2 = theData[0].nextInstruction[2];
				u8 velocity = (byte2 & 0x70) >> 4;
				if (velocity > 4)
				{
					velocity = 1;
				}
				theData[0].velocity = velocity;
				u8 newVoice = byte2 & 0xF;
				if (theData[0].currentVoice != newVoice)
				{
					SwitchWavePattern(newVoice);
				}
				theData[0].currentVoice = newVoice;
				commandLength = 3;
				break;
			}
			case 1:
			{
				s8 keyShift = theData[0].nextInstruction[1];
				theData[0].keyShift = (-12 * ((keyShift & 0x10) >> 4)) + (keyShift & 0xF);
				commandLength = 2;
				break;
			}
			case 3: case 6:
				theData[0].currentVoice = theData[0].nextInstruction[1];
				commandLength = 2;
				break;
			case 4:
			{
				u8 byte2 = theData[0].nextInstruction[1];
				u8 velocity = (byte2 & 0x70) >> 4;
				if (velocity > 4)
				{
					velocity = 1;
				}
				theData[0].velocity = velocity;
				u8 newVoice = byte2 & 0xF;
				if (theData[0].currentVoice != newVoice)
				{
					SwitchWavePattern(newVoice);
				}
				theData[0].currentVoice = newVoice;
				commandLength = 2;
				break;
			}
			case Arpeggiate:
			{
				commandLength = 2;
				break;
			}
			case 8:
				commandLength = 3;
				break;
			case 9:
			{
				u8 theByte = theData[0].nextInstruction[2];
				if (theByte != 0)
				{
					theData[0].modulationDelay = theData[0].nextInstruction[1] & 0x3F;
					theData[0].modulationMode = (theData[0].nextInstruction[1] & 0xC0) >> 6;
					theData[0].modulationDepth = (theByte & 0xF0) >> 4;
					theData[0].modulationSpeed = theByte & 0xF;
					GenericSetFlag(ModulationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				}
				else
				{
					GenericClearFlag(ModulationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				}
				commandLength = 3;
				break;
			}
			case 14:
				theData[0].tone = U16LittleEndianToBigEndian(LoadUShortNumber(theData[0].nextInstruction, 1));
				commandLength = 3;
				break;
			case 23:
			{
				u8 byte = theData[0].nextInstruction[1];
				theData[0].pan = (byte == 0) ? 0xFF : byte;
				commandLength = 2;
				break;
			}
			case 35:
				commandLength = 6;
				break;
			case 36:
				theData[0].nextInstruction = (u8*)(LoadUIntPointer((u8*)theData[0].nextInstruction, 1));
				commandLength = 0;
				break;
			case 37:
				if (theData[0].returnLocation == 0)
				{
					if (theData[0].nextInstruction[1] == 0 || theData[0].nextInstruction[1] - 1 > theData[0].loopCounter)
					{
						if (theData[0].nextInstruction[1] != 0)
						{
							theData[0].loopCounter++;
						}
						theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 2);
						commandLength = 0;
					}
					else if (theData[0].nextInstruction[1] != 0 && theData[0].loopCounter != 0)
					{
						theData[0].loopCounter = 0;
						commandLength = 6;
					}
				}
				else
				{
					if (theData[0].nextInstruction[1] == 0 || theData[0].nextInstruction[1] - 1 > theData[0].loopCounter2)
					{
						if (theData[0].nextInstruction[1] != 0)
						{
							theData[0].loopCounter2++;
						}
						theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 2);
						commandLength = 0;
					}
					else if (theData[0].nextInstruction[1] != 0 && theData[0].loopCounter2 != 0)
					{
						theData[0].loopCounter2 = 0;
						commandLength = 6;
					}
				}
				break;
			case 38:
				if (theData[0].returnLocation == 0)
				{
					theData[0].returnLocation = theData[0].nextInstruction + 5;
					theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 1);
				}
				commandLength = 0;
				break;
			case 39:
				commandLength = 0;
				if (theData[0].returnLocation == 0)
				{
					gbpData[musicSetIndex].waveIncluded = 0;
					return 0xFF;
				}
				else
				{
					theData[0].nextInstruction = theData[0].returnLocation;
					theData[0].returnLocation = 0;
				}
				break;
		}
	}
	theData[0].nextInstruction += commandLength;
	return theData[0].nextInstruction[0];
}

u8 ExecuteCommandsNoise(GBPNoiseData* theData, u8 commandID, u32 musicSetIndex)
{
	u8 commandLength = 2;
	commandID -= 0xD8;
	if (commandID == 0)
	{
		u8 theValue = theData[0].nextInstruction[1];
		theData[0].frameDelay = ((theValue == 0 || theValue > 0xF) ? 0xC : theValue);
	}
	else if (commandID == 11)
	{
		theData[0].noiseSet = theData[0].nextInstruction[1];
	}
	else if (commandID == 23)
	{
		u8 byte = theData[0].nextInstruction[1];
		theData[0].pan = (byte == 0) ? 0xFF : byte;
	}
	else if (commandID == 37)
	{
		if (theData[0].nextInstruction[1] == 0 || theData[0].nextInstruction[1] - 1 > theData[0].loopCounter)
		{
			if (theData[0].nextInstruction[1] != 0)
			{
				theData[0].loopCounter++;
			}
			theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 2);
			commandLength = 0;
		}
		else if (theData[0].nextInstruction[1] != 0 && theData[0].loopCounter != 0)
		{
			theData[0].loopCounter = 0;
			commandLength = 6;
		}
	}
	else if (commandID == 38)
	{
		if (theData[0].returnLocation == 0)
		{
			theData[0].returnLocation = theData[0].nextInstruction + 5;
			theData[0].nextInstruction = (u8*)LoadUIntPointer((u8*)theData[0].nextInstruction, 1);
		}
		commandLength = 0;
	}
	else if (commandID == 39)
	{
		commandLength = 0;
		if (theData[0].returnLocation == 0)
		{
			gbpData[musicSetIndex].noiseIncluded = 0;
			return 0xFF;
		}
		else
		{
			theData[0].nextInstruction = theData[0].returnLocation;
			theData[0].returnLocation = 0;
		}
	}
	else
	{
		commandLength = 1;
	}
	theData[0].nextInstruction += commandLength;
	return theData[0].nextInstruction[0];
}

u16 GetModulationPitchAndUpdateData(GBPToneData* theData)
{
	theData[0].modulationSpeedDelay = theData[0].modulationSpeed;
	u8 theValue = 0;
	u16 pitch = theData[0].pitch;
	u32 flagResult = GenericCheckFlag(ModulationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
	switch (theData[0].modulationMode)
	{
		case 0:
		{
			u8 halfValue = theData[0].modulationDepth >> 1;
			if (flagResult == 0)
			{
				theValue = 1;
				pitch += (theData[0].modulationDepth - halfValue);
			}
			else
			{
				pitch -= halfValue;
			}
			break;
		}
		case 1:
			if (flagResult == 0)
			{
				theValue = 1;
			}
			else
			{
				pitch -= theData[0].modulationDepth;
			}
			break;
		case 2:
			if (flagResult == 0)
			{
				theValue = 1;
			}
			else
			{
				pitch += theData[0].modulationDepth;
			}
			break;
	}
	(theValue) ? GenericSetFlag(ModulationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) : GenericClearFlag(ModulationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
	return pitch;
}

void ModulateToneTrack(GBPToneData* theData, u8 trackID)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	if (GenericCheckFlag(PitchBendActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags)  == 1)
	{
		theData[0].pitch += theData[0].pitchBendRate;
	}
	if (GenericCheckFlag(PortamentoActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1)
	{
		if (theData[0].portamentoCountdown == 0)
		{
			if (theData[0].portamentoTarget != theData[0].pitch)
			{
				if (theData[0].portamentoTarget > theData[0].pitch)
				{
					theData[0].pitch++;
				}
				else
				{
					theData[0].pitch--;
				}
			}
			else
			{
				GenericClearFlag(PortamentoActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
			}
		}
		else
		{
			theData[0].portamentoCountdown--;
		}
	}
	if (theData[0].modulationCountdown > 0)
	{
		theData[0].modulationCountdown--;
	}
	if (GenericCheckFlag(ModulationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1)
	{
		if (theData[0].modulationCountdown == 0)
		{
			if (theData[0].modulationSpeedDelay == 0 && theData[0].pitch != 0)
			{
				tone1Controller[2 + (trackID << 2)] &= 0x8000;
				tone1Controller[2 + (trackID << 2)] |= GetModulationPitchAndUpdateData(theData);
			}
			else
			{
				theData[0].modulationSpeedDelay--;
			}
		}
	}
}

void ResetToneModulationArpeggiationCounters(GBPToneData* theData, u8 trackID)
{
	theData[0].modulationCountdown = theData[0].modulationDelay;
	GenericClearFlag(ModulationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
	theData[0].modulationSpeedDelay = theData[0].modulationSpeed;
	if (theData[0].modulationCountdown == 0)
	{
		ModulateToneTrack(theData, trackID);
	}
	theData[0].arpeggiationCountdown = (GenericCheckFlag(ArpeggiationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1) ? theData[0].arpeggiationDelayCount : 0;
	GenericClearFlag(ArpeggiationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
	GenericClearFlag(PortamentoActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
	GenericClearFlag(PitchBendActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
}

void ModulateWaveTrack(GBPWaveData* theData)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	if (GenericCheckFlag(PitchBendActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1)
	{
		theData[0].pitch += theData[0].pitchBendRate;
	}
	if (theData[0].modulationCountdown > 0)
	{
		theData[0].modulationCountdown--;
	}
	if (GenericCheckFlag(ModulationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1)
	{
		if (theData[0].modulationCountdown == 0)
		{
			if (theData[0].modulationSpeedDelay == 0 && theData[0].pitch != 0)
			{
				theData[0].modulationSpeedDelay = theData[0].modulationSpeed;
				u8 theValue = 0;
				u16 pitch = theData[0].pitch;
				u32 flagCheck = GenericCheckFlag(ModulationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				switch (theData[0].modulationMode)
				{
					case 0:
					{
						u8 halfValue = theData[0].modulationDepth >> 1;
						if (flagCheck == 0)
						{
							theValue = 1;
							pitch += (theData[0].modulationDepth - halfValue);
						}
						else
						{
							pitch -= halfValue;
						}
						break;
					}
					case 1:
						if (flagCheck == 0)
						{
							theValue = 1;
						}
						else
						{
							pitch -= theData[0].modulationDepth;
						}
						break;
					case 2:
						if (flagCheck == 0)
						{
							theValue = 1;
						}
						else
						{
							pitch += theData[0].modulationDepth;
						}
						break;
				}
				(theValue) ? GenericSetFlag(ModulationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) : GenericClearFlag(ModulationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
				tone1Controller[10] &= 0x8000;
				tone1Controller[10] |= pitch;
			}
			else
			{
				theData[0].modulationSpeedDelay--;
			}
		}
	}
}

void ArpeggiateToneTrack(GBPToneData* theData, u8 trackID)
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	if (GenericCheckFlag(ArpeggiationActivation, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1)
	{
		if (theData[0].arpeggiationCountdown > 0)
		{
			theData[0].arpeggiationCountdown--;
		}
		else
		{
			u16 location = (trackID == 0)?1:4;
			theData[0].arpeggiationCountdown = theData[0].arpeggiationDelayCount;
			tone1Controller[location] = (tone1Controller[location] & 0xFF00) | (((GenericCheckFlag(ArpeggiationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1)?theData[0].currentVoice:theData[0].arpeggiationVoice) << 6);
			(GenericCheckFlag(ArpeggiationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) == 1) ? GenericClearFlag(ArpeggiationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags) : GenericSetFlag(ArpeggiationStatus, (u8*)&theData[0].statusFlags, NumGBPEngineFlags);
		}
	}
}

void UpdateCurrentlyPlayingSong()
{
	u32 i;
	for (i = 0; i < GBP_Set_Max; i++)
	{
		if (gbpData[i].isPlaying)
		{
			u32 counter = 0;
			if (gbpData[i].tone1Included != 0)
			{
				counter++;
				if (gbpData[i].tone1.noteLength1 < 2)
				{
					u32 commandID = gbpData[i].tone1.nextInstruction[0];
					while (commandID >= 0xD0)
					{
						commandID = ExecuteCommandsTone(&(gbpData[i].tone1), commandID, 0, i);
						if (commandID == 0xFF && gbpData[i].tone1.returnLocation == 0)
						{
							ExecuteToneModifications(&(gbpData[i].tone1), 0, 0, gbpData[i].tempo);
							break;
						}
					}
					if (commandID != 0xFF)
					{
						ExecuteToneModifications(&(gbpData[i].tone1), 0, commandID, gbpData[i].tempo);
						ResetToneModulationArpeggiationCounters(&(gbpData[i].tone1), 0);
					}
				}
				else
				{
					gbpData[i].tone1.noteLength1--;
					GBPToneData* theData = &(gbpData[i].tone1);
					ModulateToneTrack(theData, 0);
					ArpeggiateToneTrack(theData, 0);
				}
			}
			if (gbpData[i].tone2Included != 0)
			{
				counter++;
				if (gbpData[i].tone2.noteLength1 < 2)
				{
					u32 commandID = gbpData[i].tone2.nextInstruction[0];
					while (commandID >= 0xD0)
					{
						commandID = ExecuteCommandsTone(&(gbpData[i].tone2), commandID, 1, i);
						if (commandID == 0xFF && gbpData[i].tone2.returnLocation == 0)
						{
							ExecuteToneModifications(&(gbpData[i].tone2), 1, 0, gbpData[i].tempo);
							break;
						}
					}
					if (commandID != 0xFF)
					{
						ExecuteToneModifications(&(gbpData[i].tone2), 1, commandID, gbpData[i].tempo);
						ResetToneModulationArpeggiationCounters(&(gbpData[i].tone2), 1);
					}
				}
				else
				{
					gbpData[i].tone2.noteLength1--;
					GBPToneData* theData = &(gbpData[i].tone2);
					ModulateToneTrack(theData, 1);
					ArpeggiateToneTrack(theData, 1);
				}
			}
			if (gbpData[i].waveIncluded != 0)
			{
				counter++;
				if (gbpData[i].wave.noteLength1 < 2)
				{
					u32 commandID = gbpData[i].wave.nextInstruction[0];
					while (commandID >= 0xD0)
					{
						commandID = ExecuteCommandsWave(&(gbpData[i].wave), commandID, i);
						if (commandID == 0xFF && gbpData[i].wave.returnLocation == 0)
						{
							ExecuteWaveModifications(&(gbpData[i].wave), 0, gbpData[i].tempo);
							break;
						}
					}
					if (commandID != 0xFF)
					{
						ExecuteWaveModifications(&(gbpData[i].wave), commandID, gbpData[i].tempo);
						gbpData[i].wave.nextInstruction++;
						gbpData[i].wave.modulationCountdown = gbpData[i].wave.modulationDelay;
						GenericClearFlag(ModulationStatus, (u8*)&gbpData[i].wave.statusFlags, NumGBPEngineFlags);
						gbpData[i].wave.modulationSpeedDelay = gbpData[i].wave.modulationSpeed;
						if (gbpData[i].wave.modulationCountdown == 0)
						{
							ModulateWaveTrack(&(gbpData[i].wave));
						}
					}
				}
				else
				{
					gbpData[i].wave.noteLength1--;
					ModulateWaveTrack(&(gbpData[i].wave));
				}
			}
			if (gbpData[i].noiseIncluded != 0)
			{
				counter++;
				if (gbpData[i].noise.noteLength1 < 2)
				{
					u32 commandID = gbpData[i].noise.nextInstruction[0];
					while (commandID >= 0xD0)
					{
						commandID = ExecuteCommandsNoise(&(gbpData[i].noise), commandID, i);
						if (commandID == 0xFF && gbpData[i].noise.returnLocation == 0)
						{
							ExecuteNoiseModifications((GBPNoiseData*)(&gbpData[i].noise), 0, gbpData[i].tempo);
							break;
						}
					}
					if (commandID != 0xFF)
					{
						ExecuteNoiseModifications((GBPNoiseData*)(&gbpData[i].noise), commandID, gbpData[i].tempo);
						gbpData[i].noise.nextInstruction++;
					}
					else
					{
						gbpData[i].noise.noiseActive = 0;
						gbpData[i].noise.noiseFrameDelay = 0;
						gbpData[i].noiseIncluded = 0;
					}
				}
				else
				{
					gbpData[i].noise.noteLength1--;
					if (gbpData[i].noise.noiseActive == 1)
					{
						if (gbpData[i].noise.noiseFrameDelay == 0 && gbpData[i].noise.samplePointer[0] != 0xFF)
						{
							WriteNoisePattern((GBPNoiseData*)(&gbpData[i].noise));
						}
						else if (gbpData[i].noise.samplePointer[0] == 0xFF)
						{
							gbpData[i].noise.noiseActive = 0;
							gbpData[i].noise.noiseFrameDelay = 0;
						}
						else
						{
							gbpData[i].noise.noiseFrameDelay--;
						}
					}
				}
			}
			if (!counter)
			{
				if (gbpData[i].onEndFunction)
				{
					gbpData[i].onEndFunction();
				}
			}
		}
	}
}

void InitialiseGBPSoundsEngine()
{
	*((vu32*)0x04000084) = 0x80;
	*((vu16*)0x04000088) = 0xC200;
	*((vu16*)0x04000074) = 0x8000;
	*((vu16*)0x04000070) = 0x80;
	gbpBuffer[0x10] = 0xFF77;
	gbpBuffer[0x11] = 0x2;
	SwitchWavePattern(0);
}

GBPTrackHeader* ClearGBPData(u16 id, u32 channelSet)
{
	NullifyHardware();
	InitialiseGBPSoundsEngine();
	ClearMusicPlaybackData(channelSet);
	return gbpSongs[id];
}

void PutTrackDataIntoIWRAM(u16 songID, u32 channelSet)
{
	GBPTrackHeader* header = ClearGBPData(songID, channelSet);
	switch(header->trackType)
	{
		case 0:
			gbpData[channelSet].tone1Included = 1;
			gbpData[channelSet].tone1.nextInstruction = header->songData;
			gbpData[channelSet].tone1.pan = 0xFF;
			break;
		case 1:
			gbpData[channelSet].tone2Included = 1;
			gbpData[channelSet].tone2.nextInstruction = header->songData;
			gbpData[channelSet].tone2.pan = 0xFF;
			break;
		case 2:
			gbpData[channelSet].waveIncluded = 1;
			gbpData[channelSet].wave.nextInstruction = header->songData;
			gbpData[channelSet].wave.pan = 0xFF;
			break;
		case 3:
			gbpData[channelSet].noiseIncluded = 1;
			gbpData[channelSet].noise.nextInstruction = header->songData;
			gbpData[channelSet].noise.pan = 0xFF;
			break;
	}
	u32 i;
	for (i = 1; i < header->numberOfTracks; i++)
	{
		switch(header->theTracks[i - 1].trackType)
		{
			case 0:
				gbpData[channelSet].tone1Included = 1;
				gbpData[channelSet].tone1.nextInstruction = header->theTracks[i - 1].songData;
				gbpData[channelSet].tone1.pan = 0xFF;
				break;
			case 1:
				gbpData[channelSet].tone2Included = 1;
				gbpData[channelSet].tone2.nextInstruction = header->theTracks[i - 1].songData;
				gbpData[channelSet].tone2.pan = 0xFF;
				break;
			case 2:
				gbpData[channelSet].waveIncluded = 1;
				gbpData[channelSet].wave.nextInstruction = header->theTracks[i - 1].songData;
				gbpData[channelSet].wave.pan = 0xFF;
				break;
			case 3:
				gbpData[channelSet].noiseIncluded = 1;
				gbpData[channelSet].noise.nextInstruction = header->theTracks[i - 1].songData;
				gbpData[channelSet].noise.pan = 0xFF;
				break;
		}
	}
	gbpData[channelSet].tempo = 0x100;
}

void StartNewSongImmediately()
{
	PutTrackDataIntoIWRAM(currentSongID - 1, GBP_Set_BGM);
	gbpData[GBP_Set_BGM].isPlaying = true;
	UpdateCurrentlyPlayingSong();
	currentSongPlaybackStatus = ContinueSong;
}

void StartNewFanfareImmediately()
{
	PutTrackDataIntoIWRAM(currentFanfareID - 1, GBP_Set_Fanfare);
	gbpData[GBP_Set_Fanfare].isPlaying = true;
	PauseSongPlayback();
	SetOnTrackEndFunction(&ResumeSongPlayback, GBP_Set_Fanfare);
}

void StartNewSFXImmediately()
{
	PutTrackDataIntoIWRAM(currentSFXID - 1, GBP_Set_SFX);
	gbpData[GBP_Set_SFX].isPlaying = true;
}

void SetupSongForPlayback(u16 songID, u8 songStartMode)
{
	if (songID == 0)
	{
		StopSongPlayback();
	}
	else
	{
		currentSongID = songID;
		u8 valueToWrite = 1;
		switch (songStartMode)
		{
			case 0:
				valueToWrite = StartSong;
				break;
			case 1:
				valueToWrite = FadeToSong;
				break;
		}
		currentSongPlaybackStatus = valueToWrite;
	}
}

void SetupFanfareForPlayback(u16 songID)
{
	if (songID)
	{
		currentFanfareID = songID;
		PutTrackDataIntoIWRAM(songID, GBP_Set_Fanfare);
	}
}

void SetupSFXForPlayback(u16 sfxID)
{
	if (sfxID)
	{
		currentSFXID = sfxID;
		PutTrackDataIntoIWRAM(sfxID, GBP_Set_SFX);
	}
}

void FadeSong()
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	UpdateCurrentlyPlayingSong();
	if (musicFadePointer != 0 && musicFadePointer[0].active == 1)
	{
		if (musicFadePointer[0].frameDelay == 0)
		{
			u8 target = (musicFadePointer[0].direction == 1) ? 0x77 : 0;
			u8 currentValue = tone1Controller[0x10] & 0xFF;
			if (currentValue == target)
			{
				switch (currentSongPlaybackStatus - FadeToSilence)
				{
					case 0:
						NullifyHardware();
						currentSongPlaybackStatus = 0;
						break;
					case 2:
						currentSongPlaybackStatus = 1;
						break;
					case 4:
						currentSongPlaybackStatus = 2;
					default:
						break;
				}
				MemoryDeallocate((void*)musicFadePointer);
				musicFadePointer = 0;
			}
			else
			{
				if (musicFadePointer[0].direction == 1)
				{
					currentValue += 0x11;
				}
				else
				{
					currentValue -= 0x11;
				}
				tone1Controller[0x10] = (tone1Controller[0x10] & 0xFF00) | currentValue;
				musicFadePointer[0].frameDelay = SONG_FADE_FRAME_DELAY;
				musicFadePointer[0].stepNumber++;
			}
		}
		else
		{
			musicFadePointer[0].frameDelay--;
		}
	}
}

void FadeSongOut()
{
	if (musicFadePointer == 0)
	{
		musicFadePointer = (MusicFadeInfo*)MemoryAllocate(sizeof(MusicFadeInfo));
		musicFadePointer[0].active = 1;
		musicFadePointer[0].direction = 0;
		musicFadePointer[0].frameDelay = SONG_FADE_FRAME_DELAY;
		musicFadePointer[0].stepNumber = 0;
	}
	FadeSong();
}

void FadeSongIn()
{
	if (musicFadePointer == 0)
	{
		musicFadePointer = (MusicFadeInfo*)MemoryAllocate(sizeof(MusicFadeInfo));
		musicFadePointer[0].active = 1;
		musicFadePointer[0].direction = 1;
		musicFadePointer[0].frameDelay = SONG_FADE_FRAME_DELAY;
		musicFadePointer[0].stepNumber = 0;
	}
	FadeSong();
}

void GBPSoundsMainEngine()
{
	vu16* tone1Controller = (vu16*)(&gbpBuffer);
	switch (currentSongPlaybackStatus)
	{
		case DoNothing:
			UpdateCurrentlyPlayingSong();
			break;
		case StartSong:
			StartNewSongImmediately();
			break;
		case ContinueSong:
			UpdateCurrentlyPlayingSong();
			break;
		case FadeToSilence:
			FadeSongOut();
			break;
		case FadeIn:
			StartNewSongImmediately();
			tone1Controller[0x10] &= 0xFF00;
			FadeSongIn();
			currentSongPlaybackStatus = FadeInSecond;
			break;
		case FadeToSong:
			FadeSongOut();
			if (currentSongPlaybackStatus == StartSong)
			{
				StartNewSongImmediately();
			}
			break;
		case Pause:
			NullifyHardware();
			currentSongPlaybackStatus = DoNothing;
			UpdateCurrentlyPlayingSong();
			break;
		case FadeInSecond:
			FadeSongIn();
			break;
		default:
			UpdateCurrentlyPlayingSong();
			currentSongPlaybackStatus = ContinueSong;
			break;
	}
	memcpy32((void*)(0x04000060), (void*)tone1Controller, 9);
	tone1Controller[2] &= 0x7FFF;
	tone1Controller[6] &= 0x7FFF;
	tone1Controller[10] &= 0x7FFF;
	tone1Controller[14] &= 0x7FFF;
}
