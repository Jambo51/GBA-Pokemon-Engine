/*
 * FlashFunctions.cpp
 *
 *  Created on: 24 May 2015
 *      Author: Jamie
 */

#include "FlashFunctions.h"
#include "Game.h"
#include "Flags.h"
#include "Variables.h"

FlashFunctions::FlashFunctions()
{
	// TODO Auto-generated constructor stub

}

FlashFunctions::~FlashFunctions()
{
	// TODO Auto-generated destructor stub
}

int byteverify(void *in_dst, const void *in_src, unsigned int length)
{
	unsigned char *src = (unsigned char *)in_src;
	unsigned char *dst = (unsigned char *)in_dst;

	for(; length > 0; length--)
	{

		if(*dst++ != *src++) return 1;
	}
	return 0;
}

void bytecpy(void *in_dst, const void *in_src, unsigned int length, bool write)
{
	unsigned char *src = (unsigned char *)in_src;
	unsigned char *dst = (unsigned char *)in_dst;

	for(; length > 0; length--)
	{
		if (write)
		{
			*(vu8*)0x0E005555 = 0xAA;
			*(vu8*)0x0E002AAA = 0x55;
			*(vu8*)0x0E005555 = 0xA0;
		}
		*dst++ = *src++;
	}
}

/** \brief Clears bytes. Only good for SRAM. */
void byteclr(void *in_dst, unsigned int length)
{
	unsigned char *dst = (unsigned char *)in_dst;

	for(; length > 0; length--)

		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		*dst++ = 0xFF;
}

bool FlashFunctions::SaveThing(void *in_dst, const void *in_src, unsigned int length)
{
	if ((u32)in_dst >= 0x10000)
	{
		SetBank(1);
	}
	else
	{
		SetBank(0);
	}

	bytecpy((void*)(MEM_SRAM + (u32)in_dst), in_src, length, true);

    if(byteverify((void*)(MEM_SRAM + (u32)in_dst), in_src, length))
	{
		return true;
	}
	return false;
}

bool FlashFunctions::LoadThing(void *in_dst, const void *in_src, unsigned int length)
{
	if ((u32)in_src >= 0x10000)
	{
		SetBank(1);
	}
	else
	{
		SetBank(0);
	}

	bytecpy(in_dst, (const void*)(MEM_SRAM + (u32)in_src), length, false);

    if(byteverify(in_dst, (const void*)(MEM_SRAM + (u32)in_src), length))
	{
		return true;
	}
	return false;
}

void FlashFunctions::CalculateChecksums()
{
	SetBank(0);
	for (int i = 0; i < 16; i++)
	{
		u32 checksumValue = 0;
		u8* address = (u8*)(0x0E000000 + (0x1000 * i));
		for (int j = 0; j < SaveBlockMaxLength >> 2; j++)
		{
			checksumValue += (address[j << 2] | (address[(j << 2) + 1] << 0x8) | (address[(j << 2) + 2] << 0x10) | (address[(j << 2) + 3] << 0x18));
		}
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFC] = checksumValue;
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFD] = checksumValue >> 0x8;
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFE] = checksumValue >> 0x10;
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFF] = checksumValue >> 0x18;
	}
	SetBank(1);
	for (int i = 0; i < 16; i++)
	{
		u32 checksumValue = 0;
		u8* address = (u8*)(0x0E000000 + (0x1000 * i));
		for (int j = 0; j < SaveBlockMaxLength >> 2; j++)
		{
			checksumValue += (address[j << 2] | (address[(j << 2) + 1] << 0x8) | (address[(j << 2) + 2] << 0x10) | (address[(j << 2) + 3] << 0x18));
		}
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFC] = checksumValue;
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFD] = checksumValue >> 0x8;
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFE] = checksumValue >> 0x10;
		*(vu8*)0x0E005555 = 0xAA;
		*(vu8*)0x0E002AAA = 0x55;
		*(vu8*)0x0E005555 = 0xA0;
		address[0xFFF] = checksumValue >> 0x18;
	}
}

void FlashFunctions::SaveGame()
{
	if (ChipIdentify())
	{
		Game::Save();
		Flags::Save();
		Variables::Save();
		CalculateChecksums();
	}
}

bool FlashFunctions::ValidateSave()
{
	for (int k = 0; k < 2; k++)
	{
		SetBank(k);
		for (int i = 0; i < 16; i++)
		{
			u32 checksumValue = 0;
			u8* address = (u8*)(0x0E000000 + (0x1000 * i));
			for (int j = 0; j < SaveBlockMaxLength >> 2; j++)
			{
				checksumValue += (address[j << 2] | (address[(j << 2) + 1] << 0x8) | (address[(j << 2) + 2] << 0x10) | (address[(j << 2) + 3] << 0x18));
			}
			u32 checksum = (address[0xFFC] | (address[0xFFD] << 0x8) | (address[0xFFE] << 0x10) | (address[0xFFF] << 0x18));
			if (checksum != checksumValue)
			{
				return false;
			}
		}
	}
	return true;
}

void FlashFunctions::LoadGame()
{
	if (ChipIdentify())
	{
		if (ValidateSave())
		{
			Game::Load();
			if (Game::ValidSaveDetected())
			{
				Flags::Load();
				Variables::Load();
			}
			else
			{
				Flags::Initialise();
				Variables::Initialise();
				Game::ValidSaveDetected(true);
			}
		}
		else
		{
			Game::Initialise();
			Flags::Initialise();
			Variables::Initialise();
			Game::ValidSaveDetected(true);
		}
	}
	else
	{
		Game::Initialise();
		Flags::Initialise();
		Variables::Initialise();
		Game::ValidSaveDetected(true);
	}
}

void FlashFunctions::WriteToFlash(SaveLocationStruct* structData)
{
	u32 counter = 0;
	u8* ptr = structData[counter].destinationPosition;
	do
	{
		SaveThing((void*)ptr, (const void*)structData[counter].sourcePosition, structData[counter].length);
		counter++;
		ptr = structData[counter].destinationPosition;
	} while ((u32)ptr != 0xFFFFFFFF);
}

void FlashFunctions::ReadFromFlash(SaveLocationStruct* structData)
{
	u32 counter = 0;
	u8* ptr = structData[counter].destinationPosition;
	do
	{
		LoadThing((void*)structData[counter].sourcePosition, (const void*)ptr, structData[counter].length);
		counter++;
		ptr = structData[counter].destinationPosition;
	} while ((u32)ptr != 0xFFFFFFFF);
}
