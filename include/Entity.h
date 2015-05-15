#pragma once

#include "Vector2D.h"

class Entity
{
protected:
	Vector2D _position;
	bool _isAlive;
	bool _isVisible;
	u32 _objectID;
	Entity(const Vector2D &location);
public:
	virtual ~Entity() { }
	const Vector2D & GetPosition() const { return _position; }
	void SetPosition(const Vector2D &newPos) { _position = newPos; }
	bool IsAlive() const { return _isAlive; }
	void IsAlive(bool value) { _isAlive = value; }
	virtual bool Initialise() = 0;
	virtual bool LoadContent() = 0;
	virtual bool Update() = 0;
	virtual void UnloadContent() = 0;
	u32 EvaluatePositionScore() const;
	void SetObjectID(u32 objectID) { _objectID = objectID; }
	u32 GetObjectID() const { return _objectID; }
};
