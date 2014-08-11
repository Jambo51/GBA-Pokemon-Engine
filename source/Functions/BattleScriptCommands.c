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

#define FALSE 0
#define TRUE 1

#define AdditionalDefrosting TRUE
#define AdditionalBurnCuring TRUE

#define DPSS 0
#define ORIGINAL 1

#define DAMAGECALCMODE DPSS

const ALIGN(1) u8 typeStrengths[18][18] = { { 100, 100, 100, 100, 100, 50, 100, 0, 50, 100, 100, 100, 100, 100, 100, 100, 100, 100 },
		{ 200, 100, 50, 50, 100, 200, 50, 0, 200, 100, 100, 100, 100, 50, 200, 100, 200, 50 },
		{ 100, 200, 100, 100, 100, 50, 200, 100, 50, 100, 100, 200, 50, 100, 100, 100, 100, 100 },
		{ 100, 100, 100, 50, 100, 50, 100, 50, 0, 100, 100, 200, 100, 100, 100, 100, 100, 200 },
		{ 100, 100, 0, 200, 100, 200, 50, 100, 200, 200, 100, 50, 200, 100, 100, 100, 100, 100 },
		{ 100, 50, 200, 100, 50, 100, 200, 100, 50, 200, 100, 100, 100, 100, 200, 100, 100, 100 },
		{ 100, 50, 50, 50, 100, 100, 100, 50, 50, 50, 100, 200, 100, 200, 100, 100, 200, 50 },
		{ 0, 100, 100, 100, 100, 100, 100, 200, 50, 100, 100, 100, 100, 200, 100, 100, 200, 100 },
		{ 100, 100, 100, 100, 100, 200, 100, 100, 50, 50, 50, 100, 100, 100, 200, 100, 100, 200 },
		{ 100, 100, 100, 100, 100, 50, 200, 100, 200, 50, 50, 200, 100, 100, 200, 50, 100, 100 },
		{ 100, 100, 100, 100, 200, 200, 100, 100, 100, 200, 50, 50, 100, 100, 100, 50, 100, 100 },
		{ 100, 100, 50, 50, 200, 200, 50, 100, 50, 50, 200, 50, 100, 100, 100, 50, 100, 100 },
		{ 100, 100, 200, 100, 0, 100, 100, 100, 100, 100, 200, 50, 50, 100, 100, 50, 100, 100 },
		{ 100, 200, 100, 200, 100, 100, 100, 100, 50, 100, 100, 100, 100, 50, 100, 100, 0, 100 },
		{ 100, 100, 200, 100, 200, 100, 100, 100, 50, 50, 50, 200, 100, 100, 50, 200, 100, 100 },
		{ 100, 100, 100, 100, 100, 100, 100, 100, 50, 100, 100, 100, 100, 100, 100, 200, 100, 0 },
		{ 100, 50, 100, 100, 100, 100, 100, 200, 50, 100, 100, 100, 100, 200, 100, 100, 50, 50 },
		{ 100, 200, 100, 50, 100, 100, 100, 100, 50, 50, 100, 100, 100, 100, 100, 200, 200, 100 }
};

const ALIGN(1) u8 criticalHitLikelihoods[] = {
		7,
		13,
		25,
		34,
		50,
		70,
		100
};

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
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = attacker[0].heldItem - Item_Fighting_Plate + 1;
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
	if (attacker[0].primaryStatusBits.sleepTurns > 0)
	{
		if (attacker[0].ability == Early_Bird && attacker[0].primaryStatusBits.sleepTurns > 1)
		{
			attacker[0].primaryStatusBits.sleepTurns -= 2;
		}
		else
		{
			attacker[0].primaryStatusBits.sleepTurns--;
		}
		if (attacker[0].primaryStatusBits.sleepTurns == 0)
		{
			returnBattleScriptPointer = battleScriptPointer + 1;
			battleScriptPointer = (u8*)&Script_Wake_Up;
			return NotEnded;
		}
	}
	else if (attacker[0].primaryStatusBits.frozen)
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
			returnBattleScriptPointer = battleScriptPointer + 1;
			battleScriptPointer = (u8*)&Script_Unfreeze;
			return NotEnded;
		}
	}
	else if (attacker[0].primaryStatusBits.paralysed)
	{
		u32 rand = GetDelimitedRandom32BitValue(100);
		if (rand < 25)
		{
			battleScriptPointer = (u8*)&Script_Fully_Paralysed;
			return NotEnded;
		}
	}
#if AdditionalBurnCuring == TRUE
	else if (attacker[0].primaryStatusBits.burned)
	{
		// 50% chance of curing if snowing, 20% chance if raining and 0% chance otherwise
		u32 rand = GetDelimitedRandom32BitValue(100);
		u32 value = ((battleDataPointer[0].weatherBits.snow) ? 50 : ((battleDataPointer[0].weatherBits.rain) ? 20 : 0));
		if (rand < value)
		{
			returnBattleScriptPointer = battleScriptPointer + 1;
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
		if (defender[0].battleStatusFlags.craftyShieldProtected && moveInfo[0].effectID != Effects_Perish_Song && moveInfo[0].category == Category_Status)
		{
			battleScriptPointer = (u8*)&Script_Crafty_Shield_Triggered;
			return NotEnded;
		}
	}
	battleScriptPointer++;
	return NotEnded;
}

const u16 evasionAccuracyChart[] = {
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
		if (moveInfo[0].effectID == Effects_Sacred_Sword)
		{
			accuracy = UnsignedDivide(accuracy, 100);
		}
		else
		{
			accuracy = UnsignedDivide(accuracy, evasionAccuracyChart[defender[0].statLevels[Evasion]]);
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
	if (defender[0].ability == Pressure && ppValue > 1)
	{
		ppValue -= 2;
	}
	else
	{
		ppValue--;
	}
	attacker[0].pp[moveIndex] = ppValue;
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
						case HalfDamage:
							currentEffectiveness = QuarterDamage;
							break;
						case NormalDamage:
							currentEffectiveness = HalfDamage;
							break;
						case DoubleDamage:
							currentEffectiveness = NormalDamage;
							break;
					}
					break;
				case 200:
					switch (currentEffectiveness)
					{
						case HalfDamage:
							currentEffectiveness = NormalDamage;
							break;
						case NormalDamage:
							currentEffectiveness = DoubleDamage;
							break;
						case DoubleDamage:
							currentEffectiveness = QuadrupleDamage;
							break;
					}
					break;
			}
		}
		u32 defenderType3 = defender[0].type3;
		if ((currentDamage != 0) && defender[0].battleStatusFlags.tertiaryTypeActive && (defenderType1 != defenderType3))
		{
			u32 typeValue = typeStrengths[moveType][defenderType3];
			currentDamage = UnsignedFractionalMultiplication(currentDamage, typeValue);

			switch (typeValue)
			{
				case 0:
					currentEffectiveness = NoEffect;
					break;
				case 50:
					switch (currentEffectiveness)
					{
						case QuarterDamage:
							currentEffectiveness = EighthDamage;
							break;
						case HalfDamage:
							currentEffectiveness = QuarterDamage;
							break;
						case NormalDamage:
							currentEffectiveness = HalfDamage;
							break;
						case DoubleDamage:
							currentEffectiveness = NormalDamage;
							break;
						case QuadrupleDamage:
							currentEffectiveness = DoubleDamage;
							break;
					}
					break;
				case 200:
					switch (currentEffectiveness)
					{
						case QuarterDamage:
							currentEffectiveness = HalfDamage;
							break;
						case HalfDamage:
							currentEffectiveness = NormalDamage;
							break;
						case NormalDamage:
							currentEffectiveness = DoubleDamage;
							break;
						case DoubleDamage:
							currentEffectiveness = QuadrupleDamage;
							break;
						case QuadrupleDamage:
							currentEffectiveness = OctupleDamage;
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
					battleDataPointer[0].flags.attackEffectiveness = NoEffect;
					battleDataPointer[0].flags.wonderGuardTriggered = 1;
					currentDamage = 0;
				}
				break;
			case Damp:
				if (moveInfo[0].effectID == SelfDestructing)
				{
					battleDataPointer[0].flags.attackEffectiveness = NoEffect;
					battleDataPointer[0].flags.dampTriggered = 1;
					currentDamage = 0;
				}
				break;
			case Volt_Absorb:
				if (moveType == Type_Electric)
				{
					battleDataPointer[0].flags.attackEffectiveness = InvertedToHeal;
					battleDataPointer[0].flags.voltAbsorbTriggered = 1;
				}
				break;
			case Water_Absorb:
				if (moveType == Type_Water)
				{
					battleDataPointer[0].flags.attackEffectiveness = InvertedToHeal;
					battleDataPointer[0].flags.waterAbsorbTriggered = 1;
				}
				break;
			case Sap_Sipper:
				if (moveType == Type_Grass)
				{
					battleDataPointer[0].flags.attackEffectiveness = NoEffect;
					battleDataPointer[0].flags.sapSipperTriggered = 1;
					currentDamage = 0;
				}
				break;
			case Levitate:
				if (moveType == Type_Ground)
				{
					battleDataPointer[0].flags.attackEffectiveness = NoEffect;
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
	damage = UnsignedFractionalMultiplication(damage, 20);
	damage += 2;
	damage *= moveInfo[0].basePower;
	{
		u32 value;
		{
			if (defender[0].ability == Unaware)
			{
				value = attacker[0].stats[attackerIndex];
			}
			else
			{
				value = attacker[0].effectiveStats[attackerIndex];
			}
		}
		value = UnsignedFractionalMultiplication(value, 2);
		damage *= value;
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
		damage = UnsignedDivide(damage, defenderValue);
	}
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
	if (damage > 0)
	{
		damage = ApplyCriticalHitModifiers(damage, attacker, defender);
		if (damage > 0)
		{
			damage = ApplyItemModifiers(damage, attacker, defender);
			if (damage > 0)
			{
				damage = ApplyAbilityModifiers(damage, attacker, defender, moveInfo);
				if (damage > 0)
				{
					damage = UnsignedFractionalMultiplication(damage, GetDelimitedRandom32BitValue(0x10) + 85);
					if (damage > 0)
					{
						damage = UnsignedFractionalMultiplication(damage, battleDataPointer[0].battleDamageMultiplier);
					}
				}
			}
		}
	}
	if (damage == 0 && battleDataPointer[0].flags.attackEffectiveness != NoEffect)
	{
		damage = 1;
	}
	battleDataPointer[0].battleDamage = damage;
	battleScriptPointer++;
	return NotEnded;
}

u8 StoreByte()
{
	u8* address = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	if ((address >= 0x02000000 && address < 0x02040000) || (address >= 0x03000000 && address < 0x03008000))
	{
		address[0] = battleScriptPointer[5];
	}
	battleScriptPointer += 6;
	return NotEnded;
}

u8 StoreHalfWord()
{
	u16* address = (u16*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	if (((address >= 0x02000000 && address < 0x02040000) || (address >= 0x03000000 && address < 0x03008000)) && ((address & 1) == 0))
	{
		address[0] = (u16)LoadUnalignedNumber(battleScriptPointer, 5, 2);
	}
	battleScriptPointer += 7;
	return NotEnded;
}

u8 StoreWord()
{
	u32* address = (u32*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	if (((address >= 0x02000000 && address < 0x02040000) || (address >= 0x03000000 && address < 0x03008000)) && ((address & 3) == 0))
	{
		address[0] = (u32)LoadUnalignedNumber(battleScriptPointer, 5, 4);
	}
	battleScriptPointer += 9;
	return NotEnded;
}

u32 ComparisonRoutine(u32 value1, u32 value2, u32 comparisonMode)
{
	switch (comparisonMode)
	{
		case Equals:
			if (value1 == value2)
			{
				return true;
			}
			break;
		case NotEqual:
			if (value1 != value2)
			{
				return true;
			}
			break;
		case LessThan:
			if (value1 < value2)
			{
				return true;
			}
			break;
		case GreaterThan:
			if (value1 > value2)
			{
				return true;
			}
			break;
		case LessThanOrEqual:
			if (value1 <= value2)
			{
				return true;
			}
			break;
		case GreaterThanOrEqual:
			if (value1 >= value2)
			{
				return true;
			}
			break;
		case IfAnyBitsSet:
			if (value1 & value2)
			{
				return true;
			}
			break;
		case IfNoBitsSet:
			if ((value1 & value2) == 0)
			{
				return true;
			}
			break;
	}
	return false;
}

u32 CheckForAbilityInBattle(u32 abilityID, u32 side)
{
	u32 i;
	for (i = 0; i < battleDataPointer[0].numBattlers; i++)
	{
		if (side == 2 || (i & 1) == side)
		{
			u8 ability = battleDataPointer[0].pokemonStats[i].ability;
			if (ComparisonRoutine(ability, abilityID, Equals) == true)
			{
				return true;
			}
		}
	}
	return false;
}

u32 PokemonHasType(PokemonBattleData* data, u32 type)
{
	if (data[0].type1 == type || data[0].type2 == type || (data[0].battleStatusFlags.tertiaryTypeActive && data[0].type3 == type))
	{
		return true;
	}
	return false;
}

u8 JumpIf()
{
	u32 context = battleScriptPointer[1];
	switch (context)
	{
		case JumpIfByte:
		{
			u8* address = (u8*)LoadUnalignedNumber(battleScriptPointer, 2, 4);
			if (ComparisonRoutine(address[0], battleScriptPointer[6], battleScriptPointer[7]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 8, 4);
			}
			else
			{
				battleScriptPointer += 12;
			}
			break;
		}
		case JumpIfHalfWord:
		{
			u8* address = (u8*)LoadUnalignedNumber(battleScriptPointer, 2, 4);
			if (ComparisonRoutine(address[0], LoadUnalignedNumber(battleScriptPointer, 6, 2), battleScriptPointer[8]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 9, 4);
			}
			else
			{
				battleScriptPointer += 13;
			}
			break;
		}
		case JumpIfWord:
		{
			u8* address = (u8*)LoadUnalignedNumber(battleScriptPointer, 2, 4);
			if (ComparisonRoutine(address[0], LoadUnalignedNumber(battleScriptPointer, 6, 4), battleScriptPointer[10]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 11, 4);
			}
			else
			{
				battleScriptPointer += 15;
			}
			break;
		}
		case JumpIfSpecies:
		{
			u16 species = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].species;
			if (ComparisonRoutine(species, LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
			}
			break;
		}
		case JumpIfHeldItem:
		{
			u16 heldItem = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].heldItem;
			if (ComparisonRoutine(heldItem, LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
			}
			break;
		}
		case JumpIfAbility:
		{
			u8 ability = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].ability;
			if (ComparisonRoutine(ability, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
			}
			break;
		}
		case JumpIfStatLevel:
		{
			u8 stat = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].statLevels[battleScriptPointer[3]];
			if (ComparisonRoutine(stat, battleScriptPointer[4], battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
			}
			break;
		}
		case JumpIfStatus:
		{
			u32 status = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].primaryStatus;
			if (ComparisonRoutine(status, LoadUnalignedNumber(battleScriptPointer, 3, 4), battleScriptPointer[7]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 8, 4);
			}
			else
			{
				battleScriptPointer += 12;
			}
			break;
		}
		case JumpIfSecondaryStatus:
		{
			u32 status = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].secondaryStatuses;
			if (ComparisonRoutine(status, LoadUnalignedNumber(battleScriptPointer, 3, 4), battleScriptPointer[7]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 8, 4);
			}
			else
			{
				battleScriptPointer += 12;
			}
			break;
		}
		case JumpIfSpecialStatus:
		{
			u32 status = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].battleFlags;
			if (ComparisonRoutine(status, LoadUnalignedNumber(battleScriptPointer, 3, 4), battleScriptPointer[7]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 8, 4);
			}
			else
			{
				battleScriptPointer += 12;
			}
			break;
		}
		case JumpIfPrimaryType:
		{
			u8 type = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].type1;
			if (ComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
			}
			break;
		}
		case JumpIfSecondaryType:
		{
			u8 type = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].type2;
			if (ComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
			}
			break;
		}
		case JumpIfTertiaryType:
		{
			u8 type = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].type3;
			if (ComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
			}
			break;
		}
		case JumpIfArray:
		{
			u8* address1 = (u8*)LoadUnalignedNumber(battleScriptPointer, 2, 4);
			u8* address2 = (u8*)LoadUnalignedNumber(battleScriptPointer, 6, 4);
			u32 i;
			u32 length = battleScriptPointer[10];
			u32 mode = battleScriptPointer[11];
			u32 storeAddress = true;
			for (i = 0; i < length; i++)
			{
				storeAddress = ComparisonRoutine(address1[i], address2[i], mode);
				if (storeAddress == false)
				{
					break;
				}
			}
			if (storeAddress == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 12, 4);
			}
			else
			{
				battleScriptPointer += 16;
			}
			break;
		}
		case JumpIfAbilityPresent:
		{
			u32 i;
			u8 abilityID = battleScriptPointer[2];
			if (CheckForAbilityInBattle(abilityID, 2) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 4, 4);
			}
			else
			{
				battleScriptPointer += 8;
			}
			break;
		}
		case JumpIfCannotSwitch:
		{
			u32 value = battleDataPointer[0].battleBanks[battleScriptPointer[2]];
			PokemonBattleData* data = &battleDataPointer[0].pokemonStats[value];
			if (PokemonHasType(data, Type_Ghost) == false && (data[0].battleStatusFlags.trappedInBattle || CheckForAbilityInBattle(Arena_Trap, (~(value & 1) & 1)) == true || (CheckForAbilityInBattle(Magnet_Pull, (~(value & 1) & 1)) == true && PokemonHasType(data, Type_Steel) == true)))
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 3, 4);
			}
			else
			{
				battleScriptPointer += 7;
			}
			break;
		}
		case JumpIfTurnCounter:
		{
			if (ComparisonRoutine(battleDataPointer[0].battleTurnsCounter, LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
			}
			break;
		}
		case JumpIfCannotSleep:
		{
			u32 value = battleDataPointer[0].battleBanks[battleScriptPointer[2]];
			PokemonBattleData* data = &battleDataPointer[0].pokemonStats[value];
			if (data[0].ability == Insomnia || data[0].ability == Vital_Spirit || data[0].battleStatusFlags.cannotSleep)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 3, 4);
			}
			else
			{
				battleScriptPointer += 7;
			}
			break;
		}
		case JumpIfDamageType:
		{
			if (ComparisonRoutine(battleDataPointer[0].flags.damageTypeDealt, battleScriptPointer[2], battleScriptPointer[3]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 4, 4);
			}
			else
			{
				battleScriptPointer += 8;
			}
			break;
		}
	}
	return NotEnded;
}

u8 SetBattleStatusFlag()
{
	u32 value = battleDataPointer[0].battleBanks[battleScriptPointer[1]];
	PokemonBattleData* data = &battleDataPointer[0].pokemonStats[value];
	data[0].battleFlags |= LoadUnalignedNumber(battleScriptPointer, 2, 4);
	battleScriptPointer += 6;
}

u8 ClearBattleStatusFlag()
{
	u32 value = battleDataPointer[0].battleBanks[battleScriptPointer[1]];
	PokemonBattleData* data = &battleDataPointer[0].pokemonStats[value];
	data[0].battleFlags &= ~(LoadUnalignedNumber(battleScriptPointer, 2, 4));
	battleScriptPointer += 6;
}

u8 GotoJump()
{
	battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	return NotEnded;
}

u8 CallJump()
{
	if (battleDataPointer[0].positionInCallStack < 0x10)
	{
		battleDataPointer[0].callStack[battleDataPointer[0].positionInCallStack] = battleScriptPointer + 5;
		battleDataPointer[0].positionInCallStack++;
		battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	}
	return NotEnded;
}

u8 ReturnFromCall()
{
	if (battleDataPointer[0].positionInCallStack > 0)
	{
		battleDataPointer[0].positionInCallStack--;
		battleScriptPointer = battleDataPointer[0].callStack[battleDataPointer[0].positionInCallStack];
		battleDataPointer[0].callStack[battleDataPointer[0].positionInCallStack] = 0;
	}
	return NotEnded;
}

u8 EndScript()
{
	return Ended;
}
