#include "Data/GlobalDefinitions.h"

#ifndef FLAGS_H
#define FLAGS_H

u8* FlagDecryption(u32 flagID, u8* ramLocation, u32 upperFlagLimit);
u32 GetSeenCaughtStatus(u32 pokemonIndex, u32 modeIndex);
u32 GenericCheckFlag(u32 flagID, u8* flagLocation);
u32 CheckFlag(u32 flagID);
void GenericSetFlag(u32 flagID, u8* flagLocation);
void SetFlag(u32 flagID);
void GenericClearFlag(u32 flagID, u8* flagLocation);
void ClearFlag(u32 flagID);

#endif
