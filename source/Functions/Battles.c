#include "Functions.h"
#include "Data.h"
#include "Data\PokeStats.h"

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

const RODATA_LOCATION u16 moonBallAffectedPokemon[] = {
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
		u32 currentEffectiveness;
		switch (typeValue)
		{
			case 0:
				currentEffectiveness = NoEffect;
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

u32 ApplyCriticalHitModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender)
{
	battleDataPointer[0].flags.criticalHitFlag = 0;
	u8 defenderAbility = defender[0].ability;
	if (defenderAbility != Battle_Armour && defenderAbility != Shell_Armour)
	{
		u8 attackerAbility = attacker[0].ability;
		battleDataPointer[0].flags.criticalHitFlag = 1;
		if (attackerAbility == Sniper)
		{
			currentDamage *= 3;
		}
		else
		{
			currentDamage <<= 1;
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

const RODATA_LOCATION u16 statBuffEffects[] = {
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

void RecalculateEffectiveStat(u32 pokemonIndex, u32 statIndex)
{
	PokemonBattleData* data = &(battleDataPointer[0].pokemonStats[pokemonIndex]);
	data[0].effectiveStats[statIndex] = UnsignedFractionalMultiplication(data[0].stats[statIndex], statBuffEffects[data[0].statLevels[statIndex]]);
}

void RecalculateAllEffectiveStats(u32 pokemonIndex)
{
	u32 i;
	for (i = 0; i < NumBattleStats; i++)
	{
		RecalculateEffectiveStat(pokemonIndex, i);
	}
}

void CalculateMoveDamage(u16 moveID, u32 attackerID, u32 defenderID)
{
	u32 attackerIndex;
	u32 defenderIndex;
	MoveData* moveInfo = &moveData[moveID];
	{
#if DAMAGECALCMODE == DPSS
		u32 category = moveInfo[0].category;
		if (category == Category_Status)
		{
			battleDataPointer[0].battleDamage = 0;
			return;
		}
		if (category == Category_Physical)
		{
			attackerIndex = BattleAttack;
			defenderIndex = BattleDefence;
		}
		else
		{
			attackerIndex = BattleSpecialAttack;
			defenderIndex = BattleSpecialDefence;
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
	PokemonBattleData* attacker = &battleDataPointer[0].pokemonStats[attackerID];
	PokemonBattleData* defender = &battleDataPointer[0].pokemonStats[attackerID];
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
	if (damage == 0 && battleDataPointer[0].flags.attackEffectiveness != 0)
	{
		damage = 1;
	}
	battleDataPointer[0].battleDamage = damage;
}
