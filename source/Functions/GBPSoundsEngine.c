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
	DF,
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

vu16* tone1Controller = (vu16*)(0x04000060);

void ClearMusicPlaybackData()
{
	memset32(&(gbpData[currentMusicEngineSet]), 0, sizeof(GBPMusicStruct) >> 2);
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

void ExecuteToneModifications(GBPToneData* theData, u8 trackID, u8 commandID)
{
	u16 activationValue = 0;
	u16 firstValue = 0;
	u16 secondValue = 0;
	u16 noteLength = CalculateLengthOfTone(theData[0].frameDelay, gbpData[currentMusicEngineSet].tempo, (commandID & 0xF), theData[0].noteLength2);
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

void ExecuteWaveModifications(GBPWaveData* theData, u8 commandID)
{
	u16 velocity = 0;
	u16 pitch = 0;
	u16 activationValue = 0;
	u16 noteLength = CalculateLengthOfTone(theData[0].frameDelay, gbpData[currentMusicEngineSet].tempo, (commandID & 0xF), theData[0].noteLength2);
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

void WriteNoisePattern()
{
	u16 value1 = (gbpData[currentMusicEngineSet].noise.samplePointer[0] & 0xF);
	gbpData[currentMusicEngineSet].noise.noiseFrameDelay = value1;
	u16 value2 = (gbpData[currentMusicEngineSet].noise.samplePointer[1] << 8) | 0x3F;
	u16 value3 = gbpData[currentMusicEngineSet].noise.samplePointer[2] | 0x8000;
	gbpData[currentMusicEngineSet].noise.samplePointer += 3;
	tone1Controller[12] = value2;
	tone1Controller[14] = value3;
}

void ExecuteNoiseModifications(u8 commandID)
{
	u16 noteLength = CalculateLengthOfTone(gbpData[currentMusicEngineSet].noise.frameDelay, gbpData[currentMusicEngineSet].tempo, (commandID & 0xF), gbpData[currentMusicEngineSet].noise.noteLength2);
	gbpData[currentMusicEngineSet].noise.noteLength1 = (noteLength & 0xFF00) >> 8;
	gbpData[currentMusicEngineSet].noise.noteLength2 = noteLength & 0xFF;
	if (player.stereoSound == 1)
	{
		u8 pan = gbpData[currentMusicEngineSet].noise.pan & 0x88;
		u16 valueToWrite = (tone1Controller[0x10] & 0x77FF) | (pan << 0x8);
		tone1Controller[0x10] = valueToWrite;
	}
	if ((commandID & 0xF0) != 0)
	{
		u32 engineSet = gbpData[currentMusicEngineSet].noise.noiseSet;
		u32* location = (u32*)((u32*)noiseDataPointers)[engineSet];
		location = (u32*)(location[(commandID & 0xF0) >> 4]);
		gbpData[currentMusicEngineSet].noise.samplePointer = (u8*)location;
		gbpData[currentMusicEngineSet].noise.noiseActive = 1;
		WriteNoisePattern();
	}
	else
	{
		tone1Controller[12] = 0;
		tone1Controller[14] = 0;
	}
}

void NullifyHardware()
{
	ExecuteToneModifications(&(gbpData[currentMusicEngineSet].tone1), 0, 0);
	ExecuteToneModifications(&(gbpData[currentMusicEngineSet].tone2), 1, 0);
	ExecuteWaveModifications(&(gbpData[currentMusicEngineSet].wave), 0);
	ExecuteNoiseModifications(0);
}

void StopPlayback()
{
	ClearMusicPlaybackData();
	NullifyHardware();
	currentSongPlaybackStatus = 0;
	currentSongID = 0;
}

void PausePlayback()
{
	currentSongPlaybackStatus = 6;
}

void ResumePlayback()
{
	currentSongPlaybackStatus = 2;
}

void SetupSongForPlayback(u16 songID, u8 songStartMode)
{
	if (songID == 0)
	{
		StopPlayback();
	}
	else
	{
		currentSongID = songID;
		u8 valueToWrite = 1;
		switch (songStartMode)
		{
			case 0:
				valueToWrite = 1;
				break;
			case 1:
				valueToWrite = 5;
				break;
		}
		currentSongPlaybackStatus = valueToWrite;
		currentMusicEngineSet = 0;
	}
}

void SetupFanfareForPlayback(u16 songID)
{
	if (songID != 0)
	{
		currentFanfareID = songID;
		currentSongPlaybackStatus = 1;
		currentMusicEngineSet = 1;
	}
}

u16 U16LittleEndianToBigEndian(u16 input)
{
	u16 temp = (input & 0xFF) << 8;
	return (input >> 8) | temp;
}

u8 ExecuteCommandsTone(GBPToneData* theData, u8 commandID, u8 trackID)
{
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
				gbpData[currentMusicEngineSet].tempo = U16LittleEndianToBigEndian(LoadUShortNumber(theData[0].nextInstruction, 1));
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
					theData[0].arpeggiationActivationStatus = 1;
					theData[0].arpeggiationDelayCount = (byte & 0xF0) >> 4;
					theData[0].arpeggiationCountdown = theData[0].arpeggiationDelayCount;
					theData[0].arpeggiationStatus = 0;
					theData[0].arpeggiationVoice = byte & 0x3;
				}
				else
				{
					theData[0].arpeggiationActivationStatus = 0;
				}
				commandLength = 2;
				break;
			}
			case PitchBend:
				theData[0].pitchBendActivationStatus = 1;
				u8 byte = theData[0].nextInstruction[2];
				commandLength = 3;
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
					theData[0].modulationActivationStatus = 1;
				}
				else
				{
					theData[0].modulationActivationStatus = 0;
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
						gbpData[currentMusicEngineSet].tone1Included = 0;
					}
					else
					{
						gbpData[currentMusicEngineSet].tone2Included = 0;
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
	if (patternID < 11)
	{
		WavePattern* mainPattern = (WavePattern*)0x04000090;
		tone1Controller[8] = 0x40;
		mainPattern[0] = patterns[patternID];
		tone1Controller[8] = 0x0;
	}
}

u8 ExecuteCommandsWave(GBPWaveData* theData, u8 commandID)
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
					theData[0].modulationActivationStatus = 1;
				}
				else
				{
					theData[0].modulationActivationStatus = 0;
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
					gbpData[currentMusicEngineSet].waveIncluded = 0;
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

u8 ExecuteCommandsNoise(GBPNoiseData* theData, u8 commandID)
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
			gbpData[currentMusicEngineSet].noiseIncluded = 0;
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
	switch (theData[0].modulationMode)
	{
		case 0:
		{
			u8 halfValue = theData[0].modulationDepth >> 1;
			if (theData[0].modulationStatus == 0)
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
			if (theData[0].modulationStatus == 0)
			{
				theValue = 1;
			}
			else
			{
				pitch -= theData[0].modulationDepth;
			}
			break;
		case 2:
			if (theData[0].modulationStatus == 0)
			{
				theValue = 1;
			}
			else
			{
				pitch += theData[0].modulationDepth;
			}
			break;
	}
	theData[0].modulationStatus = theValue;
	return pitch;
}

void ModulateToneTrack(GBPToneData* theData, u8 trackID)
{
	if (theData[0].pitchBendActivationStatus == 1)
	{
		theData[0].pitch += (theData[0].pitchBendDirection == 1) ? -theData[0].pitchBendRate : theData[0].pitchBendRate;
	}
	if (theData[0].modulationCountdown > 0)
	{
		theData[0].modulationCountdown--;
	}
	if (theData[0].modulationActivationStatus == 1)
	{
		if (theData[0].modulationCountdown == 0)
		{
			if (theData[0].modulationSpeedDelay == 0 && theData[0].pitch != 0)
			{
				tone1Controller[2 + (trackID << 2)] = GetModulationPitchAndUpdateData(theData);
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
	theData[0].modulationStatus = 0;
	theData[0].modulationSpeedDelay = theData[0].modulationSpeed;
	if (theData[0].modulationCountdown == 0)
	{
		ModulateToneTrack(theData, trackID);
	}
	theData[0].arpeggiationCountdown = (theData[0].arpeggiationActivationStatus == 1)?theData[0].arpeggiationDelayCount:0;
	theData[0].arpeggiationStatus = 0;
}

void ModulateWaveTrack(GBPWaveData* theData)
{
	if (theData[0].pitchBendActivationStatus == 1)
	{
		theData[0].pitch += (theData[0].pitchBendDirection == 1) ? -theData[0].pitchBendRate : theData[0].pitchBendRate;
	}
	if (theData[0].modulationCountdown > 0)
	{
		theData[0].modulationCountdown--;
	}
	if (theData[0].modulationActivationStatus == 1)
	{
		if (theData[0].modulationCountdown == 0)
		{
			if (theData[0].modulationSpeedDelay == 0 && theData[0].pitch != 0)
			{
				theData[0].modulationSpeedDelay = theData[0].modulationSpeed;
				u8 theValue = 0;
				u16 pitch = theData[0].pitch;
				switch (theData[0].modulationMode)
				{
					case 0:
					{
						u8 halfValue = theData[0].modulationDepth >> 1;
						if (theData[0].modulationStatus == 0)
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
						if (theData[0].modulationStatus == 0)
						{
							theValue = 1;
						}
						else
						{
							pitch -= theData[0].modulationDepth;
						}
						break;
					case 2:
						if (theData[0].modulationStatus == 0)
						{
							theValue = 1;
						}
						else
						{
							pitch += theData[0].modulationDepth;
						}
						break;
				}
				theData[0].modulationStatus = theValue;
				tone1Controller[10] = pitch;
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
	if (theData[0].arpeggiationActivationStatus == 1)
	{
		if (theData[0].arpeggiationCountdown > 0)
		{
			theData[0].arpeggiationCountdown--;
		}
		else
		{
			u16 location = (trackID == 0)?1:4;
			theData[0].arpeggiationCountdown = theData[0].arpeggiationDelayCount;
			tone1Controller[location] = (tone1Controller[location] & 0xFF00) | (((theData[0].arpeggiationStatus == 1)?theData[0].currentVoice:theData[0].arpeggiationVoice) << 6);
			theData[0].arpeggiationStatus = (theData[0].arpeggiationStatus == 1)?0:1;
		}
	}
}

void UpdateCurrentlyPlayingSong()
{
	if (currentMusicEngineSet < 2)
	{
		u8 counter = 0;
		if (gbpData[currentMusicEngineSet].tone1Included != 0)
		{
			counter++;
			if (gbpData[currentMusicEngineSet].tone1.noteLength1 < 2)
			{
				u8 commandID = gbpData[currentMusicEngineSet].tone1.nextInstruction[0];
				while (commandID >= 0xD0)
				{
					commandID = ExecuteCommandsTone(&(gbpData[currentMusicEngineSet].tone1), commandID, 0);
					if (commandID == 0xFF && gbpData[currentMusicEngineSet].tone1.returnLocation == 0)
					{
						ExecuteToneModifications(&(gbpData[currentMusicEngineSet].tone1), 0, 0);
						break;
					}
				}
				if (commandID != 0xFF)
				{
					ExecuteToneModifications(&(gbpData[currentMusicEngineSet].tone1), 0, commandID);
					ResetToneModulationArpeggiationCounters(&(gbpData[currentMusicEngineSet].tone1), 0);
				}
			}
			else
			{
				gbpData[currentMusicEngineSet].tone1.noteLength1--;
				GBPToneData* theData = &(gbpData[currentMusicEngineSet].tone1);
				ModulateToneTrack(theData, 0);
				ArpeggiateToneTrack(theData, 0);
			}
		}
		if (gbpData[currentMusicEngineSet].tone2Included != 0)
		{
			counter++;
			if (gbpData[currentMusicEngineSet].tone2.noteLength1 < 2)
			{
				u8 commandID = gbpData[currentMusicEngineSet].tone2.nextInstruction[0];
				while (commandID >= 0xD0)
				{
					commandID = ExecuteCommandsTone(&(gbpData[currentMusicEngineSet].tone2), commandID, 1);
					if (commandID == 0xFF && gbpData[currentMusicEngineSet].tone2.returnLocation == 0)
					{
						ExecuteToneModifications(&(gbpData[currentMusicEngineSet].tone2), 1, 0);
						break;
					}
				}
				if (commandID != 0xFF)
				{
					ExecuteToneModifications(&(gbpData[currentMusicEngineSet].tone2), 1, commandID);
					ResetToneModulationArpeggiationCounters(&(gbpData[currentMusicEngineSet].tone2), 1);
				}
			}
			else
			{
				gbpData[currentMusicEngineSet].tone2.noteLength1--;
				GBPToneData* theData = &(gbpData[currentMusicEngineSet].tone2);
				ModulateToneTrack(theData, 1);
				ArpeggiateToneTrack(theData, 1);
			}
		}
		if (gbpData[currentMusicEngineSet].waveIncluded != 0)
		{
			counter++;
			if (gbpData[currentMusicEngineSet].wave.noteLength1 < 2)
			{
				u8 commandID = gbpData[currentMusicEngineSet].wave.nextInstruction[0];
				while (commandID >= 0xD0)
				{
					commandID = ExecuteCommandsWave(&(gbpData[currentMusicEngineSet].wave), commandID);
					if (commandID == 0xFF && gbpData[currentMusicEngineSet].wave.returnLocation == 0)
					{
						ExecuteWaveModifications(&(gbpData[currentMusicEngineSet].wave), 0);
						break;
					}
				}
				if (commandID != 0xFF)
				{
					ExecuteWaveModifications(&(gbpData[currentMusicEngineSet].wave), commandID);
					gbpData[currentMusicEngineSet].wave.nextInstruction++;
					gbpData[currentMusicEngineSet].wave.modulationCountdown = gbpData[currentMusicEngineSet].wave.modulationDelay;
					gbpData[currentMusicEngineSet].wave.modulationStatus = 0;
					gbpData[currentMusicEngineSet].wave.modulationSpeedDelay = gbpData[currentMusicEngineSet].wave.modulationSpeed;
					if (gbpData[currentMusicEngineSet].wave.modulationCountdown == 0)
					{
						ModulateWaveTrack(&(gbpData[currentMusicEngineSet].wave));
					}
				}
			}
			else
			{
				gbpData[currentMusicEngineSet].wave.noteLength1--;
				ModulateWaveTrack(&(gbpData[currentMusicEngineSet].wave));
			}
		}
		if (gbpData[currentMusicEngineSet].noiseIncluded != 0)
		{
			counter++;
			if (gbpData[currentMusicEngineSet].noise.noteLength1 < 2)
			{
				u8 commandID = gbpData[currentMusicEngineSet].noise.nextInstruction[0];
				while (commandID >= 0xD0)
				{
					commandID = ExecuteCommandsNoise(&(gbpData[currentMusicEngineSet].noise), commandID);
					if (commandID == 0xFF && gbpData[currentMusicEngineSet].noise.returnLocation == 0)
					{
						ExecuteNoiseModifications(0);
						break;
					}
				}
				if (commandID != 0xFF)
				{
					ExecuteNoiseModifications(commandID);
					gbpData[currentMusicEngineSet].noise.nextInstruction++;
				}
				else
				{
					gbpData[currentMusicEngineSet].noise.noiseActive = 0;
					gbpData[currentMusicEngineSet].noise.noiseFrameDelay = 0;
					gbpData[currentMusicEngineSet].noiseIncluded = 0;
				}
			}
			else
			{
				gbpData[currentMusicEngineSet].noise.noteLength1--;
				if (gbpData[currentMusicEngineSet].noise.noiseActive == 1)
				{
					if (gbpData[currentMusicEngineSet].noise.noiseFrameDelay == 0 && gbpData[currentMusicEngineSet].noise.samplePointer[0] != 0xFF)
					{
						WriteNoisePattern();
					}
					else if (gbpData[currentMusicEngineSet].noise.samplePointer[0] == 0xFF)
					{
						gbpData[currentMusicEngineSet].noise.noiseActive = 0;
						gbpData[currentMusicEngineSet].noise.noiseFrameDelay = 0;
					}
					else
					{
						gbpData[currentMusicEngineSet].noise.noiseFrameDelay--;
					}
				}
			}
		}
		if (currentMusicEngineSet == 1 && counter == 0)
		{
			currentMusicEngineSet = 0;
		}
	}
}

void InitialiseGBPSoundsEngine()
{
	*((vu16*)0x04000082) = 0x2;
	*((vu32*)0x04000084) = 0x80;
	*((vu16*)0x04000088) = 0xC200;
	*((vu16*)0x04000074) = 0x8000;
	*((vu16*)0x04000070) = 0x80;
	*((vu16*)0x04000080) = 0xFF77;
	SwitchWavePattern(0);
}

GBPTrackHeader* ClearGBPData(u16 id)
{
	InitialiseGBPSoundsEngine();
	NullifyHardware();
	ClearMusicPlaybackData();
	return gbpSongs[id];
}

void PutTrackDataIntoIWRAMAndStartPlayback(u16 songID)
{
	GBPTrackHeader* header = ClearGBPData(songID);
	vu32 i;
	for (i = 0; i < header->numberOfTracks; i++)
	{
		if (i == 0)
		{
			switch(header->trackType)
			{
				case 0:
					gbpData[currentMusicEngineSet].tone1Included = 1;
					gbpData[currentMusicEngineSet].tone1.nextInstruction = header->songData;
					gbpData[currentMusicEngineSet].tone1.pan = 0xFF;
					break;
				case 1:
					gbpData[currentMusicEngineSet].tone2Included = 1;
					gbpData[currentMusicEngineSet].tone2.nextInstruction = header->songData;
					gbpData[currentMusicEngineSet].tone2.pan = 0xFF;
					break;
				case 2:
					gbpData[currentMusicEngineSet].waveIncluded = 1;
					gbpData[currentMusicEngineSet].wave.nextInstruction = header->songData;
					gbpData[currentMusicEngineSet].wave.pan = 0xFF;
					break;
				case 3:
					gbpData[currentMusicEngineSet].noiseIncluded = 1;
					gbpData[currentMusicEngineSet].noise.nextInstruction = header->songData;
					gbpData[currentMusicEngineSet].noise.pan = 0xFF;
					break;
			}
		}
		else
		{
			switch(header->theTracks[i - 1].trackType)
			{
				case 0:
					gbpData[currentMusicEngineSet].tone1Included = 1;
					gbpData[currentMusicEngineSet].tone1.nextInstruction = header->theTracks[i - 1].songData;
					gbpData[currentMusicEngineSet].tone1.pan = 0xFF;
					break;
				case 1:
					gbpData[currentMusicEngineSet].tone2Included = 1;
					gbpData[currentMusicEngineSet].tone2.nextInstruction = header->theTracks[i - 1].songData;
					gbpData[currentMusicEngineSet].tone2.pan = 0xFF;
					break;
				case 2:
					gbpData[currentMusicEngineSet].waveIncluded = 1;
					gbpData[currentMusicEngineSet].wave.nextInstruction = header->theTracks[i - 1].songData;
					gbpData[currentMusicEngineSet].wave.pan = 0xFF;
					break;
				case 3:
					gbpData[currentMusicEngineSet].noiseIncluded = 1;
					gbpData[currentMusicEngineSet].noise.nextInstruction = header->theTracks[i - 1].songData;
					gbpData[currentMusicEngineSet].noise.pan = 0xFF;
					break;
			}
		}
	}
	gbpData[currentMusicEngineSet].tempo = 0x100;
	currentSongPlaybackStatus = 2;
	UpdateCurrentlyPlayingSong();
}

void StartNewSongImmediately()
{
	PutTrackDataIntoIWRAMAndStartPlayback(currentSongID - 1);
}

void StartNewFanfareImmediately()
{
	PutTrackDataIntoIWRAMAndStartPlayback(currentFanfareID - 1);
}

void FadeSong()
{
	UpdateCurrentlyPlayingSong();
	if (musicFadePointer != 0 && musicFadePointer[0].active == 1)
	{
		if (musicFadePointer[0].frameDelay == 0)
		{
			u8 target = (musicFadePointer[0].direction == 1) ? 0x77 : 0;
			u8 currentValue = tone1Controller[0x10] & 0xFF;
			if (currentValue == target)
			{
				switch (currentSongPlaybackStatus - 3)
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
	switch (currentSongPlaybackStatus)
	{
		case 1:
			StartNewSongImmediately();
			break;
		case 2:
			UpdateCurrentlyPlayingSong();
			break;
		case 3:
			FadeSongOut();
			break;
		case 4:
			StartNewSongImmediately();
			tone1Controller[0x10] &= 0xFF00;
			FadeSongIn();
			currentSongPlaybackStatus = 7;
			break;
		case 5:
			FadeSongOut();
			if (currentSongPlaybackStatus == 1)
			{
				StartNewSongImmediately();
			}
			break;
		case 6:
			NullifyHardware();
			currentSongPlaybackStatus = 0;
			break;
		case 7:
			FadeSongIn();
			break;
		default:
			break;
	}
}
