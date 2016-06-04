/*
 * LoadGameScreen.h
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_LOADGAMESCREEN_H_
#define INCLUDE_LOADGAMESCREEN_H_

#include "Scenes/Scene.h"

namespace Scenes
{
	class LoadGameScreen : public Scene
	{
	private:
		u32 menuPosition;
	public:
		LoadGameScreen(u32 previousMenuPosition = 0);
		~LoadGameScreen();
		void Update();
		void OnEnter();
		void OnExit();
		void IncrementMenuPosition();
		void DecrementMenuPosition();
		bool SetExitContext(u32 contextGetType = 0);
	};
}

#endif /* INCLUDE_LOADGAMESCREEN_H_ */
