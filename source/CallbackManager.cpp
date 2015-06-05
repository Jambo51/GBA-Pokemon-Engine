/*
 * CallbackManager.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "CallbackManager.h"
#include "Callback.h"

EWRAM_LOCATION ALIGN(4) LinkedList CallbackManager::callbacks = LinkedList();

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
	callbacks.PushBack((void*)callback);
}

void CallbackManager::RemoveCallback(Callback* callback)
{
	callbacks.Remove((void*)callback);
	delete callback;
}

void CallbackManager::Update()
{
	for (int i = 0; i < callbacks.Size(); i++)
	{
		((Callback*)callbacks.At(i))->Update();
	}
}
