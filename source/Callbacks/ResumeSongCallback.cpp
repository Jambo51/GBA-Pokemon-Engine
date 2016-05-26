/*
 * ResumeSongCallback.cpp
 *
 *  Created on: 26 May 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/ResumeSongCallback.h"
#include "Audio.h"

namespace Callbacks
{
	ResumeSongCallback::ResumeSongCallback()
	{

	}

	ResumeSongCallback::~ResumeSongCallback()
	{

	}

	void ResumeSongCallback::DoCallback()
	{
		Audio::SoundEngine::ResumeSong();
	}
}
