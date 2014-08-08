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

#define FALSE 0
#define TRUE 1

#define AdditionalDefrosting TRUE
#define AdditionalBurnCuring TRUE

#define DPSS 0
#define ORIGINAL 1

#define DAMAGECALCMODE DPSS

u8 CheckForMoveCancellingStatuses()
{
	battleDataPointer[0].moveIndex = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]].moves[battleDataPointer[0].moveSelections[battleDataPointer[0].battleBanks[User]]];
	u32 userBank = battleDataPointer[0].battleBanks[User];
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[userBank];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	MoveData* moveInfo = &moveData[battleDataPointer[0].moveIndex];
	if (moveInfo[0].effectID == Effects_Judgement && attacker[0].heldItem >= Item_Fighting_Plate && attacker[0].heldItem <= Item_Fairy_Plate)
	{
		battleDataPointer[0].flags.moveTypeOverride = 1;
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = attacker[0].heldItem - Item_Fighting_Plate - 1;
	}
	else if (moveInfo[0].effectID == Effects_Weather_Ball)
	{
		if (battleDataPointer[0].weatherBits.sunny)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Fire;
		}
		else if (battleDataPointer[0].weatherBits.hail || battleDataPointer[0].weatherBits.snow)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Ice;
		}
		else if (battleDataPointer[0].weatherBits.rain)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Water;
		}
		else if (battleDataPointer[0].weatherBits.sandstorm)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Rock;
		}
	}
	else if (attacker[0].ability == Normalise)
	{
		battleDataPointer[0].flags.moveTypeOverride = 1;
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Normal;
	}
	else if (moveInfo[0].type == Type_Normal)
	{
		if (attacker[0].ability == Aerilate)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Flying;
		}
		else if (attacker[0].ability == Pixilate)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Fairy;
		}
		else if (attacker[0].ability == Refrigerate)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Ice;
		}
	}
	if (attacker[0].primaryStatus > 0 && attacker[0].primaryStatus < Frozen)
	{
		attacker[0].primaryStatus--;
		if (attacker[0].primaryStatus == 0)
		{
			returnBattleScriptPointer = battleScriptPointer;
			battleScriptPointer = (u8*)&Script_Wake_Up;
			return NotEnded;
		}
	}
	else if (attacker[0].primaryStatus == Frozen)
	{
		u32 rand = GetDelimitedRandom32BitValue(100);
#if AdditionalDefrosting == TRUE
		// 50% chance if sunny, 10% chance if hail / diamond dust and 20% chance otherwise
		u32 value = ((battleDataPointer[0].weatherBits.sunny) ? 50 : ((battleDataPointer[0].weatherBits.hail || battleDataPointer[0].weatherBits.snow) ? 10 : 20));
#else
		// Flat 20% chance
		u32 value = 20;
#endif
		if (rand < value)
		{
			returnBattleScriptPointer = battleScriptPointer;
			battleScriptPointer = (u8*)&Script_Unfreeze;
			return NotEnded;
		}
	}
	else if (attacker[0].primaryStatus == Paralysed)
	{
		u32 rand = GetDelimitedRandom32BitValue(100);
		if (rand < 25)
		{
			battleScriptPointer = (u8*)&Script_Fully_Paralysed;
			return NotEnded;
		}
	}
#if AdditionalBurnCuring == TRUE
	else if (attacker[0].primaryStatus == Burned)
	{
		// 50% chance of curing if snowing, 20% chance if raining and 0% chance otherwise
		u32 rand = GetDelimitedRandom32BitValue(100);
		u32 value = ((battleDataPointer[0].weatherBits.snow) ? 50 : ((battleDataPointer[0].weatherBits.rain) ? 20 : 0));
		if (rand < value)
		{
			returnBattleScriptPointer = battleScriptPointer;
			battleScriptPointer = (u8*)&Script_Cure_Burn;
			return NotEnded;
		}
	}
#endif
	if (moveInfo[0].effectID != Effects_Hits_Through_Protect)
	{
		if (defender[0].battleStatusFlags.protected)
		{
			battleScriptPointer = (u8*)&Script_Protect_Triggered;
			return NotEnded;
		}
		if (defender[0].battleStatusFlags.highPriorityProtected && moveInfo[0].priority > 0)
		{
			battleScriptPointer = (u8*)&Script_Quick_Guard_Triggered;
			return NotEnded;
		}
		if (defender[0].battleStatusFlags.wideGuardProtected && moveInfo[0].targets != 50)
		{
			battleScriptPointer = (u8*)&Script_Wide_Guard_Triggered;
			return NotEnded;
		}
		if (defender[0].battleStatusFlags.craftyShieldProtected && moveInfo[0].effectID != Effect_Perish_Song && moveInfo[0].category == Category_Status)
		{
			battleScriptPointer = (u8*)&Script_Crafty_Shield_Triggered;
			return NotEnded;
		}
	}
	battleScriptPointer++;
	return NotEnded;
}

const RODATA_LOCATION u16 evasionAccuracyChart[] = {
		34,
		38,
		43,
		50,
		60,
		75,
		100,
		134,
		167,
		200,
		234,
		267,
		300
};

u8 HitMissCalculation()
{
	u32 userBank = battleDataPointer[0].battleBanks[User];
	u32 defenderBank = battleDataPointer[0].battleBanks[Target];
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[userBank];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[defenderBank];
	MoveData* moveInfo = &moveData[battleDataPointer[0].moveIndex];
	u32 accuracy = moveInfo[0].accuracy;
	if (accuracy != 0)
	{
		accuracy *= evasionAccuracyChart[attacker[0].statLevels[Accuracy]];
		if (moveInfo[0].effectID == Effect_Sacred_Sword)
		{
			accuracy = UnsignedDivide(accuracy, 100);
		}
		else
		{
			accuracy = UnsignedDivide(accuracy, evasionAccuracyChart[attacker[0].statLevels[Evasion]]);
		}
		if (GetDelimitedRandom32BitValue(100) >= accuracy)
		{
			battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
			return NotEnded;
		}
	}
	battleScriptPointer += 5;
	return NotEnded;
}

u8 DecrementPP()
{
	u32 userBank = battleDataPointer[0].battleBanks[User];
	u32 defenderBank = battleDataPointer[0].battleBanks[Target];
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[userBank];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[defenderBank];
	u32 moveIndex = battleDataPointer[0].moveSelections[userBank];
	u32 ppValue = battleDataPointer[0].pokemonStats[userBank].pp[moveIndex];
	if (defender[0].ability == Pressure)
	{
		if (ppValue < 2)
		{
			ppValue = 0;
		}
		else
		{
			ppValue -= 2;
		}
	}
	else
	{
		if (ppValue > 0)
		{
			ppValue--;
		}
	}
	battleDataPointer[0].pokemonStats[userBank].pp[moveIndex] = ppValue;
	Pokemon* thePokemon;
	if (userBank & 1)
	{
		thePokemon = (Pokemon*)&enemyPokemon[battleDataPointer[0].conversionIndices[userBank]];
	}
	else
	{
		thePokemon = (Pokemon*)&partyPokemon[battleDataPointer[0].conversionIndices[userBank]];
	}
	PokemonEncrypter(thePokemon, Move1PP + moveIndex, ppValue);
	battleScriptPointer++;
	return NotEnded;
}

u32 ApplyTypeBasedModifiers(u32 currentDamage, u32 moveType, PokemonBattleData* defender)
{
	u32 defenderType1 = defender[0].type1;
	u32 defenderType2 = defender[0].type2;
	if (currentDamage != 0)
	{
		if (moveType > 18)
		{
			moveType = 0;
		}
		if (defenderType1 > 18)
		{
			defenderType1 = 0;
		}
		if (defenderType2 > 18)
		{
			defenderType2 = 0;
		}
		u32 typeValue = typeStrengths[moveType][defenderType1];
		u32 currentEffectiveness = NoEffect;
		switch (typeValue)
		{
			case 50:
				currentEffectiveness = HalfDamage;
				break;
			case 100:
				currentEffectiveness = NormalDamage;
				break;
			case 200:
				currentEffectiveness = DoubleDamage;
				break;
		}
		currentDamage = UnsignedFractionalMultiplication(currentDamage, typeValue);
		if (defenderType2 != defenderType1 && currentDamage != 0)
		{
			u32 typeValue = typeStrengths[moveType][defenderType2];
			currentDamage = UnsignedFractionalMultiplication(currentDamage, typeValue);
			switch (typeValue)
			{
				case 0:
					currentEffectiveness = NoEffect;
					break;
				case 50:
					switch (currentEffectiveness)
					{
						case 50:
							currentEffectiveness = QuarterDamage;
							break;
						case 100:
							currentEffectiveness = HalfDamage;
							break;
						case 200:
							currentEffectiveness = NormalDamage;
							break;
					}
					break;
				case 100:
					switch (currentEffectiveness)
					{
						case 50:
							currentEffectiveness = HalfDamage;
							break;
						case 100:
							currentEffectiveness = NormalDamage;
							break;
						case 200:
							currentEffectiveness = DoubleDamage;
							break;
					}
					break;
				case 200:
					switch (currentEffectiveness)
					{
						case 50:
							currentEffectiveness = NormalDamage;
							break;
						case 100:
							currentEffectiveness = DoubleDamage;
							break;
						case 200:
							currentEffectiveness = QuadrupleDamage;
							break;
					}
					break;
			}
		}
		battleDataPointer[0].flags.attackEffectiveness = currentEffectiveness;
	}
	return currentDamage;
}

u32 SetCriticalHitFlagsAndValues(u32 currentDamage, u8 attackerAbility)
{
	battleDataPointer[0].flags.criticalHitFlag = 1;
	if (attackerAbility == Sniper)
	{
		currentDamage *= 3;
	}
	else
	{
		currentDamage <<= 1;
	}
	return currentDamage;
}

const RODATA_LOCATION u8 criticalHitLikelihoods[] = {
		7,
		13,
		25,
		34,
		50,
		70,
		100
};

u32 ApplyCriticalHitModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender)
{
	battleDataPointer[0].flags.criticalHitFlag = 0;
	u8 defenderAbility = defender[0].ability;
	if (defenderAbility != Battle_Armour && defenderAbility != Shell_Armour)
	{
		u8 attackerAbility = attacker[0].ability;
		u32 counter = 0;
		if (attacker[0].battleStatusFlags.usedCritEnhancingMove)
		{
			counter++;
			attacker[0].battleStatusFlags.usedCritEnhancingMove = 0;
		}
		if (attackerAbility != Klutz)
		{
			u16 item = attacker[0].heldItem;
			u16 species = attacker[0].species;
			if (item == Item_Razor_Claw || item == Item_Scope_Lens)
			{
				counter++;
			}
			else if (item == Item_Stick && species == Farfetchd)
			{
				counter += 2;
			}
			else if (item == Item_Lucky_Punch && species == Chansey)
			{
				counter += 2;
			}
		}
		if (attackerAbility == Super_Luck)
		{
			counter++;
		}
		if (attacker[0].battleStatusFlags.focusEnergyInEffect)
		{
			counter += 2;
		}
		else if (attacker[0].battleStatusFlags.direHitInEffect)
		{
			counter++;
		}
		u32 rand = GetDelimitedRandom32BitValue(100);
		if (counter > 6)
		{
			counter = 6;
		}
		if (rand < criticalHitLikelihoods[counter])
		{
			currentDamage = SetCriticalHitFlagsAndValues(currentDamage, attackerAbility);
		}
	}
	return currentDamage;
}

u32 ApplyItemModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender)
{
	if (attacker[0].ability != Klutz)
	{
		// Do stuff
	}
	return currentDamage;
}

#define SelfDestructing 0x7F

u32 ApplyAbilityModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo)
{
	battleDataPointer[0].battleFlags &= 31;
	u32 moveType = moveInfo[0].type;
	if (battleDataPointer[0].flags.moveTypeOverride)
	{
		moveType = battleDataPointer[0].battleBanks[MoveTypeOverrideValue];
	}
	u8 attackerAbility = attacker[0].ability;
	u8 defenderAbility = defender[0].ability;
	if (attackerAbility != Mould_Breaker && attackerAbility != Teravolt && attackerAbility != Turboblaze)
	{
		switch (defenderAbility)
		{
			case Wonder_Guard:
				if (battleDataPointer[0].flags.attackEffectiveness < DoubleDamage)
				{
					battleDataPointer[0].flags.attackEffectiveness = 0;
					battleDataPointer[0].flags.wonderGuardTriggered = 1;
					currentDamage = 0;
				}
				break;
			case Damp:
				if (moveInfo[0].effectID == SelfDestructing)
				{
					battleDataPointer[0].flags.attackEffectiveness = 0;
					battleDataPointer[0].flags.dampTriggered = 1;
					currentDamage = 0;
				}
				break;
			case Volt_Absorb:
				if (moveType == Type_Electric)
				{
					battleDataPointer[0].flags.attackEffectiveness = 7;
					battleDataPointer[0].flags.voltAbsorbTriggered = 1;
				}
				break;
			case Water_Absorb:
				if (moveType == Type_Water)
				{
					battleDataPointer[0].flags.attackEffectiveness = 7;
					battleDataPointer[0].flags.waterAbsorbTriggered = 1;
				}
				break;
			case Sap_Sipper:
				if (moveType == Type_Grass)
				{
					battleDataPointer[0].flags.attackEffectiveness = 0;
					battleDataPointer[0].flags.sapSipperTriggered = 1;
					currentDamage = 0;
				}
				break;
			case Levitate:
				if (moveType == Type_Ground)
				{
					battleDataPointer[0].flags.attackEffectiveness = 0;
					battleDataPointer[0].flags.levitateTriggered = 1;
					currentDamage = 0;
				}
				break;
		}
	}
	if (attacker[0].currentHP <= UnsignedDivide(attacker[0].maximumHP, 3))
	{
		u32 multiply = false;
		switch (attackerAbility)
		{
			case Overgrow:
				if (moveType == Type_Grass)
				{
					multiply = true;
				}
				break;
			case Blaze:
				if (moveType == Type_Fire)
				{
					multiply = true;
				}
				break;
			case Torrent:
				if (moveType == Type_Water)
				{
					multiply = true;
				}
				break;
			case Swarm:
				if (moveType == Type_Bug)
				{
					multiply = true;
				}
				break;
		}
		if (multiply == true)
		{
			currentDamage = UnsignedFractionalMultiplication(currentDamage, 150);
		}
	}
	return currentDamage;
}

u8 CalculateDamage()
{
	u16 moveID = battleDataPointer[0].moveIndex;
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	u32 attackerIndex;
	u32 defenderIndex;
	MoveData* moveInfo = &moveData[moveID];
	{
#if DAMAGECALCMODE == DPSS
		u32 category = moveInfo[0].category;
		if (category == Category_Status)
		{
			battleDataPointer[0].battleDamage = 0;
			battleScriptPointer++;
			return NotEnded;
		}
		if (moveInfo[0].category == Category_Physical)
		{
			attackerIndex = BattleAttack;
			defenderIndex = BattleDefence;
		}
		else
		{
			attackerIndex = BattleSpecialAttack;
			if (moveInfo[0].effectID == Effects_Special_Physical)
			{
				defenderIndex = BattleDefence;
			}
			else
			{
				defenderIndex = BattleSpecialDefence;
			}
		}
#else
		u32 moveType = moveInfo[0].type;
		if (moveType < Type_Fire)
		{
			attackerIndex = BattleAttack;
			defenderIndex = BattleDefence;
		}
		else
		{
			attackerIndex = BattleSpecialAttack;
			defenderIndex = BattleSpecialDefence;
		}
#endif
	}
	u32 damage = attacker[0].level << 1;
	damage += 10;
	if (defender[0].ability == Unaware)
	{
		damage *= attacker[0].stats[attackerIndex];
	}
	else
	{
		damage *= attacker[0].effectiveStats[attackerIndex];
	}
	{
		u32 defenderValue;
		if (attacker[0].ability == Unaware)
		{
			defenderValue = defender[0].stats[defenderIndex];
		}
		else
		{
			defenderValue = defender[0].effectiveStats[defenderIndex];
		}
		damage = UnsignedDivide(damage, 250 * defenderValue);
	}
	damage *= moveInfo[0].basePower;
	damage += 2;
	{
		u32 type = moveInfo[0].type;
		if (battleDataPointer[0].flags.moveTypeOverride)
		{
			type = battleDataPointer[0].battleBanks[MoveTypeOverrideValue];
		}
		if (type == attacker[0].type1 || type == attacker[0].type2)
		{
			damage = UnsignedFractionalMultiplication(damage, 150);
		}
		damage = ApplyTypeBasedModifiers(damage, type, defender);
	}
	damage = ApplyCriticalHitModifiers(damage, attacker, defender);
	damage = ApplyItemModifiers(damage, attacker, defender);
	damage = ApplyAbilityModifiers(damage, attacker, defender, moveInfo);
	damage = UnsignedFractionalMultiplication(damage, GetDelimitedRandom32BitValue(0x10) + 85);
	damage = UnsignedFractionalMultiplication(damage, battleDataPointer[0].battleDamageMultiplier);
	if (damage == 0 && battleDataPointer[0].flags.attackEffectiveness != 0)
	{
		damage = 1;
	}
	battleDataPointer[0].battleDamage = damage;
	battleScriptPointer++;
}
