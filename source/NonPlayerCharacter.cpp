/*
 * NonPlayerCharacter.cpp
 *
 *  Created on: 18 May 2015
 *      Author: Jamie
 */

#include "NonPlayerCharacter.h"
#include "OverworldSprites.h"

NonPlayerCharacter::NonPlayerCharacter(const Vector2D &location, u32 backgroundLevel, u32 spriteID) : Entity(location, backgroundLevel), spriteIndex(spriteID)
{
	// TODO Auto-generated constructor stub
	SpriteData* data = &spriteTable[spriteID];
	OAMObject* object = new OAMObject(data->spriteShape, data->spriteSize, 0, (void*)data->frames[0], data->paletteSlotID, (void*)paletteTable[data->paletteSlotID], backgroundLevel, false);
	this->_object = object;
}

NonPlayerCharacter::~NonPlayerCharacter()
{
	// TODO Auto-generated destructor stub
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
