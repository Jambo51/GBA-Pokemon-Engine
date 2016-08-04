#pragma once

#include "GBSChannel.h"
#include "../MusicEngine.h"
#include "SmartPointer.h"

namespace Audio
{
	namespace GameBoySounds
	{
		class GBSEngine : public MusicEngine
		{
		protected:
			static WavePattern wavePatterns[];
			SmartPointer<GBSChannel> channels[3];
			MusicFadeInfo fadeInfo;
			bool skipWaveChange;
			bool channelsPlaying[3];
			void StartSong(u16 songID, bool startWithZeroVolume = false);
			void StartFanfare(u16 fanfareID);
			void StartSFX(u16 sfxID);
			void FadeSong();
			void FadeSongOut();
			void FadeSongIn();
			GBSTrackHeader** songTable;
			static void ResumeSongStatic();
		public:
			GBSEngine();
			~GBSEngine();
			void Interrupt();
			void Update();
			void ResumeSong();
			void SwitchWavePattern(u32 patternID);
			void Initialise(void* songTablePointer);
			bool SFXPlaying();
			bool FanfarePlaying();
		};
	}
}
