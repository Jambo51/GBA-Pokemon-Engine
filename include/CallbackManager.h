/*
 * CallbackManager.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef CALLBACKMANAGER_H_
#define CALLBACKMANAGER_H_

#include "LinkedList.h"

class Callback;

class CallbackManager
{
private:
	static LinkedList callbacks;
	CallbackManager();
	~CallbackManager();
public:
	static void AddCallback(Callback* callback);
	static void RemoveCallback(Callback* callback);
	static void Update();
};

#endif /* CALLBACKMANAGER_H_ */
