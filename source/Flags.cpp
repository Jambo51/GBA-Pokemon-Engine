#include "Flags.h"
#include "FlashFunctions.h"
#include "Game.h"
#include "Pokedex.h"

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
EWRAM_LOCATION ALIGN(1) u8 Flags::mainFlagBank[FlagsToBytes(NumFlags)];
EWRAM_LOCATION ALIGN(1) u8 Flags::worldMapFlagBank[FlagsToBytes(0x100)];

RODATA_LOCATION ALIGN(4) SaveLocationStruct Flags::saveData[] = {
		{ (u8*)0x10000, (u8*)&Flags::mainFlagBank, FlagsToBytes(NumFlags) },
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags)), (u8*)&Flags::worldMapFlagBank, FlagsToBytes(0x100) },
#if NumberofTrainerBytes == NumberOfTrainers
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100)), (u8*)&Flags::trainerflags, BytesForTrainerflagsBase },
#if NumberofSeenCaughts == NumberOfPokemon
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase), (u8*)&Flags::seenFlags, BytesForFlagsBase },
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + BytesForFlagsBase), (u8*)&Flags::caughtFlags, BytesForFlagsBase },
#else
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase), (u8*)&Flags::seenFlags, BytesForFlagsBase + 1 },
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + BytesForFlagsBase + 1), (u8*)&Flags::caughtFlags, BytesForFlagsBase + 1 },
#endif
#else
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100)), (u8*)&Flags::trainerflags, BytesForTrainerflagsBase + 1 },
#if NumberofSeenCaughts == NumberOfPokemon
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1), (u8*)&Flags::seenFlags, BytesForFlagsBase },
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1 + BytesForFlagsBase), (u8*)&Flags::caughtFlags, BytesForFlagsBase },
#else
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1), (u8*)&Flags::seenFlags, BytesForFlagsBase + 1 },
		{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1 + BytesForFlagsBase + 1), (u8*)&Flags::caughtFlags, BytesForFlagsBase + 1 },
#endif
#endif
		{ (u8*)0xFFFFFFFF, 0, 0 }
};

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
	if (((location[0] >> (pokemonIndex & 7)) & 1) == 0)
	{
		if ((modeIndex & 2) == 0)
		{
			Game::IncrementNationalSeen();
			if (Pokedex::IsPokemonInRegional(pokemonIndex))
			{
				Game::IncrementRegionalSeen();
			}
		}
		else
		{
			Game::IncrementNationalCaught();
			if (Pokedex::IsPokemonInRegional(pokemonIndex))
			{
				Game::IncrementRegionalCaught();
			}
		}
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

bool Flags::CheckWorldMapFlag(u32 flagID)
{
	return GenericCheckFlag(flagID, (u8*)(&worldMapFlagBank), 0x100);
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

void Flags::SetWorldMapFlag(u32 flagID)
{
	GenericSetFlag(flagID, (u8*)(&worldMapFlagBank), 0x100);
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

void Flags::ClearWorldMapFlag(u32 flagID)
{
	GenericClearFlag(flagID, (u8*)(&worldMapFlagBank), 0x100);
}

void Flags::Save()
{
	FlashFunctions::WriteToFlash((SaveLocationStruct*)&saveData);
}

void Flags::Load()
{
	FlashFunctions::ReadFromFlash((SaveLocationStruct*)&saveData);
}

void Flags::Initialise()
{
#if NumberofSeenCaughts == NumberOfPokemon
	for (int i = 0; i < BytesForFlagsBase; i++)
	{
		seenFlags[i] = 0;
		caughtFlags[i] = 0;
	}
#else
	for (int i = 0; i < BytesForFlagsBase + 1; i++)
	{
		seenFlags[i] = 0;
		caughtFlags[i] = 0;
	}
#endif
#if NumberofTrainerBytes == NumberOfTrainers
	for (int i = 0; i < BytesForTrainerflagsBase; i++)
	{
		trainerflags[i] = 0;
	}
	EWRAM_LOCATION ALIGN(1) u8 Flags::trainerflags[BytesForTrainerflagsBase];
#else
	for (int i = 0; i < BytesForTrainerflagsBase + 1; i++)
	{
		trainerflags[i] = 0;
	}
#endif
	memset32((void*)&Flags::worldMapFlagBank, 0, FlagsToBytes(0x100) >> 2);
	memset32((void*)&Flags::mainFlagBank, 0, FlagsToBytes(NumFlags) >> 2);
#if ((FlagsToBytes(NumFlags) >> 2) << 2) != FlagsToBytes(NumFlags)
	u32 remainder = FlagsToBytes(NumFlags) - ((FlagsToBytes(NumFlags) >> 2) << 2);
	for (u32 i = 0; i < remainder; i++)
	{
		mainFlagBank[((FlagsToBytes(NumFlags) >> 2) << 2) + i] = 0;
	}
#endif
}
