/*
 * MemoryLocations.h
 *
 *  Created on: 8 Oct 2013
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"

#ifndef MEMORYLOCATIONS_H_
#define MEMORYLOCATIONS_H_


extern u8 seenFlags[];
extern u8 caughtFlags[];
extern u8 formesToShowInDex[];
extern u8 mainFlagBank[];
extern u16 varBank[];
extern Pokemon partyPokemon[];
extern PokemonStorageBoxes storageBoxes;
extern Pokemon temporaryHoldingPokemon;
extern Bag bag;
extern Player player;
extern Pokemon enemyPokemon[];
extern char buffers[16][40];
extern MapHeader currentMap;
extern u32 currentSeed;
extern OverworldMovementStruct movingInformation;
extern BattleTypeStruct battleType;
extern u8* battleScriptPointer;
extern u16 battleScriptFrameWait;
extern u8* overworldScriptPointer;
extern u16 overworldScriptFrameWait;
extern u8* animationScriptPointer;
extern u16 animationScriptFrameWait;
extern RealTimeClock rtcData;
extern s16 x;
extern s16 y;
extern u8 seasonByte;
extern u16 currentFanfareID;
extern u16 currentSongID;
extern u16 currentSongPlaybackStatus;
extern u8 currentMusicEngineSet;
extern u8 pauseMenuLocation;
extern NPCData overworldSpriteData[24];
extern u8 hardwareColumn;
extern u8 hardwareRow;
extern u8 textPalette;
extern GBPMusicStruct gbpData[];
extern KeyBuffer keyStates;
extern PreOAMStruct preOAM[];
extern void (*HandleKeyPresses)(void);
extern void (*CallbackMain)(void);
extern void (*RTCPaletteUpdate)(void);
extern void (*MusicEngine)(void);
extern TileAnimationStruct* animStruct;
extern ConnectionStruct* connectStruct;
extern PaletteFadeStruct fadeStruct[];
extern FunctionPtr* pauseMenuFunctions;
extern MemoryManagementStructure mallocData;
extern SpriteManagementStructure sprallocData;
extern PaletteManagementStructure pallocData;
extern PokedexData* dexPointer;
extern MusicFadeInfo* musicFadePointer;
extern CallbackStruct callbackSystem;
extern BattleData* battleDataPointer;

#endif /* MEMORYLOCATIONS_H_ */
