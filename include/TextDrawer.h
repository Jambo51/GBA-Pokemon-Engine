/*
 * TextDrawer.h
 *
 *  Created on: 31 May 2015
 *      Author: Jamie
 */

#ifndef TEXTDRAWER_H_
#define TEXTDRAWER_H_

#include "Callback.h"

class TextDrawer : public Callback
{
private:
	char* string;
	u32 stringPosition;
	void (*EndFunction)(void);
	u8 currentX;
	u8 currentY;
	u8 initialX;
	u8 framesToWait;
	u8 textSpeed;
public:
	TextDrawer(char* newString, u8 x, u8 y, u32 speed, void (*endFunction)(void));
	~TextDrawer();
	void Update();
};

#endif /* TEXTDRAWER_H_ */
