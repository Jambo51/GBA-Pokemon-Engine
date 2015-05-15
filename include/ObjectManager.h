/*
 * ObjectManager.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef OBJECTMANAGER_H_
#define OBJECTMANAGER_H_

#include "LinkedList.h"
#include "Entity.h"

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

class OAMObject {
protected:
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
	OAMObject(u32 shape, u32 size, u32 paletteMode, void* image, void* palette, bool compressed = true);
	~OAMObject();
	void Update(u32 position);
};

class ObjectManager
{
private:
	static LinkedList<OAMObject*>* _objects;
	ObjectManager();
	virtual ~ObjectManager();
public:
	static void Update(LinkedList<Entity*>* order);
};

#endif /* OBJECTMANAGER_H_ */
