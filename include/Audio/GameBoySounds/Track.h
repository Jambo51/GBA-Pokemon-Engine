/*
 * Track.h
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#ifndef TRACK_H_
#define TRACK_H_

#define SetOctave0 0xD8
#define SetOctave7 0xD0

#include "GlobalDefinitions.h"

enum SoundEngineCommands
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
	Pan,
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
};

enum GBPStatusFlags { ModulationActivation, ModulationStatus, PortamentoActivation, PitchBendActivation, ArpeggiationActivation, ArpeggiationStatus, NumGBPEngineFlags };

namespace Audio
{
	namespace GameBoySounds
	{
		class GBSChannel;

		class Track
		{
		protected:
			u8* nextInstruction;
			u8* returnLocation;
			u8 noteLength1;
			u8 noteLength2;
			u8 loopCounter;
			u8 loopCounter2;
			u8 velocity;
			u8 pan;
			u16 pitch;
			u16 tone;
			u8 frameDelay;
			s8 keyShift;
			bool statusFlags[NumGBPEngineFlags];
			u16 CalculateLength(u8 frameDelay, u16 tempo, u8 bitLength, u16 previousLeftover);
			static u16 U16LittleEndianToBigEndian(u16 input);u32 LoadUnalignedNumber(u8* location, u32 modifier, u8 length)
			{
				u32 returnable = 0;
				u8 i;
				for (i = 0; i < length; i++)
				{
					returnable |= (location[modifier + i] << (i << 3));
				}
				return returnable;
			}

			u32* LoadUIntPointer(u8* location, u32 modifier)
			{
				u8 alignment = ((u32)(location) + modifier) & 0xF;
				if ((alignment & 0xB) == 0)
				{
					return (u32*)((u32*)((u32)(location) + modifier))[0];
				}
				else
				{
					return (u32*)LoadUnalignedNumber(location, modifier, 4);
				}
			}

			u16 LoadUShortNumber(u8* location, u32 modifier)
			{
				u8 alignment = ((u32)(location) + modifier) & 0xF;
				if ((alignment & 1) == 0)
				{
					return ((u16*)((u32)(location) + modifier))[0];
				}
				else
				{
					return (u16)LoadUnalignedNumber(location, modifier, 2);
				}
			}

			u8 SwapBits(u8 value)
			{
				return ((value & 0xF0) >> 4) | ((value & 0xF) << 4);
			}
			virtual void ExecuteModifications(u8 commandID, u16 tempo, GBSChannel &masterChannel) = 0;
			virtual void ModulateTrack(GBSChannel &masterChannel) = 0;
			virtual u16 GetModulationPitch(GBSChannel &masterChannel) = 0;
			virtual void ArpeggiateTrack(GBSChannel &masterChannel) = 0;
			virtual u16 CalculatePitch(u8 commandID, s8 keyShift, u8 octave, u16 tone) = 0;
			virtual u8 ExecuteCommands(u8 commandID, GBSChannel &masterChannel) = 0;
		public:
			Track();
			virtual ~Track();
			virtual void Update(u16 tempo, GBSChannel &masterChannel) = 0;
			virtual void Clear();
			void SetPan(u8 panValue) { pan = panValue; }
			void SetNextInstruction(u8* instructionLocation) { nextInstruction = instructionLocation; }
		};
	}
}

#endif /* TRACK_H_ */
