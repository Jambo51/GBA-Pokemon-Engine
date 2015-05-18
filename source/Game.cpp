/*
 * Game.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Game.h"
#include "Pokemon.h"
#include "NonPlayerCharacter.h"

#define PartyLength 6

EWRAM_LOCATION ALIGN(4) Pokemon Game::partyPokemon[PartyLength];
EWRAM_LOCATION ALIGN(4) PokemonStorageBoxes Game::storageBoxes;
EWRAM_LOCATION ALIGN(4) Pokemon Game::temporaryHoldingPokemon;
EWRAM_LOCATION ALIGN(4) Bag Game::bag;
EWRAM_LOCATION ALIGN(4) Player Game::player;
EWRAM_LOCATION ALIGN(4) MapHeader Game::currentMap;
EWRAM_LOCATION ALIGN(4) Options Game::options;
EWRAM_LOCATION ALIGN(1) char Game::buffers[NUMBUFFERS][BUFFERLENGTH];
EWRAM_LOCATION ALIGN(4) NPCData Game::overworldData[NumberOfOverworlds];

Game::Game()
{
	// TODO Auto-generated constructor stub

}

Game::~Game()
{
	// TODO Auto-generated destructor stub
}

void Game::Initialise()
{
	options.battleSwitchStyle = 0;
	options.boxOutline = 0;
	options.playAnimations = 0;
	options.stereoSound = 1;
	options.textSpeed = 2;
	options.typeValues = 0;
	options.useImperialUnits = 1;
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

void Game::StartTimer(int timerNum, int timerSetting, u16 cascadeValue)
{
	switch(timerNum)
	{
	case 0:
		REG_TM0D = cascadeValue;
		REG_TM0CNT = 0x80 | timerSetting;
		break;
	case 1:
		REG_TM1D = cascadeValue;
		REG_TM1CNT = 0x80 | timerSetting;
		break;
	case 2:
		REG_TM2D = cascadeValue;
		REG_TM2CNT = 0x80 | timerSetting;
		break;
	case 3:
		REG_TM3D = cascadeValue;
		REG_TM3CNT = 0x80 | timerSetting;
		break;
	}
}

bool Game::AddNPC(NonPlayerCharacter* npc)
{
	for (int i = 0; i < NumberOfOverworlds; i++)
	{
		if (!overworldData[i].isActive)
		{
			overworldData[i].isActive = 1;
			overworldData[i].xLocation = npc->GetPosition().GetX();
			overworldData[i].yLocation = npc->GetPosition().GetY();
			overworldData[i].dataSpriteID = npc->GetObjectID();
			overworldData[i].isMoving = 0;
			overworldData[i].directionFacing = 0;
			overworldData[i].frameDelay = 0;
			overworldData[i].isMoving = 0;
			overworldData[i].nextWalkingFrame = 0;
			overworldData[i].oamStructID = 0;
			overworldData[i].pixelsMoved = 0;
			overworldData[i].previousWalkingFrame = 0;
			overworldData[i].scriptLocation = 0;
			overworldData[i].spriteID = npc->GetSpriteIndex();
			return true;
		}
	}
	return false;
}
