/*
 * NonPlayerCharacter.cpp
 *
 *  Created on: 18 May 2015
 *      Author: Jamie
 */

#include "NonPlayerCharacter.h"
#include "OverworldSprites.h"
#include "RTC.h"

NonPlayerCharacter::NonPlayerCharacter(const Vector2D &location, u32 backgroundLevel, u32 spriteID, u32 objectID, u16* colourAddress) : Entity(location, backgroundLevel), spriteIndex(spriteID)
{
	// TODO Auto-generated constructor stub
	SpriteData* data = &spriteTable[spriteID];
	OAMObject* object = new OAMObject(data->spriteShape, data->spriteSize, 0, (void*)data->frames[0], data->paletteSlotID, (void*)((u32)paletteTable[data->paletteSlotID] + RTC::GetTime().timeOfDay * 0x20), backgroundLevel, false, colourAddress);
	object->SetPosition(OAMObject::CalculateRelativePosition(location));
	this->_object = object;
	this->objectID = objectID;
}

NonPlayerCharacter::~NonPlayerCharacter()
{
	// TODO Auto-generated destructor stub
	if (_object)
	{
		delete _object;
	}
}

bool NonPlayerCharacter::Initialise()
{

}

bool NonPlayerCharacter::LoadContent()
{

}

bool NonPlayerCharacter::Update()
{
	return Entity::Update();
}

void NonPlayerCharacter::UnloadContent()
{

}

void NonPlayerCharacter::TimeTick(u32 time)
{
	SpriteData* data = &spriteTable[spriteIndex];
	_object->UpdatePalette((void*)((u32)paletteTable[data->paletteSlotID] + time * 0x20));
}

void NonPlayerCharacter::ChangeFrame(u32 frameID)
{
	SpriteData* data = &spriteTable[spriteIndex];
	if (frameID < data->numberOfFrames)
	{
		_object->UpdateImage((void*)data->frames[frameID]);
	}
}
