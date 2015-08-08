/*
 * DoubleTrainerBattle.cpp
 *
 *  Created on: 24 Jun 2015
 *      Author: Jamie
 */

#include "DoubleTrainerBattle.h"
#include "Maths.h"
#include "SoundEngine.h"
#include "Game.h"
#include "Moves.h"

DoubleTrainerBattle::DoubleTrainerBattle(const BattleTypeStruct &bts, u16 trainerID1, const char* afterText1, u16 trainerID2, const char* afterText2) : TrainerBattle(bts, trainerID1, afterText1)
{
	// TODO Auto-generated constructor stub
	delete battleData.trainerData;
	memset32((void*)&enemyBank2, 0, (sizeof(Pokemon) * 6) >> 2);
	battleData.trainerData = new TrainerBattleData[2];
	battleData.trainerData[0].pointerToData = (TrainerData*)&trainerBattleDataTable[trainerID1];
	battleData.trainerData[0].afterBattleText = (char*)afterText1;
	battleData.trainerData[0].trainerID = Maths::GetRandom32BitValue();
	battleData.trainerData[1].pointerToData = (TrainerData*)&trainerBattleDataTable[trainerID2];
	battleData.trainerData[1].afterBattleText = (char*)afterText2;
	battleData.trainerData[1].trainerID = Maths::GetRandom32BitValue();
	SoundEngine::PlaySong(CalculateBattleTrack(), 0);
}

DoubleTrainerBattle::~DoubleTrainerBattle()
{
	// TODO Auto-generated destructor stub
	delete[] battleData.trainerData;
}

void DoubleTrainerBattle::Update()
{
	if (currentStatus == 0)
	{
		battleData = BattleData();
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
			TrainerData* data = battleData.trainerData[0].pointerToData;
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
			}
			else
			{
				currentStatus = 5;
			}
			currentStatus++;
			break;
		}
		{
			TrainerData* data = battleData.trainerData[1].pointerToData;
			if (currentStatus - 6 < data->numPokemon)
			{
				Pokemon* thePokemon = Pokemon::GenerateTrainerPokemon(data[0].pokemonData[currentStatus - 6].species, data[0].pokemonData[currentStatus - 6].level, (char*)&data[0].name, battleData.trainerData[0].trainerID, 0);
				if (data[0].battleVarietyBits.isHeldItemsBattle)
				{
					if (data[0].battleVarietyBits.isMovesetBattle)
					{
						u32 j;
						for (j = 0; j < 4; j++)
						{
							u16 moveID = data[0].pokemonDataMoves[currentStatus - 6].moves[j];
							const MoveData &moveData = *Moves::GetMoveDataByIndex(moveID);
							thePokemon->Encrypt(Move1 + j, moveID);
							thePokemon->Encrypt(Move1PP + j, moveData.basePP);
						}
						thePokemon->Encrypt(HeldItem, data[0].pokemonDataMoves[currentStatus - 6].mainData.heldItem);
					}
					else
					{
						thePokemon->Encrypt(HeldItem, data[0].pokemonData[currentStatus - 6].heldItem);
					}
				}
				else if (data[0].battleVarietyBits.isMovesetBattle)
				{
					u32 j;
					for (j = 0; j < 4; j++)
					{
						u16 moveID = data[0].pokemonDataMoves[currentStatus - 6].moves[j];
						const MoveData &moveData = *Moves::GetMoveDataByIndex(moveID);
						thePokemon->Encrypt(Move1 + j, moveID);
						thePokemon->Encrypt(Move1PP + j, moveData.basePP);
					}
				}
				enemyPokemon[currentStatus] = *thePokemon;
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
