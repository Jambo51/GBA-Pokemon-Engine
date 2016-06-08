
#include "Core/Palettes.h"
#include "Core/Game.h"
#include "Core/FlashFunctions.h"
#include "Core/RTC.h"
#include "Core/IRQHandler.h"
#include "Core/BackgroundFunctions.h"
#include "Input/DoNothingInputEventHandler.h"
#include "Input/InputManager.h"
#include "Audio/SoundEngine.h"
#include "Audio/GameBoySounds/GBSEngine.h"
#include "Audio/GameBoySounds/MusicData.h"
#include "Entities/EntityManager.h"
#include "Allocation/Allocator.h"
#include "Scenes/SceneManager.h"
#include "Scenes/Overworld/PrimaryOverworld.h"
#include "Scenes/Menus/TitleScreen.h"
#include "Tasks/TaskManager.h"
#include "Text/TextFunctions.h"

using namespace Core;
using namespace Input;
using namespace Audio;
using namespace Audio::GameBoySounds;
using namespace Entities;
using namespace Scenes;
using namespace Allocation;
using namespace Scenes::Overworld;
using namespace Scenes::Menus;
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
	Palettes::SetPaletteToWhite();
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
		SoundEngine::Initialise(new GBSEngine(), &gbpSongs);
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
	while (true)
	{
		VBlankIntrWait();
		SoundEngine::Interrupt();
		RTC::Update();
		Palettes::Update();
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
