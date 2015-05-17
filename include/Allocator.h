/*
 * Allocator.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef ALLOCATOR_H_
#define ALLOCATOR_H_

#include "GlobalDefinitions.h"

class Allocator
{
private:
	static PaletteManagementStructure pallocData;
	static SpriteManagementStructure sprallocData;
	Allocator();
	virtual ~Allocator();
public:
	static void* AllocateObjectTiles(u32 totalSize);
	static void* AllocateObjectTilesFromNumTiles(u32 requestedLengthInTiles);
	static void FreeObjectTiles(void* pointer);
	static void FreeObjectTilesFromTileID(u32 tileID);
	static s32 AllocatePaletteSlot(u32 paletteID);
	static void FreePalette(u32 paletteID);
	static void Initialise(void* objectTilesStartPoint, u32 objectTilesLength);
};

#endif /* ALLOCATOR_H_ */
