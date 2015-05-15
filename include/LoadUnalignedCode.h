#ifndef LOADUNALIGNEDCODE_H
#define LOADUNALIGNEDCODE_H

#include "GlobalDefinitions.h"

class UnalignedNumberhandler
{
public:
	static u32 LoadUnalignedNumber(u8* location, u32 modifier, u8 length);
	static u32* LoadUIntPointer(u8* location, u32 modifier);
	static u16 LoadUShortNumber(u8* location, u32 modifier);
	static u8 SwapBits(u8 value);
};

#endif
