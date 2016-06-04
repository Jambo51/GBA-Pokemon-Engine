/*
 * WelcomeToTheWorldOfPokemon.h
 *
 *  Created on: 2 Jun 2016
 *      Author: CoolerMaster
 */

#ifndef INCLUDE_SCENES_MISC_WELCOMETOTHEWORLDOFPOKEMON_H_
#define INCLUDE_SCENES_MISC_WELCOMETOTHEWORLDOFPOKEMON_H_

#include "Scenes/Scene.h"

namespace Scenes
{
	namespace Misc
	{
		class WelcomeToTheWorldOfPokemon : public Scene
		{
			private:
				u32 currentInnerScene;
			public:
				WelcomeToTheWorldOfPokemon();
				~WelcomeToTheWorldOfPokemon();
				void Update();
				void OnEnter();
				void OnExit();
		};
	}
}

#endif /* INCLUDE_SCENES_MISC_WELCOMETOTHEWORLDOFPOKEMON_H_ */
