/*
 * ObjectFunctions.c
 *
 *  Created on: 20 Aug 2014
 *      Author: Jamie
 */

#include "Data\GlobalDefinitions.h"
#include "Functions\MemoryManagement.h"
#include "Data\MemoryLocations.h"

const RODATA_LOCATION u8 sizes[3][4] = { { 1, 4, 16, 64 }, { 2, 4, 8, 32 }, { 2, 4, 8, 32 } };

u32 CalculateObjectSize(u8 shape, u8 size)
{
	return (u32)sizes[shape][size];
}

u32 FindFreeOAMSlot()
{
	u32 i;
	for (i = 0; i < 40; i++)
	{
		if (preOAM[i].slotOccupied == 0)
		{
			return i;
		}
	}
	return 0xFFFFFFFF;
}

u32 CreateObject(OAMData* oamData, u8 shape, u8 size)
{
	PreOAMStruct* ptr = 0;
	u32 objSize = CalculateObjectSize(shape, size) << 5;
	void* imageLoc = SpriteAllocate(objSize);
	u32 slot = FindFreeOAMSlot();
	if (slot != 0xFFFFFFFF)
	{
		ptr = (PreOAMStruct*)&preOAM[slot];
	}
	if (ptr)
	{
		ptr[0].StateFunction = oamData[0].stateFunction;
		ptr[0].hFlip = oamData[0].hFlip;
		ptr[0].vFlip = oamData[0].vFlip;
		ptr[0].objShape = shape;
		ptr[0].objSize = size;
		ptr[0].paletteSlot = oamData[0].paletteSlot;
		ptr[0].priority = oamData[0].priority;
		ptr[0].tileLocation = imageLoc;
		ptr[0].xLocation = oamData[0].xLoc;
		ptr[0].yLocation = oamData[0].yLoc;
		ptr[0].isActive = 1;
		ptr[0].requiresUpdate = 1;
		ptr[0].slotOccupied = 1;
	}
	return slot;
}

u32 CreatObjectFromUncompressedImage(OAMData* oamData, u8 shape, u8 size, void* spriteLocation)
{
	u32 slot = CreateObject(oamData, shape, size);
	PreOAMStruct* ptr = (PreOAMStruct*)&preOAM[slot];
	if (ptr)
	{
		u32 objSize = CalculateObjectSize(shape, size) << 3;
		memcpy32(ptr[0].tileLocation, spriteLocation, objSize);
		ptr[0].tileLocation = (void*)(((u32)(ptr[0].tileLocation - 0x06010000)) >> 5);
	}
	return slot;
}

u32 CreateObjectFromCompressedImage(OAMData* oamData, u8 shape, u8 size, void* spriteLocation)
{
	u32 slot = CreateObject(oamData, shape, size);
	PreOAMStruct* ptr = (PreOAMStruct*)&preOAM[slot];
	if (ptr)
	{
		LZ77UnCompVram(spriteLocation, ptr[0].tileLocation);
		ptr[0].tileLocation = (void*)(((u32)(ptr[0].tileLocation - 0x06010000)) >> 5);
	}
	return slot;
}

void UpdateOAMFromStructure()
{
	vu16* oam = (vu16*)0x07000000;
	u32 i;
	for (i = 0; i < 40; i++)
	{
		if (preOAM[i].StateFunction != 0)
		{
			((void (*)(u32))(preOAM[i].StateFunction))((u32)(&preOAM[i]));
		}
		if (preOAM[i].isActive == 1 && preOAM[i].requiresUpdate == 1)
		{
			oam[(i << 3)] = preOAM[i].xLocation | (preOAM[i].objShape << 14);
			oam[(i << 3) + 1] = preOAM[i].yLocation | (preOAM[i].hFlip << 12) | (preOAM[i].vFlip << 13) | (preOAM[i].objSize << 14);
			oam[(i << 3) + 2] = (u32)preOAM[i].tileLocation | (preOAM[i].priority << 10)| (preOAM[i].paletteSlot << 12);
			preOAM[i].requiresUpdate = 0;
		}
	}
}
