/*
 * BackgroundFunctions.h
 *
 *  Created on: Aug 20, 2014
 *      Author: Gamer2020
 */

#ifndef BACKGROUNDFUNCTIONS_H_
#define BACKGROUNDFUNCTIONS_H_

#include "Rectangle.h"

#define LAYER0DEFAULT 31
#define LAYER1DEFAULT 29
#define LAYER2DEFAULT 28
#define LAYER3DEFAULT 30

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
		static void ClearAllBackgrounds();
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
		static void SetFirstTargetPixel(u32 layer, u32 window);
		static void SetAllFirstTargetPixel(u32 window);
		static void ClearFirstTargetPixel(u32 layer, u32 window);
		static void ClearAllFirstTargetPixel(u32 window);
		static void SetWindowBrightnessCoefficient(u32 coefficient);
		static void SetEVAAlphaBlend(u32 value);
		static void SetEVBAlphaBlend(u32 value);
	};
}


#endif /* BACKGROUNDFUNCTIONS_H_ */
