//
// memorylocations.h: 
// 

#include "GlobalDefinitions.h"

#ifndef MEMORYLOCATIONS_H
#define MEMORYLOCATIONS_H

// --- primary memory locations ---

EWRAM_LOCATION ALIGN(1) u8 formesToShowInDex[29];
EWRAM_LOCATION ALIGN(4) u8* applyMovementScriptPointer[5];
EWRAM_LOCATION ALIGN(4) u32 applyMovementStatus[5];
EWRAM_LOCATION ALIGN(4) PokedexMemoryData* dexPointer;

#endif // TOOLBOX_H

