/*
 * TitleScreen.h
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#ifndef TITLESCREEN_H_
#define TITLESCREEN_H_

#include "Scene.h"
#include "GlobalDefinitions.h"

namespace Scenes
{
	class TitleScreen : public Scene
	{
	private:
		u32 counter:31;
		u32 status:1;
	public:
		TitleScreen();
		~TitleScreen();
		void Update();
		void OnExit();
		void OnEnter();
	};
}
#endif /* TITLESCREEN_H_ */
