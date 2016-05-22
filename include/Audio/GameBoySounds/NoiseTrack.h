/*
 * NoiseTrack.h
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#ifndef NOISETRACK_H_
#define NOISETRACK_H_

#include "Track.h"

namespace Audio
{
	namespace GameBoySounds
	{
		class NoiseTrack: public Track
		{
		private:
			static u8 noiseData00[];
			static u8 noiseData01[];
			static u8 noiseData02[];
			static u8 noiseData03[];
			static u8 noiseData04[];
			static u8 noiseData05[];
			static u8 noiseData06[];
			static u8 noiseData07[];
			static u8 noiseData08[];
			static u8 noiseData09[];
			static u8 noiseData010[];
			static u8 noiseData011[];
			static u8 noiseData012[];
			static u8 noiseData16[];
			static u8 noiseData17[];
			static u8 noiseData18[];
			static u8 noiseData19[];
			static u8 noiseData110[];
			static u8 noiseData111[];
			static u8 noiseData112[];
			static u8 noiseData30[];
			static u8 noiseData31[];
			static u8 noiseData32[];
			static u8 noiseData33[];
			static u8 noiseData34[];
			static u8 noiseData35[];
			static u8 noiseData36[];
			static u8 noiseData37[];
			static u8 noiseData38[];
			static u8 noiseData39[];
			static u8 noiseData311[];
			static u8 noiseData312[];
			static u8 noiseData45[];
			static u8 noiseData47[];
			static u8 noiseData48[];
			static u8 noiseData49[];
			static u8 noiseData410[];
			static u8 noiseData412[];
			static u8* noiseDataPointers0[];
			static u8* noiseDataPointers1[];
			static u8* noiseDataPointers2[];
			static u8* noiseDataPointers3[];
			static u8* noiseDataPointers4[];
			static u8* noiseDataPointers5[];
			static void* noiseDataPointers[];
			u8 noiseSet;
			u8 noiseFrameDelay;
			u8* samplePointer;
			bool noiseActive;
			void ExecuteModifications(u8 commandID, u16 tempo, GBSChannel &masterChannel);
			void ModulateTrack(GBSChannel &masterChannel);
			u16 GetModulationPitch(GBSChannel &masterChannel);
			void ArpeggiateTrack(GBSChannel &masterChannel);
			u16 CalculatePitch(u8 commandID, s8 keyShift, u8 octave, u16 tone);
			u8 ExecuteCommands(u8 commandID, GBSChannel &masterChannel);
			void WritePattern(GBSChannel &masterChannel);
		public:
			NoiseTrack();
			virtual ~NoiseTrack();
			void Update(u16 tempo, GBSChannel &masterChannel);
			void Clear();
		};
	}
}

#endif /* NOISETRACK_H_ */
