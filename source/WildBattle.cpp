/*
 * WildBattle.cpp
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#include "WildBattle.h"
#include "Game.h"
#include "SoundEngine.h"

WildBattle::WildBattle(const BattleTypeStruct &bts) : BattleScreen(bts)
{
	// TODO Auto-generated constructor stub
	SoundEngine::PlaySong(CalculateBattleTrack(), 0);
}

WildBattle::~WildBattle()
{
	// TODO Auto-generated destructor stub
}

void WildBattle::Update()
{
	if (currentStatus == 0)
	{
		battleData = BattleData();
		battleData.numBattlers = 2 << battleType.info.isDoubleBattle;
		battleData.pokemonStats = new PokemonBattleData[battleData.numBattlers];
	}
	switch (currentStatus)
	{
		case 0:
		case 1:
		{
			if (currentStatus < battleData.numBattlers >> 1)
			{
				const WildData &data = *Game::GetCurrentMap().wildDataLocation;
				Pokemon* thePokemon = Pokemon::GenerateWildPokemonFromData(data, battleType);
				enemyPokemon[currentStatus] = *thePokemon;
				delete thePokemon;
			}
			else
			{
				currentStatus = 1;
			}
			currentStatus++;
			break;
		}
		case 2:
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
