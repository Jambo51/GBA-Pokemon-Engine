/*
 * Game.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Game.h"
#include "Pokemon.h"

#define PartyLength 6

EWRAM_LOCATION ALIGN(4) Pokemon Game::partyPokemon[PartyLength];
EWRAM_LOCATION ALIGN(4) PokemonStorageBoxes Game::storageBoxes;
EWRAM_LOCATION ALIGN(4) Pokemon Game::temporaryHoldingPokemon;
EWRAM_LOCATION ALIGN(4) Bag Game::bag;
EWRAM_LOCATION ALIGN(4) Player Game::player;
EWRAM_LOCATION ALIGN(4) MapHeader Game::currentMap;
EWRAM_LOCATION ALIGN(1) char Game::buffers[NUMBUFFERS][BUFFERLENGTH];

Game::Game()
{
	// TODO Auto-generated constructor stub

}

Game::~Game()
{
	// TODO Auto-generated destructor stub
}

void Game::Update()
{

}

bool Game::AddNewPokemon(const Pokemon &p)
{
	for (int i = 0; i < 6; i++)
	{
		if (partyPokemon[i].Decrypt(PersonalityID) == 0)
		{
			partyPokemon[i] = p;
			return true;
		}
	}
	if (storageBoxes.info.numPokemon == POKEMONPERBOX * NUMBOXES)
	{
		return false;
	}
	for (int i = 0; i < POKEMONPERBOX; i++)
	{
		if (storageBoxes.boxData[storageBoxes.info.currentBoxID][i].Decrypt(PersonalityID) == 0)
		{
			storageBoxes.boxData[storageBoxes.info.currentBoxID][i] = p.GetMainData();
			storageBoxes.info.numPokemon++;
			return true;
		}
	}
	for (int i = 0; i < NUMBOXES; i++)
	{
		for (int j = 0; j < POKEMONPERBOX; j++)
		{
			if (storageBoxes.boxData[i][j].Decrypt(PersonalityID) == 0)
			{
				storageBoxes.boxData[i][j] = p.GetMainData();
				storageBoxes.info.numPokemon++;
				storageBoxes.info.currentBoxID = i;
				return true;
			}
		}
	}
	return false;
}

u32 Game::CountPokemon(Pokemon* location, u32 length)
{
	u32 counter = 0;
	u32 i;
	for (i = 0; i < length; i++)
	{
		if (location[i].Decrypt(PersonalityID) != 0)
		{
			counter++;
		}
	}
	return counter;
}

u32 Game::CountAbridgedPokemon(AbridgedPokemon* location, u32 length)
{
	u32 counter = 0;
	u32 i;
	for (i = 0; i < length; i++)
	{
		if (location[i].Decrypt(PersonalityID) != 0)
		{
			counter++;
		}
	}
	return counter;
}

u32 Game::CountPartyPokemon()
{
	return CountPokemon((Pokemon*)&partyPokemon, 6);
}

u32 Game::CountBoxPokemon(u32 boxID)
{
	u32 address = (u32)&storageBoxes.boxData;
	address += POKEMONPERBOX * boxID * sizeof(AbridgedPokemon);
	return CountAbridgedPokemon((AbridgedPokemon*)address, POKEMONPERBOX);
}

u32 Game::CountAllBoxPokemon()
{
	return storageBoxes.info.numPokemon;
}
