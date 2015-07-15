#include "TextFunctions.h"
#include "Game.h"
#include "Pokemon.h"
#include "Maths.h"
#include "Fonts.h"
#include "TextDrawer.h"
#include "Mapping.h"
#include "Battles.h"
#include "GameModeManager.h"
#include "Items.h"
#ifdef __cplusplus
extern "C" {
#endif
#include <tonc_tte.h>
#include "PokemonBaseData.h"
#include "MemoryLocations.h"
#ifdef __cplusplus
}
#endif

EWRAM_LOCATION ALIGN(4) char* TextFunctions::playerNameLoc = NULL;
EWRAM_LOCATION ALIGN(4) char* TextFunctions::rival1NameLoc = NULL;
EWRAM_LOCATION ALIGN(4) char* TextFunctions::rival2NameLoc = NULL;
EWRAM_LOCATION ALIGN(4) char* TextFunctions::rival3NameLoc = NULL;
RODATA_LOCATION ALIGN(4) char* TextFunctions::statBuffStrings1[] = { "Attack", "Defence", "Speed", "Special Attack", "Special Defence", "Accuracy", "Evasiveness" };
RODATA_LOCATION ALIGN(4) char* TextFunctions::statBuffStrings2[2][3] = { { "rose", "rose sharply", "rose drastically" }, { "fell", "harshly fell", "severely fell" } };
RODATA_LOCATION ALIGN(4) char* TextFunctions::foeString = "Foe ";
RODATA_LOCATION ALIGN(4) char* TextFunctions::wildString = "Wild ";
RODATA_LOCATION ALIGN(4) char* TextFunctions::trainerClasses[] = { "Gym Leader", "Elite Four", "Champion", "Rocket Grunt", "Rocket Duo", "Elite Trainer" };
RODATA_LOCATION ALIGN(4) char* TextFunctions::standardStrings[] = { "" };
RODATA_LOCATION ALIGN(4) const TFont* TextFunctions::fonts[] = { &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font };
RODATA_LOCATION ALIGN(4) const char* TextFunctions::posString = "#{P:%d,%d}";
RODATA_LOCATION ALIGN(4) IndexTable TextFunctions::localBuffersTable[] = {
		{ 7, &playerNameLoc },
		{ 7, &rival1NameLoc },
		{ 7, &rival2NameLoc },
		{ 7, &rival3NameLoc }
};

void TextFunctions::TextFunctions::SetTextColour(u32 colour, u32 shadowColour, u32 paperColour)
{
	TTC* context = tte_get_context();
	context->cattr[TTE_INK] = colour & 0xF;
	context->cattr[TTE_SHADOW] = shadowColour & 0xF;
	context->cattr[TTE_PAPER] = paperColour & 0xF;
}

void TextFunctions::SetTextPaletteSlot(u32 paletteID)
{
	TTC* context = tte_get_context();
	TSurface* surface = &context->dst;
	surface->palData = pal_bg_bank[paletteID];
}

const TFont* TextFunctions::GetFont()
{
	TTC* context = tte_get_context();
	return context->font;
}

void TextFunctions::SetFont(const TFont* font)
{
	TTC* context = tte_get_context();
	context->font = (TFont*)font;
}

void TextFunctions::StringCopy(char* stringDest, char* stringSource, u32 length)
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

u32 TextFunctions::StringCopyWithBufferChecks(char* stringDest, char* stringSource, u32 length, u32 secondaryIndex)
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
						u32 c = (u32)stringSource[pos + 1];
						if (c < NUMBUFFERS)
						{
							length = BUFFERLENGTH;
							pointer = Game::GetBufferPointer(c);
						}
						else
						{
							c -= NUMBUFFERS;
							length = localBuffersTable[c].index;
							pointer = (char*)localBuffersTable[c].pointerToData;
						}
						index += StringCopyWithBufferChecks(stringDest, pointer, length, index);
						pos += 2;
						currentChar = stringSource[pos];
						break;
					}
					case 0xFD - 0xF8:
					{
						const BattleScreen &bs = *((BattleScreen*)GameModeManager::GetScreen());
						const BattleData &battleData = bs.GetBattleData();
						const BattleTypeStruct &battleType = bs.GetBattleTypeStruct();
						char* pointer = 0;
						u32 length = 0;
						char c = stringSource[pos + 1];
						switch (c)
						{
							case 0:
							{
								u32 bank = battleData.battleBanks[User];
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
								pointer = (char*)battleData.pokemonStats[bank].mainPointer->Decrypt(Nickname);
								break;
							}
							case 1:
							{
								u32 bank = battleData.battleBanks[Target];
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
								pointer = (char*)battleData.pokemonStats[bank].mainPointer->Decrypt(Nickname);
								break;
							}
							case 2:
								pointer = (char*)&abilityNames[battleData.pokemonStats[battleData.battleBanks[User]].ability][0];
								break;
							case 3:
								pointer = (char*)&abilityNames[battleData.pokemonStats[battleData.battleBanks[Target]].ability][0];
								break;
							case 4:
							{
								u32 bank = battleData.battleBanks[User];
								u16 move = battleData.pokemonStats[bank].moves[battleData.battleBanks[MoveSelection1 + bank]];
								if (move <= NumberOfMoves)
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
								u32 bank = battleData.battleBanks[Target];
								u16 move = battleData.pokemonStats[bank].moves[battleData.battleBanks[MoveSelection1 + bank]];
								if (move <= NumberOfMoves)
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
								pointer = statBuffStrings1[battleData.battleBanks[CurrentEffectID]];
								break;
							}
							case 7:
							{
								u32 power = battleData.battleBanks[CurrentEffectPower];
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
								BufferUnsignedLongNumber(battleData.genericBuffer, 0);
								pointer = Game::GetBufferPointer(0);
								break;
							}
							case 9:
							{
								pointer = playerNameLoc;
								break;
							}
							case 10:
							{
								pointer = trainerClasses[battleData.trainerData[0].pointerToData[0].trainerClass];
								break;
							}
							case 11:
							{
								pointer = (char*)&battleData.trainerData[0].pointerToData[0].name;
								break;
							}
							case 12:
							{
								pointer = Items::GetItemName(battleData.itemIndex);
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
								pointer = (char*)&abilityNames[battleData.genericBuffer];
								break;
							}
							case 17:
							{
								u16 move = battleData.moveIndex;
								if (move <= NumberOfMoves)
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

void TextFunctions::BufferString(char* string, u8 bufferID, u32 maxLength)
{
	if (string != 0)
	{
		char* buffer = Game::GetBufferPointer(bufferID);
		StringCopy(buffer, string, maxLength);
	}
}

void TextFunctions::BufferStandardString(u16 stringID, u8 bufferID)
{
	BufferString(standardStrings[stringID], bufferID, BUFFERLENGTH);
}

void TextFunctions::BufferPokemonSpeciesName(u16 pokemonIndex, u8 bufferID)
{
	BufferString((char*)(&(pokemonNames[pokemonIndex])), bufferID, 11);
}

void TextFunctions::BufferItemName(u16 itemIndex, u8 bufferID)
{
	BufferString(Items::GetItemName(itemIndex), bufferID, 14);
}

void TextFunctions::BufferMoveName(u16 moveIndex, u8 bufferID)
{
	BufferString((char*)(&(moveNames[moveIndex])), bufferID, 14);
}

void TextFunctions::BufferNatureName(u32 natureID, u8 bufferID)
{
	BufferString((char*)(&(natureNames[natureID])), bufferID, 5);
}

void TextFunctions::BufferPokemonNameFromPointer(Pokemon* thePokemon, u8 bufferID)
{
	BufferString((char*)thePokemon->Decrypt(Nickname), bufferID, 11);
}

void TextFunctions::BufferPokemonName(u8 pokemonIndex, u8 bufferID)
{
	Pokemon* thePokemon = NULL;
	switch (pokemonIndex)
	{
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		{
			thePokemon = Game::GetPartyPokemon(pokemonIndex);
			break;
		}
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		{
			const BattleScreen &bs = *((BattleScreen*)GameModeManager::GetScreen());
			thePokemon = bs.GetEnemyBattlerByIndex((u32)(pokemonIndex - 6));
			break;
		}
		default:
		{
			thePokemon = Game::GetTemporaryPokemon();
			break;
		}
	}
	if (thePokemon)
	{
		BufferString((char*)(*thePokemon).Decrypt(Nickname), bufferID, 11);
	}
}

void TextFunctions::BufferMapHeaderName(u32 mapHeaderNameID, u8 bufferID)
{
	BufferString(Overworld::GetMapNamesTablePointer()[mapHeaderNameID], bufferID, BUFFERLENGTH);
}

void TextFunctions::BufferNumber(u32 number, u32 length, u8 bufferID)
{
	u32 chars = Maths::ToDecimal(number);
	u32 i;
	char* string = new char[sizeof(char) * length + 1];
	for (i = 0; i < length; i++)
	{
		u32 value = (chars & (0xF << (i << 2))) >> (i << 2);
		if (value <= 9)
		{
			string[length - 1 - i] = '0' + value;
		}
	}
	string[length] = END;
	BufferString(string, bufferID, 0);
	delete[] string;
}

void TextFunctions::BufferNegativeNumber(s32 number, u32 length, u8 bufferID)
{
	number *= -1;
	u32 chars = Maths::ToDecimal(number);
	u32 i;
	char* string = new char[sizeof(char) * length + 1];
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
	delete[] string;
}

void TextFunctions::BufferUnsignedFractionalNumber(u32 number, u8 bufferID, u32 positionOfDecimalPoint)
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
	char* buffers = Game::GetBufferPointer(bufferID);
	u32 i = 39;
	while (i != 0)
	{
		if (buffers[i] != END)
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
			buffers[i - j + 1] = buffers[i - j];
		}
		buffers[i - j] = '.';
	}
}

void TextFunctions::BufferUnsignedLongNumber(u32 number, u8 bufferID)
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

void TextFunctions::BufferUnsignedLongNumberNoLeading(u32 number, u8 bufferID)
{
	if (number > 99999999)
	{
		// Since the decimalisation code only has 32 bits to return to
		// the maximum value for this is as above
		// Therefore, to prevent errors, the value is clamped between
		// 0 and the maximum decimal value available in a 32 bit value
		number = 0;
	}
	u32 chars = Maths::ToDecimal(number);
	u32 i;
	for (i = 0; i < 8; i++)
	{
		if (((chars & (0xF << ((8 - i) << 2))) >> ((8 - i) << 2)) != 0)
		{
			break;
		}
	}
	BufferNumber(number, 9 - i, bufferID);
}

void TextFunctions::BufferUnsignedShortNumber(u16 number, u8 bufferID)
{
	if (number > 0xFFFF)
	{
		// Shouldn't ever happen in practice
		// But better to catch the error nonetheless
		number = 0;
	}
	BufferNumber((u32)number, 4, bufferID);
}

void TextFunctions::BufferSignedLongNumber(s32 number, u8 bufferID)
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

void TextFunctions::BufferSignedShortNumber(s16 number, u8 bufferID)
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
	return Maths::Sign(charOne - charTwo);
}

void TextFunctions::DrawCharacter(char c, u8 x, u8 y)
{
	tte_printf(posString, x, y);
	char string[] = { c, '\0' };
	tte_printf((char*)&string);
}

void TextFunctions::DrawString(char* string, u8 x, u8 y)
{
	if (string != 0)
	{
		char* newString = new char[100 * sizeof(char)];
		StringCopyWithBufferChecks(newString, string, 0, 0);
		tte_printf(posString, x, y);
		tte_printf(newString);
		delete[] newString;
	}
}

void TextFunctions::DrawString(const String &string, u8 x, u8 y)
{
	DrawString(string.GetUnderlyingArray(), x, y);
}

void TextFunctions::DrawStringOverTime(char* string, u8 x, u8 y, void (*endFunction)(u32))
{
	if (string != 0)
	{
		u32 spd = Game::GetConstOptions().textSpeed;
		if (spd == 3)
		{
			DrawString(string, x, y);
		}
		else
		{
			char* newString = new char[100 * sizeof(char)];
			StringCopyWithBufferChecks(newString, string, 0, 0);
			new TextDrawer(newString, x, y, 2 - spd, endFunction);
		}
	}
}

void TextFunctions::DrawStringOverTime(const String &string, u8 x, u8 y, void (*endFunction)(u32))
{
	DrawStringOverTime(string.GetUnderlyingArray(), x, y, endFunction);
}

void TextFunctions::InitialiseTextEngineInner(u32 colourWord, const TFont* font, u8 paletteSet)
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

void TextFunctions::SetFontByID(u32 id)
{
	if (id > 4)
	{
		id = 0;
	}
	SetFont(fonts[id]);
}

void TextFunctions::InitialiseTextEngine(u32 textSetID)
{
	InitialiseTextEngineInner(bytes2word(15, 3, 0, 0), fonts[textSetID], 0xE);
	playerNameLoc = (char*)&Game::GetPlayer().name;
	rival1NameLoc = (char*)&Game::GetPlayer().primaryRivalName;
	rival2NameLoc = (char*)&Game::GetPlayer().secondaryRivalName;
	rival3NameLoc = (char*)&Game::GetPlayer().tertiaryRivalName;
}
