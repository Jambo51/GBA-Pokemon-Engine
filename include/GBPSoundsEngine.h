#pragma once

#include "MusicEngine.h"
#include "GBPChannel.h"

class GBPSoundsEngine : public MusicEngine
{
protected:
	static WavePattern wavePatterns[];
	GBPChannel* channels[3];
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
	GBPSoundsEngine()
	{
		for (int i = 0; i < 3; i++)
		{
			channels[i] = new GBPChannel(this);
			channelsPlaying[i] = false;
			skipWaveChange = false;
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
	void ResumeSong();
	void SwitchWavePattern(u8 patternID) const;
	void Initialise();
	bool SFXPlaying();
	bool FanfarePlaying();
};
