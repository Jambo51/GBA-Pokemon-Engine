#pragma once

#include "SmartPointer.h"
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
		SmartPointer<OAMObject> object;
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
		u32 EvaluatePositionScore();
		const SmartPointer<OAMObject> &GetObject() const { return object; }
		void SetOAMPosition(const Vector2D &pos) { object->SetPosition(OAMObject::CalculateRelativePosition(pos)); }
		void HFlip(bool newValue) { if (object) { object->HFlip(newValue); } }
		bool HFlip() { if (object) { return object->HFlip(); } return false; }
		void VFlip(bool newValue) { if (object) { object->VFlip(newValue); } }
		bool VFlip() { if (object) { return object->VFlip(); } return false; }
	};
}
