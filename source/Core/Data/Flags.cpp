#include "Core/Data/Flags.h"
#include "Core/FlashFunctions.h"
#include "Core/Game.h"
#include "Scenes/Menus/Pokedex.h"

using namespace Scenes;

namespace Core
{
	namespace Data
	{
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
		TEXT_LOCATION ALIGN(2) u16 Flags::badgeFlagIDs[] =
		{
				Flag_Badge1,
				Flag_Badge2,
				Flag_Badge3,
				Flag_Badge4,
				Flag_Badge5,
				Flag_Badge6,
				Flag_Badge7,
				Flag_Badge8,
				Flag_Badge9,
				Flag_Badge10,
				Flag_Badge11,
				Flag_Badge12,
				Flag_Badge13,
				Flag_Badge14,
				Flag_Badge15,
				Flag_Badge16,
				0xFFFF
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

		bool Flags::GetSeenCaughtStatus(u32 pokemonIndex, SeenCaughtStatusMode modeIndex)
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
				return ((location[0] >> (pokemonIndex & 7)) & 1) == 1;
			}
			bool retValue = false;
			if (((location[0] >> (pokemonIndex & 7)) & 1) == 0)
			{
				retValue = true;
				if ((modeIndex & 2) == 0)
				{
					Pokedex::IncrementNationalSeen();
					if (Pokedex::IsPokemonInRegional(pokemonIndex))
					{
						Pokedex::IncrementRegionalSeen();
					}
				}
				else
				{
					Pokedex::IncrementNationalCaught();
					if (Pokedex::IsPokemonInRegional(pokemonIndex))
					{
						Pokedex::IncrementRegionalCaught();
					}
				}
			}
			location[0] = location[0] | (1 << (pokemonIndex & 7));
			return retValue;
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

		u32 Flags::CountAcquiredBadges()
		{
			u16 flagID = 0;
			u32 counter = 0;
			u32 retValue = 0;
			do
			{
				flagID = badgeFlagIDs[counter];
				if (CheckFlag(flagID))
				{
					retValue++;
				}
				counter++;
			} while (flagID != 0xFFFF);
			return retValue;
		}
	}

}
