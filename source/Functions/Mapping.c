#include "Data/GlobalDefinitions.h"
#include "Data/MemoryLocations.h"
#include "Data/Maps.h"
#include "Data/OverworldSprites.h"
#include "Functions/MemoryManagement.h"
#include "Functions/Maths.h"
#include "Functions/KeyPresses.h"
#include "Functions/Flags.h"
#include "Functions/MusicEngine.h"
#include "Functions/ObjectFunctions.h"

#define tilemapMiddle ((u32*)0x0600E000)
#define tilemapTop ((u32*)0x0600E800)
#define tilemapBottom ((u32*)0x0600F000)

const RODATA_LOCATION TileAnimationStruct emptyAnimStruct = { 0, 0, 0, 0, 0, 0, 0, 0 };

MapHeader* GetMapHeaderFromBankAndMapID(u8 bank, u8 map)
{
	return maps[bank][map];
}

WildData* GetMapWildDataFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].wildDataLocation;
}

MapConnection* GetMapConnectionsFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].connections;
}

MapFooter* GetMapFooterFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].footerLocation;
}

u16 GetMusicTrackIDFromBankAndMapID(u8 bank, u8 map)
{
	return (GetMapHeaderFromBankAndMapID(bank, map))[0].musicTrack;
}

void PutTilesetPalettesInMemory(u8 tilesetID, u16* paletteLocation, u8 time)
{
	u8 extraLength = ((tilesetID == 0)?0:112);
	void* palLoc = (void*)(pal_bg_mem + extraLength);
	u32 length = (tilesetID == 0)?56:48;
	memcpy32(palLoc, (void*)(&paletteLocation[extraLength + time * 256]), length);
}

void PutMapPalettesInMemory()
{
	u8 time = rtcData.timeOfDay;
	u16* palette = (u16*)((u32*)currentMap.footerLocation[0].primaryTileset)[2];
	PutTilesetPalettesInMemory(0, palette, time);
	palette = (u16*)((u32*)currentMap.footerLocation[0].secondaryTileset)[2];
	PutTilesetPalettesInMemory(1, palette, time);
}

TileAnimationStructROM* GetTileAnimationDataPointer(u8 tilesetID)
{
	MapFooter* this = currentMap.footerLocation;
	void* prim;
	if (tilesetID == 0)
	{
		prim = this[0].primaryTileset;
	}
	else
	{
		prim = this[0].secondaryTileset;
	}
	return (TileAnimationStructROM*)((u32*)prim)[4];
}

void PutTileAnimationDataIntoMemory(u8 tilesetID)
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

void StoreTilesetIntoMemory(u8 tilesetID, void* location, u8 tilesetMode, u8 isCompressed)
{
	u32 length = dataForTilesets[tilesetMode][tilesetID].index;
	void* storeLoc = dataForTilesets[tilesetMode][tilesetID].pointerToData;
	if (isCompressed == 1)
	{
		void* copyLoc = (void*)MemoryAllocate(length);
		LZ77UnCompWram(location, copyLoc);
		memcpy32(storeLoc, copyLoc, length);
		MemoryDeallocate(copyLoc);
	}
	else
	{
		memcpy32(storeLoc, location, length);
	}
}

void PutMapTilesetsInMemory()
{
	u8 tilesetMode = (currentMap.footerLocation[0].primaryTileset[0].information & 0xFF0000) >> 0x10;
	currentMap.tilesetType = tilesetMode;
	StoreTilesetIntoMemory(0, currentMap.footerLocation[0].primaryTileset[0].primaryTilesetData[0], tilesetMode, currentMap.footerLocation[0].primaryTileset[0].information & 1);
	PutTileAnimationDataIntoMemory(0);
	u8 oldTilesetMode = tilesetMode;
	tilesetMode = (currentMap.footerLocation[0].secondaryTileset[0].information & 0xFF0000) >> 0x10;
	if (tilesetMode == oldTilesetMode)
	{
		StoreTilesetIntoMemory(1, currentMap.footerLocation[0].secondaryTileset[0].secondaryTilesetData[0], tilesetMode, currentMap.footerLocation[0].secondaryTileset[0].information & 1);
		PutTileAnimationDataIntoMemory(1);
	}
}

u8 IsConnectionOnSide(MapConnection* m, u8 side)
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

u16 GetBlockFromData(u16* mapDataLocation, s32 x, s32 y, u16 mapWidth)
{
	return mapDataLocation[x + (y * mapWidth)];
}

u16 GetBorderBlock(s32 x, s32 y)
{
	return (currentMap.footerLocation->borderBlocks[UnsignedModulus(x, currentMap.footerLocation->borderWidth) + (UnsignedModulus(y, currentMap.footerLocation->borderHeight) << 1)] & 0x3FF) | 0x400;
}

u8 CalculateXConnectionLocation(MapConnection* m, s32 x, s32 y, u16 widthOfMap)
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

u8 CalculateYConnectionLocation(MapConnection* m, s32 x, s32 y, u16 heightOfMap)
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

u16 GetOutOfBoundsXBlock(MapConnection* m, s32 x, s32 y, u16 widthOfMap)
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

u16 GetOutOfBoundsYBlock(MapConnection* m, s32 x, s32 y, u16 heightOfMap)
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

u16 CalculateBlock(s32 x, s32 y)
{
	u16 blockID = 0;
	u16 heightOfMap = currentMap.footerLocation->height;
	u16 widthOfMap = currentMap.footerLocation->width;
	MapConnection* m = currentMap.connections;
	if (x < 0 || x >= widthOfMap)
	{
		blockID = GetOutOfBoundsXBlock(m, x, y, widthOfMap);
	}
	else if (y < 0 || y >= currentMap.footerLocation->height)
	{
		blockID = GetOutOfBoundsYBlock(m, x, y, heightOfMap);
	}
	else
	{
		blockID = GetBlockFromData(currentMap.footerLocation->mapDataLocation, x, y, widthOfMap);
	}
	return blockID;
}

u16 CalculateBlockMovementPermissions(s32 x, s32 y)
{
	return (CalculateBlock(x, y) & 0xFC00) >> 10;
}

u16 CalculateBlockID(s32 x, s32 y)
{
	return CalculateBlock(x, y) & 0x3FF;
}

const u16 comparisonSizes[2] = { 0x280, 0x200 };

Block* GetBlockLocation(u16 blockID)
{
	MapFooter* footer = currentMap.footerLocation;
	void* prim = ((blockID >= comparisonSizes[currentMap.tilesetType])?(void*)footer[0].secondaryTileset:(void*)footer[0].primaryTileset);
	return (Block*)((u32*)prim)[3];
}

u32* GetBlockDataLocation(u16 blockID)
{
	MapFooter* footer = currentMap.footerLocation;
	void* prim = ((blockID >= comparisonSizes[currentMap.tilesetType])?(void*)footer[0].secondaryTileset:(void*)footer[0].primaryTileset);
	return (u32*)((u32*)prim)[5];
}

void PutBlockIntoVRAM(Block* b, u32* blockData, u16 blockID, u32 location)
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

void DrawRowOfBlocks(s32 xLocation, s32 yLocation, u32 rowID)
{
	s32 x;
	for (x = 0; x < 16; x++)
	{
		u16 blockID = CalculateBlockID(x + xLocation, yLocation);
		Block* b = GetBlockLocation(blockID);
		u32* blockData = GetBlockDataLocation(blockID);
		u16 size = comparisonSizes[currentMap.tilesetType];
		if (blockID >= size)
		{
			blockID -= size;
		}
		PutBlockIntoVRAM(b, blockData, blockID, UnsignedModulus(x + hardwareColumn, 16) + (rowID * 0x20));
	}
}

void DrawColumnOfBlocks(s32 xLocation, s32 yLocation, u32 columnID)
{
	s32 y;
	for (y = 0; y < 16; y++)
	{
		u16 blockID = CalculateBlockID(xLocation, yLocation + y);
		Block* b = GetBlockLocation(blockID);
		u32* blockData = GetBlockDataLocation(blockID);
		u16 size = comparisonSizes[currentMap.tilesetType];
		if (blockID >= size)
		{
			blockID -= size;
		}
		PutBlockIntoVRAM(b, blockData, blockID, columnID + (UnsignedModulus(y + hardwareRow, 16) * 0x20));
	}
}

void DrawMap(u32 xLocation, u32 yLocation)
{
	PutMapTilesetsInMemory();
	PutMapPalettesInMemory();
	u32 y;
	for (y = 0; y < 16; y++)
	{
		DrawRowOfBlocks(xLocation - 7, y + yLocation - 7, y);
	}
}

u8 LoadObjectPaletteIntoMemory(u32 paletteID, u8 slot, u8 overloadExisting)
{
	u16* paletteLocation = (u16*)((u8*)((((u32*)paletteTable[paletteID]))) + (rtcData.timeOfDay * 0x20));
	if (overloadExisting == 1)
	{
		memcpy32((void*)(0x05000200 + (slot * 0x20)), paletteLocation, 0x8);
		return slot;
	}
	else
	{
		s32 result = PaletteAllocate(paletteID);
		if (result < 0)
		{
			return 0xFF;
		}
		memcpy32((void*)(0x05000200 + (result * 0x20)), paletteLocation, 0x8);
		return (u8)result;
	}
}

void ChangeSpriteFrame(u8 spriteID)
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

u16 CalculateObjectXLocation(u8 shape, u8 size)
{
	return xLocs[shape][size];
}

const RODATA_LOCATION u16 yLocs[3][3] = { { 0, 0, 0 }, { 0, 0, 0 }, { 0, 0, 56 } };

u16 CalculateObjectYLocation(u8 shape, u8 size)
{
	return yLocs[shape][size];
}

void PlacePlayerSprite(u32 xLocation, u32 yLocation, u8 frame)
{
	u8 shape = spriteTable[overworldSpriteData[0].dataSpriteID].spriteShape;
	u8 size = spriteTable[overworldSpriteData[0].dataSpriteID].spriteSize;
	u32 spriteSize = CalculateObjectSize(shape, size) << 5;
	void* spriteTileLocation = SpriteAllocate(spriteSize);
	u16* paletteLocation = (u16*)((u8*)((((u32*)paletteTable[spriteTable[overworldSpriteData[0].dataSpriteID].paletteSlotID]))) + (rtcData.timeOfDay * 0x20));
	memcpy32(spriteTileLocation, (void*)(spriteTable[overworldSpriteData[0].dataSpriteID].frames[frame]), spriteSize >> 2);
	u8 paletteID = LoadObjectPaletteIntoMemory(spriteTable[overworldSpriteData[0].dataSpriteID].paletteSlotID, 0, 0);
	if (paletteID > 0xF)
	{
		paletteID = 0;
	}
	preOAM[0].StateFunction = 0;
	preOAM[0].xLocation = CalculateObjectXLocation(shape, size);
	preOAM[0].yLocation = CalculateObjectYLocation(shape, size);
	preOAM[0].objShape = shape;
	preOAM[0].objSize = size;
	preOAM[0].spriteID = 0;
	preOAM[0].paletteSlot = paletteID;
	preOAM[0].priority = 2;
	preOAM[0].paletteLocation = paletteLocation;
	preOAM[0].tileLocation = spriteTileLocation;
	preOAM[0].isActive = 1;
	preOAM[0].requiresUpdate = 1;
}

void UpdateMapLocations()
{
	REG_BG3HOFS = x;
	REG_BG3VOFS = y;
	REG_BG2HOFS = x;
	REG_BG2VOFS = y;
	REG_BG1HOFS = x;
	REG_BG1VOFS = y;
}

s32 CalculateXMovement()
{
	s32 returnable = 0;
	if (movingInformation.movingRight != 0)
	{
		returnable = 1;
	}
	else if (movingInformation.movingLeft != 0)
	{
		returnable = -1;
	}
	if (movingInformation.isRunning != 0)
	{
		returnable <<= 1;
	}
	return returnable;
}

s32 CalculateYMovement()
{
	s32 returnable = 0;
	if (movingInformation.movingDown != 0)
	{
		returnable = 1;
	}
	else if (movingInformation.movingUp != 0)
	{
		returnable = -1;
	}
	if (movingInformation.isRunning != 0)
	{
		returnable <<= 1;
	}
	return returnable;
}

void InitialiseXY()
{
	hardwareColumn = 0;
	hardwareRow = 0;
	x = 0;
	y = 0x28;
	((u32*)(&(movingInformation)))[0] = 0;
	UpdateMapLocations();
}

u32 IsNewLocationConnected(s32 horizontalLocation, s32 verticalLocation)
{
	u32 returnable = 0;
	u16 heightOfMap = currentMap.footerLocation->height;
	u16 widthOfMap = currentMap.footerLocation->width;
	MapConnection* m = currentMap.connections;
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

u32 IsNewLocationWalkable(s32 horizontalLocation, s32 verticalLocation)
{
	return (CalculateBlockMovementPermissions(horizontalLocation, verticalLocation) == 0xC)?1:0;
}

u32 IsNewLocationInBounds(s32 horizontalLocation, s32 verticalLocation)
{
	return (horizontalLocation >= 0 && horizontalLocation < currentMap.footerLocation[0].width && verticalLocation >= 0 && verticalLocation < currentMap.footerLocation[0].height)?1:0;
}

u32 IsNewLocationValid(s32 horizontalLocation, s32 verticalLocation)
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

void CopyMapHeaderAndResetMusic()
{
	u8 mapBank = connectStruct[0].mapBank;
	u8 map = connectStruct[0].map;
	u16 newMusicTrack = GetMusicTrackIDFromBankAndMapID(mapBank, map);
	if (currentMap.musicTrack != newMusicTrack)
	{
		SetupSongForPlayback(newMusicTrack, FadeOutThenStart);
	}
	MapHeader* theHeader = GetMapHeaderFromBankAndMapID(mapBank, map);
	if (theHeader[0].footerLocation[0].primaryTileset != currentMap.footerLocation[0].primaryTileset)
	{
		StoreTilesetIntoMemory(0, theHeader[0].footerLocation[0].primaryTileset[0].primaryTilesetData[0], (theHeader[0].footerLocation[0].primaryTileset[0].information & 0xFF0000) >> 0x10, theHeader[0].footerLocation[0].primaryTileset[0].information & 1);
		PutTilesetPalettesInMemory(0, (void*)theHeader[0].footerLocation[0].primaryTileset[0].paletteData, rtcData.timeOfDay);
	}
	if (theHeader[0].footerLocation[0].secondaryTileset != currentMap.footerLocation[0].secondaryTileset)
	{
		StoreTilesetIntoMemory(1, theHeader[0].footerLocation[0].secondaryTileset[0].secondaryTilesetData[0], (theHeader[0].footerLocation[0].secondaryTileset[0].information & 0xFF0000) >> 0x10, theHeader[0].footerLocation[0].secondaryTileset[0].information & 1);
		PutTilesetPalettesInMemory(1, (void*)theHeader[0].footerLocation[0].secondaryTileset[0].paletteData, rtcData.timeOfDay);
	}
	currentMap = theHeader[0];
	ReseedRNG();
}

void ApplyMovement()
{
	if (movingInformation.isMoving == 0)
	{
		s32 horizontal = GetHorizontalKeyState();
		s32 vertical = GetVerticalKeyState();
		u8 newDirection = 0;
		u8 oamID = overworldSpriteData[0].oamStructID;
		if (horizontal == 0)
		{
			if (vertical > 0)
			{
				newDirection = 1;
			}
			else
			{
				newDirection = 0;
			}
		}
		else
		{
			vertical = 0;
			if (horizontal > 0)
			{
				newDirection = 3;
			}
			else
			{
				newDirection = 2;
			}
		}
		if (newDirection != overworldSpriteData[0].directionFacing && overworldSpriteData[0].isMoving == 0)
		{
			overworldSpriteData[0].directionFacing = newDirection;
		}
		else
		{
			u32 result = IsNewLocationValid(overworldSpriteData[0].xLocation + horizontal, overworldSpriteData[0].yLocation + vertical);
			if (result != 0)
			{
				if (horizontal != 0)
				{
					if (horizontal > 0)
					{
						movingInformation.movingRight = 1;
					}
					else
					{
						movingInformation.movingLeft = 1;
						if (hardwareColumn == 0)
						{
							hardwareColumn = 15;
						}
						else
						{
							hardwareColumn--;
						}
						DrawColumnOfBlocks(overworldSpriteData[0].xLocation - 8, overworldSpriteData[0].yLocation - 7, hardwareColumn);
					}
				}
				else if (vertical != 0)
				{
					if (vertical > 0)
					{
						movingInformation.movingDown = 1;
					}
					else
					{
						movingInformation.movingUp = 1;
						if (hardwareRow == 0)
						{
							hardwareRow = 15;
						}
						else
						{
							hardwareRow--;
						}
						DrawRowOfBlocks(overworldSpriteData[0].xLocation - 7, overworldSpriteData[0].yLocation - 8, hardwareRow);
					}
				}
				if (CheckFlag(Flag_RunningShoes) == 1 && (CheckFlag(Flag_RunningShoesOn) == 1 || key_held(KEY_B) != 0))
				{
					movingInformation.isRunning = 1;
					movingInformation.counter = 8;
				}
				else
				{
					movingInformation.counter = 16;
				}
				x += CalculateXMovement();
				if (x >= 0x200 || x < 0)
				{
					x &= 0x1FF;
				}
				y += CalculateYMovement();
				if (y >= 0x200 || y < 0)
				{
					y &= 0x1FF;
				}
				UpdateMapLocations();
				movingInformation.counter--;
				movingInformation.isMoving = 1;
				overworldSpriteData[0].isMoving = 1;
			}
			if (result == 2)
			{
				MapConnection* m = currentMap.connections;
				s32 x = overworldSpriteData[0].xLocation + horizontal;
				s32 y = overworldSpriteData[0].yLocation + vertical;
				u8 change = CalculateXConnectionLocation(m, x, y, currentMap.footerLocation[0].width);
				if (change == 0xFF)
				{
					change = CalculateYConnectionLocation(m, x, y, currentMap.footerLocation[0].height);
				}
				if (change != 0xFF)
				{
					MapConnectionData* data = (MapConnectionData*)(((u32*)m)[1]);
					connectStruct = (ConnectionStruct*)MemoryAllocate(sizeof(ConnectionStruct));
					connectStruct[0].isActive = 1;
					connectStruct[0].mapBank = data[change].mapBank;
					connectStruct[0].map = data[change].map;
					connectStruct[0].offset = data[change].offset;
				}
			}
		}
	}
	else
	{
		x = (x + CalculateXMovement()) & 0x1FF;
		y = (y + CalculateYMovement()) & 0x1FF;
		UpdateMapLocations();
		movingInformation.counter--;
		if (movingInformation.counter == 0)
		{
			if (movingInformation.movingLeft != 0 || movingInformation.movingRight != 0)
			{
				if (movingInformation.movingRight != 0)
				{
					u32 newhardwareColumnValue = UnsignedModulus(hardwareColumn + 1, 16);
					if (connectStruct[0].isActive == 1)
					{
						CopyMapHeaderAndResetMusic();
						overworldSpriteData[0].xLocation = 0;
						overworldSpriteData[0].yLocation -= connectStruct[0].offset;
						MemoryDeallocate((void*)(connectStruct));
						connectStruct = (void*)0;
					}
					else
					{
						overworldSpriteData[0].xLocation++;
					}
					DrawColumnOfBlocks(overworldSpriteData[0].xLocation + 8, overworldSpriteData[0].yLocation - 7, hardwareColumn);
					hardwareColumn = newhardwareColumnValue;
				}
				else
				{
					if (connectStruct[0].isActive == 1)
					{
						CopyMapHeaderAndResetMusic();
						overworldSpriteData[0].xLocation = currentMap.footerLocation[0].width - 1;
						overworldSpriteData[0].yLocation -= connectStruct[0].offset;
						MemoryDeallocate((void*)(connectStruct));
						connectStruct = (void*)0;
					}
					else
					{
						overworldSpriteData[0].xLocation--;
					}
				}
			}
			else if (movingInformation.movingUp != 0 || movingInformation.movingDown != 0)
			{
				if (movingInformation.movingDown != 0)
				{
					u32 newhardwareRowValue = UnsignedModulus(hardwareRow + 1, 16);
					if (connectStruct[0].isActive == 1)
					{
						CopyMapHeaderAndResetMusic();
						overworldSpriteData[0].xLocation -= connectStruct[0].offset;
						overworldSpriteData[0].yLocation = 0;
						MemoryDeallocate((void*)(connectStruct));
						connectStruct = (void*)0;
					}
					else
					{
						overworldSpriteData[0].yLocation++;
					}
					DrawRowOfBlocks(overworldSpriteData[0].xLocation - 7, overworldSpriteData[0].yLocation + 8, hardwareRow);
					hardwareRow = newhardwareRowValue;
				}
				else
				{
					if (connectStruct[0].isActive == 1)
					{
						CopyMapHeaderAndResetMusic();
						overworldSpriteData[0].xLocation -= connectStruct[0].offset;
						overworldSpriteData[0].yLocation = currentMap.footerLocation[0].height - 1;
						MemoryDeallocate((void*)(connectStruct));
						connectStruct = (void*)0;
					}
					else
					{
						overworldSpriteData[0].yLocation--;
					}
				}
			}
			u32* ptr = (u32*)&movingInformation;
			ptr[0] = 0;
		}
	}
}

