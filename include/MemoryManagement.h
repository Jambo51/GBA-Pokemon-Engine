
#ifndef MEMORYMANAGEMENT_H_
#define MEMORYMANAGEMENT_H_

#include "GlobalDefinitions.h"

void* Allocate(u32 requestedLength, u32 length, IndexTable* data);
void* MemoryAllocate(u32 length);
#define malloc MemoryAllocate
void* ValueMemoryAllocate(u32 requestedLength, u32 value);
#define calloc ValueMemoryAllocate
void MemoryDeallocate(void* pointerToData);
#define free MemoryDeallocate
#ifdef __cplusplus
extern "C" {
#endif
void DefragmentMallocData();
#ifdef __cplusplus
}
#endif
void* SpriteAllocate(u32 length);
void SpriteDeallocate(void* pointerToData);
s32 PaletteAllocate(u32 paletteID);
void PaletteDeallocate(u32 paletteID);
#ifdef __cplusplus
extern "C" {
#endif
void InitialisePaletteAllocator();
void InitialiseSpriteAllocator(void* tileBaseLocation, u32 sizeOfAllocatableSpace);
void InitialiseMemoryAllocator(void* memoryBaseLocation, u32 sizeOfAllocatableSpace);
#ifdef __cplusplus
}
#endif

#endif /* MEMORYMANAGEMENT_H_ */
