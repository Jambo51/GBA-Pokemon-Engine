/*
 * SourceFunctions.cpp
 *
 *  Created on: 9 Jul 2015
 *      Author: Jamie
 */

#include "Core.h"
#include "Tasks.h"
#include "Audio.h"
#include "Scenes.h"
#include "Text.h"
#include "Callbacks/WhiteoutCallback.h"

using namespace Core::Pokemon;
using namespace Core::Data;
using namespace Core;
using namespace Tasks::ScriptRunners;
using namespace Text;
using namespace Audio;
using namespace Scenes;
using namespace Scenes::Overworld;
using namespace Scenes::Battles;

u16 Special0HealParty(ScriptRunner* runner)
{
	bool pokemonFound = false;
	for (u32 i = 0; i < PartyLength; i++)
	{
		Core::Pokemon::Pokemon &p = *Game::GetPartyPokemon(i);
		if (p.Decrypt(PersonalityID))
		{
			pokemonFound = true;
			p.Encrypt(CurrentHP, p.Decrypt(MaximumHP));
			p.Encrypt(StatusAilment, 0);
			const PPBonusStruct &ppBonuses = p.GetPPBonuses();
			for (u32 j = 0; j < 4; j++)
			{
				u16 move = p.Decrypt(Move1 + i);
				u32 maxPP = 0;
				switch (j)
				{
					case 1:
						maxPP = ppBonuses.move2PPBonus;
						break;
					case 2:
						maxPP = ppBonuses.move3PPBonus;
						break;
					case 3:
						maxPP = ppBonuses.move4PPBonus;
						break;
					default:
						maxPP = ppBonuses.move1PPBonus;
						break;
				}
				const MoveData &moveData = *Moves::GetMoveDataByIndex(move);
				p.Encrypt(Move1PP + i, Maths::UnsignedFractionalMultiplication(moveData.basePP, maxPP * 20 + 100));
			}
		}
	}
	return (u16)pokemonFound;
}

u16 EmptySpecial(ScriptRunner* runner)
{
	return 0;
}

#define NumEncounterSlots 12

TEXT_LOCATION ALIGN(2) u16 encounterSlots[NumEncounterSlots] = {
		Song_HikerEncounter,
		Song_ClassicLassEncounter,
		Song_PolicemanEncounter,
		Song_KimonoGirlEncounter,
		Song_YoungsterEncounter,
		Song_GSCLassEncounter,
		Song_TeamRocketEncounter,
		Song_PokecollectorEncounter,
		Song_SageEncounter,
		Song_RBYEvilEncounter,
		Song_RBYFemaleEncounter,
		Song_RBYMaleEncounter
};

u16 Special38PlayTrainerMusic(ScriptRunner* runner)
{
	if (Variables::GetVar(LASTTALKED) != U16Max)
	{
		u32 trainerID = runner->GetBank(0) & U16Max;
		trainerID = TrainerBattle::GetEncounterTrackID(trainerID);
		if (trainerID >= NumEncounterSlots)
		{
			trainerID = 0;
		}
		SoundEngine::PlaySong(encounterSlots[trainerID], 0);
		return true;
	}
	return false;
}

u16 SpecialB5BufferDaycarePokemonNames(ScriptRunner* runner)
{
	TextFunctions::BufferPokemonNameFromPointer(Game::GetDayCarePokemon(0), 0);
	TextFunctions::BufferPokemonNameFromPointer(Game::GetDayCarePokemon(1), 1);
	return 0;
}

u16 SpecialB6GetDayCareStatus(ScriptRunner* runner)
{
	return Game::GetDayCareStatus();
}

u16 SpecialC8WhiteOut(ScriptRunner* runner)
{
	SoundEngine::FadeSongToSilence();
	Palettes::SetCustomFadeCallback(new Callbacks::WhiteoutCallback());
	Palettes::FadeToBlack(true, HalfSecond, false, false);
	Game::RemovePlayerMoney(Game::GetPlayer().balance >> 1);
	return 0;
}

u16 SpecialD4EvaluatePokedex(ScriptRunner* runner)
{
	u32 mode = Variables::GetVar(0x8004);
	if (mode)
	{
		Variables::SetVar(0x8005, Pokedex::GetNationalSeen());
		Variables::SetVar(0x8006, Pokedex::GetNationalCaught());
	}
	else
	{
		Variables::SetVar(0x8005, Pokedex::GetRegionalSeen());
		Variables::SetVar(0x8006, Pokedex::GetRegionalCaught());
	}
	return 0;
}

u16 SpecialEFClearParty(ScriptRunner* runner)
{
	Game::ClearParty();
	return 0;
}

u16 Special193IsNationalDexActive(ScriptRunner* runner)
{
	return (u16)Flags::CheckFlag(Flag_NationalDex);
}

u16 Special1B0IsNationalDexComplete(ScriptRunner* runner)
{
	return Pokedex::GetNationalCaught() == NumberOfPokemon - 1;
}
