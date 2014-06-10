/*
 * MusicEngine.h
 *
 *  Created on: 28 Apr 2014
 *      Author: Jamie
 */

#ifndef MUSICENGINE_H_
#define MUSICENGINE_H_

#include "MusicEngine/GBPSoundsEngine.h"
#include "MusicEngine/EngineM4.h"

enum MusicEngineStates {
	M4AEngine,
	GBPSoundsEngine
};

void SetMusicEngine(u32 engineID);
void SwitchMusicEngineAndRestart(u32 engineID);
void ToggleActiveMusicEngine();
void ToggleActiveMusicEngineAndRestart();

#endif /* MUSICENGINE_H_ */
