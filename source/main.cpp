
#include "GlobalDefinitions.h"
#include "GBPSoundsEngine.h"
#include "SoundEngine.h"
#include "EntityManager.h"
#include "CallbackManager.h"
#include "IRQHandler.h"
#include "InputHandler.h"
#include "ObjectManager.h"
#include "GameModeManager.h"
#include "Game.h"
#include "BackgroundFunctions.h"
#include "MemoryManagement.h"
#include "Pokemon.h"
#include "Maths.h"
#include "Mapping.h"
#include "RTC.h"

int Image$$ZI$$Limit = 0x02020000; // beginning of free exRAM

#define LATIN 0
#define CYRILLIC 1
#define JAPANESE 2
#define ARABIC 3
#define BRAILLE 4

#define M4A 0
#define GBP 1

#define TEXTSET LATIN
#define MUSICENGINE GBP

void StartTimer(int timerNum, int timerSetting, u16 cascadeValue)
{
	switch(timerNum)
	{
	case 0:
		REG_TM0D = cascadeValue;
		REG_TM0CNT = 0x80 | timerSetting;
		break;
	case 1:
		REG_TM1D = cascadeValue;
		REG_TM1CNT = 0x80 | timerSetting;
		break;
	case 2:
		REG_TM2D = cascadeValue;
		REG_TM2CNT = 0x80 | timerSetting;
		break;
	case 3:
		REG_TM3D = cascadeValue;
		REG_TM3CNT = 0x80 | timerSetting;
		break;
	}
}

int main()
{
	StartTimer(2, 0, 0);
	StartTimer(3, 1, 0);
	SoundEngine::Initialise(new GBPSoundsEngine());
	EntityManager::Initialise();
	//InitialiseTextEngine(TEXTSET);
	RTC::Enable();
	IRQHandler::Initialise();
	IRQHandler::PrimeIRQ(II_VBLANK);
	BackgroundFunctions::setbackgroundstodefault();
	InitialiseMemoryAllocator((void*)Image$$ZI$$Limit, 0x02040000 - Image$$ZI$$Limit);
	InitialiseSpriteAllocator((void*)0x06010000, 0x8000);
	InitialisePaletteAllocator();
	Game::SetCurrentMap(*Overworld::GetMapHeaderFromBankAndMapID(3, 0));
	Pokemon::GivePokemonToPlayer(36, Charizard);
	SoundEngine::PlaySong(Song_KantoTrainerBattle, 0);
	while (true)
	{
		VBlankIntrWait();
		RTC::Update();
		InputHandler::KeyPoll();
		CallbackManager::Update();
		EntityManager::Update();
		SoundEngine::Update();
		ObjectManager::Update(EntityManager::GetRenderOrder());
		Game::Update();
		DefragmentMallocData();
		Maths::GetRandom32BitValue();
		GameModeManager::Update();
	}
	return 0;
}
