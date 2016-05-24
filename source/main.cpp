
#include "FlashFunctions.h"
#include "GlobalDefinitions.h"
#include "GBSEngine.h"
#include "SoundEngine.h"
#include "EntityManager.h"
#include "TaskManager.h"
#include "IRQHandler.h"
#include "InputHandler.h"
#include "SceneManager.h"
#include "Game.h"
#include "BackgroundFunctions.h"
#include "Pokemon.h"
#include "Maths.h"
#include "PrimaryOverworld.h"
#include "RTC.h"
#include "TitleScreen.h"
#include "Allocator.h"
#include "DoNothingInputEventHandler.h"
#include "TextFunctions.h"

using namespace Core;
using namespace Input;
using namespace Audio;
using namespace Audio::GameBoySounds;
using namespace Entities;
using namespace Scenes;
using namespace Allocation;
using namespace Scenes::Overworld;
using namespace Tasks;
using namespace Text;

#define LATIN 0
#define CYRILLIC 1
#define JAPANESE 2
#define ARABIC 3
#define BRAILLE 4

#define TEXTSET LATIN

int main()
{
	Game::SetPaletteToWhite();
	Game::StartTimer(2);
	Game::StartTimer(3, 1);
	FlashFunctions::LoadGame();
	InputManager::SetEventHandler(new DoNothingInputEventHandler());
	if (Game::GetSoundEngineID() == M4AEngineID)
	{
		//SoundEngine::Initialise(new M4AEngine());
	}
	else
	{
		SoundEngine::Initialise(new GBSEngine());
	}
	EntityManager::Initialise();
	TextFunctions::InitialiseTextEngine(TEXTSET);
	RTC::Enable();
	IRQHandler::Initialise();
	IRQHandler::PrimeIRQ(II_VBLANK);
	BackgroundFunctions::SetBackgroundsToDefault();
	SceneManager::SetScene(new TitleScreen());
	Allocator::Initialise((void*)0x06010000, 0x8000);
	Game::SetCurrentMap(PrimaryOverworld::GetMapHeaderFromBankAndMapID(Game::GetCurrentMap().mapLocation.mapBank, Game::GetCurrentMap().mapLocation.map));
	Game::SetPlayerName("Jambo51");
	while (true)
	{
		VBlankIntrWait();
		SoundEngine::Interrupt();
		RTC::Update();
		InputManager::KeyPoll();
		TaskManager::Update();
		SoundEngine::Update();
		EntityManager::Update();
		EntityManager::Render();
		Game::Update();
		Maths::GetRandom32BitValue();
		SceneManager::Update();
	}
	return 0;
}
