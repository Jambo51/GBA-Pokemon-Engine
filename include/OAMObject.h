/*
 * OAMObjecte.h
 *
 *  Created on: 16 May 2015
 *      Author: Jamie
 */

#ifndef OAMOBJECT_H_
#define OAMOBJECT_H_

#include "GlobalDefinitions.h"
#include "Vector2D.h"

class OAMObject;

class OAMUpdateClass
{
protected:
	u32 stateFunctionData;
public:
	OAMUpdateClass() { }
	~OAMUpdateClass() { }
	virtual void Update(OAMObject* object) = 0;
};

enum Shapes { Shape_Square, Shape_Horizontal, Shape_Vertical };

enum SquareShapes { Square_8x8, Square_16x16, Square_32x32, Square_64x64 };

enum HorizontalShaeps { Horizontal_16x8, Horizontal_32x8, Horizontal_32x16, Horizontal_64x32 };

enum VerticalShapes { Vertical_8x16, Vertical_8x32, Vertical_16x32, Vertical_32x64 };

class OAMObject
{
private:
	static u8 sizes[][4];
	static u32 CalculateObjectSize(u32 shape, u32 size);
	OAMUpdateClass* updater;
	u16 xLocation;
	u16 yLocation;
	u8 objShape;
	u8 objSize;
	u8 paletteSlot:4;
	u8 priority:4;
	u32 isActive:1;
	u32 hFlip:1;
	u32 vFlip:1;
	u32 mosaic:1;
	u32 colourMode:1;
	u32 mode:2;
	u32 rotationFlag:1;
	u32 disableDoubleFlag:1;
	u32 rotScaleParam:5;
	u32 tileLocation:18;
public:
	OAMObject(u32 shape, u32 size, u32 paletteMode, void* image, u32 paletteID, void* palette, u32 priority = 0, bool compressed = true, u16* colourAddress = NULL);
	~OAMObject();
	void Update(u32 position);
	u32 GetPriority() const { return priority; }
	void SetPosition(u16 x, u16 y) { xLocation = x; yLocation = y; }
	void SetPosition(const Vector2D &position) { SetPosition(position.GetX(), position.GetY()); }
};

#endif /* OAMOBJECT_H_ */
