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

typedef struct MapPalette {
	u16 palette[4][256];
} MapPalette;

typedef struct Tileset
{
	u32 information;
	union
	{
		u16* primaryTilesetData;
		u16* secondaryTilesetData;
		u16* RSETilesetData;
	};
	MapPalette* paletteData;
	union
	{
		Block* primaryBlockData;
		Block* secondaryBlockData;
		Block* RSEBlockData;
	};
	TileAnimationStructROM* blockAnimationsData;
	union
	{
		u32* primaryBlockInformation;
		u32* secondaryBlockInformation;
		u32* RSEBlockInformation;
	};
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

typedef struct MapHeader {
	MapFooter* footerLocation;
	u32* eventsLocation;
	LevelScript* levelScriptsLocation;
	MapConnection* connections;
	u16 musicTrack;
	union
	{
		MapBankMapCombo mapLocation;
		u16 mapBankMapCombined;
	};
	u8 mapNameID;
	u8 caveStatus;
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
