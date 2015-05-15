/*
 * Titlescreen.c
 *
 *  Created on: Aug 2, 2014
 *      Author: Gamer2020
 */

#include <tonc.h>
#include "Functions.h"
#include "Titlescreen.h"
#include "MemoryLocations.h"
#include "KeyPresses.h"

#include "pal.h"
#include "BG0_Tiles.h"
#include "BG0_Map.h"
#include "BG1_Tiles.h"
#include "BG1_Map.h"
#include "BG2_Tiles.h"
#include "BG2_Map.h"
#include "BG3_Tiles.h"
#include "BG3_Map.h"



void SetupTitleScreen()
{
	//SetupSongForPlayback(Song_CrystalTitleScreen, 0);

	REG_BG0CNT = 0x1F80;
	REG_BG1CNT = 0x1E05;
	REG_BG2CNT = 0x1D0A;
	REG_BG3CNT = 0x1C0F;

	// Load palette
	dma3_cpy(pal_bg_mem, pal_bin, 512);
	// Load tiles
	dma3_cpy(0x06000000, BG0_Tiles_bin, BG0_Tiles_bin_size);
	dma3_cpy(0x06004000, BG1_Tiles_bin, BG1_Tiles_bin_size);
	dma3_cpy(0x06008000, BG2_Tiles_bin, BG2_Tiles_bin_size);
	dma3_cpy(0x0600C000, BG3_Tiles_bin, BG3_Tiles_bin_size);
	// Load maps
	dma3_cpy(0x0600F800, BG0_Map_bin, BG0_Map_bin_size);
	dma3_cpy(0x0600F000, BG1_Map_bin, BG1_Map_bin_size);
	dma3_cpy(0x0600E800, BG2_Map_bin, BG2_Map_bin_size);
	dma3_cpy(0x0600E000, BG3_Map_bin, BG3_Map_bin_size);

	CallbackMain = &TitleScreen;
	//HandleKeyPresses = &TitleScreenKeyHandle;
}

void TitleScreen()
{


	RunCallbackSystem();


}

