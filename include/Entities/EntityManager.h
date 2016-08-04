#pragma once

#include "Collections/Lists/ArrayList.h"
#include "SmartPointer.h"
#include "Entity.h"

namespace Entities
{
	class EntityManager
	{
	private:
		static Collections::Lists::ArrayList<SmartPointer<Entity> > _entities;
		EntityManager(void);
		~EntityManager(void);
	public:
		static bool Initialise();
		static bool LoadContent();
		static bool Update();
		static void UnloadContent();
		static void Render();
		static void Clear();
		static void ShutDown();
		static void RegisterEntity(SmartPointer<Entity> entity);
		static void RemoveEntity(SmartPointer<Entity> entity);
		static void TimeTick(u32 time);
	};
}
