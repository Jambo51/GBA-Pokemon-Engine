/*
 * FlashFunctions.cpp
 *
 *  Created on: 24 May 2015
 *      Author: Jamie
 */

#include "Core/FlashFunctions.h"
#include "Core/Game.h"
#include "Core/Data/Flags.h"
#include "Core/Data/Variables.h"
#include "Tasks.h"
#include "Callbacks.h"

using namespace Core::Data;

namespace Core
{
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

	#pragma GCC optimize "O2"

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

	#pragma GCC reset_options

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
	}

	void FlashFunctions::SaveGame(Tasks::ScriptRunners::ScriptRunner* runner)
	{
		if (ChipIdentify())
		{
			new Tasks::Memory::SaveGameTask(new Callbacks::ReleaseWaitingScriptRunnerCallback(runner));
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
				new Tasks::Memory::LoadGameTask(new Callbacks::OnGameLoadCallback());
				return;
			}
		}
		Game::Initialise();
		Flags::Initialise();
		Variables::Initialise();
		Game::ValidSaveDetected(false);
	}

	void FlashFunctions::WriteToFlash(SaveLocationStruct* structData)
	{
		SaveThing((void*)structData->destinationPosition, (const void*)structData->sourcePosition, structData->length);
	}

	void FlashFunctions::ReadFromFlash(SaveLocationStruct* structData)
	{
		LoadThing((void*)structData->sourcePosition, (const void*)structData->destinationPosition, structData->length);
	}
}
