/*
 * FlashFunctions.h
 *
 *  Created on: 24 May 2015
 *      Author: Jamie
 */

#ifndef FlashFunctions_H_
#define FlashFunctions_H_

#define SaveBlockMaxLength 0xFFC

#include "GlobalDefinitions.h"

class FlashFunctions
{
private:
	FlashFunctions();
	~FlashFunctions();
	static bool SaveThing(void *in_dst, const void *in_src, unsigned int length);
	static bool LoadThing(void *in_dst, const void *in_src, unsigned int length);
	static void SetBank(u32 bankID)
	{
		if (bankID < 2)
		{
			*(vu8*)0x0E005555 = 0xAA;
			*(vu8*)0x0E002AAA = 0x55;
			*(vu8*)0x0E005555 = 0xB0;
			*(vu8*)0x0E000000 = bankID;
		}
	}
	static bool ChipIdentify()
	{
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0x90;
		u8 dev = *(vu8*)0x0E000001;
		u8 man = *(vu8*)0x0E000000;
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xF0;
		// Checks whether or not this is a Sanyo 128kb
		// flash save chip
		// ID for chip sourced from GBATek
		return (man | (dev << 8)) == 0x1362;
	}
	static bool ValidateSave();
	static void CalculateChecksums();
public:
	static void SaveGame();
	static void LoadGame();
	static void WriteToFlash(SaveLocationStruct* structData);
	static void ReadFromFlash(SaveLocationStruct* structData);
};

#endif /* FlashFunctions_H_ */
