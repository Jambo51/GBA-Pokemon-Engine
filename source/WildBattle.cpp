/*
 * WildBattle.cpp
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#include "Scenes/Battles/WildBattle.h"
#include "Core/Game.h"
#include "Audio/SoundEngine.h"

using namespace Core;
using namespace Audio;

namespace Scenes
{
	namespace Battles
	{
		WildBattle::WildBattle(const BattleTypeStruct &bts) : Battle(bts)
		{
			// TODO Auto-generated constructor stub
			SoundEngine::PlaySong(CalculateBattleTrack(), 0);
		}

		WildBattle::~WildBattle()
		{
			// TODO Auto-generated destructor stub
		}
	}
}
