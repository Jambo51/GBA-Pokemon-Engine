#pragma once

#include "LinkedList.h"

namespace Entities
{
	class Entity;

	class EntityManager
	{
	private:
		static Collections::Lists::LinkedList<Entity> _entities;
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
		static void RegisterEntity(Entity* entity);
		static void RemoveEntity(Entity* entity);
		static void TimeTick(u32 time);
	};
}
