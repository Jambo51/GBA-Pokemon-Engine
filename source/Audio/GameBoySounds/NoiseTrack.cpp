/*
 * NoiseTrack.cpp
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#include "Audio/GameBoySounds/NoiseTrack.h"
#include "GlobalDefinitions.h"
#include "Audio/GameBoySounds/GBSChannel.h"
#include "Core/Game.h"

using namespace Core;

namespace Audio
{
	namespace GameBoySounds
	{
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData00[] = { 0x20, 0x11, 0x00, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData01[] = { 0x20, 0xC1, 0x33, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData02[] = { 0x20, 0xB1, 0x33, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData03[] = { 0x20, 0xA1, 0x33, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData04[] = { 0x20, 0x81, 0x33, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData05[] = { 0x27, 0x84, 0x37, 0x26, 0x84, 0x36, 0x25, 0x83, 0x35, 0x24, 0x83, 0x34, 0x23, 0x82, 0x33, 0x22, 0x81, 0x32, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData06[] = { 0x20, 0x51, 0x2A, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData07[] = { 0x21, 0x41, 0x2B, 0x20, 0x61, 0x2A, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData08[] = { 0x20, 0x81, 0x10, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData09[] = { 0x20, 0x82, 0x23, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData010[] = { 0x20, 0x82, 0x25, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData011[] = { 0x20, 0x82, 0x26, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData012[] = { 0x20, 0xA1, 0x10, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData16[] = { 0x20, 0xA2, 0x11, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData17[] = { 0x20, 0xA2, 0x50, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData18[] = { 0x20, 0xA1, 0x18, 0x20, 0x31, 0x33, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData19[] = { 0x22, 0x91, 0x28, 0x20, 0x71, 0x18, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData110[] = { 0x20, 0x91, 0x22, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData111[] = { 0x20, 0x71, 0x22, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData112[] = { 0x20, 0x61, 0x22, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData30[] = { 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData31[] = { 0x20, 0x91, 0x33, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData32[] = { 0x20, 0x51, 0x32, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData33[] = { 0x20, 0x81, 0x31, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData34[] = { 0x20, 0x88, 0x6B, 0x20, 0x71, 0x00, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData35[] = { 0x30, 0x91, 0x18, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData36[] = { 0x20, 0x11, 0x11, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData37[] = { 0x27, 0x92, 0x10, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData38[] = { 0x33, 0x91, 0x00, 0x33, 0x11, 0x00, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData39[] = { 0x33, 0x91, 0x11, 0x33, 0x11, 0x00, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData311[] = { 0x20, 0xA8, 0x6B, 0x20, 0x71, 0x00, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData312[] = { 0x20, 0x84, 0x12, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData45[] = { 0x20, 0xA1, 0x31, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData47[] = { 0x33, 0x81, 0x00, 0x33, 0x11, 0x00, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData48[] = { 0x33, 0x51, 0x21, 0x33, 0x11, 0x11, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData49[] = { 0x33, 0x51, 0x50, 0x33, 0x11, 0x11, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData410[] = { 0x33, 0x81, 0x21, 0x33, 0x11, 0x11, 0xFF };
		RODATA_LOCATION ALIGN(1) u8 NoiseTrack::noiseData412[] = { 0x33, 0x88, 0x15, 0x20, 0x65, 0x12, 0xFF };
		RODATA_LOCATION u8* NoiseTrack::noiseDataPointers0[] = { (u8*)(&noiseData00), (u8*)(&noiseData01), (u8*)(&noiseData02), (u8*)(&noiseData03), (u8*)(&noiseData04), (u8*)(&noiseData05), (u8*)(&noiseData06), (u8*)(&noiseData07), (u8*)(&noiseData08), (u8*)(&noiseData09), (u8*)(&noiseData010), (u8*)(&noiseData011), (u8*)(&noiseData012) };
		RODATA_LOCATION u8* NoiseTrack::noiseDataPointers1[] = { (u8*)(&noiseData00), (u8*)(&noiseData08), (u8*)(&noiseData09), (u8*)(&noiseData010), (u8*)(&noiseData011), (u8*)(&noiseData012), (u8*)(&noiseData16), (u8*)(&noiseData17), (u8*)(&noiseData18), (u8*)(&noiseData19), (u8*)(&noiseData110), (u8*)(&noiseData111), (u8*)(&noiseData112) };
		RODATA_LOCATION u8* NoiseTrack::noiseDataPointers2[] = { (u8*)(&noiseData00), (u8*)(&noiseData01), (u8*)(&noiseData110), (u8*)(&noiseData111), (u8*)(&noiseData112), (u8*)(&noiseData05), (u8*)(&noiseData06), (u8*)(&noiseData07), (u8*)(&noiseData08), (u8*)(&noiseData09), (u8*)(&noiseData010), (u8*)(&noiseData011), (u8*)(&noiseData012) };
		RODATA_LOCATION u8* NoiseTrack::noiseDataPointers3[] = { (u8*)(&noiseData30), (u8*)(&noiseData31), (u8*)(&noiseData32), (u8*)(&noiseData33), (u8*)(&noiseData34), (u8*)(&noiseData35), (u8*)(&noiseData36), (u8*)(&noiseData37), (u8*)(&noiseData38), (u8*)(&noiseData39), (u8*)(&noiseData30), (u8*)(&noiseData311), (u8*)(&noiseData312) };
		RODATA_LOCATION u8* NoiseTrack::noiseDataPointers4[] = { (u8*)(&noiseData30), (u8*)(&noiseData36), (u8*)(&noiseData32), (u8*)(&noiseData33), (u8*)(&noiseData34), (u8*)(&noiseData45), (u8*)(&noiseData35), (u8*)(&noiseData47), (u8*)(&noiseData48), (u8*)(&noiseData49), (u8*)(&noiseData410), (u8*)(&noiseData311), (u8*)(&noiseData412) };
		RODATA_LOCATION u8* NoiseTrack::noiseDataPointers5[] = { (u8*)(&noiseData00), (u8*)(&noiseData110), (u8*)(&noiseData111), (u8*)(&noiseData112), (u8*)(&noiseData37), (u8*)(&noiseData38), (u8*)(&noiseData39), (u8*)(&noiseData05), (u8*)(&noiseData06), (u8*)(&noiseData412), (u8*)(&noiseData33), (u8*)(&noiseData32), (u8*)(&noiseData311) };
		RODATA_LOCATION void* NoiseTrack::noiseDataPointers[] = { &noiseDataPointers0, &noiseDataPointers1, &noiseDataPointers2, &noiseDataPointers3, &noiseDataPointers4, &noiseDataPointers5 };

		NoiseTrack::NoiseTrack()
		{
			// TODO Auto-generated constructor stub

		}

		NoiseTrack::~NoiseTrack()
		{
			// TODO Auto-generated destructor stub
		}



		u8 NoiseTrack::ExecuteCommands(u8 commandID, GBSChannel &masterChannel)
		{
			u8 commandLength = 2;
			commandID -= 0xD8;
			if (commandID == 0)
			{
				u8 theValue = nextInstruction[1];
				frameDelay = ((theValue == 0 || theValue > 0xF) ? 0xC : theValue);
			}
			else if (commandID == 11)
			{
				noiseSet = nextInstruction[1];
			}
			else if (commandID == 23)
			{
				u8 byte = nextInstruction[1];
				pan = (byte == 0) ? 0xFF : byte;
			}
			else if (commandID == 37)
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
			else if (commandID == 38)
			{
				if (returnLocation == 0)
				{
					returnLocation = nextInstruction + 5;
					nextInstruction = (u8*)LoadUIntPointer((u8*)nextInstruction, 1);
				}
				commandLength = 0;
			}
			else if (commandID == 39)
			{
				commandLength = 0;
				if (returnLocation == 0)
				{
					masterChannel.TrackIncluded(Noise, false);
					return 0xFF;
				}
				else
				{
					nextInstruction = returnLocation;
					returnLocation = 0;
				}
			}
			else
			{
				commandLength = 1;
			}
			nextInstruction += commandLength;
			return nextInstruction[0];
		}

		void NoiseTrack::Update(u16 tempo, GBSChannel &masterChannel)
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
				}
				else
				{
					noiseActive = 0;
					noiseFrameDelay = 0;
					masterChannel.TrackIncluded(Noise, false);
				}
			}
			else
			{
				noteLength1--;
				if (noiseActive == 1)
				{
					if (noiseFrameDelay == 0 && samplePointer[0] != 0xFF)
					{
						WritePattern(masterChannel);
					}
					else if (samplePointer[0] == 0xFF)
					{
						noiseActive = 0;
						noiseFrameDelay = 0;
					}
					else
					{
						noiseFrameDelay--;
					}
				}
			}
		}

		void NoiseTrack::Clear()
		{
			Track::Clear();
			noiseSet = 0;
			noiseFrameDelay = 0;
			samplePointer = 0;
			noiseActive = false;
		}

		void NoiseTrack::WritePattern(GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			u16 value1 = (samplePointer[0] & 0xF);
			noiseFrameDelay = value1;
			u16 value2 = (samplePointer[1] << 8) | 0x3F;
			u16 value3 = samplePointer[2] | 0x8000;
			samplePointer += 3;
			tone1Controller[12] = value2;
			tone1Controller[14] = value3;
		}

		void NoiseTrack::ModulateTrack(GBSChannel &masterChannel)
		{
		}

		u16 NoiseTrack::GetModulationPitch(GBSChannel &masterChannel)
		{
			return 0;
		}

		void NoiseTrack::ArpeggiateTrack(GBSChannel &masterChannel)
		{
		}

		u16 NoiseTrack::CalculatePitch(u8 commandID, s8 keyShift, u8 octave, u16 tone)
		{
			return 0;
		}

		void NoiseTrack::ExecuteModifications(u8 commandID, u16 tempo, GBSChannel &masterChannel)
		{
			u16* tone1Controller = masterChannel.GetBufferAddress();
			u16 noteLength = CalculateLength(frameDelay, tempo, (commandID & 0xF), noteLength2);
			noteLength1 = (noteLength & 0xFF00) >> 8;
			noteLength2 = noteLength & 0xFF;
			if (Game::GetOptions().stereoSound)
			{
				u8 thisPan = pan & 0x88;
				u16 valueToWrite = (tone1Controller[0x10] & 0x77FF) | (thisPan << 0x8);
				tone1Controller[0x10] = valueToWrite;
			}
			if ((commandID & 0xF0) != 0)
			{
				u32 engineSet = noiseSet;
				u32* location = (u32*)((u32*)noiseDataPointers)[engineSet];
				location = (u32*)(location[(commandID & 0xF0) >> 4]);
				samplePointer = (u8*)location;
				noiseActive = 1;
				WritePattern(masterChannel);
			}
			else
			{
				tone1Controller[12] = 0;
				tone1Controller[14] = 0;
			}
		}
	}
}
