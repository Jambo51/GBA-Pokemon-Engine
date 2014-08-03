#include "Functions.h"
#include "Data.h"

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

const U32FunctionPointerVoid BallBonusRates[] = {
		100
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
		u32 finalCatchRate = Sqrt(Sqrt(UnsignedDivide(catchRate, 255)));
		finalCatchRate *= 0xFFFF;
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
		return i;
	}
	return TripleShakeSuccess;
}

void ChangeBattleDamageLocation(u8 damageValue)
{
	battleDamage = UnsignedFractionalMultiplication(battleDamage, damageValue);
}

void ApplyTypeBasedModifiers(u32 moveType, u32 defenderType1, u32 defenderType2)
{
	if (battleDamage != 0)
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
		ChangeBattleDamageLocation(typeStrengths[moveType][defenderType1]);
		if (defenderType2 != defenderType1 && battleDamage != 0)
		{
			ChangeBattleDamageLocation(typeStrengths[moveType][defenderType2]);
		}
	}
}
