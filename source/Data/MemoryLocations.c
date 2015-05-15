//
// memorylocations.h: 
// 

#include "GlobalDefinitions.h"

#ifndef MEMORYLOCATIONS_H
#define MEMORYLOCATIONS_H

// --- primary memory locations ---

EWRAM_LOCATION ALIGN(1) u8 textPalette;
EWRAM_LOCATION ALIGN(1) u8 formesToShowInDex[29];
EWRAM_LOCATION ALIGN(4) OverworldMovementStruct movingInformation;
EWRAM_LOCATION ALIGN(4) BattleTypeStruct battleType;
EWRAM_LOCATION ALIGN(4) u8* battleScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 battleScriptFrameWait;
EWRAM_LOCATION ALIGN(4) u8* overworldScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 overworldScriptFrameWait;
EWRAM_LOCATION ALIGN(4) u8* animationScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 animationScriptFrameWait;
EWRAM_LOCATION ALIGN(4) u8* applyMovementScriptPointer[5];
EWRAM_LOCATION ALIGN(4) u32 applyMovementStatus[5];
ALIGN(2) s16 x;
ALIGN(2) s16 y;
ALIGN(1) u8 seasonByte;
ALIGN(1) u8 regionByte;
EWRAM_LOCATION ALIGN(2) u16 currentSFXID;
EWRAM_LOCATION ALIGN(2) u16 currentFanfareID;
EWRAM_LOCATION ALIGN(2) u16 currentSongID;
EWRAM_LOCATION ALIGN(2) u16 currentSongPlaybackStatus;
EWRAM_LOCATION ALIGN(1) u8 pauseMenuLocation;
EWRAM_LOCATION ALIGN(4) NPCData overworldSpriteData[24];
ALIGN(1) u8 hardwareColumn;
ALIGN(1) u8 hardwareRow;
ALIGN(4) void (*CallbackMain)(void);
EWRAM_LOCATION ALIGN(4) TileAnimationStruct* animStruct;
EWRAM_LOCATION ALIGN(4) ConnectionStruct* connectStruct;
EWRAM_LOCATION ALIGN(4) PaletteFadeStruct fadeStruct[32];
EWRAM_LOCATION ALIGN(4) PokedexMemoryData* dexPointer;
EWRAM_LOCATION ALIGN(4) MusicFadeInfo* musicFadePointer;
ALIGN(4) MemoryManagementStructure mallocData;
ALIGN(4) SpriteManagementStructure sprallocData;
ALIGN(4) PaletteManagementStructure pallocData;
EWRAM_LOCATION ALIGN(4) BattleData* battleDataPointer;
ALIGN(4) EntityManagerEntry entityData[MAXENTITIES];
ALIGN(1) u8 oamPositions[MAXENTITIES];
u32 pauseOutlinePalette[] = { 0x7FFF532E, 0x675A318C, 0x3AFF043C, 0x4BD20664, 0x7B146546, 0x6F5B3529, 0x663156F5, 0x18C541AE };

#endif // TOOLBOX_H

