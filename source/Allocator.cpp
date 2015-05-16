/*
 * Allocator.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "Allocator.h"
#include "GlobalDefinitions.h"

Allocator::Allocator()
{
	// TODO Auto-generated constructor stub

}

Allocator::~Allocator()
{
	// TODO Auto-generated destructor stub
}

void* Allocator::AllocateObjectTiles(u32 totalSize)
{
	return (void*)0x06010000;
}

u32 Allocator::AllocatePaletteSlot()
{
	return 0;
}
