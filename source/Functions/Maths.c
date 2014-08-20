#include "Functions.h"
#include "Data.h"

u32 ToHex(u32 decimalValue)
{
	return (((decimalValue) & 0xF) + (((decimalValue) >> 4) * 10));
}

u32 UnsignedDivide(u32 numerator, u32 denominator)
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
		return FastDivModUnsigned(numerator, denominator);
	}
	return 0;
}

u32 UnsignedModulus(u32 numerator, u32 denominator)
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
			if ((1 << i) > denominator)
			{
				break;
			}
			else if ((1 << i) == denominator)
			{
				return (numerator & (denominator - 1));
			}
		}
	}
	return numerator % denominator;
}

u32 ToDecimal(u32 hexValue)
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

u32 Absolute(s32 value) {
	if (value < 0)
	{
		value *= -1;
	}
	return value;
}

s32 Sign(s32 value)
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

s32 SignedDivide(s32 numerator, s32 denominator)
{
	if (Absolute(numerator) < Absolute(denominator))
	{
		return 0;
	}
	else if (denominator != 0)
	{
		if (Absolute(numerator) == Absolute(denominator))
		{
			if (numerator != denominator)
			{
				return -1;
			}
			return 1;
		}
		return FastDivModSigned(numerator, denominator);
	}
	return 0;
}

u32 UnsignedFractionalMultiplication(u32 numerator, u32 multiplier)
{
	if (multiplier * 10 != 1000)
	{
		return UnsignedDivide((numerator * (multiplier * 10)), 1000);
	}
	return numerator;
}

s32 SignedFractionalMultiplication(s32 numerator, s32 multiplier)
{
	if (multiplier * 100 != 1000)
	{
		return SignedDivide((numerator * (multiplier * 100)), 1000);
	}
	return numerator;
}

void UpdateRandomValue()
{
	currentSeed = currentSeed * 0x41C64E6D + 0x6073;
}

u32 GetRandom32BitValue()
{
	UpdateRandomValue();
	return currentSeed;
}

u16 GetRandom16BitValue()
{
	UpdateRandomValue();
	return (u16)(currentSeed >> 16);
}

u32 GetDelimitedRandom32BitValue(u32 upperLimit)
{
	if (upperLimit < 2)
	{
		return 0;
	}
	else
	{
		return UnsignedModulus(GetRandom32BitValue(), upperLimit);
	}
}

u16 GetDelimitedRandom16BitValue(u32 upperLimit)
{
	if (upperLimit < 2)
	{
		return 0;
	}
	else
	{
		return UnsignedModulus(GetRandom16BitValue(), upperLimit);
	}
}

u32 WeightedRandom(u8* probabilities, u8 length)
{
	if (length == 0)
	{
		return 0;
	}
	u32 i;
	u32 trackerValue = 0;
	u16 randomValue = GetDelimitedRandom16BitValue(100);
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

void SeedRNG(u32 seed)
{
	currentSeed = seed;
}

void ReseedRNG()
{
	u32 seed = (REG_TM3D << 16) | REG_TM2D;
	SeedRNG(seed);
}
