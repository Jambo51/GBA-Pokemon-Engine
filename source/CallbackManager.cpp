/*
 * CallbackManager.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "CallbackManager.h"
#include "Callback.h"

EWRAM_LOCATION ALIGN(4) LinkedList<Callback*>* CallbackManager::callbacks = new LinkedList<Callback*>();

CallbackManager::CallbackManager()
{
	// TODO Auto-generated constructor stub

}

CallbackManager::~CallbackManager()
{
	// TODO Auto-generated destructor stub
}

void CallbackManager::AddCallback(Callback* callback)
{
	callbacks->PushBack(callback);
}

void CallbackManager::RemoveCallback(Callback* callback)
{
	callbacks->Remove(callback);
}

void CallbackManager::Update()
{
	for (int i = 0; i < callbacks->Size(); i++)
	{
		callbacks->At(i)->Update();
	}
}
