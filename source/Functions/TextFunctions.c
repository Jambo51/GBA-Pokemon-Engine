#include "Data.h"
#include "Functions/Maths.h"
#include "Functions/Overworld.h"
#include "Functions/Mapping.h"
#include "Functions/MemoryManagement.h"

#define Space 0

#define NEWLINE 0xFE
#define END '\0'

void StringCopy(char* stringDest, char* stringSource, u32 length)
{
	char currentChar = stringSource[0];
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

const IndexTable localBuffersTable[] = { { 20, *(&buffers[0]) }, { 20, *(&buffers[1]) }, { 20, *(&buffers[2]) }, { 20, *(&buffers[3]) }, { 20, *(&buffers[4]) }, { 20, *(&buffers[5]) }, { 20, *(&buffers[6]) }, { 20, *(&buffers[7]) }, { 7, *(&player.name) }, { 7, *(&player.primaryRivalName) }, { 7, *(&player.secondaryRivalName) }, { 7, *(&player.tertiaryRivalName) } };

u32 StringCopyWithBufferChecks(char* stringDest, char* stringSource, u32 length)
{
	u32 index = 0;
	u32 pos = 0;
	if (stringSource != 0 && stringDest != 0)
	{
		u8 currentChar = stringSource[pos];
		if (length == 0)
		{
			length = 0xFFFFFFFF;
		}
		while (currentChar != END && index <= length)
		{
			if (currentChar > 0xF7)
			{
				switch (currentChar - 0xF8)
				{
					case 0xFB - 0xF8:
					{
						char* pointer = 0;
						u32 length = 0;
						char c = stringSource[index + 1];
						if (c < 12)
						{
							length = localBuffersTable[(u32)c].index;
							pointer = (char*)localBuffersTable[(u32)c].pointerToData;
						}
						index += StringCopyWithBufferChecks(&(stringDest[index]), pointer, length);
						pos += 2;
						currentChar = stringSource[pos];
						break;
					}
					case 0xFD - 0xF8:
					{
						// Note that this is battle specific
						// However, many of the indices required for this to operate
						// Are currently not implemented
						// Therefore this is largely a placeholder for the mean time
						char* pointer = 0;
						u32 length = 0;
						char c = stringSource[index + 1];
						if (c < 12)
						{
							length = localBuffersTable[(u32)c].index;
							pointer = (char*)localBuffersTable[(u32)c].pointerToData;
						}
						index += StringCopyWithBufferChecks(*(&stringDest[index]), pointer, length);
						pos += 2;
						currentChar = stringSource[pos];
						break;
					}
				}
			}
			else
			{
				stringDest[index] = currentChar;
				index++;
				pos++;
				currentChar = stringSource[pos];
			}
		}
		stringDest[index] = currentChar;
	}
	return index;
}

void BufferString(char* string, u8 bufferID, u32 maxLength)
{
	if (string != 0)
	{
		u8* buffer = (u8*)(&(buffers[bufferID]));
		StringCopy(buffer, string, maxLength);
	}
}

void BufferPokemonSpeciesName(u16 pokemonIndex, u8 bufferID)
{
	BufferString((u8*)(&(pokemonNames[pokemonIndex])), bufferID, 11);
}

void BufferPokemonName(u8 pokemonIndex, u8 bufferID)
{
	// Placeholder
}

void BufferRouteName(u8 mapBank, u8 mapID, u8 bufferID)
{
	MapHeader* header = (MapHeader*)GetMapHeaderFromBankAndMapID(mapBank, mapID);
	u32 mapNameIndex = header[0].mapNameID;
	BufferString((u8*)(&(mapNamesTable[mapNameIndex])), bufferID, 20);
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
			BufferString(&string[i], bufferID, 0);
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
			BufferString(&string[i - 1], bufferID, 0);
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

void DrawCharacter(char c, u8 x, u8 y, u8 colour)
{
	tte_printf("#{P:%d,%d}", x, y);
	char string[] = { c, '\0' };
	tte_printf((char*)&string);
}

void DrawString(char* string, u8 x, u8 y, u8 colour)
{
	if (string != 0)
	{
		char* newString = (char*)MemoryAllocate(100 * sizeof(char));
		StringCopyWithBufferChecks(newString, string, 0);
		//tte_set_pos(x, y);
		tte_printf("#{P:%d,%d}", x, y);
		tte_printf(newString);
		MemoryDeallocate(newString);
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
