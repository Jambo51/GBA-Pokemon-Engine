/*
 * SceneManager.cpp
 *
 *  Created on: 13 May 2015
 *      Author: Jamie
 */

#include "GlobalDefinitions.h"
#include "Scenes/SceneManager.h"
#include "Scenes/Scene.h"
#include "Core/Game.h"

namespace Scenes
{
	EWRAM_LOCATION ALIGN(4) SmartPointer<Scene> SceneManager::scene = SmartPointer<Scene>();
	EWRAM_LOCATION ALIGN(4) SmartPointer<Scene> SceneManager::newScene = SmartPointer<Scene>();

	SceneManager::SceneManager()
	{
		// TODO Auto-generated constructor stub

	}

	SceneManager::~SceneManager()
	{
		// TODO Auto-generated destructor stub
	}

	void SceneManager::SetScene(SmartPointer<Scene> newscene)
	{
		newScene = newscene;
	}

	void SceneManager::Update()
	{
		if (newScene)
		{
			scene = newScene;
			newScene = NULL;
		}
		if (scene)
		{
			scene->Update();
		}
	}

	void SceneManager::RunExitCallback()
	{
		if (scene)
		{
			scene->OnExit();
		}
	}

	void SceneManager::RunEnterCallback()
	{
		if (scene)
		{
			scene->OnEnter();
		}
	}
}
