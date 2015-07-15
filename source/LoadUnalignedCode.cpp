#include "LoadUnalignedCode.h"

u32 UnalignedNumberHandler::LoadUnalignedNumber(u8* location, u32 modifier, u8 length)
{
	u32 returnable = 0;
	u8 i;
	for (i = 0; i < length; i++)
	{
		returnable |= (location[modifier + i] << (i << 3));
	}
	return returnable;
}

u32* UnalignedNumberHandler::LoadUIntPointer(u8* location, u32 modifier)
{
	if (((u32)location + modifier) & 3 == 0)
	{
		return *((u32**)((u32)(location) + modifier));
	}
	else
	{
		return (u32*)LoadUnalignedNumber(location, modifier, 4);
	}
}

u16 UnalignedNumberHandler::LoadUShortNumber(u8* location, u32 modifier)
{
	u8 alignment = ((u32)(location) + modifier) & 0xF;
	if ((alignment & 1) == 0)
	{
		return ((u16*)((u32)(location) + modifier))[0];
	}
	else
	{
		return (u16)LoadUnalignedNumber(location, modifier, 2);
	}
}

u8 UnalignedNumberHandler::SwapBits(u8 value)
{
	return ((value & 0xF0) >> 4) | ((value & 0xF) << 4);
}
