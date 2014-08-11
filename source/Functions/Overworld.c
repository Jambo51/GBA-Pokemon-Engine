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

const RODATA_LOCATION u32 pauseOutline[1][9][8] = { { { 0x00000000, 0xFFFFFF00, 0xDDDDDAF0, 0xEEEEEDF0, 0xEEEEEDF0, 0xBCEEEDF0, 0x11CEEDF0, 0x11BEEDF0 },
		{ 0x00000000, 0xFFFFFFFF, 0xDDDDDDDD, 0xEEEEEEEE, 0xEEEEEEEE, 0xBBBBBBBB, 0x11111111, 0x11111111 },
		{ 0x00000000, 0x00FFFFFF, 0x0FADDDDD, 0x0FEEEEEE, 0x0FAEEEEE, 0x0FAEEECB, 0x0FAEEC11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0, 0x11BEEDF0 },
		{ 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111, 0x11111111 },
		{ 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11, 0x0FAEEB11 },
		{ 0x11BEEDF0, 0x11CEEDF0, 0xBCEEEDF0, 0xEEEEEDF0, 0xEEEEEEF0, 0xAAAAAFF0, 0xFFFFFF00, 0x00000000 },
		{ 0x11111111, 0x11111111, 0xBBBBBBBB, 0xEEEEEEEE, 0xEEEEEEEE, 0xAAAAAAAA, 0xFFFFFFFF, 0x00000000 },
		{ 0x0FAEEB11, 0x0FAEEC11, 0x0FAEEECB, 0x0FAEEEEE, 0x0FAEEEEE, 0x0FFAAAAA, 0x00FFFFFF, 0x00000000 }
} } ;

const u32 RODATA_LOCATION pauseOutlinePalette[8] = { 0x7FFF532E, 0x675A318C, 0x3AFF043C, 0x4BD20664, 0x7B146546, 0x6F5B3529, 0x663156F5, 0x18C541AE };
const u16 RODATA_LOCATION blackPalette[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
const u16 RODATA_LOCATION whitePalette[16] = { 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF, 0x7FFF };

#define NUMBASEMENUITEMS 5
#define NUMMENUITEMS 8

void TransitionToPokegear()
{

}

void TransitionToPokedex()
{

}

void TransitionToPokemonMenu()
{

}

void TransitionToBag()
{

}

void TransitionToPlayerCard()
{

}

void SaveGame()
{

}

void TransitionToOptions()
{

}

void ClearMenuBox(u16*, u32, u32);
void SetCheckKeyPressesOverworld(void);

void ExitMenu()
{
	ClearMenuBox((u16*)0x0600F82A, 18, 9);
	SetCheckKeyPressesOverworld();
	MemoryDeallocate(pauseMenuFunctions);
	pauseMenuFunctions = (void*)0;
}

const RODATA_LOCATION TextFunctionPair menuItems[] = { { "Pokégear", &TransitionToPokegear }, { "Pokédex", &TransitionToPokedex }, { "Pokémon", &TransitionToPokemonMenu }, { "Bag", &TransitionToBag }, { *(&player.name), &TransitionToPlayerCard }, { "Save", &SaveGame }, { "Options", &TransitionToOptions }, { "Exit", &ExitMenu } };

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
	memset32((void*)0x0600C000, 0x11111111, 0x460);
	memcpy32((void*)TilePaletteRAM(14), &pauseOutlinePalette, 8);
	REG_BG0CNT = MAIN_BG_SETTINGS2;
	vu32 i;
	u32 currentPosition = 0;
	for (i = 0; i < NUMMENUITEMS; i++)
	{
		if ((i < 3 && CheckFlag(Flag_Pokegear + i) == true) || i >= 3)
		{
			char* pointer = menuItems[i].string;
			if (pauseMenuLocation == currentPosition)
			{
				pointer = (char*)MemoryAllocate(12);
				StringCopy(pointer + 1, menuItems[i].string, 0);
				pointer[0] = '~' + 1;
				DrawString(pointer, 0, currentPosition << 4, 0x8);
				MemoryDeallocate(pointer);
			}
			else if (pointer != 0)
			{
				DrawString(pointer, 8, currentPosition << 4, 0x8);
			}
			currentPosition++;
		}
	}
	u16 paletteSlot = textPalette << 12;
	location[0] = paletteSlot | 1;
	memset16((void*)&(location[1]), paletteSlot | 2, 7);
	location[8] = paletteSlot | 3;
	for (i = 0; i < height; i++)
	{
		location[0x20 + (0x20 * i)] = paletteSlot | 4;
		u8 j;
		for (j = 0; j < 8; j++)
		{
			location[0x20 + (0x20 * i) + (j + 1)] = paletteSlot | (0x200 + i + (20 * j));
		}
		location[0x28 + (0x20 * i)] = paletteSlot | 6;
	}
	location[(0x20 * height)] = paletteSlot | 7;
	memset16((void*)&(location[(0x20 * height) + 1]), paletteSlot | 8, 7);
	location[(0x20 * height) + 8] = paletteSlot | 9;
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

void SetCheckKeyPressesOverworld(void);

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
	return NUMBASEMENUITEMS + CountExtraMenuRows();
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
			newLocation = CountMenuRows() - 1;
		}
		else
		{
			newLocation = currentLocation - 1;
		}
	}
	memset32((void*)(0x0600C000 + (currentLocation << 6)), 0x11111111, 16);
	DrawCharacter('~' + 1, 0, newLocation << 4, 0);
	pauseMenuLocation = (u8)newLocation;
}

void StartMenuKeyPresses()
{
	if (IsKeyDownButNotHeld(Key_Start) == true)
	{
		ExitMenu();
	}
	else if (IsKeyDownButNotHeld(Key_B) == true)
	{
		ExitMenu();
	}
	else if (IsKeyDownButNotHeld(Key_Up) == true)
	{
		HandleMenuMoveRequest(1);
	}
	else if (IsKeyDownButNotHeld(Key_Down) == true)
	{
		HandleMenuMoveRequest(0);
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
			Function = (void*)(((u32*)menuLoc)[NUMMENUITEMS - 1]);
			Function();
		}
	}
}

void SetPauseMenuFunctions()
{
	u8 currentSlot = 0;
	pauseMenuFunctions = MemoryAllocate(sizeof(u32) * 8);
	FunctionPtr* menuLoc = pauseMenuFunctions;
	if (CheckFlag(Flag_Pokegear) == 1)
	{
		menuLoc[currentSlot] = menuItems[0].function;
		currentSlot++;
	}
	if (CheckFlag(Flag_Pokedex) == 1)
	{
		menuLoc[currentSlot] = menuItems[1].function;
		currentSlot++;
	}
	if (CheckFlag(Flag_PokemonMenu) == 1)
	{
		menuLoc[currentSlot] = menuItems[2].function;
		currentSlot++;
	}
	u32 i;
	for (i = 0; i < 5; i++)
	{
		menuLoc[currentSlot] = menuItems[3 + i].function;
		currentSlot++;
	}
	if (currentSlot != 7)
	{
		menuLoc[NUMMENUITEMS - 1] = menuItems[NUMMENUITEMS - 1].function;
	}
}

void CheckKeyPressesOverworld()
{
	if (movingInformation.isMoving == 0 && IsKeyDown(Key_Start) == true && IsKeyHeld(Key_Start) == false)
	{
		SetPauseMenuFunctions();
		PlaceMenuBox((u16*)0x0600F82A, (CountMenuRows() << 1) + 1, 9);
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

const char* playerName = "Jambo51";

void LoadOverworld()
{
	SetPlayerName(playerName);
	player.stereoSound = 1;
	SetFlag(Flag_UsingGBP);
	animStruct = (TileAnimationStruct*)MemoryAllocate(sizeof(TileAnimationStruct) * 10);
	player.completeTrainerID = GetRandom32BitValue();
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
