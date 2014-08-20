/*
 * tittlescreen.c
 *
 *  Created on: Aug 2, 2014
 *      Author: Gamer2020
 */

#include <tonc.h>
#include "Functions/tittlescreen.h"
#include "Functions/MusicEngine.h"
#include "Data/MemoryLocations.h"
#include "Data/Tittlescreen_img.h"


void SetupTitleScreen()
{
	SetupSongForPlayback(Song_CrystalTitleScreen, 0);

	REG_BG0CNT = BG_CBB(0) | BG_8BPP | BG_REG_32x32 | BG_MOSAIC | BG_SBB(31) | 0;

	// Load palette
	dma3_cpy(pal_bg_mem, Tittlescreen_imgPal, 512);
	// Load tiles into CBB 0
	LZ77UnCompVram(Tittlescreen_imgTiles, &tile_mem[0][0]);
	// Load map into SBB 31
	LZ77UnCompVram(Tittlescreen_imgMap, &se_mem[31][0]);


	CallbackMain = &TitleScreen;
}
void TitleScreen()
{

}

