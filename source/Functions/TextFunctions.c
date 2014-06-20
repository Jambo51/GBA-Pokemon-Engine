#include "Data.h"
#include "Functions/Maths.h"
#include "Functions/Overworld.h"
#include "Functions/Mapping.h"
#include "Functions/MemoryManagement.h"

#define Space 0

#define NEWLINE 0xFE
#define END '\0'
const ALIGN(1) u8 charWidths[0xFA] = { 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x08, 0x06, 0x06, 0x06, 0x06, 0x06, 0x08, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x08, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x09, 0x06, 0x06, 0x0D, 0x06, 0x06, 0x06, 0x06, 0x0A, 0x06, 0x03, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x02, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x04, 0x06, 0x08, 0x03, 0x03, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x04, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x0A, 0x0A, 0x0A, 0x0A, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x05, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x08, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x02, 0x06, 0x03, 0x06, 0x03, 0x06, 0x06, 0x06, 0x03, 0x03, 0x06, 0x06, 0x06, 0x07, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x05, 0x06, 0x06, 0x02, 0x05, 0x05, 0x03, 0x06, 0x05, 0x06, 0x06, 0x06, 0x05, 0x05, 0x05, 0x05, 0x06, 0x06, 0x06, 0x06, 0x06, 0x08, 0x03, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06 };

void StringCopy(u8* stringDest, u8* stringSource, u32 length)
{
	u8 currentChar = stringSource[0];
	u32 index = 0;
	if (length == 0)
	{
		length = 0xFFFFFFFF;
	}
	while (currentChar != END && index <= length)
	{
		stringDest[index] = currentChar;
		index++;
		currentChar = stringSource[index];
	}
	stringDest[index] = currentChar;
}

void BufferString(u8* string, u8 bufferID)
{
	if (string != 0)
	{
		u8* buffer = (u8*)(&(buffers[bufferID]));
		StringCopy(buffer, string, 0);
	}
}

void BufferPokemonName(u16 pokemonIndex, u8 bufferID)
{
	BufferString((u8*)(&(pokemonNames[pokemonIndex])), bufferID);
}

void BufferRouteName(u8 mapBank, u8 mapID, u8 bufferID)
{
	MapHeader* header = (MapHeader*)GetMapHeaderFromBankAndMapID(mapBank, mapID);
	u32 mapNameIndex = header[0].mapNameID;
	BufferString((u8*)(&(mapNamesTable[mapNameIndex])), bufferID);
}

void BufferNumber(u32 number, u32 length, u8 bufferID)
{
	u32 chars = ToDecimal(number);
	u32 i;
	u8* string = (u8*)MemoryAllocate(sizeof(u8) * length + 1);
	for (i = 0; i < length; i++)
	{
		u32 value = (chars & (0xF << (i << 2)) >> (i << 2));
		if (value <= 9)
		{
			string[length - 1 - i] = '0' + value;
		}
	}
	string[length] = END;
	for (i = 0; i < length; i++)
	{
		if (string[i] != '0' || (i == (length - 1)))
		{
			BufferString(&string[i], bufferID);
			break;
		}
	}
	MemoryDeallocate(string);
}

void BufferNegativeNumber(s32 number, u32 length, u8 bufferID)
{
	number *= -1;
	u32 chars = ToDecimal(number);
	u32 i;
	u8* string = (u8*)MemoryAllocate(sizeof(u8) * length + 1);
	for (i = 0; i < length; i++)
	{
		u32 value = (chars & (0xF << (i << 2)) >> (i << 2));
		if (value <= 9)
		{
			string[length - 1 - i] = '0' + value;
		}
	}
	string[length] = END;
	for (i = 1; i < length; i++)
	{
		if (string[i] != '0' || (i == (length - 1)))
		{
			string[i - 1] = '-';
			BufferString(&string[i - 1], bufferID);
			break;
		}
	}
	MemoryDeallocate(string);
}

void BufferUnsignedLongNumber(u32 number, u8 bufferID)
{
	if (number > 99999999)
	{
		// Since the decimalisation code only has 32 bits to return to
		// the maximum value for this is as above
		// Therefore, to prevent errors, the value is clamped between
		// 0 and the maximum decimal value available in a 32 bit value
		number = 0;
	}
	BufferNumber(number, 8, bufferID);
}

void BufferUnsignedShortNumber(u16 number, u8 bufferID)
{
	if (number > 0xFFFF)
	{
		// Shouldn't ever happen in practice
		// But better to catch the error nonetheless
		number = 0;
	}
	BufferNumber((u32)number, 4, bufferID);
}

void BufferSignedLongNumber(s32 number, u8 bufferID)
{
	if (number > 99999999 || number < -99999999)
	{
		// Since the decimalisation code only has 32 bits to return to
		// the maximum value for this is as above
		// Therefore, to prevent errors, the value is clamped between
		// 0 and the maximum decimal value available in a 32 bit value
		number = 0;
	}
	if (number >= 0)
	{
		BufferNumber((u32)number, 8, bufferID);
	}
	else
	{
		BufferNegativeNumber(number, 9, bufferID);
	}
}

void BufferSignedShortNumber(s16 number, u8 bufferID)
{
	if (number >= 0)
	{
		BufferNumber((u32)number, 5, bufferID);
	}
	else
	{
		BufferNegativeNumber((s32)number, 6, bufferID);
	}
}

s32 CharacterComparison(u8 charOne, u8 charTwo)
{
	return Sign(charOne - charTwo);
}

void DrawString(char* string, u8 x, u8 y, u8 colour)
{
	if (string != 0)
	{
		if (colour > 0xF || colour == 0)
		{
			colour = 1;
		}
		//tte_set_pos(x, y);
		tte_printf("#{P:%d,%d}", x, y);
		tte_printf(string);
	}
}

void InitialiseTextEngine(u32 colourWord, const TFont* font, u8 paletteSet)
{
	tte_init_chr4c(
			0,
			BG_CBB(15) | BG_SBB(10),
			0xF000,
			colourWord,
			15,
			font,
			(fnDrawg)chr4c_drawg_b4cts_fast);
	tte_init_con();
	textPalette = paletteSet;
}
