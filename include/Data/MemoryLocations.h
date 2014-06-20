/*
 * MemoryLocations.h
 *
 *  Created on: 8 Oct 2013
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"

#ifndef MEMORYLOCATIONS_H_
#define MEMORYLOCATIONS_H_

#define NumberOfPokemon 649
#define NumberofSeenCaughts ((NumberOfPokemon >> 8) + 1)

extern u8 seenFlags[82];
extern u8 formesToShowInDex[29];
extern u8 caughtFlags[82];
extern u8 mainFlagBank[1024];
extern u16 varBank[544];
extern Pokemon partyPokemon[6];
extern PokemonStorageBoxes storageBoxes;
extern Pokemon temporaryHoldingPokemon;
extern Bag bag;
extern Player player;
extern Pokemon enemyPokemon[6];
extern Buffer buffers[8];
extern MapHeader currentMap;
extern u32 currentSeed;
extern OverworldMovementStruct movingInformation;
extern u32 battleDamage;
extern u32 battleDamageInformation;
extern u32 battleType;
extern u8* battleScriptPointer;
extern u8* overworldScriptPointer;
extern u8 overworldScriptWaitingToBeRun;
extern RealTimeClock rtcData;
extern s16 x;
extern s16 y;
extern u32 seasonByte;
extern u16 currentFanfareID;
extern u16 currentSongID;
extern u16 currentSongPlaybackStatus;
extern u8 currentMusicEngineSet;
extern u8 pauseMenuLocation;
extern NPCData overworldSpriteData[24];
extern u8 hardwareColumn;
extern u8 hardwareRow;
extern u8 textPalette;
extern GBPMusicStruct gbpData[2];
extern KeyBuffer keyStates;
extern PreOAMStruct preOAM[40];
extern void (*HandleKeyPresses)(void);
extern void (*CallbackMain)(void);
extern void (*RTCPaletteUpdate)(void);
extern void (*MusicEngine)(void);
extern TileAnimationStruct* animStruct;
extern ConnectionStruct* connectStruct;
extern PaletteFadeStruct fadeStruct[32];
extern FunctionPtr* pauseMenuFunctions;
extern MemoryManagementStructure mallocData;
extern SpriteManagementStructure sprallocData;
extern PaletteManagementStructure pallocData;
extern PokedexData* dexPointer;
extern MusicFadeInfo* musicFadePointer;
extern CallbackStruct callbackSystem;

#endif /* MEMORYLOCATIONS_H_ */
