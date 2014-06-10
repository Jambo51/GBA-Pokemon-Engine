#include "tonc.h"

void SetMemoryByte(u8* memoryLocation, u8 value)
{
	memoryLocation[0] = value;
}

void SetMemoryHalfWord(u16* memoryLocation, u16 value)
{
	memoryLocation[0] = value;
}

void SetMemoryWord(u32* memoryLocation, u32 value)
{
	memoryLocation[0] = value;
}
