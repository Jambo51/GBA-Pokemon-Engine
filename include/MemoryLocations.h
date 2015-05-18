/*
 * MemoryLocations.h
 *
 *  Created on: 8 Oct 2013
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"

#ifndef MEMORYLOCATIONS_H_
#define MEMORYLOCATIONS_H_

extern u8 formesToShowInDex[];
extern BattleTypeStruct battleType;
extern u8* battleScriptPointer;
extern u16 battleScriptFrameWait;
extern u8* overworldScriptPointer;
extern u16 overworldScriptFrameWait;
extern u8* animationScriptPointer;
extern u16 animationScriptFrameWait;
extern u8* applyMovementScriptPointer[5];
extern u32 applyMovementStatus[5];
extern u8 seasonByte;
extern u8 regionByte;
extern u16 currentSFXID;
extern u16 currentFanfareID;
extern u16 currentSongID;
extern u16 currentSongPlaybackStatus;
extern u8 pauseMenuLocation;
extern u8 hardwareColumn;
extern u8 hardwareRow;
extern u8 textPalette;
extern PaletteFadeStruct fadeStruct[];
extern PokedexMemoryData* dexPointer;
extern MusicFadeInfo* musicFadePointer;
extern BattleData* battleDataPointer;
extern u32 pauseOutlinePalette[8];

#endif /* MEMORYLOCATIONS_H_ */
