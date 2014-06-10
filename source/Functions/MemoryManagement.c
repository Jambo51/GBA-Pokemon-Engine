#include "Data.h"

void* Allocate(u32 requestedLength, u32 length, MemoryManagementStructure* data)
{
	void* basePointer = data[0].startLocation;
	void* topPointer = (void*)((u32)basePointer + data[0].memoryBlockLength);
	u32 filledEntries = data[0].filledEntries;
	if (filledEntries < length) {
		if (filledEntries == 0) {
			void* pointer = basePointer;
			data[0].filledEntries = filledEntries + 1;
			data[0].data[0].pointerToData = pointer;
			data[0].data[0].index = requestedLength;
			return pointer;
		}
		u32 i;
		u32 locFound = 0;
		u32 slot = 0xFF;
		u32 attempts = 0;
		void* previousPointer = basePointer;
		while (locFound == 0 && attempts < 50) {
			for (i = 0; i < length; i++) {
				void* thisPointer = data[0].data[i].pointerToData;
				if (thisPointer == 0 && slot == 0xFF) {
					slot = i;
				} else if (thisPointer == previousPointer) {
					previousPointer += data[0].data[i].index;
				}
			}
			u32 higherFound = 0;
			for (i = 0; i < length; i++) {
				void* thisPointer = data[0].data[i].pointerToData;
				if (thisPointer < topPointer && thisPointer > previousPointer) {
					topPointer = thisPointer;
				}
			}
			if (higherFound == 1) {
				if ((topPointer - previousPointer) >= requestedLength) {
					locFound = 1;
					break;
				} else {
					previousPointer = topPointer;
				}
			} else if (topPointer - previousPointer >= requestedLength) {
				locFound = 1;
				break;
			}
			attempts++;
		}
		if (slot != 0xFF && locFound == 1) {
			data[0].filledEntries++;
			data[0].data[slot].pointerToData = previousPointer;
			data[0].data[slot].index = requestedLength;
			return previousPointer;
		} else {
			return (void*) 0;
		}
	}
	return (void*) 0;
}

void* MemoryAllocate(u32 requestedLength) {
	while ((requestedLength & 3) != 0) {
		requestedLength++;
	}
	void* pointer = Allocate(requestedLength, MALLOCLENGTH, &mallocData);
	return pointer;
}

void* ValueMemoryAllocate(u32 requestedLength, u32 value) {
	void* pointer = MemoryAllocate(requestedLength);
	while ((requestedLength & 3) != 0) {
		requestedLength++;
	}
	if (pointer != 0) {
		memset32(pointer, value, requestedLength >> 2);
	}
	return pointer;
}

void MemoryDeallocate(void* pointerToData) {
	u8 i;
	for (i = 0; i < MALLOCLENGTH; i++) {
		if (mallocData.data[i].pointerToData == pointerToData) {
			vu32 dataSize = mallocData.data[i].index;
			memset32(pointerToData, 0, dataSize >> 2);
			u32 leftOver = dataSize & 3;
			dataSize >>= 2;
			dataSize <<= 2;
			u8 j;
			for (j = 0; j < leftOver; j++) {
				((u8*) pointerToData)[dataSize + j] = 0;
			}
			mallocData.data[i].pointerToData = 0;
			mallocData.data[i].index = 0;
			mallocData.filledEntries--;
			break;
		}
	}
}

void DefragmentMallocData() {

}

void* SpriteAllocate(u32 requestedLength) {
	while ((requestedLength & 3) != 0) {
		requestedLength++;
	}
	void* pointer = Allocate(requestedLength, SPRALLOCLENGTH, (MemoryManagementStructure*)&sprallocData);
	return pointer;
}

void SpriteDeallocate(void* pointerToData) {
	u8 i;
	for (i = 0; i < SPRALLOCLENGTH; i++) {
		if (sprallocData.data[i].pointerToData == pointerToData) {
			vu32 dataSize = sprallocData.data[i].index;
			memset32(pointerToData, 0, dataSize >> 2);
			u32 leftOver = dataSize & 3;
			dataSize >>= 2;
			dataSize <<= 2;
			u8 j;
			for (j = 0; j < leftOver; j++) {
				((u8*) pointerToData)[dataSize + j] = 0;
			}
			sprallocData.data[i].pointerToData = 0;
			sprallocData.data[i].index = 0;
			sprallocData.filledEntries--;
			break;
		}
	}
}

s32 PaletteAllocate(u32 paletteID) {
	s32 slot = -1;
	IndexTable* data;
	u32 canContinue = 0;
	data = (IndexTable*)(&pallocData.dataObjects);
	canContinue = (pallocData.filledEntriesObjects != 0xF) ? 1 : 0;
	if (canContinue == 1)
	{
		u8 i;
		for (i = 0; i < PALLOCLENGTH; i++)
		{
			if (data[i].index > 0xF)
			{
				slot = i;
				break;
			}
		}
		if (slot >= 0)
		{
			data[slot].pointerToData = (void*)paletteID;
			data[slot].index = slot;
			pallocData.filledEntriesObjects++;
		}
		return slot;
	}
	return -1;
}

void PaletteDeallocate(u32 paletteID) {
	u8 i;
	for (i = 0; i < PALLOCLENGTH; i++)
	{
		if ((u32)pallocData.dataObjects[i].pointerToData == paletteID)
		{
			pallocData.dataObjects[i].pointerToData = 0;
			pallocData.dataObjects[i].index = 0x10;
			pallocData.filledEntriesObjects--;
			break;
		}
	}
}

void InitialisePaletteAllocator()
{
	IndexTable* data = (IndexTable*)(&pallocData.dataObjects);
	u8 i;
	for (i = 0; i < PALLOCLENGTH << 1; i++)
	{
		data[i].index = 0x10;
		data[i].pointerToData = 0;
	}
}

void InitialiseSpriteAllocator(void* tileBaseLocation, u32 sizeOfAllocatableSpace)
{
	sprallocData.filledEntries = 0;
	sprallocData.startLocation = tileBaseLocation;
	sprallocData.memoryBlockLength = sizeOfAllocatableSpace;
}

void InitialiseMemoryAllocator(void* memoryBaseLocation, u32 sizeOfAllocatableSpace)
{
	mallocData.filledEntries = 0;
	mallocData.startLocation = memoryBaseLocation;
	mallocData.memoryBlockLength = sizeOfAllocatableSpace;
}
