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
#include "SmartPointer.h"

namespace Text
{
	class TextDrawer : public Tasks::Task
	{
	protected:
		SmartArrayPointer<char> string;
		u32 stringPosition;
		u32 bufferPos;
		SmartPointer<Callbacks::Callback> endFunction;
		u32 inkColour;
		u8 currentX;
		u8 currentY;
		u8 initialX;
		u8 framesToWait;
		u8 textSpeed;
		bool aDown;
		bool aHeld;
		bool bDown;
		bool bHeld;
		void HandleCharacter(char c, const TFont* font);
		virtual void Initialise();
	public:
		TextDrawer(SmartArrayPointer<char> newString, u8 x, u8 y, u32 speed, SmartPointer<Callbacks::Callback> endFunction = (Callbacks::Callback*)0, u32 inkColour = 3);
		virtual ~TextDrawer();
		bool Update();
		void SetADown(bool down)
		{
			aDown = down;
		}

		void SetAHeld(bool held)
		{
			aHeld = held;
		}

		void SetBDown(bool down)
		{
			bDown = down;
		}

		void SetBHeld(bool held)
		{
			bHeld = held;
		}
};
}
#endif /* TEXTDRAWER_H_ */
