#pragma once

#include "GBSChannel.h"
#include "../MusicEngine.h"

typedef struct GBSTrack {
	u32 trackType:2;
	u32 secondaryTracks:1;
	u32 unused:29;
	u8* songData;
} GBSTrack;

typedef struct GBSTrackHeader {
	u8 trackType:2;
	u8 secondaryTracks:1;
	u8 tone1Included:1;
	u8 tone2Included:1;
	u8 waveIncluded:1;
	u8 noiseIncluded:1;
	u8 alignment:1;
	u8 numberOfTracks;
	u16 unused;
	u8* songData;
	GBSTrack theTracks[];
} GBSTrackHeader;

namespace Audio
{
	namespace GameBoySounds
	{
		class GBSEngine : public MusicEngine
		{
		protected:
			static WavePattern wavePatterns[];
			GBSChannel* channels[3];
			MusicFadeInfo fadeInfo;
			bool skipWaveChange;
			bool channelsPlaying[3];
			void StartSong(u16 songID, bool startWithZeroVolume = false);
			void StartFanfare(u16 fanfareID);
			void StartSFX(u16 sfxID);
			void FadeSong();
			void FadeSongOut();
			void FadeSongIn();
			static void ResumeSongStatic();
		public:
			GBSEngine()
			{
				for (int i = 0; i < 3; i++)
				{
					channels[i] = new GBSChannel(this);
					channelsPlaying[i] = false;
					skipWaveChange = false;
				}
			}
			~GBSEngine()
			{
				for (int i = 0; i < 3; i++)
				{
					delete channels[i];
				}
			}
			void Interrupt();
			void Update();
			void SetSongOnEndFunction(VoidFunctionPointerVoid function);
			void SetSFXOnEndFunction(VoidFunctionPointerVoid function);
			void ResumeSong();
			void SwitchWavePattern(u8 patternID) const;
			void Initialise();
			bool SFXPlaying();
			bool FanfarePlaying();
		};
	}
}
