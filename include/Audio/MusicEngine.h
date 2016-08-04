#pragma once

#include "GlobalDefinitions.h"
#include "SmartPointer.h"
#include "Callbacks/Callback.h"

namespace Audio
{
	class MusicEngine
	{
	protected:
		MusicEngine();
		u16 buffer[18];
		SmartPointer<Callbacks::Callback> onEndSongCallback;
		SmartPointer<Callbacks::Callback> onEndSFXCallback;
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
		void SetSongOnEndFunction(SmartPointer<Callbacks::Callback> callback) { onEndSongCallback = callback; }
		void SetSFXOnEndFunction(SmartPointer<Callbacks::Callback> callback) { onEndSFXCallback = callback; }
		SmartPointer<Callbacks::Callback> &GetSongOnEndFunction() { return onEndSongCallback; }
		SmartPointer<Callbacks::Callback> &GetSFXOnEndFunction() { return onEndSFXCallback; }
		virtual void Initialise(void* songTablePointer) = 0;
		virtual bool SFXPlaying() = 0;
		virtual bool FanfarePlaying() = 0;
		virtual void ResumeSong() = 0;
		virtual void SwitchWavePattern(u32 patternID) = 0;
		u16* GetBufferAddress() const { return (u16*)&buffer; }
	};
}

