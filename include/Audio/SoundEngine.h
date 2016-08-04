/*
 * SoundEngine.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef SOUNDENGINE_H_
#define SOUNDENGINE_H_

#include "GlobalDefinitions.h"
#include "SmartPointer.h"
#include "Callbacks/Callback.h"

enum GBPSoundsCaseIDs { DoNothing, InitialiseSong, ContinueSong, FadeToSilence, FadeIn, FadeToSong, Pause, FadeInSecond, InitialiseFanfare, InitialiseSFX, MaxCase };

namespace Audio
{
	class MusicEngine;

	class SoundEngine
	{
	private:
		SoundEngine();
		~SoundEngine();
		static SmartPointer<Callbacks::Callback> onEndFanfareCallback;
		static SmartPointer<MusicEngine> me;
		static u16 songPlayingMode;
		static u16 songIDInt;
		static u16 fanfareIDInt;
		static u16 sfxIDInt;
	public:
		static SmartPointer<Callbacks::Callback> GetFanfareCallback() { return onEndFanfareCallback; }
		static void Interrupt();
		static void Initialise(SmartPointer<MusicEngine> engine, void* songTablePointer);
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
		static void SetOnSongEndCallback(SmartPointer<Callbacks::Callback> ptr);
		static SmartPointer<Callbacks::Callback> GetOnSongEndCallback();
		static void SetOnSFXEndCallback(SmartPointer<Callbacks::Callback> ptr);
		static SmartPointer<Callbacks::Callback> GetOnSFXEndCallback();
		static bool SFXPlaying();
		static bool FanfarePlaying();
		static void ResumeSong();
		static u16* GetBufferAddress();
		static void SwitchWavePattern(u32 patternID);
	};
}

#endif /* SOUNDENGINE_H_ */
