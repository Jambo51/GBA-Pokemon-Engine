#include "Entities/EntityManager.h"
#include "Entities/Entity.h"

namespace Entities
{
	EWRAM_LOCATION ALIGN(4) Collections::Lists::LinkedList<Entity*> EntityManager::_entities = Collections::Lists::LinkedList<Entity*>();

	EntityManager::EntityManager(void)
	{
	}


	EntityManager::~EntityManager(void)
	{
	}

	bool EntityManager::Initialise()
	{
		for (int i = 0; i < _entities.Size(); i++)
		{
			_entities[i]->Initialise();
		}
		return true;
	}

	bool EntityManager::LoadContent()
	{
		for (int i = 0; i < _entities.Size(); i++)
		{
			_entities[i]->LoadContent();
		}
		return true;
	}

	void EntityManager::UnloadContent()
	{
		for (int i = 0; i < _entities.Size(); i++)
		{
			_entities[i]->UnloadContent();
		}
	}

	void EntityManager::Render()
	{
		if (_entities.Size() > 0)
		{
			int* order = new int[_entities.Size()];
			for (int i = 0; i < _entities.Size(); i++)
			{
				order[i] = i;
			}
			for (int i = 0; i < _entities.Size(); i++)
			{
				u32 urgency = _entities[i]->EvaluatePositionScore();
				for (int j = i + 1; j < _entities.Size(); j++)
				{
					if (_entities[j]->EvaluatePositionScore() > urgency)
					{
						int temp = order[i];
						order[i] = order[j];
						order[j] = temp;
					}
				}
			}
			for (int i = 0; i < _entities.Size(); i++)
			{
				OAMObject* obj = _entities[order[i]]->GetObject();
				if (obj)
				{
					obj->Update(i);
				}
			}
			delete[] order;
		}
	}

	void EntityManager::Clear()
	{
		for (int i = 0; i < _entities.Size(); i++)
		{
			delete _entities[i];
		}
	}

	bool EntityManager::Update()
	{
		for (int i = 0; i < _entities.Size(); i++)
		{
			_entities[i]->Update();
		}
		return true;
	}

	void EntityManager::TimeTick(u32 time)
	{
		for (int i = 0; i < _entities.Size(); i++)
		{
			_entities[i]->TimeTick(time);
		}
	}

	void EntityManager::RegisterEntity(Entity* entity)
	{
		_entities.PushBack(entity);
	}

	void EntityManager::RemoveEntity(Entity* entity)
	{
		_entities.Remove(entity);
	}
}
