/*
 * SingleTrainerBattle.cpp
 *
 *  Created on: 24 May 2016
 *      Author: CoolerMaster
 */

#include "Scenes/Battles/SingleTrainerBattle.h"
#include "Core.h"

using namespace Core;
using namespace Core::Data;

namespace Scenes
{
	namespace Battles
	{
		SingleTrainerBattle::SingleTrainerBattle(const BattleTypeStruct &bts, u16 trainerID, const char* afterText, const u8* afterBattleScript) : TrainerBattle(bts, trainerID, afterText, afterBattleScript)
		{

		}

		SingleTrainerBattle::~SingleTrainerBattle()
		{

		}

		void SingleTrainerBattle::Update()
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
						Pokemon::Pokemon* thePokemon = Pokemon::Pokemon::GenerateTrainerPokemon(data[0].pokemonData[currentStatus].species, data[0].pokemonData[currentStatus].level, (char*)&data[0].name, battleData.trainerData[0].trainerID, 0);
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

		void SingleTrainerBattle::OnEnter()
		{

		}

		void SingleTrainerBattle::OnExit()
		{

		}
	}
}


