#include "EntityManager.h"
#include "Entity.h"

EWRAM_LOCATION ALIGN(4) LinkedList EntityManager::_entities = LinkedList();

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
		((Entity*)_entities.At(i))->Initialise();
	}
	return true;
}

bool EntityManager::LoadContent()
{
	for (int i = 0; i < _entities.Size(); i++)
	{
		((Entity*)_entities.At(i))->LoadContent();
	}
	return true;
}

void EntityManager::UnloadContent()
{
	for (int i = 0; i < _entities.Size(); i++)
	{
		((Entity*)_entities.At(i))->UnloadContent();
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
			u32 urgency = ((Entity*)_entities.At(i))->EvaluatePositionScore();
			for (int j = i + 1; j < _entities.Size(); j++)
			{
				if (((Entity*)_entities.At(j))->EvaluatePositionScore() > urgency)
				{
					int temp = order[i];
					order[i] = order[j];
					order[j] = temp;
				}
			}
		}
		for (int i = 0; i < _entities.Size(); i++)
		{
			OAMObject* obj = ((Entity*)_entities.At(order[i]))->GetObject();
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
		delete (Entity*)_entities.At(i);
	}
}

bool EntityManager::Update()
{
	for (int i = 0; i < _entities.Size(); i++)
	{
		((Entity*)_entities.At(i))->Update();
	}
	return true;
}

void EntityManager::RegisterEntity(Entity* entity)
{
	_entities.PushBack(entity);
}

void EntityManager::RemoveEntity(Entity* entity)
{
	_entities.Remove(entity);
}
