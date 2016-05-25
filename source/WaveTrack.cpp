/*
 * WaveTrack.cpp
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#include "Audio/GameBoySounds/WaveTrack.h"
#include "GlobalDefinitions.h"
#include "Audio/GameBoySounds/GBSChannel.h"
#include "Core/Game.h"

using namespace Core;

namespace Audio
{
	namespace GameBoySounds
	{
		RODATA_LOCATION u16 WaveTrack::freq[75] = {
			44,		// C3
			156,
			262,
			363,
			457,
			547,
			631,
			710,
			786,
			854,
			923,
			986,
			1046,	// C4
			1102,
			1155,
			1205,
			1253,
			1297,
			1339,
			1379,
			1417,
			1452,
			1486,
			1517,
			1546,	// C5
			1575,
			1602,
			1627,
			1650,
			1673,
			1694,
			1714,
			1732,
			1750,
			1767,
			1783,
			1798,	// C6
			1812,
			1825,
			1837,
			1849,
			1860,
			1871,
			1881,
			1890,
			1899,
			1907,
			1915,
			1923,	// C7
			1930,
			1936,
			1943,
			1949,
			1954,
			1959,
			1964,
			1969,
			1974,
			1978,
			1982,
			1985,	// C8
			1988,
			1992,
			1995,
			1998,
			2001,
			2004,
			2006,
			2009,
			2011,
			2013,
			2015,
			2017,
			2019,
			2020
		};

		WaveTrack::WaveTrack()
		{
			// TODO Auto-generated constructor stub

		}

		WaveTrack::~WaveTrack()
		{
			// TODO Auto-generated destructor stub
		}

		u16 WaveTrack::CalculatePitch(u8 commandID, s8 keyShift, u8 octave, u16 tone)
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

		void WaveTrack::ExecuteModifications(u8 commandID, u16 tempo, GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			u16 thisVelocity = 0;
			u16 thisPitch = 0;
			u16 activationValue = 0;
			u16 noteLength = CalculateLength(frameDelay, tempo, (commandID & 0xF), noteLength2);
			noteLength1 = (noteLength & 0xFF00) >> 8;
			noteLength2 = noteLength & 0xFF;
			if ((commandID & 0xF0) != 0)
			{
				pitch = CalculatePitch(commandID, keyShift, currentOctave, tone);
				thisVelocity = velocity << 13;
				thisPitch = pitch | 0x8000;
				activationValue = 0x80;
			}
			else
			{
				thisPitch = 0;
			}
			if (Game::GetOptions().stereoSound)
			{
				u8 thisPan = pan & 0x44;
				u16 valueToWrite = (tone1Controller[0x10] & 0xBBFF) | (thisPan << 0x8);
				tone1Controller[0x10] = valueToWrite;
			}
			tone1Controller[8] = activationValue;
			tone1Controller[9] = thisVelocity;
			tone1Controller[10] = thisPitch;
		}

		void WaveTrack::ModulateTrack(GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			if (statusFlags[PitchBendActivation])
			{
				pitch += pitchBendRate;
			}
			if (modulationCountdown > 0)
			{
				modulationCountdown--;
			}
			if (statusFlags[ModulationActivation])
			{
				if (modulationCountdown == 0)
				{
					if (modulationSpeedDelay == 0 && pitch != 0)
					{
						modulationSpeedDelay = modulationSpeed;
						u16 outPitch = pitch;
						bool flagCheck = statusFlags[ModulationStatus];
						switch (modulationMode)
						{
							case 0:
							{
								u8 halfValue = modulationDepth >> 1;
								if (flagCheck)
								{
									outPitch += (modulationDepth - halfValue);
								}
								else
								{
									outPitch -= halfValue;
								}
								break;
							}
							case 1:
								if (flagCheck)
								{
									outPitch -= modulationDepth;
								}
								break;
							case 2:
								if (flagCheck)
								{
									outPitch += modulationDepth;
								}
								break;
						}
						statusFlags[ModulationStatus] = !statusFlags[ModulationStatus];
						tone1Controller[10] &= 0x8000;
						tone1Controller[10] |= outPitch;
					}
					else
					{
						modulationSpeedDelay--;
					}
				}
			}
		}

		u16 WaveTrack::GetModulationPitch(GBSChannel &masterChannel)
		{
			return 0;
		}

		void WaveTrack::ArpeggiateTrack(GBSChannel &masterChannel)
		{
		}

		u8 WaveTrack::ExecuteCommands(u8 commandID, GBSChannel &masterChannel)
		{
			u8 commandLength = 1;
			if (commandID >= SetOctave7 && commandID < SetOctave0)
			{
				currentOctave = 7 - (commandID & 7);
			}
			else
			{
				commandID -= 0xD8;
				switch (commandID)
				{
					case 0:
					{
						u8 theValue = nextInstruction[1];
						frameDelay = ((theValue == 0 || theValue > 0xF) ? 0xC : theValue);
						u8 byte2 = nextInstruction[2];
						u8 newVelocity = (byte2 & 0x70) >> 4;
						if (newVelocity > 4)
						{
							newVelocity = 1;
						}
						velocity = newVelocity;
						u8 newVoice = byte2 & 0xF;
						if (currentVoice != newVoice)
						{
							masterChannel.SwitchWavePattern(newVoice);
						}
						currentVoice = newVoice;
						commandLength = 3;
						break;
					}
					case 1:
					{
						s8 thisKeyShift = nextInstruction[1];
						keyShift = (-12 * ((thisKeyShift & 0x10) >> 4)) + (thisKeyShift & 0xF);
						commandLength = 2;
						break;
					}
					case 3: case 6:
						currentVoice = nextInstruction[1];
						commandLength = 2;
						break;
					case 4:
					{
						u8 byte2 = nextInstruction[1];
						u8 newVelocity = (byte2 & 0x70) >> 4;
						if (newVelocity > 4)
						{
							newVelocity = 1;
						}
						velocity = newVelocity;
						u8 newVoice = byte2 & 0xF;
						if (currentVoice != newVoice)
						{
							masterChannel.SwitchWavePattern(newVoice);
						}
						currentVoice = newVoice;
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
						u8 theByte = nextInstruction[2];
						if (theByte != 0)
						{
							modulationDelay = nextInstruction[1] & 0x3F;
							modulationMode = (nextInstruction[1] & 0xC0) >> 6;
							modulationDepth = (theByte & 0xF0) >> 4;
							modulationSpeed = theByte & 0xF;
							statusFlags[ModulationActivation] = true;
						}
						else
						{
							statusFlags[ModulationActivation] = false;
						}
						commandLength = 3;
						break;
					}
					case 14:
						tone = Track::U16LittleEndianToBigEndian(LoadUShortNumber(nextInstruction, 1));
						commandLength = 3;
						break;
					case 23:
					{
						u8 byte = nextInstruction[1];
						pan = (byte == 0) ? 0xFF : byte;
						commandLength = 2;
						break;
					}
					case 35:
						commandLength = 6;
						break;
					case 36:
						nextInstruction = (u8*)(LoadUIntPointer((u8*)nextInstruction, 1));
						commandLength = 0;
						break;
					case 37:
						if (returnLocation == 0)
						{
							if (nextInstruction[1] == 0 || nextInstruction[1] - 1 > loopCounter)
							{
								if (nextInstruction[1] != 0)
								{
									loopCounter++;
								}
								nextInstruction = (u8*)LoadUIntPointer((u8*)nextInstruction, 2);
								commandLength = 0;
							}
							else if (nextInstruction[1] != 0 && loopCounter != 0)
							{
								loopCounter = 0;
								commandLength = 6;
							}
						}
						else
						{
							if (nextInstruction[1] == 0 || nextInstruction[1] - 1 > loopCounter2)
							{
								if (nextInstruction[1] != 0)
								{
									loopCounter2++;
								}
								nextInstruction = (u8*)LoadUIntPointer((u8*)nextInstruction, 2);
								commandLength = 0;
							}
							else if (nextInstruction[1] != 0 && loopCounter2 != 0)
							{
								loopCounter2 = 0;
								commandLength = 6;
							}
						}
						break;
					case 38:
						if (returnLocation == 0)
						{
							returnLocation = nextInstruction + 5;
							nextInstruction = (u8*)LoadUIntPointer((u8*)nextInstruction, 1);
						}
						commandLength = 0;
						break;
					case 39:
						commandLength = 0;
						if (returnLocation == 0)
						{
							masterChannel.TrackIncluded(Wave, false);
							return 0xFF;
						}
						else
						{
							nextInstruction = returnLocation;
							returnLocation = 0;
						}
						break;
				}
			}
			nextInstruction += commandLength;
			return nextInstruction[0];
		}

		void WaveTrack::Update(u16 tempo, GBSChannel &masterChannel)
		{
			if (noteLength1 < 2)
			{
				u32 commandID = nextInstruction[0];
				while (commandID >= 0xD0)
				{
					commandID = ExecuteCommands(commandID, masterChannel);
					if (commandID == 0xFF && returnLocation == 0)
					{
						ExecuteModifications(0, tempo, masterChannel);
						break;
					}
				}
				if (commandID != 0xFF)
				{
					ExecuteModifications(commandID, tempo, masterChannel);
					nextInstruction++;
					modulationCountdown = modulationDelay;
					statusFlags[ModulationStatus] = false;
					modulationSpeedDelay = modulationSpeed;
					if (modulationCountdown == 0)
					{
						ModulateTrack(masterChannel);
					}
				}
			}
			else
			{
				noteLength1--;
				ModulateTrack(masterChannel);
			}
		}

		void WaveTrack::Clear()
		{
			Track::Clear();
			currentOctave = 0;
			currentVoice = 0;
			modulationCountdown = 0;
			modulationDelay = 0;
			modulationMode = 0;
			modulationDepth = 0;
			modulationSpeedDelay = 0;
			modulationSpeed = 0;
			pitchBendRate = 0;
			portamentoCountdown = 0;
			portamentoDelay = 0;
			portamentoTarget = 0;
			portamentoSpeedDelay = 0;
			portamentoSpeed = 0;
		}
	}
}
