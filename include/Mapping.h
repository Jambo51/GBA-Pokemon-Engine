#ifndef MAPPING_H
#define MAPPING_H

#include "GlobalDefinitions.h"
#include "GameScreen.h"

class Overworld : public GameScreen
{
public:
	Overworld();
	~Overworld();
	static MapHeader* GetMapHeaderFromBankAndMapID(u8 bank, u8 map);
	static WildData* GetMapWildDataFromBankAndMapID(u8 bank, u8 map);
	static MapConnection* GetMapConnectionsFromBankAndMapID(u8 bank, u8 map);
	static MapFooter* GetMapFooterFromBankAndMapID(u8 bank, u8 map);
	static u16 GetMusicTrackIDFromBankAndMapID(u8 bank, u8 map);
	void PutTilesetPalettesInMemory(u8 tilesetID, u16* paletteLocation, u8 time);
	void PutMapPalettesInMemory();
	TileAnimationStructROM* GetTileAnimationDataPointer(u8 tilesetID);
	void PutTileAnimationDataIntoMemory(u8 tilesetID);
	void StoreTilesetIntoMemory(u8 tilesetID, void* location, u8 tilesetMode, bool isCompressed);
	void PutMapTilesetsInMemory();
	u8 IsConnectionOnSide(MapConnection* m, u8 side);
	u16 GetBlockFromData(u16* mapDataLocation, s32 x, s32 y, u16 mapWidth);
	u16 GetBorderBlock(s32 x, s32 y);
	u8 CalculateXConnectionLocation(MapConnection* m, s32 x, s32 y, u16 widthOfMap);
	u8 CalculateYConnectionLocation(MapConnection* m, s32 x, s32 y, u16 heightOfMap);
	u16 GetOutOfBoundsXBlock(MapConnection* m, s32 x, s32 y, u16 widthOfMap);
	u16 GetOutOfBoundsYBlock(MapConnection* m, s32 x, s32 y, u16 heightOfMap);
	u16 CalculateBlock(s32 x, s32 y);
	u16 CalculateBlockMovementPermissions(s32 x, s32 y);
	u16 CalculateBlockID(s32 x, s32 y);
	Block* GetBlockLocation(u16 blockID);
	u32* GetBlockDataLocation(u16 blockID);
	void PutBlockIntoVRAM(Block* b, u32* blockData, u16 blockID, u32 location);
	void DrawRowOfBlocks(s32 xLocation, s32 yLocation, u32 rowID);
	void DrawColumnOfBlocks(s32 xLocation, s32 yLocation, u32 columnID);
	void DrawMap(u32 xLocation, u32 yLocation);
	u8 LoadObjectPaletteIntoMemory(u32 paletteID, u8 slot, u8 overloadExisting);
	void ChangeSpriteFrame(u8 spriteID);
	u16 CalculateObjectXLocation(u8 shape, u8 size);
	u16 CalculateObjectYLocation(u8 shape, u8 size);
	void PlacePlayerSprite(u32 xLocation, u32 yLocation, u8 frame);
	void UpdateMapLocations();
	s32 CalculateXMovement();
	s32 CalculateYMovement();
	void InitialiseXY();
	u32 IsNewLocationConnected(s32 horizontalLocation, s32 verticalLocation);
	u32 IsNewLocationWalkable(s32 horizontalLocation, s32 verticalLocation);
	u32 IsNewLocationInBounds(s32 horizontalLocation, s32 verticalLocation);
	u32 IsNewLocationValid(s32 horizontalLocation, s32 verticalLocation);
	void CopyMapHeaderAndResetMusic();
	void ApplyMovement();
};

#endif
