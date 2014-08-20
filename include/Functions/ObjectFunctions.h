/*
 * ObjectFunctions.h
 *
 *  Created on: 20 Aug 2014
 *      Author: Jamie
 */

#ifndef OBJECTFUNCTIONS_H_
#define OBJECTFUNCTIONS_H_
/*
 * ObjectFunctions.c
 *
 *  Created on: 20 Aug 2014
 *      Author: Jamie
 */

u32 CalculateObjectSize(u8 shape, u8 size);
u32 FindFreeOAMSlot();
u32 CreateObject(OAMData* oamData, u8 shape, u8 size);
u32 CreatObjectFromUncompressedImage(OAMData* oamData, u8 shape, u8 size, void* spriteLocation);
u32 CreateObjectFromCompressedImage(OAMData* oamData, u8 shape, u8 size, void* spriteLocation);
void UpdateOAMFromStructure();

#endif /* OBJECTFUNCTIONS_H_ */
