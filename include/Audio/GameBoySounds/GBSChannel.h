/*
 * GBSChannel.h
 *
 *  Created on: 12 May 2015
 *      Author: Jamie
 */

#ifndef GBSCHANNEL_H_
#define GBSCHANNEL_H_

#include "ToneTrack.h"
#include "WaveTrack.h"
#include "NoiseTrack.h"

#define NUMWAVEPATTERNS 15

enum ValidTrack { ToneOne, ToneTwo, Wave, Noise };

namespace Audio
{
	namespace GameBoySounds
	{
		class GBSEngine;

		class GBSChannel
		{
		protected:
			GBSEngine* address;
			bool tracksIncluded[5];
			u16 tempo;
			ToneTrack* toneTracks[2];
			WaveTrack* waveTrack;
			NoiseTrack* noiseTrack;
			VoidFunctionPointerVoid onEndFunction;
		public:
			GBSChannel();
			GBSChannel(GBSEngine* hostEngine);
			virtual ~GBSChannel();
			bool Update();
			void Clear();
			void SetOnTrackEndFunction(VoidFunctionPointerVoid functionPtr);
			void SetTempo(u16 newTempo) { tempo = newTempo; }
			bool TrackIncluded(ValidTrack trackID) const { return tracksIncluded[trackID]; }
			void TrackIncluded(ValidTrack trackID, bool newValue) { tracksIncluded[trackID] = newValue; }
			u16* GetBufferAddress() const;
			void ExecuteOnEndFunction() const { if (onEndFunction) { onEndFunction(); } }
			void StartTrack(GBSTrackHeader* header);
			const NoiseTrack & GetNoise() const { return *noiseTrack; }
			const WaveTrack & GetWave() const { return *waveTrack; }
			const ToneTrack & GetToneOne() const { return *toneTracks[0]; }
			const ToneTrack & GetToneTwo() const { return *toneTracks[1]; }
			void Pause() { tracksIncluded[4] = true; }
			void Unpause() { tracksIncluded[4] = false; }
			bool IsPaused() const { return tracksIncluded[5]; }
			void SwitchWavePattern(u8 voiceID) const;
			u16 GetTempo() const { return tempo; }
			bool IsPlaying() const { for (int i = 0; i < 4; i++) { if (tracksIncluded[i]) { return true; } } return false; }
		};
	}
}

#endif /* GBSCHANNEL_H_ */
