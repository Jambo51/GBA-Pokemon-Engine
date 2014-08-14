/*
 * BattleScriptCommands.h
 *
 *  Created on: 8 Aug 2014
 *      Author: Jamie
 */

#ifndef BATTLESCRIPTCOMMANDS_H_
#define BATTLESCRIPTCOMMANDS_H_

/*
 * BattleScriptCommands.c
 *
 *  Created on: 8 Aug 2014
 *      Author: Jamie
 */

#include "Data\GlobalDefinitions.h"
#include "Data\MemoryLocations.h"
#include "Data\PokemonBaseData.h"
#include "Functions\LoadUnalignedCode.h"
#include "Functions\Pokemon.h"
#include "Functions\Maths.h"
#include "libbattlescripts.h"

void SetupBattleScriptCall(u8* newPointer, u32 commandLength);
void RecalculateEffectiveStat(PokemonBattleData* data, u32 statIndex);
void RecalculateAllEffectiveStats(PokemonBattleData* dataLocation);
u8 CheckForMoveCancellingStatuses();
u8 HitMissCalculation();
u8 DecrementPP();
u32 ApplyTypeBasedModifiers(u32 currentDamage, u32 moveType, PokemonBattleData* defender);
u32 SetCriticalHitFlagsAndValues(u32 currentDamage, u8 attackerAbility);
u32 ApplyCriticalHitModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender);
u32 ApplyItemModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender);
u32 ApplyAbilityModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo);
u8 CalculateDamage();
u8 StoreByte();
u8 StoreHalfWord();
u8 StoreWord();
u32 ComparisonRoutine(u32 value1, u32 value2, u32 comparisonMode);
u32 CheckForAbilityInBattle(u32 abilityID, u32 side);
u32 PokemonHasType(PokemonBattleData* data, u32 type);
u8 JumpIf();
u8 SetMovePrimaryEffect();
u8 SetMoveSecondaryEffect();
u8 ExecuteMoveAnimation();
u8 WaitMoveAnimation();
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
