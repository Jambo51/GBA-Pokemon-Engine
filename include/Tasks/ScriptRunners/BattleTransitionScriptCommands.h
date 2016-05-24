/*
 * BattleTransitionScriptCommands.h
 *
 *  Created on: 16 Aug 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_BATTLETRANSITIONSCRIPTCOMMANDS_H_
#define INCLUDE_BATTLETRANSITIONSCRIPTCOMMANDS_H_

#include "Core/BackgroundFunctions.h"
#include "GlobalDefinitions.h"
#include "Tasks/ScriptRunners/ScriptRunner.h"

typedef struct WindowAnimationStruct {
	u8 frames;
	u8 animationID;
	u16 unused;
} WindowAnimationStruct;

extern u32 CreateWindow(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 DeleteWindow(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 SetWindowPosition(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 SetWindowLayerEnabled(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 SetWindowLayerDisabled(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 FlashPaletteToWhiteFiftyPercent(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 FlashPaletteToBlackFiftyPercent(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 WaitPaletteFlash(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 CallStandardWindowEffect(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 SetBasicWindowAnimation(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 WaitAllWindowAnimations(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 LoadTiles(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 LoadTilemap(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 LoadCompressedTiles(Tasks::ScriptRunners::ScriptRunner* runner);
extern u32 LoadCompressedTilemap(Tasks::ScriptRunners::ScriptRunner* runner);

#endif /* INCLUDE_BATTLETRANSITIONSCRIPTCOMMANDS_H_ */
