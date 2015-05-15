/*
 * SoundEngine.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "SoundEngine.h"
#include "MusicEngine.h"

#define NULL 0

EWRAM_LOCATION ALIGN(4) MusicEngine* SoundEngine::me = NULL;
EWRAM_LOCATION ALIGN(2) u16 SoundEngine::songPlayingMode = DoNothing;
EWRAM_LOCATION ALIGN(2) u16 SoundEngine::songIDInt = 0;
EWRAM_LOCATION ALIGN(2) u16 SoundEngine::fanfareIDInt = 0;
EWRAM_LOCATION ALIGN(2) u16 SoundEngine::sfxIDInt = 0;

SoundEngine::~SoundEngine()
{
	// TODO Auto-generated destructor stub
}

SoundEngine::SoundEngine()
{
	// TODO Auto-generated constructor stub
}

void SoundEngine::Initialise(MusicEngine* engine)
{
	if (me)
	{
		delete me;
	}
	me = engine;
	me->Initialise();
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
