/*
 * MusicEngine.c
 *
 *  Created on: 3 Jun 2014
 *      Author: Jamie
 */

#include <tonc.h>
#include "Data\MemoryLocations.h"

#include "Functions/MusicEngine/GBPSoundsEngine.h"
#include "Functions/MusicEngine/EngineM4.h"

enum MusicEngineStates {
	M4AEngine,
	GBPSoundsEngine
};

const void (*musicEngines[2])(void) = { (void (*)(void))&M4_MainEngine, (void (*)(void))&GBPSoundsMainEngine };

void SetMusicEngine(u32 engineID)
{
	if (engineID < 2)
	{
		MusicEngine = (void (*)(void))musicEngines[engineID];
	}
}

void SetMusicEngineAndRestart(u32 engineID)
{
	SetMusicEngine(engineID);
	currentSongPlaybackStatus = 1;
}

void ToggleActiveMusicEngine()
{
	if ((u32)MusicEngine == (u32)&M4_MainEngine)
	{
		SetMusicEngine(GBPSoundsEngine);
	}
	else
	{
		SetMusicEngine(M4AEngine);
		M4_Init();
	}
}

void ToggleActiveMusicEngineAndRestart()
{
	ToggleActiveMusicEngine();
	currentSongPlaybackStatus = 1;
}
