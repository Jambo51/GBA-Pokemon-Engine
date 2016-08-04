/*
 * MemoryTask.cpp
 *
 *  Created on: 19 Jun 2016
 *      Author: CoolerMaster
 */

#include "Tasks/Memory/MemoryTask.h"
#include "Core/Game.h"
#include "Core/Data/Flags.h"
#include "Core/Data/Variables.h"
#include "Core/FlashFunctions.h"

using namespace Core;
using namespace Core::Data;

namespace Tasks
{
	namespace Memory
	{

		#define SizeOfPokemonBoxStructure sizeof(PokemonStorageBoxes)
		#define BaseBlocks (SizeOfPokemonBoxStructure / SaveBlockMaxLength)
		#define LengthOfLastStorageBoxBlock (SizeOfPokemonBoxStructure - (BaseBlocks * SaveBlockMaxLength))
		#define BaseSaveAddress ((0x1000 * BaseBlocks) + LengthOfLastStorageBoxBlock)


		RODATA_LOCATION ALIGN(4) SaveLocationStruct MemoryTask::saveData[] = {
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
				{ (u8*)BaseSaveAddress, (u8*)&Game::partyPokemon, sizeof(Core::Pokemon::Pokemon) * PartyLength },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength), (u8*)&Game::player, sizeof(Player) },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player)), (u8*)&Game::currentMap.mapLocation, sizeof(MapBankMapCombo) },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo)), (u8*)&Game::options, sizeof(Options) },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options)), (u8*)&Game::overworldData, sizeof(NPCData) * NumberOfOverworlds },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds)), (u8*)&Game::validGameSave, 1 },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8)), (u8*)&Game::soundEngineID, 1 },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2), (u8*)&Game::eggCycle, 2 },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 1), (u8*)&Game::repelCounter, 2 },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 2), (u8*)&Game::repelStrength, 2 },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 3), (u8*)&Game::happinessCycle, 1 },
				{ (u8*)(BaseSaveAddress + sizeof(Core::Pokemon::Pokemon) * PartyLength + sizeof(Player) + sizeof(MapBankMapCombo) + sizeof(Options) + (sizeof(NPCData) * NumberOfOverworlds) + sizeof(u8) * 2 + sizeof(u16) * 4 + sizeof(u8)), (u8*)&Game::poisonCycle, 1 },
				{ (u8*)(0x1000 * (BaseBlocks + 1)), (u8*)&Game::bag, sizeof(Bag) },
				{ (u8*)0x10000, (u8*)&Flags::mainFlagBank, FlagsToBytes(NumFlags) },
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags)), (u8*)&Flags::worldMapFlagBank, FlagsToBytes(0x100) },
		#if NumberofTrainerBytes == NumberOfTrainers
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100)), (u8*)&Flags::trainerflags, BytesForTrainerflagsBase },
		#if NumberofSeenCaughts == NumberOfPokemon
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase), (u8*)&Flags::seenFlags, BytesForFlagsBase },
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + BytesForFlagsBase), (u8*)&Flags::caughtFlags, BytesForFlagsBase },
		#else
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase), (u8*)&Flags::seenFlags, BytesForFlagsBase + 1 },
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + BytesForFlagsBase + 1), (u8*)&Flags::caughtFlags, BytesForFlagsBase + 1 },
		#endif
		#else
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100)), (u8*)&Flags::trainerflags, BytesForTrainerflagsBase + 1 },
		#if NumberofSeenCaughts == NumberOfPokemon
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1), (u8*)&Flags::seenFlags, BytesForFlagsBase },
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1 + BytesForFlagsBase), (u8*)&Flags::caughtFlags, BytesForFlagsBase },
		#else
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1), (u8*)&Flags::seenFlags, BytesForFlagsBase + 1 },
				{ (u8*)(0x10000 + FlagsToBytes(NumFlags) + FlagsToBytes(0x100) + BytesForTrainerflagsBase + 1 + BytesForFlagsBase + 1), (u8*)&Flags::caughtFlags, BytesForFlagsBase + 1 },
		#endif
		#endif
				{ (u8*)0x11000, (u8*)&Variables::varBank, (UpperVarLimit - LowerVarLimit) << 1 },
				{ (u8*)0xFFFFFFFF, 0, 0 }
		};
	}
}
