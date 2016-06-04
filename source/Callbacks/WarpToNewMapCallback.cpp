/*
 * WarpToNewMapCallback.cpp
 *
 *  Created on: 1 Jun 2016
 *      Author: CoolerMaster
 */

#include "Callbacks/WarpToNewMapCallback.h"
#include "Core.h"
#include "Scenes.h"

using namespace Core;
using namespace Scenes::Overworld;
using namespace Scenes;

namespace Callbacks
{
	WarpToNewMapCallback::WarpToNewMapCallback()
	{

	}

	WarpToNewMapCallback::~WarpToNewMapCallback()
	{

	}

	void WarpToNewMapCallback::DoCallback()
	{
		PrimaryOverworld* ow = (PrimaryOverworld*)SceneManager::GetScene();
		const WarpEvent &warpData = ow->GetWarpEvent();
		NPCData* data = Game::GetNPCDataPointer();
		const MapHeader &header = PrimaryOverworld::GetMapHeaderFromBankAndMapID(warpData.mapBank, warpData.map);
		bool success = false;
		if (header.eventsLocation)
		{
			if (header.eventsLocation->warpEvents && header.eventsLocation->numWarps > warpData.warpID)
			{
				data[0].xLocation = header.eventsLocation->warpEvents[warpData.warpID].xPos;
				data[0].yLocation = header.eventsLocation->warpEvents[warpData.warpID].yPos;
				success = true;
			}
		}
		if (!success)
		{
			data[0].xLocation = 0;
			data[0].yLocation = 0;
		}
		Game::SetCurrentMap(header);
		Game::SetCamera(Vector2D(0, 8));
		ow->ResetColumn();
		ow->ResetRow();
		u16* newColours = new u16[512];
		memset32((void*)newColours, 0, (sizeof(u16) * 512) >> 3);
		ow->DrawMap(Game::GetPlayerPos(), newColours);
		data[0].dataPointer->GetPalette(newColours, header.mapType == Indoors);
		Palettes::FadeToPalette(newColours, true, HalfSecond, false, false);
	}
}


