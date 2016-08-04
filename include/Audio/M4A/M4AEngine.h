/*
 * M4AEngine.h
 *
 *  Created on: 22 May 2015
 *      Author: Jamie
 */

#ifndef M4AENGINE_H_
#define M4AENGINE_H_

#ifndef __ASSEMBLER__

#include "Audio/MusicEngine.h"
#include "SmartPointer.h"
#include "Audio/M4A/EngineM4.h"
#include "Audio/M4A/M4APlayer.h"

#ifdef __cplusplus
extern "C" {
#endif

#define FADESPEED 4
#define M4_MAXVOL 127
#define M4_MaxPlayers 3

enum Fades { Fade_Out, Fade_In };

typedef struct M4FadeStruct
{
	u8 isActive:1;
	u8 empty:7;
	u8 playerID;
	u8 direction;
} M4FadeStruct;

namespace Audio
{
	namespace M4A
	{
		class M4AEngine : public MusicEngine
		{
		private:
			static u16 sqrt[];
			static s16 M4MixArea[];
			STT* songTable;
			SmartPointer<M4APlayer> players[M4_MaxPlayers];
			MusicFadeInfo fadeInfo;
			void StartSong(u16 songID, bool startWithZeroVolume = false);
			void StartFanfare(u16 fanfareID);
			void StartSFX(u16 sfxID);
			void FadeSong();
			void FadeSongOut();
			void FadeSongIn();
		public:
			M4AEngine();
			~M4AEngine();
			void Interrupt();
			void Update();
			void SwitchWavePattern(u32 patternID);
			void Initialise(void* songTablePointer);
			void ResumeSong();
			bool FanfarePlaying();
			bool SFXPlaying();
		};
	}
}

#ifdef __cplusplus
}
#endif

#endif

#endif /* M4AENGINE_H_ */
