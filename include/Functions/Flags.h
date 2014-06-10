#include "Data/GlobalDefinitions.h"

#ifndef FLAGS_H
#define FLAGS_H

u32 FlagDecryption(u32 flagID, u8* ramLocation, u32 upperFlagLimit);
extern u32 GetSeenCaughtStatus(u32 pokemonIndex, u32 modeIndex);
extern u32 CheckFlag(u32 flagID);
extern void SetFlag(u32 flagID);
extern void ClearFlag(u32 flagID);

#endif
