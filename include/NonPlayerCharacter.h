/*
 * NonPlayerCharacter.h
 *
 *  Created on: 18 May 2015
 *      Author: Jamie
 */

#ifndef NONPLAYERCHARACTER_H_
#define NONPLAYERCHARACTER_H_

#include "Entity.h"

enum ObjectWalkingFrames { Facing_Down, Facing_Up, Facing_Left, Walking_Down_1, Walking_Down_2, Walking_Up_1, Walking_Up_2, Walking_Left_1, Walking_Left_2 };

class NonPlayerCharacter : public Entity
{
protected:
	u32 spriteIndex;
	u32 objectID;
public:
	NonPlayerCharacter(const Vector2D &location, u32 backgroundLevel, u32 spriteID, u32 objectID, u16* colourAddress);
	u32 GetSpriteIndex() const { return spriteIndex; }
	virtual u32 GetObjectID() const { return objectID; }
	virtual ~NonPlayerCharacter();
	virtual bool Initialise();
	virtual bool LoadContent();
	virtual bool Update();
	virtual void UnloadContent();
	virtual void TimeTick(u32 time);
	virtual void ChangeFrame(u32 frameID);
};

#endif /* NONPLAYERCHARACTER_H_ */
