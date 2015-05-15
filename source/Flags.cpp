#include "Flags.h"

#define NumberofSeenCaughts ((NumberOfPokemon >> 3) << 3)
#define NumberofTrainerBytes ((NumberOfTrainers >> 3) << 3)
#define BytesForFlagsBase (NumberOfPokemon >> 3)
#define BytesForTrainerflagsBase (NumberOfTrainers >> 3)
#define FlagsToBytes(n) (n >> 3)
#if NumberofSeenCaughts == NumberOfPokemon
EWRAM_LOCATION ALIGN(1) u8 Flags::seenFlags[BytesForFlagsBase];
EWRAM_LOCATION ALIGN(1) u8 Flags::caughtFlags[BytesForFlagsBase];
#else
EWRAM_LOCATION ALIGN(1) u8 Flags::seenFlags[BytesForFlagsBase + 1];
EWRAM_LOCATION ALIGN(1) u8 Flags::caughtFlags[BytesForFlagsBase + 1];
#endif
#if NumberofTrainerBytes == NumberOfTrainers
EWRAM_LOCATION ALIGN(1) u8 Flags::trainerflags[BytesForTrainerflagsBase];
#else
EWRAM_LOCATION ALIGN(1) u8 Flags::trainerflags[BytesForTrainerflagsBase + 1];
#endif
EWRAM_LOCATION ALIGN(1) u8 Flags::mainFlagBank[FlagsToBytes(0x2000)];

u8* Flags::FlagDecryption(u32 flagID, u8* ramLocation, u32 upperFlagLimit)
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

bool Flags::GetSeenCaughtStatus(u32 pokemonIndex, u32 modeIndex)
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

bool Flags::GenericCheckFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperFlagLimit);
	if (location == 0)
	{
		return 0;
	}
	return ((location[0] >> (flagID & 7)) & 1) != 0;
}

bool Flags::CheckFlag(u32 flagID)
{
	return GenericCheckFlag(flagID, (u8*)(&mainFlagBank), NumberOfFlags);
}

bool Flags::CheckTrainerflag(u32 flagID)
{
	return GenericCheckFlag(flagID, (u8*)(&trainerflags), NumberOfTrainers);
}

void Flags::GenericSetFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperFlagLimit);
	if (location == 0)
	{
		return;
	}
	location[0] = location[0] | (1 << (flagID & 7));
}

void Flags::SetFlag(u32 flagID)
{
	GenericSetFlag(flagID, (u8*)(&mainFlagBank), NumberOfFlags);
}

void Flags::SetTrainerflag(u32 flagID)
{
	GenericSetFlag(flagID, (u8*)(&trainerflags), NumberOfTrainers);
}

void Flags::GenericClearFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit)
{
	u8* location = FlagDecryption(flagID, flagLocation, upperFlagLimit);
	if (location == 0)
	{
		return;
	}
	location[0] = location[0] & ~(1 << (flagID & 7));
}

void Flags::ClearFlag(u32 flagID)
{
	GenericClearFlag(flagID, (u8*)(&mainFlagBank), NumberOfFlags);
}

void Flags::ClearTrainerflag(u32 flagID)
{
	GenericClearFlag(flagID, (u8*)(&trainerflags), NumberOfTrainers);
}
