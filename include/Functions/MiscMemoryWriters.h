#ifndef MISCMEMORYWRITERS_H
#define MISCMEMORYWRITERS_H

#include "Data/GlobalDefinitions.h"

void SetMemoryByte(u8* memoryLocation, u8 value);
void SetMemoryHalfWord(u16* memoryLocation, u16 value);
void SetMemoryWord(u32* memoryLocation, u32 value);

#endif
