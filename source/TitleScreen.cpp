/*
 * TitleScreen.cpp
 *
 *  Created on: 15 May 2015
 *      Author: Jamie
 */

#include "TitleScreen.h"
#include "SoundEngine.h"
#include "InputHandler.h"
#include "GlobalDefinitions.h"
#include "TitleScreenInputEventHandler.h"
#include "LoadGameScreen.h"
#include "GameModeManager.h"
#include "Game.h"
extern "C"
{
#include <tonc.h>
#include "pal.h"
#include "BG0_Tiles.h"
#include "BG0_Map.h"
#include "BG1_Tiles.h"
#include "BG1_Map.h"
#include "BG2_Tiles.h"
#include "BG2_Map.h"
#include "BG3_Tiles.h"
#include "BG3_Map.h"
}

TitleScreen::TitleScreen()
{
	counter = 0;
	status = 0;
	// TODO Auto-generated constructor stub
	REG_BG0CNT = 0x1F80;
	REG_BG1CNT = 0x1E05;
	REG_BG2CNT = 0x1D0A;
	REG_BG3CNT = 0x1C0F;

	u16* location = new u16[512];

	// Load palette
	dma3_cpy((void*)location, pal_bin, 512);
	// Load tiles
	dma3_cpy((void*)0x06000000, BG0_Tiles_bin, BG0_Tiles_bin_size);
	dma3_cpy((void*)0x06004000, BG1_Tiles_bin, BG1_Tiles_bin_size);
	dma3_cpy((void*)0x06008000, BG2_Tiles_bin, BG2_Tiles_bin_size);
	dma3_cpy((void*)0x0600C000, BG3_Tiles_bin, BG3_Tiles_bin_size);
	// Load maps
	dma3_cpy((void*)0x0600F800, BG0_Map_bin, BG0_Map_bin_size);
	dma3_cpy((void*)0x0600F000, BG1_Map_bin, BG1_Map_bin_size);
	dma3_cpy((void*)0x0600E800, BG2_Map_bin, BG2_Map_bin_size);
	dma3_cpy((void*)0x0600E000, BG3_Map_bin, BG3_Map_bin_size);
	Game::FadeToPalette(location, true, HalfSecond, true, false);
}

TitleScreen::~TitleScreen()
{
	// TODO Auto-generated destructor stub
}


void TitleScreen::Update()
{
	if (counter == 30)
	{
		if (status)
		{
			status = 0;
			u16* baseAddr = (u16*)0x0600EC0A;
			for (int i = 0; i < 6; i++)
			{
				baseAddr[i] = 0xF015 + i;
			}
			for (int i = 0; i < 6; i++)
			{
				baseAddr[i + 6] = 0xF035 + i;
			}
		}
		else
		{
			status = 1;
			u16* baseAddr = (u16*)0x0600EC0A;
			for (int i = 0; i < 12; i++)
			{
				baseAddr[i] = 0xF000;
			}
		}
		counter = 0;
	}
	else
	{
		counter++;
	}
}

void TitleScreen::OnEnterCallback()
{
	SoundEngine::PlaySong(Song_CrystalTitleScreen, 0);
	InputHandler::SetEventHandler(new TitleScreenInputEventHandler());
}

void TitleScreen::OnExitCallback()
{
	GameModeManager::SetScreen(new LoadGameScreen(1));
}
