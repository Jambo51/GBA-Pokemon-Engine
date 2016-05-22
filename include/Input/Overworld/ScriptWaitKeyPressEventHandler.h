/*
 * ScriptWaitKeyPressEventHandler.h
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#ifndef SCRIPTWAITKEYPRESSEVENTHANDLER_H_
#define SCRIPTWAITKEYPRESSEVENTHANDLER_H_

#include "InputEventHandler.h"

class ScriptRunner;

class ScriptWaitKeyPressEventHandler : public InputEventHandler
{
private:
	ScriptRunner* runner;
public:
	ScriptWaitKeyPressEventHandler(ScriptRunner* runner);
	~ScriptWaitKeyPressEventHandler();
	void OnPressA();
	void OnPressB();
};

#endif /* SCRIPTWAITKEYPRESSEVENTHANDLER_H_ */
