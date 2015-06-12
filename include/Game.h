/*
 * Game.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef GAME_H_
#define GAME_H_

#include "GlobalDefinitions.h"
#include "MappingDefinitions.h"
#include "Pokemon.h"

enum SoundEngineIDs { M4AEngineID, GBPSoundsEngineID };

enum FadeIDs { EighthSecond, QuarterSecond, HalfSecond, Second, TwoSecond, MaxFadeIDs };

enum LogicalFacingDirections { Facing_Down_Logical, Facing_Up_Logical, Facing_Left_Logical, Facing_Right_Logical };

class NonPlayerCharacter;

typedef struct PokemonStorageBoxes {
	StorageBoxInfo info;
	AbridgedPokemon boxData[NUMBOXES][POKEMONPERBOX];
} PokemonStorageBoxes;

typedef struct NPCData {
	NonPlayerCharacter* dataPointer;
	u16 xLocation;
	u16 yLocation;
	u16 prevXLocation;
	u16 prevYLocation;
	u8* scriptLocation;
	u8 spriteID;
	u8 frameID:4;
	u8 isActive:1;
	u8 isMoving:1;
	u8 isVertical:1;
	u8 isPositive:1;
	u8 oamStructID;
	u8 nextWalkingFrame;
	u8 previousWalkingFrame;
	u8 frameDelay;
	u8 pixelsMoved;
	u8 dataSpriteID;
} NPCData;

class Game
{
private:
	static Pokemon partyPokemon[];
	static Pokemon temporaryHoldingPokemon;
	static PokemonStorageBoxes storageBoxes;
	static Bag bag;
	static Player player;
	static MapHeader currentMap;
	static OptionsStruct options;
	static char buffers[NUMBUFFERS][BUFFERLENGTH];
	static NPCData overworldData[];
	static bool doFade;
	static bool doFade2;
	static bool doCallback;
	static bool doExitCallback;
	static bool paletteWriteDetected;
	static bool inMainGame;
	static bool fade256;
	static u8 validGameSave;
	static u8 soundEngineID;
	static u16* currentPalette;
	static u16* targetPalette;
	static u32 numFrames;
	static u32 alphaSteps;
	static u32 currentAlpha;
	static u16 blackPalette[];
	static u16 whitePalette[];
	static SaveLocationStruct saveData[];
	static u32 framesInFades[];
	static u32 alphaStepsInFades[];
	static u16 eggCycle;
	static u16 happinessCycle;
	static u16 repelCounter;
	static u16 repelStrength;
	Game();
	~Game();
	static u32 CountPokemon(Pokemon* location, u32 length);
	static u32 CountAbridgedPokemon(AbridgedPokemon* location, u32 length);
	static u32 GetFadeColour(u16 clra, u16 clrb);
	static void DoFadeOnPalette(u32 paletteID, u16* target, u16* current);
	static void DoFade();
	static void SetPalette(u16 *Palette);
	static u16* GetCurrentPalette();
	static void OnEggCycleExpire();
	static void OnHappinessCycleExpire();
public:
	static void Initialise();
	static void Update();
	static void SetCurrentMap(const MapHeader &mapHeader) { currentMap = mapHeader; }
	static Player & GetPlayer() { return player; }
	static const MapHeader & GetCurrentMap() { return currentMap; }
	static Options & GetOptions() { return options.options; }
	static const Options & GetConstOptions() { return options.options; }
	static bool AddNewPokemon(const Pokemon &p);
	static u32 CountPartyPokemon();
	static u32 CountBoxPokemon(u32 boxID);
	static u32 CountAllBoxPokemon();
	static void StartTimer(int timerNum, int timerSetting = 0, u16 cascadeValue = 0);
	static bool AddNPC(NonPlayerCharacter* npc);
	static void OverwriteNPC(NonPlayerCharacter* npc, u32 position);
	static void FadeToPalette(const u16* newPalette, bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true);
	static void FadeToGreyScale(FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true);
	static void FadeToBlack(bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true) { FadeToPalette((const u16*)&blackPalette, fade256Colours, FrameCount, callback, exitCallback); }
	static void FadeToWhite(bool fade256Colours = false, FadeIDs FrameCount = HalfSecond, bool callback = false, bool exitCallback = true) { FadeToPalette((const u16*)&whitePalette, fade256Colours, FrameCount, callback, exitCallback); }
	static u16* GetGreyScale(const u16* original);
	static void Save();
	static void Load();
	static bool ValidSaveDetected() { return validGameSave == 1; }
	static void ValidSaveDetected(bool newValue) { if (newValue) { validGameSave = 1; } else { validGameSave = 0; } }
	static u32 GetSoundEngineID() { return soundEngineID; }
	static void SetPaletteToWhite();
	static bool MainGame() { return inMainGame; }
	static void MainGame(bool newValue) { inMainGame = newValue; }
	static char* GetBufferPointer(u32 bufferID) { if (bufferID < NUMBUFFERS) { return (char*)&buffers[bufferID]; } return NULL; }
	static Pokemon* GetPartyPokemon(u32 indexID) { if (indexID < 6) { return &partyPokemon[indexID]; } return NULL; }
	static Pokemon* GetTemporaryPokemon() { return &temporaryHoldingPokemon; }
	static NPCData* GetNPCDataPointer() { return (NPCData*)&overworldData; }
	static void OnTakeStep();
};

#endif /* GAME_H_ */
