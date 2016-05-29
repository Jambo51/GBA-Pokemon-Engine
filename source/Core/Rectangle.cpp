/*
 * Rectangle.cpp
 *
 *  Created on: 13 Jun 2015
 *      Author: Jamie
 */

#include "Core/Rectangle.h"

namespace Core
{
	Rectangle::Rectangle()
	{
		// TODO Auto-generated constructor stub
		this->upperLeftCorner = Vector2D();
		this->lowerRightCorner = Vector2D();
	}

	Rectangle::Rectangle(const Vector2D &upperLeftCorner, const Vector2D &lowerRightCorner)
	{
		// TODO Auto-generated constructor stub
		this->upperLeftCorner = upperLeftCorner;
		this->lowerRightCorner = lowerRightCorner;
	}

	Rectangle::Rectangle(s16 x1, s16 y1, s16 x2, s16 y2)
	{
		// TODO Auto-generated constructor stub
		this->upperLeftCorner = Vector2D(x1, y1);
		this->lowerRightCorner = Vector2D(x2, y2);
	}

	Rectangle::~Rectangle()
	{
		// TODO Auto-generated destructor stub
	}

	bool Rectangle::IsTileWithin(const Vector2D &position)
	{
		return position.GetX() <= lowerRightCorner.GetX() &&
				position.GetX() >= upperLeftCorner.GetX() &&
				position.GetY() <= lowerRightCorner.GetY() &&
				position.GetY() >= upperLeftCorner.GetY();
	}

	bool Rectangle::IsTileWithin(s16 x, s16 y)
	{
		return x <= lowerRightCorner.GetX() &&
				x >= upperLeftCorner.GetX() &&
				y <= lowerRightCorner.GetY() &&
				y >= upperLeftCorner.GetY();
	}
}
