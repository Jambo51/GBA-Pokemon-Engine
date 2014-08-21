#include "Functions.h"
#include "Data.h"
#include "Data\PokeStats.h"
#include "Functions\BattleScriptCommands.h"
#include "Functions\ScriptRunner.h"
#include "Data\MemoryLocations.h"
#include "Functions\ObjectFunctions.h"
#include "libbattlescripts.h"

#define BG_PRIORITY_ZERO 0
#define MAJORITY (BG_4BPP | BG_REG_32x32 | BG_MOSAIC | BG_SBB(31) | BG_PRIORITY_ZERO)
#define MAIN_BG_SETTINGS2 (BG_CBB(2) | MAJORITY)

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
	if (battleType.isDoubleBattle)
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

const u16 moonBallAffectedPokemon[] = {
		Cleffa,
		Clefairy,
		Clefable,
		Igglybuff,
		Jigglypuff,
		Wigglytuff,
		Munna,
		Musharna,
		NidoranM,
		Nidorino,
		Nidoking,
		NidoranF,
		Nidorina,
		Nidoqueen,
		Skitty,
		Delcatty
};

u32 MoonBallPokeball()
{
	u32 retValue = 100;
	u16 opponentSpecies = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[PokeballTarget]].species;
	u32 i;
	for (i = 0; i < 16; i++)
	{
		if (opponentSpecies == moonBallAffectedPokemon[i])
		{
			retValue = 300;
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
	// Logic absent form this as Pokédex data not yet created
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
	RunCallbackSystem();
	// Move Objects Up and Down
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
		else if (selection == Selections_Roaming_Fleeing)
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
	if (battleType.isWildBattle && (battleType.isDoubleBattle || battleType.isRareWildBattle))
	{
		trackID = Track_Battle_Rare_Wild;
	}
	else if (battleType.isLinkBattle)
	{
		trackID = Track_Battle_Link;
	}
	else if (battleType.isTrainerBattle)
	{
		u32 i = 0;
		u32 trainerClass = Class_Evil_Team;
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
	else if (battleType.isLegendaryWildBattle)
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
	else if (battleType.isRoamingWildBattle)
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

#define WILDBATTLE 0
#define TRAINERBATTLE 1
#define DOUBLEWILD 2
#define RAREWILD 3
#define LEGENDARYWILD 4
#define ROAMINGWILD 5

#define TESTMODE TRAINERBATTLE

const RODATA_LOCATION OAMData battleObjectsOAMData[] = {
		{ 0, 0, 1, 0, 0, 0, 48, 40, 0 },
		{ 0, 1, 1, 0, 0, 0, 8, 144, 0 },
		{ 0, 0, 1, 0, 0, 0, 8, 144, 0 },
		{ 0, 1, 1, 0, 0, 0, 8, 144, 0 },
		{ 0, 2, 1, 0, 0, 0, 8, 144, 0 },
		{ 0, 3, 1, 0, 0, 0, 8, 144, 0 }
};

void InitialiseBattleEnvironment()
{
#if TESTMODE == WILDBATTLE
	battleType.isWildBattle = 1;
#elif TESTMODE == TRAINERBATTLE
	battleType.isTrainerBattle = 1;
#elif TESTMODE == DOUBLEWILD
	battleType.isWildBattle = 1;
	battleType.isDoubleBattle = 1;
#elif TESTMODE == RAREWILD
	battleType.isWildBattle = 1;
	battleType.isRareWildBattle = 1;
#elif TESTMODE == LEGENDARYWILD
	battleType.isLegendaryWildBattle = 1;
#elif TESTMODE == ROAMINGWILD
	battleType.isRoamingWildBattle = 1;
#endif
	battleDataPointer = (BattleData*)MemoryAllocate(sizeof(BattleData));
	battleDataPointer[0].numBattlers = 2 << battleType.isDoubleBattle;
	battleDataPointer[0].pokemonStats = (PokemonBattleData*)MemoryAllocate(sizeof(PokemonBattleData) * battleDataPointer[0].numBattlers);
	CopyBattleDataFromPokemon(&partyPokemon[0], &battleDataPointer[0].pokemonStats[0]);
	CopyBattleDataFromPokemon(&enemyPokemon[0], &battleDataPointer[0].pokemonStats[1]);
	if (battleType.isDoubleBattle)
	{
		CopyBattleDataFromPokemon(&partyPokemon[1], &battleDataPointer[0].pokemonStats[2]);
		CopyBattleDataFromPokemon(&enemyPokemon[1], &battleDataPointer[0].pokemonStats[3]);
		battleDataPointer[0].objectPointers.battlers[0] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[2], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&partyPokemon[0], Sprite_Side_Back))];
		memcpy32((void*)ObjectPaletteRAM(0), GetPokemonSpritePaletteFromPokemon(&partyPokemon[0], Palette_Normal + PokemonIsShiny(&partyPokemon[0])), 8);
		battleDataPointer[0].objectPointers.battlers[1] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[3], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&enemyPokemon[0], Sprite_Side_Front))];
		memcpy32((void*)ObjectPaletteRAM(1), GetPokemonSpritePaletteFromPokemon(&enemyPokemon[0], Palette_Normal + PokemonIsShiny(&enemyPokemon[0])), 8);
		battleDataPointer[0].objectPointers.battlers[2] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[4], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&partyPokemon[1], Sprite_Side_Back))];
		memcpy32((void*)ObjectPaletteRAM(2), GetPokemonSpritePaletteFromPokemon(&partyPokemon[1], Palette_Normal + PokemonIsShiny(&partyPokemon[1])), 8);
		battleDataPointer[0].objectPointers.battlers[3] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[5], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&enemyPokemon[1], Sprite_Side_Front))];
		memcpy32((void*)ObjectPaletteRAM(3), GetPokemonSpritePaletteFromPokemon(&enemyPokemon[1], Palette_Normal + PokemonIsShiny(&enemyPokemon[1])), 8);
	}
	else
	{
		battleDataPointer[0].objectPointers.battlers[0] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[0], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&partyPokemon[0], Sprite_Side_Back))];
		memcpy32((void*)ObjectPaletteRAM(0), GetPokemonSpritePaletteFromPokemon(&partyPokemon[0], Palette_Normal + PokemonIsShiny(&partyPokemon[0])), 8);
		battleDataPointer[0].objectPointers.battlers[1] = (PreOAMStruct*)&preOAM[CreateObjectFromCompressedImage((OAMData*)&battleObjectsOAMData[1], Shape_Square, Square_64x64, GetPokemonSpritePaletteFromPokemon(&enemyPokemon[0], Sprite_Side_Front))];
		memcpy32((void*)ObjectPaletteRAM(1), GetPokemonSpritePaletteFromPokemon(&enemyPokemon[0], Palette_Normal + PokemonIsShiny(&enemyPokemon[0])), 8);
	}
	battleDataPointer[0].battleBanks[User] = 0;
	battleDataPointer[0].battleBanks[Target] = 1;
	SetupSongForPlayback(GetSongIDForBattle(), 0);
	battleDataPointer[0].participantInfo.numParticipants = 2;
	battleDataPointer[0].battleDamage = CalculateExperienceGain(Mode_Standard_Exp_Calc);
	battleScriptPointer = (u8*)&Script_Standard_Attack;
	AddFunction(&RunBattleScript, 0);
	DrawStringOverTime("Charizard used Flame Burst!", 0, 0, 15);
	REG_BG0CNT = MAIN_BG_SETTINGS2;
	u32 i;
	u16* address = (u16*)0x0600FBC4;
	for (i = 0; i < 20; i++)
	{
		address[i] = 0xE200 + (i * 20);
		address[0x20 + i] = 0xE201 + (i * 20);
	}
	CallbackMain = &BattleWaitForKeyPress;
}
