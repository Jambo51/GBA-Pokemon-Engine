/*
 * Allocator.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef ALLOCATOR_H_
#define ALLOCATOR_H_

#include "GlobalDefinitions.h"

class Allocator
{
private:
	Allocator();
	virtual ~Allocator();
public:
	static void* AllocateObjectTiles(u32 totalSize);
};

#endif /* ALLOCATOR_H_ */
