#include "Entity.h"
#include "EntityManager.h"


Entity::Entity(const Vector2D &location)
	: _position(location), _isAlive(true), _isVisible(true)
{
	EntityManager::RegisterEntity(this);
}

u32 Entity::EvaluatePositionScore() const
{
	return _position.GetX() + _position.GetY();
}
