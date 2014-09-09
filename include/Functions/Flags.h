#include "Data/GlobalDefinitions.h"

#ifndef FLAGS_H
#define FLAGS_H

#include "Data/MemoryLocations.h"

u8* FlagDecryption(u32 flagID, u8* ramLocation, u32 upperFlagLimit);
u32 GetSeenCaughtStatus(u32 pokemonIndex, u32 modeIndex);
u32 GenericCheckFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit);
u32 CheckFlag(u32 flagID);
u32 CheckTrainerflag(u32 flagID);
void GenericSetFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit);
void SetFlag(u32 flagID);
void SetTrainerflag(u32 flagID);
void GenericClearFlag(u32 flagID, u8* flagLocation, u32 upperFlagLimit);
void ClearFlag(u32 flagID);
void ClearTrainerflag(u32 flagID);

#endif
