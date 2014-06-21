/*
 * TextFunctions.h
 *
 *  Created on: 16 Jan 2014
 *      Author: Jamie
 */

#ifndef TEXTFUNCTIONS_H_
#define TEXTFUNCTIONS_H_

#include "Data/GlobalDefinitions.h"

#define Space 0

#define NEWLINE 0xFE
#define END 0xFF

void StringCopy(char* stringDest, char* stringSource, u32 length);
u32 StringCopyWithBufferChecks(char* stringDest, char* stringSource, u32 length);
void BufferString(char* string, u8 bufferID);
void BufferPokemonSpeciesName(u16 pokemonIndex, u8 bufferID);
void BufferPokemonName(u8 pokemonIndex, u8 bufferID);
void BufferRouteName(u8 mapBank, u8 mapID, u8 bufferID);
void BufferNumber(u32 number, u32 length, u8 bufferID);
void BufferNegativeNumber(s32 number, u32 length, u8 bufferID);
void BufferUnsignedLongNumber(u32 number, u8 bufferID);
void BufferUnsignedShortNumber(u16 number, u8 bufferID);
void BufferSignedLongNumber(s32 number, u8 bufferID);
void BufferSignedShortNumber(s16 number, u8 bufferID);
s32 CharacterComparison(u8 charOne, u8 charTwo);
void DrawCharacter(char c, u8 x, u8 y, u8 colour);
void DrawString(char* string, u8 x, u8 y, u8 colour);
void InitialiseTextEngine(u32 colourWord, const TFont* font, u8 paletteSet);

#endif /* TEXTFUNCTIONS_H_ */
