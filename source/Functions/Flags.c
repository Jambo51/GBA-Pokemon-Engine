#include "Data/MemoryLocations.h"

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
		location = FlagDecryption(pokemonIndex, (u8*)(&seenFlags), NumberOfPokemon - 1);
	}
	else
	{
		location = FlagDecryption(pokemonIndex, (u8*)(&caughtFlags), NumberOfPokemon - 1);
	}
	if ((modeIndex & 1) == 0)
	{
		return ((location[0] >> (pokemonIndex & 7)) & 1);
	}
	location[0] = location[0] | (1 << (pokemonIndex & 7));
	return 0;
}

u32 GenericCheckFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperFlagLimit);
	if (location == 0)
	{
		return 0;
	}
	return ((location[0] >> (flagID & 7)) & 1) != 0;
}

u32 CheckFlag(u32 flagID)
{
	return GenericCheckFlag(flagID, (u8*)(&mainFlagBank), NumberOfFlags);
}

u32 CheckTrainerflag(u32 flagID)
{
	return GenericCheckFlag(flagID, (u8*)(&trainerflags), NumberOfTrainers);
}

void GenericSetFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperFlagLimit);
	if (location == 0)
	{
		return;
	}
	location[0] = location[0] | (1 << (flagID & 7));
}

void SetFlag(u32 flagID)
{
	GenericSetFlag(flagID, (u8*)(&mainFlagBank), NumberOfFlags);
}

void SetTrainerflag(u32 flagID)
{
	GenericSetFlag(flagID, (u8*)(&trainerflags), NumberOfTrainers);
}

void GenericClearFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperFlagLimit);
	if (location == 0)
	{
		return;
	}
	location[0] = location[0] & ~(1 << (flagID & 7));
}

void ClearFlag(u32 flagID)
{
	GenericClearFlag(flagID, (u8*)(&mainFlagBank), NumberOfFlags);
}

void ClearTrainerflag(u32 flagID)
{
	GenericClearFlag(flagID, (u8*)(&trainerflags), NumberOfTrainers);
}
