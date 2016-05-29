/*
 * BattleTransitionScriptCommands.cpp
 *
 *  Created on: 16 Aug 2015
 *      Author: Jamie
 */

#include "Core/BackgroundFunctions.h"
#include "GlobalDefinitions.h"
#include "Tasks/ScriptRunners/ScriptRunner.h"
#include "Core/LoadUnalignedCode.h"
#include "Core/Game.h"

// To minimise code duplication, this engine re-uses
// the end, call, goto and return commands from the overworld
// scripting commands
// This does necessitate the use of a releasestate command
// before using the end command to allow waiting engine
// functions to continue

typedef struct WindowAnimationStruct {
	u8 frames;
	u8 animationID;
	u16 unused;
} WindowAnimationStruct;

using namespace Core;

// Window creation and initialisation functions

u32 CreateWindow(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 windowID = *(script + 1);
	Vector2D tl = Vector2D(*(script + 2), *(script + 3));
	Vector2D br = Vector2D(*(script + 4), *(script + 5));
	BackgroundFunctions::CreateWindow(windowID, tl, br);
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 DeleteWindow(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 windowID = *(script + 1);
	BackgroundFunctions::EraseWindow(windowID);
	runner->IncrementScriptPointer(2);
	return NotEnded;
}

u32 SetWindowPosition(Tasks::ScriptRunners::ScriptRunner* runner)
{
	// Main difference between this and create is
	// the initialisation in the create window
	// static function - this script command
	// will NOT create a window if it doesn't already exist
	u8* script = runner->GetScriptPointer();
	u32 windowID = *(script + 1);
	Vector2D tl = Vector2D(*(script + 2), *(script + 3));
	Vector2D br = Vector2D(*(script + 4), *(script + 5));
	BackgroundFunctions::SetWindowPosition(windowID, tl, br);
	runner->IncrementScriptPointer(6);
	return NotEnded;
}

u32 SetWindowLayerEnabled(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	BackgroundFunctions::EnableWindowEffect(*(script + 1), *(script + 2));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

u32 SetWindowLayerDisabled(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	BackgroundFunctions::DisableWindowEffect(*(script + 1), *(script + 2));
	runner->IncrementScriptPointer(3);
	return NotEnded;
}

// Palette effect functions

void ReleaseWaitingScriptRunnerFromPaletteWait(u32 data)
{
	Tasks::ScriptRunners::ScriptRunner* runner = (Tasks::ScriptRunners::ScriptRunner*)data;
	runner->SetWaitFrames(runner->GetWaitFrames() & (~(0x10)));
}

u32 FlashPaletteToWhiteFiftyPercent(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Game::WhitePaletteFlash(true, HalfSecond, false, false, 50);
	Game::SetCustomFadeCallback((VoidFunctionPointerU32)&ReleaseWaitingScriptRunnerFromPaletteWait, (u32)runner);
	runner->SetWaitFrames(runner->GetWaitFrames() | 0x10);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 FlashPaletteToBlackFiftyPercent(Tasks::ScriptRunners::ScriptRunner* runner)
{
	Game::BlackPaletteFlash(true, HalfSecond, false, false, 50);
	Game::SetCustomFadeCallback((VoidFunctionPointerU32)&ReleaseWaitingScriptRunnerFromPaletteWait, (u32)runner);
	runner->SetWaitFrames(runner->GetWaitFrames() | 0x10);
	runner->IncrementScriptPointer(1);
	return NotEnded;
}

u32 WaitPaletteFlash(Tasks::ScriptRunners::ScriptRunner* runner)
{
	if ((runner->GetWaitFrames() & 0x10) == 0)
	{
		runner->IncrementScriptPointer(1);
		return NotEnded;
	}
	return WaitForFrames;
}

// "Window" effect functions

#define NumberOfStandardWindowEffects 0

TEXT_LOCATION u8* standardWindowEffects[] = {

};

u32 CallStandardWindowEffect(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	u32 id = *(script + 1);
	if (id < NumberOfStandardWindowEffects)
	{
		runner->Call(standardWindowEffects[id]);
	}
	else
	{
		runner->IncrementScriptPointer(2);
	}
	return NotEnded;
}

u32 SetBasicWindowAnimation(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	WindowAnimationStruct &str = *((WindowAnimationStruct*)runner->GetBankPointer(*(script + 1)));
	str.frames = *(script + 3);
	str.animationID = *(script + 2);
	runner->IncrementScriptPointer(4);
	return NotEnded;
}

u32 WaitAllWindowAnimations(Tasks::ScriptRunners::ScriptRunner* runner)
{
	for (u32 i = 0; i < 4; i++)
	{
		WindowAnimationStruct &str = *((WindowAnimationStruct*)runner->GetBankPointer(i));
		if (str.frames == 0)
		{
			runner->SetWaitFrames(runner->GetWaitFrames() & ~(1 << i));
		}
		else
		{
			str.frames--;
			switch (str.animationID)
			{
				case 0:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(-1, 0), Vector2D(0, 0));
					break;
				case 1:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(1, 0), Vector2D(0, 0));
					break;
				case 2:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(0, -1), Vector2D(0, 0));
					break;
				case 3:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(0, 1), Vector2D(0, 0));
					break;
				case 4:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(0, 0), Vector2D(-1, 0));
					break;
				case 5:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(0, 0), Vector2D(1, 0));
					break;
				case 6:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(0, 0), Vector2D(0, -1));
					break;
				case 7:
					BackgroundFunctions::AlterWindowPosition(i, Vector2D(0, 0), Vector2D(0, 1));
					break;
				default:
					str.frames = 0;
					str.animationID = 0;
					runner->SetWaitFrames(runner->GetWaitFrames() & ~(1 << i));
					break;
			}
		}
	}
	if ((runner->GetWaitFrames() & 0xF) == 0)
	{
		runner->IncrementScriptPointer(1);
		return NotEnded;
	}
	return WaitForFrames;
}

// By the nature of the beast, all tile related functions in this type of transition script
// *must* take place in layer 0 since layers 1-3 will still contain the overworld or the battle
// background if transitioning into or out of battle

u32 LoadTiles(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	void* pointer = (void*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	u32 numTiles = UnalignedNumberHandler::LoadUnalignedNumber(script, 5, 2);
	memcpy32((void*)0x06008000, pointer, numTiles >> 2);
	runner->IncrementScriptPointer(7);
	return NotEnded;
}

u32 LoadTilemap(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	void* pointer = (void*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	void* targetPointer = (void*)Game::GetLayerPointer(0);
	memcpy32(targetPointer, pointer, 0x200);
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 LoadCompressedTiles(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	void* pointer = (void*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	LZ77UnCompVram(pointer, (void*)0x06008000);
	runner->IncrementScriptPointer(5);
	return NotEnded;
}

u32 LoadCompressedTilemap(Tasks::ScriptRunners::ScriptRunner* runner)
{
	u8* script = runner->GetScriptPointer();
	void* pointer = (void*)UnalignedNumberHandler::LoadUnalignedNumber(script, 1, 4);
	void* targetPointer = (void*)Game::GetLayerPointer(0);
	LZ77UnCompVram(pointer, targetPointer);
	runner->IncrementScriptPointer(5);
	return NotEnded;
}
