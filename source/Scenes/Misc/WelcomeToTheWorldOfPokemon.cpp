/*
 * WelcomeToTheWorldOfPokemon.cpp
 *
 *  Created on: 2 Jun 2016
 *      Author: CoolerMaster
 */

#include "Scenes/Misc/WelcomeToTheWorldOfPokemon.h"
#include "Scenes/Overworld/PrimaryOverworld.h"
//#include "Scenes/Misc/NamingScene.h"
#include "Scenes/SceneManager.h"
#include "Audio.h"
#include "Core.h"
#include "Tasks.h"
#include "Text.h"
#include "Input.h"
#include "LibraryHeaders/liboverworldscripts.h"

#define StartingMapBank 4
#define StartingMap 1

using namespace Tasks;
using namespace Text;
using namespace Core;
using namespace Input;

namespace Scenes
{
	namespace Misc
	{
		WelcomeToTheWorldOfPokemon::WelcomeToTheWorldOfPokemon(u32 varStartValue)
		{
			BackgroundFunctions::ClearAllBackgrounds();
			Game::SetCurrentMap(Scenes::Overworld::PrimaryOverworld::GetMapHeaderFromBankAndMapID(StartingMapBank, StartingMap));
			Data::Variables::SetVar(0x801F, varStartValue);
			Core::Palettes::FadeToWhite(true, HalfSecond, true, false);
		}

		WelcomeToTheWorldOfPokemon::~WelcomeToTheWorldOfPokemon()
		{

		}

		void WelcomeToTheWorldOfPokemon::Update()
		{
			switch (Data::Variables::GetVar(0x801F))
			{
				case 1:
					Data::Variables::SetVar(0x801F, 2);
					new ScriptRunners::OverworldScriptRunner((u8*)&WelcomePartTwo);
					break;
				case 3:
					Data::Variables::SetVar(0x801F, 4);
					new ScriptRunners::OverworldScriptRunner((u8*)&WelcomePartThree);
					break;
				case 5:
					Data::Variables::SetVar(0x801F, 6);
					new ScriptRunners::OverworldScriptRunner((u8*)&WelcomePartFour);
					break;
				case 7:
					Data::Variables::SetVar(0x801F, 8);
					InputManager::SetEventHandler(new SelectGenderInputHandler());
					break;
				case 9:
					Data::Variables::SetVar(0x801F, 10);
					new ScriptRunners::OverworldScriptRunner((u8*)&WelcomePartFive);
					break;
				case 11:
				{
					// Note: this is placeholder
					// to be replaced with actual naming scene
					// when ready
					Game::SetPlayerName("Jambo51");
					//SceneManager::SetScene(new NamingScene(7, playerNameLoc, ));
					SceneManager::SetScene(new WelcomeToTheWorldOfPokemon(12));
					break;
				}
				case 13:
					Data::Variables::SetVar(0x801F, 14);
					new ScriptRunners::OverworldScriptRunner((u8*)&WelcomePartSeven);
					break;
				case 15:
					Core::Game::Initialise();
					Core::Data::Flags::Initialise();
					Core::Data::Variables::Initialise();
					Audio::SoundEngine::FadeSongToSilence();
					Palettes::FadeToBlack(true, HalfSecond, true, true);
				default:
					break;
			}
		}

		void WelcomeToTheWorldOfPokemon::OnEnter()
		{
			Audio::SoundEngine::PlaySongIfNotStarted(Song_Route30, 0);
			TextFunctions::SetTextColour(3, 2, 0);
			if (Data::Variables::GetVar(0x801F) == 0)
			{
				Core::Game::ClearPlayer();
				new ScriptRunners::OverworldScriptRunner((u8*)&WelcomePartOne);
			}
			else if (Data::Variables::GetVar(0x801F) == 12)
			{
				new ScriptRunners::OverworldScriptRunner((u8*)&WelcomePartSix);
			}
		}

		void WelcomeToTheWorldOfPokemon::OnExit()
		{
			SceneManager::SetScene(new Overworld::PrimaryOverworld());
		}
	}
}
