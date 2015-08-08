#include "GlobalDefinitions.h"

#ifndef MATHS_H
#define MATHS_H

class Maths
{
private:
	Maths() { }
	~Maths() { }
	static u32 currentSeed;
public:
	static u32 ToDecimal(u32 hexValue);
	static s32 Sign(s32 value);
	static u32 Absolute(s32 value);
	static u32 ToHex(u32 decimalValue);
	static u32 UnsignedDivide(u32 numerator, u32 denominator);
	static u32 UnsignedModulus(u32 numerator, u32 denominator);
	static s32 SignedDivide(s32 numerator, s32 denominator);
	static u32 UnsignedFractionalMultiplication(u32 numerator, u32 multiplier);
	static s32 SignedFractionalMultiplication(s32 numerator, s32 multiplier);
	static void UpdateRandomValue();
	static u32 GetRandom32BitValue();
	static u16 GetRandom16BitValue();
	static u32 GetDelimitedRandom32BitValue(u32 upperLimit);
	static u16 GetDelimitedRandom16BitValue(u32 upperLimit);
	static u32 WeightedRandom(u8* probabilities, u8 length);
	static u32 Mean(u32* array, u32 numItems);
	static u32 Mode(u32* array, u32 numItems);
	static u32 Factorial(u32 value);
	static void SeedRNG(u32 seed);
	static void ReseedRNG();
	static u32 Power(u32 value, u32 powerValue = 0);
};
#endif
