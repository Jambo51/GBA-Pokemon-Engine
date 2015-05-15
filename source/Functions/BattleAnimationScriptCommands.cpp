/*
 * BattleAnimationScriptCommands.c
 *
 *  Created on: 25 Aug 2014
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "MemoryLocations.h"
#include "ObjectFunctions.h"
#include "LoadUnalignedCode.h"

/*u8 HideSprite()
{
	PreOAMStruct* dataLoc = battleDataPointer[0].objectPointers.battlers[battleDataPointer[0].battleBanks[animationScriptPointer[1]]];
	dataLoc[0].disableDoubleFlag = 1;
	dataLoc[0].requiresUpdate = 1;
	animationScriptPointer += 2;
	return NotEnded;
}

u8 ShowSprite()
{
	PreOAMStruct* dataLoc = battleDataPointer[0].objectPointers.battlers[battleDataPointer[0].battleBanks[animationScriptPointer[1]]];
	dataLoc[0].disableDoubleFlag = 0;
	dataLoc[0].requiresUpdate = 1;
	animationScriptPointer += 2;
	return NotEnded;
}

u8 PauseBattleAnimationScript()
{
	if (animationScriptFrameWait == 0)
	{
		animationScriptFrameWait = (u16)LoadUnalignedNumber(animationScriptPointer, 1, 2);
		return WaitForFrames;
	}
	else
	{
		animationScriptFrameWait--;
		if (animationScriptFrameWait == 0)
		{
			animationScriptPointer += 3;
			return NotEnded;
		}
		return WaitForFrames;
	}
}

#define BattleStateFunctionsLength 1

void MoveUpAndDown(PreOAMStruct* dataLoc)
{
	UpAndDownStruct* info = (UpAndDownStruct*)&dataLoc[0].stateFunctionInfo;
	if (info[0].frameDelay)
	{
		info[0].frameDelay--;
	}
	else
	{
		info[0].frameDelay = info[0].frameDelayLength;
		if (info[0].currentPosition)
		{
			dataLoc[0].yLocation--;
			info[0].currentPosition = 0;
		}
		else
		{
			dataLoc[0].yLocation++;
			info[0].currentPosition = 1;
		}
		dataLoc[0].requiresUpdate = 1;
	}
}

const void (*BattleStateFunctions[])(PreOAMStruct*) = {
		&MoveUpAndDown
};

u8 SetObjectStateFunction()
{
	PreOAMStruct* dataLoc = battleDataPointer[0].objectPointers.battlers[battleDataPointer[0].battleBanks[animationScriptPointer[1]]];
	u32 functionID = animationScriptPointer[2];
	if (functionID <= BattleStateFunctionsLength)
	{
		dataLoc[0].StateFunction = BattleStateFunctions[functionID];
		dataLoc[0].stateFunctionInfo = LoadUnalignedNumber(animationScriptPointer, 3, 4);
	}
	animationScriptPointer += 7;
	return NotEnded;
}

u8 ClearObjectStateFunction()
{
	PreOAMStruct* dataLoc = battleDataPointer[0].objectPointers.battlers[battleDataPointer[0].battleBanks[animationScriptPointer[1]]];
	dataLoc[0].StateFunction = 0;
	dataLoc[0].stateFunctionInfo = 0;
	animationScriptPointer += 2;
	return NotEnded;
}

u8 EndAnimationScript()
{
	battleDataPointer[0].flags.waitForMoveAnimation = 0;
	return Ended;
}*/
