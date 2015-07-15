/*
 * TextDrawer.cpp
 *
 *  Created on: 31 May 2015
 *      Author: Jamie
 */

#include "TextDrawer.h"
#include "TextFunctions.h"
#include "CallbackManager.h"

TextDrawer::TextDrawer(char* newString, u8 x, u8 y, u32 speed, void (*endFunction)(u32), u32 functionData) : Callback()
{
	// TODO Auto-generated constructor stub
	string = newString;
	currentX = x;
	initialX = x;
	currentY = y;
	framesToWait = 0;
	textSpeed = speed;
	stringPosition = 0;
	EndFunction = endFunction;
	this->functionData = functionData;
}

TextDrawer::~TextDrawer()
{
	// TODO Auto-generated destructor stub
	if (string)
	{
		delete[] string;
	}
}

void TextDrawer::Update()
{
	const TFont* font = TextFunctions::GetFont();
	if (framesToWait == 0)
	{
		u32 newCurrentX = currentX;
		u32 newCurrentY = currentY;
		char c = string[stringPosition];
		if (c != '\0')
		{
			if (c == '\n')
			{
				newCurrentX = initialX;
				newCurrentY += 0x10;
				stringPosition++;
				c = string[stringPosition];
				TextFunctions::DrawCharacter(c, newCurrentX, newCurrentY);
				stringPosition++;
				currentX = newCurrentX + font[0].widths[(u32)c - font[0].charOffset];
			}
			else if (c == 0xFE)
			{
				if (aDown || bDown)
				{
					memset32((void*)0x0600C000, 0, 0xD00);
					currentX = initialX;
					currentY = 0;
					stringPosition++;
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
		else
		{
			if (EndFunction)
			{
				EndFunction(functionData);
			}
			CallbackManager::RemoveCallback(this);
		}
	}
	else
	{
		framesToWait--;
		aDown = false;
		bDown = false;
	}
}
