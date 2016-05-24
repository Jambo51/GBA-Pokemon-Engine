/*
 * OverworldInputEventHandler.h
 *
 *  Created on: 9 Jun 2015
 *      Author: Jamie
 */

#ifndef OVERWORLDINPUTEVENTHANDLER_H_
#define OVERWORLDINPUTEVENTHANDLER_H_

#include "Input/InputHandler.h"

typedef struct OverworldMovement
{
	u32 movementCounter:8;
	u32 ignoreCounter:5;
	u32 changeCounter:5;
	u32 ppm:3;
	u32 blarg2:5;
	u32 locked:1;
	u32 wasMoving:1;
	u32 isBDown:1;
	u32 vertical:1;
	u32 positive:1;
	u32 isMoving:1;
} OverworldMovement;

typedef struct OverworldMovementStruct
{
	union
	{
		OverworldMovement movement;
		u32 allMovement;
	};
} OverworldMovementStruct;

namespace Input
{
	class OverworldInputEventHandler : public InputHandler
	{
	private:
		OverworldMovementStruct movementWord;
	public:
		OverworldInputEventHandler();
		~OverworldInputEventHandler();
		void OnPressA();
		void OnPressB();
		void OnPressStart();
		void OnPressSelect();
		void OnPressL();
		void OnPressR();
		void OnPressUp();
		void OnPressDown();
		void OnPressLeft();
		void OnPressRight();
		void Update();
	};
}

#endif /* OVERWORLDINPUTEVENTHANDLER_H_ */
