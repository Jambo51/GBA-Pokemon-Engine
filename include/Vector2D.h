/*
 * Vector2D.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef VECTOR2D_H_
#define VECTOR2D_H_

#include "GlobalDefinitions.h"

class Vector2D
{
private:
	s16 xPos;
	s16 yPos;
public:
	Vector2D()
	{
		xPos = 0;
		yPos = 0;
	}
	Vector2D(s16 x, s16 y)
	{
		xPos = x;
		yPos = y;
	}
	virtual ~Vector2D();

	s16 GetX() const { return xPos; }
	s16 GetY() const { return yPos; }
	void SetX(s16 value) { xPos = value; }
	void SetY(s16 value) { yPos = value; }

	Vector2D operator+(const Vector2D &rhs)
	{
		return Vector2D(xPos + rhs.GetX(), yPos + rhs.GetY());
	}

	Vector2D operator-(const Vector2D &rhs)
	{
		return Vector2D(xPos - rhs.GetX(), yPos - rhs.GetY());
	}

	Vector2D operator*(const u16 rhs)
	{
		return Vector2D(xPos * rhs, yPos * rhs);
	}

	void operator+=(const Vector2D &rhs)
	{
		this->xPos += rhs.GetX();
		this->yPos += rhs.GetY();
	}

	void operator-=(const Vector2D &rhs)
	{
		this->xPos -= rhs.GetX();
		this->yPos -= rhs.GetY();
	}

	void operator*=(const s16 rhs)
	{
		this->xPos *= rhs;
		this->yPos *= rhs;
	}

	bool operator==(const Vector2D &rhs)
	{
		return this->xPos == rhs.GetX() && this->yPos == rhs.GetY();
	}

	bool operator!=(const Vector2D &rhs)
	{
		return this->xPos != rhs.GetX() || this->yPos != rhs.GetY();
	}
};

#endif /* VECTOR2D_H_ */
