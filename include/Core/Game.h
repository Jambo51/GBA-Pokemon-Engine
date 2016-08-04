/*
 * Game.h
 *
 *  Created on: 14 May 2015
 *      Author: Jamie
 */

#ifndef GAME_H_
#define GAME_H_

#include "GlobalDefinitions.h"
#include "Scenes/Overworld/MappingDefinitions.h"
#include "Pokemon/Pokemon.h"
#include "Vector2D.h"
#include "Callbacks/Callback.h"
#include "Entities/NonPlayerCharacter.h"
#include "Collections/Queues/LinkedQueue.h"
#include "SmartPointer.h"
#include "Tasks/Memory/MemoryTask.h"
#include "Tasks/ScriptRunners/OverworldScriptRunner.h"
#include "Core/Data/Items.h"
#include "Collections.h"
#include "LibraryHeaders/liboverworldscripts.h"
#include "Core/Data/Variables.h"
#include "Callbacks/ReleaseFromScriptCallback.h"

#define PartyLength 6
#define EggCycleLength 257
#define HappinessCycleLength 32
#define PoisonCycleLength 4

namespace Core
{

	typedef struct PokemonStorageBoxes {
		StorageBoxInfo info;
		Pokemon::AbridgedPokemon boxData[NUMBOXES][POKEMONPERBOX];
	} PokemonStorageBoxes;

	typedef struct NPCData {
		SmartPointer<Entities::NonPlayerCharacter> dataPointer;
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
		u32 isLocked;
	} NPCData;

	enum SoundEngineIDs { M4AEngineID, GBPSoundsEngineID };

	enum LogicalFacingDirections { Facing_Down_Logical, Facing_Up_Logical, Facing_Left_Logical, Facing_Right_Logical };

	class Game
	{
		friend class Tasks::Memory::MemoryTask;
	private:
		static Pokemon::Pokemon partyPokemon[];
		static Pokemon::Pokemon temporaryHoldingPokemon;
		static Pokemon::Pokemon dayCarePokemon[];
		static u16 dayCareStatus;
		static PokemonStorageBoxes storageBoxes;
		static Bag bag;
		static Bag PCItemStorage;
		static Player player;
		static MapHeader currentMap;
		static HealingPlace currentHealingPlace;
		static OptionsStruct options;
		static char buffers[NUMBUFFERS][BUFFERLENGTH];
		static NPCData overworldData[];
		static bool inMainGame;
		static bool cameraUpdate;
		static bool layer0Included;
		static u8 validGameSave;
		static u8 soundEngineID;
		static u16 eggCycle;
		static u8 happinessCycle;
		static u8 poisonCycle;
		static u8 menuPosition;
		static u16 repelCounter;
		static u16 repelStrength;
		static Vector2D cameraPos;
		static u8 layer0ID;
		static u8 layer1ID;
		static u8 layer2ID;
		static u8 layer3ID;
		static Collections::Queues::LinkedQueue<SmartPointer<Callbacks::Callback> > actions;
		static VoidFunctionPointerU32 selectMapped;
		static VoidFunctionPointerU32 lMapped;
		static VoidFunctionPointerU32 rMapped;
		Game();
		~Game();
		static u32 CountPokemon(Pokemon::Pokemon* location, u32 length);
		static u32 CountAbridgedPokemon(Pokemon::AbridgedPokemon* location, u32 length);
		static u16* GetCurrentPalette();
		static void OnEggCycleExpire();
		static void OnHappinessCycleExpire();
		static void OnPoisonCycleExpire();
	public:
		static void Initialise();
		static void Update();
		static void SetCurrentMap(const MapHeader &mapHeader) { currentMap = mapHeader; }
		static Player & GetPlayer() { return player; }
		static const MapHeader & GetCurrentMap() { return currentMap; }
		static Options & GetOptions() { return options.options; }
		static const Options & GetConstOptions() { return options.options; }
		static bool AddNewPokemon(const Pokemon::Pokemon &p);
		static u32 CountPartyPokemon();
		static u32 CountBoxPokemon(u32 boxID);
		static u32 CountAllBoxPokemon();
		static void StartTimer(int timerNum, int timerSetting = 0, u16 cascadeValue = 0);
		static bool AddNPC(SmartPointer<Entities::NonPlayerCharacter> npc);
		static void OverwriteNPC(SmartPointer<Entities::NonPlayerCharacter> npc, u32 position);
		static bool ValidSaveDetected() { return validGameSave == 1; }
		static void ValidSaveDetected(bool newValue) { if (newValue) { validGameSave = 1; } else { validGameSave = 0; } }
		static u32 GetSoundEngineID() { return soundEngineID; }
		static void SetPaletteToWhite();
		static bool MainGame() { return inMainGame; }
		static void MainGame(bool newValue) { inMainGame = newValue; }
		static char* GetBufferPointer(u32 bufferID) { if (bufferID < NUMBUFFERS) { return (char*)&buffers[bufferID]; } return NULL; }
		static Pokemon::Pokemon* GetPartyPokemon(u32 indexID) { if (indexID < 6) { return &partyPokemon[indexID]; } return NULL; }
		static Pokemon::Pokemon* GetTemporaryPokemon() { return &temporaryHoldingPokemon; }
		static NPCData* GetNPCData() { return (NPCData*)&overworldData; }
		static void OnTakeStep();
		static void MoveCamera(const Vector2D &delta);
		static void SetCamera(const Vector2D &position);
		static bool CameraUpdate() { return cameraUpdate; }
		static void CameraUpdate(bool newValue) { cameraUpdate = newValue; }
		static void SetCameraMode(bool isActive, bool layer0Mode) { cameraUpdate = isActive; layer0Included = layer0Mode; }
		static bool AddNewPokemonToParty(const Pokemon::Pokemon &p);
		static const HealingPlace & GetHealingPlace() { return currentHealingPlace; }
		static void SetHealingPlace(const HealingPlace &newPlace) { currentHealingPlace = newPlace; }
		static const Vector2D GetPlayerPos() { return Vector2D(overworldData[0].xLocation, overworldData[0].yLocation); }
		static bool AddItemsToBagLocation(u16 itemID, u16 numberOfItems, bool doIt = true, Bag &bagLoc = bag);
		static bool RemoveItemsFromBagLocation(u16 itemID, u16 numberOfItems, bool doIt = true, Bag &bagLoc = bag);
		static bool FindItemsInBagLocation(u16 itemID, u16 numberOfItems, const Bag &bagLoc = bag);
		static bool AddItemsToBag(u16 itemID, u16 numberOfItems, bool doIt = true);
		static bool RemoveItemsFromBag(u16 itemID, u16 numberOfItems, bool doIt = true);
		static bool FindItemsInBag(u16 itemID, u16 numberOfItems);
		static bool AddItemsToPC(u16 itemID, u16 numberOfItems, bool doIt = true);
		static bool RemoveItemsFromPC(u16 itemID, u16 numberOfItems, bool doIt = true);
		static bool FindItemsInPC(u16 itemID, u16 numberOfItems);
		static bool GivePlayerMoney(u32 cashAwarded);
		static bool RemovePlayerMoney(u32 cashRemoved);
		static bool GivePlayerMumMoney(u32 cashAwarded);
		static bool RemovePlayerMumMoney(u32 cashRemoved);
		static void ClearParty();
		static Pokemon::Pokemon* GetDayCarePokemon(u32 indexID) { if (indexID < 3) { return &dayCarePokemon[indexID]; } return NULL; }
		static u16 GetDayCareStatus() { return dayCareStatus; }
		static u32 GetMenuPosition() { return menuPosition; }
		static void SetMenuPosition(u32 newMenuPosition) { if (newMenuPosition < 0x100) { menuPosition = newMenuPosition; } }
		static void SetLayer(u32 layerID, u32 layerPos)
		{
			if (layerPos < 32)
			{
				switch (layerID)
				{
					case 0:
						layer0ID = layerPos;
						break;
					case 1:
						layer1ID = layerPos;
						break;
					case 2:
						layer2ID = layerPos;
						break;
					case 3:
						layer3ID = layerPos;
						break;
					default:
						break;
				}
			}
		}
		static u16* GetLayerPointer(u32 layerID)
		{
			u16* pointer = NULL;
			switch (layerID)
			{
				case 0:
					pointer = (u16*)(0x06000000 + (0x800 * layer0ID));
					break;
				case 1:
					pointer = (u16*)(0x06000000 + (0x800 * layer1ID));
					break;
				case 2:
					pointer = (u16*)(0x06000000 + (0x800 * layer2ID));
					break;
				case 3:
					pointer = (u16*)(0x06000000 + (0x800 * layer3ID));
					break;
				default:
					break;
			}
			return pointer;
		}
		static u32 GetLayer(u32 layerID)
		{
			u32 pointer = U32Max;
			switch (layerID)
			{
				case 0:
					pointer = layer0ID;
					break;
				case 1:
					pointer = layer1ID;
					break;
				case 2:
					pointer = layer2ID;
					break;
				case 3:
					pointer = layer3ID;
					break;
				default:
					break;
			}
			return pointer;
		}
		static void SetPlayerName(char* name);
		static void SetRivalName(char* name, u32 rivalIndex);
		static void ClearPlayer();
		static void InitialisePlayer();
		static void ExecuteSelectMapped()
		{
			if (selectMapped)
			{
				selectMapped(Data::Item_Context_Mapped);
			}
			else
			{
				Data::Variables::SetVar(Var_LastResult, 0);
				Tasks::ScriptRunners::OverworldScriptRunner* runner = new Tasks::ScriptRunners::OverworldScriptRunner((u8*)&SelectMappedScript);
				runner->SetCallback(new Callbacks::ReleaseFromScriptCallback());
			}
		}
		static void ExecuteLMapped()
		{
			if (lMapped)
			{
				lMapped(Data::Item_Context_Mapped);
			}
			else
			{
				Data::Variables::SetVar(Var_LastResult, 1);
				Tasks::ScriptRunners::OverworldScriptRunner* runner = new Tasks::ScriptRunners::OverworldScriptRunner((u8*)&SelectMappedScript);
				runner->SetCallback(new Callbacks::ReleaseFromScriptCallback());
			}
		}
		static void ExecuteRMapped()
		{
			if (rMapped)
			{
				rMapped(Data::Item_Context_Mapped);
			}
			else
			{
				Data::Variables::SetVar(Var_LastResult, 2);
				Tasks::ScriptRunners::OverworldScriptRunner* runner = new Tasks::ScriptRunners::OverworldScriptRunner((u8*)&SelectMappedScript);
				runner->SetCallback(new Callbacks::ReleaseFromScriptCallback());
			}
		}
		static void DisableNPCMovement(s32 id = -1);
		static void EnableNPCMovement(s32 id = -1);
	};
}

#endif /* GAME_H_ */
