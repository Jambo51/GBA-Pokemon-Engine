#pragma once

#include "Core/Vector2D.h"
#include "OAMObject.h"

using namespace Core;

namespace Entities
{
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
		virtual void TimeTick(u32 time) = 0;
		u32 EvaluatePositionScore() const;
		OAMObject* GetObject() const { return _object; }
		void SetOAMPosition(const Vector2D &pos) { _object->SetPosition(OAMObject::CalculateRelativePosition(pos)); }
		void HFlip(bool newValue) { if (_object) { _object->HFlip(newValue); } }
		bool HFlip() const { if (_object) { return _object->HFlip(); } return false; }
		void VFlip(bool newValue) { if (_object) { _object->VFlip(newValue); } }
		bool VFlip() const { if (_object) { return _object->VFlip(); } return false; }
	};
}
