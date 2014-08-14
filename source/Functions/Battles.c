#include "Functions.h"
#include "Data.h"
#include "Data\PokeStats.h"
#include "Functions\BattleScriptCommands.h"
#include "Functions\ScriptRunner.h"
#include "Data\MemoryLocations.h"
#include "libbattlescripts.h"

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
	if (battleType & 0x80000000)
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
	RecalculateAllEffectiveStats(dataLocation);
}

void InitialiseBattleEnvironment()
{
	battleDataPointer = (BattleData*)MemoryAllocate(sizeof(BattleData));
	battleDataPointer[0].pokemonStats = (PokemonBattleData*)MemoryAllocate(sizeof(PokemonBattleData) * 4);
	CopyBattleDataFromPokemon(&partyPokemon[0], &battleDataPointer[0].pokemonStats[0]);
	CopyBattleDataFromPokemon(&enemyPokemon[0], &battleDataPointer[0].pokemonStats[1]);
	if (battleType & 0x80000000)
	{
		CopyBattleDataFromPokemon(&partyPokemon[1], &battleDataPointer[0].pokemonStats[2]);
		CopyBattleDataFromPokemon(&enemyPokemon[1], &battleDataPointer[0].pokemonStats[3]);
	}
	battleDataPointer[0].battleBanks[User] = 0;
	battleDataPointer[0].battleBanks[Target] = 1;
	battleScriptPointer = (u8*)&Script_Standard_Attack;
	AddFunction(&RunBattleScript, 0);
	CallbackMain = &BattleWaitForKeyPress;
}
