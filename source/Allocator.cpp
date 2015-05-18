/*
 * Allocator.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "Allocator.h"
#include "GlobalDefinitions.h"

EWRAM_LOCATION PaletteManagementStructure Allocator::pallocData;
EWRAM_LOCATION SpriteManagementStructure Allocator::sprallocData;

Allocator::Allocator()
{
	// TODO Auto-generated constructor stub

}

Allocator::~Allocator()
{
	// TODO Auto-generated destructor stub
}

void* Allocator::AllocateObjectTiles(u32 requestedLength)
{
	void* basePointer = sprallocData.startLocation;
	void* topPointer = (void*)((u32)basePointer + sprallocData.memoryBlockLength);
	u32 filledEntries = sprallocData.filledEntries;
	if (filledEntries < SPRALLOCLENGTH)
	{
		if (filledEntries == 0)
		{
			void* pointer = basePointer;
			sprallocData.filledEntries = filledEntries + 1;
			sprallocData.data[0].pointerToData = pointer;
			sprallocData.data[0].index = requestedLength;
			return pointer;
		}
		bool locFound = false;
		u32 slot = 0xFF;
		u32 attempts = 0;
		void* previousPointer = basePointer;
		while (locFound == 0 && attempts < 50)
		{
			for (int i = 0; i < SPRALLOCLENGTH; i++)
			{
				void* thisPointer = sprallocData.data[i].pointerToData;
				if (thisPointer == 0 && slot == 0xFF)
				{
					slot = i;
				}
				else if (thisPointer == previousPointer)
				{
					previousPointer += sprallocData.data[i].index;
				}
			}
			bool higherFound = false;
			for (int i = 0; i < SPRALLOCLENGTH; i++)
			{
				void* thisPointer = sprallocData.data[i].pointerToData;
				if (thisPointer < topPointer && thisPointer > previousPointer)
				{
					topPointer = thisPointer;
				}
			}
			if (higherFound)
			{
				if (((u32)topPointer - (u32)previousPointer) >= requestedLength)
				{
					locFound = true;
					break;
				}
				else
				{
					previousPointer = topPointer;
				}
			}
			else if ((u32)topPointer - (u32)previousPointer >= requestedLength)
			{
				locFound = true;
				break;
			}
			attempts++;
		}
		if (slot != 0xFF && locFound)
		{
			sprallocData.filledEntries++;
			sprallocData.data[slot].pointerToData = previousPointer;
			sprallocData.data[slot].index = requestedLength;
			return previousPointer;
		}
		else
		{
			return (void*)0;
		}
	}
	return (void*)0;
}

void* Allocator::AllocateObjectTilesFromNumTiles(u32 requestedLengthInTiles)
{
	return AllocateObjectTiles(requestedLengthInTiles * 0x20);
}

void Allocator::FreeObjectTiles(void* pointer)
{
	if (pointer)
	{
		for (int i = 0; i < SPRALLOCLENGTH; i++)
		{
			if ((u32)sprallocData.data[i].pointerToData == (u32)pointer)
			{
				vu32 dataSize = sprallocData.data[i].index;
				memset32(pointer, 0, dataSize >> 2);
				u32 leftOver = dataSize & 3;
				dataSize >>= 2;
				dataSize <<= 2;
				for (u32 j = 0; j < leftOver; j++)
				{
					((u8*) pointer)[dataSize + j] = 0;
				}
				sprallocData.data[i].pointerToData = 0;
				sprallocData.data[i].index = 0;
				sprallocData.filledEntries--;
				break;
			}
		}
	}
}

void Allocator::FreeObjectTilesFromTileID(u32 tileID)
{
	FreeObjectTiles((void*)(0x06010000 + tileID * 0x20));
}

s32 Allocator::AllocatePaletteSlot(u32 paletteID)
{
	s32 slot = -1;
	for (int i = 0; i < PALLOCLENGTH; i++)
	{
		if (pallocData.dataObjects[i].paletteID == paletteID && pallocData.dataObjects[i].index < 0x10)
		{
			pallocData.dataObjects[i].numObjectsUsing++;
			return pallocData.dataObjects[i].index;
		}
	}
	if (pallocData.filledEntriesObjects < 14)
	{
		for (u32 i = 0; i < PALLOCLENGTH; i++)
		{
			if (pallocData.dataObjects[i].index > 0xF)
			{
				slot = i;
				break;
			}
		}
		if (slot >= 0 && slot < 14)
		{
			pallocData.dataObjects[slot].numObjectsUsing = 1;
			pallocData.dataObjects[slot].index = slot;
			pallocData.dataObjects[slot].paletteID = paletteID;
			pallocData.filledEntriesObjects++;
		}
		return slot;
	}
	return -1;
}

void Allocator::FreePalette(u32 paletteID)
{
	for (int i = 0; i < PALLOCLENGTH; i++)
	{
		if (pallocData.dataObjects[i].paletteID == paletteID && pallocData.dataObjects[i].index < 0x10)
		{
			if (pallocData.dataObjects[i].numObjectsUsing == 1)
			{
				pallocData.dataObjects[i].numObjectsUsing = 0;
				pallocData.dataObjects[i].paletteID = 0;
				pallocData.dataObjects[i].index = 0x10;
				pallocData.filledEntriesObjects--;
			}
			else
			{
				pallocData.dataObjects[i].numObjectsUsing--;
			}
			break;
		}
	}
}

void Allocator::Initialise(void* objectTilesStartPoint, u32 objectTilesLength)
{
	sprallocData.filledEntries = 0;
	sprallocData.memoryBlockLength = objectTilesLength;
	sprallocData.startLocation = objectTilesStartPoint;
	for (int i = 0; i < SPRALLOCLENGTH; i++)
	{
		sprallocData.data[i].index = 0;
		sprallocData.data[i].pointerToData = 0;
	}
	for (int i = 0; i < PALLOCLENGTH; i++)
	{
		pallocData.dataObjects[i].index = 0x10;
		pallocData.dataObjects[i].numObjectsUsing = 0;
		pallocData.dataObjects[i].paletteID = 0;
	}
}
