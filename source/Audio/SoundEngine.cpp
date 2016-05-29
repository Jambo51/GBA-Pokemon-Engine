/*
 * SoundEngine.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "Audio/SoundEngine.h"
#include "Audio/MusicEngine.h"
#include "Callbacks/ResumeSongCallback.h"

namespace Audio
{
	EWRAM_LOCATION ALIGN(4) MusicEngine* SoundEngine::me = NULL;
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::songPlayingMode = DoNothing;
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::songIDInt = 0;
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::fanfareIDInt = 0;
	EWRAM_LOCATION ALIGN(2) u16 SoundEngine::sfxIDInt = 0;
	EWRAM_LOCATION ALIGN(4) Callbacks::Callback* SoundEngine::onEndFanfareCallback = NULL;

	SoundEngine::~SoundEngine()
	{
		// TODO Auto-generated destructor stub
	}

	SoundEngine::SoundEngine()
	{
		// TODO Auto-generated constructor stub
	}

	void SoundEngine::Initialise(MusicEngine* engine, void* songTablePointer)
	{
		if (!onEndFanfareCallback)
		{
			onEndFanfareCallback = new Callbacks::ResumeSongCallback();
		}
		if (me)
		{
			delete me;
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

	void SoundEngine::SetOnSongEndCallback(Callbacks::Callback* ptr)
	{
		if (me)
		{
			me->SetSongOnEndFunction(ptr);
		}
	}

	void SoundEngine::SetOnSFXEndCallback(Callbacks::Callback* ptr)
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
}
