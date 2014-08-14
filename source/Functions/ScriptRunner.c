/*
 * ScriptRunner.c
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#include "Data.h"
#include "Functions\BattleScriptCommands.h"

const u8 (*battleScriptCommandTable[])(void) = {
		(u8*)&CheckForMoveCancellingStatuses,
		(u8*)&HitMissCalculation,
		(u8*)0,
		(u8*)&DecrementPP,
		(u8*)&CalculateDamage
};

void RunScript(u8** pointer, u8 (*instructionSet[0xFF])(void))
{
	u8 scriptEnded = NotEnded;
	while (scriptEnded != Ended)
	{
		u8* loc = pointer[0];
		u8 commandID = loc[0];
		u8 (*ScriptCommand)(void) = instructionSet[commandID];
		scriptEnded = ScriptCommand();
		if (scriptEnded == WaitForFrames)
		{
			break;
		}
	}
}

void RunBattleScript()
{
	RunScript(&battleScriptPointer, (u8 (*)(void))&battleScriptCommandTable);
	RemoveFunctionByPointer(&RunBattleScript);
}

void RunOverworldScript()
{
	RunScript(&overworldScriptPointer, 0);//&overworldScriptCommandTable);
}
