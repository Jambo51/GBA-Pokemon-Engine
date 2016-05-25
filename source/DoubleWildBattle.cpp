/*
 * DoubleWildBattle.cpp
 *
 *  Created on: 24 May 2016
 *      Author: CoolerMaster
 */

#include "Scenes/Battles/DoubleWildBattle.h"
#include "Core/Pokemon/Pokemon.h"
#include "Core/Game.h"

using namespace Core;

namespace Scenes
{
	namespace Battles
	{
		DoubleWildBattle::DoubleWildBattle(const BattleTypeStruct &bts) : WildBattle(bts)
		{

		}

		DoubleWildBattle::~DoubleWildBattle()
		{

		}

		void DoubleWildBattle::Update()
		{
			if (currentStatus == 0)
			{
				battleData.battleBanks[NumBattlers] = 2 << battleType.info.isDoubleBattle;
				battleData.pokemonStats = new PokemonBattleData[battleData.battleBanks[NumBattlers]];
			}
			switch (currentStatus)
			{
				case 0:
				case 1:
					CopyBattleDataFromPokemon(Game::GetPartyPokemon(0), 0);
					CopyBattleDataFromPokemon(&enemyPokemon[0], 1);
					if (battleType.info.isDoubleBattle)
					{
						CopyBattleDataFromPokemon(Game::GetPartyPokemon(1), 2);
						CopyBattleDataFromPokemon(&enemyPokemon[1], 3);
					}
					currentStatus++;
					break;
				default:
					break;
			}
		}

		void DoubleWildBattle::OnEnter()
		{

		}

		void DoubleWildBattle::OnExit()
		{

		}
	}
}


