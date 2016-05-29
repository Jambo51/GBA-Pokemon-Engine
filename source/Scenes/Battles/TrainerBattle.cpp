/*
 * TrainerBattle.cpp
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#include "Scenes/Battles/TrainerBattle.h"
#include "Audio/SoundEngine.h"
#include "Core/Game.h"
#include "Core/Maths.h"
#include "Tasks/ScriptRunners/BattleTransitionScriptRunner.h"
#include "Core/Data/Moves.h"
#include "LibraryHeaders/libbattletranscripts.h"

using namespace Core;
using namespace Audio;

namespace Scenes
{
	namespace Battles
	{
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
				{ Class_Evil_Team, (void*)&TestBattleTransitionScript },
				{ Class_Evil_Team_Duo, (void*)&TestBattleTransitionScript }
		};

		TrainerBattle::TrainerBattle(const BattleTypeStruct &bts, u32 trainerIDAndInformation, const char* afterText, const u8* afterScript) : Battle(bts)
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
			//new BattleTransitionScriptRunner(script, this);
			SoundEngine::PlaySong(CalculateBattleTrack(), 0);
		}

		TrainerBattle::~TrainerBattle()
		{
			// TODO Auto-generated destructor stub
			delete battleData.trainerData;
		}

		u32 TrainerBattle::GetEncounterTrackID(u32 trainerID)
		{
			return trainerBattleDataTable[trainerID].introThemeSlot;
		}
	}
}
