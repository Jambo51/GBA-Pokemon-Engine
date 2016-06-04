/*
 * TextDrawer.h
 *
 *  Created on: 31 May 2015
 *      Author: Jamie
 */

#ifndef TEXTDRAWER_H_
#define TEXTDRAWER_H_

#include "Tasks/Task.h"
#include "Callbacks/Callback.h"

namespace Text
{
	class TextDrawer : public Tasks::Task
	{
	protected:
		char* string;
		u32 stringPosition;
		u32 bufferPos;
		Callbacks::Callback* endFunction;
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
		TextDrawer(char* newString, u8 x, u8 y, u32 speed, Callbacks::Callback* endFunction = (Callbacks::Callback*)0, u32 inkColour = 3);
		virtual ~TextDrawer();
		void Update();
		void ADown(bool value) { aDown = value; }
		void BDown(bool value) { bDown = value; }
	};
}
#endif /* TEXTDRAWER_H_ */
