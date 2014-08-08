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

#define FALSE 0
#define TRUE 1

#define AdditionalDefrosting TRUE
#define AdditionalBurnCuring TRUE

u8 CheckForMoveCancellingStatuses()
{
	u32 userBank = battleDataPointer[0].battleBanks[User];
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[userBank];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]];
	MoveData* moveInfo = &moveData[battleDataPointer[0].moveIndex];
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
		accuracy = UnsignedDivide(accuracy, evasionAccuracyChart[attacker[0].statLevels[Evasion]]);
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
	PokemonEncrypter(thePokemon, Move1PP + moveIndex);
	battleScriptPointer++;
	return NotEnded;
}
