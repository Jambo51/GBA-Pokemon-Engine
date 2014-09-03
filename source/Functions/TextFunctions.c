#include "Data.h"
#include "Functions/Maths.h"
#include "Functions/Overworld.h"
#include "Functions/Mapping.h"
#include "Functions/MemoryManagement.h"
#include "libtiles.h"
#include "Functions/Pokemon.h"
#include "Data/PokemonBaseData.h"
#include "Functions/CallbackSystem.h"
#include "Functions/KeyPresses.h"
#include "Data/PokemonBaseData.h"

#define Space 0

#define NEWLINE 0xFE
#define END '\0'

typedef struct ItemData {
	char name[10];
} ItemData;

#define NumItems 250
#define NumMoves 617

const RODATA_LOCATION ItemData itemData[NumItems];

void SetTextColour(u32 colour, u32 shadowColour, u32 paperColour)
{
	TTC* context = tte_get_context();
	context->cattr[TTE_INK] = colour & 0xF;
	context->cattr[TTE_SHADOW] = shadowColour & 0xF;
	context->cattr[TTE_PAPER] = paperColour & 0xF;
}

void SetTextPaletteSlot(u32 paletteID)
{
	TTC* context = tte_get_context();
	TSurface* surface = &context->dst;
	surface->palData = pal_bg_bank[paletteID];
}

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

char* statBuffStrings1[] = {
		"Attack",
		"Defence",
		"Speed",
		"Special Attack",
		"Special Defence",
		"Accuracy",
		"Evasiveness"
};

char* statBuffStrings2[2][3] = {
		{
				"rose",
				"rose sharply",
				"rose drastically"
		},
		{
				"fell",
				"harshly fell",
				"severely fell"
		}
};

u32 StringCopyWithBufferChecks(char* stringDest, char* stringSource, u32 length, u32 secondaryIndex)
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
						char c = stringSource[pos + 1];
						if (c < 12)
						{
							length = localBuffersTable[(u32)c].index;
							pointer = (char*)localBuffersTable[(u32)c].pointerToData;
						}
						index += StringCopyWithBufferChecks(stringDest, pointer, length, index);
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
						char c = stringSource[pos + 1];
						switch (c)
						{
							case 0:
							{
								u32 bank = battleDataPointer[0].battleBanks[User];
								if (bank & 1)
								{
									index += StringCopyWithBufferChecks(stringDest, "Foe ", 0, index);
								}
								pointer = (char*)PokemonDecrypter(battleDataPointer[0].pokemonStats[bank].mainPointer, Nickname);
								break;
							}
							case 1:
							{
								u32 bank = battleDataPointer[0].battleBanks[Target];
								if (bank & 1)
								{
									index += StringCopyWithBufferChecks(stringDest, "Foe ", 0, index);
								}
								pointer = (char*)PokemonDecrypter(battleDataPointer[0].pokemonStats[bank].mainPointer, Nickname);
								break;
							}
							case 2:
								pointer = (char*)&abilityNames[battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[User]].ability][0];
								break;
							case 3:
								pointer = (char*)&abilityNames[battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]].ability][0];
								break;
							case 4:
							{
								u32 bank = battleDataPointer[0].battleBanks[User];
								u16 move = battleDataPointer[0].pokemonStats[bank].moves[battleDataPointer[0].moveSelections[bank]];
								if (move <= NumMoves)
								{
									pointer = (char*)&moveNames[move];
								}
								else
								{
									pointer = (char*)&moveNames[0];
								}
								break;
							}
							case 5:
							{
								u16 move = battleDataPointer[0].pokemonStats[battleDataPointer[0].battleBanks[Target]].moves[battleDataPointer[0].moveSelections[battleDataPointer[0].battleBanks[User]]];
								if (move <= NumMoves)
								{
									pointer = (char*)&moveNames[move];
								}
								else
								{
									pointer = (char*)&moveNames[0];
								}
								break;
							}
							case 6:
							{
								pointer = statBuffStrings1[battleDataPointer[0].battleBanks[CurrentEffectID]];
								break;
							}
							case 7:
							{
								u32 power = battleDataPointer[0].battleBanks[CurrentEffectPower];
								u32 direction = (power & 0x80) >> 7;
								power = (power & 0x70) >> 4;
								power--;
								if (power > 2)
								{
									power = 0;
								}
								pointer = statBuffStrings2[direction][power];
								break;
							}
						}
						index += StringCopyWithBufferChecks(stringDest, pointer, length, index);
						pos += 2;
						currentChar = stringSource[pos];
						break;
					}
				}
			}
			else
			{
				stringDest[index + secondaryIndex] = currentChar;
				index++;
				pos++;
				currentChar = stringSource[pos];
			}
		}
		stringDest[index + secondaryIndex] = currentChar;
	}
	return index;
}

void BufferString(char* string, u8 bufferID, u32 maxLength)
{
	if (string != 0)
	{
		char* buffer = (char*)(&(buffers[bufferID]));
		StringCopy(buffer, string, maxLength);
	}
}

void BufferPokemonSpeciesName(u16 pokemonIndex, u8 bufferID)
{
	BufferString((char*)(&(pokemonNames[pokemonIndex])), bufferID, 11);
}

void BufferItemName(u16 itemIndex, u8 bufferID)
{
	BufferString((char*)(&(itemData[itemIndex].name)), bufferID, 11);
}

void BufferNatureName(u32 natureID, u8 bufferID)
{
	BufferString((char*)(&(natureNames[natureID])), bufferID, 5);
}

void BufferPokemonNameFromPointer(Pokemon* thePokemon, u8 bufferID)
{
	BufferString((char*)(PokemonDecrypter(thePokemon, Nickname)), bufferID, 11);
}

void BufferPokemonName(u8 pokemonIndex, u8 bufferID)
{
	Pokemon* thePokemon;
	switch (pokemonIndex)
	{
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
			thePokemon = &partyPokemon[pokemonIndex];
			break;
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
			thePokemon = &enemyPokemon[pokemonIndex];
			break;
		default:
			thePokemon = &temporaryHoldingPokemon;
			break;
	}
	BufferString((char*)(PokemonDecrypter(thePokemon, Nickname)), bufferID, 11);
}

void BufferMapHeaderName(u32 mapHeaderNameID, u8 bufferID)
{
	BufferString((char*)(&(mapNamesTable[mapHeaderNameID])), bufferID, 20);
}

void BufferNumber(u32 number, u32 length, u8 bufferID)
{
	length++;
	u32 chars = ToDecimal(number);
	u32 i;
	char* string = (char*)MemoryAllocate(sizeof(char) * length + 1);
	for (i = 0; i < length; i++)
	{
		u32 value = (chars & (0xF << (i << 2))) >> (i << 2);
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
	char* string = (char*)MemoryAllocate(sizeof(char) * length + 1);
	for (i = 0; i < length; i++)
	{
		u32 value = (chars & (0xF << (i << 2))) >> (i << 2);
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

const RODATA_LOCATION char* posString = "#{P:%d,%d}";

void DrawCharacter(char c, u8 x, u8 y, u8 colour)
{
	tte_printf(posString, x, y);
	char string[] = { c, '\0' };
	tte_printf((char*)&string);
}

void DrawString(char* string, u8 x, u8 y, u8 colour)
{
	if (string != 0)
	{
		char* newString = (char*)MemoryAllocate(100 * sizeof(char));
		StringCopyWithBufferChecks(newString, string, 0, 0);
		//tte_set_pos(x, y);
		tte_printf(posString, x, y);
		tte_printf(newString);
		MemoryDeallocate(newString);
	}
}

void DrawStringOverTimeMain(u32 pointer)
{
	TextOverTimeStruct* data = (TextOverTimeStruct*)pointer;
	if (data[0].framesToWait == 0 || IsKeyDown(Key_A))
	{
		u32 currentX = data[0].currentX;
		u32 currentY = data[0].currentY;
		char c = data[0].string[data[0].stringPosition];
		if (c != '\0')
		{
			DrawCharacter(c, currentX, currentY, data[0].colour);
			if (c == '\n')
			{
				data[0].currentX = data[0].initialX;
				currentY += 0x10;
			}
			else
			{
				data[0].currentX = currentX + pokefont_b4Font.widths[(u32)c];
			}
			data[0].currentY = currentY;
			data[0].framesToWait = (IsKeyDown(Key_B)) ? data[0].textSpeed << 1 : data[0].textSpeed;
			data[0].stringPosition++;
		}
		else
		{
			if (data[0].EndFunction)
			{
				data[0].EndFunction();
			}
			RemoveFunctionByPointer(&DrawStringOverTimeMain);
			MemoryDeallocate(data[0].string);
			MemoryDeallocate(data);
		}
	}
	else
	{
		data[0].framesToWait--;
	}
}

void DrawStringOverTime(char* string, u8 x, u8 y, u8 colour, void (*endFunction)(void))
{
	if (string != 0)
	{
		u32 spd = player.textSpeed;
		if (spd == 3)
		{
			DrawString(string, x, y, colour);
		}
		else
		{
			char* newString = (char*)MemoryAllocate(100 * sizeof(char));
			StringCopyWithBufferChecks(newString, string, 0, 0);
			TextOverTimeStruct* data = (TextOverTimeStruct*)MemoryAllocate((sizeof(TextOverTimeStruct)));
			data[0].string = newString;
			data[0].currentX = x;
			data[0].initialX = x;
			data[0].currentY = y;
			data[0].framesToWait = 0;
			data[0].textSpeed = 2 - player.textSpeed;
			data[0].stringPosition = 0;
			data[0].colour = colour;
			data[0].EndFunction = endFunction;
			AddFunction(&DrawStringOverTimeMain, (u32)data);
		}
	}
}

void InitialiseTextEngineInner(u32 colourWord, const TFont* font, u8 paletteSet)
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

const RODATA_LOCATION TFont* fonts[] = { &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font };

void InitialiseTextEngine(u32 textSetID)
{
	InitialiseTextEngineInner(bytes2word(15, 3, 0, 0), fonts[textSetID], 0xE);
}
