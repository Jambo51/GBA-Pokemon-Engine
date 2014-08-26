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
u8 UpdateCounters();
u8 EndScript();

#endif /* BATTLESCRIPTCOMMANDS_H_ */
