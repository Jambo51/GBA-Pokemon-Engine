/*
 * TextDrawer.h
 *
 *  Created on: 31 May 2015
 *      Author: Jamie
 */

#ifndef TEXTDRAWER_H_
#define TEXTDRAWER_H_

#include "Callback.h"

typedef void(*EndFunctionType)(u32);

class TextDrawer : public Callback
{
protected:
	char* string;
	u32 stringPosition;
	u32 bufferPos;
	EndFunctionType EndFunction;
	u32 functionData;
	u32 inkColour;
	u8 currentX;
	u8 currentY;
	u8 initialX;
	u8 framesToWait;
	u8 textSpeed;
	bool aDown;
	bool bDown;
	void HandleCharacter(char c, const TFont* font);
	virtual void Initialise();
public:
	TextDrawer(char* newString, u8 x, u8 y, u32 speed, EndFunctionType endFunction = (EndFunctionType)NULL, u32 functionData = 0, u32 inkColour = 3);
	virtual ~TextDrawer();
	void Update();
	void ADown(bool value) { aDown = value; }
	void BDown(bool value) { bDown = value; }
};
#endif /* TEXTDRAWER_H_ */
