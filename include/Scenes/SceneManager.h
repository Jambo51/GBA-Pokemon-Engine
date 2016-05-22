/*
 * GameModeManager.h
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#ifndef SOURCE_GAMEMODEMANAGER_H_
#define SOURCE_GAMEMODEMANAGER_H_

namespace Scenes
{
	class Scene;

	class SceneManager
	{
	private:
		static Scene* scene;
		static Scene* newScene;
		SceneManager();
		~SceneManager();
	public:
		static void SetScene(Scene* newScreen);
		static Scene* GetScene() { return scene; }
		static void Update();
		static void RunExitCallback();
		static void RunEnterCallback();
	};
}

#endif /* SOURCE_GAMEMODEMANAGER_H_ */
