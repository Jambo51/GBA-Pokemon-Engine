/*
 * TextFunctions.h
 *
 *  Created on: 16 Jan 2014
 *      Author: Jamie
 */

#ifndef TEXTFUNCTIONS_H_
#define TEXTFUNCTIONS_H_

#define END '\0'

#include "GlobalDefinitions.h"
#include "String.h"

class Pokemon;

class TextFunctions
{
private:
	static char* playerNameLoc;
	static char* rival1NameLoc;
	static char* rival2NameLoc;
	static char* rival3NameLoc;
	static char* statBuffStrings1[];
	static char* statBuffStrings2[2][3];
	static char* foeString;
	static char* wildString;
	static char* trainerClasses[];
	static const TFont* fonts[];
	static const char* posString;
	TextFunctions() { }
	~TextFunctions() { }
	static void InitialiseTextEngineInner(u32 colourWord, const TFont* font, u8 paletteSet);
	static void DrawStringOverTimeMain(u32 pointer);
public:
	static const TFont* GetFont();
	static void SetFont(const TFont* font);
	static void SetTextColour(u32 colour, u32 shadowColour, u32 paperColour);
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
	static void BufferNumber(u32 number, u32 length, u8 bufferID);
	static void BufferNegativeNumber(s32 number, u32 length, u8 bufferID);
	static void BufferUnsignedLongNumber(u32 number, u8 bufferID);
	static void BufferUnsignedLongNumberNoLeading(u32 number, u8 bufferID);
	static void BufferUnsignedFractionalNumber(u32 number, u8 bufferID, u32 positionOfDecimalPoint);
	static void BufferUnsignedShortNumber(u16 number, u8 bufferID);
	static void BufferSignedLongNumber(s32 number, u8 bufferID);
	static void BufferSignedShortNumber(s16 number, u8 bufferID);
	static s32 CharacterComparison(u8 charOne, u8 charTwo);
	static void DrawCharacter(char c, u8 x, u8 y);
	static void DrawString(char* string, u8 x, u8 y);
	static void DrawStringOverTime(char* string, u8 x, u8 y, void (*endFunction)(void));
	static void DrawString(const String &string, u8 x, u8 y);
	static void DrawStringOverTime(const String &string, u8 x, u8 y, void (*endFunction)(void));
	static void InitialiseTextEngine(u32 textSetID);
};

#endif /* TEXTFUNCTIONS_H_ */
