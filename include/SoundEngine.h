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

class MusicEngine;

class SoundEngine
{
private:
	SoundEngine();
	~SoundEngine();
	static MusicEngine* me;
	static u16 songPlayingMode;
	static u16 songIDInt;
	static u16 fanfareIDInt;
	static u16 sfxIDInt;
public:
	static void Interrupt();
	static void Initialise(MusicEngine* engine);
	static void Update();
	static void PlaySong(u16 songID, u8 songStartMode);
	static void PlayFanfare(u16 songID);
	static void PlaySFX(u16 songID);
	static u16 GetStatus() { return songPlayingMode; }
	static void SetStatus(u16 mode) { songPlayingMode = mode; }
	static u16 GetSongID() { return songIDInt; }
	static u16 GetFanfareID() { return fanfareIDInt; }
	static u16 GetSFXID() { return sfxIDInt; }
	static void FadeSongToSilence();
	static void StopSong();
	static void SetOnSongEndFunction(VoidFunctionPointerVoid ptr);
	static bool SFXPlaying();
	static bool FanfarePlaying();
};

#endif /* SOUNDENGINE_H_ */
