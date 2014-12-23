//
// memorylocations.h: 
// 

#include "Functions.h"
#include "Data.h"

#ifndef MEMORYLOCATIONS_H
#define MEMORYLOCATIONS_H

// --- primary memory locations ---

#define NumberofSeenCaughts ((NumberOfPokemon >> 3) << 3)
#define NumberofTrainerBytes ((NumberOfTrainers >> 3) << 3)
#define BytesForFlagsBase (NumberOfPokemon >> 3)
#define BytesForTrainerflagsBase (NumberOfTrainers >> 3)
#define FlagsToBytes(n) (n >> 3)
#define PartyLength 6

#if NumberofSeenCaughts == NumberOfPokemon
EWRAM_LOCATION ALIGN(1) u8 seenFlags[BytesForFlagsBase];
EWRAM_LOCATION ALIGN(1) u8 caughtFlags[BytesForFlagsBase];
#else
EWRAM_LOCATION ALIGN(1) u8 seenFlags[BytesForFlagsBase + 1];
EWRAM_LOCATION ALIGN(1) u8 caughtFlags[BytesForFlagsBase + 1];
#endif
#if NumberofTrainerBytes == NumberOfTrainers
EWRAM_LOCATION ALIGN(1) u8 trainerflags[BytesForTrainerflagsBase];
#else
EWRAM_LOCATION ALIGN(1) u8 trainerflags[BytesForTrainerflagsBase + 1];
#endif
EWRAM_LOCATION ALIGN(1) u8 textPalette;
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
EWRAM_LOCATION ALIGN(4) BattleTypeStruct battleType;
EWRAM_LOCATION ALIGN(4) u8* battleScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 battleScriptFrameWait;
EWRAM_LOCATION ALIGN(4) u8* overworldScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 overworldScriptFrameWait;
EWRAM_LOCATION ALIGN(4) u8* animationScriptPointer;
EWRAM_LOCATION ALIGN(2) u16 animationScriptFrameWait;
EWRAM_LOCATION ALIGN(4) u8* applyMovementScriptPointer[5];
EWRAM_LOCATION ALIGN(4) u32 applyMovementStatus[5];
ALIGN(4) RealTimeClock rtcData;
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
ALIGN(4) GBPMusicStruct gbpData[GBP_Set_Max];
ALIGN(4) u16 gbpBuffer[0x22];
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
EWRAM_LOCATION ALIGN(4) PokedexMemoryData* dexPointer;
EWRAM_LOCATION ALIGN(4) MusicFadeInfo* musicFadePointer;
ALIGN(4) MemoryManagementStructure mallocData;
ALIGN(4) SpriteManagementStructure sprallocData;
ALIGN(4) PaletteManagementStructure pallocData;
ALIGN(4) CallbackStruct callbackSystem;
EWRAM_LOCATION ALIGN(4) BattleData* battleDataPointer;
u32 pauseOutlinePalette[] = { 0x7FFF532E, 0x675A318C, 0x3AFF043C, 0x4BD20664, 0x7B146546, 0x6F5B3529, 0x663156F5, 0x18C541AE };

#endif // TOOLBOX_H

