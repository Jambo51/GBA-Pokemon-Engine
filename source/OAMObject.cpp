/*
 * OAMObjecte.cpp
 *
 *  Created on: 16 May 2015
 *      Author: Jamie
 */

#include "OAMObject.h"
#include "GlobalDefinitions.h"
#include "Allocator.h"
#include "Game.h"

RODATA_LOCATION u8 OAMObject::sizes[3][4] = { { 1, 4, 16, 64 }, { 2, 4, 8, 32 }, { 2, 4, 8, 32 } };

u32 OAMObject::CalculateObjectSize(u32 shape, u32 size)
{
	return (u32)sizes[shape][size];
}

OAMObject::OAMObject(u32 shape, u32 size, u32 paletteMode, void* image, u32 paletteID, void* palette, u32 priority, bool compressed, u16* colourAddress)
{
	memset32((void*)this, 0, sizeof(OAMObject) >> 2);
	if (shape <= Shape_Vertical && size <= Square_64x64)
	{
		if (paletteMode < 2)
		{
			this->objShape = shape;
			this->objSize = size;
			this->mode = paletteMode;
			u32 totalSize = CalculateObjectSize(shape, size);
			this->priority = priority;
			void* loc = Allocator::AllocateObjectTilesFromNumTiles(totalSize);
			if (loc)
			{
				if (compressed)
				{
					LZ77UnCompVram(image, loc);
				}
				else
				{
					memcpy32(loc, image, totalSize << 3);
				}
			}
			this->isActive = 1;
			this->tileLocation = ((u32)loc - 0x06010000) >> 5;
			paletteID = Allocator::AllocatePaletteSlot(paletteID);
			if (paletteID < 16)
			{
				if (colourAddress)
				{
					memcpy32((void*)((u32)colourAddress + 0x200 + paletteID * 0x20), palette, 8);
				}
				else
				{
					memcpy32((void*)(MEM_PAL_OBJ + paletteID * 0x20), palette, 8);
				}
			}
			this->paletteSlot = paletteID;
		}
	}
}

OAMObject::~OAMObject()
{
	Allocator::FreePalette(this->paletteSlot);
	Allocator::FreeObjectTilesFromTileID(this->tileLocation);
}

void OAMObject::Update(u32 position)
{
	if (updater)
	{
		updater->Update(this);
	}
	u16* oam = (u16*)0x07000000;
	if (isActive)
	{
		if (updater)
		{
			updater->Update(this);
		}
		oam[(position * 4)] = yLocation | (disableDoubleFlag << 9) | (rotationFlag << 8) | (mode << 10) | (mosaic << 12) | (colourMode << 13) | (objShape << 14);
		oam[(position * 4) + 1] = xLocation | ((rotationFlag) ? (rotScaleParam << 9) : (hFlip << 12) | (vFlip << 13)) | (objSize << 14);
		oam[(position * 4) + 2] = tileLocation | (priority << 10)| (paletteSlot << 12);
	}
}

void OAMObject::UpdatePalette(void* newPalette)
{
	memcpy32((void*)(MEM_PAL_OBJ + paletteSlot * 0x20), newPalette, 8);
}

void OAMObject::UpdateImage(void* image, bool compressed)
{
	void* loc = (void*)((tileLocation << 5) + 0x06010000);
	if (compressed)
	{
		LZ77UnCompVram(image, loc);
	}
	else
	{
		u32 totalSize = CalculateObjectSize(objShape, objSize);
		memcpy32(loc, image, totalSize << 3);
	}
}

Vector2D OAMObject::CalculateRelativePosition(const Vector2D& pos)
{
	NPCData* data = Game::GetNPCDataPointer();
	u16 xPosition = 112;
	s16 xOffset = pos.GetX() - data[0].xLocation;
	if (xOffset != 0)
	{
		xPosition += xOffset * 0x10;
	}
	u16 yPosition = 56;
	s16 yOffset = pos.GetY() - data[0].yLocation;
	if (yOffset != 0)
	{
		yPosition += yOffset * 0x10;
	}
	return Vector2D(xPosition, yPosition);
}
