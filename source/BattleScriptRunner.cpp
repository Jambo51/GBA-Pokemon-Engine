/*
 * BattleScriptRunner.cpp
 *
 *  Created on: 12 Jun 2015
 *      Author: Jamie
 */

#include "BattleScriptRunner.h"
#include "BattleScriptCommands.h"

RODATA_LOCATION ALIGN(4) U32FunctionPointerScriptRunner BattleScriptRunner::battleCommands[0xFF] = {
		(U32FunctionPointerScriptRunner)&CheckForMoveCancellingStatuses,
		(U32FunctionPointerScriptRunner)&HitMissCalculation,
		(U32FunctionPointerScriptRunner)&PokemonUsedMessage,
		(U32FunctionPointerScriptRunner)&DecrementPP,
		(U32FunctionPointerScriptRunner)&CalculateDamage,
		(U32FunctionPointerScriptRunner)&StoreByte,
		(U32FunctionPointerScriptRunner)&StoreHalfWord,
		(U32FunctionPointerScriptRunner)&StoreWord,
		(U32FunctionPointerScriptRunner)&JumpIf,
		(U32FunctionPointerScriptRunner)&SetMovePrimaryEffect,
		(U32FunctionPointerScriptRunner)&SetMoveSecondaryEffect,
		(U32FunctionPointerScriptRunner)&ExecuteMoveAnimation,
		(U32FunctionPointerScriptRunner)&ExecuteDamageReceptionAnimation,
		(U32FunctionPointerScriptRunner)&UpdateHPBar,
		(U32FunctionPointerScriptRunner)&WaitMoveAnimation,
		(U32FunctionPointerScriptRunner)&ApplyCalculatedDamage,
		(U32FunctionPointerScriptRunner)&FaintIfNecessary,
		(U32FunctionPointerScriptRunner)&ApplyMoveEffects,
		(U32FunctionPointerScriptRunner)&SetBattleStatusFlag,
		(U32FunctionPointerScriptRunner)&ClearBattleStatusFlag,
		(U32FunctionPointerScriptRunner)&GotoJump,
		(U32FunctionPointerScriptRunner)&CallJump,
		(U32FunctionPointerScriptRunner)&ReturnFromCall,
		(U32FunctionPointerScriptRunner)&PauseBattleScript,
		(U32FunctionPointerScriptRunner)&PauseBattleScriptIfTextRendering,
		(U32FunctionPointerScriptRunner)&EndTurn,
		(U32FunctionPointerScriptRunner)&EndScript,
		(U32FunctionPointerScriptRunner)&PrintCriticalHitMessage,
		(U32FunctionPointerScriptRunner)&PrintEffectivenessMessage,
		(U32FunctionPointerScriptRunner)&PrintMessageByPointer,
		(U32FunctionPointerScriptRunner)&PrintMessageByID,
		(U32FunctionPointerScriptRunner)&PlayBattleEndFanfare,
		(U32FunctionPointerScriptRunner)&PrintFaintMessage,
		(U32FunctionPointerScriptRunner)&WaitKeyPressTextBattle,
		(U32FunctionPointerScriptRunner)&CalculateExperience,
		(U32FunctionPointerScriptRunner)&PrintExperienceMessage,
		(U32FunctionPointerScriptRunner)&PrintTrainerVictoryMessage,
		(U32FunctionPointerScriptRunner)&PrintTrainerAfterMessage,
		(U32FunctionPointerScriptRunner)&CalculateTrainerWinnings,
		(U32FunctionPointerScriptRunner)&CalculatePickupWinnings,
		(U32FunctionPointerScriptRunner)&PrintTrainerCashGainMessage,
		(U32FunctionPointerScriptRunner)&PrintPayDayCashGainMessage,
		(U32FunctionPointerScriptRunner)&PrintMumCashGainMessage,
		(U32FunctionPointerScriptRunner)&PrintItemEffectMessage,
		(U32FunctionPointerScriptRunner)&CalculateFleeResult,
		(U32FunctionPointerScriptRunner)&PrintCallEffectMessage,
		(U32FunctionPointerScriptRunner)&PrintFleeEffectMessage,
		(U32FunctionPointerScriptRunner)&IncrementLoopCounter,
		(U32FunctionPointerScriptRunner)&SetLoopCounter,
		(U32FunctionPointerScriptRunner)0,
		(U32FunctionPointerScriptRunner)&SetBattleDamageMultiplier,
		(U32FunctionPointerScriptRunner)&SetSecondaryStatus,
		(U32FunctionPointerScriptRunner)&SetSpecialBattleStatus,
		(U32FunctionPointerScriptRunner)0,
		(U32FunctionPointerScriptRunner)0,
		(U32FunctionPointerScriptRunner)&GetRandomValue
};
RODATA_LOCATION ALIGN(4) u8* BattleScriptRunner::errorScript = NULL;

BattleScriptRunner::BattleScriptRunner(u8* script) : ScriptRunner(script, (U32FunctionPointerScriptRunner*)&battleCommands)
{
	if (!script)
	{
		scriptPointer = errorScript;
	}
	// TODO Auto-generated constructor stub
}

BattleScriptRunner::~BattleScriptRunner()
{
	// TODO Auto-generated destructor stub
}

