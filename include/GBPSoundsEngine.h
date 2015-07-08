#pragma once

#include "MusicEngine.h"
#include "GBPChannel.h"

class GBPSoundsEngine : public MusicEngine
{
protected:
	static WavePattern wavePatterns[];
	GBPChannel* channels[3];
	MusicFadeInfo fadeInfo;
	void StartSong(u16 songID, bool startWithZeroVolume = false);
	void StartFanfare(u16 fanfareID);
	void StartSFX(u16 sfxID);
	void FadeSong();
	void FadeSongOut();
	void FadeSongIn();
public:
	GBPSoundsEngine()
	{
		for (int i = 0; i < 3; i++)
		{
			channels[i] = new GBPChannel(this);
		}
	}
	~GBPSoundsEngine()
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
	void ResumeSongPlaybackAndDisableFanfare();
	void SwitchWavePattern(u8 patternID) const;
	void Initialise();
	bool SFXPlaying();
	bool FanfarePlaying();
};
