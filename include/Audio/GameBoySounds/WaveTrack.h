/*
 * WaveTrack.h
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#ifndef WAVETRACK_H_
#define WAVETRACK_H_

#include "Track.h"

namespace Audio
{
	namespace GameBoySounds
	{
		class WaveTrack : public Track
		{
		private:
			static u16 freq[];
			u8 currentOctave;
			u8 currentVoice;
			u8 modulationCountdown;
			u8 modulationDelay;
			u8 modulationMode;
			u8 modulationDepth;
			u8 modulationSpeedDelay;
			u8 modulationSpeed;
			s8 pitchBendRate;
			u8 portamentoCountdown;
			u8 portamentoDelay;
			u8 portamentoTarget;
			u8 portamentoSpeedDelay;
			u8 portamentoSpeed;
			void ExecuteModifications(u8 commandID, u16 tempo, GBSChannel &masterChannel);
			void ModulateTrack(GBSChannel &masterChannel);
			u16 GetModulationPitch(GBSChannel &masterChannel);
			void ArpeggiateTrack(GBSChannel &masterChannel);
			u16 CalculatePitch(u8 commandID, s8 keyShift, u8 octave, u16 tone);
			u8 ExecuteCommands(u8 commandID, GBSChannel &masterChannel);
		public:
			WaveTrack();
			virtual ~WaveTrack();
			void Update(u16 tempo, GBSChannel &masterChannel);
			void Clear();
			u8 GetCurrentVoice() const { return currentVoice; }
		};
	}
}

#endif /* WAVETRACK_H_ */
