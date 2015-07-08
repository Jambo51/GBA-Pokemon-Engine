#pragma once

#include "GlobalDefinitions.h"

class MusicEngine
{
protected:
	MusicEngine();
	u16 buffer[17];
	virtual void StartSong(u16 songID, bool startWithZeroVolume = false) = 0;
	virtual void StartFanfare(u16 fanfareID) = 0;
	virtual void StartSFX(u16 sfxID) = 0;
	virtual void FadeSong() = 0;
	virtual void FadeSongOut() = 0;
	virtual void FadeSongIn() = 0;
public:
	virtual ~MusicEngine();
	virtual void Interrupt() = 0;
	virtual void Update();
	virtual void SetSongOnEndFunction(VoidFunctionPointerVoid function) = 0;
	virtual void SetSFXOnEndFunction(VoidFunctionPointerVoid function) = 0;
	virtual void Initialise() = 0;
	virtual bool SFXPlaying() = 0;
	virtual bool FanfarePlaying() = 0;
	u16* GetBufferAddress() const { return (u16*)&buffer; }
};
