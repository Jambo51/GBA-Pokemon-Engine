/*
 * WhiteoutCallback.cpp
 *
 *  Created on: 1 Jun 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/WhiteoutCallback.h"
#include "Core.h"
#include "Scenes.h"

using namespace Core;
using namespace Core::Data;
using namespace Scenes::Overworld;
using namespace Scenes;

namespace Callbacks
{
	WhiteoutCallback::WhiteoutCallback()
	{

	}

	WhiteoutCallback::~WhiteoutCallback()
	{

	}

	void WhiteoutCallback::DoCallback()
	{
		const HealingPlace &hp = Game::GetHealingPlace();
		Variables::SetVar(LASTTALKED, hp.spriteID);
		Game::SetCurrentMap(PrimaryOverworld::GetMapHeaderFromBankAndMapID(hp.mapLocation.mapBank, hp.mapLocation.map));
		Scene* ow = new PrimaryOverworld();
		SceneManager::SetScene(ow);
	}
}


