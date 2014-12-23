#include "Functions.h"
#include "Data.h"
#include "Data\PokeStats.h"
#include "Functions\BattleScriptCommands.h"
#include "Functions\BattleAnimationScriptCommands.h"
#include "Functions\ScriptRunner.h"
#include "Data\MemoryLocations.h"
#include "Functions\ObjectFunctions.h"
#include "Functions\KeyPresses.h"
#include "Functions\Pokemon.h"
#include "Data\BattleStrings.h"
#include "libbattlescripts.h"

#define BATTLE_LAYER_0_SETTINGS (BG_4BPP | BG_REG_32x64 | BG_MOSAIC | BG_SBB(14) | BG_CBB(2))

#define WILDBATTLE 0
#define TRAINERBATTLE 1
#define DOUBLEWILD 2
#define RAREWILD 3
#define LEGENDARYWILD 4
#define ROAMINGWILD 5
#define GYMBATTLE 6
#define EVILBATTLE 7
#define CHAMPIONBATTLE 8
#define EVILDUOBATTLE 9

#define TESTMODE WILDBATTLE

#define FALSE 0
#define TRUE 1

#define GEN2MOONBALL FALSE

const ALIGN(2) u16 criticalCaptureValues[6][2] = {
		{ 30, 0 },
		{ 150, 50 },
		{ 300, 100 },
		{ 450, 150 },
		{ 600, 200 },
		{ 721, 250 }
};

u32 NoSpecialEffectPokeball()
{
	return 100;
}

u32 HalfAgainPokeball()
{
	return 150;
}

u32 DoublePokeball()
{
	return 200;
}

u32 AlwaysCatchPokeball()
{
	return 25500;
}

u32 LevelBallPokeball()
{
	u32 retValue;
	u8 level = battleDataPointer[0].pokemonStats[0].level;
	if (battleType.info.isDoubleBattle)
	{
		level = ((level + battleDataPointer[0].pokemonStats[2].level) >> 1);
	}
	u8 opponentLevel = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].level;
	if ((opponentLevel << 2) <= level)
	{
		retValue = 800;
	}
	else if ((opponentLevel << 1) <= level)
	{
		retValue = 400;
	}
	else if (opponentLevel <= level)
	{
		retValue = 200;
	}
	else
	{
		retValue = 100;
	}
	return retValue;
}

u32 MoonBallPokeball()
{
	u32 retValue = 100;
	IndexTable* data = (IndexTable*)&evoData[battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].species];
	EvolutionData* innerData = (EvolutionData*)data[0].pointerToData;
	u32 i;
	for (i = 0; i < data[0].index; i++)
	{
		if (innerData[0].evolutionType == ItemUsed
#if GEN2MOONBALL == TRUE
				&& innerData[0].condition1 == Item_BurnHeal
#else
				&& innerData[0].condition1 == ITEM_MOONSTONE
#endif
				)
		{
			retValue = 400;
			break;
		}
	}
	return retValue;
}

u32 LoveBallPokeball()
{
	u32 retValue = 100;
	u8 gender = battleDataPointer[0].pokemonStats[0].gender;
	u16 species = battleDataPointer[0].pokemonStats[0].species;
	u8 opponentGender = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].level;
	u16 opponentSpecies = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].species;
	if (gender != Gender_Genderless
			&& opponentGender != Gender_Genderless
			&& gender != opponentGender
			&& species == opponentSpecies)
	{
		retValue = 800;
	}
	return retValue;
}

u32 HeavyBallPokeball()
{
	u32 retValue = 100;
	PokedexData* data = (PokedexData*)&pokedexData[battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].species];
	u16 weight = data[0].weight;
	if (weight < 2048)
	{
		retValue -= 20;
	}
	else if (weight < 3072)
	{
		retValue += 20;
	}
	else if (weight < 4096)
	{
		retValue += 30;
	}
	else
	{
		retValue += 40;
	}
	return retValue;
}

u32 FastBallPokeball()
{
	u32 retValue = 100;
	u8 forme = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].forme;
	InternalBaseData* data = (InternalBaseData*)pokemonBaseData[battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].species].baseDataInfo.pointerToData;
	if (data[forme].baseSpeed >= 100)
	{
		retValue = 400;
	}
	return retValue;
}

u32 RepeatBallPokeball()
{
	u32 retValue = 100;
	u16 species = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].species;
	if (GetSeenCaughtStatus(species, 2))
	{
		retValue = 300;
	}
	return retValue;
}

u32 TimerBallPokeball()
{
	u32 retValue;
	u32 turns = battleDataPointer[0].battleTurnsCounter;
	if (turns >= 10)
	{
		retValue = 400;
	}
	else
	{
		retValue = 100 + (turns * 30);
	}
	return retValue;
}

u32 NestBallPokeball()
{
	u32 retValue = 100;
	u8 opponentLevel = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].level;
	if (opponentLevel < 31)
	{
		retValue = (41 - opponentLevel) * 10;
	}
	return retValue;
}

u32 QuickBallPokeball()
{
	u32 retValue = 100;
	if (battleDataPointer[0].battleTurnsCounter == 0)
	{
		retValue = 500;
	}
	return retValue;
}

u32 DuskBallPokeball()
{
	u32 retValue = 100;
	if (rtcData.timeOfDay == Time_Night /* || InCave() */)
	{
		retValue = 350;
	}
	return retValue;
}

const U32FunctionPointerVoid BallBonusRates[] = {
		&NoSpecialEffectPokeball,	// Pokéball
		&HalfAgainPokeball,			// Great Ball
		&DoublePokeball,			// Ultra Ball
		&AlwaysCatchPokeball,		// Master Ball
		&HalfAgainPokeball,			// Safari Ball
		&LevelBallPokeball,			// Level Ball
		&NoSpecialEffectPokeball,	// Lure Ball
		&MoonBallPokeball,			// Moon Ball
		&NoSpecialEffectPokeball,	// Friend Ball
		&LoveBallPokeball,			// Love Ball
		&HeavyBallPokeball,			// Heavy Ball
		&FastBallPokeball,			// Fast Ball
		&HalfAgainPokeball,			// Sport / Park Ball
		&NoSpecialEffectPokeball,	// Premier Ball
		&RepeatBallPokeball,		// Repeat Ball
		&TimerBallPokeball,			// Timer Ball
		&NestBallPokeball,			// Nest Ball
		&NoSpecialEffectPokeball,	// Dive Ball
		&NoSpecialEffectPokeball,	// Luxury Ball
		&NoSpecialEffectPokeball,	// Heal Ball
		&QuickBallPokeball,			// Quick Ball
		&DuskBallPokeball,			// Dusk Ball
		&NoSpecialEffectPokeball,	// Cherish Ball
		&AlwaysCatchPokeball 		// Pal Park Ball
};

u32 DoubleLikelihood(u32 initialValue)
{
	return initialValue << 1;
}

u32 HalfAgainLikelihood(u32 initialValue)
{
	return UnsignedFractionalMultiplication(initialValue, 150);
}

u32 NoChangeLikelihood(u32 initialValue)
{
	return initialValue;
}

const U32FunctionPointerU32 StatusBonusRates[] = {
		&NoChangeLikelihood,
		&DoubleLikelihood,
		&DoubleLikelihood,
		&DoubleLikelihood,
		&DoubleLikelihood,
		&DoubleLikelihood,
		&DoubleLikelihood,
		&DoubleLikelihood,
		&DoubleLikelihood,
		&HalfAgainLikelihood,
		&HalfAgainLikelihood,
		&HalfAgainLikelihood
};

const RODATA_LOCATION u32 battleTextPalette[] = { 0x7FFF0000, 0x4D8A001F, 0x7FFF5E2D, 0x6B3A396D, 0x18C53D28, 0x737C7C1F, 0x0DF37C1F, 0x354526B9 };

u32 NoEffectTypeChartCallback(u32 incomingValue)
{
	return incomingValue;
}

u32 TiltEffectTypeChartCallback(u32 incomingValue)
{
	if (incomingValue < 100)
	{
		incomingValue >>= 1;
	}
	else if (incomingValue > 100)
	{
		incomingValue <<= 1;
	}
	return incomingValue;
}

u32 InversionEffectTypeChartCallback(u32 incomingValue)
{
	if (incomingValue < 100)
	{
		incomingValue = 200;
	}
	else if (incomingValue > 100)
	{
		incomingValue = 50;
	}
	return incomingValue;
}

u32 TiltedInversionTypeChartCallback(u32 incomingValue)
{
	return TiltEffectTypeChartCallback(InversionEffectTypeChartCallback(incomingValue));
}

u32 DoubleTiltedTypeChartCallback(u32 incomingValue)
{
	return TiltEffectTypeChartCallback(TiltEffectTypeChartCallback(incomingValue));
}

void DrawMainSelectionMenu()
{
	u32 i;
	u16* address = (u16*)0x060073C2;
	memset32((void*)0x0600C000, BATTLEBGCOLOUR, 0x7C0);
	memset32((void*)0x0600E000, WHITETEXTBG, 0x6C0);
	for (i = 0; i < 11; i++)
	{
		address[(i + 14)] = 0x1200 + ((i + 13) * 20);
		address[0x20 + (i + 14)] = 0x1201 + ((i + 13) * 20);
		address[0x40 + (i + 14)] = 0x1202 + ((i + 13) * 20);
		address[0x60 + (i + 14)] = 0x1203 + ((i + 13) * 20);
	}
	for (i = 0; i < 14; i++)
	{
		address[i] = 0x200 + (i * 20);
		address[0x20 + i] = 0x201 + (i * 20);
		address[0x40 + i] = 0x202 + (i * 20);
		address[0x60 + i] = 0x203 + (i * 20);
	}
	SetTextColour(1, 6, 15);
	DrawString((char*)&whatToDoString, 8, 0);
	DrawString((char*)&whatToDoString2, 8, 0x10);
	SetTextColour(15, 3, 1);
	DrawCharacter(ARROWCHAR, (0x30 * (battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] & 1)) + 0x70, 0x10 * (battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] >> 1));
	DrawString("Battle", 0x78, 0);
	DrawString("Bag", 0xA8, 0);
	DrawString("Party", 0x78, 0x10);
	if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
	{
		DrawString("Flee", 0xA8, 0x10);
	}
	else
	{
		DrawString("Call", 0xA8, 0x10);
	}
}

void MoveSelectionRender()
{
	SetTextColour(15, 3, 1);
	u16* address = (u16*)0x060073C2;
	memset32((void*)0x0600C000, WHITETEXTBG, 0xF0C);
	u32 i;
	for (i = 0; i < 20; i++)
	{
		address[i] = 0x1200 + (i * 20);
		address[0x20 + i] = 0x1201 + (i * 20);
		address[0x40 + i] = 0x1202 + (i * 20);
		address[0x60 + i] = 0x1203 + (i * 20);
	}
	for (i = 0; i < 7; i++)
	{
		address[i + 22] = 0x1200 + (i * 20);
		address[0x20 + i + 22] = 0x1201 + (i * 20);
		address[0x40 + i + 22] = 0x1202 + (i * 20);
		address[0x60 + i + 22] = 0x1203 + (i * 20);
	}
	PokemonBattleData* data = (PokemonBattleData*)&battleDataPointer[0].pokemonStats[battleDataPointer[0].currentBattlerIndex];
	for (i = 0; i < 2; i++)
	{
		u32 j;
		for (j = 0; j < 2; j++)
		{
			u16 moveID = data[0].moves[(i * 2) + j];
			if (moveID)
			{
				DrawString((char*)&moveNames[moveID], j * 80 + 16, i * 0x10);
			}
			else
			{
				DrawString("-", j * 80 + 16, i * 0x10);
			}
		}
	}
	DrawCharacter(ARROWCHAR, (80 * (battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] & 1)) + 8, 0x10 * (battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] >> 1));
}

u32 CaptureChecks(Pokemon* target, u16 itemID)
{
	u32 maxHPValue = 3 * PokemonDecrypter(target, MaximumHP);
	u32 catchRate = maxHPValue - (PokemonDecrypter(target, CurrentHP) << 1);
	catchRate = UnsignedFractionalMultiplication(catchRate, BallBonusRates[itemID]());
	catchRate *= GetCatchRateFromPokemon(target);
	catchRate = UnsignedDivide(catchRate, maxHPValue);
	catchRate = StatusBonusRates[PokemonDecrypter(target, StatusAilment)](catchRate);
	if (catchRate < 255)
	{
		u32 finalCatchRate = Sqrt(Sqrt(UnsignedDivide(catchRate * 100, 255)));
		finalCatchRate *= 0x50F4;
		u32 i;
		for (i = 0; i < CriticalCaptureFailure; i++)
		{
			u16 value = GetDelimitedRandom16BitValue(0x10000);
			if (value > finalCatchRate)
			{
				break;
			}
		}
		if (i != TripleShakeSuccess)
		{
			{
				u32 numberOfPokemon = CountCaughtPokemon(National);
				{
					u32 j;
					for (j = 0; j < 6; j++)
					{
						if (criticalCaptureValues[j][0] > numberOfPokemon)
						{
							numberOfPokemon = criticalCaptureValues[j][1];
							break;
						}
					}
				}
				catchRate = UnsignedFractionalMultiplication(catchRate, numberOfPokemon);
			}
			u32 rand = GetDelimitedRandom16BitValue(2048);
			if (rand < catchRate)
			{
				if (GetDelimitedRandom16BitValue(0x10000) > finalCatchRate)
				{
					return CriticalCaptureFailure;
				}
				return CriticalCaptureSuccess;
			}
			return i;
		}
		return TripleShakeSuccess;
	}
	return TripleShakeSuccess;
}

void BattleWaitForKeyPress()
{
}

void CopyBattleDataFromPokemon(Pokemon* thePokemon, PokemonBattleData* dataLocation)
{
	memset32(dataLocation, 0, sizeof(PokemonBattleData) >> 2);
	dataLocation[0].species = PokemonDecrypter(thePokemon, Species);
	dataLocation[0].ability = PokemonDecrypter(thePokemon, Ability);
	dataLocation[0].forme = PokemonDecrypter(thePokemon, FormeIndex);
	dataLocation[0].gender = PokemonDecrypter(thePokemon, Gender);
	dataLocation[0].heldItem = PokemonDecrypter(thePokemon, HeldItem);
	dataLocation[0].level = PokemonDecrypter(thePokemon, Level);
	u32 i;
	for (i = 0; i < 4; i++)
	{
		dataLocation[0].moves[i] = PokemonDecrypter(thePokemon, Move1 + i);
		dataLocation[0].pp[i] = PokemonDecrypter(thePokemon, Move1PP + i);
	}
	for (i = 0; i < NumBattleStats - 2; i++)
	{
		dataLocation[0].stats[i] = PokemonDecrypter(thePokemon, Attack + i);
	}
	for (i = 0; i < NumBattleStats; i++)
	{
		dataLocation[0].statLevels[i] = 6;
	}
	dataLocation[0].personalityID = PokemonDecrypter(thePokemon, PersonalityID);
	dataLocation[0].primaryStatus = PokemonDecrypter(thePokemon, StatusAilment);
	dataLocation[0].secondaryStatuses = 0;
	dataLocation[0].battleFlags = 0;
	dataLocation[0].type1 = PokemonDecrypter(thePokemon, Type1);
	dataLocation[0].type2 = PokemonDecrypter(thePokemon, Type2);
	dataLocation[0].type3 = Type_None;
	dataLocation[0].currentHP = PokemonDecrypter(thePokemon, CurrentHP);
	dataLocation[0].maximumHP = PokemonDecrypter(thePokemon, MaximumHP);
	dataLocation[0].happiness = PokemonDecrypter(thePokemon, Friendship);
	dataLocation[0].mainPointer = thePokemon;
	RecalculateAllEffectiveStats(dataLocation);
}

u32 PrioritiseBetweenTwoPokemon(u32 index1, u32 index2)
{
	PokemonBattleData* pkmn1 = &battleDataPointer[0].pokemonStats[index1];
	PokemonBattleData* pkmn2 = &battleDataPointer[0].pokemonStats[index2];
	s32 priorityValue = 0;
	{
		u8 selection = battleDataPointer[0].moveSelections[index1];
		if (selection >= Selections_Switch)
		{
			priorityValue = 6;
		}
		else if (selection == Selections_AI_Fleeing)
		{
			priorityValue = -7;
		}
		else
		{
			u16 move = pkmn1[0].moves[battleDataPointer[0].moveSelections[index1]];
			s8 priority = moveData[move].priority;
			if ((moveData[move].category == Category_Status && pkmn1[0].ability == Prankster) || (moveData[move].type == Type_Flying && pkmn1[0].ability == Gale_Wings))
			{
				priority++;
			}
			priorityValue = priority;
		}
		selection = battleDataPointer[0].moveSelections[index2];
		if (selection >= Selections_Switch)
		{
			priorityValue = 0;
		}
		else
		{
			u16 move = pkmn2[0].moves[battleDataPointer[0].moveSelections[index2]];
			s8 priority = moveData[move].priority;
			if ((moveData[move].category == Category_Status && pkmn2[0].ability == Prankster) || (moveData[move].type == Type_Flying && pkmn2[0].ability == Gale_Wings))
			{
				priority++;
			}
			priorityValue -= priority;
		}
	}
	if (priorityValue < 0)
	{
		return PokemonTwoFirst;
	}
	else if (priorityValue > 0)
	{
		return PokemonOneFirst;
	}
	else
	{
		u32 speed1 = (pkmn2[0].ability == Unaware) ? pkmn1[0].stats[BattleSpeed] : pkmn1[0].effectiveStats[BattleSpeed];
		u32 speed2 = (pkmn1[0].ability == Unaware) ? pkmn2[0].stats[BattleSpeed] : pkmn2[0].effectiveStats[BattleSpeed];
		if ((pkmn1[0].ability == Stall && pkmn2[0].ability != Stall) || (GetItemEffect(pkmn1[0].heldItem) == Item_Effect_Last_In_Priority_Bracket && GetItemEffect(pkmn2[0].heldItem) != Item_Effect_Last_In_Priority_Bracket) || (GetItemEffect(pkmn1[0].heldItem) != Item_Effect_First_In_Priority_Bracket && GetItemEffect(pkmn2[0].heldItem) == Item_Effect_First_In_Priority_Bracket))
		{
			return PokemonTwoFirst;
		}
		else if ((pkmn1[0].ability != Stall && pkmn2[0].ability == Stall) || (GetItemEffect(pkmn1[0].heldItem) != Item_Effect_Last_In_Priority_Bracket && GetItemEffect(pkmn2[0].heldItem) == Item_Effect_Last_In_Priority_Bracket) || (GetItemEffect(pkmn1[0].heldItem) == Item_Effect_First_In_Priority_Bracket && GetItemEffect(pkmn2[0].heldItem) != Item_Effect_First_In_Priority_Bracket))
		{
			return PokemonOneFirst;
		}
		if (pkmn1[0].primaryStatus)
		{
			if (pkmn1[0].ability == Quick_Feet)
			{
				speed1 = UnsignedFractionalMultiplication(speed1, 150);
			}
			else if (pkmn1[0].primaryStatusBits.paralysed)
			{
				speed1 >>= 2;
			}
		}
		if (GetItemEffect(pkmn1[0].heldItem) == Item_Effect_Boost_EVs)
		{
			speed1 >>= 1;
		}
		if (pkmn2[0].primaryStatus)
		{
			if (pkmn2[0].ability == Quick_Feet)
			{
				speed2 = UnsignedFractionalMultiplication(speed2, 150);
			}
			else if (pkmn2[0].primaryStatusBits.paralysed)
			{
				speed2 >>= 2;
			}
		}
		if (GetItemEffect(pkmn2[0].heldItem) == Item_Effect_Boost_EVs)
		{
			speed2 >>= 1;
		}
		s32 finalValue = speed1 - speed2;
		if (battleDataPointer[0].counterBits.trickRoom)
		{
			if (finalValue < 0)
			{
				return PokemonOneFirst;
			}
			else if (finalValue > 0)
			{
				return PokemonTwoFirst;
			}
			else
			{
				return PokemonOneFirst + GetDelimitedRandom32BitValue(2);
			}
		}
		else
		{
			if (finalValue < 0)
			{
				return PokemonTwoFirst;
			}
			else if (finalValue > 0)
			{
				return PokemonOneFirst;
			}
			else
			{
				return PokemonOneFirst + GetDelimitedRandom32BitValue(2);
			}
		}
	}
}

void PrioritisePokemon()
{
	u32 numBattlers = battleDataPointer[0].numBattlers;
	u32 i;
	for (i = 0; i < numBattlers; i++)
	{
		u32 j;
		for (j = i + 1; j < numBattlers; j++)
		{
			if (PrioritiseBetweenTwoPokemon(i, j) == PokemonTwoFirst)
			{
				u32 temp = battleDataPointer[0].battleOrder[i];
				battleDataPointer[0].battleOrder[i] = battleDataPointer[0].battleOrder[j];
				battleDataPointer[0].battleOrder[j] = temp;
			}
		}
	}
}

const RODATA_LOCATION u16 battleMusicIDs[][NumBattleTrackIDs] = {
		{ Song_KantoWildBattle, Song_RBYWildBattle, Song_RBYTrainerBattle, Song_KantoTrainerBattle, Song_KantoGymBattle, Song_KantoGymBattle, Song_RBYChampionBattle, Song_KantoWildBattle, Song_LegendaryBeastBattle },
		{ Song_JohtoWildBattle, Song_JohtoLegendaryBattle, Song_RBYTrainerBattle, Song_JohtoTrainerBattle, Song_JohtoGymBattle, Song_JohtoGymBattle, Song_GSCChampionBattle, Song_JohtoLegendaryBattle, Song_LegendaryBeastBattle }
};

const RODATA_LOCATION u16 classToSongList [][2] = {
		{ Class_Evil_Team, Song_TeamRocketBattle },
		{ Class_Evil_Team_Duo, Song_TeamRocketBattle },
		{ 0xFFFF, 0x0000 }
};

const RODATA_LOCATION u16 speciesToSongListLegendary [][2] = {
		{ 0xFFFF, 0x0000 }
};

const RODATA_LOCATION u16 speciesToSongListRoaming [][2] = {
		{ 0xFFFF, 0x0000 }
};

u16 GetSongIDForBattle()
{
	u32 trackID = Track_Battle_Wild;
	if (battleType.info.isWildBattle && (battleType.info.isDoubleBattle || battleType.info.isRareWildBattle))
	{
		trackID = Track_Battle_Rare_Wild;
	}
	else if (battleType.info.isLinkBattle)
	{
		trackID = Track_Battle_Link;
	}
	else if (battleType.info.isTrainerBattle)
	{
		u32 trainerClass = battleDataPointer[0].trainerData[0].pointerToData[0].trainerClass;
		if (trainerClass == Class_Champion)
		{
			trackID = Track_Battle_Champion;
		}
		else if (trainerClass == Class_Gym_Leader)
		{
			trackID = Track_Battle_Gym_Leader;
		}
		else if (trainerClass == Class_Elite_Four)
		{
			trackID = Track_Battle_Elite_Four;
		}
		else
		{
			u32 i = 0;
			while (classToSongList[i][0] != 0xFFFF)
			{
				if (trainerClass == classToSongList[i][0])
				{
					return classToSongList[i][1];
				}
				i++;
			}
			trackID = Track_Battle_Trainer;
		}
	}
	else if (battleType.info.isLegendaryWildBattle)
	{
		u32 i = 0;
		u32 species = 0;
		while (speciesToSongListLegendary[i][0] != 0xFFFF)
		{
			if (species == speciesToSongListLegendary[i][0])
			{
				return speciesToSongListLegendary[i][1];
			}
			i++;
		}
		trackID = Track_Battle_Legendary;
	}
	else if (battleType.info.isRoamingWildBattle)
	{
		u32 i = 0;
		u32 species = 0;
		while (speciesToSongListRoaming[i][0] != 0xFFFF)
		{
			if (species == speciesToSongListRoaming[i][0])
			{
				return speciesToSongListRoaming[i][1];
			}
			i++;
		}
		trackID = Track_Battle_Roaming;
	}
	return battleMusicIDs[regionByte][trackID];
}

const RODATA_LOCATION OAMData battleObjectsOAMData[] = {
		{ 0, 0, 0, 1, 0, 0, 0, 40, 48, 0 },
		{ 0, 0, 1, 1, 0, 0, 0, 144, 8, 0 },
		{ 0, 0, 0, 1, 0, 0, 0, 8, 144, 0 },
		{ 0, 0, 1, 1, 0, 0, 0, 8, 144, 0 },
		{ 0, 0, 2, 1, 0, 0, 0, 8, 144, 0 },
		{ 0, 0, 3, 1, 0, 0, 0, 8, 144, 0 }
};

u8* moveScriptsTable[] = {
		&Script_Standard_Attack,
		&Script_Recoil,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Perish_Song,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Triple_Kick,
		&Script_Wake_Up_Slap,
		&Script_Smelling_Salt,
		&Script_Standard_Attack,
		&Script_Standard_Attack,
		&Script_Spit_Up,
		&Script_Standard_Attack,
		&Script_Present
};

void UpdateCounters()
{
	battleDataPointer[0].battleTurnsCounter++;
	u32 weatherEnded = false;
	if (battleDataPointer[0].weatherBits.permanent == 0)
	{
		u32 turns = battleDataPointer[0].weatherBits.turnsRemaining;
		turns--;
		if (turns == 0)
		{
			battleDataPointer[0].weather = 0;
			weatherEnded = true;
			// Script to clear weather here
		}
	}
	if (weatherEnded == false)
	{
		battleDataPointer[0].weatherBits.turnsRemaining--;
		// Script to indicate continued weather
	}
	u32 i;
	for (i = 0; i < battleDataPointer[0].numBattlers; i++)
	{
		PokemonBattleData* pkmn = &battleDataPointer[0].pokemonStats[i];
		pkmn[0].secondaryStatusBits.ppReduced = 0;
		if (pkmn[0].currentHP != 0)
		{
			Pokemon* thePokemon = pkmn[0].mainPointer;
			if (pkmn[0].battleStatusFlags.roosted)
			{
				SetBasicTypes(thePokemon);
				pkmn[0].type1 = PokemonDecrypter(thePokemon, Type1);
				pkmn[0].type2 = PokemonDecrypter(thePokemon, Type2);
				pkmn[0].battleStatusFlags.roosted = 0;
			}
			if (pkmn[0].primaryStatusBits.badlyPoisoned)
			{
				pkmn[0].primaryStatusBits.badlyPoisonedCounter++;
				PokemonEncrypter(thePokemon, StatusAilment, pkmn[0].primaryStatus);
			}
			if (pkmn[0].battleStatusFlags.charged)
			{
				pkmn[0].battleStatusFlags.charged--;
			}
			if (pkmn[0].ability == Slow_Start && pkmn[0].slowStartCounter < 4)
			{
				pkmn[0].slowStartCounter++;
			}
			if (pkmn[0].secondaryStatusBits.perishSongCounter)
			{
				pkmn[0].secondaryStatusBits.perishSongCounter--;
				if (pkmn[0].secondaryStatusBits.perishSongCounter == 0)
				{
					// faint as a result of perish song
				}
			}
			pkmn[0].damageReceivedLastTurn = pkmn[0].damageReceivedThisTurn;
			pkmn[0].damageReceivedThisTurn = 0;
		}
	}
}

void MainBattleSelectionKeyPresses(void);

U32FunctionPointerU32 typeChartCallbackFunctions[(Item_Effect_Inversion - Item_Effect_Double_Cash_Gain) + 1][(Item_Effect_Inversion - Item_Effect_Double_Cash_Gain) + 1] = {
		{ &NoEffectTypeChartCallback, &TiltEffectTypeChartCallback, &InversionEffectTypeChartCallback },
		{ &TiltEffectTypeChartCallback, &DoubleTiltedTypeChartCallback, &TiltedInversionTypeChartCallback },
		{ &InversionEffectTypeChartCallback, &TiltedInversionTypeChartCallback, &NoEffectTypeChartCallback }
};

void RunBattleScripts()
{
	if (battleDataPointer[0].flags.waitAttack)
	{
		RunCallbackSystem();
	}
	else if (battleDataPointer[0].flags.endBattle)
	{
		SetTilesForTextRender();
		{
			u32 i;
			for (i = 0; i < 4; i++)
			{
				SpriteDeallocate((void*)(0x06010000 + (((u32)battleDataPointer[0].objectPointers.battlers[i][0].tileLocation) << 5)));
			}
		}
		MemoryDeallocate(battleDataPointer[0].battleAIData);
		MemoryDeallocate(battleDataPointer[0].trainerData);
		MemoryDeallocate(battleDataPointer[0].pokemonStats);
		MemoryDeallocate(battleDataPointer);
		battleDataPointer = 0;
		u32 i;
		u16* address = (u16*)0x0600FBC4;
		for (i = 0; i < 24; i++)
		{
			address[i] = 0;
			address[0x20 + i] = 0;
			address[0x40 + i] = 0;
			address[0x60 + i] = 0;
		}
		CallbackMain = &LoadOverworld;
	}
	else if (battleDataPointer[0].flags.waitAttack == 0 && (battleDataPointer[0].currentBattlerIndex < battleDataPointer[0].numBattlers))
	{
		battleDataPointer[0].loopCounter = 0;
		battleDataPointer[0].moveEffects[0] = 0;
		battleDataPointer[0].moveEffectsExtraInfo[0] = 0;
		battleDataPointer[0].moveEffects[1] = 0;
		battleDataPointer[0].moveEffectsExtraInfo[1] = 0;
		battleDataPointer[0].battleDamageMultiplier = 100;
		u32 index = battleDataPointer[0].moveSelections[battleDataPointer[0].battleOrder[battleDataPointer[0].currentBattlerIndex]];
		switch (index)
		{
			case Selections_Move1:
			case Selections_Move2:
			case Selections_Move3:
			case Selections_Move4:
			{
				battleDataPointer[0].battleBanks[User] = battleDataPointer[0].currentBattlerIndex;
				battleDataPointer[0].battleBanks[Target] = battleDataPointer[0].targets[battleDataPointer[0].currentBattlerIndex];
				{
					u16 moveID = battleDataPointer[0].moveIndex;
					MoveData* moveInfo = (MoveData*)&moveData[moveID];
					u32 effectID = moveInfo[0].effectID;
					if (effectID >= Effects_Max)
					{
						effectID = 0;
					}
					battleScriptPointer = moveScriptsTable[effectID];
					{
						u16 itemEffect1 = GetItemEffect(battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]].heldItem) - Item_Effect_Double_Cash_Gain;
						u16 itemEffect2 = GetItemEffect(battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]].heldItem) - Item_Effect_Double_Cash_Gain;
						if (itemEffect1 > (Item_Effect_Inversion - Item_Effect_Double_Cash_Gain))
						{
							itemEffect1 = 0;
						}
						if (itemEffect2 > (Item_Effect_Inversion - Item_Effect_Double_Cash_Gain))
						{
							itemEffect2 = 0;
						}
						battleDataPointer[0].typeChartCallback = typeChartCallbackFunctions[itemEffect1][itemEffect2];
					}
				}
				break;
			}
			case Selections_AI_Fleeing:
			{
				battleScriptPointer = (u8*)&Script_AI_Flee;
				break;
			}
			case Selections_Flee:
			{
				if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
				{
					battleScriptPointer = (u8*)&Script_Player_Flee;
				}
				else
				{
					battleScriptPointer = (u8*)&Script_Player_Call;
				}
				break;
			}
			case Selections_Item:
			{
				battleScriptPointer = (u8*)&Script_Item_Used;
				break;
			}
			case Selections_Switch:
			{
				battleScriptPointer = (u8*)&Script_Pokemon_Switched;
				break;
			}
		}
		AddFunction(&RunBattleScript, 0);
		battleDataPointer[0].flags.waitAttack = 1;
		RunCallbackSystem();
	}
	else
	{
		battleDataPointer[0].objectPointers.battlers[0]->StateFunction = &MoveUpAndDown;
		battleDataPointer[0].objectPointers.battlers[0]->stateFunctionInfo = 16;
		battleDataPointer[0].battleBanks[User] = 0;
		battleDataPointer[0].currentBattlerIndex = 0;
		UpdateCounters();
		DrawMainSelectionMenu();
		CallbackMain = &BattleWaitForKeyPress;
		HandleKeyPresses = &MainBattleSelectionKeyPresses;
	}
}

void RunAI(BattleAIData* battleAIData)
{
	u32 i;
	for (i = 0; i < (battleDataPointer[0].numBattlers >> 1); i++)
	{
		// This is how to store the final decision on what to do
		// Note that values 0-3 inclusive are moves
		// and the rest of the possible moves for the AI
		// are enumed as follows
		// enum BattleSelectionIndices { Selections_Move1, Selections_Move2, Selections_Move3, Selections_Move4, Selections_Roaming_Fleeing, Selections_Switch, Selections_Item, Selections_Flee };
		// The roaming flee is for AI and Flee is for players
		// as these require 2 completely separate handlers
		battleDataPointer[0].moveSelections[(i << 1) + 1] = 0;
		// this next line tells the rest of the battle system who the AI is choosing to target
		battleDataPointer[0].targets[(i << 1) + 1] = 0;//target here
	}
}

void BattleAISelections()
{
	RunAI((BattleAIData*)&battleDataPointer[0].battleAIData);
	battleDataPointer[0].combinedOrder = 0x03020100;
	battleDataPointer[0].currentBattlerIndex = 0;
	battleDataPointer[0].flags.waitAttack = 0;
	PrioritisePokemon();
	CallbackMain = &RunBattleScripts;
}

void MoveSelectionKeyPresses(void);

void ChooseTargetBattleKeyPress()
{
	if (IsKeyDownButNotHeld(Key_A))
	{
		u32 selectorIndex = battleDataPointer[0].selectorIndex + 2;
		if (selectorIndex == battleDataPointer[0].numBattlers)
		{
			HandleKeyPresses = &IgnoreKeyPresses;
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->StateFunction = 0;
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->stateFunctionInfo = 0;
			CallbackMain = &BattleAISelections;
		}
		else
		{
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->StateFunction = 0;
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->stateFunctionInfo = 0;
			battleDataPointer[0].objectPointers.battlers[selectorIndex]->StateFunction = &MoveUpAndDown;
			battleDataPointer[0].objectPointers.battlers[selectorIndex]->stateFunctionInfo = 16;
			// Handle input again for second Pokémon
		}
	}
	else if (IsKeyDownButNotHeld(Key_B))
	{
		HandleKeyPresses = &MoveSelectionKeyPresses;
	}
	else if (IsKeyDownButNotHeld(Key_Left) || IsKeyDownButNotHeld(Key_Right))
	{
		u32 newPos = battleDataPointer[0].targets[battleDataPointer[0].selectorIndex] ^ 2;
		if (newPos != battleDataPointer[0].selectorIndex)
		{
			battleDataPointer[0].targets[battleDataPointer[0].selectorIndex] = newPos;
		}
	}
	else if (IsKeyDownButNotHeld(Key_Down) || IsKeyDownButNotHeld(Key_Up))
	{
		u32 newPos = battleDataPointer[0].targets[battleDataPointer[0].selectorIndex] ^ 1;
		if (newPos != battleDataPointer[0].selectorIndex)
		{
			battleDataPointer[0].targets[battleDataPointer[0].selectorIndex] = newPos;
		}
	}
}

void MainBattleSelectionKeyPresses(void);

void MoveSelectionKeyPresses()
{
	u32 selectorIndex = battleDataPointer[0].selectorIndex;
	MoveData* moveInfo = (MoveData*)&moveData[battleDataPointer[0].pokemonStats[selectorIndex].moves[battleDataPointer[0].internalSelection[selectorIndex]]];
	if (IsKeyDownButNotHeld(Key_A))
	{
		if (moveInfo[0].targetsStruct.targetsSelf)
		{
			if (moveInfo[0].targetsStruct.hitsAllyInDouble)
			{
				battleDataPointer[0].targets[selectorIndex] = 8 | selectorIndex;
			}
			else
			{
				battleDataPointer[0].targets[selectorIndex] = selectorIndex;
			}
			battleDataPointer[0].moveSelections[selectorIndex] = battleDataPointer[0].internalSelection[selectorIndex];
			selectorIndex += 2;
		}
		else if (moveInfo[0].targetsStruct.hitsBothInDouble)
		{
			if (moveInfo[0].targetsStruct.hitsAllyInDouble)
			{
				battleDataPointer[0].targets[selectorIndex] = 12 | ((selectorIndex ^ 1) & 1);
			}
			else
			{
				battleDataPointer[0].targets[selectorIndex] = 4 | ((selectorIndex ^ 1) & 1);
			}
			battleDataPointer[0].moveSelections[selectorIndex] = battleDataPointer[0].internalSelection[selectorIndex];
			selectorIndex += 2;
		}
		else
		{
			if (battleType.info.isDoubleBattle)
			{
				battleDataPointer[0].targets[selectorIndex] = ((selectorIndex ^ 1) & 1);
				HandleKeyPresses = &ChooseTargetBattleKeyPress;
				battleDataPointer[0].moveSelections[selectorIndex] = battleDataPointer[0].internalSelection[selectorIndex >> 1];
			}
			else
			{
				battleDataPointer[0].targets[selectorIndex] = selectorIndex ^ 1;
				battleDataPointer[0].moveSelections[selectorIndex] = battleDataPointer[0].internalSelection[selectorIndex >> 1];
				selectorIndex += 2;
			}
		}
		battleDataPointer[0].selectorIndex = selectorIndex;
		if (selectorIndex == battleDataPointer[0].numBattlers)
		{
			HandleKeyPresses = &IgnoreKeyPresses;
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->StateFunction = 0;
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->stateFunctionInfo = 0;
			CallbackMain = &BattleAISelections;
		}
		else
		{
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->StateFunction = 0;
			battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->stateFunctionInfo = 0;
			battleDataPointer[0].objectPointers.battlers[selectorIndex]->StateFunction = &MoveUpAndDown;
			battleDataPointer[0].objectPointers.battlers[selectorIndex]->stateFunctionInfo = 16;
			// Handle input again for second Pokémon
		}
	}
	else if (IsKeyDownButNotHeld(Key_B))
	{
		HandleKeyPresses = &MainBattleSelectionKeyPresses;
		DrawMainSelectionMenu();
		// Return to original graphics
	}
	else if (IsKeyDownButNotHeld(Key_Left) || IsKeyDownButNotHeld(Key_Right))
	{
		u32 newPos = battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] ^ 1;
		if (battleDataPointer[0].pokemonStats[battleDataPointer[0].selectorIndex].moves[newPos])
		{
			memset32((void*)(0x0600C280 + ((battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] >> 1) * 0x40) + ((battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] & 1) * 0x1900)), WHITETEXTBG, 16);
			battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] = newPos;
			DrawCharacter(ARROWCHAR, (80 * (battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] & 1)) + 8, 0x10 * (battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] >> 1));
		}
	}
	else if (IsKeyDownButNotHeld(Key_Up) || IsKeyDownButNotHeld(Key_Down))
	{
		u32 newPos = battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] ^ 2;
		if (battleDataPointer[0].pokemonStats[battleDataPointer[0].selectorIndex].moves[newPos])
		{
			memset32((void*)(0x0600C280 + ((battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] >> 1) * 0x40) + ((battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] & 1) * 0x1900)), WHITETEXTBG, 16);
			battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] = newPos;
			DrawCharacter(ARROWCHAR, (80 * (battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] & 1)) + 8, 0x10 * (battleDataPointer[0].internalSelection[battleDataPointer[0].selectorIndex >> 1] >> 1));
		}
	}
}

void MainBattleSelectionKeyPresses()
{
	if (IsKeyDownButNotHeld(Key_A))
	{
		switch (battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1])
		{
			case 0:
				MoveSelectionRender();
				HandleKeyPresses = &MoveSelectionKeyPresses;
				break;
			case 1:
				// Go To Bag
				HandleKeyPresses = &MoveSelectionKeyPresses;
				break;
			case 2:
				// Go To Pokemon Menu
				HandleKeyPresses = &MoveSelectionKeyPresses;
				break;
			case 3:
				battleDataPointer[0].moveSelections[battleDataPointer[0].selectorIndex] = Selections_Flee;
				if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
				{
					HandleKeyPresses = &IgnoreKeyPresses;
					CallbackMain = &BattleAISelections;
				}
				else
				{
					u32 selectorIndex = battleDataPointer[0].selectorIndex;
					selectorIndex += 2;
					if (selectorIndex == battleDataPointer[0].numBattlers)
					{
						HandleKeyPresses = &IgnoreKeyPresses;
						CallbackMain = &BattleAISelections;
						battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->StateFunction = 0;
						battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->stateFunctionInfo = 0;
					}
					else
					{
						battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->StateFunction = 0;
						battleDataPointer[0].objectPointers.battlers[selectorIndex - 2]->stateFunctionInfo = 0;
						battleDataPointer[0].objectPointers.battlers[selectorIndex]->StateFunction = &MoveUpAndDown;
						battleDataPointer[0].objectPointers.battlers[selectorIndex]->stateFunctionInfo = 16;
					}
					battleDataPointer[0].selectorIndex = selectorIndex;
				}
				break;
		}
	}
	else if (IsKeyDownButNotHeld(Key_Left) || IsKeyDownButNotHeld(Key_Right))
	{
		memset32((void*)(0x0600E300 + ((battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] >> 1) * 0x40) + ((battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] & 1) * 0xF00)), WHITETEXTBG, 16);
		battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] ^= 1;
		DrawCharacter(ARROWCHAR, (0x30 * (battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] & 1)) + 0x70, 0x10 * (battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] >> 1));
	}
	else if (IsKeyDownButNotHeld(Key_Up) || IsKeyDownButNotHeld(Key_Down))
	{
		memset32((void*)(0x0600E300 + ((battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] >> 1) * 0x40) + ((battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] & 1) * 0xF00)), WHITETEXTBG, 16);
		battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] ^= 2;
		DrawCharacter(ARROWCHAR, (0x30 * (battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] & 1)) + 0x70, 0x10 * (battleDataPointer[0].mainSelection[battleDataPointer[0].selectorIndex >> 1] >> 1));
	}
}

const TrainerPokemonData weezing1 = {
		Weezing, 40, 0, 0
};

const TrainerPokemonData golem1 = {
		Golem, 40, 0, 0
};

const TrainerPokemonData pidgeot1 = {
		Pidgeot, 40, 0, 0
};

const TrainerPokemonData ekans1 = {
		Arbok, 40, 0, 0
};

const TrainerPokemonData alakazam1 = {
		Alakazam, 40, 0, 0
};

const TrainerData trainerBattleDataTable[] = {
		{ 1, 0, 0, Class_Elite_Trainer, { 0, 0, 0, 0 }, { 'J', 'e', 'r', 'e', 'm', 'y', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&pidgeot1 },
		{ 1, 0, 0, Class_Champion, { 0, 0, 0, 0 }, { 'G', 'a', 'r', 'y', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&alakazam1 },
		{ 1, 0, 0, Class_Gym_Leader, { 0, 0, 0, 0 }, { 'B', 'r', 'o', 'c', 'k', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&golem1 },
		{ 1, 0, 0, Class_Evil_Team, { 0, 0, 0, 0 }, { 'J', 'a', 'm', 'e', 's', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&ekans1 },
		{ 1, 0, 0, Class_Evil_Team_Duo, { 0, 0, 0, 0 }, { 'J', 'e', 's', 's', 'i', 'e', ' ', '&', ' ', 'J', 'a', 'm', 'e', 's', '\0', 0 }, (TrainerPokemonData*)&weezing1 }
};

void InitialiseBattleEnvironment()
{
	currentMap = GetMapHeaderFromBankAndMapID(3, 1)[0];
#if TESTMODE == WILDBATTLE
	battleType.info.isWildBattle = 1;
#elif TESTMODE == DOUBLEWILD
	battleType.info.isWildBattle = 1;
	battleType.info.isDoubleBattle = 1;
#elif TESTMODE == RAREWILD
	battleType.info.isWildBattle = 1;
	battleType.info.isRareWildBattle = 1;
#elif TESTMODE == LEGENDARYWILD
	battleType.info.isWildBattle = 1;
	battleType.info.isLegendaryWildBattle = 1;
#elif TESTMODE == ROAMINGWILD
	battleType.info.isWildBattle = 1;
	battleType.info.isRoamingWildBattle = 1;
#else
	battleType.info.isTrainerBattle = 1;
#endif
	battleDataPointer = (BattleData*)MemoryAllocate(sizeof(BattleData));
	battleDataPointer[0].numBattlers = 2 << battleType.info.isDoubleBattle;
	battleDataPointer[0].pokemonStats = (PokemonBattleData*)MemoryAllocate(sizeof(PokemonBattleData) * battleDataPointer[0].numBattlers);
	if (battleType.info.isTrainerBattle)
	{
		battleDataPointer[0].trainerData = (TrainerBattleData*)MemoryAllocate(sizeof(TrainerBattleData));
		battleDataPointer[0].trainerData[0].trainerID = GetRandom32BitValue();
#if TESTMODE == GYMBATTLE
		u16 trainerID = 2;
#elif TESTMODE == EVILBATTLE
		u16 trainerID = 3;
#elif TESTMODE == EVILDUOBATTLE
		u16 trainerID = 4;
#elif TESTMODE == CHAMPIONBATTLE
		u16 trainerID = 1;
#else
		u16 trainerID = 0;
#endif
		TrainerData* data = (TrainerData*)&trainerBattleDataTable[trainerID];
		u32 i;
		u32 upperLimit = data[0].numPokemon;
		for (i = 0; i < upperLimit; i++)
		{
			Pokemon* thePokemon = (Pokemon*)&enemyPokemon[i];
			GivePokemonToTrainer(thePokemon, data[0].pokemonData[i].level, data[0].pokemonData[i].species, 0, (char*)&data[0].name, battleDataPointer[0].trainerData[0].trainerID);
			if (data[0].battleVarietyBits.isHeldItemsBattle)
			{
				if (data[0].battleVarietyBits.isMovesetBattle)
				{
					u32 j;
					for (j = 0; j < 4; j++)
					{
						u16 moveID = data[0].pokemonDataMoves[i].moves[j];
						PokemonEncrypter(thePokemon, Move1 + j, moveID);
						PokemonEncrypter(thePokemon, Move1PP + j, moveData[moveID].basePP);
					}
					PokemonEncrypter(thePokemon, HeldItem, data[0].pokemonDataMoves[i].mainData.heldItem);
				}
				else
				{
					PokemonEncrypter(thePokemon, HeldItem, data[0].pokemonData[i].heldItem);
				}
			}
			else if (data[0].battleVarietyBits.isMovesetBattle)
			{
				u32 j;
				for (j = 0; j < 4; j++)
				{
					u16 moveID = data[0].pokemonDataMoves[i].moves[j];
					PokemonEncrypter(thePokemon, Move1 + j, moveID);
					PokemonEncrypter(thePokemon, Move1PP + j, moveData[moveID].basePP);
				}
			}
		}
		battleDataPointer[0].trainerData[0].pointerToData = data;
		battleDataPointer[0].trainerData[0].afterBattleText = "Congratulations!";
	}
	else
	{
		GenerateWildPokemonFromData((Pokemon*)&enemyPokemon[0], currentMap.wildDataLocation);
	}
	CopyBattleDataFromPokemon(&partyPokemon[0], &battleDataPointer[0].pokemonStats[0]);
	CopyBattleDataFromPokemon(&enemyPokemon[0], &battleDataPointer[0].pokemonStats[1]);
	battleDataPointer[0].objectPointers.battlers[0] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[0], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&partyPokemon[0], Sprite_Side_Back))];
	memcpy32((void*)ObjectPaletteRAM(0), GetPokemonSpritePaletteFromPokemon(&partyPokemon[0], Palette_Normal + PokemonIsShiny(&partyPokemon[0])), 8);
	battleDataPointer[0].objectPointers.battlers[1] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[1], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&enemyPokemon[0], Sprite_Side_Front))];
	memcpy32((void*)ObjectPaletteRAM(1), GetPokemonSpritePaletteFromPokemon(&enemyPokemon[0], Palette_Normal + PokemonIsShiny(&enemyPokemon[0])), 8);
	battleDataPointer[0].objectPointers.battlers[0]->StateFunction = &MoveUpAndDown;
	battleDataPointer[0].objectPointers.battlers[0]->stateFunctionInfo = 16;
	if (battleType.info.isDoubleBattle)
	{
		CopyBattleDataFromPokemon(&partyPokemon[1], &battleDataPointer[0].pokemonStats[2]);
		CopyBattleDataFromPokemon(&enemyPokemon[1], &battleDataPointer[0].pokemonStats[3]);
		battleDataPointer[0].objectPointers.battlers[2] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[4], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&partyPokemon[1], Sprite_Side_Back))];
		memcpy32((void*)ObjectPaletteRAM(2), GetPokemonSpritePaletteFromPokemon(&partyPokemon[1], Palette_Normal + PokemonIsShiny(&partyPokemon[1])), 8);
		battleDataPointer[0].objectPointers.battlers[3] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[5], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&enemyPokemon[1], Sprite_Side_Front))];
		memcpy32((void*)ObjectPaletteRAM(3), GetPokemonSpritePaletteFromPokemon(&enemyPokemon[1], Palette_Normal + PokemonIsShiny(&enemyPokemon[1])), 8);
	}
	DrawMainSelectionMenu();
	SetupSongForPlayback(GetSongIDForBattle(), 0);
	memcpy32((void*)TilePaletteRAM(0), &battleTextPalette, 8);
	memcpy32((void*)TilePaletteRAM(1), &pauseOutlinePalette, 8);
	REG_BG0CNT = BATTLE_LAYER_0_SETTINGS;
	player.textSpeed = 2;
	CallbackMain = &BattleWaitForKeyPress;
	HandleKeyPresses = &MainBattleSelectionKeyPresses;
}
