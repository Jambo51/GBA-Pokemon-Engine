/*
 * SoundEngine.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef SOUNDENGINE_H_
#define SOUNDENGINE_H_

#include "GlobalDefinitions.h"

enum GBPSoundsCaseIDs { DoNothing, InitialiseSong, ContinueSong, FadeToSilence, FadeIn, FadeToSong, Pause, FadeInSecond, InitialiseFanfare, InitialiseSFX, MaxCase };

namespace Callbacks
{
	class Callback;
}

namespace Audio
{
	class MusicEngine;

	class SoundEngine
	{
	private:
		SoundEngine();
		~SoundEngine();
		static Callbacks::Callback* onEndFanfareCallback;
		static MusicEngine* me;
		static u16 songPlayingMode;
		static u16 songIDInt;
		static u16 fanfareIDInt;
		static u16 sfxIDInt;
	public:
		static Callbacks::Callback* GetFanfareCallback() { return onEndFanfareCallback; }
		static void Interrupt();
		static void Initialise(MusicEngine* engine, void* songTablePointer);
		static void Update();
		static void PlaySong(u16 songID, u8 songStartMode);
		static void PlaySongIfNotStarted(u16 songID, u8 songStartMode);
		static void PlayFanfare(u16 songID);
		static void PlaySFX(u16 songID);
		static u16 GetStatus() { return songPlayingMode; }
		static void SetStatus(u16 mode) { songPlayingMode = mode; }
		static u16 GetSongID() { return songIDInt; }
		static u16 GetFanfareID() { return fanfareIDInt; }
		static u16 GetSFXID() { return sfxIDInt; }
		static void FadeSongToSilence();
		static void StopSong();
		static void SetOnSongEndCallback(Callbacks::Callback* ptr);
		static void SetOnSFXEndCallback(Callbacks::Callback* ptr);
		static bool SFXPlaying();
		static bool FanfarePlaying();
		static void ResumeSong();
		static void SetTempo(u16 tempo);
	};
}

#endif /* SOUNDENGINE_H_ */
