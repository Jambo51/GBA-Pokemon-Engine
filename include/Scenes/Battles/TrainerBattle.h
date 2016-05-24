/*
 * TrainerBattle.h
 *
 *  Created on: 23 Jun 2015
 *      Author: Jamie
 */

#ifndef TRAINERBATTLE_H_
#define TRAINERBATTLE_H_

#include "Scenes/Battles/Battle.h"

#define NumTrainerBattleTransitions 2

namespace Scenes
{
	namespace Battles
	{
		class TrainerBattle : public Battle
		{
		protected:
			static TrainerData trainerBattleDataTable[];
			static IndexTable transitionScripts[NumTrainerBattleTransitions];
		public:
			TrainerBattle(const BattleTypeStruct &bts, u32 trainerIDAndInformation, const char* afterText, const u8* afterScript = NULL);
			~TrainerBattle();
			virtual void Update();
			static u32 GetEncounterTrackID(u32 trainerID);
		};
	}
}

#endif /* TRAINERBATTLE_H_ */
