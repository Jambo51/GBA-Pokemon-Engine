/*
 * TrainerBattle.cpp
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#include "TrainerBattle.h"
#include "SoundEngine.h"
#include "Game.h"
#include "Maths.h"
#include "BattleTransitionScriptRunner.h"
#include "Moves.h"

const TrainerPokemonData weezing1 = {
		Weezing, 40, 0, 0
};

const TrainerPokemonData golem1 = {
		Golem, 40, 0, 0
};

const TrainerPokemonData pidgeot1 = {
		Pidgeot, 40, 0, 0
};

const TrainerPokemonData ekans1 = {
		Arbok, 40, 0, 0
};

const TrainerPokemonData alakazam1 = {
		Alakazam, 40, 0, 0
};

RODATA_LOCATION ALIGN(4) TrainerData TrainerBattle::trainerBattleDataTable[] = {
		{ 1, 4, 0, Class_Elite_Trainer, { 0, 0, 0, 0 }, { 'J', 'e', 'r', 'e', 'm', 'y', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&pidgeot1 },
		{ 1, 0, 0, Class_Champion, { 0, 0, 0, 0 }, { 'G', 'a', 'r', 'y', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&alakazam1 },
		{ 1, 0, 0, Class_Gym_Leader, { 0, 0, 0, 0 }, { 'B', 'r', 'o', 'c', 'k', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&golem1 },
		{ 1, 6, 0, Class_Evil_Team, { 0, 0, 0, 0 }, { 'J', 'a', 'm', 'e', 's', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&ekans1 },
		{ 1, 6, 0, Class_Evil_Team_Duo, { 0, 0, 0, 0 }, { 'J', 'e', 's', 's', 'i', 'e', ' ', '&', ' ', 'J', 'a', 'm', 'e', 's', '\0', 0 }, (TrainerPokemonData*)&weezing1 },
		{ 1, 0, 0, Class_Rival, { 0, 0, 0, 0 }, { 'G', 'a', 'r', 'y', '\0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, (TrainerPokemonData*)&pidgeot1 }
};
RODATA_LOCATION ALIGN(4) IndexTable TrainerBattle::transitionScripts[NumTrainerBattleTransitions] = {
		//{ Class_Evil_Team, (void*)&Evil_Team_Transition },
		//{ Class_Evil_Team_Duo, (void*)&Evil_Team_Transition }
};

TrainerBattle::TrainerBattle(const BattleTypeStruct &bts, u32 trainerIDAndInformation, const char* afterText, const u8* afterScript) : BattleScreen(bts)
{
	// TODO Auto-generated constructor stub
	battleData.trainerData = new TrainerBattleData();
	u16 trainerID = trainerIDAndInformation & 0xFFFF;
	battleData.trainerData->pointerToData = (TrainerData*)&trainerBattleDataTable[trainerID];
	battleData.trainerData->afterBattleText = (char*)afterText;
	battleData.trainerData->afterBattleScript = (u8*)afterScript;
	battleData.trainerData->trainerID = Maths::GetRandom32BitValue();
	u8* script = NULL;
	for (u32 i = 0; i < NumTrainerBattleTransitions; i++)
	{
		if (transitionScripts[i].index == trainerID)
		{
			script = (u8*)transitionScripts[i].pointerToData;
		}
	}
	new BattleTransitionScriptRunner(script, this);
	SoundEngine::PlaySong(CalculateBattleTrack(), 0);
}

TrainerBattle::~TrainerBattle()
{
	// TODO Auto-generated destructor stub
	delete battleData.trainerData;
}

void TrainerBattle::Update()
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
		case 2:
		case 3:
		case 4:
		case 5:
		{
			TrainerData* data = battleData.trainerData->pointerToData;
			if (currentStatus < data->numPokemon)
			{
				Pokemon* thePokemon = Pokemon::GenerateTrainerPokemon(data[0].pokemonData[currentStatus].species, data[0].pokemonData[currentStatus].level, (char*)&data[0].name, battleData.trainerData[0].trainerID, 0);
				if (data[0].battleVarietyBits.isHeldItemsBattle)
				{
					if (data[0].battleVarietyBits.isMovesetBattle)
					{
						u32 j;
						for (j = 0; j < 4; j++)
						{
							u16 moveID = data[0].pokemonDataMoves[currentStatus].moves[j];
							const MoveData &moveData = *Moves::GetMoveDataByIndex(moveID);
							thePokemon->Encrypt(Move1 + j, moveID);
							thePokemon->Encrypt(Move1PP + j, moveData.basePP);
						}
						thePokemon->Encrypt(HeldItem, data[0].pokemonDataMoves[currentStatus].mainData.heldItem);
					}
					else
					{
						thePokemon->Encrypt(HeldItem, data[0].pokemonData[currentStatus].heldItem);
					}
				}
				else if (data[0].battleVarietyBits.isMovesetBattle)
				{
					u32 j;
					for (j = 0; j < 4; j++)
					{
						u16 moveID = data[0].pokemonDataMoves[currentStatus].moves[j];
						const MoveData &moveData = *Moves::GetMoveDataByIndex(moveID);
						thePokemon->Encrypt(Move1 + j, moveID);
						thePokemon->Encrypt(Move1PP + j, moveData.basePP);
					}
				}
				enemyPokemon[currentStatus] = *thePokemon;
				delete thePokemon;
			}
			else
			{
				currentStatus = 5;
			}
			currentStatus++;
			break;
		}
		case 6:
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

u32 TrainerBattle::GetEncounterTrackID(u32 trainerID)
{
	return trainerBattleDataTable[trainerID].introThemeSlot;
}
