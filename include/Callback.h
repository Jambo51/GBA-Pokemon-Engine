/*
 * Callback.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef CALLBACK_H_
#define CALLBACK_H_

#include "GlobalDefinitions.h"

class Callback
{
private:
	u32 data;
public:
	Callback(u32 callbackData);
	virtual ~Callback();
	virtual void Update() = 0;
};

#endif /* CALLBACK_H_ */
