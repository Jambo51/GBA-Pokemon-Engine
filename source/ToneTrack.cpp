/*
 * ToneTrack.cpp
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#include "Audio/GameBoySounds/ToneTrack.h"
#include "Audio/GameBoySounds/GBSChannel.h"
#include "GlobalDefinitions.h"
#include "Core/Game.h"

namespace Audio
{
	namespace GameBoySounds
	{
		RODATA_LOCATION ALIGN(2) u16 ToneTrack::CGBFreq[] = {
			8013, 7566, 7144, 6742,
			6362, 6005, 5666, 5346,
			5048, 4766, 4499, 4246
		};

		ToneTrack::ToneTrack(u8 trackID)
		{
			// TODO Auto-generated constructor stub
			this->trackID = trackID;
			reacquireTempo = false;
		}

		ToneTrack::~ToneTrack()
		{
			// TODO Auto-generated destructor stub
		}

		u16 ToneTrack::CalculatePitch(u8 commandID, s8 keyShift, u8 octave, u16 tone)
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

		void ToneTrack::ExecuteModifications(u8 commandID, u16 tempo, GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			u16 activationValue = 0;
			u16 secondValue = 0;
			u16 noteLength = CalculateLength(frameDelay, tempo, (commandID & 0xF), noteLength2);
			noteLength1 = (noteLength & 0xFF00) >> 8;
			noteLength2 = noteLength & 0xFF;
			if ((commandID & 0xF0) != 0)
			{
				pitch = CalculatePitch(commandID, keyShift, currentOctave, tone);
				activationValue = pitch | 0x8000;
				secondValue = (currentVoice << 6) | (fadeSpeed << 8) | (((fadeSpeed == 0) ? 0 : fadeDirection) << 11) | (velocity << 12);
			}
			else
			{
				pitch = 0;
			}
			if (trackID)
			{
				tone1Controller[4] = secondValue;
			}
			else
			{
				tone1Controller[1] = secondValue;
			}
			tone1Controller[(trackID << 2) + 2] = activationValue;
			if (Core::Game::GetOptions().stereoSound)
			{
				if (trackID == 0)
				{
					u8 thisPan = pan & 0x11;
					u16 valueToWrite = (tone1Controller[0x10] & 0xEEFF) | (thisPan << 0x8);
					tone1Controller[0x10] = valueToWrite;
				}
				else
				{
					u8 thisPan = pan & 0x22;
					u16 valueToWrite = (tone1Controller[0x10] & 0xDDFF) | (thisPan << 0x8);
					tone1Controller[0x10] = valueToWrite;
				}
			}
			nextInstruction++;
		}

		u8 ToneTrack::ExecuteCommands(u8 commandID, GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			u8 commandLength = 1;
			if (commandID >= SetOctave7 && commandID < SetOctave0)
			{
				currentOctave = 7 - (commandID & 7);
			}
			else
			{
				commandID -= SetOctave0;
				switch (commandID)
				{
					case SetNoteAttributesAndLength:
					{
						u8 theValue = nextInstruction[1];
						frameDelay = ((theValue == 0 || theValue > 0xF) ? 0xC : theValue);
						u8 byte2 = nextInstruction[2];
						velocity = (byte2 & 0xF0) >> 4;
						fadeSpeed = byte2 & 0x7;
						fadeDirection = (byte2 & 0x8) >> 3;
						commandLength = 3;
						break;
					}
					case SetKeyShift:
					{
						s8 thisKeyShift = nextInstruction[1];
						keyShift = (-12 * ((thisKeyShift & 0x10) >> 4)) + (thisKeyShift & 0xF);
						commandLength = 2;
						break;
					}
					case SetTempo:
						masterChannel.SetTempo(U16LittleEndianToBigEndian(LoadUShortNumber(nextInstruction, 1)));
						reacquireTempo = true;
						commandLength = 3;
						break;
					case SetDutyCycle: case SetDutyCycle2:
						currentVoice = nextInstruction[1];
						commandLength = 2;
						break;
					case SetNoteAttributes:
					{
						u8 byte2 = nextInstruction[1];
						velocity = (byte2 & 0xF0) >> 4;
						fadeSpeed = byte2 & 0x7;
						fadeDirection = (byte2 & 0x8) >> 3;
						commandLength = 2;
						break;
					}
					case Arpeggiate:
					{
						u8 byte = nextInstruction[1];
						if (byte != 0)
						{
							statusFlags[ArpeggiationActivation] = true;
							arpeggiationDelayCount = (byte & 0xF0) >> 4;
							arpeggiationCountdown = arpeggiationDelayCount;
							statusFlags[ArpeggiationStatus] = false;
							arpeggiationVoice = byte & 0x3;
						}
						else
						{
							statusFlags[ArpeggiationActivation] = false;
						}
						commandLength = 2;
						break;
					}
					case PitchBend:
						statusFlags[PitchBendActivation] = true;
						// Note that this is incomplete and requires research into how pitch
						// bends are handled in the original engine
						//u8 byte = nextInstruction[2];
						commandLength = 3;
						break;
					case Portamento:
						// No data for this as yet as it is a completely custom effect
						// At least it is in terms of this engine, since the
						// portamento effect is not present in RBY or GSC
						statusFlags[PortamentoActivation] = true;
						portamentoDelay = nextInstruction[1];
						portamentoSpeed = nextInstruction[2];
						portamentoTarget = CalculatePitch(nextInstruction[3], keyShift, currentOctave, tone);
						commandLength = 4;
						break;
					case SetModulation:
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
					case SetChannelVolume:
						if (channelVolume != nextInstruction[1])
						{
							channelVolume = nextInstruction[1];
							tone1Controller[16] = (tone1Controller[16] & 0xFF00) | channelVolume;
						}
						commandLength = 2;
						break;
					case SetTone:
						tone = Track::U16LittleEndianToBigEndian(LoadUShortNumber(nextInstruction, 1));
						commandLength = 3;
						break;
					case Pan:
					{
						u8 byte = nextInstruction[1];
						pan = (byte == 0) ? 0xFF : byte;
						commandLength = 2;
						break;
					}
					case JumpIf:
						commandLength = 6;
						break;
					case Jump:
						nextInstruction = (u8*)LoadUIntPointer((u8*)nextInstruction, 1);
						commandLength = 0;
						break;
					case Goto:
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
					case Call:
						if (returnLocation == 0)
						{
							returnLocation = nextInstruction + 5;
							nextInstruction = (u8*)LoadUIntPointer((u8*)nextInstruction, 1);
						}
						commandLength = 0;
						break;
					case End:
						commandLength = 0;
						if (returnLocation == 0)
						{
							if (trackID == 0)
							{
								masterChannel.TrackIncluded(ToneOne, false);
							}
							else
							{
								masterChannel.TrackIncluded(ToneTwo, false);
							}
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

		void ToneTrack::ModulateTrack(GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			if (statusFlags[PitchBendActivation])
			{
				pitch += pitchBendRate;
			}
			if (statusFlags[PortamentoActivation])
			{
				if (portamentoCountdown == 0)
				{
					if (portamentoTarget != pitch)
					{
						if (portamentoTarget > pitch)
						{
							pitch++;
						}
						else
						{
							pitch--;
						}
					}
					else
					{
						statusFlags[PortamentoActivation] = false;
					}
				}
				else
				{
					portamentoCountdown--;
				}
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
						tone1Controller[2 + (trackID << 2)] &= 0x8000;
						tone1Controller[2 + (trackID << 2)] |= GetModulationPitch(masterChannel);
					}
					else
					{
						modulationSpeedDelay--;
					}
				}
			}
		}

		void ToneTrack::ResetModulationArpeggiationCounters(GBSChannel &masterChannel)
		{
			modulationCountdown = modulationDelay;
			statusFlags[ModulationStatus] = false;
			modulationSpeedDelay = modulationSpeed;
			if (modulationCountdown == 0)
			{
				ModulateTrack(masterChannel);
			}
			arpeggiationCountdown = (statusFlags[ArpeggiationActivation]) ? arpeggiationDelayCount : 0;
			statusFlags[ArpeggiationStatus] = false;
			statusFlags[PortamentoActivation] = false;
			statusFlags[PitchBendActivation] = false;
		}

		void ToneTrack::ArpeggiateTrack(GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			if (statusFlags[ArpeggiationActivation])
			{
				if (arpeggiationCountdown > 0)
				{
					arpeggiationCountdown--;
				}
				else
				{
					u16 location = (trackID == 0)?1:4;
					arpeggiationCountdown = arpeggiationDelayCount;
					tone1Controller[location] = (tone1Controller[location] & 0xFF00) | (((statusFlags[ArpeggiationStatus])?currentVoice:arpeggiationVoice) << 6);
					statusFlags[ArpeggiationStatus] = !statusFlags[ArpeggiationStatus];
				}
			}
		}

		void ToneTrack::Update(u16 tempo, GBSChannel &masterChannel)
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
				if (reacquireTempo)
				{
					tempo = masterChannel.GetTempo();
					reacquireTempo = false;
				}
				if (commandID != 0xFF)
				{
					ExecuteModifications(commandID, tempo, masterChannel);
					ResetModulationArpeggiationCounters(masterChannel);
				}
			}
			else
			{
				noteLength1--;
				ModulateTrack(masterChannel);
				ArpeggiateTrack(masterChannel);
			}
		}

		void ToneTrack::Clear()
		{
			Track::Clear();
			currentOctave = 0;
			currentVoice = 0;
			fadeSpeed = 0;
			channelVolume = 0;
			fadeDirection = 0;
			arpeggiationVoice = 0;
			arpeggiationDelayCount = 0;
			arpeggiationCountdown = 0;
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

		u16 ToneTrack::GetModulationPitch(GBSChannel &masterChannel)
		{
			modulationSpeedDelay = modulationSpeed;
			u8 theValue = 0;
			u16 newPitch = pitch;
			bool flagResult = statusFlags[ModulationStatus];
			switch (modulationMode)
			{
				case 0:
				{
					u8 halfValue = modulationDepth >> 1;
					if (!flagResult)
					{
						theValue = 1;
						newPitch += (modulationDepth - halfValue);
					}
					else
					{
						newPitch -= halfValue;
					}
					break;
				}
				case 1:
					if (!flagResult)
					{
						theValue = 1;
					}
					else
					{
						newPitch -= modulationDepth;
					}
					break;
				case 2:
					if (!flagResult)
					{
						theValue = 1;
					}
					else
					{
						newPitch += modulationDepth;
					}
					break;
			}
			statusFlags[ModulationStatus] = !statusFlags[ModulationStatus];
			return newPitch;
		}
	}
}
