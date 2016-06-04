/*
 * WelcomeToTheWorldOfPokemon.cpp
 *
 *  Created on: 2 Jun 2016
 *      Author: CoolerMaster
 */

#include "Scenes/Misc/WelcomeToTheWorldOfPokemon.h"
#include "Scenes/Overworld/PrimaryOverworld.h"
#include "Audio.h"
#include "Core.h"

#define StartingMapBank 4
#define StartingMap 1

namespace Scenes
{
	namespace Misc
	{
		WelcomeToTheWorldOfPokemon::WelcomeToTheWorldOfPokemon()
		{
			Core::Game::Initialise();
			Core::Data::Flags::Initialise();
			Core::Data::Variables::Initialise();
			Game::SetCurrentMap(Scenes::Overworld::PrimaryOverworld::GetMapHeaderFromBankAndMapID(StartingMapBank, StartingMap));
			Core::Palettes::FadeToWhite(true, HalfSecond, true, false);
		}

		WelcomeToTheWorldOfPokemon::~WelcomeToTheWorldOfPokemon()
		{

		}

		void WelcomeToTheWorldOfPokemon::Update()
		{

		}

		void WelcomeToTheWorldOfPokemon::OnEnter()
		{
			Audio::SoundEngine::PlaySong(Song_Route30, 0);
		}

		void WelcomeToTheWorldOfPokemon::OnExit()
		{
			Audio::SoundEngine::FadeSongToSilence();
		}
	}
}
