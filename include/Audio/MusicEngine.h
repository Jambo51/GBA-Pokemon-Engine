#pragma once

#include "GlobalDefinitions.h"

namespace Callbacks
{
	class Callback;
}

namespace Audio
{
	class MusicEngine
	{
	protected:
		MusicEngine();
		u16 buffer[17];
		Callbacks::Callback* onEndSongCallback;
		Callbacks::Callback* onEndSFXCallback;
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
		void SetSongOnEndFunction(Callbacks::Callback* callback) { onEndSongCallback = callback; }
		void SetSFXOnEndFunction(Callbacks::Callback* callback) { onEndSFXCallback = callback; }
		Callbacks::Callback* GetSongOnEndFunction() { return onEndSongCallback; }
		Callbacks::Callback* GetSFXOnEndFunction() { return onEndSFXCallback; }
		virtual void Initialise(void* songTablePointer) = 0;
		virtual bool SFXPlaying() = 0;
		virtual bool FanfarePlaying() = 0;
		virtual void ResumeSong() = 0;
		u16* GetBufferAddress() const { return (u16*)&buffer; }
	};
}

