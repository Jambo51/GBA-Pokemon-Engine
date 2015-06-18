/*
 * Game.cpp
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#include "Game.h"
#include "Pokemon.h"
#include "NonPlayerCharacter.h"
#include "Maths.h"
#include "GameModeManager.h"
#include "GameScreen.h"
#include <tonc.h>
#include "FlashFunctions.h"
#include "Mapping.h"

#define PartyLength 6
#define EggCycleLength 257
#define HappinessCycleLength 32
#define PoisonCycleLength 4
#define GEN123STYLEPOISON

EWRAM_LOCATION ALIGN(4) Pokemon Game::partyPokemon[PartyLength];
EWRAM_LOCATION ALIGN(4) PokemonStorageBoxes Game::storageBoxes;
EWRAM_LOCATION ALIGN(4) Pokemon Game::temporaryHoldingPokemon;
EWRAM_LOCATION ALIGN(4) Bag Game::bag;
EWRAM_LOCATION ALIGN(4) Player Game::player;
EWRAM_LOCATION ALIGN(4) MapHeader Game::currentMap;
EWRAM_LOCATION ALIGN(4) OptionsStruct Game::options;
EWRAM_LOCATION ALIGN(4) NPCData Game::overworldData[NumberOfOverworlds];
EWRAM_LOCATION ALIGN(4) u16* Game::currentPalette = NULL;
EWRAM_LOCATION ALIGN(4) u16* Game::targetPalette = NULL;
EWRAM_LOCATION ALIGN(4) u32 Game::numFrames = 0;
EWRAM_LOCATION ALIGN(4) u32 Game::alphaSteps = 0;
EWRAM_LOCATION ALIGN(4) u32 Game::currentAlpha = 0;
EWRAM_LOCATION ALIGN(2) u16 Game::eggCycle = EggCycleLength;
EWRAM_LOCATION ALIGN(1) u8 Game::happinessCycle = HappinessCycleLength;
EWRAM_LOCATION ALIGN(1) u8 Game::poisonCycle = PoisonCycleLength;
EWRAM_LOCATION ALIGN(2) u16 Game::repelCounter = 0;
EWRAM_LOCATION ALIGN(2) u16 Game::repelStrength = 0;
EWRAM_LOCATION ALIGN(2) u16 Game::regionalDexNumberSeen = 0;
EWRAM_LOCATION ALIGN(2) u16 Game::regionalDexNumberCaught = 0;
EWRAM_LOCATION ALIGN(2) u16 Game::nationalDexNumberSeen = 0;
EWRAM_LOCATION ALIGN(2) u16 Game::nationalDexNumberCaught = 0;
EWRAM_LOCATION ALIGN(1) char Game::buffers[NUMBUFFERS][BUFFERLENGTH];
EWRAM_LOCATION ALIGN(1) bool Game::doFade = false;
EWRAM_LOCATION ALIGN(1) bool Game::doFade2 = false;
EWRAM_LOCATION ALIGN(1) bool Game::doCallback = false;
EWRAM_LOCATION ALIGN(1) bool Game::doExitCallback = false;
EWRAM_LOCATION ALIGN(1) bool Game::paletteWriteDetected = false;
EWRAM_LOCATION ALIGN(1) bool Game::inMainGame = false;
EWRAM_LOCATION ALIGN(1) bool Game::fade256 = false;
EWRAM_LOCATION ALIGN(1) bool Game::cameraUpdate = false;
EWRAM_LOCATION ALIGN(1) bool Game::layer0Included = false;
EWRAM_LOCATION ALIGN(1) u8 Game::validGameSave = 0;
EWRAM_LOCATION ALIGN(1) u8 Game::soundEngineID = GBPSoundsEngineID;
EWRAM_LOCATION ALIGN(4) Vector2D Game::cameraPos = Vector2D(0, 8);
EWRAM_LOCATION ALIGN(4) VoidFunctionPointerVoid Game::callbackFunction = NULL;
RODATA_LOCATION ALIGN(4) u32 Game::framesInFades[MaxFadeIDs] = { 8, 16, 32, 64, 128 };
RODATA_LOCATION ALIGN(4) u32 Game::alphaStepsInFades[MaxFadeIDs] = { 4, 2, 1, 0x800, 0x400 };
RODATA_LOCATION ALIGN(2) u16 Game::blackPalette[512] = { 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000, 0x8000 };
RODATA_LOCATION ALIGN(2) u16 Game::whitePalette[512] = { 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF };

#define SizeOfPokemonBoxStructure sizeof(PokemonStorageBoxes)
#define BaseBlocks (SizeOfPokemonBoxStructure / SaveBlockMaxLength)
#define LengthOfLastStorageBoxBlock (SizeOfPokemonBoxStructure - (BaseBlocks * SaveBlockMaxLength))
#define BaseSaveAddress ((0x1000 * BaseBlocks) + LengthOfLastStorageBoxBlock)

RODATA_LOCATION ALIGN(4) SaveLocationStruct Game::saveData[] = {
		{ (u8*)0x0000, (u8*)&Game::storageBoxes, SaveBlockMaxLength },
		{ (u8*)0x1000, (u8*)((u32)&Game::storageBoxes + SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x2000, (u8*)((u32)&Game::storageBoxes + 2 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x3000, (u8*)((u32)&Game::storageBoxes + 3 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x4000, (u8*)((u32)&Game::storageBoxes + 4 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x5000, (u8*)((u32)&Game::storageBoxes + 5 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x6000, (u8*)((u32)&Game::storageBoxes + 6 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x7000, (u8*)((u32)&Game::storageBoxes + 7 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x8000, (u8*)((u32)&Game::storageBoxes + 8 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0x9000, (u8*)((u32)&Game::storageBoxes + 9 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0xA000, (u8*)((u32)&Game::storageBoxes + 10 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0xB000, (u8*)((u32)&Game::storageBoxes + 11 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0xC000, (u8*)((u32)&Game::storageBoxes + 12 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0xD000, (u8*)((u32)&Game::storageBoxes + 13 * SaveBlockMaxLength), SaveBlockMaxLength },
		{ (u8*)0xE000, (u8*)((u32)&Game::storageBoxes + 14 * SaveBlockMaxLength), LengthOfLastStorageBoxBlock },
		{ (u8*)BaseSaveAddress, (u8*)&Game::partyPokemon, sizeof(Pokemon) * PartyLength },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength), (u8*)&Game::player, sizeof(Player) },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player)), (u8*)&Game::currentMap.mapLocation, sizeof(MapBankMapCombo) },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo)), (u8*)&Game::options, sizeof(Options) },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options)), (u8*)&Game::overworldData, sizeof(NPCData) * NumberOfOverworlds },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds)), (u8*)&Game::validGameSave, 1 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8)), (u8*)&Game::soundEngineID, 1 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2), (u8*)&Game::regionalDexNumberSeen, 2 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16)), (u8*)&Game::regionalDexNumberCaught, 2 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 2), (u8*)&Game::nationalDexNumberSeen, 2 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 3), (u8*)&Game::nationalDexNumberCaught, 2 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 4), (u8*)&Game::eggCycle, 2 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 5), (u8*)&Game::repelCounter, 2 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 6), (u8*)&Game::repelStrength, 2 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 7), (u8*)&Game::happinessCycle, 1 },
		{ (u8*)(BaseSaveAddress + sizeof(Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 7 + sizeof(u8)), (u8*)&Game::poisonCycle, 1 },
		{ (u8*)(0x1000 * (BaseBlocks + 1)), (u8*)&Game::bag, sizeof(Bag) },
		{ (u8*)0xFFFFFFFF, 0, 0 }
};

Game::Game()
{
}

Game::~Game()
{
}

void Game::Initialise()
{
	options.allOptions = 0;
	options.options.stereoSound = 1;
	options.options.textSpeed = 2;
	options.options.useImperialUnits = 1;
	memset32(&storageBoxes, 0, sizeof(PokemonStorageBoxes) >> 2);
	memset32(&partyPokemon, 0, (sizeof(Pokemon) * 6) >> 2);
	memset32(&bag, 0, sizeof(Bag) >> 2);
	memset32(&player, 0, sizeof(Player) >> 2);
	memset32(&overworldData, 0, (sizeof(NPCData) * NumberOfOverworlds) >> 2);
	soundEngineID = GBPSoundsEngineID;
	eggCycle = EggCycleLength;
	happinessCycle = HappinessCycleLength;
	poisonCycle = PoisonCycleLength;
	repelCounter = 0;
	repelStrength = 0;
	regionalDexNumberCaught = 0;
	regionalDexNumberSeen = 0;
	nationalDexNumberCaught = 0;
	nationalDexNumberSeen = 0;
	cameraPos = Vector2D(0, 8);
}

void Game::OnTakeStep()
{
	if (eggCycle == 0)
	{
		eggCycle = EggCycleLength;
		OnEggCycleExpire();
	}
	else
	{
		eggCycle--;
	}
	if (happinessCycle == 0)
	{
		happinessCycle = HappinessCycleLength;
		OnHappinessCycleExpire();
	}
	else
	{
		happinessCycle--;
	}
	if (poisonCycle == 0)
	{
		poisonCycle = PoisonCycleLength;
		OnPoisonCycleExpire();
	}
	else
	{
		poisonCycle--;
	}
	if (repelCounter)
	{
		repelCounter--;
		if (!repelCounter)
		{
			// End repel
		}
	}
}

void Game::OnEggCycleExpire()
{
	// Egg cycle expiry code
	bool doubleHatching = false;
	for (int i = 0; i < 6; i++)
	{
		if (partyPokemon[i].Decrypt(PersonalityID))
		{
			u8 ability = partyPokemon[i].Decrypt(Ability);
			if (!partyPokemon[i].Decrypt(IsEgg) && (ability == Magma_Armour || ability == Flame_Body))
			{
				doubleHatching = true;
				break;
			}
		}
	}
	for (int i = 0; i < 6; i++)
	{
		if (partyPokemon[i].Decrypt(PersonalityID) && partyPokemon[i].Decrypt(IsEgg))
		{
			u32 value = partyPokemon[i].Decrypt(Friendship);
			if (doubleHatching && value >= 2)
			{
				value -= 2 ;
				partyPokemon[i].Encrypt(Friendship, value);
			}
			else
			{
				value--;
				partyPokemon[i].Encrypt(Friendship, value);
			}
			if (value == 0)
			{
				// Make note of need to hatch
			}
		}
	}
}

void Game::OnHappinessCycleExpire()
{
	for (int i = 0; i < 6; i++)
	{
		if (partyPokemon[i].Decrypt(PersonalityID) && !partyPokemon[i].Decrypt(IsEgg))
		{
			u32 itemEffect = 0;//Items::GetItemEffectFromID(partyPokemon[i].Decrypt(HeldItem));
			u32 value = partyPokemon[i].Decrypt(Friendship);
			if (itemEffect == Item_Effect_Increase_Happiness_Gain)
			{
				value += 1 + 0;//Items::GetItemStrengthFromID(partyPokemon[i].Decrypt(HeldItem));
			}
			else
			{
				value++;
			}
			if (value > MaxHappinessAllowed)
			{
				value = MaxHappinessAllowed;
			}
			partyPokemon[i].Encrypt(Friendship, value);
		}
	}
}

void Game::OnPoisonCycleExpire()
{
	for (int i = 0; i < 6; i++)
	{
		PrimaryStatusStruct status = partyPokemon[i].GetStatus();
		if (partyPokemon[i].Decrypt(PersonalityID) && (status.badlyPoisoned || status.poisoned))
		{
#ifdef GEN123STYLEPOISON
			u32 value = partyPokemon[i].Decrypt(CurrentHP);
			if (value > 0)
			{
				value--;
				partyPokemon[i].Encrypt(CurrentHP, value);
				if (value == 0)
				{
					status.badlyPoisoned = 0;
					status.poisoned = 0;
					status.badlyPoisonedCounter = 0;
					// Fainted script
				}
			}
#else
			u32 value = partyPokemon[i].Decrypt(CurrentHP);
			if (value > 1)
			{
				value--;
				partyPokemon[i].Encrypt(CurrentHP, value);
				if (value == 1)
				{
					status.badlyPoisoned = 0;
					status.poisoned = 0;
					status.badlyPoisonedCounter = 0;
					// Cured of poison script
				}
			}
#endif
		}
	}
}

void Game::Update()
{
	if (cameraUpdate)
	{
		s16 x = Maths::UnsignedModulus(cameraPos.GetX(), 0x200);
		s16 y = Maths::UnsignedModulus(cameraPos.GetY(), 0x200);
		*BG3HOFS = x;
		*BG3VOFS = y;
		*BG1HOFS = x;
		*BG1VOFS = y;
		*BG2HOFS = x;
		*BG2VOFS = y;
		if (layer0Included)
		{
			*BG0HOFS = x;
			*BG0VOFS = y;
		}
	}
	if (doFade)
	{
		doFade = false;
		doFade2 = true;
	}
	else if (doFade2)
	{
		if (numFrames != 0)
		{
			currentAlpha += alphaSteps;
			DoFade();
			numFrames--;
		}
		else
		{
			doFade = false;
			doFade2 = false;
			memset32(currentPalette, 0, (sizeof(u16) * 512) >> 2);
			delete[] currentPalette;
			currentPalette = NULL;
			if (targetPalette)
			{
				SetPalette(targetPalette);
				if ((u32)targetPalette < 0x02040000 && (u32)targetPalette >= 0x02000000)
				{
					memset32(targetPalette, 0, (sizeof(u16) * 512) >> 2);
					delete[] targetPalette;
				}
			}
			targetPalette = NULL;
			if (callbackFunction)
			{
				callbackFunction();
				callbackFunction = NULL;
			}
			if (doCallback)
			{
				if (doExitCallback)
				{
					GameModeManager::RunExitCallback();
				}
				else
				{
					GameModeManager::RunEnterCallback();
				}
			}
			if (!paletteWriteDetected)
			{
				doCallback = false;
				doExitCallback = false;
				fade256 = false;
			}
			paletteWriteDetected = false;
		}
	}
}

bool Game::AddNewPokemon(const Pokemon &p)
{
	for (int i = 0; i < 6; i++)
	{
		if (partyPokemon[i].Decrypt(PersonalityID) == 0)
		{
			partyPokemon[i] = p;
			return true;
		}
	}
	if (storageBoxes.info.numPokemon == POKEMONPERBOX * NUMBOXES)
	{
		return false;
	}
	for (int i = 0; i < POKEMONPERBOX; i++)
	{
		if (storageBoxes.boxData[storageBoxes.info.currentBoxID][i].Decrypt(PersonalityID) == 0)
		{
			storageBoxes.boxData[storageBoxes.info.currentBoxID][i] = p.GetMainData();
			storageBoxes.info.numPokemon++;
			return true;
		}
	}
	for (int i = 0; i < NUMBOXES; i++)
	{
		if (i == storageBoxes.info.currentBoxID)
		{
			continue;
		}
		for (int j = 0; j < POKEMONPERBOX; j++)
		{
			if (storageBoxes.boxData[i][j].Decrypt(PersonalityID) == 0)
			{
				storageBoxes.boxData[i][j] = p.GetMainData();
				storageBoxes.info.numPokemon++;
				storageBoxes.info.currentBoxID = i;
				return true;
			}
		}
	}
	return false;
}

u32 Game::CountPokemon(Pokemon* location, u32 length)
{
	u32 counter = 0;
	u32 i;
	for (i = 0; i < length; i++)
	{
		if (location[i].Decrypt(PersonalityID) != 0)
		{
			counter++;
		}
	}
	return counter;
}

u32 Game::CountAbridgedPokemon(AbridgedPokemon* location, u32 length)
{
	u32 counter = 0;
	u32 i;
	for (i = 0; i < length; i++)
	{
		if (location[i].Decrypt(PersonalityID) != 0)
		{
			counter++;
		}
	}
	return counter;
}

u32 Game::CountPartyPokemon()
{
	return CountPokemon((Pokemon*)&partyPokemon, 6);
}

u32 Game::CountBoxPokemon(u32 boxID)
{
	u32 address = (u32)&storageBoxes.boxData;
	address += POKEMONPERBOX * boxID * sizeof(AbridgedPokemon);
	return CountAbridgedPokemon((AbridgedPokemon*)address, POKEMONPERBOX);
}

u32 Game::CountAllBoxPokemon()
{
	return storageBoxes.info.numPokemon;
}

void Game::StartTimer(int timerNum, int timerSetting, u16 cascadeValue)
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

bool Game::AddNPC(NonPlayerCharacter* npc)
{
	for (int i = 1; i < NumberOfOverworlds; i++)
	{
		if (npc->GetObjectID() == overworldData[i].dataSpriteID)
		{
			return false;
		}
	}
	for (int i = 0; i < NumberOfOverworlds; i++)
	{
		if (!overworldData[i].isActive)
		{
			overworldData[i].dataPointer = npc;
			overworldData[i].isActive = 1;
			overworldData[i].xLocation = npc->GetPosition().GetX();
			overworldData[i].yLocation = npc->GetPosition().GetY();
			overworldData[i].prevXLocation = npc->GetPosition().GetX();
			overworldData[i].prevYLocation = npc->GetPosition().GetY();
			overworldData[i].dataSpriteID = npc->GetObjectID();
			overworldData[i].isMoving = 0;
			overworldData[i].frameID = 0;
			overworldData[i].frameDelay = 0;
			overworldData[i].isMoving = 0;
			overworldData[i].nextWalkingFrame = 0;
			overworldData[i].oamStructID = 0;
			overworldData[i].pixelsMoved = 0;
			overworldData[i].previousWalkingFrame = 0;
			overworldData[i].scriptLocation = 0;
			overworldData[i].spriteID = npc->GetSpriteIndex();
			return true;
		}
	}
	return false;
}

void Game::OverwriteNPC(NonPlayerCharacter* npc, u32 position)
{
	if (position < NumberOfOverworlds)
	{
		overworldData[position].dataPointer = npc;
		overworldData[position].isActive = 1;
		overworldData[position].xLocation = npc->GetPosition().GetX();
		overworldData[position].yLocation = npc->GetPosition().GetY();
		overworldData[position].prevXLocation = npc->GetPosition().GetX();
		overworldData[position].prevYLocation = npc->GetPosition().GetY();
		overworldData[position].dataSpriteID = npc->GetObjectID();
		overworldData[position].isMoving = 0;
		overworldData[position].frameID = 0;
		overworldData[position].frameDelay = 0;
		overworldData[position].isMoving = 0;
		overworldData[position].nextWalkingFrame = 0;
		overworldData[position].oamStructID = 0;
		overworldData[position].pixelsMoved = 0;
		overworldData[position].previousWalkingFrame = 0;
		overworldData[position].scriptLocation = 0;
		overworldData[position].spriteID = npc->GetSpriteIndex();
	}
}

u16* Game::GetCurrentPalette()
{
	u16* temp = new u16[512];
	memcpy32((void*)temp, (const void*)0x05000000, 0x100);
	return temp;
}

void Game::SetPalette(u16 *Palette)
{
	memcpy32((void*)0x05000000, (const void*)Palette, 0x100);
}

u32 Game::GetFadeColour(u16 clra, u16 clrb)
{
	if (clra == clrb)
	{
		return clra;
	}


	const u32 rbmask= (RED_MASK|BLUE_MASK), gmask= GREEN_MASK;
	const u32 rbhalf= 0x4010, ghalf= 0x0200;

	// Red and blue
	u32 parta = clra & rbmask;
	u32 partb = clrb & rbmask;
	u32 part = (partb-parta) * (32 - ((currentAlpha < 0x100) ? currentAlpha : currentAlpha >> 12)) + parta*32 + rbhalf;
	u16 clr = (part >> 5) & rbmask;

	// Green
	parta = clra & gmask;
	partb = clrb & gmask;
	part = (partb-parta) * (32 - ((currentAlpha < 0x100) ? currentAlpha : currentAlpha >> 12)) + parta*32 + ghalf;
	clr |= (part >> 5) & gmask;

	return clr;
}

void Game::DoFadeOnPalette(u32 paletteID, u16* target, u16* current)
{
	u16* dst = (u16*)(0x05000000 + 0x20 * paletteID);
	for(u32 i = (fade256) ? 0 : 1; i < 16; i++)
	{
		dst[i] = GetFadeColour(target[i], current[i]);
	}
}

void Game::DoFade()
{
	for(u32 i = 0; i < 32; i++)
	{
		DoFadeOnPalette(i, (u16*)&targetPalette[(16 * i)], (u16*)&currentPalette[(16 * i)]);
	}
}

void Game::FadeToGreyScale(FadeIDs FrameCount, bool callback, bool exitCallback)
{
	if (!doFade)
	{
		currentPalette = GetCurrentPalette();
		targetPalette = GetGreyScale(currentPalette);
		doFade = true;
		numFrames = FrameCount;
		doCallback = callback;
		doExitCallback = exitCallback;
	}
}

u16* Game::GetGreyScale(const u16* original)
{
	u16* dst = new u16[512];
	u16* orig = dst;
	u32 ii;
	u32 clr, gray, rr, gg, bb;

	for(ii=0; ii< 512; ii++)
	{
		clr = original[ii];

		// Do RGB conversion in .8 fixed point
		rr= ((clr    )&31)*0x4C;	// 29.7%
		gg= ((clr>> 5)&31)*0x96;	// 58.6%
		bb= ((clr>>10)&31)*0x1E;	// 11.7%
		gray= (rr+gg+bb+0x80)>>8;

		*dst++= RGB15(gray, gray, gray);
	}
	return orig;
}

void Game::FadeToPalette(const u16 *newPalette, bool fade256Colours, FadeIDs FrameCount, bool callback, bool exitCallback)
{
	if (!doFade)
	{
		if (FrameCount < MaxFadeIDs)
		{
			currentPalette = GetCurrentPalette();
			doFade = true;
			numFrames = framesInFades[FrameCount];
			alphaSteps = alphaStepsInFades[FrameCount];
			currentAlpha = 0;
			targetPalette = (u16*)newPalette;
			doCallback = callback;
			doExitCallback = exitCallback;
			paletteWriteDetected = true;
			fade256 = fade256Colours;
		}
	}
	else
	{
		if ((u32)targetPalette < 0x02040000 && (u32)targetPalette >= 0x02000000)
		{
			memset32(targetPalette, 0, (sizeof(u16) * 512) >> 2);
			delete[] targetPalette;
			targetPalette = NULL;
		}
	}
}

void Game::Save()
{
	validGameSave = true;
	FlashFunctions::WriteToFlash((SaveLocationStruct*)&saveData);
}

void Game::Load()
{
	FlashFunctions::ReadFromFlash((SaveLocationStruct*)&saveData);
	if (validGameSave != 1)
	{
		Initialise();
	}
}

void Game::SetPaletteToWhite()
{
	SetPalette((u16*)&whitePalette);
}

void Game::MoveCamera(const Vector2D &delta)
{
	cameraPos += delta;
}

void Game::SetCamera(const Vector2D &position)
{
	cameraPos = position;
}

u16 Game::CountPokedexPokemon(u32 mode, u32 seenCaughtIndex)
{
	if (mode)
	{
		if (seenCaughtIndex)
		{
			return nationalDexNumberCaught;
		}
		else
		{
			return nationalDexNumberSeen;
		}
	}
	else
	{
		if (seenCaughtIndex)
		{
			return regionalDexNumberCaught;
		}
		else
		{
			return regionalDexNumberSeen;
		}
	}
}
