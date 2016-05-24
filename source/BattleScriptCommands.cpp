/*
 * BattleScriptCommands.c
 *
 *  Created on: 8 Aug 2014
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "Scenes/Battles/BattleStrings.h"
#include "Core/LoadUnalignedCode.h"
#include "Core/Pokemon/Pokemon.h"
#include "Core/Maths.h"
#include "Text/TextFunctions.h"
#include "LibraryHeaders/libbattlescripts.h"
#include "LibraryHeaders/libbattleanimscripts.h"
#include "Core/Data/Flags.h"
#include "Tasks/ScriptRunners/BattleScriptRunner.h"
#include "Scenes/Battles/Battle.h"
#include "Scenes/SceneManager.h"
#include "Core/Game.h"
#include "Core/Data/Flags.h"
#include "Core/Data/Items.h"
#include "Core/Data/Moves.h"

using namespace Scenes::Battles;
using namespace Core;
using namespace Data;
using namespace Scenes;
using namespace Core::Pokemon;
using namespace Core::Data;
using namespace Tasks::ScriptRunners;

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

void SetTilesForTextRender(ScriptRunner* runner)
{
	Text::TextFunctions::SetTextColour(1, 6, 15);
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
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	for (u32 i = 0; i < battleDataPointer.battleBanks[NumBattlers]; i++)
	{
		if (side == 2 || (i & 1) == side)
		{
			u8 ability = battleDataPointer.pokemonStats[i].ability;
			if (BattleComparisonRoutine(ability, abilityID, Equals) == true)
			{
				return i;
			}
		}
	}
	return -1;
}

u32 CanItemBeUsed(PokemonBattleData* attacker, PokemonBattleData* defender)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u32 result = true;
	if (attacker[0].ability == Klutz || CheckForAbilityInBattle(Unnerve, (~(battleDataPointer.battleBanks[User] & 1) & 1)))
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
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	const BattleTypeStruct &battleType = ((Battle*)SceneManager::GetScene())->GetBattleTypeStruct();
	PokemonBattleData* beneficiary = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User]];
	PokemonBattleData* victim = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target]];
	u32 expGain = victim[0].mainPointer->GetBaseExperience();
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
		expGain = Maths::UnsignedDivide(expGain, 10 * battleDataPointer.participantInfo.numParticipants);
	}
	else
	{
		expGain = Maths::UnsignedDivide(expGain, 10 * battleDataPointer.participantInfo.numExpShareHolders);
	}
	expGain++;
	if (beneficiary[0].mainPointer->Decrypt(OTID) != Game::GetPlayer().completeTrainerID)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, 150);
	}
	if (Items::GetItemEffect(beneficiary[0].heldItem) == Item_Effect_Boost_Exp)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, GetSecondaryItemEffect(beneficiary[0].heldItem) * 10);
	}
#else
	if (beneficiary[0].mainPointer->Decrypt(OTID) != Game::GetPlayer().completeTrainerID)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, 150);
	}
	if (Items::GetItemEffect(beneficiary[0].heldItem) == Item_Effect_Boost_Exp)
	{
		expGain = Maths::UnsignedFractionalMultiplication(expGain, GetSecondaryItemEffect(beneficiary[0].heldItem) * 10);
	}
	if (mode != Exp_Share_Mode)
	{
		expGain = Maths::UnsignedDivide(expGain, 14 * battleDataPointer.participantInfo.numParticipants);
	}
	else
	{
		expGain = Maths::UnsignedDivide(expGain, 14 * battleDataPointer.participantInfo.numExpShareHolders);
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

u32 CheckForMoveCancellingStatuses(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 userBank = battleDataPointer.battleBanks[User];
	PokemonBattleData* attacker = &battleDataPointer.pokemonStats[userBank];
	PokemonBattleData* defender = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target]];
	u32 obedienceFlag = true;
	if (attacker[0].mainPointer->Decrypt(OTID) != Game::GetPlayer().completeTrainerID && !attacker[0].mainPointer->Decrypt(IsObedient))
	{
		u32 upperLimit = 10;
		u32 i;
		for (i = 0; i < 8; i++)
		{
			if (Flags::CheckFlag(badgeLevelEffects[i][0]))
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
	const MoveData &moveInfo = *Moves::GetMoveDataByIndex(battleDataPointer.moveIndex);
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
			runner->Call((u8*)&Script_Wake_Up);
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
		u32 value = ((battleDataPointer.weatherBits.sunny) ? 50 : ((battleDataPointer.weatherBits.hail || battleDataPointer.weatherBits.snow) ? 10 : 20));
#else
		// Flat 20% chance
		u32 value = 20;
#endif
		if (rand < value)
		{
			runner->Call((u8*)&Script_Unfreeze);
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
		u32 value = ((battleDataPointer.weatherBits.snow) ? 50 : ((battleDataPointer.weatherBits.rain) ? 20 : 0));
		if (rand < value)
		{
			runner->Call((u8*)&Script_Cure_Burn);
			return NotEnded;
		}
	}
#endif
	if (moveInfo.effectID == Effects_Echoed_Voice)
	{
		if (battleDataPointer.flags.echoedVoiceRaisedThisTurn == 0)
		{
			battleDataPointer.counterBits.echoedVoice++;
			battleDataPointer.flags.echoedVoiceRaisedThisTurn = 1;
		}
	}
	else
	{
		battleDataPointer.counterBits.echoedVoice = 0;
	}
	if (moveInfo.effectID != Effects_Fury_Cutter)
	{
		attacker[0].secondaryStatusBits.furyCutterCounter = 0;
	}
	if (moveInfo.effectID != Effects_Rollout)
	{
		attacker[0].secondaryStatusBits.rolloutUses = 0;
	}
	if (moveInfo.effectID == Effects_Judgement && attacker[0].heldItem >= Item_Fighting_Plate && attacker[0].heldItem <= Item_Fairy_Plate && battleDataPointer.counterBits.magicRoom == 0)
	{
		battleDataPointer.flags.moveTypeOverride = 1;
		battleDataPointer.battleBanks[MoveTypeOverrideValue] = attacker[0].heldItem - Item_Fighting_Plate + 1;
	}
	if (moveInfo.effectID == Effects_Techno_Blast && attacker[0].heldItem >= Item_Burn_Drive && attacker[0].heldItem <= Item_Shock_Drive)
	{
		battleDataPointer.flags.moveTypeOverride = 1;
		u32 type = moveInfo.type;
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
		battleDataPointer.battleBanks[MoveTypeOverrideValue] = type;
	}
	else if (moveInfo.effectID == Effects_Weather_Ball)
	{
		if (battleDataPointer.weatherBits.sunny)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Fire;
		}
		else if (battleDataPointer.weatherBits.hail || battleDataPointer.weatherBits.snow)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Ice;
		}
		else if (battleDataPointer.weatherBits.rain)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Water;
		}
		else if (battleDataPointer.weatherBits.sandstorm)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Rock;
		}
	}
	else if (moveInfo.effectID == Effects_Hidden_Power)
	{
		u32 i;
		u32 counter = 0;
		for (i = 0; i < 6; i++)
		{
			counter |= (attacker[0].mainPointer->Decrypt(HP_IV + i) & 1) << (1 << i);
		}
		counter *= 16;
		counter = Maths::UnsignedDivide(counter, 63);
		battleDataPointer.flags.moveTypeOverride = 1;
		battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Fighting + counter;
	}
	else if (moveInfo.effectID == Effects_Natural_Gift)
	{
		if (attacker[0].ability != Klutz)
		{
			u16 itemID = attacker[0].heldItem;
			if (itemID >= Item_Berry_Cheri_Berry && itemID <= Item_Berry_Babiri_Berry)
			{
				itemID = Maths::UnsignedModulus(itemID - Item_Berry_Cheri_Berry, 15);
				battleDataPointer.flags.moveTypeOverride = 1;
				battleDataPointer.battleBanks[MoveTypeOverrideValue] = naturalGiftTypes[itemID];
			}
			else if (itemID >= Item_Berry_Roseli_Berry && itemID <= Item_Berry_Kee_Berry)
			{
				battleDataPointer.flags.moveTypeOverride = 1;
				battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Fairy;
			}
			else if (itemID == Item_Berry_Maranga_Berry)
			{
				battleDataPointer.flags.moveTypeOverride = 1;
				battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Dark;
			}
		}
		else
		{

		}
	}
	if (attacker[0].battleStatusFlagsBank2.electrified)
	{
		battleDataPointer.flags.moveTypeOverride = 1;
		battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Electric;
	}
	else if (attacker[0].ability == Normalise)
	{
		battleDataPointer.flags.moveTypeOverride = 1;
		battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Normal;
	}
	else if (moveInfo.type == Type_Normal)
	{
		if (battleDataPointer.flags.ionDeluge)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Electric;
		}
		else if (attacker[0].ability == Aerilate)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Flying;
		}
		else if (attacker[0].ability == Pixilate)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Fairy;
		}
		else if (attacker[0].ability == Refrigerate)
		{
			battleDataPointer.flags.moveTypeOverride = 1;
			battleDataPointer.battleBanks[MoveTypeOverrideValue] = Type_Ice;
		}
	}
	if (moveInfo.effectID != Effects_Hits_Through_Protect)
	{
		if (defender[0].battleStatusFlags.protectedFlag)
		{
			battleScriptPointer = (u8*)&Script_Protect_Triggered;
			return NotEnded;
		}
		if (defender[0].battleStatusFlags.highPriorityProtected && moveInfo.priority > 0)
		{
			battleScriptPointer = (u8*)&Script_Quick_Guard_Triggered;
			return NotEnded;
		}
		if (defender[0].battleStatusFlags.wideGuardProtected && moveInfo.targets != 50)
		{
			battleScriptPointer = (u8*)&Script_Wide_Guard_Triggered;
			return NotEnded;
		}
		if (defender[0].battleStatusFlags.craftyShieldProtected && moveInfo.effectID != Effects_Perish_Song && moveInfo.category == Category_Status)
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

u32 HitMissCalculation(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u32 userBank = battleDataPointer.battleBanks[User];
	u32 defenderBank = battleDataPointer.battleBanks[Target];
	PokemonBattleData* attacker = &battleDataPointer.pokemonStats[userBank];
	PokemonBattleData* defender = &battleDataPointer.pokemonStats[defenderBank];
	const MoveData &moveInfo = *Moves::GetMoveDataByIndex(battleDataPointer.moveIndex);
	u32 accuracy = moveInfo.accuracy;
	if (accuracy != 0)
	{
		if ((defender[0].battleStatusFlags.chargingDive && moveInfo.specialFlagsStruct.hitsThroughDive == 0) ||
				(defender[0].battleStatusFlags.chargingFly && moveInfo.specialFlagsStruct.hitsThroughFly == 0) ||
				(defender[0].battleStatusFlags.chargingDig && moveInfo.specialFlagsStruct.hitsThroughDig == 0))
		{
			battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4);
			return NotEnded;
		}
		accuracy *= evasionAccuracyChart[attacker[0].statLevels[Accuracy]];
		if (moveInfo.effectID == Effects_Sacred_Sword)
		{
			accuracy = Maths::UnsignedDivide(accuracy, 100);
		}
		else
		{
			accuracy = Maths::UnsignedDivide(accuracy, evasionAccuracyChart[defender[0].statLevels[Evasion]]);
		}
		if (Maths::GetDelimitedRandom32BitValue(100) >= accuracy)
		{
			battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4);
			return NotEnded;
		}
	}
	battleScriptPointer += 5;
	return NotEnded;
}

void StopBattleScriptTextWait(u32 number)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	battleDataPointer.flags.battleScriptTextWaitFlag = 0;
	battleDataPointer.flags.battleScriptTextContinueFlag = 1;
}

u32 PokemonUsedMessage(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	if (battleDataPointer.flags.battleScriptTextContinueFlag)
	{
		battleDataPointer.flags.battleScriptTextContinueFlag = 0;
		battleScriptPointer++;
		return NotEnded;
	}
	else if (battleDataPointer.flags.battleScriptTextWaitFlag)
	{
		return WaitForFrames;
	}
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	Text::TextFunctions::DrawStringOverTime((char*)&pokemonUsedString, 0, 0, &StopBattleScriptTextWait);
	return WaitForFrames;
}

u32 DecrementPP(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u32 userBank = battleDataPointer.battleBanks[User];
	u32 defenderBank = battleDataPointer.battleBanks[Target];
	PokemonBattleData* attacker = &battleDataPointer.pokemonStats[userBank];
	if (!attacker[0].secondaryStatusBits.ppReduced)
	{
		PokemonBattleData* defender = &battleDataPointer.pokemonStats[defenderBank];
		u32 moveIndex = battleDataPointer.moveIndex;
		u32 ppValue = battleDataPointer.pokemonStats[userBank].pp[moveIndex];
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
		Core::Pokemon::Pokemon* thePokemon = attacker[0].mainPointer;
		thePokemon->Encrypt(Move1PP + moveIndex, ppValue);
	}
	battleScriptPointer++;
	return NotEnded;
}

u32 ApplyWeatherBasedModifiers(u32 currentDamage, u32 moveType)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	if (CheckForAbilityInBattle(Air_Lock, 2) == false && CheckForAbilityInBattle(Cloud_Nine, 2) == false)
	{
		if (battleDataPointer.weatherBits.sunny)
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
		else if (battleDataPointer.weatherBits.rain)
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
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
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
	u32 typeValue = battleDataPointer.typeChartCallback(typeStrengths[moveType][defenderType1]);
	if (defender[0].battleStatusFlags.foresight)
	{
		typeValue = battleDataPointer.typeChartCallback(CheckAdditionalTypeEffects(defenderType1, moveType, typeValue, (u8TripleArray*)&foresightOverrides));
	}
	else if (defender[0].battleStatusFlagsBank2.miracleEye)
	{
		typeValue = battleDataPointer.typeChartCallback(CheckAdditionalTypeEffects(defenderType1, moveType, typeValue, (u8TripleArray*)&miracleEyeOverrides));
	}
	if (typeValue && defenderType2 != defenderType1)
	{
		u32 secondaryTypeValue = battleDataPointer.typeChartCallback(typeStrengths[moveType][defenderType2]);
		if (defender[0].battleStatusFlags.foresight)
		{
			secondaryTypeValue = battleDataPointer.typeChartCallback(CheckAdditionalTypeEffects(defenderType2, moveType, typeValue, (u8TripleArray*)&foresightOverrides));
		}
		else if (defender[0].battleStatusFlagsBank2.miracleEye)
		{
			secondaryTypeValue = battleDataPointer.typeChartCallback(CheckAdditionalTypeEffects(defenderType2, moveType, typeValue, (u8TripleArray*)&miracleEyeOverrides));
		}
		typeValue = Maths::UnsignedFractionalMultiplication(typeValue, secondaryTypeValue);
	}
	if (defender[0].battleStatusFlags.tertiaryTypeActive && (defenderType1 != defenderType3) && (defenderType2 != defenderType3))
	{
		u32 secondaryTypeValue = battleDataPointer.typeChartCallback(typeStrengths[moveType][defenderType3]);
		if (defender[0].battleStatusFlags.foresight)
		{
			secondaryTypeValue = battleDataPointer.typeChartCallback(CheckAdditionalTypeEffects(defenderType3, moveType, typeValue, (u8TripleArray*)&foresightOverrides));
		}
		else if (defender[0].battleStatusFlagsBank2.miracleEye)
		{
			secondaryTypeValue = battleDataPointer.typeChartCallback(CheckAdditionalTypeEffects(defenderType3, moveType, typeValue, (u8TripleArray*)&miracleEyeOverrides));
		}
		typeValue = Maths::UnsignedFractionalMultiplication(typeValue, secondaryTypeValue);
	}
	return typeValue;
}

u32 ApplyTypeBasedModifiers(PokemonBattleData* defender, u32 moveType, u32 currentDamage)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
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
	battleDataPointer.flags.attackEffectiveness = value;
	return currentDamage;
}

u32 SetCriticalHitFlagsAndValues(u32 currentDamage, u32 attackerAbility)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	battleDataPointer.flags.criticalHitFlag = 1;
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
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	battleDataPointer.flags.criticalHitFlag = 0;
	u32 defenderAbility = defender[0].ability;
	if (defenderAbility != Battle_Armour && defenderAbility != Shell_Armour)
	{
		u32 attackerAbility = attacker[0].ability;
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

u32 ApplyAbilityModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, const MoveData &moveInfo)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	const BattleTypeStruct &battleType = ((Battle*)SceneManager::GetScene())->GetBattleTypeStruct();
	u32 moveType = moveInfo.type;
	if (battleDataPointer.flags.moveTypeOverride)
	{
		moveType = battleDataPointer.battleBanks[MoveTypeOverrideValue];
	}
	{
		u32 attackerAbility = attacker[0].ability;
		u32 defenderAbility = defender[0].ability;
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
			else if (attacker[0].primaryStatusBits.burned && moveInfo.category == Category_Physical)
			{
				currentDamage >>= 1;
			}
		}
		if (battleType.info.isDoubleBattle)
		{
			if (attackerAbility == Plus)
			{
				if (battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User] ^ 2].ability == Minus)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
				}
			}
			else if (attackerAbility == Minus)
			{
				if (battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User] ^ 2].ability == Plus)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
				}
			}
		}
		if (attackerAbility == Defeatist && (attacker[0].currentHP <= (attacker[0].maximumHP >> 1)))
		{
			currentDamage >>= 1;
		}
		if ((attackerAbility == Pure_Power || attackerAbility == Huge_Power) && moveInfo.category == Category_Physical)
		{
			currentDamage <<= 1;
		}
		if (attackerAbility == Solar_Power && battleDataPointer.weatherBits.sunny && moveInfo.category == Category_Special)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (attackerAbility == Hustle && moveInfo.category == Category_Physical)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (attackerAbility == Slow_Start && moveInfo.category == Category_Physical && attacker[0].slowStartCounter < 4)
		{
			currentDamage >>= 1;
		}
		if (attacker[0].battleStatusFlags.flashFireTriggered && moveType == Type_Fire)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (battleType.info.isDoubleBattle && battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User] ^ 2].species == Cherrim && battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User] ^ 2].ability == Flower_Gift && moveInfo.category == Category_Physical)
		{
			currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
		}
		if (attackerAbility != Mould_Breaker && attackerAbility != Teravolt && attackerAbility != Turboblaze)
		{
			switch (defenderAbility)
			{
				case Wonder_Guard:
					if (battleDataPointer.flags.attackEffectiveness < SuperEffective)
					{
						battleDataPointer.flags.attackEffectiveness = NoEffect;
						battleDataPointer.flags.wonderGuardTriggered = 1;
						currentDamage = 0;
					}
					break;
				case Damp:
					if (moveInfo.effectID == Effects_Self_Destruct)
					{
						battleDataPointer.flags.attackEffectiveness = NoEffect;
						battleDataPointer.flags.dampTriggered = 1;
						currentDamage = 0;
					}
					break;
				case Volt_Absorb:
					if (moveType == Type_Electric)
					{
						battleDataPointer.flags.attackEffectiveness = InvertedToHeal;
						battleDataPointer.flags.voltAbsorbTriggered = 1;
					}
					break;
				case Water_Absorb:
					if (moveType == Type_Water)
					{
						battleDataPointer.flags.attackEffectiveness = InvertedToHeal;
						battleDataPointer.flags.waterAbsorbTriggered = 1;
					}
					break;
				case Sap_Sipper:
					if (moveType == Type_Grass)
					{
						battleDataPointer.flags.attackEffectiveness = NoEffect;
						battleDataPointer.flags.sapSipperTriggered = 1;
						currentDamage = 0;
					}
					break;
				case Levitate:
					if (moveType == Type_Ground)
					{
						battleDataPointer.flags.attackEffectiveness = NoEffect;
						battleDataPointer.flags.levitateTriggered = 1;
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
	if (battleType.info.isDoubleBattle && battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target] ^ 2].species == Cherrim && battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target] ^ 2].ability == Flower_Gift && moveInfo.category == Category_Physical)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 67);
	}
	return currentDamage;
}

u32 ApplyBasePowerModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, const MoveData &moveInfo)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u32 ability = attacker[0].ability;
	if (ability == Technician && currentDamage <= 60)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
	}
	if (ability == Flare_Boost && attacker[0].primaryStatusBits.burned && moveInfo.category == Category_Physical)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
	}
	if (ability == Analytic)
	{
		u32 i;
		for (i = 0; i < battleDataPointer.battleBanks[NumBattlers]; i++)
		{
			if (battleDataPointer.battleOrder[i] == battleDataPointer.battleBanks[Target])
			{
				currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 130);
				break;
			}
			else if (battleDataPointer.battleOrder[i] == battleDataPointer.battleBanks[User])
			{
				break;
			}
		}
	}
	if (ability == Reckless && moveInfo.effectID == Effects_Recoil)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 120);
	}
	if (ability == Iron_Fist && moveInfo.specialFlagsStruct.punching)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 120);
	}
	if (ability == Toxic_Boost && (attacker[0].primaryStatusBits.poisoned || attacker[0].primaryStatusBits.badlyPoisoned) && moveInfo.category == Category_Physical)
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
		u32 type = moveInfo.type;
		if (battleDataPointer.flags.moveTypeOverride)
		{
			type = battleDataPointer.battleBanks[MoveTypeOverrideValue];
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
			for (i = 0; i < battleDataPointer.battleBanks[NumBattlers]; i++)
			{
				if (battleDataPointer.pokemonStats[i].battleStatusFlags.waterSport)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 33);
					break;
				}
			}
		}
		if (type == Type_Electric)
		{
			u32 i;
			for (i = 0; i < battleDataPointer.battleBanks[NumBattlers]; i++)
			{
				if (battleDataPointer.pokemonStats[i].battleStatusFlags.mudSport)
				{
					currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 33);
					break;
				}
			}
		}
	}
	if (ability == Sheer_Force && moveInfo.specialFlagsStruct.sheerForceBlockable)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 130);
		battleDataPointer.flags.extraEffectBlock = 1;
	}
	if (moveInfo.effectID == Effects_Facade && (attacker[0].primaryStatusBits.paralysed || attacker[0].primaryStatusBits.burned || attacker[0].primaryStatusBits.poisoned || attacker[0].primaryStatusBits.badlyPoisoned))
	{
		currentDamage <<= 1;
	}
	if (moveInfo.effectID == Effects_Brine && (defender[0].currentHP <= (defender[0].maximumHP >> 1)))
	{
		currentDamage <<= 1;
	}
	if (moveInfo.effectID == Effects_Venoshock && (defender[0].primaryStatusBits.badlyPoisoned || defender[0].primaryStatusBits.poisoned))
	{
		currentDamage <<= 1;
	}
	if (moveInfo.effectID == Effects_Retaliate && attacker[0].battleStatusFlags.retaliatePowerUp)
	{
		currentDamage <<= 1;
	}
	if (moveInfo.effectID == Effects_Fusion_Move && attacker[0].battleStatusFlags.fusionPowerUp)
	{
		currentDamage <<= 1;
	}
	if (attacker[0].battleStatusFlags.meFirst)
	{
		currentDamage = Maths::UnsignedFractionalMultiplication(currentDamage, 150);
	}
	if (moveInfo.effectID == Effects_SolarBeam && battleDataPointer.weatherBits.sunny == 0 && battleDataPointer.weather != 0)
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

u32 GetMoveBasePowerFromData(PokemonBattleData* attacker, PokemonBattleData* defender, const MoveData &moveInfo, ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	const BattleTypeStruct &battleType = ((Battle*)SceneManager::GetScene())->GetBattleTypeStruct();
	u32 returnable;
	switch (moveInfo.effectID)
	{
		case Effects_Frustration:
			returnable = max(Maths::UnsignedDivide((255 - attacker[0].happiness) * 10, 25), 1);
			break;
		case Effects_Payback:
			returnable = ((defender[0].battleStatusFlags.moved) ? moveInfo.basePower << 1 : moveInfo.basePower);
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
			returnable = (attacker[0].damageReceivedThisTurn) ? moveInfo.basePower << 1 : moveInfo.basePower;
			break;
		case Effects_Gyro_Ball:
		{
			u32 speed1 = (defender[0].ability == Unaware) ? attacker[0].stats[BattleSpeed] : attacker[0].effectiveStats[BattleSpeed];
			u32 speed2 = (attacker[0].ability == Unaware) ? defender[0].stats[BattleSpeed] : defender[0].effectiveStats[BattleSpeed];
			returnable = min(moveInfo.basePower, 25 * Maths::UnsignedDivide(speed2, speed1));
			break;
		}
		case Effects_Eruption:
			returnable = max(Maths::UnsignedDivide(moveInfo.basePower * attacker[0].currentHP, attacker[0].maximumHP), 1);
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
			returnable = max((moveInfo.basePower >> 1) + (20 * counter), moveInfo.basePower);
			returnable = min(returnable, moveInfo.secondaryInformation);
			break;
		}
		case Effects_Fury_Cutter:
			returnable = moveInfo.basePower * (1 << attacker[0].secondaryStatusBits.furyCutterCounter);
			break;
		case Effects_Low_Kick:
			// Note, Pokédex data not complete, so not done as yet
			returnable = 20;
			break;
		case Effects_Echoed_Voice:
			returnable = min(moveInfo.basePower * (battleDataPointer.counterBits.echoedVoice + 1), 200);
			break;
		case Effects_Hex:
			returnable = (defender[0].primaryStatus != 0) ? moveInfo.basePower << 1 : moveInfo.basePower;
			break;
		case Effects_Wring_Out:
			returnable = Maths::UnsignedDivide(moveInfo.basePower * Maths::UnsignedDivide(defender[0].currentHP * 100, defender[0].maximumHP), 100);
			break;
		case Effects_Assurance:
			returnable = (defender[0].battleStatusFlags.damaged) ? moveInfo.basePower << 1 : moveInfo.basePower;
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
			returnable = moveInfo.basePower * (counter + 1);
			break;
		}
		case Effects_Acrobatics:
			returnable = (attacker[0].heldItem == 0) ? moveInfo.basePower << 1 : moveInfo.basePower;
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
			u32 pp = battleDataPointer.battleBanks[User] ^ 2;
			pp = battleDataPointer.pokemonStats[pp].pp[battleDataPointer.battleBanks[MoveSelection1 + pp]];
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
			returnable = moveInfo.basePower;
			if (battleType.info.isDoubleBattle)
			{
				u32 allyMove = battleDataPointer.battleBanks[User] ^ 2;
				allyMove = battleDataPointer.pokemonStats[allyMove].moves[battleDataPointer.battleBanks[MoveSelection1 + allyMove]];
				if (allyMove == battleDataPointer.moveIndex)
				{
					returnable <<= 1;
				}
			}
			break;
		case Effects_Triple_Kick:
			returnable = (runner->GetBank(3) + 1) * moveInfo.basePower;
			break;
		case Effects_Wake_Up_Slap:
			returnable = (defender[0].primaryStatusBits.sleepTurns != 0) ? moveInfo.basePower << 1 : moveInfo.basePower;
			break;
		case Effects_Smelling_Salt:
			returnable = (defender[0].primaryStatusBits.paralysed) ? moveInfo.basePower << 1 : moveInfo.basePower;
			break;
		case Effects_Weather_Ball:
			returnable = (battleDataPointer.weather) ? moveInfo.basePower << 1 : moveInfo.basePower;
			break;
		case Effects_Gust:
			returnable = (defender[0].battleStatusFlags.chargingFly) ? moveInfo.basePower << 1 : moveInfo.basePower;
			break;
		case Effects_Hidden_Power:
		{
#if GenVIHiddenPower == TRUE
			returnable = moveInfo.basePower;
#else
			u32 i;
			u32 counter = 0;
			for (i = 0; i < 6; i++)
			{
				u32 value = attacker[0].mainPointer->Decrypt(HP_IV + i) >> 2;
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
			returnable = moveInfo.basePower * defender[0].secondaryStatusBits.stockpile;
			break;
		case Effects_Pursuit:
			returnable = (defender[0].battleStatusFlags.switching) ? moveInfo.basePower << 1 : moveInfo.basePower;
			break;
		case Effects_Present:
		{
			u32 rand = runner->GetBank(0);
			if (rand < 60)
			{
				returnable = moveInfo.basePower;
			}
			else if (rand < 90)
			{
				returnable = moveInfo.basePower << 1;
			}
			else
			{
				returnable = moveInfo.basePower * 3;
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
				returnable = moveInfo.basePower;
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
			battleDataPointer.flags.damageTypeDealt = factor;
			returnable = moveInfo.basePower + (moveInfo.secondaryInformation * factor);
			break;
		}
		case Effects_Rollout:
			returnable = moveInfo.basePower * (1 << (attacker[0].secondaryStatusBits.rolloutUses + attacker[0].battleStatusFlags.usedDefenceCurl));
			break;
		case Effects_Fling:
			returnable = moveInfo.basePower * (1 << (attacker[0].secondaryStatusBits.rolloutUses + attacker[0].battleStatusFlags.usedDefenceCurl));
			break;
		case Effects_Pledge:
			returnable = (attacker[0].battleStatusFlags.pledgeTriggered) ? moveInfo.secondaryInformation : moveInfo.basePower;
			break;
		case Effects_Knock_Off:
			returnable = (CanKnockItemOff(defender, true)) ? Maths::UnsignedFractionalMultiplication(moveInfo.basePower, 150) : moveInfo.basePower;
			break;
		default:
			returnable = moveInfo.basePower;
			break;
	}
	returnable = ApplyBasePowerModifiers(returnable, attacker, defender, moveInfo);
	return returnable;
}

u32 CalculateDamage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 damage = 0;
	u16 moveID = battleDataPointer.moveIndex;
	PokemonBattleData* attacker = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User]];
	PokemonBattleData* defender = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target]];
	u32 attackerIndex;
	u32 defenderIndex;
	const MoveData &moveInfo = *Moves::GetMoveDataByIndex(moveID);
	if (moveInfo.specialFlagsStruct.specialistDamageRoutine)
	{
		switch (moveInfo.effectID)
		{
			case Effects_Psywave:
				damage = max(1, Maths::UnsignedDivide((Maths::GetDelimitedRandom32BitValue(101) + 50) * attacker[0].level, 100));
				break;
			case Effects_Night_Shade:
				damage = attacker[0].level;
				break;
			case Effects_Sonic_Boom:
				damage = moveInfo.basePower;
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
		battleDataPointer.flags.attackEffectiveness = NormalDamage;
	}
	else
	{
		{
			u32 category = moveInfo.category;
			if (category == Category_Status)
			{
				runner->SetBank(0, 0);
				battleScriptPointer++;
				return NotEnded;
			}
			if (moveInfo.category == Category_Physical)
			{
				attackerIndex = BattleAttack;
				defenderIndex = BattleDefence;
			}
			else
			{
				attackerIndex = BattleSpecialAttack;
				if (moveInfo.effectID == Effects_Special_Physical)
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
		damage *= GetMoveBasePowerFromData(attacker, defender, moveInfo, runner);
		{
			u32 value;
			{
				if (moveInfo.effectID == Effects_Foul_Play)
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
				if (attacker[0].species == Clamperl && attacker[0].heldItem == Item_Deep_Sea_Tooth && moveInfo.category == Category_Special)
				{
					value <<= 1;
				}
				if (attacker[0].species == Pikachu && attacker[0].heldItem == Item_Light_Ball)
				{
					value <<= 1;
				}
				if ((attacker[0].species == Latios || attacker[0].species == Latias) && attacker[0].heldItem == Item_Soul_Dew && moveInfo.category == Category_Special)
				{
					value = Maths::UnsignedFractionalMultiplication(value, 150);
				}
				if (attacker[0].heldItem == Item_Choice_Band && moveInfo.category == Category_Physical)
				{
					value = Maths::UnsignedFractionalMultiplication(value, 150);
				}
				if (attacker[0].heldItem == Item_Choice_Specs && moveInfo.category == Category_Special)
				{
					value = Maths::UnsignedFractionalMultiplication(value, 150);
				}
			}
			damage *= ApplyAbilityModifiers(value, attacker, defender, moveInfo);
		}
		{
			u32 defenderValue;
			if (attacker[0].ability == Unaware || moveInfo.effectID == Effects_Chip_Away)
			{
				defenderValue = defender[0].stats[defenderIndex];
			}
			else
			{
				defenderValue = defender[0].effectiveStats[defenderIndex];
			}
			if (defender[0].ability != Klutz)
			{
				if (defender[0].heldItem == Item_Marvel_Scale && defender[0].primaryStatus && moveInfo.category == Category_Physical)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
				if (defender[0].species == Clamperl && defender[0].heldItem == Item_Deep_Sea_Scale && moveInfo.category == Category_Special)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
				if (defender[0].species == Ditto && defender[0].heldItem == Item_Metal_Powder && moveInfo.category == Category_Physical && defender[0].battleStatusFlags.transformed == 0)
				{
					defenderValue <<= 1;
				}
				if ((defender[0].species == Latios || defender[0].species == Latias) && defender[0].heldItem == Item_Soul_Dew && moveInfo.category == Category_Special)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
				if (!defender[0].mainPointer->IsFullyEvolved() && defender[0].heldItem == Item_Eviolite)
				{
					defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
				}
			}
			if (battleDataPointer.weatherBits.sandstorm && defenderIndex == BattleSpecialDefence && BattlePokemonHasType(defender, Type_Rock) && CheckForAbilityInBattle(Air_Lock, 2) == false && CheckForAbilityInBattle(Cloud_Nine, 2) == false)
			{
				defenderValue = Maths::UnsignedFractionalMultiplication(defenderValue, 150);
			}
			damage = Maths::UnsignedDivide(damage, defenderValue);
		}
		damage = Maths::UnsignedDivide(damage, 50);
		damage += 2;
		// Multi-target Modifier - absent
		// as moves do not currently have such a setting
		u32 type = moveInfo.type;
		if (battleDataPointer.flags.moveTypeOverride)
		{
			type = battleDataPointer.battleBanks[MoveTypeOverrideValue];
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
	if (battleDataPointer.flags.attackEffectiveness != NoEffect)
	{
		damage = max(1, damage);
	}
	damage = Maths::UnsignedFractionalMultiplication(damage, runner->GetBank(1));
	runner->SetBank(0, damage);
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 StoreByte(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	u8* address = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4);
	u32 addressLoc = (u32)address;
	if ((addressLoc >= 0x02000000 && addressLoc < 0x02040000) || (addressLoc >= 0x03000000 && addressLoc < 0x03008000))
	{
		address[0] = battleScriptPointer[5];
	}
	battleScriptPointer += 6;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 StoreHalfWord(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	u16* address = (u16*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4);
	u32 addressLoc = (u32)address;
	if (((addressLoc >= 0x02000000 && addressLoc < 0x02040000) || (addressLoc >= 0x03000000 && addressLoc < 0x03008000)) && ((addressLoc & 1) == 0))
	{
		address[0] = (u16)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 2);
	}
	battleScriptPointer += 7;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 StoreWord(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32* address = (u32*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4);
	u32 addressLoc = (u32)address;
	if (((addressLoc >= 0x02000000 && addressLoc < 0x02040000) || (addressLoc >= 0x03000000 && addressLoc < 0x03008000)) && ((addressLoc & 3) == 0))
	{
		address[0] = (u32)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 4);
	}
	battleScriptPointer += 9;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 JumpIf(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	const BattleTypeStruct &battleType = ((Battle*)SceneManager::GetScene())->GetBattleTypeStruct();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 context = battleScriptPointer[1];
	switch (context)
	{
		case JumpIfByte:
		{
			u8* address = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4);
			if (BattleComparisonRoutine(address[0], battleScriptPointer[6], battleScriptPointer[7]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 8, 4);
			}
			else
			{
				battleScriptPointer += 12;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfHalfWord:
		{
			u8* address = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4);
			if (BattleComparisonRoutine(address[0], UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 6, 2), battleScriptPointer[8]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 9, 4);
			}
			else
			{
				battleScriptPointer += 13;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfWord:
		{
			u8* address = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4);
			if (BattleComparisonRoutine(address[0], UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 6, 4), battleScriptPointer[10]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 11, 4);
			}
			else
			{
				battleScriptPointer += 15;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfSpecies:
		{
			u16 species = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].species;
			if (BattleComparisonRoutine(species, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfWeather:
		{
			u16 weather = battleDataPointer.weather;
			if (BattleComparisonRoutine(weather, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 2), battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfHeldItem:
		{
			u16 heldItem = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].heldItem;
			if (BattleComparisonRoutine(heldItem, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfAbility:
		{
			u32 ability = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].ability;
			if (BattleComparisonRoutine(ability, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfStatLevel:
		{
			u32 stat = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].statLevels[battleScriptPointer[3]];
			if (BattleComparisonRoutine(stat, battleScriptPointer[4], battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfStatus:
		{
			u32 status = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].primaryStatus;
			if (BattleComparisonRoutine(status, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 4), battleScriptPointer[7]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 8, 4);
			}
			else
			{
				battleScriptPointer += 12;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfSecondaryStatus:
		{
			u32 status = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].secondaryStatuses;
			if (BattleComparisonRoutine(status, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 4), battleScriptPointer[7]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 8, 4);
			}
			else
			{
				battleScriptPointer += 12;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfSpecialStatus:
		{
			u32 status;
			if (battleScriptPointer[2] == 1)
			{
				status = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[3]]].battleFlagsBank2;
			}
			else
			{
				status = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[3]]].battleFlags;
			}
			if (BattleComparisonRoutine(status, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 4, 4), battleScriptPointer[8]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 9, 4);
			}
			else
			{
				battleScriptPointer += 13;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfPrimaryType:
		{
			u32 type = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].type1;
			if (BattleComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfSecondaryType:
		{
			u32 type = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].type2;
			if (BattleComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfTertiaryType:
		{
			u32 type = battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[2]]].type3;
			if (BattleComparisonRoutine(type, battleScriptPointer[3], battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfArray:
		{
			u8* address1 = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4);
			u8* address2 = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 6, 4);
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
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 12, 4);
			}
			else
			{
				battleScriptPointer += 16;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfAbilityPresent:
		{
			u32 abilityID = battleScriptPointer[2];
			if (CheckForAbilityInBattle(abilityID, 2) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 4, 4);
			}
			else
			{
				battleScriptPointer += 8;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfCannotSwitch:
		{
			u32 value = battleDataPointer.battleBanks[battleScriptPointer[2]];
			PokemonBattleData* data = &battleDataPointer.pokemonStats[value];
			if (BattlePokemonHasType(data, Type_Ghost) == false && (data[0].battleStatusFlags.trappedInBattle || CheckForAbilityInBattle(Arena_Trap, (~(value & 1) & 1)) == true || (CheckForAbilityInBattle(Magnet_Pull, (~(value & 1) & 1)) == true && BattlePokemonHasType(data, Type_Steel) == true)))
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 4);
			}
			else
			{
				battleScriptPointer += 7;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfTurnCounter:
		{
			if (BattleComparisonRoutine(battleDataPointer.battleTurnsCounter, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 2), battleScriptPointer[5]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 6, 4);
			}
			else
			{
				battleScriptPointer += 10;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfCannotSleep:
		{
			u32 value = battleDataPointer.battleBanks[battleScriptPointer[2]];
			PokemonBattleData* data = &battleDataPointer.pokemonStats[value];
			if (data[0].ability == Insomnia || data[0].ability == Vital_Spirit || data[0].battleStatusFlags.cannotSleep)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 4);
			}
			else
			{
				battleScriptPointer += 7;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfDamageType:
		{
			if (BattleComparisonRoutine(battleDataPointer.flags.damageTypeDealt, battleScriptPointer[2], battleScriptPointer[3]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 4, 4);
			}
			else
			{
				battleScriptPointer += 8;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfMoveEffect:
		{
			if (BattleComparisonRoutine(Moves::GetMoveDataByIndex(battleDataPointer.moveIndex)->effectID, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 2), battleScriptPointer[4]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 5, 4);
			}
			else
			{
				battleScriptPointer += 9;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfBattleType:
		{
			if (BattleComparisonRoutine(battleType.basicInfo, UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4), battleScriptPointer[6]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 7, 4);
			}
			else
			{
				battleScriptPointer += 11;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
		case JumpIfLoopCounter:
		{
			if (BattleComparisonRoutine(battleDataPointer.battleBanks[NumBattlers], runner->GetBank(3), battleScriptPointer[2]) == true)
			{
				battleScriptPointer = (u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 4);
			}
			else
			{
				battleScriptPointer += 7;
				runner->SetScriptPointer(battleScriptPointer);
			}
			break;
		}
	}
	return NotEnded;
}

u32 SetMovePrimaryEffect(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	runner->SetBank(1, (runner->GetBank(1) & 0xFFFF0000) | battleScriptPointer[1]);
	runner->SetBank(2, (runner->GetBank(1) & 0xFFFF0000) | battleScriptPointer[2]);
	battleScriptPointer += 3;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 SetMoveSecondaryEffect(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	runner->SetBank(1, (runner->GetBank(1) & 0xFFFF) | (battleScriptPointer[1] << 0x10));
	runner->SetBank(2, (runner->GetBank(1) & 0xFFFF) | (battleScriptPointer[2] << 0x10));
	battleScriptPointer += 3;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 ExecuteMoveAnimation(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (Game::GetConstOptions().playAnimations)
	{
		battleDataPointer.flags.waitForMoveAnimation = 1;
		// Go about getting move animation script and setting it up for use
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 WaitMoveAnimation(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (battleDataPointer.flags.waitForMoveAnimation == 0)
	{
		battleScriptPointer++;
		runner->SetScriptPointer(battleScriptPointer);
		return NotEnded;
	}
	return WaitForFrames;
}

u32 ExecuteDamageReceptionAnimation(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	switch (battleDataPointer.flags.attackEffectiveness)
	{
		case NoEffect:
			break;
		case Ineffective:
			// Play not effective SFX
			//battleDataPointer.flags.waitForMoveAnimation = 1;
			break;
		case NormalDamage:
			// Play normal effectiveness SFX
			//battleDataPointer.flags.waitForMoveAnimation = 1;
			break;
		case SuperEffective:
			// Play super effective SFX
			//battleDataPointer.flags.waitForMoveAnimation = 1;
			break;
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 ApplyCalculatedDamage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	PokemonBattleData* defender = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target]];
	if (defender[0].currentHP <= runner->GetBank(0))
	{
		if (Moves::GetMoveDataByIndex(battleDataPointer.moveIndex)->effectID == Effects_False_Swipe)
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
		defender[0].currentHP -= runner->GetBank(0);
	}
	defender[0].mainPointer->Encrypt(CurrentHP, defender[0].currentHP);
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 UpdateHPBar(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	//battleDataPointer.flags.waitForMoveAnimation = 1;
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 FaintIfNecessary(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 targetBank = battleDataPointer.battleBanks[Target];
	if (battleDataPointer.pokemonStats[targetBank].currentHP == 0)
	{
		u32 i;
		u32 counter = 0;
		for (i = 0; i < 6; i++)
		{
			Core::Pokemon::Pokemon* target = (targetBank & 1) ? ((Battle*)SceneManager::GetScene())->GetEnemyBattlerByIndex(i) : Game::GetPartyPokemon(i);
			if (target->Decrypt(CurrentHP) != 0)
			{
				counter++;
			}
		}
		if (counter == 0)
		{
			if ((targetBank & 1) == 0)
			{
				battleScriptPointer = (u8*)&Battle_Script_White_Out;
				runner->SetScriptPointer(battleScriptPointer);
			}
			else
			{
				battleScriptPointer = (u8*)&Battle_Script_Faint_With_Battle_End;
				runner->SetScriptPointer(battleScriptPointer);
			}
		}
		else
		{
			runner->Call((u8*)&Battle_Script_Faint);
		}
	}
	else
	{
		battleScriptPointer++;
		runner->SetScriptPointer(battleScriptPointer);
	}
	return NotEnded;
}

u32 CalculateExperience(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	runner->SetBank(0, CalculateExperienceGain(0));
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 ApplyEVs(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	PokemonBattleData* attacker = (PokemonBattleData*)&battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User]];
	PokemonBattleData* defender = (PokemonBattleData*)&battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target]];
	{
		u32 evGain = defender[0].mainPointer->GetEVGain();
		u32 i;
		u32 primaryItemCheck = (GetItemEffect(attacker[0].heldItem) == Item_Effect_Boost_EVs);
		u32 value = GetSecondaryItemEffect(attacker[0].heldItem);
		for (i = 0; i < 6; i++)
		{
			if (attacker[0].mainPointer->SumEVs() == 510)
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
			if (attacker[0].mainPointer->Decrypt(PokerusStatus))
			{
				evBoost <<= 1;
			}
			evBoost = min(0xFF, evBoost + attacker[0].mainPointer->Decrypt(HP_EV + i));
			if (attacker[0].mainPointer->AllowEVAddition(evBoost, i))
			{
				attacker[0].mainPointer->Encrypt(HP_EV + i, evBoost);
			}
			else
			{
				attacker[0].mainPointer->Encrypt(HP_EV + i, attacker[0].mainPointer->Decrypt(HP_EV + i) + (510 - attacker[0].mainPointer->SumEVs()));
			}
		}
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 ApplyMoveEffects(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 i;
	for (i = 0; i < MaxNumEffects; i++)
	{
		u32 effectID = (runner->GetBank(1) & (0xFFFF << (0x10 * i)) >> (0x10 * i));
		if (effectID != 0)
		{
			PokemonBattleData* target;
			if (effectID & 0x80)
			{
				target = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User]];
			}
			else
			{
				target = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[Target]];
			}
			effectID &= 0x7F;
			u32 chanceValue;
			if (effectID & 0x40)
			{
				chanceValue = 100;
			}
			else
			{
				chanceValue = Moves::GetMoveDataByIndex(battleDataPointer.moveIndex)->effectAccuracy;
			}
			u32 secondaryInformation = Moves::GetMoveDataByIndex(battleDataPointer.moveIndex)->secondaryInformation;
			effectID &= 0x3F;
			battleDataPointer.battleBanks[CurrentEffectID] = effectID;
			switch (effectID)
			{
				case ChangeStat:
				{
					u32 strength = (runner->GetBank(2) & (0xFFFF << (0x10 * i)) >> (0x10 * i));
					battleDataPointer.battleBanks[CurrentEffectPower] = strength;
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
							u32 damage = Maths::UnsignedFractionalMultiplication(runner->GetBank(0), secondaryInformation);
							if (damage == 0)
							{
								damage = 1;
							}
							u16 hp = target[0].currentHP;
							if (damage > hp)
							{
								damage = hp;
							}
							runner->SetBank(0, damage);
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
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 SetBattleStatusFlag(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 value = battleDataPointer.battleBanks[battleScriptPointer[1]];
	PokemonBattleData* data = &battleDataPointer.pokemonStats[value];
	data[0].battleFlags |= UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4);
	battleScriptPointer += 6;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 ClearBattleStatusFlag(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 value = battleDataPointer.battleBanks[battleScriptPointer[1]];
	PokemonBattleData* data = &battleDataPointer.pokemonStats[value];
	data[0].battleFlags &= ~(UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4));
	battleScriptPointer += 6;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 GotoJump(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	runner->SetScriptPointer((u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4));
	return NotEnded;
}

u32 CallJump(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	runner->Call((u8*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4));
	return NotEnded;
}

u32 ReturnFromCall(ScriptRunner* runner)
{
	runner->Return();
	return NotEnded;
}

u32 PauseBattleScript(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	u16 battleScriptFrameWait = runner->GetWaitFrames();
	if (battleScriptFrameWait == 0)
	{
		battleScriptFrameWait = (u16)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 2) - 1;
		runner->SetWaitFrames(battleScriptFrameWait);
		return WaitForFrames;
	}
	else
	{
		if (runner->DecrementWaitFrames())
		{
			battleScriptPointer += 3;
			runner->SetScriptPointer(battleScriptPointer);
			return NotEnded;
		}
		return WaitForFrames;
	}
}

u32 PauseBattleScriptIfTextRendering(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u16 battleScriptFrameWait = runner->GetWaitFrames();
	u32 textRendering = battleDataPointer.flags.battleScriptTextWaitFlag;
	if (battleScriptFrameWait == 0)
	{
		if (textRendering)
		{
			battleScriptFrameWait = (u16)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 2) - 1;
			runner->SetWaitFrames(battleScriptFrameWait);
			return WaitForFrames;
		}
		else
		{
			battleScriptPointer += 3;
			runner->SetScriptPointer(battleScriptPointer);
			return NotEnded;
		}
	}
	else
	{
		if (textRendering)
		{
			return WaitForFrames;
		}
		if (runner->DecrementWaitFrames())
		{
			battleDataPointer.flags.battleScriptTextContinueFlag = 0;
			battleScriptPointer += 3;
			runner->SetScriptPointer(battleScriptPointer);
			return NotEnded;
		}
		return WaitForFrames;
	}
}

u32 EndTurn(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	battleDataPointer.flags.waitAttack = 0;
	battleDataPointer.currentBattlerIndex++;
	return Ended;
}

u32 EndScript(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	battleDataPointer.flags.waitAttack = 0;
	battleDataPointer.flags.endBattle = 1;
	return Ended;
}

u32 PrintCriticalHitMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (battleDataPointer.flags.criticalHitFlag)
	{
		SetTilesForTextRender(runner);
		battleDataPointer.flags.battleScriptTextWaitFlag = 1;
		Text::TextFunctions::DrawStringOverTime(critMessage, 0, 0, &StopBattleScriptTextWait);
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintEffectivenessMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	switch (battleDataPointer.flags.attackEffectiveness)
	{
		case NoEffect:
			SetTilesForTextRender(runner);
			battleDataPointer.flags.battleScriptTextWaitFlag = 1;
			Text::TextFunctions::DrawStringOverTime(noEffectMessage, 0, 0, &StopBattleScriptTextWait);
			break;
		case Ineffective:
			SetTilesForTextRender(runner);
			battleDataPointer.flags.battleScriptTextWaitFlag = 1;
			Text::TextFunctions::DrawStringOverTime((char*)&notEffectiveMessage, 0, 0, &StopBattleScriptTextWait);
			break;
		case NormalDamage:
			break;
		case SuperEffective:
			SetTilesForTextRender(runner);
			battleDataPointer.flags.battleScriptTextWaitFlag = 1;
			Text::TextFunctions::DrawStringOverTime(superEffectiveMessage, 0, 0, &StopBattleScriptTextWait);
			break;
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintMessageByPointer(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	Text::TextFunctions::DrawStringOverTime((char*)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4), 0, 0, &StopBattleScriptTextWait);
	battleScriptPointer += 5;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintMessageByID(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	Text::TextFunctions::DrawStringOverTime(textTable[UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 2)], 0, 0, &StopBattleScriptTextWait);
	battleScriptPointer += 3;
	runner->SetScriptPointer(battleScriptPointer);
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

u32 PlayBattleEndFanfare(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	const BattleTypeStruct &battleType = ((Battle*)SceneManager::GetScene())->GetBattleTypeStruct();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (battleType.info.isWildBattle)
	{
		//SetupSongForPlayback(Song_GSCWildVictoryFanfare, 0);
	}
	else
	{
		u32 trainerClass = battleDataPointer.trainerData[0].pointerToData[0].trainerClass;
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
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintFaintMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	Text::TextFunctions::DrawStringOverTime((char*)&pokemonFaintedString, 0, 0, 0);
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintExperienceMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	char* string = (char*)&experienceGainStringTwo;
	if (runner->GetBank(0) == 1)
	{
		string = (char*)&experienceGainStringOne;
	}
	Text::TextFunctions::DrawStringOverTime(string, 0, 0, 0);
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 WaitKeyPressTextBattle(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (battleDataPointer.flags.battleScriptTextWaitFlag == 0 && battleDataPointer.flags.battleScriptTextContinueFlag == 0)
	{
		battleScriptPointer++;
		runner->SetScriptPointer(battleScriptPointer);
		return NotEnded;
	}
	if (battleDataPointer.flags.battleScriptTextContinueFlag)
	{
		battleDataPointer.flags.battleScriptTextContinueFlag = 0;
		battleScriptPointer++;
		runner->SetScriptPointer(battleScriptPointer);
		return NotEnded;
	}
	return WaitForFrames;
}

u32 PrintTrainerVictoryMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	Text::TextFunctions::DrawStringOverTime((char*)&trainerVictoryMessage, 0, 0, 0);
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintTrainerAfterMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	char* theString = battleDataPointer.trainerData[0].afterBattleText;
	if (theString)
	{
		SetTilesForTextRender(runner);
		battleDataPointer.flags.battleScriptTextWaitFlag = 1;
		Text::TextFunctions::DrawStringOverTime(theString, 0, 0, 0);
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

const u8 trainerClassMoneyRates[] = {
		25,
		25,
		25,
		12
};

u32 CalculateTrainerWinnings(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	const BattleTypeStruct &battleType = ((Battle*)SceneManager::GetScene())->GetBattleTypeStruct();
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 calculatedValue = 0;
	if (battleType.info.isTrainerBattle)
	{
		calculatedValue = trainerClassMoneyRates[battleDataPointer.trainerData[0].pointerToData[0].trainerClass];
		TrainerData* baseData = battleDataPointer.trainerData[0].pointerToData;
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
			if ((battleDataPointer.participantInfo.participantFlags & (1 << i)) && Items::GetItemEffect(Game::GetPartyPokemon(i)->Decrypt(HeldItem)) == Item_Effect_Double_Cash_Gain)
			{
				calculatedValue <<= 1;
				break;
			}
		}
	}
	runner->SetBank(0, calculatedValue);
	if (Flags::CheckFlag(Flag_MumBank) && (Game::GetPlayer().mumBalance != MaxPlayerCash))
	{
		calculatedValue *= 3;
		calculatedValue >>= 2;
	}
	Game::GetPlayer().balance += calculatedValue;
	if (Game::GetPlayer().balance > MaxPlayerCash)
	{
		Game::GetPlayer().balance = MaxPlayerCash;
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintTrainerCashGainMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (runner->GetBank(0))
	{
		SetTilesForTextRender(runner);
		battleDataPointer.flags.battleScriptTextWaitFlag = 1;
		Text::TextFunctions::DrawStringOverTime((char*)&trainerCashGainString, 0, 0, 0);
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintMumCashGainMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (Flags::CheckFlag(Flag_MumBank))
	{
		if (Game::GetPlayer().mumBalance != MaxPlayerCash)
		{
			u32 originalValue = runner->GetBank(0);
			u32 value = originalValue >> 2;
			u32 value2 = originalValue * 3;
			value2 >>= 2;
			if (value + value2 != originalValue)
			{
				Game::GetPlayer().balance += (originalValue - value);
				if (Game::GetPlayer().balance > MaxPlayerCash)
				{
					Game::GetPlayer().balance = MaxPlayerCash;
				}
			}
			Game::GetPlayer().mumBalance += value;
			if (Game::GetPlayer().mumBalance > MaxPlayerCash)
			{
				Game::GetPlayer().mumBalance = MaxPlayerCash;
			}
			runner->SetBank(0, value);
			if (runner->GetBank(0))
			{
				SetTilesForTextRender(runner);
				battleDataPointer.flags.battleScriptTextWaitFlag = 1;
				Text::TextFunctions::DrawStringOverTime((char*)&mumCashGainString, 0, 0, 0);
			}
		}
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 CalculatePickupWinnings(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	runner->SetBank(0, battleDataPointer.counterBits.payDay * 5);
	u32 i;
	for (i = 0; i < 6; i++)
	{
		if ((battleDataPointer.participantInfo.participantFlags & (1 << i)) && Items::GetItemEffect(Game::GetPartyPokemon(i)->Decrypt(HeldItem)) == Item_Effect_Double_Cash_Gain)
		{
			runner->SetBank(0, runner->GetBank(0) << 1);
			break;
		}
	}
	Game::GetPlayer().balance += runner->GetBank(0);
	if (Game::GetPlayer().balance > MaxPlayerCash)
	{
		Game::GetPlayer().balance = MaxPlayerCash;
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintPayDayCashGainMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (runner->GetBank(0))
	{
		SetTilesForTextRender(runner);
		battleDataPointer.flags.battleScriptTextWaitFlag = 1;
		Text::TextFunctions::DrawStringOverTime((char*)&pickupCashGainString, 0, 0, 0);
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintItemEffectMessage(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 CalculateFleeProbabilityValue(u32 speed1, u32 speed2)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	speed1 *= 32;
	speed1 = Maths::UnsignedDivide(speed1, speed2 >> 2);
	speed1 += (30 * battleDataPointer.counterBits.escapeAttempts);
	speed1 &= 0xFF;
	return speed1;
}

u32 CalculateFleeResult(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	const BattleTypeStruct &battleType = ((Battle*)SceneManager::GetScene())->GetBattleTypeStruct();
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
	{
		if (battleType.info.isDoubleBattle)
		{
			if (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[0], Type_Ghost)
					|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[2], Type_Ghost))
			{
				runner->SetBank(0, Flee_Result_Succeeded);
			}
			else if (battleDataPointer.pokemonStats[0].ability == Run_Away || battleDataPointer.pokemonStats[2].ability == Run_Away)
			{
				runner->SetBank(0, Flee_Result_Run_Away);
			}
			else
			{
				if (CheckForAbilityInBattle(Magnet_Pull, 1)
					&& (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[0], Type_Steel)
					|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[2], Type_Steel)))
				{
					runner->SetBank(0, Flee_Result_Failed_Trapped_Ability);
					runner->SetBank(1, Magnet_Pull);
				}
				else if (CheckForAbilityInBattle(Arena_Trap, 1)
						&& (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[0], Type_Flying) == false
						|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[2], Type_Flying) == false)
						&& (battleDataPointer.pokemonStats[0].ability != Levitate
						|| battleDataPointer.pokemonStats[2].ability != Levitate))
				{
					runner->SetBank(0, Flee_Result_Failed_Trapped_Ability);
					runner->SetBank(1, Arena_Trap);
				}
				else if (CheckForAbilityInBattle(Shadow_Tag, 0) == false
						&& CheckForAbilityInBattle(Shadow_Tag, 1))
				{
					runner->SetBank(0, Flee_Result_Failed_Trapped_Ability);
					runner->SetBank(1, Shadow_Tag);
				}
				else
				{
					u32 meanSpeed;
					if (CheckForAbilityInBattle(Unaware, 1))
					{
						meanSpeed = (battleDataPointer.pokemonStats[0].stats[BattleSpeed] + battleDataPointer.pokemonStats[2].stats[BattleSpeed]) >> 1;
					}
					else
					{
						meanSpeed = (battleDataPointer.pokemonStats[0].effectiveStats[BattleSpeed] + battleDataPointer.pokemonStats[2].effectiveStats[BattleSpeed]) >> 1;
					}
					u32 meanOpponentSpeed;
					if (CheckForAbilityInBattle(Unaware, 0))
					{
						meanOpponentSpeed = (battleDataPointer.pokemonStats[1].stats[BattleSpeed] + battleDataPointer.pokemonStats[3].stats[BattleSpeed]) >> 1;
					}
					else
					{
						meanOpponentSpeed = (battleDataPointer.pokemonStats[1].effectiveStats[BattleSpeed] + battleDataPointer.pokemonStats[3].effectiveStats[BattleSpeed]) >> 1;
					}
					if (Maths::GetDelimitedRandom32BitValue(0x100) < CalculateFleeProbabilityValue(meanSpeed, meanOpponentSpeed))
					{
						runner->SetBank(0, Flee_Result_Succeeded);
					}
					else
					{
						runner->SetBank(0, Flee_Result_Failed);
					}
				}
			}
		}
		else
		{
			if (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[0], Type_Ghost))
			{
				runner->SetBank(0, Flee_Result_Succeeded);
			}
			else if (battleDataPointer.pokemonStats[0].ability == Run_Away)
			{
				runner->SetBank(0, Flee_Result_Run_Away);
			}
			else
			{
				if (CheckForAbilityInBattle(Magnet_Pull, 1)
					&& (BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[0], Type_Steel)
					|| BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[2], Type_Steel)))
				{
					runner->SetBank(0, Flee_Result_Failed_Trapped_Ability);
					runner->SetBank(1, Magnet_Pull);
				}
				else if (CheckForAbilityInBattle(Arena_Trap, 1)
						&& BattlePokemonHasType((PokemonBattleData*)&battleDataPointer.pokemonStats[0], Type_Flying) == false
						&& battleDataPointer.pokemonStats[0].ability != Levitate)
				{
					runner->SetBank(0, Flee_Result_Failed_Trapped_Ability);
					runner->SetBank(1, Arena_Trap);
				}
				else if (CheckForAbilityInBattle(Shadow_Tag, 0) == false
						&& CheckForAbilityInBattle(Shadow_Tag, 1))
				{
					runner->SetBank(0, Flee_Result_Failed_Trapped_Ability);
					runner->SetBank(1, Shadow_Tag);
				}
				else
				{
					u32 meanSpeed;
					if (CheckForAbilityInBattle(Unaware, 1))
					{
						meanSpeed = battleDataPointer.pokemonStats[0].stats[BattleSpeed];
					}
					else
					{
						meanSpeed = battleDataPointer.pokemonStats[0].effectiveStats[BattleSpeed];
					}
					u32 meanOpponentSpeed;
					if (CheckForAbilityInBattle(Unaware, 0))
					{
						meanOpponentSpeed = battleDataPointer.pokemonStats[1].stats[BattleSpeed];
					}
					else
					{
						meanOpponentSpeed = battleDataPointer.pokemonStats[1].effectiveStats[BattleSpeed];
					}
					if (Maths::GetDelimitedRandom32BitValue(0x100) < CalculateFleeProbabilityValue(meanSpeed, meanOpponentSpeed))
					{
						runner->SetBank(0, Flee_Result_Succeeded);
					}
					else
					{
						runner->SetBank(0, Flee_Result_Failed);
					}
				}
			}
		}
	}
	else
	{
		runner->SetBank(0, Flee_Result_Cannot_Flee);
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintCallEffectMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	PokemonBattleData* data = (PokemonBattleData*)&battleDataPointer.pokemonStats[battleDataPointer.battleBanks[User]];
	if (data[0].primaryStatusBits.sleepTurns)
	{
		Text::TextFunctions::DrawStringOverTime((char*)&wokenByCall, 0, 0, &StopBattleScriptTextWait);
		data[0].primaryStatusBits.sleepTurns = 0;
		// Graphical update
	}
	else if (data[0].primaryStatusBits.hyper || data[0].secondaryStatusBits.confusion)
	{
		Text::TextFunctions::DrawStringOverTime((char*)&callString, 0, 0, &StopBattleScriptTextWait);
		data[0].primaryStatusBits.hyper = 0;
		data[0].secondaryStatusBits.confusion = 0;
		// Graphical update for hyper
	}
	else
	{
		Text::TextFunctions::DrawStringOverTime((char*)&callNoEffect, 0, 0, &StopBattleScriptTextWait);
	}
	battleScriptPointer++;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 PrintFleeEffectMessage(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	SetTilesForTextRender(runner);
	battleDataPointer.flags.battleScriptTextWaitFlag = 1;
	switch (runner->GetBank(0))
	{
		case Flee_Result_Cannot_Flee:
			Text::TextFunctions::DrawStringOverTime((char*)&noFlee, 0, 0, &StopBattleScriptTextWait);
			battleScriptPointer = (u8*)&Script_Unable_To_Flee;
			runner->SetScriptPointer(battleScriptPointer);
			break;
		case Flee_Result_Failed_Trapped_Ability:
			Text::TextFunctions::DrawStringOverTime((char*)&abilityTrap, 0, 0, &StopBattleScriptTextWait);
			battleScriptPointer = (u8*)&Script_Unable_To_Flee;
			runner->SetScriptPointer(battleScriptPointer);
			break;
		case Flee_Result_Failed_Trapped_Move:
			Text::TextFunctions::DrawStringOverTime((char*)&moveTrap, 0, 0, &StopBattleScriptTextWait);
			battleScriptPointer = (u8*)&Script_Unable_To_Flee;
			runner->SetScriptPointer(battleScriptPointer);
			break;
		case Flee_Result_Run_Away:
			Text::TextFunctions::DrawStringOverTime((char*)&abilityFlee, 0, 0, 0);
			//HandleKeyPresses = &CheckForTextContinuePressBattle;
			battleScriptPointer++;
			runner->SetScriptPointer(battleScriptPointer);
			break;
		case Flee_Result_Succeeded:
			Text::TextFunctions::DrawStringOverTime((char*)&fled, 0, 0, 0);
			//HandleKeyPresses = &CheckForTextContinuePressBattle;
			battleScriptPointer++;
			runner->SetScriptPointer(battleScriptPointer);
			break;
	}
	return NotEnded;
}

u32 IncrementLoopCounter(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	if (battleScriptPointer[1] == 1)
	{
		runner->SetBank(3, runner->GetBank(3) - 1);
	}
	else
	{
		runner->SetBank(3, runner->GetBank(3) + 1);
	}
	battleScriptPointer += 2;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 SetLoopCounter(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	u16 value = (u16)UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 2);
	runner->SetBank(3, value);
	battleScriptPointer += 3;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 SetBattleDamageMultiplier(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	u32 value = UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 1, 4);
	runner->SetBank(1, value);
	battleScriptPointer += 5;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 SetSecondaryStatus(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	PokemonBattleData* target = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[1]]];
	target[0].secondaryStatuses = UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 2, 4);
	battleScriptPointer += 6;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 SetSpecialBattleStatus(ScriptRunner* runner)
{
	BattleData &battleDataPointer = ((Battle*)SceneManager::GetScene())->GetBattleData();
	u8* battleScriptPointer = runner->GetScriptPointer();
	PokemonBattleData* target = &battleDataPointer.pokemonStats[battleDataPointer.battleBanks[battleScriptPointer[1]]];
	u32 value = UnalignedNumberHandler::LoadUnalignedNumber(battleScriptPointer, 3, 4);
	if (battleScriptPointer[2] == 1)
	{
		target[0].battleFlagsBank2 = value;
	}
	else
	{
		target[0].battleFlags = value;
	}
	battleScriptPointer += 7;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}

u32 GetRandomValue(ScriptRunner* runner)
{
	u8* battleScriptPointer = runner->GetScriptPointer();
	u16 limit = battleScriptPointer[1];
	if (limit == 0)
	{
		limit = 0x100;
	}
	u32 value = Maths::GetDelimitedRandom32BitValue(limit);
	runner->SetBank(0, value);
	battleScriptPointer += 3;
	runner->SetScriptPointer(battleScriptPointer);
	return NotEnded;
}
