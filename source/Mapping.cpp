#include "GlobalDefinitions.h"
#include "MemoryLocations.h"
#include "Maps.h"
#include "OverworldSprites.h"
#include "MemoryManagement.h"
#include "Maths.h"
#include "Flags.h"
#include "ObjectFunctions.h"
#include "Game.h"
#include "Maths.h"
#include "RTC.h"
#include "SoundEngine.h"
#include "Mapping.h"

#define tilemapMiddle ((u32*)0x0600E000)
#define tilemapTop ((u32*)0x0600E800)
#define tilemapBottom ((u32*)0x0600F000)

const RODATA_LOCATION TileAnimationStruct emptyAnimStruct = { 0, 0, 0, 0, 0, 0, 0, 0 };

MapHeader* Overworld::GetMapHeaderFromBankAndMapID(u8 bank, u8 map)
{
	return maps[bank][map];
}

WildData* Overworld::GetMapWildDataFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].wildDataLocation;
}

MapConnection* Overworld::GetMapConnectionsFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].connections;
}

MapFooter* Overworld::GetMapFooterFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].footerLocation;
}

u16 Overworld::GetMusicTrackIDFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].musicTrack;
}

void Overworld::PutTilesetPalettesInMemory(u8 tilesetID, u16* paletteLocation, u8 time)
{
	u8 extraLength = ((tilesetID == 0)?0:112);
	void* palLoc = (void*)(pal_bg_mem + extraLength);
	u32 length = (tilesetID == 0)?56:48;
	memcpy32(palLoc, (void*)(&paletteLocation[extraLength + time * 256]), length);
}

void Overworld::PutMapPalettesInMemory()
{
	u8 time = RTC::GetTime().timeOfDay;
	u16* palette = (u16*)((u32*)Game::GetCurrentMap().footerLocation[0].primaryTileset)[2];
	PutTilesetPalettesInMemory(0, palette, time);
	palette = (u16*)((u32*)Game::GetCurrentMap().footerLocation[0].secondaryTileset)[2];
	PutTilesetPalettesInMemory(1, palette, time);
}

TileAnimationStructROM* Overworld::GetTileAnimationDataPointer(u8 tilesetID)
{
	MapFooter* footer = Game::GetCurrentMap().footerLocation;
	void* prim;
	if (tilesetID == 0)
	{
		prim = footer->primaryTileset;
	}
	else
	{
		prim = footer->secondaryTileset;
	}
	return (TileAnimationStructROM*)((u32*)prim)[4];
}

void Overworld::PutTileAnimationDataIntoMemory(u8 tilesetID)
{
	TileAnimationStructROM* theData = GetTileAnimationDataPointer(tilesetID);
	tilesetID *= 5;
	u8 j;
	for (j = 0; j < 5; j++)
	{
		animStruct[j + tilesetID] = emptyAnimStruct;
	}
	if (theData != 0)
	{
		TileAnimationStruct* data = theData[0].dataPointer;
		u8 length = theData[0].length;
		if (length > 5)
		{
			length = 5;
		}
		if (length != 0 && data != 0)
		{
			vu8 i;
			for (i = 0; i < length; i++)
			{
				animStruct[i + tilesetID] = data[i];
			}
		}
	}
}

const RODATA_LOCATION IndexTable dataForTilesets[2][2] = { { { 5120, (void*)0x06000000 }, { 3072, (void*)0x06005000 } }, { { 4096, (void*)0x06000000 },	{ 4096, (void*)0x06004000 } } };

void Overworld::StoreTilesetIntoMemory(u8 tilesetID, void* location, u8 tilesetMode, bool isCompressed)
{
	u32 length = dataForTilesets[tilesetMode][tilesetID].index;
	void* storeLoc = dataForTilesets[tilesetMode][tilesetID].pointerToData;
	if (isCompressed == 1)
	{
		LZ77UnCompVram(location, storeLoc);
	}
	else
	{
		memcpy32(storeLoc, location, length);
	}
}

void Overworld::PutMapTilesetsInMemory()
{
	u8 tilesetMode = (Game::GetCurrentMap().footerLocation[0].primaryTileset[0].information & 0xFF0000) >> 0x10;
	StoreTilesetIntoMemory(0, Game::GetCurrentMap().footerLocation[0].primaryTileset[0].primaryTilesetData[0], tilesetMode, Game::GetCurrentMap().footerLocation[0].primaryTileset[0].information & 1);
	PutTileAnimationDataIntoMemory(0);
	u8 oldTilesetMode = tilesetMode;
	tilesetMode = (Game::GetCurrentMap().footerLocation[0].secondaryTileset[0].information & 0xFF0000) >> 0x10;
	if (tilesetMode == oldTilesetMode)
	{
		StoreTilesetIntoMemory(1, Game::GetCurrentMap().footerLocation[0].secondaryTileset[0].secondaryTilesetData[0], tilesetMode, Game::GetCurrentMap().footerLocation[0].secondaryTileset[0].information & 1);
		PutTileAnimationDataIntoMemory(1);
	}
}

u8 Overworld::IsConnectionOnSide(MapConnection* m, u8 side)
{
	if (m == 0)
	{
		return 0xFF;
	}
	u32 maxLength = m[0].numberOfConnections;
	if (maxLength == 0)
	{
		return 0xFF;
	}
	u8 i;
	u8 isConnectionOnThisSide = 0xFF;
	MapConnectionData* temp = (MapConnectionData*)(((u32*)(&(m[0].mainData)))[0]);
	for (i = 0; i < maxLength; i++)
	{
		if (temp[i].type == side)
		{
			isConnectionOnThisSide = i;
			break;
		}
	}
	return isConnectionOnThisSide;
}

u16 Overworld::GetBlockFromData(u16* mapDataLocation, s32 x, s32 y, u16 mapWidth)
{
	return mapDataLocation[x + (y * mapWidth)];
}

u16 Overworld::GetBorderBlock(s32 x, s32 y)
{
	return (Game::GetCurrentMap().footerLocation->borderBlocks[Maths::UnsignedModulus(x, Game::GetCurrentMap().footerLocation->borderWidth) + (Maths::UnsignedModulus(y, Game::GetCurrentMap().footerLocation->borderHeight) << 1)] & 0x3FF) | 0x400;
}

u8 Overworld::CalculateXConnectionLocation(MapConnection* m, s32 x, s32 y, u16 widthOfMap)
{
	if (m != 0)
	{
		u8 sideID = 0xFF;
		if (x < 0)
		{
			sideID = 3;
		}
		else if (x >= widthOfMap)
		{
			sideID = 4;
		}
		return IsConnectionOnSide(m, sideID);
	}
	return 0xFF;
}

u8 Overworld::CalculateYConnectionLocation(MapConnection* m, s32 x, s32 y, u16 heightOfMap)
{
	if (m != 0)
	{
		u8 sideID = 0xFF;
		if (y < 0)
		{
			sideID = 2;
		}
		else if (y >= heightOfMap)
		{
			sideID = 1;
		}
		return IsConnectionOnSide(m, sideID);
	}
	return 0xFF;
}

u16 Overworld::GetOutOfBoundsXBlock(MapConnection* m, s32 x, s32 y, u16 widthOfMap)
{
	u16 blockID = 0;
	u8 theValue = CalculateXConnectionLocation(m, x, y, widthOfMap);
	if (theValue != 0xFF)
	{
		MapConnectionData* data = ((MapConnectionData*)(m[0].mainData));
		s32 offset = data[theValue].offset;
		MapFooter* footer = GetMapFooterFromBankAndMapID(data[theValue].mapBank, data[theValue].map);
		u16 blockColumn = (x < 0)?footer[0].width:0;
		if (data[theValue].type == 4)
		{
			blockColumn += (x - widthOfMap);
		}
		else
		{
			blockColumn += x;
		}
		blockID = ((y + (0 - offset)) >= 0 || (y + (0 - offset)) < footer[0].height)?GetBlockFromData(footer[0].mapDataLocation, blockColumn, y + (0 - offset), footer[0].width):GetBorderBlock(blockColumn, y + (0 - offset));
	}
	else
	{
		blockID = GetBorderBlock(x, y);
	}
	return blockID;
}

u16 Overworld::GetOutOfBoundsYBlock(MapConnection* m, s32 x, s32 y, u16 heightOfMap)
{
	u16 blockID = 0;
	u8 theValue = CalculateYConnectionLocation(m, x, y, heightOfMap);
	if (theValue != 0xFF)
	{
		MapConnectionData* data = ((MapConnectionData*)(m[0].mainData));
		s32 offset = data[theValue].offset;
		MapFooter* footer = GetMapFooterFromBankAndMapID(data[theValue].mapBank, data[theValue].map);
		u16 blockRow = (y < 0)?footer[0].height:0;
		if (data[theValue].type == 1)
		{
			blockRow += (y - heightOfMap);
		}
		else
		{
			blockRow += y;
		}
		blockID = ((x + (0 - offset)) >= 0 || (x + (0 - offset)) < footer[0].width)?GetBlockFromData(footer[0].mapDataLocation, x + (0 - offset), blockRow, footer[0].width):GetBorderBlock(x + (0 - offset), blockRow);
	}
	else
	{
		blockID = GetBorderBlock(x, y);
	}
	return blockID;
}

u16 Overworld::CalculateBlock(s32 x, s32 y)
{
	u16 blockID = 0;
	u16 heightOfMap = Game::GetCurrentMap().footerLocation->height;
	u16 widthOfMap = Game::GetCurrentMap().footerLocation->width;
	MapConnection* m = Game::GetCurrentMap().connections;
	if (x < 0 || x >= widthOfMap)
	{
		blockID = GetOutOfBoundsXBlock(m, x, y, widthOfMap);
	}
	else if (y < 0 || y >= Game::GetCurrentMap().footerLocation->height)
	{
		blockID = GetOutOfBoundsYBlock(m, x, y, heightOfMap);
	}
	else
	{
		blockID = GetBlockFromData(Game::GetCurrentMap().footerLocation->mapDataLocation, x, y, widthOfMap);
	}
	return blockID;
}

u16 Overworld::CalculateBlockMovementPermissions(s32 x, s32 y)
{
	return (CalculateBlock(x, y) & 0xFC00) >> 10;
}

u16 Overworld::CalculateBlockID(s32 x, s32 y)
{
	return CalculateBlock(x, y) & 0x3FF;
}

const u16 comparisonSizes[2] = { 0x280, 0x200 };

Block* Overworld::GetBlockLocation(u16 blockID)
{
	MapFooter* footer = Game::GetCurrentMap().footerLocation;
	void* prim = ((blockID >= comparisonSizes[Game::GetCurrentMap().tilesetType])?(void*)footer[0].secondaryTileset:(void*)footer[0].primaryTileset);
	return (Block*)((u32*)prim)[3];
}

u32* Overworld::GetBlockDataLocation(u16 blockID)
{
	MapFooter* footer = Game::GetCurrentMap().footerLocation;
	void* prim = ((blockID >= comparisonSizes[Game::GetCurrentMap().tilesetType])?(void*)footer[0].secondaryTileset:(void*)footer[0].primaryTileset);
	return (u32*)((u32*)prim)[5];
}

void Overworld::PutBlockIntoVRAM(Block* b, u32* blockData, u16 blockID, u32 location)
{
	if ((blockData[blockID] & 0x20000000) == 0)
	{
		tilemapTop[location] = b[blockID].top[0];
		tilemapTop[0x10 + location] = b[blockID].top[1];
		tilemapMiddle[location] = 0;
		tilemapMiddle[0x10 + location] = 0;
	}
	else
	{
		tilemapTop[location] = 0;
		tilemapTop[0x10 + location] = 0;
		tilemapMiddle[location] = b[blockID].top[0];
		tilemapMiddle[0x10 + location] = b[blockID].top[1];
	}
    tilemapBottom[location] = b[blockID].bottom[0];
    tilemapBottom[0x10 + location] = b[blockID].bottom[1];
}

void Overworld::DrawRowOfBlocks(s32 xLocation, s32 yLocation, u32 rowID)
{
	s32 x;
	for (x = 0; x < 16; x++)
	{
		u16 blockID = CalculateBlockID(x + xLocation, yLocation);
		Block* b = GetBlockLocation(blockID);
		u32* blockData = GetBlockDataLocation(blockID);
		u16 size = comparisonSizes[Game::GetCurrentMap().tilesetType];
		if (blockID >= size)
		{
			blockID -= size;
		}
		PutBlockIntoVRAM(b, blockData, blockID, Maths::UnsignedModulus(x + hardwareColumn, 16) + (rowID * 0x20));
	}
}

void Overworld::DrawColumnOfBlocks(s32 xLocation, s32 yLocation, u32 columnID)
{
	s32 y;
	for (y = 0; y < 16; y++)
	{
		u16 blockID = CalculateBlockID(xLocation, yLocation + y);
		Block* b = GetBlockLocation(blockID);
		u32* blockData = GetBlockDataLocation(blockID);
		u16 size = comparisonSizes[Game::GetCurrentMap().tilesetType];
		if (blockID >= size)
		{
			blockID -= size;
		}
		PutBlockIntoVRAM(b, blockData, blockID, columnID + (Maths::UnsignedModulus(y + hardwareRow, 16) * 0x20));
	}
}

void Overworld::DrawMap(u32 xLocation, u32 yLocation)
{
	PutMapTilesetsInMemory();
	PutMapPalettesInMemory();
	u32 y;
	for (y = 0; y < 16; y++)
	{
		DrawRowOfBlocks(xLocation - 7, y + yLocation - 7, y);
	}
}

u8 Overworld::LoadObjectPaletteIntoMemory(u32 paletteID, u8 slot, u8 overloadExisting)
{
	u16* paletteLocation = (u16*)((u8*)((((u32*)paletteTable[paletteID]))) + (RTC::GetTime().timeOfDay * 0x20));
	if (overloadExisting == 1)
	{
		memcpy32((void*)(0x05000200 + (slot * 0x20)), paletteLocation, 0x8);
		return slot;
	}
	else
	{
		s32 result = 0;
		if (result < 0)
		{
			return 0xFF;
		}
		memcpy32((void*)(0x05000200 + (result * 0x20)), paletteLocation, 0x8);
		return (u8)result;
	}
}

void Overworld::ChangeSpriteFrame(u8 spriteID)
{
	u8 i;
	u8 found = 0;
	for (i = 0; i < 24; i++)
	{
		if (overworldSpriteData[i].spriteID == spriteID)
		{
			found = 1;
			break;
		}
	}
	if (found == 1)
	{
		//u8 oamID = overworldSpriteData[i].oamStructID;
		//void* tileBase = (void*)(0x06010000 + (preOAM[oamID].tilebaseStart << 5));
		//u8 frameID = walkingFrameConversion[overworldSpriteData[i].directionFacing][overworldSpriteData[i].nextWalkingFrame];

	}
}

const RODATA_LOCATION u16 xLocs[3][3] = { { 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 112 } };

u16 Overworld::CalculateObjectXLocation(u8 shape, u8 size)
{
	return xLocs[shape][size];
}

const RODATA_LOCATION u16 yLocs[3][3] = { { 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 56 } };

u16 Overworld::CalculateObjectYLocation(u8 shape, u8 size)
{
	return yLocs[shape][size];
}

void Overworld::UpdateMapLocations()
{
	REG_BG3HOFS = x;
	REG_BG3VOFS = y;
	REG_BG2HOFS = x;
	REG_BG2VOFS = y;
	REG_BG1HOFS = x;
	REG_BG1VOFS = y;
}

u32 Overworld::IsNewLocationConnected(s32 horizontalLocation, s32 verticalLocation)
{
	u32 returnable = 0;
	u16 heightOfMap = Game::GetCurrentMap().footerLocation->height;
	u16 widthOfMap = Game::GetCurrentMap().footerLocation->width;
	MapConnection* m = Game::GetCurrentMap().connections;
	if (horizontalLocation < 0 || horizontalLocation >= widthOfMap)
	{
		if (m != 0)
		{
			u8 sideID = 0xFF;
			if (horizontalLocation < 0)
			{
				sideID = 3;
			}
			else if (horizontalLocation >= widthOfMap)
			{
				sideID = 4;
			}
			u8 theValue = IsConnectionOnSide(m, sideID);
			if (sideID != 0xFF && theValue != 0xFF)
			{
				returnable = 1;
			}
		}
	}
	else if (verticalLocation < 0 || verticalLocation >= heightOfMap)
	{
		if (m != 0)
		{
			u8 sideID = 0xFF;
			if (verticalLocation < 0)
			{
				sideID = 2;
			}
			else if (verticalLocation >= heightOfMap)
			{
				sideID = 1;
			}
			u8 theValue = IsConnectionOnSide(m, sideID);
			if (sideID != 0xFF && theValue != 0xFF)
			{
				returnable = 1;
			}
		}
	}
	return returnable;
}

u32 Overworld::IsNewLocationWalkable(s32 horizontalLocation, s32 verticalLocation)
{
	return (CalculateBlockMovementPermissions(horizontalLocation, verticalLocation) == 0xC)?1:0;
}

u32 Overworld::IsNewLocationInBounds(s32 horizontalLocation, s32 verticalLocation)
{
	return (horizontalLocation >= 0 && horizontalLocation < Game::GetCurrentMap().footerLocation[0].width && verticalLocation >= 0 && verticalLocation < Game::GetCurrentMap().footerLocation[0].height)?1:0;
}

u32 Overworld::IsNewLocationValid(s32 horizontalLocation, s32 verticalLocation)
{
	u32 retValue = 0;
	if (IsNewLocationWalkable(horizontalLocation, verticalLocation) == 1)
	{
		if (IsNewLocationInBounds(horizontalLocation, verticalLocation) == 1)
		{
			retValue = 1;
		}
		else if (IsNewLocationConnected(horizontalLocation, verticalLocation) == 1)
		{
			retValue = 2;
		}
	}
	return retValue;
}

void Overworld::CopyMapHeaderAndResetMusic()
{
	u8 mapBank = connectStruct[0].mapBank;
	u8 map = connectStruct[0].map;
	u16 newMusicTrack = GetMusicTrackIDFromBankAndMapID(mapBank, map);
	if (Game::GetCurrentMap().musicTrack != newMusicTrack)
	{
		SoundEngine::PlaySong(newMusicTrack, 1);
	}
	MapHeader* theHeader = GetMapHeaderFromBankAndMapID(mapBank, map);
	if (theHeader[0].footerLocation[0].primaryTileset != Game::GetCurrentMap().footerLocation[0].primaryTileset)
	{
		StoreTilesetIntoMemory(0, theHeader[0].footerLocation[0].primaryTileset[0].primaryTilesetData[0], (theHeader[0].footerLocation[0].primaryTileset[0].information & 0xFF0000) >> 0x10, theHeader[0].footerLocation[0].primaryTileset[0].information & 1);
		PutTilesetPalettesInMemory(0, (u16*)theHeader[0].footerLocation[0].primaryTileset[0].paletteData, RTC::GetTime().timeOfDay);
	}
	if (theHeader[0].footerLocation[0].secondaryTileset != Game::GetCurrentMap().footerLocation[0].secondaryTileset)
	{
		StoreTilesetIntoMemory(1, theHeader[0].footerLocation[0].secondaryTileset[0].secondaryTilesetData[0], (theHeader[0].footerLocation[0].secondaryTileset[0].information & 0xFF0000) >> 0x10, theHeader[0].footerLocation[0].secondaryTileset[0].information & 1);
		PutTilesetPalettesInMemory(1, (u16*)theHeader[0].footerLocation[0].secondaryTileset[0].paletteData, RTC::GetTime().timeOfDay);
	}
	Game::SetCurrentMap(*theHeader);
	Maths::ReseedRNG();
}

