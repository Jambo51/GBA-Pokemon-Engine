/*
 * PlayerEntity.cpp
 *
 *  Created on: 16 May 2015
 *      Author: Jamie
 */

#include "PlayerEntity.h"
#include "GlobalDefinitions.h"
#include "OverworldSprites.h"

PlayerEntity::PlayerEntity(const Vector2D &location, u32 backgroundLevel) : Entity(location, backgroundLevel)
{
	// TODO Auto-generated constructor stub
	SpriteData* data = &spriteTable[0];
	OAMObject* object = new OAMObject(data->spriteShape, data->spriteSize, 0, (void*)data->frames[0], data->paletteSlotID, (void*)paletteTable[data->paletteSlotID], backgroundLevel, false);
	this->_object = object;
}

PlayerEntity::~PlayerEntity()
{
	// TODO Auto-generated destructor stub
}

bool PlayerEntity::Initialise()
{

}

bool PlayerEntity::LoadContent()
{

}

bool PlayerEntity::Update()
{
	Entity::Update();
}

void PlayerEntity::UnloadContent()
{

}
