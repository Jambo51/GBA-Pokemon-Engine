#include "GlobalDefinitions.h"
#include "MemoryLocations.h"
#include "Maps.h"
#include "OverworldSprites.h"
#include "MemoryManagement.h"
#include "Maths.h"
#include "Flags.h"
#include "Game.h"
#include "Maths.h"
#include "RTC.h"
#include "SoundEngine.h"
#include "Mapping.h"
#include "BackgroundFunctions.h"
#include "InputHandler.h"
#include "DoNothingInputEventHandler.h"
#include "PlayerEntity.h"

#define tilemapMiddle ((u32*)0x0600E000)
#define tilemapTop ((u32*)0x0600E800)
#define tilemapBottom ((u32*)0x0600F000)

TEXT_LOCATION TileAnimationStruct Overworld::emptyAnimStruct = { 0, 0, 0, 0, 0, 0, 0, 0 };
TEXT_LOCATION ALIGN(1) u8 Overworld::maxBanks = MaxBanks;
TEXT_LOCATION ALIGN(1) u8 Overworld::maxMaps[MaxBanks] = { 0, 0, 0, 2 };

Overworld::Overworld()
{
	BackgroundFunctions::SetBackgroundsToDefault();
	animStruct = new TileAnimationStruct[10];
	DrawMap(10, 15);
	SoundEngine::PlaySong(Game::GetCurrentMap().musicTrack, 0);
	InputHandler::SetEventHandler(new DoNothingInputEventHandler());
	new PlayerEntity(Vector2D(112, 56), 2);
}

Overworld::~Overworld()
{
	delete[] animStruct;
}

const MapHeader & Overworld::GetMapHeaderFromBankAndMapID(u8 bank, u8 map)
{
	if (bank < maxBanks && map < maxMaps[bank])
	{
		return *maps[bank][map];
	}
	return *errorMap;
}

const WildData & Overworld::GetMapWildDataFromBankAndMapID(u8 bank, u8 map)
{
	return *GetMapHeaderFromBankAndMapID(bank, map).wildDataLocation;
}

const MapConnection & Overworld::GetMapConnectionsFromBankAndMapID(u8 bank, u8 map)
{
	return *GetMapHeaderFromBankAndMapID(bank, map).connections;
}

const MapFooter & Overworld::GetMapFooterFromBankAndMapID(u8 bank, u8 map)
{
	return *GetMapHeaderFromBankAndMapID(bank, map).footerLocation;
}

u16 Overworld::GetMusicTrackIDFromBankAndMapID(u8 bank, u8 map)
{
	return GetMapHeaderFromBankAndMapID(bank, map).musicTrack;
}

void Overworld::PutTilesetPalettesInMemory(u32 tilesetID, u16* paletteLocation, u32 time)
{
	u8 extraLength = ((tilesetID == 0)?0:112);
	void* palLoc = (void*)(pal_bg_mem + extraLength);
	u32 length = (tilesetID == 0)?56:48;
	memcpy32(palLoc, (void*)(&paletteLocation[extraLength + time * 256]), length);
}

void Overworld::PutMapPalettesInMemory()
{
	u32 time = RTC::GetTime().timeOfDay;
	const MapHeader &header = Game::GetCurrentMap();
	u16* palette = (u16*)header.footerLocation->primaryTileset->paletteData;
	PutTilesetPalettesInMemory(0, palette, time);
	palette = (u16*)header.footerLocation->secondaryTileset->paletteData;
	PutTilesetPalettesInMemory(1, palette, time);
}

TileAnimationStructROM* Overworld::GetTileAnimationDataPointer(u32 tilesetID)
{
	MapFooter* footer = Game::GetCurrentMap().footerLocation;
	Tileset* prim;
	if (tilesetID == 0)
	{
		prim = footer->primaryTileset;
	}
	else
	{
		prim = footer->secondaryTileset;
	}
	return prim->blockAnimationsData;
}

void Overworld::PutTileAnimationDataIntoMemory(u32 tilesetID)
{
	TileAnimationStructROM* theData = GetTileAnimationDataPointer(tilesetID);
	tilesetID *= 5;
	for (int j = 0; j < 5; j++)
	{
		animStruct[j + tilesetID] = emptyAnimStruct;
	}
	if (theData != 0)
	{
		TileAnimationStruct* data = theData[0].dataPointer;
		u32 length = theData[0].length;
		if (length > 5)
		{
			length = 5;
		}
		if (length != 0 && data != 0)
		{
			for (int i = 0; i < length; i++)
			{
				animStruct[i + tilesetID] = data[i];
			}
		}
	}
}

TEXT_LOCATION IndexTable Overworld::dataForTilesets[2][2] = { { { 5120, (void*)0x06000000 }, { 3072, (void*)0x06005000 } }, { { 4096, (void*)0x06000000 },	{ 4096, (void*)0x06004000 } } };

void Overworld::StoreTilesetIntoMemory(u32 tilesetID, u16* location, u32 tilesetMode, bool isCompressed)
{
	u32 length = dataForTilesets[tilesetMode][tilesetID].index;
	void* storeLoc = dataForTilesets[tilesetMode][tilesetID].pointerToData;
	if (isCompressed)
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
	u32 tilesetMode = (Game::GetCurrentMap().footerLocation[0].primaryTileset[0].information & 0xFF0000) >> 0x10;
	StoreTilesetIntoMemory(0, Game::GetCurrentMap().footerLocation[0].primaryTileset[0].primaryTilesetData, tilesetMode, Game::GetCurrentMap().footerLocation[0].primaryTileset[0].information & 1);
	PutTileAnimationDataIntoMemory(0);
	u32 oldTilesetMode = tilesetMode;
	tilesetMode = (Game::GetCurrentMap().footerLocation[0].secondaryTileset[0].information & 0xFF0000) >> 0x10;
	if (tilesetMode == oldTilesetMode)
	{
		StoreTilesetIntoMemory(1, Game::GetCurrentMap().footerLocation[0].secondaryTileset[0].secondaryTilesetData, tilesetMode, Game::GetCurrentMap().footerLocation[0].secondaryTileset[0].information & 1);
		PutTileAnimationDataIntoMemory(1);
	}
}

u32 Overworld::IsConnectionOnSide(const MapConnection &m, u32 side)
{
	u32 maxLength = m.numberOfConnections;
	if (maxLength == 0)
	{
		return 0xFF;
	}
	u32 isConnectionOnThisSide = 0xFF;
	MapConnectionData* temp = m.mainData;
	for (int i = 0; i < maxLength; i++)
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
	const MapFooter &footerLocation = *Game::GetCurrentMap().footerLocation;
	return (footerLocation.borderBlocks[Maths::UnsignedModulus(x, footerLocation.borderWidth) + (Maths::UnsignedModulus(y, footerLocation.borderHeight) << 1)] & 0x3FF) | 0x400;
}

u8 Overworld::CalculateXConnectionLocation(const MapConnection* m, s32 x, s32 y, u16 widthOfMap)
{
	if (m)
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
		return IsConnectionOnSide(*m, sideID);
	}
	return 0xFF;
}

u8 Overworld::CalculateYConnectionLocation(const MapConnection* m, s32 x, s32 y, u16 heightOfMap)
{
	if (m)
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
		return IsConnectionOnSide(*m, sideID);
	}
	return 0xFF;
}

u16 Overworld::GetOutOfBoundsXBlock(const MapConnection &m, s32 x, s32 y, u16 widthOfMap)
{
	u16 blockID = 0;
	u8 theValue = CalculateXConnectionLocation(&m, x, y, widthOfMap);
	if (theValue != 0xFF)
	{
		const MapConnectionData &data = *m.mainData;
		s32 offset = data.offset;
		const MapFooter &footer = GetMapFooterFromBankAndMapID(data.mapBank, data.map);
		u16 blockColumn = (x < 0)?footer.width:0;
		if (data.type == 4)
		{
			blockColumn += (x - widthOfMap);
		}
		else
		{
			blockColumn += x;
		}
		blockID = ((y + (0 - offset)) >= 0 || (y + (0 - offset)) < footer.height)?GetBlockFromData(footer.mapDataLocation, blockColumn, y + (0 - offset), footer.width):GetBorderBlock(blockColumn, y + (0 - offset));
	}
	else
	{
		blockID = GetBorderBlock(x, y);
	}
	return blockID;
}

u16 Overworld::GetOutOfBoundsYBlock(const MapConnection &m, s32 x, s32 y, u16 heightOfMap)
{
	u16 blockID = 0;
	u8 theValue = CalculateYConnectionLocation(&m, x, y, heightOfMap);
	if (theValue != 0xFF)
	{
		const MapConnectionData &data = *m.mainData;
		s32 offset = data.offset;
		const MapFooter &footer = GetMapFooterFromBankAndMapID(data.mapBank, data.map);
		u16 blockRow = (y < 0)?footer.height:0;
		if (data.type == 1)
		{
			blockRow += (y - heightOfMap);
		}
		else
		{
			blockRow += y;
		}
		blockID = ((x + (0 - offset)) >= 0 || (x + (0 - offset)) < footer.width)?GetBlockFromData(footer.mapDataLocation, x + (0 - offset), blockRow, footer.width):GetBorderBlock(x + (0 - offset), blockRow);
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
	const MapHeader &header = Game::GetCurrentMap();
	u16 heightOfMap = header.footerLocation->height;
	u16 widthOfMap = header.footerLocation->width;
	MapConnection* m = header.connections;
	if (x < 0 || x >= widthOfMap)
	{
		blockID = GetOutOfBoundsXBlock(*m, x, y, widthOfMap);
	}
	else if (y < 0 || y >= header.footerLocation->height)
	{
		blockID = GetOutOfBoundsYBlock(*m, x, y, heightOfMap);
	}
	else
	{
		blockID = GetBlockFromData(header.footerLocation->mapDataLocation, x, y, widthOfMap);
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
	const MapFooter &footer = *Game::GetCurrentMap().footerLocation;
	const Tileset &prim = *((blockID >= comparisonSizes[Game::GetCurrentMap().tilesetType])?footer.secondaryTileset:footer.primaryTileset);
	return prim.RSEBlockInformation;
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

bool Overworld::IsNewLocationConnected(s32 horizontalLocation, s32 verticalLocation)
{
	bool returnable = false;
	const MapHeader &header = Game::GetCurrentMap();
	u16 heightOfMap = header.footerLocation->height;
	u16 widthOfMap = header.footerLocation->width;
	MapConnection* m = header.connections;
	if (horizontalLocation < 0 || horizontalLocation >= widthOfMap)
	{
		if (m != 0)
		{
			u32 sideID = 0xFF;
			if (horizontalLocation < 0)
			{
				sideID = 3;
			}
			else if (horizontalLocation >= widthOfMap)
			{
				sideID = 4;
			}
			u32 theValue = IsConnectionOnSide(*m, sideID);
			if (sideID != 0xFF && theValue != 0xFF)
			{
				returnable = true;
			}
		}
	}
	else if (verticalLocation < 0 || verticalLocation >= heightOfMap)
	{
		if (m != 0)
		{
			u32 sideID = 0xFF;
			if (verticalLocation < 0)
			{
				sideID = 2;
			}
			else if (verticalLocation >= heightOfMap)
			{
				sideID = 1;
			}
			u32 theValue = IsConnectionOnSide(*m, sideID);
			if (sideID != 0xFF && theValue != 0xFF)
			{
				returnable = true;
			}
		}
	}
	return returnable;
}

bool Overworld::IsNewLocationWalkable(s32 horizontalLocation, s32 verticalLocation)
{
	return CalculateBlockMovementPermissions(horizontalLocation, verticalLocation) == 0xC;
}

bool Overworld::IsNewLocationInBounds(s32 horizontalLocation, s32 verticalLocation)
{
	return (horizontalLocation >= 0 && horizontalLocation < Game::GetCurrentMap().footerLocation[0].width && verticalLocation >= 0 && verticalLocation < Game::GetCurrentMap().footerLocation[0].height);
}

u32 Overworld::IsNewLocationValid(s32 horizontalLocation, s32 verticalLocation)
{
	u32 retValue = 0;
	if (IsNewLocationWalkable(horizontalLocation, verticalLocation))
	{
		if (IsNewLocationInBounds(horizontalLocation, verticalLocation))
		{
			retValue = 1;
		}
		else if (IsNewLocationConnected(horizontalLocation, verticalLocation))
		{
			retValue = 2;
		}
	}
	return retValue;
}

void Overworld::CopyMapHeaderAndResetMusic()
{
	u8 mapBank = connect.mapBank;
	u8 map = connect.map;
	u16 newMusicTrack = GetMusicTrackIDFromBankAndMapID(mapBank, map);
	if (Game::GetCurrentMap().musicTrack != newMusicTrack)
	{
		SoundEngine::PlaySong(newMusicTrack, 1);
	}
	const MapHeader &theHeader = GetMapHeaderFromBankAndMapID(mapBank, map);
	if (theHeader.footerLocation[0].primaryTileset != Game::GetCurrentMap().footerLocation[0].primaryTileset)
	{
		StoreTilesetIntoMemory(0, theHeader.footerLocation[0].primaryTileset[0].primaryTilesetData, (theHeader.footerLocation[0].primaryTileset[0].information & 0xFF0000) >> 0x10, theHeader.footerLocation[0].primaryTileset[0].information & 1);
		PutTilesetPalettesInMemory(0, (u16*)theHeader.footerLocation[0].primaryTileset[0].paletteData, RTC::GetTime().timeOfDay);
	}
	if (theHeader.footerLocation[0].secondaryTileset != Game::GetCurrentMap().footerLocation[0].secondaryTileset)
	{
		StoreTilesetIntoMemory(1, theHeader.footerLocation[0].secondaryTileset[0].secondaryTilesetData, (theHeader.footerLocation[0].secondaryTileset[0].information & 0xFF0000) >> 0x10, theHeader.footerLocation[0].secondaryTileset[0].information & 1);
		PutTilesetPalettesInMemory(1, (u16*)theHeader.footerLocation[0].secondaryTileset[0].paletteData, RTC::GetTime().timeOfDay);
	}
	Game::SetCurrentMap(theHeader);
	Maths::ReseedRNG();
}

void Overworld::Update()
{
	for (int i = 0; i < 10; i++)
	{
		if (animStruct[i].dataPointer != 0)
		{
			if (animStruct[i].framesUntilChange == 0)
			{
				void* destination = (void*)(((i >= 5)?0x06005000:0x06000000) + ((animStruct[i].startTile - ((i >= 5)?512:0)) * 0x20));
				u32 tileCopyLength = animStruct[i].numberOfTiles << 3;
				memcpy32(destination, (void*)(&(animStruct[i].dataPointer[tileCopyLength * animStruct[i].frameOfAnimation])), tileCopyLength);
				animStruct[i].framesUntilChange = animStruct[i].frameDelay;
				animStruct[i].frameOfAnimation = Maths::UnsignedModulus(animStruct[i].frameOfAnimation + 1, animStruct[i].numberOfFrames);
			}
			else
			{
				animStruct[i].framesUntilChange--;
			}
		}
	}
}
