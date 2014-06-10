#ifndef LOADUNALIGNEDCODE_H
#define LOADUNALIGNEDCODE_H

#include "Data/GlobalDefinitions.h"

u32 LoadUnalignedNumber(u8* location, u32 modifier, u8 length);
extern u32* LoadUIntPointer(u8* location, u32 modifier);
extern u16 LoadUShortNumber(u8* location, u32 modifier);
extern u8 SwapBits(u8 value);

#endif
