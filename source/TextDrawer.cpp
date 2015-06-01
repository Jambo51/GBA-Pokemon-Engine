/*
 * TextDrawer.cpp
 *
 *  Created on: 31 May 2015
 *      Author: Jamie
 */

#include "TextDrawer.h"
#include "TextFunctions.h"
#include "CallbackManager.h"

TextDrawer::TextDrawer(char* newString, u8 x, u8 y, u32 speed, void (*endFunction)(void)) : Callback(0)
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
//				if (IsKeyDownButNotHeld(Key_A) || IsKeyDownButNotHeld(Key_B))
//				{
//					memset32((void*)0x0600C000, 0, 0xD00);
//					data[0].currentX = data[0].initialX;
//					currentY = 0;
//					data[0].stringPosition++;
//				}
			}
			else
			{
				TextFunctions::DrawCharacter(c, newCurrentX, newCurrentY);
				currentX = newCurrentX + font[0].widths[(u32)c - font[0].charOffset];
				stringPosition++;
			}
			currentY = newCurrentY;
			framesToWait = textSpeed;
		}
		else
		{
			if (EndFunction)
			{
				EndFunction();
			}
			CallbackManager::RemoveCallback(this);
		}
	}
	else
	{
		framesToWait--;
	}
}
