/*
 * TextDrawer.cpp
 *
 *  Created on: 31 May 2015
 *      Author: Jamie
 */

#include "Text/TextDrawer.h"
#include "Text/TextFunctions.h"
#include "Tasks/TaskManager.h"
#include "Scenes/Overworld/PrimaryOverworld.h"

namespace Text
{
	TextDrawer::TextDrawer(char* newString, u8 x, u8 y, u32 speed, void (*endFunction)(u32), u32 functionData, u32 inkColour) : Tasks::Task()
	{
		// TODO Auto-generated constructor stub
		string = newString;
		currentX = x;
		initialX = x;
		currentY = y;
		framesToWait = 0;
		textSpeed = speed;
		stringPosition = 0;
		bufferPos = 0;
		EndFunction = endFunction;
		this->functionData = functionData;
		this->inkColour = inkColour;
		TextFunctions::SetTextColourFromInkColour(inkColour);
		TextFunctions::ClearTextTileArea();
		TextFunctions::DrawTextBoxTop(0, 0, 14, 30);
		TextFunctions::DrawTextBoxBottom(0, 0, 19, 30);
		TextFunctions::DrawTextBoxSides(0, 0, 15, 4, 30);
		this->Initialise();
	}

	void TextDrawer::Initialise()
	{
		TextFunctions::LoadPaletteAndTiles();
		TextFunctions::DrawTextAreaToMap(0, 2, 15, 26, 4);
	}

	TextDrawer::~TextDrawer()
	{
		// TODO Auto-generated destructor stub
		if (string)
		{
			delete[] string;
		}
	}

	void TextDrawer::HandleCharacter(char c, const TFont* font)
	{
		u32 newCurrentX = currentX;
		u32 newCurrentY = currentY;
		if (c == '\n')
		{
			newCurrentX = initialX;
			currentX = initialX;
			newCurrentY += 0x10;
			currentY = newCurrentY;
			stringPosition++;
			c = string[stringPosition];
			HandleCharacter(c, font);
		}
		else if (c == 0xFE)
		{
			if (aDown || bDown)
			{
				TextFunctions::ClearTextTileArea();
				currentX = initialX;
				newCurrentX = initialX;
				newCurrentY = 0;
				currentY = 0;
				stringPosition++;
				c = string[stringPosition];
				HandleCharacter(c, font);
			}
		}
		else if (c == 0xFC)
		{
			c = string[stringPosition + 1];
			if (c < 0x10)
			{
				if ((u32)c != inkColour)
				{
					inkColour = (u32)c;
					TextFunctions::SetTextColourFromInkColour((u32)c);
				}
			}
			stringPosition += 2;
			c = string[stringPosition];
			HandleCharacter(c, font);
		}
		else if (c == 0xFB)
		{
			char* buffer = TextFunctions::GetBufferAddress(string[stringPosition + 1]);
			u32 bufferLength = TextFunctions::GetBufferLength(string[stringPosition + 1]);
			char c2 = buffer[bufferPos];
			if (c2 == '\0')
			{
				stringPosition += 2;
				bufferPos = 0;
			}
			else
			{
				TextFunctions::DrawCharacter(c2, newCurrentX, newCurrentY);
				currentX = newCurrentX + font[0].widths[(u32)c - font[0].charOffset];
				bufferPos++;
			}
			if (bufferPos == bufferLength || buffer[bufferPos] == '\0')
			{
				stringPosition += 2;
				bufferPos = 0;
			}
		}
		else
		{
			TextFunctions::DrawCharacter(c, newCurrentX, newCurrentY);
			currentX = newCurrentX + font[0].widths[(u32)c - font[0].charOffset];
			stringPosition++;
		}
		currentY = newCurrentY;
		framesToWait = textSpeed;
		aDown = false;
		bDown = false;
	}

	void TextDrawer::Update()
	{
		const TFont* font = TextFunctions::GetFont();
		if (framesToWait == 0)
		{
			char c = string[stringPosition];
			if (c != '\0')
			{
				HandleCharacter(c, font);
			}
			else
			{
				if (EndFunction)
				{
					EndFunction(functionData);
				}
				TaskManager::RemoveTask(this);
			}
		}
		else
		{
			framesToWait--;
			aDown = false;
			bDown = false;
		}
	}
}
