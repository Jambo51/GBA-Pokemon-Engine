#include "Data.h"
#include "Functions/Maths.h"
#include "Functions/Overworld.h"
#include "Functions/Mapping.h"
#include "Functions/MemoryManagement.h"

#define Space 0

#define NEWLINE 0xFE
#define END 0xFF
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

void BufferNumber(u16 number, u8 bufferID)
{
	u32 chars = ToDecimal(number);
	u32 i;
	u8* string = (u8*)MemoryAllocate(sizeof(u8) * 6);
	for (i = 0; i < 5; i++)
	{
		u32 value = (number & (0xF << (i << 2)) >> (i << 2));
		if (value <= 9)
		{
			string[4 - i] = '0' + value;
		}
	}
	string[5] = 0xFF;
	for (i = 0; i < 5; i++)
	{
		if (string[i] != '0')
		{
			BufferString(&string[i], bufferID);
			break;
		}
	}
	MemoryDeallocate(string);
}

s32 CharacterComparison(u8 charOne, u8 charTwo)
{
	return Sign(charOne - charTwo);
}

u8* GetCharacterTopLocationFromCharID(u8 charID)
{
	void* pointer = (void*)&TextTiles;
	return (u8*)(pointer + (0x20 * charID));
}

u8 GetCharWidthFromCharID(u8 charID)
{
	return charWidths[charID];
}

u8 GetColourFromPixelColour(u8 pixelColour, u8 textColour, u8 bgColour, u8 shadowColour)
{
	u8 colour;
	switch (pixelColour)
	{
		case 1:
			colour = shadowColour;
			break;
		case 2:
			colour = textColour;
			break;
		default:
			colour = bgColour;
			break;
	}
	return colour;
}

#define TileLocationFromIDForString(tile) (0x0600A780 + (tile << 5))

void CopyCharacterDataToTile(u8* sourceData, u32* copyLocation, u8 charWidth, u8 startingX, u8 colour)
{
	u8 i;
	for (i = 0; i < 8; i++)
	{
		u32 data = 0;
		if (startingX != 0)
		{
			data = copyLocation[i];
		}
		u8 j;
		for (j = 0; j < 2; j++)
		{
			u8 currentByte = sourceData[j + (i << 1)];
			u8 k;
			for (k = 0; k < 4; k++)
			{
				data &= ~(0xF << ((k << 2) + (j << 4)));
				u8 pixelColour = (currentByte & (3 << (k << 1))) >> (k << 1);
				pixelColour = GetColourFromPixelColour(pixelColour, colour, 1, 3);
				data |= pixelColour << ((k << 2) + (j << 4));
			}
		}
 		copyLocation[i] = data;
	}
}

void CopyCharacterToTile(u8* charTopLoc, u8 width, u8 colour, u32 tile, u8 startingX)
{
	u8* charBottomLoc = charTopLoc + (TextTilesLen >> 1);
	if (width > 0x10)
	{
		width = 0x10;
	}
	CopyCharacterDataToTile(charTopLoc, (u32*)TileLocationFromIDForString(tile), width, startingX, colour);
	if (width >= 8)
	{
		CopyCharacterDataToTile((u8*)(&(charTopLoc[0x20])), (u32*)TileLocationFromIDForString((tile + 1)), width - 8, startingX, colour);
	}
	CopyCharacterDataToTile(charBottomLoc, (u32*)TileLocationFromIDForString((tile + 9)), width, startingX, colour);
	if (width >= 8)
	{
		CopyCharacterDataToTile((u8*)(&(charBottomLoc[0x20])), (u32*)TileLocationFromIDForString((tile + 10)), width - 8, startingX, colour);
	}
}

u8 DrawCharacter(u8 charToDraw, u32 tile, u8 x, u8 colour)
{
	u8* charTopLoc = GetCharacterTopLocationFromCharID(charToDraw);
	u8 width = GetCharWidthFromCharID(charToDraw);
	CopyCharacterToTile(charTopLoc, width, colour, tile, x);
	return width;
}

void DrawString(u8* string, u8 x, u8 y, u8 colour)
{
	if (string != 0)
	{
		if (colour > 0xF || colour == 0)
		{
			colour = 1;
		}
		u8 index = 0;
		u8 currentChar = string[index];
		u32 tile = x >> 3;
		x &= 7;
		while (currentChar != END)
		{
			x += DrawCharacter(currentChar, tile, x, colour);
			if (x >= 8)
			{
				tile++;
				x -= 8;
			}
			index++;
			currentChar = string[index];
		}
	}
}
