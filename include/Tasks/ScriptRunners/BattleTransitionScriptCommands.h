/*
 * BattleTransitionScriptCommands.h
 *
 *  Created on: 16 Aug 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_BATTLETRANSITIONSCRIPTCOMMANDS_H_
#define INCLUDE_BATTLETRANSITIONSCRIPTCOMMANDS_H_

#include "BackgroundFunctions.h"
#include "GlobalDefinitions.h"
#include "ScriptRunner.h"

typedef struct WindowAnimationStruct {
	u8 frames;
	u8 animationID;
	u16 unused;
} WindowAnimationStruct;

extern u32 CreateWindow(ScriptRunner* runner);
extern u32 DeleteWindow(ScriptRunner* runner);
extern u32 SetWindowPosition(ScriptRunner* runner);
extern u32 SetWindowLayerEnabled(ScriptRunner* runner);
extern u32 SetWindowLayerDisabled(ScriptRunner* runner);
extern u32 FlashPaletteToWhiteFiftyPercent(ScriptRunner* runner);
extern u32 FlashPaletteToBlackFiftyPercent(ScriptRunner* runner);
extern u32 WaitPaletteFlash(ScriptRunner* runner);
extern u32 CallStandardWindowEffect(ScriptRunner* runner);
extern u32 SetBasicWindowAnimation(ScriptRunner* runner);
extern u32 WaitAllWindowAnimations(ScriptRunner* runner);
extern u32 LoadTiles(ScriptRunner* runner);
extern u32 LoadTilemap(ScriptRunner* runner);
extern u32 LoadCompressedTiles(ScriptRunner* runner);
extern u32 LoadCompressedTilemap(ScriptRunner* runner);

#endif /* INCLUDE_BATTLETRANSITIONSCRIPTCOMMANDS_H_ */
