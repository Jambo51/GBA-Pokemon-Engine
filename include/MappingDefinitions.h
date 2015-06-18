/*
 * MappingDefinitions.h
 *
 *  Created on: 16 May 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_MAPPINGDEFINITIONS_H_
#define INCLUDE_MAPPINGDEFINITIONS_H_

#ifdef __cplusplus
extern "C" {
#endif
#include "GlobalDefinitions.h"

typedef struct Block
{
    u32 bottom[2];
    u32 top[2];
} Block;

typedef struct BlockMetadata {
	u32 behaviourByte:8;
	u32 behaviourByte2:8;
	u32 value:8;
	u32 grassWildBattle:1;
	u32 surfingWildBattle:1;
	u32 headbuttTreeWildBattle:1;
	u32 rockSmashWildBattle:1;
	u32 fishingWildBattle:1;
	u32 playerOnTop:1;
	u32 values3:2;
} BlockMetadata;

typedef struct MapConnectionData {
	u32 type;
	s32 offset;
	u8 mapBank;
	u8 map;
	u16 alignment;
} MapConnectionData;

typedef struct MapConnection {
	u32 numberOfConnections;
	MapConnectionData* mainData;
} MapConnection;

typedef struct TileAnimationStruct {
	u32* dataPointer;
	u8 frameDelay;
	u8 numberOfFrames;
	u8 frameOfAnimation;
	u8 framesUntilChange;
	u16 startTile;
	u8 numberOfTiles;
	u8 specialFlags;
} TileAnimationStruct;

typedef struct TileAnimationStructROM {
	u32 length;
	TileAnimationStruct* dataPointer;
} TileAnimationStructROM;

typedef struct Tileset
{
	u32 information;
	union
	{
		u16* primaryTilesetData;
		u16* secondaryTilesetData;
		u16* RSETilesetData;
	};
	u16* paletteData;
	union
	{
		Block* primaryBlockData;
		Block* secondaryBlockData;
		Block* RSEBlockData;
	};
	TileAnimationStructROM* blockAnimationsData;
	BlockMetadata* blockInformation;
} Tileset;

typedef struct MapFooter
{
	u32 width;
	u32 height;
	u16* borderBlocks;
	u16* mapDataLocation;
	Tileset* primaryTileset;
	Tileset* secondaryTileset;
	u8 borderWidth;
	u8 borderHeight;
	u16 alignment;
} MapFooter;

typedef struct LevelScript
{
	u8 type;
	u8* scriptLocation; // unaligned, make sure to load using loop
} LevelScript;

typedef struct WildPokemonEntry
{
	u16 percentage;
	u16 minLevel;
	u16 maxLevel;
	u16 species;
} WildPokemonEntry;

typedef struct WildPokemonData
{
	u8 encounterRate[Time_NumTimes];
	WildPokemonEntry* wildData[Time_NumTimes];
} WildPokemonData;

typedef struct WildData
{
	WildPokemonData* data[NumWildDatas];
} WildData;

typedef struct MapBankMapCombo
{
	u8 mapBank;
	u8 map;
} MapBankMapCombo;

typedef struct ConnectionStruct {
	u8 isActive;
	u8 mapBank;
	u8 map;
	u8 alignment;
	s32 offset;
} ConnectionStruct;

typedef struct NPCEvent {
	u8 eventNumber;
	u8 spriteID;
	u8 horizontalMovement;
	u8 verticalMovement;
	s16 xPos;
	s16 yPos;
	u16 trainerRadius:15;
	u16 isTrainer:1;
	u8* scriptPointer;
	u16 flagID;
	u16 behaviour;
} NPCEvent;

typedef struct SignpostEvent {
	s16 xPos;
	s16 yPos;
	u16 talkingLevel;
	u16 talkingMode;
	u8* scriptPointer;
} SignpostEvent;

typedef struct WarpEvent {
	s16 xPos;
	s16 yPos;
	u8 warpID;
	u8 mapBank;
	u8 map;
	u8 alignment;
} WarpEvent;

typedef struct TileScriptEvent {
	s16 xPos;
	s16 yPos;
	u16 varID;
	u16 varValue;
	u8* scriptPointer;
} TileScriptEvent;

typedef struct EventsHeader {
	u8 numNPCs;
	u8 numSignposts;
	u8 numWarps;
	u8 numTileScripts;
	NPCEvent* npcEvents;
	SignpostEvent* signpostEvents;
	WarpEvent* warpEvents;
	TileScriptEvent* tileScriptEvents;
} EventsHeader;

enum MapTypes { Unknown1, Village, City, Route, Underground, Underwater, Indoors };

typedef struct MapHeader {
	MapFooter* footerLocation;
	EventsHeader* eventsLocation;
	LevelScript* levelScriptsLocation;
	MapConnection* connections;
	u16 musicTrack;
	union
	{
		MapBankMapCombo mapLocation;
		u16 mapBankMapCombined;
	};
	u8 mapNameID;
	u8 mapType;
	u8 weatherType;
	u8 lightStatus;
	u8 tilesetType;
	u8 escapeRopeType;
	u8 showName;
	u8 battleType;
	WildData* wildDataLocation;
} MapHeader;

#ifdef __cplusplus
}
#endif

#endif /* INCLUDE_MAPPINGDEFINITIONS_H_ */
