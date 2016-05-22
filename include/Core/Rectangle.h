/*
 * Rectangle.h
 *
 *  Created on: 13 Jun 2015
 *      Author: Jamie
 */

#ifndef RECTANGLE_H_
#define RECTANGLE_H_

#include "Vector2D.h"

class Rectangle
{
private:
	Vector2D upperLeftCorner;
	Vector2D lowerRightCorner;
public:
	Rectangle();
	Rectangle(const Vector2D &upperLeftCorner, const Vector2D &lowerRightCorner);
	Rectangle(s16 x1, s16 y1, s16 x2, s16 y2);
	~Rectangle();
	bool IsTileWithin(const Vector2D &position);
	bool IsTileWithin(s16 x, s16 y);
	const Vector2D & GetUpperLeft() const { return upperLeftCorner; }
	const Vector2D & GetLowerRight() const { return lowerRightCorner; }
};

#endif /* RECTANGLE_H_ */
