//
// memorylocations.h: 
// 

#include "Functions.h"
#include "Data.h"

#ifndef MEMORYLOCATIONS_H
#define MEMORYLOCATIONS_H

// --- primary memory locations ---

EWRAM_LOCATION ALIGN(1) u8 seenFlags[82];
EWRAM_LOCATION ALIGN(1) u8 formesToShowInDex[29];
EWRAM_LOCATION ALIGN(1) u8 caughtFlags[82];
EWRAM_LOCATION ALIGN(1) u8 mainFlagBank[1024];
EWRAM_LOCATION ALIGN(2) u16 varBank[544];
EWRAM_LOCATION ALIGN(4) Pokemon partyPokemon[6];
EWRAM_LOCATION ALIGN(4) PokemonStorageBoxes storageBoxes;
EWRAM_LOCATION ALIGN(4) Pokemon temporaryHoldingPokemon;
EWRAM_LOCATION ALIGN(4) Bag bag;
EWRAM_LOCATION ALIGN(4) Player player;
EWRAM_LOCATION ALIGN(4) Pokemon enemyPokemon[6];
EWRAM_LOCATION ALIGN(4) char buffers[8][20];
EWRAM_LOCATION ALIGN(4) MapHeader currentMap;
EWRAM_LOCATION ALIGN(4) u32 currentSeed;
EWRAM_LOCATION ALIGN(4) OverworldMovementStruct movingInformation;
EWRAM_LOCATION ALIGN(4) u32 battleDamage;
EWRAM_LOCATION ALIGN(4) u32 battleDamageInformation;
EWRAM_LOCATION ALIGN(4) u32 battleType;
EWRAM_LOCATION ALIGN(4) u8* battleScriptPointer;
EWRAM_LOCATION ALIGN(4) u8* overworldScriptPointer;
EWRAM_LOCATION ALIGN(4) u8 overworldScriptWaitingToBeRun;
ALIGN(4) RealTimeClock rtcData;
EWRAM_LOCATION ALIGN(2) s16 x;
EWRAM_LOCATION ALIGN(2) s16 y;
EWRAM_LOCATION ALIGN(4) u32 seasonByte;
EWRAM_LOCATION ALIGN(2) u16 currentFanfareID;
EWRAM_LOCATION ALIGN(2) u16 currentSongID;
EWRAM_LOCATION ALIGN(2) u16 currentSongPlaybackStatus;
EWRAM_LOCATION ALIGN(1) u8 currentMusicEngineSet;
EWRAM_LOCATION ALIGN(1) u8 pauseMenuLocation;
EWRAM_LOCATION ALIGN(4) NPCData overworldSpriteData[24];
EWRAM_LOCATION ALIGN(1) u8 hardwareColumn;
EWRAM_LOCATION ALIGN(1) u8 hardwareRow;
EWRAM_LOCATION ALIGN(1) u8 textPalette;
ALIGN(4) GBPMusicStruct gbpData[2];
EWRAM_LOCATION ALIGN(2) KeyBuffer keyStates;
EWRAM_LOCATION ALIGN(4) PreOAMStruct preOAM[40];
EWRAM_LOCATION ALIGN(4) void (*HandleKeyPresses)(void);
EWRAM_LOCATION ALIGN(4) void (*CallbackMain)(void);
EWRAM_LOCATION ALIGN(4) void (*RTCPaletteUpdate)(void);
EWRAM_LOCATION ALIGN(4) void (*MusicEngine)(void);
EWRAM_LOCATION ALIGN(4) TileAnimationStruct* animStruct;
EWRAM_LOCATION ALIGN(4) ConnectionStruct* connectStruct;
EWRAM_LOCATION ALIGN(4) PaletteFadeStruct fadeStruct[32];
EWRAM_LOCATION ALIGN(4) FunctionPtr* pauseMenuFunctions;
EWRAM_LOCATION ALIGN(4) PokedexData* dexPointer;
EWRAM_LOCATION ALIGN(4) MusicFadeInfo* musicFadePointer;
ALIGN(4) MemoryManagementStructure mallocData;
ALIGN(4) SpriteManagementStructure sprallocData;
ALIGN(4) PaletteManagementStructure pallocData;
ALIGN(4) CallbackStruct callbackSystem;

#endif // TOOLBOX_H

