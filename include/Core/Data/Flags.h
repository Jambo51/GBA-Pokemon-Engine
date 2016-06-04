#include "GlobalDefinitions.h"

#ifndef FLAGS_H
#define FLAGS_H

#define NumFlags 0x2000
namespace Core
{
	namespace Data
	{

		enum SeenCaughtStatusMode { CheckSeen, CheckCaught, SetSeen, SetCaught };

		class Flags
		{
		private:
			static u8 seenFlags[];
			static u8 caughtFlags[];
			static u8 trainerflags[];
			static u8 mainFlagBank[];
			static u8 worldMapFlagBank[];
			static u16 badgeFlagIDs[];
			static SaveLocationStruct saveData[];
		public:
			static u8* FlagDecryption(u32 flagID, u8* ramLocation, u32 upperFlagLimit);
			static bool GetSeenCaughtStatus(u32 pokemonIndex, SeenCaughtStatusMode modeIndex);
			static bool GenericCheckFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit);
			static bool CheckFlag(u32 flagID);
			static bool CheckTrainerflag(u32 flagID);
			static bool CheckWorldMapFlag(u32 flagID);
			static void GenericSetFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit);
			static void SetFlag(u32 flagID);
			static void SetTrainerflag(u32 flagID);
			static void SetWorldMapFlag(u32 flagID);
			static void GenericClearFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit);
			static void ClearFlag(u32 flagID);
			static void ClearTrainerflag(u32 flagID);
			static void ClearWorldMapFlag(u32 flagID);
			static void Save();
			static void Load();
			static void Initialise();
			static u32 CountAcquiredBadges();
		};
	}
}

#endif
