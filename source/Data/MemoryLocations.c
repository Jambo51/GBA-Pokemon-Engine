//
// memorylocations.h: 
// 

#include "Functions.h"
#include "Data.h"

#ifndef MEMORYLOCATIONS_H
#define MEMORYLOCATIONS_H

// --- primary memory locations ---

#define NumberofSeenCaughts ((NumberOfPokemon >> 8) << 8)
#define BytesForFlagsBase (NumberOfPokemon >> 8)
#define FlagsToBytes(n) (n >> 8)
#define PartyLength 6

#if NumberofSeenCaughts == NumberOfPokemon
EWRAM_LOCATION ALIGN(1) u8 seenFlags[BytesForFlagsBase];
EWRAM_LOCATION ALIGN(1) u8 caughtFlags[BytesForFlagsBase];
#else
EWRAM_LOCATION ALIGN(1) u8 seenFlags[BytesForFlagsBase + 1];
EWRAM_LOCATION ALIGN(1) u8 caughtFlags[BytesForFlagsBase + 1];
#endif
EWRAM_LOCATION ALIGN(1) u8 formesToShowInDex[29];
EWRAM_LOCATION ALIGN(1) u8 mainFlagBank[FlagsToBytes(0x2000)];
EWRAM_LOCATION ALIGN(2) u16 varBank[544];
EWRAM_LOCATION ALIGN(4) Pokemon partyPokemon[PartyLength];
EWRAM_LOCATION ALIGN(4) PokemonStorageBoxes storageBoxes;
EWRAM_LOCATION ALIGN(4) Pokemon temporaryHoldingPokemon;
EWRAM_LOCATION ALIGN(4) Bag bag;
EWRAM_LOCATION ALIGN(4) Player player;
EWRAM_LOCATION ALIGN(4) Pokemon enemyPokemon[PartyLength];
EWRAM_LOCATION ALIGN(4) char buffers[16][40];
EWRAM_LOCATION ALIGN(4) MapHeader currentMap;
EWRAM_LOCATION ALIGN(4) u32 currentSeed;
EWRAM_LOCATION ALIGN(4) OverworldMovementStruct movingInformation;
EWRAM_LOCATION ALIGN(4) u32 battleType;
EWRAM_LOCATION ALIGN(4) u8* battleScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 battleScriptFrameWait;
EWRAM_LOCATION ALIGN(4) u8* overworldScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 overworldScriptFrameWait;
ALIGN(4) RealTimeClock rtcData;
ALIGN(2) s16 x;
ALIGN(2) s16 y;
ALIGN(1) u8 seasonByte;
EWRAM_LOCATION ALIGN(2) u16 currentFanfareID;
EWRAM_LOCATION ALIGN(2) u16 currentSongID;
EWRAM_LOCATION ALIGN(2) u16 currentSongPlaybackStatus;
EWRAM_LOCATION ALIGN(1) u8 currentMusicEngineSet;
EWRAM_LOCATION ALIGN(1) u8 pauseMenuLocation;
EWRAM_LOCATION ALIGN(4) NPCData overworldSpriteData[24];
ALIGN(1) u8 hardwareColumn;
ALIGN(1) u8 hardwareRow;
ALIGN(1) u8 textPalette;
ALIGN(4) GBPMusicStruct gbpData[2];
ALIGN(2) KeyBuffer keyStates;
EWRAM_LOCATION ALIGN(4) PreOAMStruct preOAM[40];
ALIGN(4) void (*HandleKeyPresses)(void);
ALIGN(4) void (*CallbackMain)(void);
ALIGN(4) void (*RTCPaletteUpdate)(void);
ALIGN(4) void (*MusicEngine)(void);
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
EWRAM_LOCATION ALIGN(4) BattleData* battleDataPointer;

#endif // TOOLBOX_H

