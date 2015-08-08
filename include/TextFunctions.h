/*
 * TextFunctions.h
 *
 *  Created on: 16 Jan 2014
 *      Author: Jamie
 */

#ifndef TEXTFUNCTIONS_H_
#define TEXTFUNCTIONS_H_

#define END '\0'
#define NumLocalBuffers 4

#include "GlobalDefinitions.h"
#include "String.h"
#include "TextDrawer.h"

class Pokemon;

class TextFunctions
{
private:
	static u32 primaryTextPalette[];
	static u32 primaryOutlinePalette[];
	static u32 pauseOutline[][8];
	static u32 textOutline[][16];
	static u32 battlePauseOutline[][8];
	static u32 battleTextOutline[][16];
	static char* playerNameLoc;
	static char* rival1NameLoc;
	static char* rival2NameLoc;
	static char* rival3NameLoc;
	static char* statBuffStrings1[];
	static char* statBuffStrings2[2][3];
	static char* foeString;
	static char* wildString;
	static char* trainerClasses[];
	static char* standardStrings[];
	static const TFont* fonts[];
	static const char* posString;
	static IndexTable localBuffersTable[];
	static u32 colourIndexesFromInkColours[];
	TextFunctions() { }
	~TextFunctions() { }
	static void InitialiseTextEngineInner(u32 colourWord, const TFont* font);
	static void DrawStringOverTimeMain(u32 pointer);
public:
	static const TFont* GetFont();
	static void SetFont(const TFont* font);
	static void SetTextColour(u32 colour, u32 shadowColour = 3, u32 paperColour = 1);
	static void SetTextColourFromInkColour(u32 colourID);
	static void SetTextPaletteSlot(u32 paletteID);
	static void StringCopy(char* stringDest, char* stringSource, u32 length);
	static u32 StringCopyWithBufferChecks(char* stringDest, char* stringSource, u32 length, u32 secondaryIndex);
	static void BufferString(char* string, u8 bufferID, u32 maxLength);
	static void BufferPokemonSpeciesName(u16 pokemonIndex, u8 bufferID);
	static void BufferItemName(u16 itemIndex, u8 bufferID);
	static void BufferNatureName(u32 natureID, u8 bufferID);
	static void SetFontByID(u32 id);
	static void BufferPokemonSpecies(u16 species, u8 bufferID);
	static void BufferPokemonNameFromPointer(Pokemon* thePokemon, u8 bufferID);
	static void BufferPokemonName(u8 pokemonIndex, u8 bufferID);
	static void BufferMapHeaderName(u32 mapHeaderNameID, u8 bufferID);
	static void BufferNumber(u32 number, u32 length, u8 bufferID, u32 leadingZeroes = 0);
	static void BufferNegativeNumber(s32 number, u32 length, u8 bufferID, u32 leadingZeroes = 0);
	static void BufferFractionalNumber(u32 number, u32 length, u8 bufferID, u32 positionOfDecimalPoint);
	static void BufferSignedFractionalNumber(s32 number, u32 length, u8 bufferID, u32 positionOfDecimalPoint);
	static s32 CharacterComparison(u8 charOne, u8 charTwo);
	static void DrawCharacter(char c, u8 x, u8 y);
	static void DrawString(char* string, u8 x, u8 y);
	static void DrawStringOverTime(char* string, u8 x, u8 y, void (*endFunction)(u32));
	static void DrawString(const String &string, u8 x, u8 y);
	static void DrawStringOverTime(const String &string, u8 x, u8 y, void (*endFunction)(u32));
	static void InitialiseTextEngine(u32 textSetID);
	static void BufferMoveName(u16 moveIndex, u8 bufferID);
	static void BufferStandardString(u16 stringID, u8 bufferID);
	static void BufferPluralItemName(u16 itemIndex, u8 bufferID);
	static char* GetBufferAddress(u32 bufferID);
	static u32 GetBufferLength(u32 bufferID);
	static void BufferAbilityName(u32 abilityID, u8 bufferID);
	static void BufferString(const String &string, u8 bufferID, u32 maxLength);
	static void ClearTextTileArea();
	static void DrawTextAreaToMap(u32 layer, u32 xTileStart, u32 yTileStart, u32 xTileWidth, u32 yTileWidth);
	static void LoadPaletteAndTiles(bool isBattle = false);
	static void RevertMapToStandard(u32 layer);
	static void ClearTextAreaFromMap(u32 layer, u32 xTileStart, u32 yTileStart, u32 xTileWidth, u32 yTileHeight);
};

#endif /* TEXTFUNCTIONS_H_ */
