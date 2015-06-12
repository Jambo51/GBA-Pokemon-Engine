/*
 * BattleScriptCommands.c
 *
 *  Created on: 8 Aug 2014
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "MemoryLocations.h"
#include "PokemonBaseData.h"
#include "BattleStrings.h"
#include "LoadUnalignedCode.h"
#include "Pokemon.h"
#include "Maths.h"
#include "TextFunctions.h"
#include "libbattlescripts.h"
#include "libbattleanimscripts.h"
#include "Flags.h"

#define FALSE 0
#define TRUE 1

#define AdditionalDefrosting TRUE
#define AdditionalBurnCuring TRUE

#define GenVExperienceMethod TRUE
#define GenVIHiddenPower FALSE

const ALIGN(1) u8 typeStrengths[18][18] = {
		//Nor  Fig  Fly  Poi  Grd  Roc  Bug  Gho  Ste  Fir  Wat  Grs  Ele  Psy  Ice  Dra  Dar  Fai
		{ 100, 100, 100, 100, 100, 050, 100, 000, 050, 100, 100, 100, 100, 100, 100, 100, 100, 100 }, // Normal
		{ 200, 100, 050, 050, 100, 200, 050, 000, 200, 100, 100, 100, 100, 050, 200, 100, 200, 050 }, // Fighting
		{ 100, 200, 100, 100, 100, 050, 200, 100, 050, 100, 100, 200, 050, 100, 100, 100, 100, 100 }, // Flying
		{ 100, 100, 100, 050, 100, 050, 100, 050, 000, 100, 100, 200, 100, 100, 100, 100, 100, 200 }, // Poison
		{ 100, 100, 000, 200, 100, 200, 050, 100, 200, 200, 100, 050, 200, 100, 100, 100, 100, 100 }, // Ground
		{ 100, 050, 200, 100, 050, 100, 200, 100, 050, 200, 100, 100, 100, 100, 200, 100, 100, 100 }, // Rock
		{ 100, 050, 050, 050, 100, 100, 100, 050, 050, 050, 100, 200, 100, 200, 100, 100, 200, 050 }, // Bug
		{ 000, 100, 100, 100, 100, 100, 100, 200, 050, 100, 100, 100, 100, 200, 100, 100, 200, 100 }, // Ghost
		{ 100, 100, 100, 100, 100, 200, 100, 100, 050, 050, 050, 100, 100, 100, 200, 100, 100, 200 }, // Steel
		{ 100, 100, 100, 100, 100, 050, 200, 100, 200, 050, 050, 200, 100, 100, 200, 050, 100, 100 }, // Fire
		{ 100, 100, 100, 100, 200, 200, 100, 100, 100, 200, 050, 050, 100, 100, 100, 050, 100, 100 }, // Water
		{ 100, 100, 050, 050, 200, 200, 050, 100, 050, 050, 200, 050, 100, 100, 100, 050, 100, 100 }, // Grass
		{ 100, 100, 200, 100, 000, 100, 100, 100, 100, 100, 200, 050, 050, 100, 100, 050, 100, 100 }, // Electric
		{ 100, 200, 100, 200, 100, 100, 100, 100, 050, 100, 100, 100, 100, 050, 100, 100, 000, 100 }, // Psychic
		{ 100, 100, 200, 100, 200, 100, 100, 100, 050, 050, 050, 200, 100, 100, 050, 200, 100, 100 }, // Ice
		{ 100, 100, 100, 100, 100, 100, 100, 100, 050, 100, 100, 100, 100, 100, 100, 200, 100, 000 }, // Dragon
		{ 100, 050, 100, 100, 100, 100, 100, 200, 050, 100, 100, 100, 100, 200, 100, 100, 050, 050 }, // Dark
		{ 100, 200, 100, 050, 100, 100, 100, 100, 050, 050, 100, 100, 100, 100, 100, 200, 200, 100 }  // Fairy
};

const ALIGN(1) u8 foresightOverrides[][3] = {
		{ Type_Normal, Type_Ghost, 100 },
		{ Type_Fighting, Type_Ghost, 100 },
		{ Type_Ghost, Type_Normal, 100 },
		{ Type_None, Type_None, 0 }
};

const ALIGN(1) u8 miracleEyeOverrides[][3] = {
		{ Type_Psychic, Type_Dark, 100 },
		{ Type_None, Type_None, 0 }
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

void SetTilesForTextRender()
{
	SetTextColour(1, 6, 15);
	u16* address = (u16*)0x060073C2;
	memset32((void*)0x0600C000, BATTLEBGCOLOUR, 0xF0C);
	u32 i;
	for (i = 0; i < 28; i++)
	{
		address[i] = 0x200 + (i * 20);
		address[0x20 + i] = 0x201 + (i * 20);
		address[0x40 + i] = 0x202 + (i * 20);
		address[0x60 + i] = 0x203 + (i * 20);
	}
}

void SetupBattleScriptCall(u8* newPointer, u32 commandLength)
{
	if (battleDataPointer[0].positionInCallStack < 0x10)
	{
		battleDataPointer[0].callStack[battleDataPointer[0].positionInCallStack] = battleScriptPointer + commandLength;
		battleDataPointer[0].positionInCallStack++;
		battleScriptPointer = newPointer;
	}
}

const u16 statBuffEffects[] = {
		25,
		29,
		33,
		40,
		50,
		66,
		100,
		150,
		200,
		250,
		300,
		350,
		400
};

void RecalculateEffectiveStat(PokemonBattleData* data, u32 statIndex)
{
	data[0].effectiveStats[statIndex] = Maths::Maths::UnsignedFractionalMultiplication(data[0].stats[statIndex], statBuffEffects[data[0].statLevels[statIndex]]);
}

void RecalculateAllEffectiveStats(PokemonBattleData* dataLocation)
{
	u32 i;
	for (i = 0; i < NumBattleStats - 2; i++)
	{
		RecalculateEffectiveStat(dataLocation, i);
	}
}

u32 BattleComparisonRoutine(u32 value1, u32 value2, u32 comparisonMode)
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

u32 BattlePokemonHasType(PokemonBattleData* data, u32 type)
{
	if (data[0].type1 == type || data[0].type2 == type || (data[0].battleStatusFlags.tertiaryTypeActive && data[0].type3 == type))
	{
		return true;
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
			if (BattleComparisonRoutine(ability, abilityID, Equals) == true)
			{
				battleDataPointer[0].battleBanks[GenericBufferByte2] = i;
				return true;
			}
		}
	}
	return false;
}

u32 CanItemBeUsed(PokemonBattleData* attacker, PokemonBattleData* defender)
{
	u32 result = true;
	if (attacker[0].ability == Klutz || CheckForAbilityInBattle(Unnerve, (~(battleDataPointer[0].battleBanks[User] & 1) & 1)))
	{

	}
	return result;
}

u32 CanKnockItemOff(PokemonBattleData* defender, u32 ignoreAbilities)
{
	u32 result = true;
	u32 item = defender[0].heldItem;
	if (ignoreAbilities == false)
	{
		if (defender[0].ability == Multitype && item >= Item_Fighting_Plate && item <= Item_Fairy_Plate)
		{
			result = false;
		}
		if (defender[0].species == Genesect && item >= Item_Burn_Drive && item <= Item_Shock_Drive)
		{
			result = false;
		}
		else if (defender[0].species == Giratina && item == Item_Griseous_Orb)
		{
			result = false;
		}
	}
	return result;
}

u32 GetItemEffect(u16 itemID)
{
	return Item_Effect_None;
}

u32 GetSecondaryItemEffect(u16 itemID)
{
	return 0;
}

u32 CalculateExperienceGain(u32 mode)
{
	PokemonBattleData* beneficiary = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]];
	PokemonBattleData* victim = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	u32 expGain = GetBaseExperienceFromPokemon(victim[0].mainPointer);
	if (battleType.info.isTrainerBattle)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, 150);
	}
	u32 victimLevel = victim[0].level;
	expGain *= victimLevel;
#if GenVExperienceMethod == TRUE
	{
		u32 levelModifier = (victimLevel << 1) + 10;
		u32 squrt = Sqrt(levelModifier);
		levelModifier *= levelModifier;
		levelModifier *= squrt;
		u32 levelModifier2 = victimLevel + beneficiary[0].level + 10;
		squrt = Sqrt(levelModifier2);
		levelModifier2 *= levelModifier2;
		levelModifier2 *= squrt;
		levelModifier = Maths::UnsignedDivide(levelModifier * 100, levelModifier2);
		expGain = Maths::UnsignedFractionalMultiplication(expGain, levelModifier);
	}
	if (mode != Exp_Share_Mode)
	{
		expGain = Maths::UnsignedDivide(expGain, 10 * battleDataPointer[0].participantInfo.numParticipants);
	}
	else
	{
		expGain = Maths::UnsignedDivide(expGain, 10 * battleDataPointer[0].participantInfo.numExpShareHolders);
	}
	expGain++;
	if (PokemonDecrypter(beneficiary[0].mainPointer, OTID) != player.completeTrainerID)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, 150);
	}
	if (GetItemEffect(beneficiary[0].heldItem) == Item_Effect_Boost_Exp)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, GetSecondaryItemEffect(beneficiary[0].heldItem) * 10);
	}
#else
	if (PokemonDecrypter(beneficiary[0].mainPointer, OTID) != player.completeTrainerID)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, 150);
	}
	if (GetItemEffect(beneficiary[0].heldItem) == Item_Effect_Boost_Exp)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, GetSecondaryItemEffect(beneficiary[0].heldItem) * 10);
	}
	if (mode != Exp_Share_Mode)
	{
		expGain = Maths::UnsignedDivide(expGain, 14 * battleDataPointer[0].participantInfo.numParticipants);
	}
	else
	{
		expGain = Maths::UnsignedDivide(expGain, 14 * battleDataPointer[0].participantInfo.numExpShareHolders);
	}
#endif
	return expGain;
}

const u8 RODATA_LOCATION naturalGiftTypes[] = {
		Type_Fire,
		Type_Water,
		Type_Electric,
		Type_Grass,
		Type_Ice,
		Type_Fighting,
		Type_Poison,
		Type_Ground,
		Type_Flying,
		Type_Psychic,
		Type_Bug,
		Type_Rock,
		Type_Ghost,
		Type_Dragon,
		Type_Dark,
		Type_Steel
};

const u16 badgeLevelEffects[][2] = {
		{ Flag_Badge8, 100 },
		{ Flag_Badge7, 90 },
		{ Flag_Badge6, 80 },
		{ Flag_Badge5, 70 },
		{ Flag_Badge4, 60 },
		{ Flag_Badge3, 50 },
		{ Flag_Badge2, 40 },
		{ Flag_Badge1, 30 }
};

u8 CheckForMoveCancellingStatuses()
{
	battleDataPointer[0].moveIndex = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]].moves[battleDataPointer[0].moveSelections[battleDataPointer[0].battleBanks[User]]];
	u32 userBank = battleDataPointer[0].battleBanks[User];
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[userBank];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	u32 obedienceFlag = true;
	if (PokemonDecrypter(attacker[0].mainPointer, OTID) != player.completeTrainerID && PokemonDecrypter(attacker[0].mainPointer, IsObedient) == false)
	{
		u32 upperLimit = 10;
		u32 i;
		for (i = 0; i < 8; i++)
		{
			if (CheckFlag(badgeLevelEffects[i][0]))
			{
				upperLimit = badgeLevelEffects[i][1];
				break;
			}
		}
		if (attacker[0].level > upperLimit)
		{
			s32 levelDifference = 100 - ((attacker[0].level - upperLimit) << 3);
			if (levelDifference <= (s32)Maths::GetDelimitedRandom32BitValue(100))
			{
				obedienceFlag = false;
			}
		}
	}
	if (obedienceFlag == false)
	{
		// do obedience stuff
	}
	MoveData* moveInfo = &moveData[battleDataPointer[0].moveIndex];
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
			SetupBattleScriptCall((u8*)&Script_Wake_Up, 1);
			return NotEnded;
		}
		else
		{
			battleScriptPointer = (u8*)&Script_Fast_Asleep;
		}
	}
	else if (attacker[0].primaryStatusBits.frozen)
	{
		u32 rand = Maths::GetDelimitedRandom32BitValue(100);
#if AdditionalDefrosting == TRUE
		// 50% chance if sunny, 10% chance if hail / diamond dust and 20% chance otherwise
		u32 value = ((battleDataPointer[0].weatherBits.sunny) ? 50 : ((battleDataPointer[0].weatherBits.hail || battleDataPointer[0].weatherBits.snow) ? 10 : 20));
#else
		// Flat 20% chance
		u32 value = 20;
#endif
		if (rand < value)
		{
			SetupBattleScriptCall((u8*)&Script_Unfreeze, 1);
			return NotEnded;
		}
	}
	else if (attacker[0].primaryStatusBits.paralysed)
	{
		u32 rand = Maths::GetDelimitedRandom32BitValue(100);
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
		u32 rand = Maths::GetDelimitedRandom32BitValue(100);
		u32 value = ((battleDataPointer[0].weatherBits.snow) ? 50 : ((battleDataPointer[0].weatherBits.rain) ? 20 : 0));
		if (rand < value)
		{
			SetupBattleScriptCall((u8*)&Script_Cure_Burn, 1);
			return NotEnded;
		}
	}
#endif
	if (moveInfo[0].effectID == Effects_Echoed_Voice)
	{
		if (battleDataPointer[0].flags.echoedVoiceRaisedThisTurn == 0)
		{
			battleDataPointer[0].echoedVoiceCounter++;
			battleDataPointer[0].flags.echoedVoiceRaisedThisTurn = 1;
		}
	}
	else
	{
		battleDataPointer[0].echoedVoiceCounter = 0;
	}
	if (moveInfo[0].effectID != Effects_Fury_Cutter)
	{
		attacker[0].secondaryStatusBits.furyCutterCounter = 0;
	}
	if (moveInfo[0].effectID != Effects_Rollout)
	{
		attacker[0].secondaryStatusBits.rolloutUses = 0;
	}
	if (moveInfo[0].effectID == Effects_Judgement && attacker[0].heldItem >= Item_Fighting_Plate && attacker[0].heldItem <= Item_Fairy_Plate && battleDataPointer[0].counterBits.magicRoom == 0)
	{
		battleDataPointer[0].flags.moveTypeOverride = 1;
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = attacker[0].heldItem - Item_Fighting_Plate + 1;
	}
	if (moveInfo[0].effectID == Effects_Techno_Blast && attacker[0].heldItem >= Item_Burn_Drive && attacker[0].heldItem <= Item_Shock_Drive)
	{
		battleDataPointer[0].flags.moveTypeOverride = 1;
		u32 type = moveInfo[0].type;
		switch (attacker[0].heldItem)
		{
			case Item_Burn_Drive:
				type = Type_Fire;
				break;
			case Item_Shock_Drive:
				type = Type_Electric;
				break;
			case Item_Douse_Drive:
				type = Type_Water;
				break;
			case Item_Chill_Drive:
				type = Type_Ice;
				break;
		}
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = type;
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
	else if (moveInfo[0].effectID == Effects_Hidden_Power)
	{
		u32 i;
		u32 counter = 0;
		for (i = 0; i < 6; i++)
		{
			counter |= (PokemonDecrypter(attacker[0].mainPointer, HP_IV + i) & 1) << (1 << i);
		}
		counter *= 16;
		counter = Maths::UnsignedDivide(counter, 63);
		battleDataPointer[0].flags.moveTypeOverride = 1;
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Fighting + counter;
	}
	else if (moveInfo[0].effectID == Effects_Natural_Gift)
	{
		if (attacker[0].ability != Klutz)
		{
			u16 itemID = attacker[0].heldItem;
			if (itemID >= Item_Berry_Cheri_Berry && itemID <= Item_Berry_Babiri_Berry)
			{
				itemID = Maths::UnsignedModulus(itemID - Item_Berry_Cheri_Berry, 15);
				battleDataPointer[0].flags.moveTypeOverride = 1;
				battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = naturalGiftTypes[itemID];
			}
			else if (itemID >= Item_Berry_Roseli_Berry && itemID <= Item_Berry_Kee_Berry)
			{
				battleDataPointer[0].flags.moveTypeOverride = 1;
				battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Fairy;
			}
			else if (itemID == Item_Berry_Maranga_Berry)
			{
				battleDataPointer[0].flags.moveTypeOverride = 1;
				battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Dark;
			}
		}
		else
		{

		}
	}
	if (attacker[0].battleStatusFlagsBank2.electrified)
	{
		battleDataPointer[0].flags.moveTypeOverride = 1;
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Electric;
	}
	else if (attacker[0].ability == Normalise)
	{
		battleDataPointer[0].flags.moveTypeOverride = 1;
		battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Normal;
	}
	else if (moveInfo[0].type == Type_Normal)
	{
		if (battleDataPointer[0].flags.ionDeluge)
		{
			battleDataPointer[0].flags.moveTypeOverride = 1;
			battleDataPointer[0].battleBanks[MoveTypeOverrideValue] = Type_Electric;
		}
		else if (attacker[0].ability == Aerilate)
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
	if (moveInfo[0].effectID != Effects_Hits_Through_Protect)
	{
		if (defender[0].battleStatusFlags.protectedFlag)
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
		if ((defender[0].battleStatusFlags.chargingDive && moveInfo[0].specialFlagsStruct.hitsThroughDive == 0) ||
				(defender[0].battleStatusFlags.chargingFly && moveInfo[0].specialFlagsStruct.hitsThroughFly == 0) ||
				(defender[0].battleStatusFlags.chargingDig && moveInfo[0].specialFlagsStruct.hitsThroughDig == 0))
		{
			battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
			return NotEnded;
		}
		accuracy *= evasionAccuracyChart[attacker[0].statLevels[Accuracy]];
		if (moveInfo[0].effectID == Effects_Sacred_Sword)
		{
			accuracy = Maths::UnsignedDivide(accuracy, 100);
		}
		else
		{
			accuracy = Maths::UnsignedDivide(accuracy, evasionAccuracyChart[defender[0].statLevels[Evasion]]);
		}
		if (Maths::GetDelimitedRandom32BitValue(100) >= accuracy)
		{
			battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
			return NotEnded;
		}
	}
	battleScriptPointer += 5;
	return NotEnded;
}

void StopBattleScriptTextWait()
{
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 0;
	battleDataPointer[0].flags.battleScriptTextContinueFlag = 1;
}

u8 PokemonUsedMessage()
{
	if (battleDataPointer[0].flags.battleScriptTextContinueFlag)
	{
		battleDataPointer[0].flags.battleScriptTextContinueFlag = 0;
		battleScriptPointer++;
		return NotEnded;
	}
	else if (battleDataPointer[0].flags.battleScriptTextWaitFlag)
	{
		return WaitForFrames;
	}
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	DrawStringOverTime((char*)&pokemonUsedString, 0, 0, &StopBattleScriptTextWait);
	return WaitForFrames;
}

u8 DecrementPP()
{
	u32 userBank = battleDataPointer[0].battleBanks[User];
	u32 defenderBank = battleDataPointer[0].battleBanks[Target];
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[userBank];
	if (!attacker[0].secondaryStatusBits.ppReduced)
	{
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
		attacker[0].secondaryStatusBits.ppReduced = 1;
		Pokemon* thePokemon = attacker[0].mainPointer;
		PokemonEncrypter(thePokemon, Move1PP + moveIndex, ppValue);
	}
	battleScriptPointer++;
	return NotEnded;
}

u32 ApplyWeatherBasedModifiers(u32 currentDamage, u32 moveType)
{
	if (CheckForAbilityInBattle(Air_Lock, 2) == false && CheckForAbilityInBattle(Cloud_Nine, 2) == false)
	{
		if (battleDataPointer[0].weatherBits.sunny)
		{
			if (moveType == Type_Fire)
			{
				return Maths::UnsignedFractionalMultiplication(currentDamage, 150);
			}
			else if (moveType == Type_Water)
			{
				return currentDamage >> 1;
			}
		}
		else if (battleDataPointer[0].weatherBits.rain)
		{
			if (moveType == Type_Water)
			{
				return Maths::UnsignedFractionalMultiplication(currentDamage, 150);
			}
			else if (moveType == Type_Fire)
			{
				return currentDamage >> 1;
			}
		}
	}
	return currentDamage;
}

u32 CheckAdditionalTypeEffects(u32 defenderType, u32 moveType, u32 currentEffect, u8TripleArray* dataArray)
{
	u32 i = 0;
	while (dataArray[i][0] != Type_None)
	{
		if (dataArray[i][0] == moveType && defenderType == dataArray[i][1])
		{
			currentEffect = dataArray[i][2];
			break;
		}
		i++;
	}
	return currentEffect;
}

u32 CalculateTypeEffectivenessOnPokemon(PokemonBattleData* defender, u32 moveType)
{
	u32 defenderType1 = defender[0].type1;
	u32 defenderType2 = defender[0].type2;
	u32 defenderType3 = defender[0].type3;
	if (moveType > Type_Fairy)
	{
		moveType = Type_Normal;
	}
	if (defenderType1 > Type_Fairy)
	{
		defenderType1 = Type_Normal;
	}
	if (defenderType2 > Type_Fairy)
	{
		defenderType2 = Type_Normal;
	}
	if (defenderType3 > Type_Fairy)
	{
		defenderType3 = Type_Normal;
	}
	u32 typeValue = battleDataPointer[0].typeChartCallback(typeStrengths[moveType][defenderType1]);
	if (defender[0].battleStatusFlags.foresight)
	{
		typeValue = battleDataPointer[0].typeChartCallback(CheckAdditionalTypeEffects(defenderType1, moveType, typeValue, (u8TripleArray*)&foresightOverrides));
	}
	else if (defender[0].battleStatusFlagsBank2.miracleEye)
	{
		typeValue = battleDataPointer[0].typeChartCallback(CheckAdditionalTypeEffects(defenderType1, moveType, typeValue, (u8TripleArray*)&miracleEyeOverrides));
	}
	if (typeValue && defenderType2 != defenderType1)
	{
		u32 secondaryTypeValue = battleDataPointer[0].typeChartCallback(typeStrengths[moveType][defenderType2]);
		if (defender[0].battleStatusFlags.foresight)
		{
			secondaryTypeValue = battleDataPointer[0].typeChartCallback(CheckAdditionalTypeEffects(defenderType2, moveType, typeValue, (u8TripleArray*)&foresightOverrides));
		}
		else if (defender[0].battleStatusFlagsBank2.miracleEye)
		{
			secondaryTypeValue = battleDataPointer[0].typeChartCallback(CheckAdditionalTypeEffects(defenderType2, moveType, typeValue, (u8TripleArray*)&miracleEyeOverrides));
		}
		typeValue = Maths::UnsignedFractionalMultiplication(typeValue, secondaryTypeValue);
	}
	if (defender[0].battleStatusFlags.tertiaryTypeActive && (defenderType1 != defenderType3) && (defenderType2 != defenderType3))
	{
		u32 secondaryTypeValue = battleDataPointer[0].typeChartCallback(typeStrengths[moveType][defenderType3]);
		if (defender[0].battleStatusFlags.foresight)
		{
			secondaryTypeValue = battleDataPointer[0].typeChartCallback(CheckAdditionalTypeEffects(defenderType3, moveType, typeValue, (u8TripleArray*)&foresightOverrides));
		}
		else if (defender[0].battleStatusFlagsBank2.miracleEye)
		{
			secondaryTypeValue = battleDataPointer[0].typeChartCallback(CheckAdditionalTypeEffects(defenderType3, moveType, typeValue, (u8TripleArray*)&miracleEyeOverrides));
		}
		typeValue = Maths::UnsignedFractionalMultiplication(typeValue, secondaryTypeValue);
	}
	return typeValue;
}

u32 ApplyTypeBasedModifiers(PokemonBattleData* defender, u32 moveType, u32 currentDamage)
{
	u32 effectiveness = CalculateTypeEffectivenessOnPokemon(defender, moveType);
	currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, effectiveness);
	u32 value = NoEffect;
	if (effectiveness)
	{
		if (effectiveness < 100)
		{
			value = Ineffective;
		}
		else if (effectiveness > 100)
		{
			value = SuperEffective;
		}
		else
		{
			value = NormalDamage;
		}
	}
	battleDataPointer[0].flags.attackEffectiveness = value;
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
		u32 rand = Maths::GetDelimitedRandom32BitValue(100);
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

u32 ApplyAbilityModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo)
{
	u32 moveType = moveInfo[0].type;
	if (battleDataPointer[0].flags.moveTypeOverride)
	{
		moveType = battleDataPointer[0].battleBanks[MoveTypeOverrideValue];
	}
	{
		u8 attackerAbility = attacker[0].ability;
		u8 defenderAbility = defender[0].ability;
		if (defenderAbility == Thick_Fat && (moveType == Type_Fire || moveType == Type_Ice))
		{
			currentDamage >>= 1;
		}
		if (attacker[0].primaryStatus)
		{
			if (attackerAbility == Guts)
			{
				currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
			}
			else if (attacker[0].primaryStatusBits.burned && moveInfo[0].category == Category_Physical)
			{
				currentDamage >>= 1;
			}
		}
		if (battleType.info.isDoubleBattle)
		{
			if (attackerAbility == Plus)
			{
				if (battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User] ^ 2].ability == Minus)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
				}
			}
			else if (attackerAbility == Minus)
			{
				if (battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User] ^ 2].ability == Plus)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
				}
			}
		}
		if (attackerAbility == Defeatist && (attacker[0].currentHP <= (attacker[0].maximumHP >> 1)))
		{
			currentDamage >>= 1;
		}
		if ((attackerAbility == Pure_Power || attackerAbility == Huge_Power) && moveInfo[0].category == Category_Physical)
		{
			currentDamage <<= 1;
		}
		if (attackerAbility == Solar_Power && battleDataPointer[0].weatherBits.sunny && moveInfo[0].category == Category_Special)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (attackerAbility == Hustle && moveInfo[0].category == Category_Physical)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (attackerAbility == Slow_Start && moveInfo[0].category == Category_Physical && attacker[0].slowStartCounter < 4)
		{
			currentDamage >>= 1;
		}
		if (attacker[0].battleStatusFlags.flashFireTriggered && moveType == Type_Fire)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (battleType.info.isDoubleBattle && battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User] ^ 2].species == Cherrim && battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User] ^ 2].ability == Flower_Gift && moveInfo[0].category == Category_Physical)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (attackerAbility != Mould_Breaker && attackerAbility != Teravolt && attackerAbility != Turboblaze)
		{
			switch (defenderAbility)
			{
				case Wonder_Guard:
					if (battleDataPointer[0].flags.attackEffectiveness < SuperEffective)
					{
						battleDataPointer[0].flags.attackEffectiveness = NoEffect;
						battleDataPointer[0].flags.wonderGuardTriggered = 1;
						currentDamage = 0;
					}
					break;
				case Damp:
					if (moveInfo[0].effectID == Effects_Self_Destruct)
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
		if (attacker[0].currentHP <= Maths::UnsignedDivide(attacker[0].maximumHP, 3))
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
				currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
			}
		}
	}
	if (battleType.info.isDoubleBattle && battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target] ^ 2].species == Cherrim && battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target] ^ 2].ability == Flower_Gift && moveInfo[0].category == Category_Physical)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 67);
	}
	return currentDamage;
}

u32 ApplyBasePowerModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo)
{
	u32 ability = attacker[0].ability;
	if (ability == Technician && currentDamage <= 60)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
	}
	if (ability == Flare_Boost && attacker[0].primaryStatusBits.burned && moveInfo[0].category == Category_Physical)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
	}
	if (ability == Analytic)
	{
		u32 i;
		for (i = 0; i < battleDataPointer[0].numBattlers; i++)
		{
			if (battleDataPointer[0].battleOrder[i] == battleDataPointer[0].battleBanks[Target])
			{
				currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 130);
				break;
			}
			else if (battleDataPointer[0].battleOrder[i] == battleDataPointer[0].battleBanks[User])
			{
				break;
			}
		}
	}
	if (ability == Reckless && moveInfo[0].effectID == Effects_Recoil)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 120);
	}
	if (ability == Iron_Fist && moveInfo[0].specialFlagsStruct.punching)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 120);
	}
	if (ability == Toxic_Boost && (attacker[0].primaryStatusBits.poisoned || attacker[0].primaryStatusBits.badlyPoisoned) && moveInfo[0].category == Category_Physical)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
	}
	if (ability == Rivalry)
	{
		u32 gender1 = attacker[0].gender;
		u32 gender2 = defender[0].gender;
		if (gender1 != Gender_Genderless && gender2 != Gender_Genderless)
		{
			if (gender1 == gender2)
			{
				currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 125);
			}
			else
			{
				currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 75);
			}
		}
	}
	{
		u32 type = moveInfo[0].type;
		if (battleDataPointer[0].flags.moveTypeOverride)
		{
			type = battleDataPointer[0].battleBanks[MoveTypeOverrideValue];
		}
		if (ability == Sand_Force)
		{
			if (type == Type_Rock || type == Type_Ground || type == Type_Steel)
			{
				currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 130);
			}
		}
		if (ability == Heatproof && type == Type_Fire)
		{
			currentDamage >>= 1;
		}
		if (ability == Dry_Skin && type == Type_Fire)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 125);
		}
		if (attacker[0].battleStatusFlags.charged && type == Type_Electric)
		{
			currentDamage <<= 1;
		}
		if (type == Type_Fire)
		{
			u32 i;
			for (i = 0; i < battleDataPointer[0].numBattlers; i++)
			{
				if (battleDataPointer[0].pokemonStats[i].battleStatusFlags.waterSport)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 33);
					break;
				}
			}
		}
		if (type == Type_Electric)
		{
			u32 i;
			for (i = 0; i < battleDataPointer[0].numBattlers; i++)
			{
				if (battleDataPointer[0].pokemonStats[i].battleStatusFlags.mudSport)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 33);
					break;
				}
			}
		}
	}
	if (ability == Sheer_Force && moveInfo[0].specialFlagsStruct.sheerForceBlockable)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 130);
		battleDataPointer[0].flags.extraEffectBlock = 1;
	}
	if (moveInfo[0].effectID == Effects_Facade && (attacker[0].primaryStatusBits.paralysed || attacker[0].primaryStatusBits.burned || attacker[0].primaryStatusBits.poisoned || attacker[0].primaryStatusBits.badlyPoisoned))
	{
		currentDamage <<= 1;
	}
	if (moveInfo[0].effectID == Effects_Brine && (defender[0].currentHP <= (defender[0].maximumHP >> 1)))
	{
		currentDamage <<= 1;
	}
	if (moveInfo[0].effectID == Effects_Venoshock && (defender[0].primaryStatusBits.badlyPoisoned || defender[0].primaryStatusBits.poisoned))
	{
		currentDamage <<= 1;
	}
	if (moveInfo[0].effectID == Effects_Retaliate && attacker[0].battleStatusFlags.retaliatePowerUp)
	{
		currentDamage <<= 1;
	}
	if (moveInfo[0].effectID == Effects_Fusion_Move && attacker[0].battleStatusFlags.fusionPowerUp)
	{
		currentDamage <<= 1;
	}
	if (attacker[0].battleStatusFlags.meFirst)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
	}
	if (moveInfo[0].effectID == Effects_SolarBeam && battleDataPointer[0].weatherBits.sunny == 0 && battleDataPointer[0].weather != 0)
	{
		currentDamage >>= 1;
	}
	if (attacker[0].battleStatusFlags.helpingHand)
	{
		currentDamage >>= 1;
	}
	return currentDamage;
}

u8 naturalGiftDamageValues[] = {
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		90,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		100,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		80,
		100,
		100,
		80
};

u32 GetMoveBasePowerFromData(PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo)
{
	u32 returnable;
	switch (moveInfo[0].effectID)
	{
		case Effects_Frustration:
			returnable = max(Maths::UnsignedDivide((255 - attacker[0].happiness) * 10, 25), 1);
			break;
		case Effects_Payback:
			returnable = ((defender[0].battleStatusFlags.moved) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower);
			break;
		case Effects_Return:
			returnable = max(Maths::UnsignedDivide(attacker[0].happiness * 10, 25), 1);
			break;
		case Effects_Electro_Ball:
		{
			u32 speed1 = (defender[0].ability == Unaware) ? attacker[0].stats[BattleSpeed] : attacker[0].effectiveStats[BattleSpeed];
			u32 speed2 = (attacker[0].ability == Unaware) ? defender[0].stats[BattleSpeed] : defender[0].effectiveStats[BattleSpeed];
			u32 speedRatio = Maths::UnsignedDivide(speed1, speed2);
			if (speedRatio == 1)
			{
				returnable = 60;
			}
			else if (speedRatio == 2)
			{
				returnable = 80;
			}
			else if (speedRatio == 3)
			{
				returnable = 120;
			}
			else if (speedRatio >= 4)
			{
				returnable = 150;
			}
			else
			{
				returnable = 40;
			}
			break;
		}
		case Effects_Avalanche:
			returnable = (attacker[0].damageReceivedThisTurn) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Gyro_Ball:
		{
			u32 speed1 = (defender[0].ability == Unaware) ? attacker[0].stats[BattleSpeed] : attacker[0].effectiveStats[BattleSpeed];
			u32 speed2 = (attacker[0].ability == Unaware) ? defender[0].stats[BattleSpeed] : defender[0].effectiveStats[BattleSpeed];
			returnable = min(moveInfo[0].basePower, 25 * Maths::UnsignedDivide(speed2, speed1));
			break;
		}
		case Effects_Eruption:
			returnable = max(Maths::UnsignedDivide(moveInfo[0].basePower * attacker[0].currentHP, attacker[0].maximumHP), 1);
			break;
		case Effects_Punishment:
		{
			u32 i;
			u32 counter = 0;
			for (i = 0; i < NumBattleStats; i++)
			{
				u32 value = defender[0].statLevels[i];
				if (value > 6)
				{
					counter += value - 6;
				}
			}
			returnable = max((moveInfo[0].basePower >> 1) + (20 * counter), moveInfo[0].basePower);
			returnable = min(returnable, moveInfo[0].secondaryInformation);
			break;
		}
		case Effects_Fury_Cutter:
			returnable = moveInfo[0].basePower * (1 << attacker[0].secondaryStatusBits.furyCutterCounter);
			break;
		case Effects_Low_Kick:
			// Note, Pokédex data not complete, so not done as yet
			returnable = 20;
			break;
		case Effects_Echoed_Voice:
			returnable = min(moveInfo[0].basePower * (battleDataPointer[0].echoedVoiceCounter + 1), 200);
			break;
		case Effects_Hex:
			returnable = (defender[0].primaryStatus != 0) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Wring_Out:
			returnable = Maths::UnsignedDivide(moveInfo[0].basePower * Maths::UnsignedDivide(defender[0].currentHP * 100, defender[0].maximumHP), 100);
			break;
		case Effects_Assurance:
			returnable = (defender[0].battleStatusFlags.damaged) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Heat_Crash:
			// Not yet implemented, same as low kick
			returnable = 20;
			break;
		case Effects_Stored_Power:
		{
			u32 i;
			u32 counter = 0;
			for (i = 0; i < NumBattleStats; i++)
			{
				u32 value = attacker[0].statLevels[i];
				if (value > 6)
				{
					counter += value - 6;
				}
			}
			returnable = moveInfo[0].basePower * (counter + 1);
			break;
		}
		case Effects_Acrobatics:
			returnable = (attacker[0].heldItem == 0) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Flail:
		{
			u32 p = Maths::UnsignedDivide(48 * attacker[0].currentHP, attacker[0].maximumHP);
			if (p < 1)
			{
				returnable = 200;
			}
			else if (p < 5)
			{
				returnable = 150;
			}
			else if (p < 10)
			{
				returnable = 100;
			}
			else if (p < 17)
			{
				returnable = 80;
			}
			else if (p < 32)
			{
				returnable = 40;
			}
			else
			{
				returnable = 20;
			}
			break;
		}
		case Effects_Trump_Card:
		{
			u32 pp = attacker[0].pp[battleDataPointer[0].moveSelections[battleDataPointer[0].battleBanks[User]]];
			if (pp < 2)
			{
				returnable = 200;
			}
			else if (pp < 3)
			{
				returnable = 80;
			}
			else if (pp < 4)
			{
				returnable = 60;
			}
			else if (pp < 5)
			{
				returnable = 50;
			}
			else
			{
				returnable = 20;
			}
			break;
		}
		case Effects_Round:
			returnable = moveInfo[0].basePower;
			if (battleType.info.isDoubleBattle)
			{
				u32 allyID = battleDataPointer[0].battleBanks[User] ^ 2;
				if (battleDataPointer[0].pokemonStats[allyID].moves[battleDataPointer[0].moveSelections[allyID]] == battleDataPointer[0].moveIndex)
				{
					returnable <<= 1;
				}
			}
			break;
		case Effects_Triple_Kick:
			returnable = (battleDataPointer[0].battleBanks[GenericCounter] + 1) * moveInfo[0].basePower;
			break;
		case Effects_Wake_Up_Slap:
			returnable = (defender[0].primaryStatusBits.sleepTurns != 0) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Smelling_Salt:
			returnable = (defender[0].primaryStatusBits.paralysed) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Weather_Ball:
			returnable = (battleDataPointer[0].weather) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Gust:
			returnable = (defender[0].battleStatusFlags.chargingFly) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Hidden_Power:
		{
#if GenVIHiddenPower == TRUE
			returnable = moveInfo[o].basePower;
#else
			u32 i;
			u32 counter = 0;
			for (i = 0; i < 6; i++)
			{
				u32 value = PokemonDecrypter(attacker[0].mainPointer, HP_IV + i) >> 2;
				if (value & 2)
				{
					counter |= (1 << i);
				}
			}
			returnable = counter * 40;
			returnable = Maths::UnsignedDivide(counter, 63) + 30;
#endif
			break;
		}
		case Effects_Spit_Up:
			returnable = moveInfo[0].basePower * defender[0].secondaryStatusBits.stockpile;
			break;
		case Effects_Pursuit:
			returnable = (defender[0].battleStatusFlags.switching) ? moveInfo[0].basePower << 1 : moveInfo[0].basePower;
			break;
		case Effects_Present:
		{
			u32 rand = battleDataPointer[0].battleBanks[GenericCounter];
			if (rand < 60)
			{
				returnable = moveInfo[0].basePower;
			}
			else if (rand < 90)
			{
				returnable = moveInfo[0].basePower << 1;
			}
			else
			{
				returnable = moveInfo[0].basePower * 3;
			}
			break;
		}
		case Effects_Natural_Gift:
		{
			u16 itemID = attacker[0].heldItem;
			if (itemID >= Item_Berry_Cheri_Berry && itemID <= Item_Berry_Chilan_Berry)
			{
				returnable = naturalGiftDamageValues[itemID];
			}
			else
			{
				returnable = moveInfo[0].basePower;
			}
			break;
		}
		case Effects_Magnitude:
		{
			u32 factor = Maths::GetDelimitedRandom32BitValue(100);
			if (factor < 5)
			{
				factor = 0;
			}
			else if (factor < 15)
			{
				factor = 1;
			}
			else if (factor < 35)
			{
				factor = 2;
			}
			else if (factor < 65)
			{
				factor = 3;
			}
			else if (factor < 85)
			{
				factor = 4;
			}
			else if (factor < 95)
			{
				factor = 5;
			}
			else
			{
				factor = 7;
			}
			battleDataPointer[0].flags.damageTypeDealt = factor;
			returnable = moveInfo[0].basePower + (moveInfo[0].secondaryInformation * factor);
			break;
		}
		case Effects_Rollout:
			returnable = moveInfo[0].basePower * (1 << (attacker[0].secondaryStatusBits.rolloutUses + attacker[0].battleStatusFlags.usedDefenceCurl));
			break;
		case Effects_Fling:
			returnable = moveInfo[0].basePower * (1 << (attacker[0].secondaryStatusBits.rolloutUses + attacker[0].battleStatusFlags.usedDefenceCurl));
			break;
		case Effects_Pledge:
			returnable = (attacker[0].battleStatusFlags.pledgeTriggered) ? moveInfo[0].secondaryInformation : moveInfo[0].basePower;
			break;
		case Effects_Knock_Off:
			returnable = (CanKnockItemOff(defender, true)) ? Maths::UnsignedFractionalMultiplication(moveInfo[0].basePower, 150) : moveInfo[0].basePower;
			break;
		default:
			returnable = moveInfo[0].basePower;
			break;
	}
	returnable = ApplyBasePowerModifiers(returnable, attacker, defender, moveInfo);
	return returnable;
}

u8 CalculateDamage()
{
	u32 damage = 0;
	u16 moveID = battleDataPointer[0].moveIndex;
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	u32 attackerIndex;
	u32 defenderIndex;
	MoveData* moveInfo = &moveData[moveID];
	if (moveInfo[0].specialFlagsStruct.specialistDamageRoutine)
	{
		switch (moveInfo[0].effectID)
		{
			case Effects_Psywave:
				damage = max(1, Maths::UnsignedDivide((Maths::GetDelimitedRandom32BitValue(101) + 50) * attacker[0].level, 100));
				break;
			case Effects_Night_Shade:
				damage = attacker[0].level;
				break;
			case Effects_Sonic_Boom:
				damage = moveInfo[0].basePower;
				break;
			case Effects_Super_Fang:
				damage = max(1, defender[0].currentHP >> 1);
				break;
			case Effects_Endeavour:
				damage = max(1, defender[0].currentHP - attacker[0].currentHP);
				break;
			case Effects_Final_Gambit:
				damage = attacker[0].currentHP;
				break;
			case Effects_Counter: case Effects_Mirror_Coat:
				damage = attacker[0].damageReceivedThisTurn << 1;
				break;
			case Effects_Bide:
				damage = (attacker[0].damageReceivedThisTurn + attacker[0].damageReceivedLastTurn) << 1;
				break;
			case Effects_Metal_Burst:
				damage = Maths::UnsignedFractionalMultiplication(attacker[0].damageReceivedThisTurn, 150);
				break;
		}
		battleDataPointer[0].flags.attackEffectiveness = NormalDamage;
	}
	else
	{
		{
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
		}
		damage = attacker[0].level << 1;
		damage = Maths::UnsignedDivide(damage, 5);
		damage += 2;
		damage *= GetMoveBasePowerFromData(attacker, defender, moveInfo);
		{
			u32 value;
			{
				if (moveInfo[0].effectID == Effects_Foul_Play)
				{
					if (defender[0].ability == Unaware)
					{
						value = defender[0].stats[attackerIndex];
					}
					else
					{
						value = defender[0].effectiveStats[attackerIndex];
					}
				}
				else
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
			}
			if (attacker[0].ability != Klutz)
			{
				if ((attacker[0].species == Cubone || attacker[0].species == Marowak) && attacker[0].heldItem == Item_Thick_Club)
				{
					value <<= 1;
				}
				if (attacker[0].species == Clamperl && attacker[0].heldItem == Item_Deep_Sea_Tooth && moveInfo[0].category == Category_Special)
				{
					value <<= 1;
				}
				if (attacker[0].species == Pikachu && attacker[0].heldItem == Item_Light_Ball)
				{
					value <<= 1;
				}
				if ((attacker[0].species == Latios || attacker[0].species == Latias) && attacker[0].heldItem == Item_Soul_Dew && moveInfo[0].category == Category_Special)
				{
					value = Maths::UnsignedFractionalMultiplication(value, 150);
				}
				if (attacker[0].heldItem == Item_Choice_Band && moveInfo[0].category == Category_Physical)
				{
					value = Maths::UnsignedFractionalMultiplication(value, 150);
				}
				if (attacker[0].heldItem == Item_Choice_Specs && moveInfo[0].category == Category_Special)
				{
					value = Maths::UnsignedFractionalMultiplication(value, 150);
				}
			}
			damage *= ApplyAbilityModifiers(value, attacker, defender, moveInfo);
		}
		{
			u32 defenderValue;
			if (attacker[0].ability == Unaware || moveInfo[0].effectID == Effects_Chip_Away)
			{
				defenderValue = defender[0].stats[defenderIndex];
			}
			else
			{
				defenderValue = defender[0].effectiveStats[defenderIndex];
			}
			if (defender[0].ability != Klutz)
			{
				if (defender[0].heldItem == Item_Marvel_Scale && defender[0].primaryStatus && moveInfo[0].category == Category_Physical)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
				if (defender[0].species == Clamperl && defender[0].heldItem == Item_Deep_Sea_Scale && moveInfo[0].category == Category_Special)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
				if (defender[0].species == Ditto && defender[0].heldItem == Item_Metal_Powder && moveInfo[0].category == Category_Physical && defender[0].battleStatusFlags.transformed == 0)
				{
					defenderValue <<= 1;
				}
				if ((defender[0].species == Latios || defender[0].species == Latias) && defender[0].heldItem == Item_Soul_Dew && moveInfo[0].category == Category_Special)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
				if (IsFullyEvolved(defender[0].species) == false && defender[0].heldItem == Item_Eviolite)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
			}
			if (battleDataPointer[0].weatherBits.sandstorm && defenderIndex == BattleSpecialDefence && BattlePokemonHasType(defender, Type_Rock) && CheckForAbilityInBattle(Air_Lock, 2) == false && CheckForAbilityInBattle(Cloud_Nine, 2) == false)
			{
				defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
			}
			damage = Maths::UnsignedDivide(damage, defenderValue);
		}
		damage = Maths::UnsignedDivide(damage, 50);
		damage += 2;
		// Multi-target Modifier - absent
		// as moves do not currently have such a setting
		u32 type = moveInfo[0].type;
		if (battleDataPointer[0].flags.moveTypeOverride)
		{
			type = battleDataPointer[0].battleBanks[MoveTypeOverrideValue];
		}
		damage = ApplyWeatherBasedModifiers(damage, type);
		damage = ApplyCriticalHitModifiers(damage, attacker, defender);
		damage = Maths::UnsignedFractionalMultiplication(damage, Maths::GetDelimitedRandom32BitValue(0x10) + 85);
		if (BattlePokemonHasType(attacker, type) == true)
		{
			damage = Maths::UnsignedFractionalMultiplication(damage, 150);
		}
		damage = ApplyTypeBasedModifiers(defender, type, damage);
	}
	if (battleDataPointer[0].flags.attackEffectiveness != NoEffect)
	{
		damage = max(1, damage);
	}
	damage = Maths::UnsignedFractionalMultiplication(damage, battleDataPointer[0].battleDamageMultiplier);
	battleDataPointer[0].battleDamage = damage;
	battleScriptPointer++;
	return NotEnded;
}

u8 StoreByte()
{
	u8* address = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	u32 addressLoc = (u32)address;
	if ((addressLoc >= 0x02000000 && addressLoc < 0x02040000) || (addressLoc >= 0x03000000 && addressLoc < 0x03008000))
	{
		address[0] = battleScriptPointer[5];
	}
	battleScriptPointer += 6;
	return NotEnded;
}

u8 StoreHalfWord()
{
	u16* address = (u16*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	u32 addressLoc = (u32)address;
	if (((addressLoc >= 0x02000000 && addressLoc < 0x02040000) || (addressLoc >= 0x03000000 && addressLoc < 0x03008000)) && ((addressLoc & 1) == 0))
	{
		address[0] = (u16)LoadUnalignedNumber(battleScriptPointer, 5, 2);
	}
	battleScriptPointer += 7;
	return NotEnded;
}

u8 StoreWord()
{
	u32* address = (u32*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	u32 addressLoc = (u32)address;
	if (((addressLoc >= 0x02000000 && addressLoc < 0x02040000) || (addressLoc >= 0x03000000 && addressLoc < 0x03008000)) && ((addressLoc & 3) == 0))
	{
		address[0] = (u32)LoadUnalignedNumber(battleScriptPointer, 5, 4);
	}
	battleScriptPointer += 9;
	return NotEnded;
}

u8 JumpIf()
{
	u32 context = battleScriptPointer[1];
	switch (context)
	{
		case JumpIfByte:
		{
			u8* address = (u8*)LoadUnalignedNumber(battleScriptPointer, 2, 4);
			if (BattleComparisonRoutine(address[0], battleScriptPointer[6], battleScriptPointer[7]) == true)
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
			if (BattleComparisonRoutine(address[0], LoadUnalignedNumber(battleScriptPointer, 6, 2), battleScriptPointer[8]) == true)
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
			if (BattleComparisonRoutine(address[0], LoadUnalignedNumber(battleScriptPointer, 6, 4), battleScriptPointer[10]) == true)
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
			if (BattleComparisonRoutine(species, LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
			}
			break;
		}
		case JumpIfWeather:
		{
			u16 weather = battleDataPointer[0].weather;
			if (BattleComparisonRoutine(weather, LoadUnalignedNumber(battleScriptPointer, 2, 2), battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
			}
			break;
		}
		case JumpIfHeldItem:
		{
			u16 heldItem = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].heldItem;
			if (BattleComparisonRoutine(heldItem, LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
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
			if (BattleComparisonRoutine(ability, battleScriptPointer[3], battleScriptPointer[4]) == true)
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
			if (BattleComparisonRoutine(stat, battleScriptPointer[4], battleScriptPointer[5]) == true)
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
			if (BattleComparisonRoutine(status, LoadUnalignedNumber(battleScriptPointer, 3, 4), battleScriptPointer[7]) == true)
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
			if (BattleComparisonRoutine(status, LoadUnalignedNumber(battleScriptPointer, 3, 4), battleScriptPointer[7]) == true)
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
			u32 status;
			if (battleScriptPointer[2] == 1)
			{
				status = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[3]]].battleFlagsBank2;
			}
			else
			{
				status = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[3]]].battleFlags;
			}
			if (BattleComparisonRoutine(status, LoadUnalignedNumber(battleScriptPointer, 4, 4), battleScriptPointer[8]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 9, 4);
			}
			else
			{
				battleScriptPointer += 13;
			}
			break;
		}
		case JumpIfPrimaryType:
		{
			u8 type = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[2]]].type1;
			if (BattleComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
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
			if (BattleComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
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
			if (BattleComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
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
				storeAddress = BattleComparisonRoutine(address1[i], address2[i], mode);
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
			if (BattlePokemonHasType(data, Type_Ghost) == false && (data[0].battleStatusFlags.trappedInBattle || CheckForAbilityInBattle(Arena_Trap, (~(value & 1) & 1)) == true || (CheckForAbilityInBattle(Magnet_Pull, (~(value & 1) & 1)) == true && BattlePokemonHasType(data, Type_Steel) == true)))
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
			if (BattleComparisonRoutine(battleDataPointer[0].battleTurnsCounter, LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
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
			if (BattleComparisonRoutine(battleDataPointer[0].flags.damageTypeDealt, battleScriptPointer[2], battleScriptPointer[3]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 4, 4);
			}
			else
			{
				battleScriptPointer += 8;
			}
			break;
		}
		case JumpIfMoveEffect:
		{
			if (BattleComparisonRoutine(moveData[battleDataPointer[0].moveIndex].effectID, LoadUnalignedNumber(battleScriptPointer, 2, 2), battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
			}
			break;
		}
		case JumpIfBattleType:
		{
			if (BattleComparisonRoutine(battleType.basicInfo, LoadUnalignedNumber(battleScriptPointer, 2, 4), battleScriptPointer[6]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 7, 4);
			}
			else
			{
				battleScriptPointer += 11;
			}
			break;
		}
		case JumpIfLoopCounter:
		{
			if (BattleComparisonRoutine(battleDataPointer[0].numBattlers, battleDataPointer[0].loopCounter, battleScriptPointer[2]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 3, 4);
			}
			else
			{
				battleScriptPointer += 7;
			}
			break;
		}
		case JumpIfGeneralCounter:
		{
			u32 index = (battleScriptPointer[3] == 0) ? GenericCounter : GenericCounter2;
			if (BattleComparisonRoutine(battleScriptPointer[2], battleDataPointer[0].battleBanks[index], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
			}
			break;
		}
	}
	return NotEnded;
}

u8 SetMovePrimaryEffect()
{
	battleDataPointer[0].moveEffects[0] = battleScriptPointer[1];
	battleDataPointer[0].moveEffectsExtraInfo[0] = battleScriptPointer[2];
	battleScriptPointer += 3;
	return NotEnded;
}

u8 SetMoveSecondaryEffect()
{
	battleDataPointer[0].moveEffects[1] = battleScriptPointer[1];
	battleDataPointer[0].moveEffectsExtraInfo[1] = battleScriptPointer[2];
	battleScriptPointer += 3;
	return NotEnded;
}

u8 ExecuteMoveAnimation()
{
	if (player.playAnimations)
	{
		battleDataPointer[0].flags.waitForMoveAnimation = 1;
		// Go about getting move animation script and setting it up for use
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 WaitMoveAnimation()
{
	if (battleDataPointer[0].flags.waitForMoveAnimation == 0)
	{
		battleScriptPointer++;
		return NotEnded;
	}
	return WaitForFrames;
}

u8 ExecuteDamageReceptionAnimation()
{
	switch (battleDataPointer[0].flags.attackEffectiveness)
	{
		case NoEffect:
			break;
		case Ineffective:
			// Play not effective SFX
			//battleDataPointer[0].flags.waitForMoveAnimation = 1;
			break;
		case NormalDamage:
			// Play normal effectiveness SFX
			//battleDataPointer[0].flags.waitForMoveAnimation = 1;
			break;
		case SuperEffective:
			// Play super effective SFX
			//battleDataPointer[0].flags.waitForMoveAnimation = 1;
			break;
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 ApplyCalculatedDamage()
{
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	if (defender[0].currentHP <= battleDataPointer[0].battleDamage)
	{
		if (moveData[battleDataPointer[0].moveIndex].effectID == Effects_False_Swipe)
		{
			defender[0].currentHP = 1;
		}
		else
		{
			defender[0].currentHP = 0;
		}
	}
	else
	{
		defender[0].currentHP -= battleDataPointer[0].battleDamage;
	}
	PokemonEncrypter(defender[0].mainPointer, CurrentHP, defender[0].currentHP);
	battleScriptPointer++;
	return NotEnded;
}

u8 UpdateHPBar()
{
	//battleDataPointer[0].flags.waitForMoveAnimation = 1;
	battleScriptPointer++;
	return NotEnded;
}

u8 FaintIfNecessary()
{
	u32 targetBank = battleDataPointer[0].battleBanks[Target];
	if (battleDataPointer[0].pokemonStats[targetBank].currentHP == 0)
	{
		u32 i;
		u32 counter = 0;
		for (i = 0; i < 6; i++)
		{
			if (PokemonDecrypter(((targetBank & 1) ? &enemyPokemon[i] : &partyPokemon[i]), CurrentHP) != 0)
			{
				counter++;
			}
		}
		if (counter == 0)
		{
			if ((targetBank & 1) == 0)
			{
				battleScriptPointer = (u8*)&Battle_Script_White_Out;
			}
			else
			{
				battleScriptPointer = (u8*)&Battle_Script_Faint_With_Battle_End;
			}
		}
		else
		{
			SetupBattleScriptCall((u8*)&Battle_Script_Faint, 1);
		}
	}
	else
	{
		battleScriptPointer++;
	}
	return NotEnded;
}

u8 CalculateExperience()
{
	battleDataPointer[0].battleDamage = CalculateExperienceGain(0);
	battleScriptPointer++;
	return NotEnded;
}

u8 ApplyEVs()
{
	PokemonBattleData* attacker = (PokemonBattleData*)&battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]];
	PokemonBattleData* defender = (PokemonBattleData*)&battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	{
		u32 evGain = GetEVGainFromPokemon(defender[0].mainPointer);
		u32 i;
		u32 primaryItemCheck = (GetItemEffect(attacker[0].heldItem) == Item_Effect_Boost_EVs);
		u32 value = GetSecondaryItemEffect(attacker[0].heldItem);
		for (i = 0; i < 6; i++)
		{
			if (SumEVs(&attacker[0].mainPointer[0].mainData) == 510)
			{
				break;
			}
			u32 evBoost = (evGain & (3 << (i << 1))) >> (i << 1);
			if (primaryItemCheck)
			{
				if (value == 0)
				{
					evBoost <<= 1;
				}
				else if ((value - 1) == i)
				{
					evBoost += 4;
				}
			}
			if (PokemonDecrypter(attacker[0].mainPointer, PokerusStatus))
			{
				evBoost <<= 1;
			}
			evBoost = min(0xFF, evBoost + PokemonDecrypter(attacker[0].mainPointer, HP_EV + i));
			if (AllowEVAddition(&attacker[0].mainPointer[0].mainData, evBoost, i))
			{
				PokemonEncrypter(attacker[0].mainPointer, HP_EV + i, evBoost);
			}
			else
			{
				PokemonEncrypter(attacker[0].mainPointer, HP_EV + i, PokemonDecrypter(attacker[0].mainPointer, HP_EV + i) + (510 - SumEVs(&attacker[0].mainPointer[0].mainData)));
			}
		}
	}
	return NotEnded;
}

u8 ApplyMoveEffects()
{
	u32 i;
	for (i = 0; i < MaxNumEffects; i++)
	{
		u32 effectID = battleDataPointer[0].moveEffects[i];
		if (effectID != 0)
		{
			PokemonBattleData* target;
			if (effectID & 0x80)
			{
				target = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]];
			}
			else
			{
				target = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
			}
			effectID &= 0x7F;
			u32 chanceValue;
			if (effectID & 0x40)
			{
				chanceValue = 100;
			}
			else
			{
				chanceValue = moveData[battleDataPointer[0].moveIndex].effectAccuracy;
			}
			u32 secondaryInformation = moveData[battleDataPointer[0].moveIndex].secondaryInformation;
			effectID &= 0x3F;
			battleDataPointer[0].battleBanks[CurrentEffectID] = effectID;
			switch (effectID)
			{
				case ChangeStat:
				{
					u32 strength = battleDataPointer[0].moveEffectsExtraInfo[i];
					battleDataPointer[0].battleBanks[CurrentEffectPower] = strength;
					u32 stat = strength & 7;
					u32 direction = (strength & 0x80) >> 7;
					strength = (strength & 0x70) >> 4;
					if (direction)
					{
						if (target[0].statLevels[stat] == 0)
						{
							// Can't go lower
						}
						else if (target[0].statLevels[stat] < strength)
						{
							target[0].statLevels[stat] = 0;
						}
						else
						{
							target[0].statLevels[stat] -= strength;
						}
					}
					else
					{
						if (target[0].statLevels[stat] == 12)
						{
							// Can't go higher
						}
						else if (target[0].statLevels[stat] + strength > 12)
						{
							target[0].statLevels[stat] = 12;
						}
						else
						{
							target[0].statLevels[stat] += strength;
						}
					}
					RecalculateEffectiveStat(target, stat);
					break;
				}
				case Sleep:
					if (secondaryInformation == 1)
					{
						// Remove status
					}
					else
					{
						if (target[0].ability == Insomnia || target[0].ability == Vital_Spirit)
						{
							// Fails due to ability
						}
						else if (target[0].battleStatusFlags.cannotSleep || target[0].battleStatusFlags.safeguarded)
						{
							// Fails due to preventative status
						}
						else if (target[0].primaryStatus != 0)
						{
							// Fails due to existing status
						}
						else
						{
							if (Maths::GetDelimitedRandom32BitValue(100) < chanceValue)
							{
								u32 random = Maths::GetDelimitedRandom32BitValue(7) + 1;
								target[0].primaryStatusBits.sleepTurns = random;
								// Script to indicate sleeping status
							}
						}
					}
					break;
				case Burn:
					if (secondaryInformation == 1)
					{
						// Remove status
					}
					else
					{
						if (target[0].ability == Water_Veil || BattlePokemonHasType(target, Type_Fire) || target[0].battleStatusFlags.safeguarded)
						{
							break;
						}
						else if (target[0].primaryStatus != 0)
						{
							// Fails due to existing status
						}
						else
						{
							if (Maths::GetDelimitedRandom32BitValue(100) < chanceValue)
							{
								target[0].primaryStatusBits.burned = 1;
								// Script to indicate burned status
							}
						}
					}
					break;
				case Freeze:
					if (secondaryInformation == 1)
					{
						// Remove status
					}
					else
					{
						if (BattlePokemonHasType(target, Type_Ice) || target[0].battleStatusFlags.safeguarded)
						{
							break;
						}
						else if (target[0].primaryStatus != 0)
						{
							// Fails due to existing status
						}
						else
						{
							if (Maths::GetDelimitedRandom32BitValue(100) < chanceValue)
							{
								target[0].primaryStatusBits.frozen = 1;
								// Script to indicate burned status
							}
						}
					}
					break;
				case Poison:
					if (secondaryInformation == 1)
					{
						// Remove status
					}
					else
					{
						if (target[0].ability == Immunity || BattlePokemonHasType(target, Type_Poison) || BattlePokemonHasType(target, Type_Steel) || target[0].battleStatusFlags.safeguarded || target[0].battleStatusFlags.substituted)
						{
							break;
						}
						else if (target[0].primaryStatus != 0)
						{
							// Fails due to existing status
						}
						else
						{
							if (Maths::GetDelimitedRandom32BitValue(100) < chanceValue)
							{
								target[0].primaryStatusBits.poisoned = 1;
								// Script to indicate burned status
							}
						}
					}
					break;
				case BadlyPoison:
					if (secondaryInformation == 1)
					{
						// Remove status
					}
					else
					{
						if (target[0].ability == Immunity || BattlePokemonHasType(target, Type_Poison) || BattlePokemonHasType(target, Type_Steel) || target[0].battleStatusFlags.safeguarded || target[0].battleStatusFlags.substituted)
						{
							break;
						}
						else if (target[0].primaryStatus != 0)
						{
							// Fails due to existing status
						}
						else
						{
							if (Maths::GetDelimitedRandom32BitValue(100) < chanceValue)
							{
								target[0].primaryStatusBits.badlyPoisoned = 1;
								target[0].primaryStatusBits.badlyPoisonedCounter = 0;
								// Script to indicate burned status
							}
						}
					}
					break;
				case Paralyse:
					if (secondaryInformation == 1)
					{
						// Remove status
					}
					else
					{
						if (target[0].ability == Limber || BattlePokemonHasType(target, Type_Electric) || target[0].battleStatusFlags.safeguarded || target[0].battleStatusFlags.substituted)
						{
							break;
						}
						else if (target[0].primaryStatus != 0)
						{
							// Fails due to existing status
						}
						else
						{
							if (Maths::GetDelimitedRandom32BitValue(100) < chanceValue)
							{
								target[0].primaryStatusBits.paralysed = 1;
								// Script to indicate burned status
							}
						}
					}
					break;
				case Recoil:
					if (target[0].ability == Magic_Guard || target[0].ability == Rock_Head)
					{
						break;
					}
					else
					{
						if (Maths::GetDelimitedRandom32BitValue(100) < chanceValue)
						{
							// Secondary information can be used to set amount of recoil
							// separately from the chance of an effect happening
							u32 damage = Maths::UnsignedFractionalMultiplication(battleDataPointer[0].battleDamage, secondaryInformation);
							if (damage == 0)
							{
								damage = 1;
							}
							u16 hp = target[0].currentHP;
							if (damage > hp)
							{
								damage = hp;
							}
							battleDataPointer[0].battleDamage = damage;
							// Script to update HP and faint if necessary
						}
					}
					break;
				default:
					break;
			}
		}
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 SetBattleStatusFlag()
{
	u32 value = battleDataPointer[0].battleBanks[battleScriptPointer[1]];
	PokemonBattleData* data = &battleDataPointer[0].pokemonStats[value];
	data[0].battleFlags |= LoadUnalignedNumber(battleScriptPointer, 2, 4);
	battleScriptPointer += 6;
	return NotEnded;
}

u8 ClearBattleStatusFlag()
{
	u32 value = battleDataPointer[0].battleBanks[battleScriptPointer[1]];
	PokemonBattleData* data = &battleDataPointer[0].pokemonStats[value];
	data[0].battleFlags &= ~(LoadUnalignedNumber(battleScriptPointer, 2, 4));
	battleScriptPointer += 6;
	return NotEnded;
}

u8 GotoJump()
{
	battleScriptPointer = (u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4);
	return NotEnded;
}

u8 CallJump()
{
	SetupBattleScriptCall((u8*)LoadUnalignedNumber(battleScriptPointer, 1, 4), 5);
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

u8 PauseBattleScript()
{
	if (battleScriptFrameWait == 0)
	{
		battleScriptFrameWait = (u16)LoadUnalignedNumber(battleScriptPointer, 1, 2) - 1;
		return WaitForFrames;
	}
	else
	{
		battleScriptFrameWait--;
		if (battleScriptFrameWait == 0)
		{
			battleScriptPointer += 3;
			return NotEnded;
		}
		return WaitForFrames;
	}
}

u8 PauseBattleScriptIfTextRendering()
{
	u32 textRendering = battleDataPointer[0].flags.battleScriptTextWaitFlag;
	if (battleScriptFrameWait == 0)
	{
		if (textRendering)
		{
			battleScriptFrameWait = (u16)LoadUnalignedNumber(battleScriptPointer, 1, 2) - 1;
			return WaitForFrames;
		}
		else
		{
			battleScriptPointer += 3;
			return NotEnded;
		}
	}
	else
	{
		if (textRendering)
		{
			return WaitForFrames;
		}
		battleScriptFrameWait--;
		if (battleScriptFrameWait == 0)
		{
			battleDataPointer[0].flags.battleScriptTextContinueFlag = 0;
			battleScriptPointer += 3;
			return NotEnded;
		}
		return WaitForFrames;
	}
}

u8 EndTurn()
{
	battleDataPointer[0].flags.waitAttack = 0;
	battleDataPointer[0].currentBattlerIndex++;
	return Ended;
}

u8 EndScript()
{
	battleDataPointer[0].flags.waitAttack = 0;
	battleDataPointer[0].flags.endBattle = 1;
	return Ended;
}

u8 PrintCriticalHitMessage()
{
	if (battleDataPointer[0].flags.criticalHitFlag)
	{
		SetTilesForTextRender();
		battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
		DrawStringOverTime(critMessage, 0, 0, &StopBattleScriptTextWait);
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintEffectivenessMessage()
{
	switch (battleDataPointer[0].flags.attackEffectiveness)
	{
		case NoEffect:
			SetTilesForTextRender();
			battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
			DrawStringOverTime(noEffectMessage, 0, 0, &StopBattleScriptTextWait);
			break;
		case Ineffective:
			SetTilesForTextRender();
			battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
			DrawStringOverTime((char*)&notEffectiveMessage, 0, 0, &StopBattleScriptTextWait);
			break;
		case NormalDamage:
			break;
		case SuperEffective:
			SetTilesForTextRender();
			battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
			DrawStringOverTime(superEffectiveMessage, 0, 0, &StopBattleScriptTextWait);
			break;
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintMessageByPointer()
{
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	DrawStringOverTime((char*)LoadUnalignedNumber(battleScriptPointer, 1, 4), 0, 0, &StopBattleScriptTextWait);
	battleScriptPointer += 5;
	return NotEnded;
}

u8 PrintMessageByID()
{
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	DrawStringOverTime(textTable[LoadUnalignedNumber(battleScriptPointer, 1, 2)], 0, 0, &StopBattleScriptTextWait);
	battleScriptPointer += 3;
	return NotEnded;
}

const u16 victoryFanfares[][2] = {
		{ Class_Evil_Team, Song_GSCTrainerVictoryFanfare },
		{ Class_Champion, Song_GSCGymVictoryFanfare },
		{ Class_Gym_Leader, Song_GSCGymVictoryFanfare },
		{ Class_Elite_Four, Song_GSCGymVictoryFanfare },
		{ 0xFFFF, 0x0000 }
};

const u16 afterTrainerBattleFanfares[] = {
		Song_GSCTrainerVictoryFanfare,
		Song_RBYTrainerVictoryFanfare
};

u8 PlayBattleEndFanfare()
{
	if (battleType.info.isWildBattle)
	{
		//SetupSongForPlayback(Song_GSCWildVictoryFanfare, 0);
	}
	else
	{
		u32 trainerClass = battleDataPointer[0].trainerData[0].pointerToData[0].trainerClass;
		u32 i = 0;
		u32 found = false;
		while (victoryFanfares[i][0] != 0xFFFF)
		{
			if (trainerClass == victoryFanfares[i][0])
			{
				//SetupSongForPlayback(victoryFanfares[i][1], 0);
				found = true;
				break;
			}
			i++;
		}
		if (found == false)
		{
			//SetupSongForPlayback(afterTrainerBattleFanfares[regionByte], 0);
		}
	}
	battleScriptPointer++;
	return NotEnded;
}

void CheckForTextContinuePressBattle()
{
	if (IsKeyDownButNotHeld(Key_A) || IsKeyDownButNotHeld(Key_B))
	{
		battleDataPointer[0].flags.battleScriptTextWaitFlag = 0;
		battleDataPointer[0].flags.battleScriptTextContinueFlag = 1;
		HandleKeyPresses = &IgnoreKeyPresses;
	}
}

u8 PrintFaintMessage()
{
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	DrawStringOverTime((char*)&pokemonFaintedString, 0, 0, 0);
	HandleKeyPresses = &CheckForTextContinuePressBattle;
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintExperienceMessage()
{
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	char* string = (char*)&experienceGainStringTwo;
	if (battleDataPointer[0].battleDamage == 1)
	{
		string = (char*)&experienceGainStringOne;
	}
	DrawStringOverTime(string, 0, 0, 0);
	HandleKeyPresses = &CheckForTextContinuePressBattle;
	battleScriptPointer++;
	return NotEnded;
}

u8 WaitKeyPressTextBattle()
{
	if (battleDataPointer[0].flags.battleScriptTextWaitFlag == 0 && battleDataPointer[0].flags.battleScriptTextContinueFlag == 0)
	{
		battleScriptPointer++;
		return NotEnded;
	}
	if (battleDataPointer[0].flags.battleScriptTextContinueFlag)
	{
		battleDataPointer[0].flags.battleScriptTextContinueFlag = 0;
		battleScriptPointer++;
		return NotEnded;
	}
	return WaitForFrames;
}

u8 PrintTrainerVictoryMessage()
{
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	DrawStringOverTime((char*)&trainerVictoryMessage, 0, 0, 0);
	HandleKeyPresses = &CheckForTextContinuePressBattle;
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintTrainerAfterMessage()
{
	char* theString = battleDataPointer[0].trainerData[0].afterBattleText;
	if (theString)
	{
		SetTilesForTextRender();
		battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
		DrawStringOverTime(theString, 0, 0, 0);
		HandleKeyPresses = &CheckForTextContinuePressBattle;
	}
	battleScriptPointer++;
	return NotEnded;
}

const u8 trainerClassMoneyRates[] = {
		25,
		25,
		25,
		12
};

u8 CalculateTrainerWinnings()
{
	u32 calculatedValue = 0;
	if (battleType.info.isTrainerBattle)
	{
		calculatedValue = trainerClassMoneyRates[battleDataPointer[0].trainerData[0].pointerToData[0].trainerClass];
		TrainerData* baseData = battleDataPointer[0].trainerData[0].pointerToData;
		TrainerPokemonData* data;
		if (baseData[0].battleVarietyBits.isMovesetBattle)
		{
			data = (TrainerPokemonData*)&baseData[0].pokemonDataMoves[baseData[0].numPokemon - 1];
		}
		else
		{
			data = (TrainerPokemonData*)&baseData[0].pokemonData[baseData[0].numPokemon - 1];
		}
		calculatedValue *= data[0].level;
	}
	if (calculatedValue > 0)
	{
		u32 i;
		for (i = 0; i < 6; i++)
		{
			if ((battleDataPointer[0].participantInfo.participantFlags & (1 << i)) && GetItemEffect(PokemonDecrypter((Pokemon*)&partyPokemon[i], HeldItem)) == Item_Effect_Double_Cash_Gain)
			{
				calculatedValue <<= 1;
				break;
			}
		}
	}
	battleDataPointer[0].battleDamage = calculatedValue;
	if (CheckFlag(Flag_MumBank) && (player.mumBalance != MaxPlayerCash))
	{
		calculatedValue *= 3;
		calculatedValue >>= 2;
	}
	player.balance += calculatedValue;
	if (player.balance > MaxPlayerCash)
	{
		player.balance = MaxPlayerCash;
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintTrainerCashGainMessage()
{
	if (battleDataPointer[0].battleDamage)
	{
		SetTilesForTextRender();
		battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
		DrawStringOverTime((char*)&trainerCashGainString, 0, 0, 0);
		HandleKeyPresses = &CheckForTextContinuePressBattle;
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintMumCashGainMessage()
{
	if (CheckFlag(Flag_MumBank))
	{
		if (player.mumBalance != MaxPlayerCash)
		{
			u32 originalValue = battleDataPointer[0].battleDamage;
			u32 value = originalValue >> 2;
			u32 value2 = originalValue * 3;
			value2 >>= 2;
			if (value + value2 != originalValue)
			{
				player.balance += (originalValue - value);
				if (player.balance > MaxPlayerCash)
				{
					player.balance = MaxPlayerCash;
				}
			}
			player.mumBalance += value;
			if (player.mumBalance > MaxPlayerCash)
			{
				player.mumBalance = MaxPlayerCash;
			}
			battleDataPointer[0].battleDamage = value;
			if (battleDataPointer[0].battleDamage)
			{
				SetTilesForTextRender();
				battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
				DrawStringOverTime((char*)&mumCashGainString, 0, 0, 0);
				HandleKeyPresses = &CheckForTextContinuePressBattle;
			}
		}
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 CalculatePickupWinnings()
{
	battleDataPointer[0].battleDamage = battleDataPointer[0].counterBits.payDay * 5;
	u32 i;
	for (i = 0; i < 6; i++)
	{
		if ((battleDataPointer[0].participantInfo.participantFlags & (1 << i)) && GetItemEffect(PokemonDecrypter((Pokemon*)&partyPokemon[i], HeldItem)) == Item_Effect_Double_Cash_Gain)
		{
			battleDataPointer[0].battleDamage <<= 1;
			break;
		}
	}
	player.balance += battleDataPointer[0].battleDamage;
	if (player.balance > MaxPlayerCash)
	{
		player.balance = MaxPlayerCash;
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintPayDayCashGainMessage()
{
	if (battleDataPointer[0].battleDamage)
	{
		SetTilesForTextRender();
		battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
		DrawStringOverTime((char*)&pickupCashGainString, 0, 0, 0);
		HandleKeyPresses = &CheckForTextContinuePressBattle;
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintItemEffectMessage()
{
	battleScriptPointer++;
	return NotEnded;
}

u32 CalculateFleeProbabilityValue(u32 speed1, u32 speed2)
{
	speed1 *= 32;
	speed1 = Maths::UnsignedDivide(speed1, speed2 >> 2);
	speed1 += (30 * battleDataPointer[0].counterBits.escapeAttempts);
	speed1 &= 0xFF;
	return speed1;
}

u8 CalculateFleeResult()
{
	if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
	{
		if (battleType.info.isDoubleBattle)
		{
			if (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[0], Type_Ghost)
					|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[2], Type_Ghost))
			{
				battleDataPointer[0].battleDamage = Flee_Result_Succeeded;
			}
			else if (battleDataPointer[0].pokemonStats[0].ability == Run_Away || battleDataPointer[0].pokemonStats[2].ability == Run_Away)
			{
				battleDataPointer[0].battleDamage = Flee_Result_Run_Away;
			}
			else
			{
				if (CheckForAbilityInBattle(Magnet_Pull, 1)
					&& (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[0], Type_Steel)
					|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[2], Type_Steel)))
				{
					battleDataPointer[0].battleDamage = Flee_Result_Failed_Trapped_Ability;
					battleDataPointer[0].battleBanks[GenericBufferByte] = Magnet_Pull;
				}
				else if (CheckForAbilityInBattle(Arena_Trap, 1)
						&& (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[0], Type_Flying) == false
						|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[2], Type_Flying) == false)
						&& (battleDataPointer[0].pokemonStats[0].ability != Levitate
						|| battleDataPointer[0].pokemonStats[2].ability != Levitate))
				{
					battleDataPointer[0].battleDamage = Flee_Result_Failed_Trapped_Ability;
					battleDataPointer[0].battleBanks[GenericBufferByte] = Arena_Trap;
				}
				else if (CheckForAbilityInBattle(Shadow_Tag, 0) == false
						&& CheckForAbilityInBattle(Shadow_Tag, 1))
				{
					battleDataPointer[0].battleDamage = Flee_Result_Failed_Trapped_Ability;
					battleDataPointer[0].battleBanks[GenericBufferByte] = Shadow_Tag;
				}
				else
				{
					u32 meanSpeed;
					if (CheckForAbilityInBattle(Unaware, 1))
					{
						meanSpeed = (battleDataPointer[0].pokemonStats[0].stats[BattleSpeed] + battleDataPointer[0].pokemonStats[2].stats[BattleSpeed]) >> 1;
					}
					else
					{
						meanSpeed = (battleDataPointer[0].pokemonStats[0].effectiveStats[BattleSpeed] + battleDataPointer[0].pokemonStats[2].effectiveStats[BattleSpeed]) >> 1;
					}
					u32 meanOpponentSpeed;
					if (CheckForAbilityInBattle(Unaware, 0))
					{
						meanOpponentSpeed = (battleDataPointer[0].pokemonStats[1].stats[BattleSpeed] + battleDataPointer[0].pokemonStats[3].stats[BattleSpeed]) >> 1;
					}
					else
					{
						meanOpponentSpeed = (battleDataPointer[0].pokemonStats[1].effectiveStats[BattleSpeed] + battleDataPointer[0].pokemonStats[3].effectiveStats[BattleSpeed]) >> 1;
					}
					if (Maths::GetDelimitedRandom32BitValue(0x100) < CalculateFleeProbabilityValue(meanSpeed, meanOpponentSpeed))
					{
						battleDataPointer[0].battleDamage = Flee_Result_Succeeded;
					}
					else
					{
						battleDataPointer[0].battleDamage = Flee_Result_Failed;
					}
				}
			}
		}
		else
		{
			if (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[0], Type_Ghost))
			{
				battleDataPointer[0].battleDamage = Flee_Result_Succeeded;
			}
			else if (battleDataPointer[0].pokemonStats[0].ability == Run_Away)
			{
				battleDataPointer[0].battleDamage = Flee_Result_Run_Away;
			}
			else
			{
				if (CheckForAbilityInBattle(Magnet_Pull, 1)
					&& (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[0], Type_Steel)
					|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[2], Type_Steel)))
				{
					battleDataPointer[0].battleDamage = Flee_Result_Failed_Trapped_Ability;
					battleDataPointer[0].battleBanks[GenericBufferByte] = Magnet_Pull;
				}
				else if (CheckForAbilityInBattle(Arena_Trap, 1)
						&& BattlePokemonHasType((PokemonBattleData*)&battleDataPointer[0].pokemonStats[0], Type_Flying) == false
						&& battleDataPointer[0].pokemonStats[0].ability != Levitate)
				{
					battleDataPointer[0].battleDamage = Flee_Result_Failed_Trapped_Ability;
					battleDataPointer[0].battleBanks[GenericBufferByte] = Arena_Trap;
				}
				else if (CheckForAbilityInBattle(Shadow_Tag, 0) == false
						&& CheckForAbilityInBattle(Shadow_Tag, 1))
				{
					battleDataPointer[0].battleDamage = Flee_Result_Failed_Trapped_Ability;
					battleDataPointer[0].battleBanks[GenericBufferByte] = Shadow_Tag;
				}
				else
				{
					u32 meanSpeed;
					if (CheckForAbilityInBattle(Unaware, 1))
					{
						meanSpeed = battleDataPointer[0].pokemonStats[0].stats[BattleSpeed];
					}
					else
					{
						meanSpeed = battleDataPointer[0].pokemonStats[0].effectiveStats[BattleSpeed];
					}
					u32 meanOpponentSpeed;
					if (CheckForAbilityInBattle(Unaware, 0))
					{
						meanOpponentSpeed = battleDataPointer[0].pokemonStats[1].stats[BattleSpeed];
					}
					else
					{
						meanOpponentSpeed = battleDataPointer[0].pokemonStats[1].effectiveStats[BattleSpeed];
					}
					if (Maths::GetDelimitedRandom32BitValue(0x100) < CalculateFleeProbabilityValue(meanSpeed, meanOpponentSpeed))
					{
						battleDataPointer[0].battleDamage = Flee_Result_Succeeded;
					}
					else
					{
						battleDataPointer[0].battleDamage = Flee_Result_Failed;
					}
				}
			}
		}
	}
	else
	{
		battleDataPointer[0].battleDamage = Flee_Result_Cannot_Flee;
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintCallEffectMessage()
{
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	PokemonBattleData* data = (PokemonBattleData*)&battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]];
	if (data[0].primaryStatusBits.sleepTurns)
	{
		DrawStringOverTime((char*)&wokenByCall, 0, 0, &StopBattleScriptTextWait);
		data[0].primaryStatusBits.sleepTurns = 0;
		// Graphical update
	}
	else if (data[0].primaryStatusBits.hyper || data[0].secondaryStatusBits.confusion)
	{
		DrawStringOverTime((char*)&callString, 0, 0, &StopBattleScriptTextWait);
		data[0].primaryStatusBits.hyper = 0;
		data[0].secondaryStatusBits.confusion = 0;
		// Graphical update for hyper
	}
	else
	{
		DrawStringOverTime((char*)&callNoEffect, 0, 0, &StopBattleScriptTextWait);
	}
	battleScriptPointer++;
	return NotEnded;
}

u8 PrintFleeEffectMessage()
{
	SetTilesForTextRender();
	battleDataPointer[0].flags.battleScriptTextWaitFlag = 1;
	switch (battleDataPointer[0].battleDamage)
	{
		case Flee_Result_Cannot_Flee:
			DrawStringOverTime((char*)&noFlee, 0, 0, &StopBattleScriptTextWait);
			battleScriptPointer = (u8*)&Script_Unable_To_Flee;
			break;
		case Flee_Result_Failed_Trapped_Ability:
			DrawStringOverTime((char*)&abilityTrap, 0, 0, &StopBattleScriptTextWait);
			battleScriptPointer = (u8*)&Script_Unable_To_Flee;
			break;
		case Flee_Result_Failed_Trapped_Move:
			DrawStringOverTime((char*)&moveTrap, 0, 0, &StopBattleScriptTextWait);
			battleScriptPointer = (u8*)&Script_Unable_To_Flee;
			break;
		case Flee_Result_Run_Away:
			DrawStringOverTime((char*)&abilityFlee, 0, 0, 0);
			HandleKeyPresses = &CheckForTextContinuePressBattle;
			battleScriptPointer++;
			break;
		case Flee_Result_Succeeded:
			DrawStringOverTime((char*)&fled, 0, 0, 0);
			HandleKeyPresses = &CheckForTextContinuePressBattle;
			battleScriptPointer++;
			break;
	}
	return NotEnded;
}

u8 IncrementLoopCounter()
{
	if (battleScriptPointer[1] == 1)
	{
		battleDataPointer[0].loopCounter--;
	}
	else
	{
		battleDataPointer[0].loopCounter++;
	}
	battleScriptPointer += 2;
	return NotEnded;
}

u8 SetLoopCounter()
{
	u16 value = (u16)LoadUnalignedNumber(battleScriptPointer, 1, 2);
	battleDataPointer[0].loopCounter = value;
	battleScriptPointer += 3;
	return NotEnded;
}

u8 CopyLoopCounterTo()
{
	if (battleScriptPointer[1] == 1)
	{
		battleDataPointer[0].battleBanks[Target] = battleDataPointer[0].loopCounter;
	}
	else
	{
		battleDataPointer[0].battleBanks[User] = battleDataPointer[0].loopCounter;
	}
	battleScriptPointer += 2;
	return NotEnded;
}

u8 SetBattleDamageMultiplier()
{
	u32 value = LoadUnalignedNumber(battleScriptPointer, 1, 4);
	battleDataPointer[0].battleDamageMultiplier = value;
	battleScriptPointer += 5;
	return NotEnded;
}

u8 SetSecondaryStatus()
{
	PokemonBattleData* target = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[1]]];
	target[0].secondaryStatuses = LoadUnalignedNumber(battleScriptPointer, 2, 4);
	battleScriptPointer += 6;
	return NotEnded;
}

u8 SetSpecialBattleStatus()
{
	PokemonBattleData* target = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[battleScriptPointer[1]]];
	u32 value = LoadUnalignedNumber(battleScriptPointer, 3, 4);
	if (battleScriptPointer[2] == 1)
	{
		target[0].battleFlagsBank2 = value;
	}
	else
	{
		target[0].battleFlags = value;
	}
	battleScriptPointer += 7;
	return NotEnded;
}

u8 IncrementGeneralCounter()
{
	s32 value = (battleScriptPointer[2] == 0) ? 1 : -1;
	if (battleScriptPointer[1] == 1)
	{
		battleDataPointer[0].battleBanks[GenericCounter2] += value;
	}
	else
	{
		battleDataPointer[0].battleBanks[GenericCounter] += value;
	}
	battleScriptPointer += 3;
	return NotEnded;
}

u8 SetGeneralCounter()
{
	u32 index = (battleScriptPointer[1] == 1) ? GenericCounter2 : GenericCounter;
	battleDataPointer[0].battleBanks[index] = battleScriptPointer[2];
	battleScriptPointer += 3;
	return NotEnded;
}

u8 GetRandomValue()
{
	u16 limit = battleScriptPointer[2];
	if (limit == 0)
	{
		limit = 0x100;
	}
	u32 value = Maths::GetDelimitedRandom32BitValue(limit);
	if (battleScriptPointer[1] == 1)
	{
		battleDataPointer[0].battleBanks[GenericCounter2] = value;
	}
	else
	{
		battleDataPointer[0].battleBanks[GenericCounter] = value;
	}
	battleScriptPointer += 3;
	return NotEnded;
}
