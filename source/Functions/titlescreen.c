/*
 * Titlescreen.c
 *
 *  Created on: Aug 2, 2014
 *      Author: Gamer2020
 */

#include <tonc.h>
#include <stdio.h>
#include "Functions.h"
#include "Functions/Titlescreen.h"
#include "Functions/MusicEngine.h"
#include "Data/MemoryLocations.h"
#include "Data/Titlescreen_img.h"
#include "Functions/KeyPresses.h"


void SetupTitleScreen()
{
	SetupSongForPlayback(Song_CrystalTitleScreen, 0);

	REG_BG0CNT = BG_CBB(0) | BG_8BPP | BG_REG_32x32 | BG_MOSAIC | BG_SBB(31) | 0;

	// Load palette
	dma3_cpy(pal_bg_mem, Titlescreen_imgPal, 512);
	// Load tiles into CBB 0
	LZ77UnCompVram(Titlescreen_imgTiles, &tile_mem[0][0]);
	// Load map into SBB 31
	LZ77UnCompVram(Titlescreen_imgMap, &se_mem[31][0]);


	CallbackMain = &TitleScreen;
	HandleKeyPresses = &TitleScreenKeyHandle;
}

void TitleScreen()
{


	RunCallbackSystem();


}

void TitleScreenKeyHandle()
{

	if (IsKeyDownButNotHeld(Key_Start) == true)
	{
		setbackgroundstodefault();

		CallbackMain = &LoadOverworld;
	}
	else if (IsKeyDownButNotHeld(Key_B) == true)
	{

	}
	else if (IsKeyDownButNotHeld(Key_Up) == true)
	{

	}
	else if (IsKeyDownButNotHeld(Key_Down) == true)
	{

	}
	else if (IsKeyDown(Key_A) != 0)
	{

	}
}

