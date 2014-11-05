/*
 * BattleScriptCommands.h
 *
 *  Created on: 8 Aug 2014
 *      Author: Jamie
 */

#ifndef BATTLESCRIPTCOMMANDS_H_
#define BATTLESCRIPTCOMMANDS_H_

void SetupBattleScriptCall(u8* newPointer, u32 commandLength);
void RecalculateEffectiveStat(PokemonBattleData* data, u32 statIndex);
void RecalculateAllEffectiveStats(PokemonBattleData* dataLocation);
void SetTilesForTextRender();
u32 CheckForAbilityInBattle(u32 abilityID, u32 side);
u32 CanItemBeUsed(PokemonBattleData* attacker, PokemonBattleData* defender);
u32 CanKnockItemOff(PokemonBattleData* defender, u32 ignoreAbilities);
u32 GetItemEffect(u16 itemID);
u32 GetSecondaryItemEffect(u16 itemID);
u8 CheckForMoveCancellingStatuses();
u8 HitMissCalculation();
u8 PokemonUsedMessage();
u8 DecrementPP();
u32 ApplyWeatherBasedModifiers(u32 currentDamage, u32 moveType);
u32 ApplyTypeBasedModifiers(u32 currentDamage, u32 moveType, PokemonBattleData* defender);
u32 SetCriticalHitFlagsAndValues(u32 currentDamage, u8 attackerAbility);
u32 ApplyCriticalHitModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender);
u32 ApplyAbilityModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo);
u32 ApplyBasePowerModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo);
u32 GetMoveBasePowerFromData(PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo);
u8 CalculateDamage();
u8 StoreByte();
u8 StoreHalfWord();
u8 StoreWord();
u32 BattleComparisonRoutine(u32 value1, u32 value2, u32 comparisonMode);
u32 BattlePokemonHasType(PokemonBattleData* data, u32 type);
u8 JumpIf();
u8 SetMovePrimaryEffect();
u8 SetMoveSecondaryEffect();
u8 ExecuteMoveAnimation();
u8 WaitMoveAnimation();
u8 ExecuteDamageReceptionAnimation();
u8 ApplyCalculatedDamage();
u8 UpdateHPBar();
u8 FaintIfNecessary();
u8 ApplyMoveEffects();
u8 SetBattleStatusFlag();
u8 ClearBattleStatusFlag();
u8 GotoJump();
u8 CallJump();
u8 ReturnFromCall();
u8 PauseBattleScript();
u8 PauseBattleScriptIfTextRendering();
u8 EndTurn();
u8 EndScript();
u8 PrintCriticalHitMessage();
u8 PrintEffectivenessMessage();
u8 PrintMessageByPointer();
u8 PrintMessageByID();
u8 PlayBattleEndFanfare();
u8 PrintFaintMessage();
u8 WaitKeyPressTextBattle();
u8 CalculateExperience();
u8 PrintExperienceMessage();
u8 PrintTrainerVictoryMessage();
u8 PrintTrainerAfterMessage();
u8 CalculateTrainerWinnings();
u8 PrintTrainerCashGainMessage();
u8 CalculatePickupWinnings();
u8 PrintPayDayCashGainMessage();
u8 PrintMumCashGainMessage();
u8 PrintItemEffectMessage();
u8 CalculateFleeResult();
u8 PrintCallEffectMessage();
u8 PrintFleeEffectMessage();

#endif /* BATTLESCRIPTCOMMANDS_H_ */
