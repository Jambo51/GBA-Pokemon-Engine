/*
 * BattleScriptCommands.h
 *
 *  Created on: 8 Aug 2014
 *      Author: Jamie
 */

#ifndef BATTLESCRIPTCOMMANDS_H_
#define BATTLESCRIPTCOMMANDS_H_

u32 CheckForMoveCancellingStatuses(ScriptRunner* runner);
u32 HitMissCalculation(ScriptRunner* runner);
u32 PokemonUsedMessage(ScriptRunner* runner);
u32 DecrementPP(ScriptRunner* runner);
u32 CalculateDamage(ScriptRunner* runner);
u32 StoreByte(ScriptRunner* runner);
u32 StoreHalfWord(ScriptRunner* runner);
u32 StoreWord(ScriptRunner* runner);
u32 JumpIf(ScriptRunner* runner);
u32 SetMovePrimaryEffect(ScriptRunner* runner);
u32 SetMoveSecondaryEffect(ScriptRunner* runner);
u32 ExecuteMoveAnimation(ScriptRunner* runner);
u32 WaitMoveAnimation(ScriptRunner* runner);
u32 ExecuteDamageReceptionAnimation(ScriptRunner* runner);
u32 ApplyCalculatedDamage(ScriptRunner* runner);
u32 UpdateHPBar(ScriptRunner* runner);
u32 FaintIfNecessary(ScriptRunner* runner);
u32 CalculateExperience(ScriptRunner* runner);
u32 ApplyEVs(ScriptRunner* runner);
u32 ApplyMoveEffects(ScriptRunner* runner);
u32 SetBattleStatusFlag(ScriptRunner* runner);
u32 ClearBattleStatusFlag(ScriptRunner* runner);
u32 GotoJump(ScriptRunner* runner);
u32 CallJump(ScriptRunner* runner);
u32 ReturnFromCall(ScriptRunner* runner);
u32 PauseBattleScript(ScriptRunner* runner);
u32 PauseBattleScriptIfTextRendering(ScriptRunner* runner);
u32 EndTurn(ScriptRunner* runner);
u32 EndScript(ScriptRunner* runner);
u32 PrintCriticalHitMessage(ScriptRunner* runner);
u32 PrintEffectivenessMessage(ScriptRunner* runner);
u32 PrintMessageByPointer(ScriptRunner* runner);
u32 PrintMessageByID(ScriptRunner* runner);
u32 PlayBattleEndFanfare(ScriptRunner* runner);
u32 PrintFaintMessage(ScriptRunner* runner);
u32 PrintExperienceMessage(ScriptRunner* runner);
u32 WaitKeyPressTextBattle(ScriptRunner* runner);
u32 PrintTrainerVictoryMessage(ScriptRunner* runner);
u32 PrintTrainerAfterMessage(ScriptRunner* runner);
u32 CalculateTrainerWinnings(ScriptRunner* runner);
u32 PrintTrainerCashGainMessage(ScriptRunner* runner);
u32 PrintMumCashGainMessage(ScriptRunner* runner);
u32 CalculatePickupWinnings(ScriptRunner* runner);
u32 PrintPayDayCashGainMessage(ScriptRunner* runner);
u32 PrintItemEffectMessage(ScriptRunner* runner);
u32 CalculateFleeResult(ScriptRunner* runner);
u32 PrintCallEffectMessage(ScriptRunner* runner);
u32 PrintFleeEffectMessage(ScriptRunner* runner);
u32 IncrementLoopCounter(ScriptRunner* runner);
u32 SetLoopCounter(ScriptRunner* runner);
u32 CopyLoopCounterTo(ScriptRunner* runner);
u32 SetBattleDamageMultiplier(ScriptRunner* runner);
u32 SetSecondaryStatus(ScriptRunner* runner);
u32 SetSpecialBattleStatus(ScriptRunner* runner);
u32 IncrementGeneralCounter(ScriptRunner* runner);
u32 SetGeneralCounter(ScriptRunner* runner);
u32 GetRandomValue(ScriptRunner* runner);

#endif /* BATTLESCRIPTCOMMANDS_H_ */
