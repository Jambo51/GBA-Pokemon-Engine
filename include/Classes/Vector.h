/*
 * Vector.h
 *
 *  Created on: 7 Oct 2014
 *      Author: pcworld
 */

#ifndef VECTOR_H_
#define VECTOR_H_

#include "Data/GlobalDefinitions.h"

Vector* CreateVector();
Vector* CreateVectorWithInitialSize(u32 initialSize);
void VectorPushBack(Vector* v, u32 value);
void VectorPopBack(Vector* v);
void VectorPushFront(Vector* v, u32 value);
void VectorPopFront(Vector* v);
u32 VectorGetSize(Vector* v);
u32 VectorGetAt(Vector* v, u32 index);
void DeleteVector(Vector* v);

#endif /* VECTOR_H_ */
