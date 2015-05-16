/*
 * PlayerEntity.h
 *
 *  Created on: 16 May 2015
 *      Author: Jamie
 */

#ifndef PLAYERENTITY_H_
#define PLAYERENTITY_H_

#include "Entity.h"

class PlayerEntity : public Entity
{
public:
	PlayerEntity(const Vector2D &location, u32 backgroundLevel);
	~PlayerEntity();
	bool Initialise();
	bool LoadContent();
	bool Update();
	void UnloadContent();
};

#endif /* PLAYERENTITY_H_ */
