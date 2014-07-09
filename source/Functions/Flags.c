#include "Data/MemoryLocations.h"

#define upperMainFlagLimit 0x2000
#define numberOfPokemon 0x28A

u8* FlagDecryption(u32 flagID, u8* ramLocation, u32 upperFlagLimit)
{
	if (flagID >= upperFlagLimit)
	{
		return 0;
	}
	else
	{
		return ((flagID >> 3) + ramLocation);
	}
}

u32 GetSeenCaughtStatus(u32 pokemonIndex, u32 modeIndex)
{
	u8* location;
	if ((modeIndex & 2) == 0)
	{
		location = FlagDecryption(pokemonIndex, (u8*)(&seenFlags), numberOfPokemon);
	}
	else
	{
		location = FlagDecryption(pokemonIndex, (u8*)(&caughtFlags), numberOfPokemon);
	}
	if ((modeIndex & 1) == 0)
	{
		return ((location[0] >> (pokemonIndex & 7)) & 1);
	}
	location[0] = location[0] | (1 << (pokemonIndex & 7));
	return 0;
}

u32 GenericCheckFlag(u32 flagID, u8* flagLocation)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperMainFlagLimit);
	if (location == 0)
	{
		return 0;
	}
	return ((location[0] >> (flagID & 7)) & 1);
}

u32 CheckFlag(u32 flagID)
{
	return GenericCheckFlag(flagID, (u8*)(&mainFlagBank));
}

void GenericSetFlag(u32 flagID, u8* flagLocation)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperMainFlagLimit);
	if (location == 0)
	{
		return;
	}
	location[0] = location[0] | (1 << (flagID & 7));
}

void SetFlag(u32 flagID)
{
	GenericSetFlag(flagID, (u8*)(&mainFlagBank));
}

void GenericClearFlag(u32 flagID, u8* flagLocation)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperMainFlagLimit);
	if (location == 0)
	{
		return;
	}
	location[0] = location[0] & ~(1 << (flagID & 7));
}

void ClearFlag(u32 flagID)
{
	GenericClearFlag(flagID, (u8*)(&mainFlagBank));
}
