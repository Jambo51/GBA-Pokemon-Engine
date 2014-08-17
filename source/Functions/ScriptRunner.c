/*
 * ScriptRunner.c
 *
 *  Created on: 23 Dec 2013
 *      Author: Jamie
 */

#include "Data.h"
#include "Functions\BattleScriptCommands.h"
#include "Functions\CallbackSystem.h"

const u8 (*battleScriptCommandTable[])(void) = {
		&CheckForMoveCancellingStatuses,
		&HitMissCalculation,
		0,
		&DecrementPP,
		&CalculateDamage,
		&StoreByte,
		&StoreHalfWord,
		&StoreWord,
		&JumpIf,
		&SetMovePrimaryEffect,
		&SetMoveSecondaryEffect,
		&ExecuteMoveAnimation,
		&ExecuteDamageReceptionAnimation,
		&UpdateHPBar,
		&WaitMoveAnimation,
		&ApplyCalculatedDamage,
		&FaintIfNecessary,
		&ApplyMoveEffects,
		&SetBattleStatusFlag,
		&ClearBattleStatusFlag,
		&GotoJump,
		&CallJump,
		&ReturnFromCall,
		&PauseBattleScript,
		&PauseBattleScriptIfTextRendering,
		&UpdateCounters,
		&EndScript
};

u32 RunScript(u8** pointer, u8 (*instructionSet[0xFF])(void))
{
	u32 scriptEnded = NotEnded;
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
	return scriptEnded;
}

void RunBattleScript()
{
	u32 result = RunScript(&battleScriptPointer, (u8 (*)(void))&battleScriptCommandTable);
	if (result == Ended)
	{
		RemoveFunctionByPointer(&RunBattleScript);
	}
}

void RunOverworldScript()
{
	u32 result = RunScript(&overworldScriptPointer, 0/*(u8 (*)(void))&battleScriptCommandTable*/);
	if (result == Ended)
	{
		RemoveFunctionByPointer(&RunOverworldScript);
	}
}

void RunAnimationScript()
{
	u32 result = RunScript(&animationScriptPointer, 0/*(u8 (*)(void))&battleScriptCommandTable*/);
	if (result == Ended)
	{
		RemoveFunctionByPointer(&RunAnimationScript);
	}
}
