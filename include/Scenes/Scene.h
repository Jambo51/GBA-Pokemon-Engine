/*
 * GameScreen.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef GAMESCREEN_H_
#define GAMESCREEN_H_

#include "GlobalDefinitions.h"

namespace Scenes
{
	class Scene
	{
	protected:
		u32 exitContext;
	public:
		Scene();
		virtual ~Scene();
		virtual void Update() = 0;
		virtual void OnEnter() = 0;
		virtual void OnExit() = 0;
		virtual bool SetExitContext(u32 value)
		{
			exitContext = value;
			return true;
		}
		u32 GetExitContext()
		{
			return exitContext;
		}
	};
}

#endif /* GAMESCREEN_H_ */
