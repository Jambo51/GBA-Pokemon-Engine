#include "GlobalDefinitions.h"
#include "MemoryLocations.h"
#include "Maps.h"
#include "OverworldSprites.h"
#include "MemoryManagement.h"
#include "Maths.h"
#include "Flags.h"
#include "Variables.h"
#include "Game.h"
#include "Maths.h"
#include "RTC.h"
#include "SoundEngine.h"
#include "Mapping.h"
#include "BackgroundFunctions.h"
#include "InputHandler.h"
#include "DoNothingInputEventHandler.h"
#include "PlayerEntity.h"
#include "TextFunctions.h"
#include "OAMObject.h"
#include "FlashFunctions.h"
#include "OverworldInputEventHandler.h"
#include "OverworldScriptRunner.h"
#include "Rectangle.h"
#include "WildBattle.h"
#include "TrainerBattle.h"
#include "GameModeManager.h"
#include "OverworldScriptRunner.h"

#define tilemapMiddle ((u32*)0x0600E000)
#define tilemapTop ((u32*)0x0600E800)
#define tilemapBottom ((u32*)0x0600F000)

TEXT_LOCATION TileAnimationStruct Overworld::emptyAnimStruct = { 0, 0, 0, 0, 0, 0, 0, 0 };
TEXT_LOCATION ALIGN(1) u8 Overworld::maxBanks = MaxBanks;
TEXT_LOCATION ALIGN(1) u8 Overworld::maxMaps[MaxBanks] = { 0, 0, 0, 2, 1 };
TEXT_LOCATION ALIGN(4) char* Overworld::mapNamesTable[] = { "Pallet Town", "Route 1" };
TEXT_LOCATION ALIGN(4) FlightSpot Overworld::flightSpots[] = {
		{ { 0, 0 }, 0, 0, 0 },
		{ { 3, 0 }, 6, 8, 0 }
};
TEXT_LOCATION ALIGN(4) HealingPlace Overworld::healingPlaces[] = {
		{ { 4, 0 }, 8, 5, 0, 0, 1, 1 }
};
TEXT_LOCATION ALIGN(4) AirportData Overworld::airportData[] = {
		{ { 3, 0 }, 0, 1, 0, 0 }
};

Overworld::Overworld()
{
	Game::SetCamera(Vector2D(0, 8));
	Game::SetCameraMode(true, false);
	row = 0;
	column = 0;
	BackgroundFunctions::SetBackgroundsToDefault();
	animStruct = new TileAnimationStruct[10];
	memset32((void*)animStruct, 0, (sizeof(TileAnimationStruct) * 10) >> 2);
	u16* newColours = new u16[512];
	memset32((void*)newColours, 0, (sizeof(u16) * 512) >> 3);
	DrawMap(Game::GetPlayerPos(), newColours);
	InputHandler::SetEventHandler(new DoNothingInputEventHandler());
	Overworld::PlaceNPCs(newColours);
	Game::FadeToPalette(newColours, true, HalfSecond, true, false);
	BackgroundFunctions::CreateWindow(0, Vector2D(0, 0), Vector2D(0xFF, 0xFF));
	BackgroundFunctions::CreateWindow(1, Vector2D(0xFF, 0xFF), Vector2D(0xFF, 0xFF));
	for (int j = 0; j < 2; j++)
	{
		for (int i = 0; i < 5; i++)
		{
			BackgroundFunctions::EnableWindowEffect(j, i);
		}
	}
	BackgroundFunctions::EnableWindowEffect(2, 0);
	BackgroundFunctions::EnableWindowEffect(3, 0);
	exitContext = 0;
}

Overworld::~Overworld()
{
	delete[] animStruct;
}

void Overworld::PlaceNPCs(u16* newColours)
{
	NPCData* data = Game::GetNPCDataPointer();
	NonPlayerCharacter* npc = new PlayerEntity(Vector2D(data[0].xLocation, data[0].yLocation), 2, false, newColours);
	npc->ChangeFrame(data[0].frameID);
	Game::OverwriteNPC(npc, 0);
	for (u32 i = 1; i < NumberOfOverworlds; i++)
	{
		if (data[i].isActive)
		{
			npc = new NonPlayerCharacter(Vector2D(data[i].xLocation, data[i].yLocation), 2, data[i].spriteID, data[i].dataSpriteID, newColours);
			npc->ChangeFrame(data[i].frameID);
			Game::OverwriteNPC(npc, i);
		}
	}
}

void Overworld::WarpTo(u32 callbackData)
{
	Overworld* ow = (Overworld*)GameModeManager::GetScreen();
	const WarpEvent &warpData = ow->GetWarpEvent();
	NPCData* data = Game::GetNPCDataPointer();
	const MapHeader &header = GetMapHeaderFromBankAndMapID(warpData.mapBank, warpData.map);
	bool success = false;
	if (header.eventsLocation)
	{
		if (header.eventsLocation->warpEvents && header.eventsLocation->numWarps > warpData.warpID)
		{
			data[0].xLocation = header.eventsLocation->warpEvents[warpData.warpID].xPos;
			data[0].yLocation = header.eventsLocation->warpEvents[warpData.warpID].yPos;
			success = true;
		}
	}
	if (!success)
	{
		data[0].xLocation = 0;
		data[0].yLocation = 0;
	}
	Game::SetCurrentMap(header);
	Game::SetCamera(Vector2D(0, 8));
	ow->ResetColumn();
	ow->ResetRow();
	u16* newColours = new u16[512];
	memset32((void*)newColours, 0, (sizeof(u16) * 512) >> 3);
	ow->DrawMap(Game::GetPlayerPos(), newColours);
	data[0].dataPointer->GetPalette(newColours, header.mapType == Indoors);
	Game::FadeToPalette(newColours, true, QuarterSecond, false, false);
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

void Overworld::PutTilesetPalettesInMemory(u32 tilesetID, u16* paletteLocation, u32 time, u16* colourLocation)
{
	u8 extraLength = ((tilesetID == 0)?0:112);
	void* palLoc = (void*)(((colourLocation) ? colourLocation : pal_bg_mem) + extraLength);
	u32 length = (tilesetID == 0)?56:48;
	memcpy32(palLoc, (void*)(&paletteLocation[extraLength + time * 256]), length);
}

void Overworld::PutMapPalettesInMemory(u16* colourLocation)
{
	u32 time = RTC::GetTime().timeOfDay;
	const MapHeader &header = Game::GetCurrentMap();
	u16* palette = (u16*)header.footerLocation->primaryTileset->paletteData;
	PutTilesetPalettesInMemory(0, palette, time, colourLocation);
	palette = (u16*)header.footerLocation->secondaryTileset->paletteData;
	PutTilesetPalettesInMemory(1, palette, time, colourLocation);
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
			for (u32 i = 0; i < length; i++)
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
	for (u32 i = 0; i < maxLength; i++)
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

const BlockMetadata & Overworld::CalculateBlockAttributes(s32 x, s32 y)
{
	u16 blockID = CalculateBlock(x, y) & 0x3FF;
	return GetBlockDataLocation(blockID);
}

const u16 comparisonSizes[2] = { 0x280, 0x200 };

Block* Overworld::GetBlockLocation(u16 blockID)
{
	const MapFooter &footer = *Game::GetCurrentMap().footerLocation;
	const Tileset &prim = *((blockID >= comparisonSizes[Game::GetCurrentMap().tilesetType])?footer.secondaryTileset:footer.primaryTileset);
	return prim.primaryBlockData;
}

const BlockMetadata & Overworld::GetBlockDataLocation(u16 blockID)
{
	const MapFooter &footer = *Game::GetCurrentMap().footerLocation;
	const Tileset &prim = *((blockID >= comparisonSizes[Game::GetCurrentMap().tilesetType])?footer.secondaryTileset:footer.primaryTileset);
	return prim.blockInformation[(blockID >= comparisonSizes[Game::GetCurrentMap().tilesetType])?blockID - comparisonSizes[Game::GetCurrentMap().tilesetType] : blockID];
}

void Overworld::PutBlockIntoVRAM(Block* b, const BlockMetadata &blockData, u16 blockID, u32 location)
{
	if (!blockData.playerOnTop)
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

void Overworld::DrawRowOfBlocks(s32 xLocation, s32 yLocation, u32 rowID, u32 columnID)
{
	for (int x = 0; x < 16; x++)
	{
		u16 blockID = CalculateBlockID(x + xLocation, yLocation);
		Block* b = GetBlockLocation(blockID);
		const BlockMetadata &blockData = GetBlockDataLocation(blockID);
		u16 size = comparisonSizes[Game::GetCurrentMap().tilesetType];
		if (blockID >= size)
		{
			blockID -= size;
		}
		PutBlockIntoVRAM(b, blockData, blockID, Maths::UnsignedModulus(x + columnID, 16) + (rowID * 0x20));
	}
}

void Overworld::DrawColumnOfBlocks(s32 xLocation, s32 yLocation, u32 columnID, u32 rowID)
{
	s32 y;
	for (y = 0; y < 16; y++)
	{
		u16 blockID = CalculateBlockID(xLocation, yLocation + y);
		Block* b = GetBlockLocation(blockID);
		const BlockMetadata &blockData = GetBlockDataLocation(blockID);
		u16 size = comparisonSizes[Game::GetCurrentMap().tilesetType];
		if (blockID >= size)
		{
			blockID -= size;
		}
		PutBlockIntoVRAM(b, blockData, blockID, columnID + (Maths::UnsignedModulus(y + rowID, 16) * 0x20));
	}
}

void Overworld::DrawMap(const Vector2D &position, u16* colourLocation)
{
	PutMapTilesetsInMemory();
	PutMapPalettesInMemory(colourLocation);
	u32 y;
	for (y = 0; y < 16; y++)
	{
		DrawRowOfBlocks(position.GetX() - 7, y + position.GetY() - 5, y, 0);
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

void Overworld::OnExitCallback()
{
	switch (exitContext)
	{
		default:
			break;
	}
}

void Overworld::OnEnterCallback()
{
	InputHandler::SetEventHandler(new OverworldInputEventHandler());
	switch (exitContext)
	{
		case 0:
			SoundEngine::PlaySong(Game::GetCurrentMap().musicTrack, 0);
			Game::MainGame(true);
			break;
		case 1:
			new OverworldScriptRunner((u8*)0);
		default:
			break;
	}
}

void Overworld::OnCompleteTurn()
{
	const MapHeader &header = Game::GetCurrentMap();
	NPCData* data = Game::GetNPCDataPointer();
	if (header.wildDataLocation)
	{
		const BlockMetadata &battleValues = CalculateBlockAttributes(data[0].xLocation, data[0].yLocation);
		bool triggerWildBattle = false;
		{
			WildData &data = *header.wildDataLocation;
			WildPokemonData dat;
			if (battleValues.grassWildBattle)
			{
				dat = *data.data[0];
			}
			else if (battleValues.surfingWildBattle)
			{
				dat = *data.data[1];
			}
			else if (battleValues.fishingWildBattle)
			{
				dat = *data.data[2];
			}
			else if (battleValues.rockSmashWildBattle)
			{
				dat = *data.data[3];
			}
			else if (battleValues.headbuttTreeWildBattle)
			{
				dat = *data.data[4];
			}
			u32 encounterRate = dat.encounterRate[RTC::GetTime().timeOfDay];
			if (encounterRate == 0xFF)
			{
				triggerWildBattle = true;
			}
			else
			{
				u32 random = Maths::GetDelimitedRandom32BitValue(255);
				if (encounterRate >= random)
				{
					triggerWildBattle = true;
				}
			}
		}
		if (triggerWildBattle)
		{
			BattleTypeStruct bts = BattleTypeStruct();
			bts.basicInfo = 0;
			bts.info.isWildBattle = 1;
			GameModeManager::SetScreen(new WildBattle(bts));
		}
	}
}

void Overworld::OnCompleteMove(u32 direction)
{
	Game::OnTakeStep();
	NPCData* data = Game::GetNPCDataPointer();

	// Check for warping

	if (warpOnCompleteMove)
	{
		Game::FadeToBlack(true, QuarterSecond, false, false);
		const MapHeader &header = GetMapHeaderFromBankAndMapID(warpData.mapBank, warpData.map);
		if (SoundEngine::GetSongID() != header.musicTrack)
		{
			SoundEngine::PlaySong(header.musicTrack, 1);
		}
		warpOnCompleteMove = false;
		Game::SetCustomFadeCallback((VoidFunctionPointerU32)WarpTo, 0);
		return;
	}

	// Check for map connection map change

	if (connect.isActive)
	{
		const MapHeader &oldHeader = GetMapHeaderFromBankAndMapID(Game::GetCurrentMap().mapLocation.mapBank, Game::GetCurrentMap().mapLocation.map);
		const MapHeader &newHeader = GetMapHeaderFromBankAndMapID(connect.mapBank, connect.map);
		Game::SetCurrentMap(newHeader);
		if (oldHeader.footerLocation->primaryTileset != newHeader.footerLocation->primaryTileset)
		{
			u32 tilesetMode = (Game::GetCurrentMap().footerLocation[0].primaryTileset[0].information & 0xFF0000) >> 0x10;
			StoreTilesetIntoMemory(0, newHeader.footerLocation->primaryTileset->primaryTilesetData, tilesetMode, newHeader.footerLocation->primaryTileset->information & 1);
			PutTileAnimationDataIntoMemory(0);
			u16* palette = (u16*)newHeader.footerLocation->primaryTileset->paletteData;
			PutTilesetPalettesInMemory(0, palette, RTC::GetTime().timeOfDay, (u16*)NULL);
		}
		if (oldHeader.footerLocation->secondaryTileset != newHeader.footerLocation->secondaryTileset)
		{
			u32 tilesetMode = (Game::GetCurrentMap().footerLocation[0].secondaryTileset[0].information & 0xFF0000) >> 0x10;
			StoreTilesetIntoMemory(0, newHeader.footerLocation->secondaryTileset->secondaryTilesetData, tilesetMode, newHeader.footerLocation->secondaryTileset->information & 1);
			PutTileAnimationDataIntoMemory(1);
			u16* palette = (u16*)newHeader.footerLocation->secondaryTileset->paletteData;
			PutTilesetPalettesInMemory(1, palette, RTC::GetTime().timeOfDay, (u16*)NULL);
		}
		if (newHeader.musicTrack != oldHeader.musicTrack)
		{
			SoundEngine::PlaySong(newHeader.musicTrack, 1);
		}
		switch (connect.alignment)
		{
			case 1:
				data[0].xLocation -= connect.offset;
				data[0].yLocation = 0;
				break;
			case 2:
				data[0].xLocation -= connect.offset;
				data[0].yLocation = newHeader.footerLocation->height - 1;
				break;
			case 3:
				data[0].xLocation = 0;
				data[0].yLocation -= connect.offset;
				break;
			case 4:
				data[0].xLocation = newHeader.footerLocation->width - 1;
				data[0].yLocation -= connect.offset;
				break;
			default:
				break;
		}
		connect.isActive = 0;
		Maths::ReseedRNG();
	}

	// Check for trainer battles and scripts and such

	const MapHeader &header = Game::GetCurrentMap();
	if (header.eventsLocation)
	{
		const EventsHeader &events = *header.eventsLocation;

		// Check if any NPCs need loaded

		NPCEvent* npcs = events.npcEvents;

		Rectangle rect1 = Rectangle(data[0].xLocation - 8, data[0].yLocation - 6, data[0].xLocation + 8, data[0].yLocation + 6);
		Rectangle rect2 = Rectangle(data[0].xLocation - 7, data[0].yLocation - 5, data[0].xLocation + 7, data[0].yLocation + 5);

		for (int i = 0; i < events.numNPCs; i++)
		{
			if (npcs[i].flagID && !Flags::CheckFlag(npcs[i].flagID))
			{
				if (rect1.IsTileWithin(npcs[i].xPos, npcs[i].yPos) && !rect2.IsTileWithin(npcs[i].xPos, npcs[i].yPos))
				{
					//NonPlayerCharacter* npc = new NonPlayerCharacter(Vector2D(npcs[i].xPos, npcs[i].yPos), 2, npcs[i].spriteID, npcs[i].eventNumber, NULL);
					//if (!Game::AddNPC(npc))
					//{
					//	delete npc;
					//}
				}
			}
		}

		// Check tile scripts second

		TileScriptEvent* tileScripts = events.tileScriptEvents;

		for (int i = 0; i < events.numTileScripts; i++)
		{
			if (tileScripts[i].xPos == data[0].xLocation && tileScripts[i].yPos == data[0].yLocation)
			{
				if (Variables::GetVar(tileScripts[i].varID) == tileScripts[i].varValue)
				{
					Variables::SetVar(LASTTALKED, U16Max);
					new OverworldScriptRunner(tileScripts[i].scriptPointer);
					break;
				}
			}
		}
	}

	// Check Trainer Battles Second

	if (false)
	{
		return;
	}

	// Check Wild Battles last

	if (header.wildDataLocation)
	{
		const BlockMetadata &battleValues = CalculateBlockAttributes(data[0].xLocation, data[0].yLocation);
		bool triggerWildBattle = false;
		{
			WildData &data = *header.wildDataLocation;
			WildPokemonData dat;
			if (battleValues.grassWildBattle)
			{
				dat = *data.data[0];
			}
			else if (battleValues.surfingWildBattle)
			{
				dat = *data.data[1];
			}
			else if (battleValues.fishingWildBattle)
			{
				dat = *data.data[2];
			}
			else if (battleValues.rockSmashWildBattle)
			{
				dat = *data.data[3];
			}
			else if (battleValues.headbuttTreeWildBattle)
			{
				dat = *data.data[4];
			}
			u32 encounterRate = dat.encounterRate[RTC::GetTime().timeOfDay];
			if (encounterRate == 0xFF)
			{
				triggerWildBattle = true;
			}
			else
			{
				u32 random = Maths::GetDelimitedRandom32BitValue(255);
				if (encounterRate >= random)
				{
					triggerWildBattle = true;
				}
			}
		}
		if (triggerWildBattle)
		{
			BattleTypeStruct bts = BattleTypeStruct();
			bts.basicInfo = 0;
			bts.info.isWildBattle = 1;
			GameModeManager::SetScreen(new WildBattle(bts));
		}
	}
}
