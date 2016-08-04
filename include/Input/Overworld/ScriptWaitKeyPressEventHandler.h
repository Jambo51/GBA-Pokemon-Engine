/*
 * ScriptWaitKeyPressEventHandler.h
 *
 *  Created on: 15 Jul 2015
 *      Author: Jamie
 */

#ifndef SCRIPTWAITKEYPRESSEVENTHANDLER_H_
#define SCRIPTWAITKEYPRESSEVENTHANDLER_H_

#include "Input/InputHandler.h"

namespace Tasks
{
	namespace ScriptRunners
	{
		class ScriptRunner;
	}
}

namespace Input
{
	class ScriptWaitKeyPressEventHandler : public InputHandler
	{
	private:
		Tasks::ScriptRunners::ScriptRunner* runner;
	public:
		ScriptWaitKeyPressEventHandler(Tasks::ScriptRunners::ScriptRunner* runner);
		~ScriptWaitKeyPressEventHandler();
		bool OnPressA();
		bool OnPressB();
	};
}

#endif /* SCRIPTWAITKEYPRESSEVENTHANDLER_H_ */
