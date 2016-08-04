/*
 * SoundEngine.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "Audio/SoundEngine.h"
#include "Audio/MusicEngine.h"
#include "Audio/M4A/M4APlayer.h"
#include "Callbacks/ResumeSongCallback.h"

namespace Audio
{
	EWRAM_LOCATION ALIGN(4) SmartPointer<MusicEngine> SoundEngine::me = SmartPointer<MusicEngine>();
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::songPlayingMode = DoNothing;
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::songIDInt = 0;
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::fanfareIDInt = 0;
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::sfxIDInt = 0;
	EWRAM_LOCATION ALIGN(4) SmartPointer<Callbacks::Callback> SoundEngine::onEndFanfareCallback = SmartPointer<Callbacks::Callback>();

	SoundEngine::~SoundEngine()
	{
		// TODO Auto-generated destructor stub
	}

	SoundEngine::SoundEngine()
	{
		// TODO Auto-generated constructor stub
	}

	void SoundEngine::Initialise(SmartPointer<MusicEngine> engine, void* songTablePointer)
	{
		if (!onEndFanfareCallback)
		{
			onEndFanfareCallback = new Callbacks::ResumeSongCallback();
		}
		if (!M4A::M4APlayer::Initialised())
		{
			M4A::M4APlayer::Initialise();
		}
		me = engine;
		me->Initialise(songTablePointer);
	}

	void SoundEngine::Interrupt()
	{
		if (me)
		{
			me->Interrupt();
		}
	}

	void SoundEngine::Update()
	{
		if (me)
		{
			me->Update();
		}
	}

	void SoundEngine::PlaySong(u16 songID, u8 songStartMode)
	{
		if (songID)
		{
			songIDInt = songID;
			u8 valueToWrite = 1;
			switch (songStartMode)
			{
				case 0:
					valueToWrite = InitialiseSong;
					break;
				case 1:
					valueToWrite = FadeToSong;
					break;
				case 2:
					valueToWrite = FadeIn;
					break;
			}
			songPlayingMode = valueToWrite;
		}
	}

	void SoundEngine::PlaySongIfNotStarted(u16 songID, u8 songStartMode)
	{
		if (songID != songIDInt || (songID == songIDInt && songPlayingMode != ContinueSong))
		{
			songIDInt = songID;
			u8 valueToWrite = 1;
			switch (songStartMode)
			{
				case 0:
					valueToWrite = InitialiseSong;
					break;
				case 1:
					valueToWrite = FadeToSong;
					break;
				case 2:
					valueToWrite = FadeIn;
					break;
			}
			songPlayingMode = valueToWrite;
		}
	}

	void SoundEngine::PlayFanfare(u16 songID)
	{
		if (songID)
		{
			fanfareIDInt = songID;
			songPlayingMode = InitialiseFanfare;
		}
	}

	void SoundEngine::PlaySFX(u16 songID)
	{
		if (songID)
		{
			sfxIDInt = songID;
			songPlayingMode = InitialiseSFX;
		}
	}

	void SoundEngine::FadeSongToSilence()
	{
		songIDInt = 0;
		songPlayingMode = FadeToSong;
	}

	void SoundEngine::StopSong()
	{
		songIDInt = 0;
		songPlayingMode = InitialiseSong;
	}

	void SoundEngine::SetOnSongEndCallback(SmartPointer<Callbacks::Callback> ptr)
	{
		if (me)
		{
			me->SetSongOnEndFunction(ptr);
		}
	}

	SmartPointer<Callbacks::Callback> SoundEngine::GetOnSongEndCallback()
	{
		if (me)
		{
			return me->GetSongOnEndFunction();
		}
		return __null;
	}

	SmartPointer<Callbacks::Callback> SoundEngine::GetOnSFXEndCallback()
	{
		if (me)
		{
			return me->GetSongOnEndFunction();
		}
		return __null;
	}

	void SoundEngine::SetOnSFXEndCallback(SmartPointer<Callbacks::Callback> ptr)
	{
		if (me)
		{
			me->SetSFXOnEndFunction(ptr);
		}
	}

	bool SoundEngine::SFXPlaying()
	{
		if (me)
		{
			return me->SFXPlaying();
		}
		return false;
	}

	bool SoundEngine::FanfarePlaying()
	{
		if (me)
		{
			return me->FanfarePlaying();
		}
		return false;
	}

	void SoundEngine::ResumeSong()
	{
		if (me)
		{
			me->ResumeSong();
		}
	}

	u16* SoundEngine::GetBufferAddress()
	{
		if (me)
		{
			return me->GetBufferAddress();
		}
		return __null;
	}

	void SoundEngine::SwitchWavePattern(u32 patternID)
	{
		if (me)
		{
			me->SwitchWavePattern(patternID);
		}
	}
}
