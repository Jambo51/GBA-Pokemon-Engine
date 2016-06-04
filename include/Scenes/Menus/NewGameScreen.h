/*
 * NewGameScreen.h
 *
 *  Created on: 26 May 2015
 *      Author: Jamie
 */

#ifndef INCLUDE_NewGameScreen_H_
#define INCLUDE_NewGameScreen_H_

#include "Scenes/Scene.h"

namespace Scenes
{
	class NewGameScreen : public Scene
	{
	private:
		u32 exitContext;
		u32 menuPosition;
	public:
		NewGameScreen(u32 previousMenuPosition = 0);
		~NewGameScreen();
		void Update();
		void OnEnter();
		void OnExit();
		void IncrementMenuPosition();
		void DecrementMenuPosition();
		bool SetExitContext(u32 contextGetType = 0);
	};
}

#endif /* INCLUDE_NewGameScreen_H_ */
