/*
 * BackgroundFunctions.h
 *
 *  Created on: Aug 20, 2014
 *      Author: Gamer2020
 */

#ifndef BACKGROUNDFUNCTIONS_H_
#define BACKGROUNDFUNCTIONS_H_

#include "Rectangle.h"

namespace Core
{
	class BackgroundFunctions
	{
	private:
		BackgroundFunctions() { }
		~BackgroundFunctions() { }
	public:
		static void SetBackgroundsToDefault();
		static void ClearBackground(u32 blockID);
		static void SetLayer(u32 layerID, u32 layerPos, bool isText = false);
		static void CreateWindow(u32 windowID, const Rectangle &dimensions);
		static void CreateWindow(u32 windowID, const Vector2D &topLeft, const Vector2D &bottomRight);
		static void EnableWindowEffect(u32 windowID, u32 effectID);
		static void DisableWindowEffect(u32 windowID, u32 effectID);
		static void EraseWindow(u32 windowID);
		static void SetWindowPosition(u32 windowID, const Rectangle &newPosition);
		static void SetWindowPosition(u32 windowID, const Vector2D &newUpperLeft, const Vector2D &newLowerRight);
		static void AlterWindowPosition(u32 windowID, const Rectangle &delta);
		static void AlterWindowPosition(u32 windowID, const Vector2D &upperLeftDelta, const Vector2D &lowerRightDelta);
	};
}


#endif /* BACKGROUNDFUNCTIONS_H_ */
