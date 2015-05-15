#include "Maths.h"
#include "GBADivideFunctions.h"

EWRAM_LOCATION ALIGN(4) u32 Maths::currentSeed = 0;

u32 Maths::ToHex(u32 decimalValue)
{
	return (((decimalValue) & 0xF) + (((decimalValue) >> 4) * 10));
}

u32 Maths::UnsignedDivide(u32 numerator, u32 denominator)
{
	if (numerator < denominator)
	{
		return 0;
	}
	else if (denominator != 0)
	{
		if (numerator == denominator)
		{
			return 1;
		}
		return numerator / denominator;
	}
	return 0;
}

u32 Maths::UnsignedModulus(u32 numerator, u32 denominator)
{
	if (numerator < denominator)
	{
		return numerator;
	}
	else if (denominator == 0)
	{
		return 0;
	}
	else if ((denominator & 1) == 0)
	{
		u32 i;
		for (i = 1; i < 0x20; i++)
		{
			if ((u32)(1 << i) > denominator)
			{
				break;
			}
			else if ((u32)(1 << i) == denominator)
			{
				return (numerator & (denominator - 1));
			}
		}
	}
	return numerator % denominator;
}

u32 Maths::ToDecimal(u32 hexValue)
{
	if (hexValue <= 99999999)
	{
		u32 counter = 0;
		while (hexValue >= 10000000)
		{
			hexValue -= 10000000;
			counter++;
		}
		u32 retValue = counter << 28;
		counter = 0;
		while (hexValue >= 1000000)
		{
			hexValue -= 1000000;
			counter++;
		}
		retValue |= counter << 24;
		counter = 0;
		while (hexValue >= 100000)
		{
			hexValue -= 100000;
			counter++;
		}
		retValue |= counter << 20;
		counter = 0;
		while (hexValue >= 10000)
		{
			hexValue -= 10000;
			counter++;
		}
		retValue |= counter << 16;
		counter = 0;
		while (hexValue >= 1000)
		{
			hexValue -= 1000;
			counter++;
		}
		retValue |= counter << 12;
		counter = 0;
		while (hexValue >= 100)
		{
			hexValue -= 100;
			counter++;
		}
		retValue |= counter << 8;
		counter = 0;
		while (hexValue >= 10)
		{
			hexValue -= 10;
			counter++;
		}
		retValue |= counter << 4;
		counter = 0;
		while (hexValue > 0)
		{
			hexValue--;
			counter++;
		}
		retValue += counter;
		return retValue;
	}
	return 0;
}

u32 Maths::Absolute(s32 value) {
	if (value < 0)
	{
		value *= -1;
	}
	return value;
}

s32 Maths::Sign(s32 value)
{
	if (value < 0)
	{
		return -1;
	}
	else if (value > 0)
	{
		return 1;
	}
	return 0;
}

s32 Maths::SignedDivide(s32 numerator, s32 denominator)
{
	if (Maths::Absolute(numerator) < Maths::Absolute(denominator))
	{
		return 0;
	}
	else if (denominator != 0)
	{
		if (Maths::Absolute(numerator) == Maths::Absolute(denominator))
		{
			if (numerator != denominator)
			{
				return -1;
			}
			return 1;
		}
		return numerator / denominator;
	}
	return 0;
}

u32 Maths::UnsignedFractionalMultiplication(u32 numerator, u32 multiplier)
{
	if (multiplier * 10 != 1000)
	{
		return Maths::UnsignedDivide((numerator * (multiplier * 10)), 1000);
	}
	return numerator;
}

s32 Maths::SignedFractionalMultiplication(s32 numerator, s32 multiplier)
{
	if (multiplier * 100 != 1000)
	{
		return Maths::SignedDivide((numerator * (multiplier * 100)), 1000);
	}
	return numerator;
}

void Maths::UpdateRandomValue()
{
	currentSeed = currentSeed * 0x41C64E6D + 0x6073;
}

u32 Maths::GetRandom32BitValue()
{
	Maths::UpdateRandomValue();
	return currentSeed;
}

u16 Maths::GetRandom16BitValue()
{
	Maths::UpdateRandomValue();
	return (u16)(currentSeed >> 16);
}

u32 Maths::GetDelimitedRandom32BitValue(u32 upperLimit)
{
	if (upperLimit < 2)
	{
		return 0;
	}
	else
	{
		return Maths::UnsignedModulus(Maths::GetRandom32BitValue(), upperLimit);
	}
}

u16 Maths::GetDelimitedRandom16BitValue(u32 upperLimit)
{
	if (upperLimit < 2)
	{
		return 0;
	}
	else
	{
		return Maths::UnsignedModulus(Maths::GetRandom16BitValue(), upperLimit);
	}
}

u32 Maths::WeightedRandom(u8* probabilities, u8 length)
{
	if (length == 0)
	{
		return 0;
	}
	u32 i;
	u32 trackerValue = 0;
	u16 randomValue = Maths::GetDelimitedRandom16BitValue(100);
	for (i = 0; i < length; i++)
	{
		trackerValue += probabilities[i];
		if (trackerValue > randomValue)
		{
			return i;
		}
	}
	return 0;
}

u32 Maths::Mean(u32* array, u32 numItems)
{
	u32 counter = 0;
	u32 i;
	for (i = 0; i < numItems; i++)
	{
		counter += array[i];
	}
	return Maths::UnsignedDivide(counter, numItems);
}

u32 Maths::Mode(u32* array, u32 numItems)
{
	// To be reimplemented
	return 0;
}

u32 Maths::Factorial(u32 value)
{
	if (value >= 13)
	{
		return U32Max;
	}
	else if (value == 1)
	{
		return 1;
	}
	else
	{
		return Maths::Factorial(value - 1) * value;
	}
}

void Maths::SeedRNG(u32 seed)
{
	currentSeed = seed;
}

void Maths::ReseedRNG()
{
	u32 seed = (REG_TM3D << 16) | REG_TM2D;
	Maths::SeedRNG(seed);
}
