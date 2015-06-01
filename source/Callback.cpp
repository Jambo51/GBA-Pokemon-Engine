/*
 * Callback.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Callback.h"
#include "CallbackManager.h"

Callback::Callback(u32 callbackData)
{
	// TODO Auto-generated constructor stub
	data = callbackData;
	CallbackManager::AddCallback(this);
}

Callback::~Callback()
{
	// TODO Auto-generated destructor stub
}

