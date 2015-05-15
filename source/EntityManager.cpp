#include "EntityManager.h"
#include "Entity.h"

EWRAM_LOCATION ALIGN(4) LinkedList<Entity*>* EntityManager::_entities = new LinkedList<Entity*>();

EntityManager::EntityManager(void)
{
}


EntityManager::~EntityManager(void)
{
}

bool EntityManager::Initialise()
{
	if (!_entities)
	{
		_entities = new LinkedList<Entity*>();
	}
	for (int i = 0; i < _entities->Size(); i++)
	{
		_entities->At(i)->Initialise();
	}
	return true;
}

bool EntityManager::LoadContent()
{
	for (int i = 0; i < _entities->Size(); i++)
	{
		_entities->At(i)->LoadContent();
	}
	return true;
}

void EntityManager::UnloadContent()
{
	for (int i = 0; i < _entities->Size(); i++)
	{
		_entities->At(i)->UnloadContent();
	}
}

LinkedList<Entity*>* EntityManager::GetRenderOrder()
{
	LinkedList<Entity*>* order = new LinkedList<Entity*>();
	for (int i = 0; i < _entities->Size(); i++)
	{
		int position = -1;
		u32 urgency = _entities->At(i)->EvaluatePositionScore();
		for (int j = 0; j < order->Size(); j++)
		{
			Entity* e = order->At(j);
			if (e->EvaluatePositionScore() < urgency)
			{
				position = j;
				break;
			}
		}
		if (position >= 0)
		{
			order->PushAt(_entities->At(i), position);
		}
		else
		{
			order->PushBack(_entities->At(i));
		}
	}
	return order;
}

void EntityManager::Clear()
{
	for (int i = 0; i < _entities->Size(); i++)
	{
		delete _entities->At(i);
	}
	_entities->Clear();
}

void EntityManager::ShutDown()
{
	for (int i = 0; i < _entities->Size(); i++)
	{
		delete _entities->At(i);
	}
	delete _entities;
	_entities = NULL;
}

bool EntityManager::Update()
{
	for (int i = 0; i < _entities->Size(); i++)
	{
		_entities->At(i)->Update();
	}
	return true;
}

void EntityManager::RegisterEntity(Entity* entity)
{
	_entities->PushBack(entity);
}

void EntityManager::RemoveEntity(Entity* entity)
{
	_entities->Remove(entity);
}
