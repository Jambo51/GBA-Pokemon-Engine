/*
 * ObjectManager.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "ObjectManager.h"
#include "Allocator.h"
#include "GlobalDefinitions.h"

LinkedList<OAMObject*>* ObjectManager::_objects = new LinkedList<OAMObject*>();

const RODATA_LOCATION u8 sizes[3][4] = { { 1, 4, 16, 64 }, { 2, 4, 8, 32 }, { 2, 4, 8, 32 } };

u32 CalculateObjectSize(u32 shape, u32 size)
{
	return (u32)sizes[shape][size];
}

OAMObject::OAMObject(u32 shape, u32 size, u32 paletteMode, void* image, void* palette, bool compressed)
{
	if (shape <= Shape_Vertical && size <= Square_64x64)
	{
		if (paletteMode < 2)
		{
			this->objShape = shape;
			this->objSize = size;
			this->mode = paletteMode;
			u32 totalSize = CalculateObjectSize(shape, size);
			void* loc = Allocator::AllocateObjectTiles(totalSize);
			if (loc)
			{
				if (compressed)
				{
					LZ77UnCompVram(image, loc);
				}
				else
				{
					memcpy32(loc, image, totalSize);
				}
			}
		}
	}
}

void OAMObject::Update(u32 position)
{
	u16* oam = (u16*)0x07000000;
	if (isActive)
	{
		if (updater)
		{
			updater->Update(this);
		}
		oam[(position << 3)] = yLocation | (disableDoubleFlag << 9) | (rotationFlag << 8) | (mode << 10) | (mosaic << 12) | (colourMode << 13) | (objShape << 14);
		oam[(position << 3) + 1] = xLocation | ((rotationFlag) ? (rotScaleParam << 9) : (hFlip << 12) | (vFlip << 13)) | (objSize << 14);
		oam[(position << 3) + 2] = tileLocation | (priority << 10)| (paletteSlot << 12);
	}
}

ObjectManager::ObjectManager()
{
	// TODO Auto-generated constructor stub

}

ObjectManager::~ObjectManager()
{
	// TODO Auto-generated destructor stub
}

void ObjectManager::Update(LinkedList<Entity*>* order)
{
	for (int i = 0; i < order->Size(); i++)
	{
		_objects->At(order->At(i)->GetObjectID())->Update(i);
	}
	delete order;
}
