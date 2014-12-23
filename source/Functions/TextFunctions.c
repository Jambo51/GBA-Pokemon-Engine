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

const TFont* GetFont()
{
	TTC* context = tte_get_context();
	return context->font;
}

void SetFont(const TFont* font)
{
	TTC* context = tte_get_context();
	context->font = font;
}

void StringCopy(char* stringDest, char* stringSource, u32 length)
{
	char currentChar = stringSource[0];
	u32 index = 0;
	if (length == 0)
	{
		length = U32Max;
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

char* foeString = "Foe ";
char* wildString = "Wild ";
char* trainerClasses[] = { "Gym Leader", "Elite Four", "Champion", "Rocket Grunt", "Rocket Duo", "Elite Trainer" };
char* playerNameLoc = *(&player.name);
char* rival1NameLoc = *(&player.primaryRivalName);
char* rival2NameLoc = *(&player.secondaryRivalName);
char* rival3NameLoc = *(&player.tertiaryRivalName);

char ToUpper(char c)
{
	if (c >= 'a' && c <= 'z')
	{
		c -= ('a' - 'A');
	}
	return c;
}

char ToLower(char c)
{
	if (c >= 'A' && c <= 'Z')
	{
		c += ('a' - 'A');
	}
	return c;
}

u32 StartsWithVowel(char* pointer)
{
	char c = pointer[0];
	c = ToUpper(c);
	if (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
	{
		return true;
	}
	return false;
}

void BufferUnsignedLongNumber(u32, u8);

u32 StringCopyWithBufferChecks(char* stringDest, char* stringSource, u32 length, u32 secondaryIndex)
{
	u32 index = 0;
	u32 pos = 0;
	if (stringSource != 0 && stringDest != 0)
	{
		u8 currentChar = stringSource[pos];
		if (length == 0)
		{
			length = U32Max;
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
									if (battleType.info.isWildBattle)
									{
										index += StringCopyWithBufferChecks(stringDest, wildString, 0, index);
									}
									else
									{
										index += StringCopyWithBufferChecks(stringDest, foeString, 0, index);
									}
								}
								pointer = (char*)PokemonDecrypter(battleDataPointer[0].pokemonStats[bank].mainPointer, Nickname);
								break;
							}
							case 1:
							{
								u32 bank = battleDataPointer[0].battleBanks[Target];
								if (bank & 1)
								{
									if (battleType.info.isWildBattle)
									{
										index += StringCopyWithBufferChecks(stringDest, wildString, 0, index);
									}
									else
									{
										index += StringCopyWithBufferChecks(stringDest, foeString, 0, index);
									}
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
							case 8:
							{
								BufferUnsignedLongNumber(battleDataPointer[0].battleDamage, 0);
								pointer = (char*)&buffers[0];
								break;
							}
							case 9:
							{
								pointer = playerNameLoc;
								break;
							}
							case 10:
							{
								pointer = trainerClasses[battleDataPointer[0].trainerData[0].pointerToData[0].trainerClass];
								break;
							}
							case 11:
							{
								pointer = (char*)&battleDataPointer[0].trainerData[0].pointerToData[0].name;
								break;
							}
							case 12:
							{
								pointer = "Item";
								if (StartsWithVowel(pointer))
								{
									index += StringCopyWithBufferChecks(stringDest, "an ", 0, index);
								}
								else
								{
									index += StringCopyWithBufferChecks(stringDest, "a ", 0, index);
								}
							}
							case 13:
							{
								pointer = rival1NameLoc;
								break;
							}
							case 14:
							{
								pointer = rival2NameLoc;
								break;
							}
							case 15:
							{
								pointer = rival3NameLoc;
								break;
							}
							case 16:
							{
								pointer = (char*)&abilityNames[battleDataPointer[0].battleBanks[GenericBufferByte]][0];
								break;
							}
							case 17:
							{
								u16 move = battleDataPointer[0].battleBanks[GenericBufferByte] | (battleDataPointer[0].battleBanks[GenericBufferByte2] << 8);
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
						}
						index += StringCopyWithBufferChecks(stringDest, pointer, length, index);
						pos += 2;
						currentChar = stringSource[pos];
						break;
					}
					case 0xFE - 0xF8:
					{
						stringDest[index + secondaryIndex] = currentChar;
						index++;
						pos++;
						currentChar = stringSource[pos];
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

void BufferUnsignedFractionalNumber(u32 number, u8 bufferID, u32 positionOfDecimalPoint)
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
	u32 i = 39;
	while (i != 0)
	{
		if (buffers[bufferID][i] != '/0')
		{
			break;
		}
		i--;
	}
	if (i)
	{
		u32 j;
		for (j = 0; j < positionOfDecimalPoint; j++)
		{
			buffers[bufferID][i - j + 1] = buffers[bufferID][i - j];
		}
		buffers[bufferID][i - j] = '.';
	}
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

void DrawCharacter(char c, u8 x, u8 y)
{
	tte_printf(posString, x, y);
	char string[] = { c, '\0' };
	tte_printf((char*)&string);
}

void DrawString(char* string, u8 x, u8 y)
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
	const TFont* font = GetFont();
	if (data[0].framesToWait == 0 || IsKeyDown(Key_A))
	{
		u32 currentX = data[0].currentX;
		u32 currentY = data[0].currentY;
		char c = data[0].string[data[0].stringPosition];
		if (c != '\0')
		{
			if (c == '\n')
			{
				currentX = data[0].initialX;
				currentY += 0x10;
				data[0].stringPosition++;
				c = data[0].string[data[0].stringPosition];
				DrawCharacter(c, currentX, currentY);
				data[0].stringPosition++;
				data[0].currentX = currentX + font[0].widths[(u32)c - font[0].charOffset];
			}
			else if (c == 0xFE)
			{
				if (IsKeyDownButNotHeld(Key_A) || IsKeyDownButNotHeld(Key_B))
				{
					memset32((void*)0x0600C000, 0, 0xD00);
					data[0].currentX = data[0].initialX;
					currentY = 0;
					data[0].stringPosition++;
				}
			}
			else
			{
				DrawCharacter(c, currentX, currentY);
				data[0].currentX = currentX + font[0].widths[(u32)c - font[0].charOffset];
				data[0].stringPosition++;
			}
			data[0].currentY = currentY;
			data[0].framesToWait = (IsKeyDown(Key_B)) ? data[0].textSpeed << 1 : data[0].textSpeed;
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

void DrawStringOverTime(char* string, u8 x, u8 y, void (*endFunction)(void))
{
	if (string != 0)
	{
		u32 spd = player.textSpeed;
		if (spd == 3)
		{
			DrawString(string, x, y);
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
}

const RODATA_LOCATION TFont* fonts[] = { &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font };

void SetFontByID(u32 id)
{
	if (id > 4)
	{
		id = 0;
	}
	SetFont(fonts[id]);
}

void InitialiseTextEngine(u32 textSetID)
{
	InitialiseTextEngineInner(bytes2word(15, 3, 0, 0), fonts[textSetID], 0xE);
}
