/*
 * Vector.c
 *
 *  Created on: 7 Oct 2014
 *      Author: pcworld
 */

#include "Data/GlobalDefinitions.h"
#include "Functions/MemoryManagement.h"

Vector* CreateVector()
{
	Vector* v = (Vector*)MemoryAllocate(sizeof(Vector));
	v->currentLength = 10;
	v->currentSize = 0;
	v->dataLocation = (u32*)MemoryAllocate(sizeof(u32) * 10);
	return v;
}

Vector* CreateVectorWithInitialSize(u32 initialSize)
{
	Vector* v = (Vector*)MemoryAllocate(sizeof(Vector));
	v->currentLength = initialSize;
	v->currentSize = 0;
	v->dataLocation = (u32*)MemoryAllocate(sizeof(u32) * initialSize);
	return v;
}

void VectorPushBack(Vector* v, u32 value)
{
	v->dataLocation[v->currentSize] = value;
	v->currentSize++;
	if (v->currentSize >= v->currentLength)
	{
		u32* newPointer = (u32*)MemoryAllocate(sizeof(u32) * (v->currentLength << 1));
		if (!newPointer)
		{
			return;
		}
		u32* oldPointer = v->dataLocation;
		memcpy32(newPointer, oldPointer, v->currentSize);
		v->currentLength <<= 1;
		MemoryDeallocate(oldPointer);
		v->dataLocation = newPointer;
	}
}

void VectorPopBack(Vector* v)
{
	v->dataLocation[v->currentSize] = 0;
	v->currentSize--;
}

void VectorPushFront(Vector* v, u32 value)
{
	v->currentSize++;
	if (v->currentSize >= v->currentLength)
	{
		u32* newPointer = (u32*)MemoryAllocate(sizeof(u32) * (v->currentLength << 1));
		if (!newPointer)
		{
			return;
		}
		u32* oldPointer = v->dataLocation;
		memcpy32((void*)(newPointer + sizeof(u32)), oldPointer, v->currentSize - 1);
		v->currentLength <<= 1;
		MemoryDeallocate(oldPointer);
		v->dataLocation = newPointer;
	}
	else
	{
		memcpy32((void*)(v->dataLocation + sizeof(u32)), v->dataLocation, v->currentSize - 1);
	}
	v->dataLocation[0] = value;
}

void VectorPopFront(Vector* v)
{
	memcpy32(v->dataLocation, (void*)(v->dataLocation + sizeof(u32)), v->currentSize - 1);
	v->currentSize--;
}

u32 VectorGetSize(Vector* v)
{
	return v->currentSize;
}

u32 VectorGetAt(Vector* v, u32 index)
{
	if (index >= v->currentSize)
	{
		return -1;
	}
	return v->dataLocation[index];
}

void DeleteVector(Vector* v)
{
	while (v->currentSize != 0)
	{
		MemoryDeallocate((void*)VectorGetAt(v, 0));
		VectorPopFront(v);
	}
	MemoryDeallocate(v);
}



