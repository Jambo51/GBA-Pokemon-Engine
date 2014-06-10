/*
 * Overworld.c
 *
 *  Created on: 9 Nov 2013
 *      Author: Jamie
 */

#include "Data.h"
#include "Functions/KeyPresses.h"
#include "Functions/Mapping.h"
#include "Functions/Flags.h"
#include "Functions/Maths.h"
#include "Functions/MemoryManagement.h"
#include "Functions/TextFunctions.h"
#include "Functions/ScriptRunner.h"
#include "Functions/MusicEngine.h"
#include "Functions/rtc.h"
#include "Functions/CallbackSystem.h"

#define BG_PRIORITY_ZERO 0
#define MAJORITY (BG_4BPP | BG_REG_32x32 | BG_MOSAIC | BG_SBB(31) | BG_PRIORITY_ZERO)
#define MAIN_BG_SETTINGS1 (BG_CBB(0) | MAJORITY)
#define MAIN_BG_SETTINGS2 (BG_CBB(2) | MAJORITY)

const u32 pauseOutline[1][9][8] = { { { 0x00000000, 0xFFFFFF00, 0xDDDDDAF0, 0xEEEEEDF0, 0xEEEEEDF0, 0xBCEEEDF0, 0x11CEEDF0, 0x11BEEDF0 },
		{ 0x00000000, 0xFFFFFFFF, 0xDDDDDDDD, 0xEEEEEEEE, 0xEEEEEEEE, 0xBBBBBBBB, 0x11111111, 0x11111111 },
		{ 0x00000000, 0x00FFFFFF, 0x0FADDDDD, 0x0FEEEEEE, 0x0FAEEEEE, 0x0FAEEECB, 0x0FAEEC11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0 },
		{ 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111 },
		{ 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11CEEDF0, 0xBCEEEDF0, 0xEEEEEDF0, 0xEEEEEEF0, 0xAAAAAFF0, 0xFFFFFF00, 0x00000000 },
		{ 0x11111111, 0x11111111, 0xBBBBBBBB, 0xEEEEEEEE, 0xEEEEEEEE, 0xAAAAAAAA, 0xFFFFFFFF, 0x00000000 },
		{ 0x0FAEEB11, 0x0FAEEC11, 0x0FAEEECB, 0x0FAEEEEE, 0x0FAEEEEE, 0x0FFAAAAA, 0x00FFFFFF, 0x00000000 }
} } ;

const u32 pauseOutlinePalette[8] = { 0x7FFF532E, 0x675A318C, 0x3AFF043C, 0x4BD20664, 0x7B146546, 0x6F5B3529, 0x663156F5, 0x18C541AE };
const Colour blackPalette[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
const Colour whitePalette[16] = { 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF };

const ALIGN(1) u8 pokegear[] = { 0x0A, 0xCA, 0xE3, 0xDF, 0x1B, 0xDB, 0xD9, 0xD5, 0xE6, 0xFF };
const ALIGN(1) u8 pokedex[] = { 0x0A, 0xCA, 0xE3, 0xDF, 0x1B, 0xD8, 0xD9, 0xEC, 0xFF };
const ALIGN(1) u8 pokemon[] = { 0x0A, 0xCA, 0xE3, 0xDF, 0x1B, 0xE1, 0xE3, 0xE2, 0xFF };
const ALIGN(1) u8 bagText[] = { 0x0A, 0xBC, 0xD5, 0xDB, 0xFF };
const ALIGN(1) u8 save[] = { 0x0A, 0xCD, 0xD5, 0xEA, 0xD9, 0xFF };
const ALIGN(1) u8 options[] = { 0x0A, 0xC9, 0xE4, 0xE8, 0xDD, 0xE3, 0xE2, 0xE7, 0xFF };
const ALIGN(1) u8 exitText[] = { 0x0A, 0xBF, 0xEC, 0xDD, 0xE8, 0xFF };
const u8* menuItems[8] = { (u8*)&pokegear, (u8*)&pokedex, (u8*)&pokemon, (u8*)&bagText, (u8*)(&(player.name)), (u8*)&save, (u8*)&options, (u8*)&exitText };

const u8* mapNamesTable[0x100];

u8 CalculateNumberOfFramesPerChange(u8 sizeOfChange, u8 numberOfFrames)
{
	if (sizeOfChange != 0)
	{
		u8 counter = 0;
		while (numberOfFrames > sizeOfChange)
		{
			numberOfFrames >>= 1;
			counter++;
		}
		return counter;
	}
	return 0;
}

u8 GetRed(u16 colour)
{
	return (u8)(colour & 0x1F);
}

u8 GetBlue(u16 colour)
{
	return (u8)((colour & 0x3E0) >> 5);
}

u8 GetGreen(u16 colour)
{
	return (u8)((colour & 0x7C00) >> 10);
}

void SetupFadeScreenSlot(u8 lengthInDeciseconds, u8 slot, u16* targetPalette)
{
	fadeStruct[slot].targetPaletteLocation = targetPalette;
	u8 numberOfFrames = (lengthInDeciseconds * 6) + 1;
	fadeStruct[slot].framesTotal = numberOfFrames;
	fadeStruct[slot].framesPassed = 0;
	u16* originalPalette = (u16*)MemoryAllocate(sizeof(u16) * 16);
	fadeStruct[slot].paletteLocation = originalPalette;
	ColourChangeStruct* changesLoc = (ColourChangeStruct*)MemoryAllocate(sizeof(ColourChangeStruct) * 16);
	fadeStruct[slot].valueChanges = changesLoc;
	memcpy32((void*)originalPalette, (void*)TilePaletteRAM(slot), 8);
	u8 i;
	for (i = 0; i < 16; i++)
	{
		u16 c = originalPalette[i];
		u16 c2 = targetPalette[i];
		s8 redChange = GetRed(c2) - GetRed(c);
		s8 blueChange = GetBlue(c2) - GetBlue(c);
		s8 greenChange = GetGreen(c2) - GetGreen(c);
		u8 frames = 1 << CalculateNumberOfFramesPerChange(Absolute(redChange), numberOfFrames);
		if (redChange != 0)
		{
			changesLoc[i].redFramesPerChange = frames - 1;
			changesLoc[i].redChange = SignedDivide(redChange, UnsignedDivide(numberOfFrames, frames));
			changesLoc[i].redFramesCounter = frames - 1;
		}
		else
		{
			changesLoc[i].redFramesPerChange = numberOfFrames;
			changesLoc[i].redChange = 0;
			changesLoc[i].redFramesCounter = numberOfFrames;
		}
		if (blueChange != 0)
		{
			frames = 1 << CalculateNumberOfFramesPerChange(Absolute(blueChange), numberOfFrames);
			changesLoc[i].blueFramesPerChange = frames - 1;
			changesLoc[i].blueChange = SignedDivide(blueChange, UnsignedDivide(numberOfFrames, frames));
			changesLoc[i].blueFramesCounter = frames - 1;
		}
		else
		{
			changesLoc[i].blueFramesPerChange = numberOfFrames;
			changesLoc[i].blueChange = 0;
			changesLoc[i].blueFramesCounter = numberOfFrames;
		}
		if (greenChange != 0)
		{
			frames = 1 << CalculateNumberOfFramesPerChange(Absolute(greenChange), numberOfFrames);
			changesLoc[i].greenFramesPerChange = frames - 1;
			changesLoc[i].greenChange = SignedDivide(greenChange, UnsignedDivide(numberOfFrames, frames));
			changesLoc[i].greenFramesCounter = frames - 1;
		}
		else
		{
			changesLoc[i].greenFramesPerChange = numberOfFrames;
			changesLoc[i].greenChange = 0;
			changesLoc[i].greenFramesCounter = numberOfFrames;
		}
	}
	fadeStruct[slot].isActive = 1;
}

void SetupFadeScreenToBlack()
{
	u8 i;
	for (i = 0; i < 32; i++)
	{
		SetupFadeScreenSlot(5, i, (u16*)&blackPalette);
	}
}

void SetupFadeScreenToWhite()
{
	u8 i;
	for (i = 0; i < 32; i++)
	{
		SetupFadeScreenSlot(5, i, (u16*)&whitePalette);
	}
}

void ClearMenuBox(u16* location, u32 height, u32 width)
{
	vu32 i;
	for (i = 0; i < height; i++)
	{
		memset16((void*)(location + (0x20 * i)), 0, width);
	}
	REG_BG0CNT = MAIN_BG_SETTINGS1;
}

void PlaceMenuBox(u16* location, u32 height, u32 width)
{
	memcpy32((void*)0x06008020, &pauseOutline[player.boxOutline], 8 * 9);
	memset32((void*)0x0600A7A0, 0x11111111, 8);
	memcpy32((void*)TilePaletteRAM(14), &pauseOutlinePalette, 8);
	REG_BG0CNT = MAIN_BG_SETTINGS2;
	vu32 i;
	u32 currentY = 8;
	for (i = 0; i < 8; i++)
	{
		u8* pointer = menuItems[i];
		if (pauseMenuLocation == i)
		{
			BufferString(pointer, 0);
			pointer = (u8*)(&(buffers[0]));
			pointer[0] = 0xEF;
		}
		if (pointer != 0)
		{
			DrawString(pointer, 0, currentY, 0x8);
		}
		currentY += 15;
	}
	location[0] = 0xE001;
	memset16((void*)&(location[1]), 0xE002, 7);
	location[8] = 0xE003;
	for (i = 0; i < height; i++)
	{
		location[0x20 + (0x20 * i)] = 0xE004;
		u8 j;
		for (j = 0; j < 8; j++)
		{
			location[0x20 + (0x20 * i) + (j + 1)] = 0xE13C + (9 * i) + j;
		}
		location[0x28 + (0x20 * i)] = 0xE006;
	}
	location[(0x20 * height)] = 0xE007;
	memset16((void*)&(location[(0x20 * height) + 1]), 0xE008, 7);
	location[(0x20 * height) + 8] = 0xE009;
}

void AnimateTiles()
{
	TileAnimationStruct* animStructInner = &(animStruct[0]);
	u8 i;
	for (i = 0; i < 10; i++)
	{
		if (animStructInner[i].dataPointer != 0)
		{
			if (animStructInner[i].framesUntilChange == 0)
			{
				void* destination = (void*)(((i >= 5)?0x06005000:0x06000000) + ((animStructInner[i].startTile - ((i >= 5)?512:0)) * 0x20));
				u32 tileCopyLength = animStructInner[i].numberOfTiles << 3;
				memcpy32(destination, (void*)(&(animStructInner[i].dataPointer[tileCopyLength * animStructInner[i].frameOfAnimation])), tileCopyLength);
				animStructInner[i].framesUntilChange = animStructInner[i].frameDelay;
				animStructInner[i].frameOfAnimation = UnsignedModulus(animStructInner[i].frameOfAnimation + 1, animStructInner[i].numberOfFrames);
			}
			else
			{
				animStructInner[i].framesUntilChange--;
			}
		}
	}
}

void MoveNPCs()
{
	u8 i;
	for (i = 1; i < 24; i++)
	{
		u8 isMoving = overworldSpriteData[i].isMoving;
		if (overworldSpriteData[i].isActive != 0 && isMoving == 0)
		{

		}
		else if (isMoving == 1)
		{

		}
	}
}

void ScriptingKeyPresses()
{

}

u8 RunOverworldScriptCommands()
{
	return 1;
}

u8 RunOverworldScript()
{
	return RunScript(overworldScriptPointer, &RunOverworldScriptCommands);
}

void SetCheckKeyPressesOverworld(void);

void RunOverworldScriptingEnvironment()
{
	if (overworldScriptWaitingToBeRun == 1)
	{
		HandleKeyPresses = &ScriptingKeyPresses;
		u8 killScriptingEnvironment = RunOverworldScript();
		if (killScriptingEnvironment == 1)
		{
			SetCheckKeyPressesOverworld();
			overworldScriptWaitingToBeRun = 0;
		}
	}
}

u16 SetRed(u16 original, u16 newRed)
{
	return (original & 0xFFE0) | newRed;
}

u16 SetBlue(u16 original, u16 newBlue)
{
	return (original & 0xFC1F) | (newBlue << 5);
}

u16 SetGreen(u16 original, u16 newGreen)
{
	return (original & 0x83FF) | (newGreen << 10);
}

void FadeScreen()
{
	u8 i;
	for (i = 0; i < 32; i++)
	{
		if (fadeStruct[i].isActive == 1)
		{
			if (fadeStruct[i].framesPassed == fadeStruct[i].framesTotal)
			{
				fadeStruct[i].isActive = 0;
				MemoryDeallocate((void*)fadeStruct[i].paletteLocation);
				MemoryDeallocate((void*)fadeStruct[i].valueChanges);
				fadeStruct[i].paletteLocation = (u16*)0;
				fadeStruct[i].valueChanges = (ColourChangeStruct*)0;
			}
			else
			{
				ColourChangeStruct* changes = fadeStruct[i].valueChanges;
				u8 j;
				for (j = 0; j < 16; j++)
				{
					u16 c = fadeStruct[i].paletteLocation[j];
					u16 target = fadeStruct[i].targetPaletteLocation[j];
					if (changes[j].redFramesCounter == 0)
					{
						if (GetRed(c) != GetRed(target))
						{
							s8 difference = GetRed(c) - GetRed(target);
							if (Absolute(difference) < Absolute(changes[j].redChange))
							{
								c = SetRed(c, target);
							}
							else
							{
								c = SetRed(c, ((s32)GetRed(c)) + changes[j].redChange);
							}
							changes[j].redFramesCounter = changes[j].redFramesPerChange;
						}
					}
					else
					{
						changes[j].redFramesCounter--;
					}
					if (changes[j].blueFramesCounter == 0)
					{
						if (GetBlue(c) != GetBlue(target))
						{
							s8 difference = GetBlue(c) - GetBlue(target);
							if (Absolute(difference) < Absolute(changes[j].blueChange))
							{
								c = SetBlue(c, target);
							}
							else
							{
								c = SetBlue(c, ((s32)GetBlue(c)) + changes[j].blueChange);
							}
							changes[j].blueFramesCounter = changes[j].blueFramesPerChange;
						}
					}
					else
					{
						changes[j].blueFramesCounter--;
					}
					if (changes[j].greenFramesCounter == 0)
					{
						if (GetGreen(c) != GetGreen(target))
						{
							s8 difference = GetGreen(c) - GetGreen(target);
							if (Absolute(difference) < Absolute(changes[j].greenChange))
							{
								c = SetGreen(c, target);
							}
							else
							{
								c = SetGreen(c, ((s32)GetGreen(c)) + changes[j].greenChange);
							}
							changes[j].greenFramesCounter = changes[j].greenFramesPerChange;
						}
					}
					else
					{
						changes[j].greenFramesCounter--;
					}
					fadeStruct[i].paletteLocation[j] = c;
				}
				memcpy32((void*)TilePaletteRAM(i), (void*)fadeStruct[i].paletteLocation, 8);
				fadeStruct[i].framesPassed++;
			}
		}
	}
}

void OverworldBackgroundProcesses()
{
	RunCallbackSystem();
}

u32 CountExtraMenuRows()
{
	u32 counter = 0;
	if (CheckFlag(Flag_Pokegear) == 1)
	{
		counter++;
	}
	if (CheckFlag(Flag_Pokedex) == 1)
	{
		counter++;
	}
	if (CheckFlag(Flag_PokemonMenu) == 1)
	{
		counter++;
	}
	return counter;
}

u32 CountMenuRows()
{
	return 5 + CountExtraMenuRows();
}

void HandleMenuMoveRequest(u8 direction)
{
	u32 newLocation;
	u32 currentLocation = pauseMenuLocation;
	if (direction == 0)
	{
		newLocation = UnsignedModulus(currentLocation + 1, CountMenuRows());
	}
	else
	{
		if (pauseMenuLocation == 0)
		{
			newLocation = CountMenuRows();
		}
		else
		{
			newLocation = currentLocation - 1;
		}
	}
	//ReplaceCursorAtNewLocation();
	pauseMenuLocation = (u8)newLocation;
}

void ExitMenu()
{
	ClearMenuBox((void*)0x0600F82A, 0xF, 9);
	SetCheckKeyPressesOverworld();
	MemoryDeallocate(pauseMenuFunctions);
	pauseMenuFunctions = (void*)0;
}

void StartMenuKeyPresses()
{
	if (IsKeyDown(Key_Start) != 0)
	{
		ExitMenu();
		SetKeyIgnored(Key_Start, 0);
	}
	else if (IsKeyDown(Key_B) != 0)
	{
		ExitMenu();
		SetKeyIgnored(Key_B, 0);
	}
	else if (IsKeyDown(Key_Up) != 0)
	{
		HandleMenuMoveRequest(1);
		SetKeyIgnored(Key_Up, 10);
	}
	else if (IsKeyDown(Key_Down) != 0)
	{
		HandleMenuMoveRequest(0);
		SetKeyIgnored(Key_Down, 10);
	}
	else if (IsKeyDown(Key_A) != 0)
	{
		void* menuLoc = (void*)(&(pauseMenuFunctions[0]));
		void (*Function)(void) = (void*)(((u32*)menuLoc)[pauseMenuLocation]);
		if (Function != 0)
		{
			Function();
		}
		else
		{
			Function = (void*)(((u32*)menuLoc)[7]);
			Function();
		}
		SetKeyIgnored(Key_A, 0);
	}
}

void SetPauseMenuFunctions()
{
	u8 currentSlot = 0;
	pauseMenuFunctions = MemoryAllocate(sizeof(u32) * 8);
	u32* menuLoc = (u32*)(&(pauseMenuFunctions[0]));
	if (CheckFlag(Flag_Pokegear) == 1)
	{
		menuLoc[currentSlot] = 0;//(u32)&Pokegear;
		currentSlot++;
	}
	if (CheckFlag(Flag_Pokedex) == 1)
	{
		menuLoc[currentSlot] = 0;//(u32)&Pokedex;
		currentSlot++;
	}
	if (CheckFlag(Flag_PokemonMenu) == 1)
	{
		menuLoc[currentSlot] = 0;//(u32)&PokemonMenu;
		currentSlot++;
	}
	menuLoc[currentSlot] = 0;//(u32)&Bag;
	currentSlot++;
	menuLoc[currentSlot] = 0;//(u32)&PlayerCard;
	currentSlot++;
	menuLoc[currentSlot] = 0;//(u32)&Save;
	currentSlot++;
	menuLoc[currentSlot] = 0;//(u32)&Options;
	currentSlot++;
	menuLoc[currentSlot] = (u32)&ExitMenu;
	if (currentSlot != 7)
	{
		menuLoc[7] = (u32)&ExitMenu;
	}
}

void CheckKeyPressesOverworld()
{
	if (IsKeyDown(Key_Start) != 0)
	{
		SetPauseMenuFunctions();
		PlaceMenuBox((u16*)0x0600F82A, (CountMenuRows() << 1) + 2, 9);
		SetKeyIgnored(Key_Start, 0);
		HandleKeyPresses = &StartMenuKeyPresses;
	}
	else if ((movingInformation.isMoving != 0) || (IsDPadDown() == 1))
	{
		ApplyMovement();
	}
}

void SetCheckKeyPressesOverworld()
{
	HandleKeyPresses = &CheckKeyPressesOverworld;
}

const u8 playerName[] = { 0xC4, 0xD5, 0xE1, 0xD6, 0xE3, 0xA6, 0xA2, 0xFF };

void LoadOverworld()
{
	SetPlayerName((u8*)(&playerName));
	player.stereoSound = 1;
	SetFlag(Flag_UsingGBP);
	animStruct = (TileAnimationStruct*)MemoryAllocate(sizeof(TileAnimationStruct) * 10);
	player.trainerID = GetRandom32BitValue();
	currentMap = (GetMapHeaderFromBankAndMapID(3, 0))[0];
	overworldSpriteData[0].xLocation = 4;
	overworldSpriteData[0].yLocation = 5;
	overworldSpriteData[0].spriteID = 0xFF;
	overworldSpriteData[0].dataSpriteID = 0;
	overworldSpriteData[0].directionFacing = 0;
	DrawMap(overworldSpriteData[0].xLocation, overworldSpriteData[0].yLocation);
	PlacePlayerSprite(overworldSpriteData[0].xLocation, overworldSpriteData[0].yLocation, 0);
	UpdateOAMFromStructure();
	SetupSongForPlayback(currentMap.musicTrack, 0);
	SetCheckKeyPressesOverworld();
	AddFunction(&AnimateTiles, 0);
	AddFunction(&MoveNPCs, 0);
	CallbackMain = &OverworldBackgroundProcesses;
	RTCPaletteUpdate = &OverworldPaletteUpdate;
}
