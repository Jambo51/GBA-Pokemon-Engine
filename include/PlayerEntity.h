/*
 * PlayerEntity.h
 *
 *  Created on: 16 May 2015
 *      Author: Jamie
 */

#ifndef PLAYERENTITY_H_
#define PLAYERENTITY_H_

#include "NonPlayerCharacter.h"

class PlayerEntity : public NonPlayerCharacter
{
public:
	PlayerEntity(const Vector2D &location, u32 backgroundLevel, bool gender = false, u16* colourAddress = NULL);
	~PlayerEntity();
	u32 GetObjectID() const { return 0xFF; }
	bool Initialise();
	bool LoadContent();
	bool Update();
	void UnloadContent();
};

#endif /* PLAYERENTITY_H_ */
