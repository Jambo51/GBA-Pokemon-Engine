/*
 * GameModeManager.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef SOURCE_GAMEMODEMANAGER_H_
#define SOURCE_GAMEMODEMANAGER_H_

#include "SmartPointer.h"
#include "Scene.h"

namespace Scenes
{
	class SceneManager
	{
	private:
		static SmartPointer<Scene> scene;
		static SmartPointer<Scene> newScene;
		SceneManager();
		~SceneManager();
	public:
		static void SetScene(SmartPointer<Scene> newScreen);
		static SmartPointer<Scene> GetScene() { return scene; }
		static void Update();
		static void RunExitCallback();
		static void RunEnterCallback();
	};
}

#endif /* SOURCE_GAMEMODEMANAGER_H_ */
