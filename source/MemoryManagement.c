#include "MemoryLocations.h"

void* Allocate(u32 requestedLength, u32 length, MemoryManagementStructure* data)
{

}

/*void* SpriteAllocate(u32 requestedLength) {
	while ((requestedLength & 3) != 0) {
		requestedLength++;
	}
	void* pointer = Allocate(requestedLength, SPRALLOCLENGTH, (MemoryManagementStructure*)&sprallocData);
	return pointer;
}

void InitialiseSpriteAllocator(void* tileBaseLocation, u32 sizeOfAllocatableSpace)
{
	sprallocData.filledEntries = 0;
	sprallocData.startLocation = tileBaseLocation;
	sprallocData.memoryBlockLength = sizeOfAllocatableSpace;
}*/
