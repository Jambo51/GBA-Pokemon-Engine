#pragma once

#include "Vector2D.h"
#include "OAMObject.h"

class Entity
{
protected:
	Vector2D _position;
	bool _isVisible;
	OAMObject* _object;
	Entity(const Vector2D &location, u32 backgroundLevel = 0, bool isAlive = true, bool isVisible = true);
public:
	virtual ~Entity() { }
	const Vector2D & GetPosition() const { return _position;}
	void SetPosition(const Vector2D &newPos) { _position = newPos; }
	virtual bool Initialise() = 0;
	virtual bool LoadContent() = 0;
	virtual bool Update();
	virtual void UnloadContent() = 0;
	u32 EvaluatePositionScore() const;
	OAMObject* GetObject() const { return _object; }
};
