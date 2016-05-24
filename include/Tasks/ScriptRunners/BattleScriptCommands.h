/*
 * BattleScriptCommands.h
 *
 *  Created on: 8 Aug 2014
 *      Author: Jamie
 */

#ifndef BATTLESCRIPTCOMMANDS_H_
#define BATTLESCRIPTCOMMANDS_H_

u32 CheckForMoveCancellingStatuses(Tasks::ScriptRunners::ScriptRunner* runner);
u32 HitMissCalculation(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PokemonUsedMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 DecrementPP(Tasks::ScriptRunners::ScriptRunner* runner);
u32 CalculateDamage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 StoreByte(Tasks::ScriptRunners::ScriptRunner* runner);
u32 StoreHalfWord(Tasks::ScriptRunners::ScriptRunner* runner);
u32 StoreWord(Tasks::ScriptRunners::ScriptRunner* runner);
u32 JumpIf(Tasks::ScriptRunners::ScriptRunner* runner);
u32 SetMovePrimaryEffect(Tasks::ScriptRunners::ScriptRunner* runner);
u32 SetMoveSecondaryEffect(Tasks::ScriptRunners::ScriptRunner* runner);
u32 ExecuteMoveAnimation(Tasks::ScriptRunners::ScriptRunner* runner);
u32 WaitMoveAnimation(Tasks::ScriptRunners::ScriptRunner* runner);
u32 ExecuteDamageReceptionAnimation(Tasks::ScriptRunners::ScriptRunner* runner);
u32 ApplyCalculatedDamage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 UpdateHPBar(Tasks::ScriptRunners::ScriptRunner* runner);
u32 FaintIfNecessary(Tasks::ScriptRunners::ScriptRunner* runner);
u32 CalculateExperience(Tasks::ScriptRunners::ScriptRunner* runner);
u32 ApplyEVs(Tasks::ScriptRunners::ScriptRunner* runner);
u32 ApplyMoveEffects(Tasks::ScriptRunners::ScriptRunner* runner);
u32 SetBattleStatusFlag(Tasks::ScriptRunners::ScriptRunner* runner);
u32 ClearBattleStatusFlag(Tasks::ScriptRunners::ScriptRunner* runner);
u32 GotoJump(Tasks::ScriptRunners::ScriptRunner* runner);
u32 CallJump(Tasks::ScriptRunners::ScriptRunner* runner);
u32 ReturnFromCall(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PauseBattleScript(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PauseBattleScriptIfTextRendering(Tasks::ScriptRunners::ScriptRunner* runner);
u32 EndTurn(Tasks::ScriptRunners::ScriptRunner* runner);
u32 EndScript(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintCriticalHitMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintEffectivenessMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintMessageByPointer(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintMessageByID(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PlayBattleEndFanfare(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintFaintMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintExperienceMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 WaitKeyPressTextBattle(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintTrainerVictoryMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintTrainerAfterMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 CalculateTrainerWinnings(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintTrainerCashGainMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintMumCashGainMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 CalculatePickupWinnings(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintPayDayCashGainMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintItemEffectMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 CalculateFleeResult(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintCallEffectMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 PrintFleeEffectMessage(Tasks::ScriptRunners::ScriptRunner* runner);
u32 IncrementLoopCounter(Tasks::ScriptRunners::ScriptRunner* runner);
u32 SetLoopCounter(Tasks::ScriptRunners::ScriptRunner* runner);
u32 SetBattleDamageMultiplier(Tasks::ScriptRunners::ScriptRunner* runner);
u32 SetSecondaryStatus(Tasks::ScriptRunners::ScriptRunner* runner);
u32 SetSpecialBattleStatus(Tasks::ScriptRunners::ScriptRunner* runner);
u32 GetRandomValue(Tasks::ScriptRunners::ScriptRunner* runner);

#endif /* BATTLESCRIPTCOMMANDS_H_ */
