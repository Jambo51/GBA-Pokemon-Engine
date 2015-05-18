/*
 * NonPlayerCharacter.h
 *
 *  Created on: 18 May 2015
 *      Author: Jamie
 */

#ifndef NONPLAYERCHARACTER_H_
#define NONPLAYERCHARACTER_H_

#include "Entity.h"

class NonPlayerCharacter : public Entity
{
protected:
	u32 spriteIndex;
	u32 objectID;
public:
	NonPlayerCharacter(const Vector2D &location, u32 backgroundLevel, u32 spriteID);
	u32 GetSpriteIndex() const { return spriteIndex; }
	virtual u32 GetObjectID() const { return objectID; }
	virtual ~NonPlayerCharacter();
	virtual bool Initialise();
	virtual bool LoadContent();
	virtual bool Update();
	virtual void UnloadContent();
};

#endif /* NONPLAYERCHARACTER_H_ */
