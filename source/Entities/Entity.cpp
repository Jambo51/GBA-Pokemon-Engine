#include "Entities/Entity.h"
#include "Entities/EntityManager.h"

using namespace Core;

namespace Entities
{
	Entity::Entity(const Vector2D &location, u32 backgroundLevel, bool isAlive, bool isVisible)
		: _position(location), _isVisible(isVisible)
	{
		EntityManager::RegisterEntity(this);
	}

	u32 Entity::EvaluatePositionScore()
	{
		return _position.GetX() + _position.GetY() + 0x200 * (3 - object->GetPriority());
	}

	bool Entity::Update()
	{
		return true;
	}
}
