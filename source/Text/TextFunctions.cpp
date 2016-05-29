#include "Text/TextFunctions.h"
#include "Core.h"
#include "Data.h"
#include "Text/TextDrawer.h"
#include "Scenes.h"
#include "Text/String.h"
#include "LibraryHeaders/libtiles.h"
#ifdef __cplusplus
extern "C" {
#endif
#include <tonc_tte.h>
#ifdef __cplusplus
}
#endif

using namespace Core;
using namespace Core::Data;
using namespace Scenes;
using namespace Scenes::Battles;
using namespace Scenes::Overworld;

namespace Text
{
	EWRAM_LOCATION ALIGN(4) char* TextFunctions::playerNameLoc = NULL;
	EWRAM_LOCATION ALIGN(4) char* TextFunctions::rival1NameLoc = NULL;
	EWRAM_LOCATION ALIGN(4) char* TextFunctions::rival2NameLoc = NULL;
	EWRAM_LOCATION ALIGN(4) char* TextFunctions::rival3NameLoc = NULL;
	RODATA_LOCATION ALIGN(4) char* TextFunctions::statBuffStrings1[] = { "Attack", "Defence", "Speed", "Special Attack", "Special Defence", "Accuracy", "Evasiveness" };
	RODATA_LOCATION ALIGN(4) char* TextFunctions::statBuffStrings2[2][3] = { { "rose", "rose sharply", "rose drastically" }, { "fell", "harshly fell", "severely fell" } };
	RODATA_LOCATION ALIGN(4) char* TextFunctions::foeString = "Foe ";
	RODATA_LOCATION ALIGN(4) char* TextFunctions::wildString = "Wild ";
	RODATA_LOCATION ALIGN(4) char* TextFunctions::trainerClasses[] = { "Gym Leader", "Elite Four", "Champion", "Rocket Grunt", "Rocket Duo", "Elite Trainer" };
	RODATA_LOCATION ALIGN(4) char* TextFunctions::standardStrings[] = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "Balls", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "AA", "AB" };
	RODATA_LOCATION ALIGN(4) const TFont* TextFunctions::fonts[] = { &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font, &pokefont_b4Font };
	RODATA_LOCATION ALIGN(4) const char* TextFunctions::posString = "#{P:%d,%d}";
	RODATA_LOCATION ALIGN(4) IndexTable TextFunctions::localBuffersTable[NumLocalBuffers] = {
			{ 7, &playerNameLoc },
			{ 7, &rival1NameLoc },
			{ 7, &rival2NameLoc },
			{ 7, &rival3NameLoc }
	};
	RODATA_LOCATION ALIGN(4) u32 TextFunctions::primaryTextPalette[] = {
			0x7FFF532E, 0x675A318C, 0x3AFF043C, 0x4BD20664, 0x7B146546, 0x6F5B3529, 0x663156F5, 0x18C541AE
	};
	RODATA_LOCATION ALIGN(4) u32 TextFunctions::primaryOutlinePalette[] = {
			0x7FFF532E, 0x675A318C, 0x3AFF043C, 0x4BD20664, 0x7B146546, 0x6F5B3529, 0x663156F5, 0x18C541AE
	};
	RODATA_LOCATION ALIGN(4) u32 TextFunctions::pauseOutline[][8] = {
		{ 0x00000000, 0xFFFFFF00, 0xDDDDDAF0, 0xEEEEEDF0, 0xEEEEEDF0, 0xBCEEEDF0, 0x11CEEDF0, 0x11BEEDF0 },
		{ 0x00000000, 0xFFFFFFFF, 0xDDDDDDDD, 0xEEEEEEEE, 0xEEEEEEEE, 0xBBBBBBBB, 0x11111111, 0x11111111 },
		{ 0x00000000, 0x00FFFFFF, 0x0FADDDDD, 0x0FEEEEEE, 0x0FAEEEEE, 0x0FAEEECB, 0x0FAEEC11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0 },
		{ 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111 },
		{ 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11CEEDF0, 0xBCEEEDF0, 0xEEEEEDF0, 0xEEEEEEF0, 0xAAAAAFF0, 0xFFFFFF00, 0x00000000 },
		{ 0x11111111, 0x11111111, 0xBBBBBBBB, 0xEEEEEEEE, 0xEEEEEEEE, 0xAAAAAAAA, 0xFFFFFFFF, 0x00000000 },
		{ 0x0FAEEB11, 0x0FAEEC11, 0x0FAEEECB, 0x0FAEEEEE, 0x0FAEEEEE, 0x0FFAAAAA, 0x00FFFFFF, 0x00000000 }
	};
	RODATA_LOCATION ALIGN(4) u32 TextFunctions::textOutline[][16] = {
		{ 0x00000000, 0xFFFFFF00, 0xDDDDDAF0, 0xEEEEEDF0, 0xEEEEEDF0, 0xBCEEEDF0, 0x11CEEDF0, 0x11BEEDF0 },
		{ 0x00000000, 0xFFFFFFFF, 0xDDDDDDDD, 0xEEEEEEEE, 0xEEEEEEEE, 0xBBBBBBBB, 0x11111111, 0x11111111 },
		{ 0x00000000, 0x00FFFFFF, 0x0FADDDDD, 0x0FEEEEEE, 0x0FAEEEEE, 0x0FAEEECB, 0x0FAEEC11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0 },
		{ 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111 },
		{ 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11CEEDF0, 0xBCEEEDF0, 0xEEEEEDF0, 0xEEEEEEF0, 0xAAAAAFF0, 0xFFFFFF00, 0x00000000 },
		{ 0x11111111, 0x11111111, 0xBBBBBBBB, 0xEEEEEEEE, 0xEEEEEEEE, 0xAAAAAAAA, 0xFFFFFFFF, 0x00000000 },
		{ 0x0FAEEB11, 0x0FAEEC11, 0x0FAEEECB, 0x0FAEEEEE, 0x0FAEEEEE, 0x0FFAAAAA, 0x00FFFFFF, 0x00000000 }
	};
	RODATA_LOCATION ALIGN(4) u32 TextFunctions::battlePauseOutline[][8] = {
		{ 0x00000000, 0xFFFFFF00, 0xDDDDDAF0, 0xEEEEEDF0, 0xEEEEEDF0, 0xBCEEEDF0, 0x11CEEDF0, 0x11BEEDF0 },
		{ 0x00000000, 0xFFFFFFFF, 0xDDDDDDDD, 0xEEEEEEEE, 0xEEEEEEEE, 0xBBBBBBBB, 0x11111111, 0x11111111 },
		{ 0x00000000, 0x00FFFFFF, 0x0FADDDDD, 0x0FEEEEEE, 0x0FAEEEEE, 0x0FAEEECB, 0x0FAEEC11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0 },
		{ 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111 },
		{ 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11CEEDF0, 0xBCEEEDF0, 0xEEEEEDF0, 0xEEEEEEF0, 0xAAAAAFF0, 0xFFFFFF00, 0x00000000 },
		{ 0x11111111, 0x11111111, 0xBBBBBBBB, 0xEEEEEEEE, 0xEEEEEEEE, 0xAAAAAAAA, 0xFFFFFFFF, 0x00000000 },
		{ 0x0FAEEB11, 0x0FAEEC11, 0x0FAEEECB, 0x0FAEEEEE, 0x0FAEEEEE, 0x0FFAAAAA, 0x00FFFFFF, 0x00000000 }
	};
	RODATA_LOCATION ALIGN(4) u32 TextFunctions::battleTextOutline[][16] = {
		{ 0x00000000, 0xFFFFFF00, 0xDDDDDAF0, 0xEEEEEDF0, 0xEEEEEDF0, 0xBCEEEDF0, 0x11CEEDF0, 0x11BEEDF0 },
		{ 0x00000000, 0xFFFFFFFF, 0xDDDDDDDD, 0xEEEEEEEE, 0xEEEEEEEE, 0xBBBBBBBB, 0x11111111, 0x11111111 },
		{ 0x00000000, 0x00FFFFFF, 0x0FADDDDD, 0x0FEEEEEE, 0x0FAEEEEE, 0x0FAEEECB, 0x0FAEEC11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0 },
		{ 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111 },
		{ 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11CEEDF0, 0xBCEEEDF0, 0xEEEEEDF0, 0xEEEEEEF0, 0xAAAAAFF0, 0xFFFFFF00, 0x00000000 },
		{ 0x11111111, 0x11111111, 0xBBBBBBBB, 0xEEEEEEEE, 0xEEEEEEEE, 0xAAAAAAAA, 0xFFFFFFFF, 0x00000000 },
		{ 0x0FAEEB11, 0x0FAEEC11, 0x0FAEEECB, 0x0FAEEEEE, 0x0FAEEEEE, 0x0FFAAAAA, 0x00FFFFFF, 0x00000000 }
	};
	RODATA_LOCATION ALIGN(4) u32 TextFunctions::colourIndexesFromInkColours[] = {
			0x8, 0x4, 0x8, 0x2, 0xD, 0x6, 0x5
	};

	void TextFunctions::SetTextColour(u32 colour, u32 shadowColour, u32 paperColour)
	{
		TTC* context = tte_get_context();
		context->cattr[TTE_INK] = colour & 0xF;
		context->cattr[TTE_SHADOW] = shadowColour & 0xF;
		context->cattr[TTE_PAPER] = paperColour & 0xF;
	}

	void TextFunctions::SetTextColourFromInkColour(u32 colourID)
	{
		SetTextColour(colourIndexesFromInkColours[colourID]);
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

	char* TextFunctions::GetBufferAddress(u32 bufferID)
	{
		if (bufferID < NUMBUFFERS)
		{
			return Game::GetBufferPointer(bufferID);
		}
		else
		{
			if (bufferID - NUMBUFFERS < NumLocalBuffers)
			{
				return *(char**)localBuffersTable[bufferID - NUMBUFFERS].pointerToData;
			}
		}
		return NULL;
	}

	u32 TextFunctions::GetBufferLength(u32 bufferID)
	{
		if (bufferID < NUMBUFFERS)
		{
			return BUFFERLENGTH;
		}
		else
		{
			if (bufferID - NUMBUFFERS < NumLocalBuffers)
			{
				return localBuffersTable[bufferID - NUMBUFFERS].index;
			}
		}
		return 0;
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
							const Battle &bs = *((Battle*)SceneManager::GetScene());
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
									pointer = Pokemon::Pokemon::GetAbilityName(battleData.pokemonStats[battleData.battleBanks[User]].ability);
									break;
								case 3:
									pointer = Pokemon::Pokemon::GetAbilityName(battleData.pokemonStats[battleData.battleBanks[Target]].ability);
									break;
								case 4:
								{
									u32 bank = battleData.battleBanks[User];
									u16 move = battleData.pokemonStats[bank].moves[battleData.battleBanks[MoveSelection1 + bank]];
									pointer = Moves::GetMoveNameByIndex(move);
									break;
								}
								case 5:
								{
									u32 bank = battleData.battleBanks[Target];
									u16 move = battleData.pokemonStats[bank].moves[battleData.battleBanks[MoveSelection1 + bank]];
									pointer = Moves::GetMoveNameByIndex(move);
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
									//BufferNumber(battleData.genericBuffer, 0);
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
									String tempPointer = Items::GetItemName(battleData.itemIndex);
									pointer = tempPointer.GetUnderlyingArray();
									if (tempPointer.StartsWithVowel())
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
									pointer = Pokemon::Pokemon::GetAbilityName(battleData.genericBuffer);
									break;
								}
								case 17:
								{
									u16 move = battleData.moveIndex;
									pointer = Moves::GetMoveNameByIndex(move);
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

	void TextFunctions::BufferString(const String &string, u8 bufferID, u32 maxLength)
	{
		char* buffer = Game::GetBufferPointer(bufferID);
		StringCopy(buffer, string.GetUnderlyingArray(), maxLength);
	}

	void TextFunctions::BufferStandardString(u16 stringID, u8 bufferID)
	{
		BufferString(standardStrings[stringID], bufferID, BUFFERLENGTH);
	}

	void TextFunctions::BufferPokemonSpeciesName(u16 pokemonIndex, u8 bufferID)
	{
		BufferString(Pokemon::Pokemon::GetSpeciesName(pokemonIndex), bufferID, 11);
	}

	void TextFunctions::BufferItemName(u16 itemIndex, u8 bufferID)
	{
		BufferString(Items::GetItemName(itemIndex), bufferID, 14);
	}

	void TextFunctions::BufferPluralItemName(u16 itemIndex, u8 bufferID)
	{
		BufferString(Items::GetPluralisedItemName(itemIndex), bufferID, 17);
	}

	void TextFunctions::BufferMoveName(u16 moveIndex, u8 bufferID)
	{
		BufferString(Moves::GetMoveNameByIndex(moveIndex), bufferID, 14);
	}

	void TextFunctions::BufferNatureName(u32 natureID, u8 bufferID)
	{
		BufferString(Pokemon::Pokemon::GetNatureName(natureID), bufferID, 8);
	}

	void TextFunctions::BufferAbilityName(u32 abilityID, u8 bufferID)
	{
		BufferString(Pokemon::Pokemon::GetAbilityName(abilityID), bufferID, 14);
	}

	void TextFunctions::BufferPokemonNameFromPointer(Pokemon::Pokemon* thePokemon, u8 bufferID)
	{
		BufferString((char*)thePokemon->Decrypt(Nickname), bufferID, 11);
	}

	void TextFunctions::BufferPokemonName(u8 pokemonIndex, u8 bufferID)
	{
		Pokemon::Pokemon* thePokemon = NULL;
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
				const Battle &bs = *((Battle*)SceneManager::GetScene());
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
		BufferString(PrimaryOverworld::GetMapNamesTablePointer()[mapHeaderNameID], bufferID, BUFFERLENGTH);
	}

	void TextFunctions::BufferNumber(u32 number, u32 length, u8 bufferID, u32 leadingZeroes)
	{
		if (number > 0)
		{
			u32 chars = Maths::ToDecimal(number);
			String string = "";
			bool firstValueFound = false;
			for (u32 i = length; i > 0; i--)
			{
				u32 value = (chars & (0xF << ((i - 1) << 2))) >> ((i - 1) << 2);
				if (value != 0)
				{
					firstValueFound = true;
				}
				if (firstValueFound)
				{
					if (value <= 9)
					{
						string += (char)('0' + value);
					}
				}
			}
			while ((u32)string.Size() < leadingZeroes)
			{
				string.Prepend('0');
			}
			BufferString(string, bufferID, 0);
		}
		else
		{
			BufferString("0", bufferID, 0);
		}
	}

	void TextFunctions::BufferNegativeNumber(s32 number, u32 length, u8 bufferID, u32 leadingZeroes)
	{
		if (number < 0)
		{
			number *= -1;
			u32 chars = Maths::ToDecimal(number);
			String string = "";
			bool firstValueFound = false;
			for (u32 i = length; i > 0; i--)
			{
				u32 value = (chars & (0xF << ((i - 1) << 2))) >> ((i - 1) << 2);
				if (value != 0)
				{
					firstValueFound = true;
				}
				if (firstValueFound)
				{
					if (value <= 9)
					{
						string += (char)('0' + value);
					}
				}
			}
			while ((u32)string.Size() < leadingZeroes)
			{
				string.Prepend('0');
			}
			string.Prepend('-');
			BufferString(string, bufferID, 0);
		}
		else
		{
			BufferNumber((u32)number, length, bufferID, leadingZeroes);
		}
	}

	void TextFunctions::BufferFractionalNumber(u32 number, u32 length, u8 bufferID, u32 positionOfDecimalPoint)
	{
		u32 chars = Maths::ToDecimal(number);
		String string = "";
		bool firstValueFound = false;
		for (u32 i = length; i > 0; i--)
		{
			u32 value = (chars & (0xF << ((i - 1) << 2))) >> ((i - 1) << 2);
			if (value != 0)
			{
				firstValueFound = true;
			}
			if (firstValueFound)
			{
				if (value <= 9)
				{
					string += (char)('0' + value);
				}
			}
		}
		String s = string.SubString(positionOfDecimalPoint);
		string = string.SubString(0, positionOfDecimalPoint);
		string += '.';
		string += s;
		BufferString(string, bufferID, 0);
	}

	void TextFunctions::BufferSignedFractionalNumber(s32 number, u32 length, u8 bufferID, u32 positionOfDecimalPoint)
	{
		if (number < 0)
		{
			u32 chars = Maths::ToDecimal(number);
			String string = "";
			bool firstValueFound = false;
			for (u32 i = length; i > 0; i--)
			{
				u32 value = (chars & (0xF << ((i - 1) << 2))) >> ((i - 1) << 2);
				if (value != 0)
				{
					firstValueFound = true;
				}
				if (firstValueFound)
				{
					if (value <= 9)
					{
						string += (char)('0' + value);
					}
				}
			}
			String s = string.SubString(positionOfDecimalPoint);
			string = string.SubString(0, positionOfDecimalPoint);
			string += '.';
			string += s;
			string.Prepend('-');
			BufferString(string, bufferID, 0);
		}
		else
		{
			BufferFractionalNumber((u32)number, length, bufferID, positionOfDecimalPoint);
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
				new TextDrawer(string, x, y, 2 - spd, endFunction);
			}
		}
	}

	void TextFunctions::DrawStringOverTime(const String &string, u8 x, u8 y, void (*endFunction)(u32))
	{
		DrawStringOverTime(string.GetUnderlyingArray(), x, y, endFunction);
	}

	void TextFunctions::InitialiseTextEngineInner(u32 colourWord, const TFont* font)
	{
		tte_init_chr4c(
				0,
				BG_CBB(14) | BG_SBB(10),
				0xF001,
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
		InitialiseTextEngineInner(bytes2word(15, 3, 0, 0), fonts[textSetID]);
		playerNameLoc = (char*)&Game::GetPlayer().name;
		rival1NameLoc = (char*)&Game::GetPlayer().primaryRivalName;
		rival2NameLoc = (char*)&Game::GetPlayer().secondaryRivalName;
		rival3NameLoc = (char*)&Game::GetPlayer().tertiaryRivalName;
	}

	void TextFunctions::LoadPaletteAndTiles(bool isBattle)
	{
		memcpy32((void*)((u32)pal_bg_mem + 0x1C0), &primaryTextPalette, 8);
		memcpy32((void*)((u32)pal_bg_mem + 0x1E0), &primaryOutlinePalette, 8);
		memset32((void*)0x0600C800, 0x0, 0x8);
		if (isBattle)
		{
			memcpy32((void*)0x0600C820, &battleTextOutline[Game::GetConstOptions().boxOutline], 0x90);
			memcpy32((void*)0x0600CA80, &battlePauseOutline[Game::GetConstOptions().boxOutline], 0x48);
		}
		else
		{
			memcpy32((void*)0x0600C820, &textOutline[Game::GetConstOptions().boxOutline], 0x90);
			memcpy32((void*)0x0600CA80, &pauseOutline[Game::GetConstOptions().boxOutline], 0x48);
		}
	}

	void TextFunctions::ClearTextTileArea()
	{
		memset32((void*)0x06008000, 0x0, 8);
		memset32((void*)0x06008020, 0x11111111, 0x11F8);
	}

	void TextFunctions::RevertMapToStandard(u32 layer)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer));
	}

	void TextFunctions::DrawTextAreaToMap(u32 layer, u32 xTileStart, u32 yTileStart, u32 xTileWidth, u32 yTileHeight)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer), true);
		if (xTileStart + xTileWidth > 30)
		{
			xTileWidth = 30 - xTileStart;
		}
		if (yTileStart + yTileHeight > 20)
		{
			yTileHeight = 20 - yTileStart;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			for (u32 i = 0; i < yTileHeight; i++)
			{
				for (u32 j = 0; j < xTileWidth; j++)
				{
					layerLocation[((yTileStart + i) * 0x20) + xTileStart + j] = 0xE001 + i + 20 * j;
				}
			}
		}
	}

	void TextFunctions::ClearTextAreaFromMap(u32 layer, u32 xTileStart, u32 yTileStart, u32 xTileWidth, u32 yTileHeight)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer));
		if (xTileStart + xTileWidth > 30)
		{
			xTileWidth = 30 - xTileStart;
		}
		if (yTileStart + yTileHeight > 20)
		{
			yTileHeight = 20 - yTileStart;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			for (u32 i = 0; i < yTileHeight; i++)
			{
				for (u32 j = 0; j < xTileWidth; j++)
				{
					layerLocation[((yTileStart + i) * 0x20) + xTileStart + j] = 0;
				}
			}
		}
	}

	void TextFunctions::DrawTextBoxTop(u32 layer, u32 xTileStart, u32 yTileStart, u32 width)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer), true);
		if (xTileStart + width > 30)
		{
			width = 30 - xTileStart;
		}
		if (yTileStart > 20)
		{
			yTileStart = 0;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			layerLocation[(yTileStart * 0x20) + xTileStart] = 0xF241;
			layerLocation[(yTileStart * 0x20) + xTileStart + 1] = 0xF242;
			layerLocation[(yTileStart * 0x20) + xTileStart + width - 1] = 0xF246;
			layerLocation[(yTileStart * 0x20) + xTileStart + width - 2] = 0xF245;
			width -= 2;
			for (u32 j = 2; j < width; j++)
			{
				layerLocation[(yTileStart * 0x20) + xTileStart + j] = 0xF243;
			}
		}
	}

	void TextFunctions::DrawMenuBoxTop(u32 layer, u32 xTileStart, u32 yTileStart, u32 width)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer), true);
		if (xTileStart + width > 30)
		{
			width = 30 - xTileStart;
		}
		if (yTileStart > 20)
		{
			yTileStart = 0;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			layerLocation[(yTileStart * 0x20) + xTileStart] = 0xF254;
			layerLocation[(yTileStart * 0x20) + xTileStart + width - 1] = 0xF256;
			width--;
			for (u32 j = 1; j < width; j++)
			{
				layerLocation[(yTileStart * 0x20) + xTileStart + j] = 0xF255;
			}
		}
	}

	void TextFunctions::DrawTextBoxBottom(u32 layer, u32 xTileStart, u32 yTileStart, u32 width)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer), true);
		if (xTileStart + width > 30)
		{
			width = 30 - xTileStart;
		}
		if (yTileStart > 20)
		{
			yTileStart = 0;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			layerLocation[(yTileStart * 0x20) + xTileStart] = 0xF24D;
			layerLocation[(yTileStart * 0x20) + xTileStart + 1] = 0xF24E;
			layerLocation[(yTileStart * 0x20) + xTileStart + width - 1] = 0xF252;
			layerLocation[(yTileStart * 0x20) + xTileStart + width - 2] = 0xF251;
			width -= 2;
			for (u32 j = 2; j < width; j++)
			{
				layerLocation[(yTileStart * 0x20) + xTileStart + j] = 0xF24F;
			}
		}
	}

	void TextFunctions::DrawMenuBoxBottom(u32 layer, u32 xTileStart, u32 yTileStart, u32 width)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer), true);
		if (xTileStart + width > 30)
		{
			width = 30 - xTileStart;
		}
		if (yTileStart > 20)
		{
			yTileStart = 0;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			layerLocation[(yTileStart * 0x20) + xTileStart] = 0xF25A;
			layerLocation[(yTileStart * 0x20) + xTileStart + width - 1] = 0xF25C;
			width--;
			for (u32 j = 1; j < width; j++)
			{
				layerLocation[(yTileStart * 0x20) + xTileStart + j] = 0xF25B;
			}
		}
	}

	void TextFunctions::DrawTextBoxSides(u32 layer, u32 xTileStart, u32 yTileStart, u32 height, u32 width)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer), true);
		if (yTileStart + height > 20)
		{
			height = 20 - yTileStart;
		}
		if (xTileStart > 30)
		{
			xTileStart = 0;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			for (u32 j = 0; j < height; j++)
			{
				layerLocation[((yTileStart + j) * 0x20) + xTileStart] = 0xF247;
				layerLocation[((yTileStart + j) * 0x20) + xTileStart + 1] = 0xF248;
				layerLocation[((yTileStart + j) * 0x20) + xTileStart + width - 2] = 0xF24B;
				layerLocation[((yTileStart + j) * 0x20) + xTileStart + width - 1] = 0xF24C;
			}
		}
	}

	void TextFunctions::DrawMenuBoxSides(u32 layer, u32 xTileStart, u32 yTileStart, u32 height, u32 width)
	{
		BackgroundFunctions::SetLayer(layer, Game::GetLayer(layer), true);
		if (yTileStart + height > 20)
		{
			height = 20 - yTileStart;
		}
		if (xTileStart > 30)
		{
			xTileStart = 0;
		}
		u16* layerLocation = Game::GetLayerPointer(layer);
		if (layerLocation)
		{
			for (u32 j = 0; j < height; j++)
			{
				layerLocation[((yTileStart + j) * 0x20) + xTileStart] = 0xF257;
				layerLocation[((yTileStart + j) * 0x20) + xTileStart + width - 1] = 0xF259;
			}
		}
	}

	void TextFunctions::ClearTile(u32 x, u32 y)
	{
		void* location = (void*)(0x06008020 + (0x280 * x) + (0x40 * y));
		memset32(location, 0x11111111, 0x10);
	}
}
