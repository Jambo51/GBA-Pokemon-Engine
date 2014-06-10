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

void StringCopy(u8* stringDest, u8* stringSource, u32 length);
void BufferString(u8* string, u8 bufferID);
void BufferPokemonName(u16 pokemonIndex, u8 bufferID);
void BufferRouteName(u8 mapBank, u8 mapID, u8 bufferID);
void BufferNumber(u16 number, u8 bufferID);
s32 CharacterComparison(u8 charOne, u8 charTwo);
FourBPPPixel* GetCharacterLocationFromCharIDAndPart(u8 charID, u8 part);
FourBPPPixel* GetCharacterBottomLocationFromCharID(u8 charID);
FourBPPPixel* GetCharacterTopLocationFromCharID(u8 charID);
u8 GetCharWidthFromCharID(u8 charID);
u8 GetColourFromPixelColour(u8 pixelColour, u8 textColour, u8 bgColour, u8 shadowColour);
void CopyCharacterToTile(u8* charTopLoc, u8 width, u8 colour, u32* copyLocation, u32 tile, u8 startingX);
u8 DrawCharacter(u8 charToDraw, u32 tile, u8 x, u8 colour);
void DrawString(u8* string, u8 x, u8 y, u8 colour);

#endif /* TEXTFUNCTIONS_H_ */
