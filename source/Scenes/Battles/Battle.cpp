#include "Scenes/Battles/Battle.h"
#include "Core/Data/Flags.h"
#include "Core/RTC.h"
#include "Core/Maths.h"
#include "Text/TextFunctions.h"
#include "Core/Pokemon/Pokemon.h"
#include "Core/Game.h"
#include "Scenes/Battles/BattleStrings.h"
#include "Core/Pokemon/PokeStats.h"
#include "Core/Data/Variables.h"
#include "Core/Data/Flags.h"
#include "Core/Data/Items.h"
#include "LibraryHeaders/libbattlescripts.h"
#include "Audio/SoundEngine.h"
#include "Scenes/SceneManager.h"
#include "Input/InputManager.h"
#include "Core/Data/Moves.h"
#include "Scenes/Menus/Pokedex.h"
#include "Input/DoNothingInputEventHandler.h"

#define GEN2MOONBALL FALSE

#define NumRegions 1

#define Gen1234SleepEffect

using namespace Core;
using namespace Core::Data;
using namespace Core::Pokemon;
using namespace Input;

namespace Scenes
{
	namespace Battles
	{
		RODATA_LOCATION ALIGN(2) u16 Battle::criticalCaptureValues[6][2] = {
				{ 30, 0 },
				{ 150, 50 },
				{ 300, 100 },
				{ 450, 150 },
				{ 600, 200 },
				{ 721, 250 }
		};
		RODATA_LOCATION ALIGN(4) u32 Battle::battleTextPalette[] = { 0x7FFF0000, 0x4D8A001F, 0x7FFF5E2D, 0x6B3A396D, 0x18C53D28, 0x737C7C1F, 0x0DF37C1F, 0x354526B9 };
		RODATA_LOCATION ALIGN(1) u8 Battle::numRegions = NumRegions;
		RODATA_LOCATION ALIGN(4) BattleMusicStorage Battle::musicValues[NumRegions] = { { Song_KantoWildBattle, Song_RBYWildBattle, Song_JohtoWildBattle, Song_LegendaryBeastBattle, Song_KantoTrainerBattle, Song_KantoGymBattle, Song_JohtoGymBattle, Song_GSCChampionBattle, Song_JohtoTrainerBattle } };
		RODATA_LOCATION ALIGN(4) TrainerClassMusic Battle::classValues[] = { { Class_Evil_Team, Song_TeamRocketBattle }, { Class_Evil_Team_Duo, Song_TeamRocketBattle }, { Class_Rival, Song_RBYTrainerBattle }, { 0xFFFF, 0x0000 } };
		RODATA_LOCATION ALIGN(4) TrainerClassMusic Battle::legendaryValues[] = { { 0xFFFF, 0x0000 } };
		RODATA_LOCATION ALIGN(4) TrainerClassMusic Battle::roamingValues[] = { { 0xFFFF, 0x0000 } };
		RODATA_LOCATION ALIGN(4) U32FunctionPointerVoid Battle::ballBonusRates[] = {
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Pokéball
				(U32FunctionPointerVoid)&Battle::HalfAgainPokeball,			// Great Ball
				(U32FunctionPointerVoid)&Battle::DoublePokeball,			// Ultra Ball
				(U32FunctionPointerVoid)&Battle::AlwaysCatchPokeball,		// Master Ball
				(U32FunctionPointerVoid)&Battle::HalfAgainPokeball,			// Safari Ball
				(U32FunctionPointerVoid)&Battle::LevelBallPokeball,			// Level Ball
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Lure Ball
				(U32FunctionPointerVoid)&Battle::MoonBallPokeball,			// Moon Ball
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Friend Ball
				(U32FunctionPointerVoid)&Battle::LoveBallPokeball,			// Love Ball
				(U32FunctionPointerVoid)&Battle::HeavyBallPokeball,			// Heavy Ball
				(U32FunctionPointerVoid)&Battle::FastBallPokeball,			// Fast Ball
				(U32FunctionPointerVoid)&Battle::HalfAgainPokeball,			// Sport / Park Ball
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Premier Ball
				(U32FunctionPointerVoid)&Battle::RepeatBallPokeball,		// Repeat Ball
				(U32FunctionPointerVoid)&Battle::TimerBallPokeball,			// Timer Ball
				(U32FunctionPointerVoid)&Battle::NestBallPokeball,			// Nest Ball
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Dive Ball
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Luxury Ball
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Heal Ball
				(U32FunctionPointerVoid)&Battle::QuickBallPokeball,			// Quick Ball
				(U32FunctionPointerVoid)&Battle::DuskBallPokeball,			// Dusk Ball
				(U32FunctionPointerVoid)&Battle::NoSpecialEffectPokeball,	// Cherish Ball
				(U32FunctionPointerVoid)&Battle::AlwaysCatchPokeball 		// Pal Park Ball
		};
		RODATA_LOCATION ALIGN(4) U32FunctionPointerU32 Battle::statusBonusRates[] = {
				(U32FunctionPointerU32)&Battle::NoChangeLikelihood,
				(U32FunctionPointerU32)&Battle::DoubleLikelihood,
				(U32FunctionPointerU32)&Battle::HalfAgainLikelihood
		};
		RODATA_LOCATION ALIGN(4) U32FunctionPointerU32 Battle::typeChartCallbackFunctions[(Item_Effect_Inversion - Item_Effect_Double_Cash_Gain) + 1][(Item_Effect_Inversion - Item_Effect_Double_Cash_Gain) + 1] = {
				{ (U32FunctionPointerU32)&Battle::NoChangeLikelihood, (U32FunctionPointerU32)&Battle::TiltEffectTypeChartCallback, (U32FunctionPointerU32)&Battle::InversionEffectTypeChartCallback },
				{ (U32FunctionPointerU32)&Battle::TiltEffectTypeChartCallback, (U32FunctionPointerU32)&Battle::DoubleTiltedTypeChartCallback, (U32FunctionPointerU32)&Battle::TiltedInversionTypeChartCallback },
				{ (U32FunctionPointerU32)&Battle::InversionEffectTypeChartCallback, (U32FunctionPointerU32)&Battle::TiltedInversionTypeChartCallback, (U32FunctionPointerU32)&Battle::NoChangeLikelihood }
		};
		RODATA_LOCATION ALIGN(4) const u8* Battle::moveScriptsTable[] = {
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Recoil,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Perish_Song,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Triple_Kick,
				(const u8*)&Script_Wake_Up_Slap,
				(const u8*)&Script_Smelling_Salt,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Spit_Up,
				(const u8*)&Script_Standard_Attack,
				(const u8*)&Script_Present
		};
		RODATA_LOCATION ALIGN(2) u16 Battle::statModifierRates[] = { 25, 28, 33, 40, 50, 66, 100, 150, 200, 250, 300, 350, 400 };

		Battle::Battle(const BattleTypeStruct &bts)
		{
			memset32((void*)&enemyPokemon, 0, (sizeof(Core::Pokemon::Pokemon) * 6) >> 2);
			memset32((void*)&battleData, 0, sizeof(BattleData) >> 2);
			battleType = bts;
			currentStatus = 0;
			InputManager::SetEventHandler(new DoNothingInputEventHandler());
		}

		Battle::~Battle()
		{

		}

		u16 Battle::CalculateBattleTrack()
		{
			u32 regionID = Variables::GetVar(Var_RegionID);
			if (battleType.info.isWildBattle && (battleType.info.isDoubleBattle || battleType.info.isRareWildBattle))
			{
				return musicValues[regionID].doubleRareWildBattle;
			}
			else if (battleType.info.isLinkBattle)
			{
				return musicValues[regionID].linkBattle;
			}
			else if (battleType.info.isTrainerBattle)
			{
				u32 trainerClass = battleData.trainerData->pointerToData->trainerClass;
				if (trainerClass == Class_Champion)
				{
					return musicValues[regionID].championBattle;
				}
				else if (trainerClass == Class_Gym_Leader)
				{
					return musicValues[regionID].gymBattle;
				}
				else if (trainerClass == Class_Elite_Four)
				{
					return musicValues[regionID].eliteFourBattle;
				}
				else
				{
					u32 i = 0;
					while (classValues[i].classID != 0xFFFF)
					{
						if (trainerClass == classValues[i].classID)
						{
							return classValues[i].themeID;
						}
						i++;
					}
					return musicValues[regionID].trainerBattle;
				}
			}
			else if (battleType.info.isLegendaryWildBattle)
			{
				u32 i = 0;
				u32 species = 0;
				while (legendaryValues[i].classID != 0xFFFF)
				{
					if (species == legendaryValues[i].classID)
					{
						return legendaryValues[i].themeID;
					}
					i++;
				}
				return musicValues[regionID].legendaryWildBattle;
			}
			else if (battleType.info.isRoamingWildBattle)
			{
				u32 i = 0;
				u32 species = 0;
				while (roamingValues[i].classID != 0xFFFF)
				{
					if (species == roamingValues[i].classID)
					{
						return roamingValues[i].themeID;
					}
					i++;
				}
				return musicValues[regionID].roamingWildBattle;
			}
			return musicValues[regionID].wildBattle;
		}

		u32 Battle::NoSpecialEffectPokeball()
		{
			return 100;
		}

		u32 Battle::HalfAgainPokeball()
		{
			return 150;
		}

		u32 Battle::DoublePokeball()
		{
			return 200;
		}

		u32 Battle::AlwaysCatchPokeball()
		{
			return 25500;
		}

		u32 Battle::LevelBallPokeball()
		{
			u32 retValue;
			u32 level = battleData.pokemonStats[0].level;
			if (battleType.info.isDoubleBattle)
			{
				level = ((level + battleData.pokemonStats[2].level) >> 1);
			}
			u32 opponentLevel = battleData.pokemonStats[battleData.battleBanks[Target]].level;
			if ((opponentLevel << 2) <= level)
			{
				retValue = 800;
			}
			else if ((opponentLevel << 1) <= level)
			{
				retValue = 400;
			}
			else if (opponentLevel <= level)
			{
				retValue = 200;
			}
			else
			{
				retValue = 100;
			}
			return retValue;
		}

		u32 Battle::MoonBallPokeball()
		{
			u32 retValue = 100;
			IndexTable* data = (IndexTable*)&evoData[battleData.pokemonStats[battleData.battleBanks[Target]].species];
			EvolutionData* innerData = (EvolutionData*)data[0].pointerToData;
			u32 i;
			for (i = 0; i < data[0].index; i++)
			{
				if (innerData[0].evolutionType == ItemUsed
		#if GEN2MOONBALL == TRUE
						&& innerData[0].condition1 == Item_BurnHeal
		#else
						&& innerData[0].condition1 == ITEM_MOONSTONE
		#endif
						)
				{
					retValue = 400;
					break;
				}
			}
			return retValue;
		}

		u32 Battle::LoveBallPokeball()
		{
			u32 retValue = 100;
			u8 gender = battleData.pokemonStats[0].gender;
			u16 species = battleData.pokemonStats[0].species;
			u32 opponentGender = battleData.pokemonStats[battleData.battleBanks[Target]].level;
			u16 opponentSpecies = battleData.pokemonStats[battleData.battleBanks[Target]].species;
			if (gender != Gender_Genderless
					&& opponentGender != Gender_Genderless
					&& gender != opponentGender
					&& species == opponentSpecies)
			{
				retValue = 800;
			}
			return retValue;
		}

		u32 Battle::HeavyBallPokeball()
		{
			u32 retValue = 100;
			const PokedexData &data = Pokedex::GetPokedexDataByIndex(battleData.pokemonStats[battleData.battleBanks[Target]].species);
			u16 weight = data.weight;
			if (weight < 2048)
			{
				retValue -= 20;
			}
			else if (weight < 3072)
			{
				retValue += 20;
			}
			else if (weight < 4096)
			{
				retValue += 30;
			}
			else
			{
				retValue += 40;
			}
			return retValue;
		}

		u32 Battle::FastBallPokeball()
		{
			u32 retValue = 100;
			u8 forme = battleData.pokemonStats[battleData.battleBanks[Target]].forme;
			InternalBaseData* data = (InternalBaseData*)pokemonBaseData[battleData.pokemonStats[battleData.battleBanks[Target]].species].baseDataInfo.pointerToData;
			if (data[forme].baseSpeed >= 100)
			{
				retValue = 400;
			}
			return retValue;
		}

		u32 Battle::RepeatBallPokeball()
		{
			u32 retValue = 100;
			u16 species = battleData.pokemonStats[battleData.battleBanks[Target]].species;
			if (Pokedex::HasSpeciesBeenCaught(species))
			{
				retValue = 300;
			}
			return retValue;
		}

		u32 Battle::TimerBallPokeball()
		{
			u32 retValue;
			u32 turns = battleData.battleTurnsCounter;
			if (turns >= 10)
			{
				retValue = 400;
			}
			else
			{
				retValue = 100 + (turns * 30);
			}
			return retValue;
		}

		u32 Battle::NestBallPokeball()
		{
			u32 retValue = 100;
			u32 opponentLevel = battleData.pokemonStats[battleData.battleBanks[Target]].level;
			if (opponentLevel < 31)
			{
				retValue = (41 - opponentLevel) * 10;
			}
			return retValue;
		}

		u32 Battle::QuickBallPokeball()
		{
			u32 retValue = 100;
			if (battleData.battleTurnsCounter == 0)
			{
				retValue = 500;
			}
			return retValue;
		}

		u32 Battle::DuskBallPokeball()
		{
			u32 retValue = 100;
			if (RTC::GetTime().timeOfDay == Time_Night /* || InCave() */)
			{
				retValue = 350;
			}
			return retValue;
		}

		u32 Battle::DoubleLikelihood(u32 initialValue)
		{
		#ifdef Gen1234SleepEffect
			return initialValue << 1;
		#else
			return Maths::UnsignedFractionalMultiplication(initialValue, 250);
		#endif
		}

		u32 Battle::HalfAgainLikelihood(u32 initialValue)
		{
			return Maths::UnsignedFractionalMultiplication(initialValue, 150);
		}

		u32 Battle::NoChangeLikelihood(u32 initialValue)
		{
			return initialValue;
		}

		u32 Battle::TiltEffectTypeChartCallback(u32 incomingValue)
		{
			if (incomingValue < 100)
			{
				incomingValue >>= 1;
			}
			else if (incomingValue > 100)
			{
				incomingValue <<= 1;
			}
			return incomingValue;
		}

		u32 Battle::InversionEffectTypeChartCallback(u32 incomingValue)
		{
			if (incomingValue < 100)
			{
				incomingValue = 200;
			}
			else if (incomingValue > 100)
			{
				incomingValue = 50;
			}
			return incomingValue;
		}

		u32 Battle::TiltedInversionTypeChartCallback(u32 incomingValue)
		{
			return TiltEffectTypeChartCallback(InversionEffectTypeChartCallback(incomingValue));
		}

		u32 Battle::DoubleTiltedTypeChartCallback(u32 incomingValue)
		{
			return TiltEffectTypeChartCallback(TiltEffectTypeChartCallback(incomingValue));
		}

		void Battle::DrawMainSelectionMenu()
		{
			u32 i;
			u16* address = (u16*)0x060073C2;
			memset32((void*)0x0600C000, BATTLEBGCOLOUR, 0x7C0);
			memset32((void*)0x0600E000, WHITETEXTBG, 0x6C0);
			for (i = 0; i < 11; i++)
			{
				address[(i + 14)] = 0x1200 + ((i + 13) * 20);
				address[0x20 + (i + 14)] = 0x1201 + ((i + 13) * 20);
				address[0x40 + (i + 14)] = 0x1202 + ((i + 13) * 20);
				address[0x60 + (i + 14)] = 0x1203 + ((i + 13) * 20);
			}
			for (i = 0; i < 14; i++)
			{
				address[i] = 0x200 + (i * 20);
				address[0x20 + i] = 0x201 + (i * 20);
				address[0x40 + i] = 0x202 + (i * 20);
				address[0x60 + i] = 0x203 + (i * 20);
			}
			Text::TextFunctions::DrawString((char*)&whatToDoString, 8, 0);
			Text::TextFunctions::DrawString((char*)&whatToDoString2, 8, 0x10);
			Text::TextFunctions::SetTextColour(15, 3, 1);
			//Text::TextFunctions::DrawCharacter(ARROWCHAR, (0x30 * (battleData.mainSelection[battleData.selectorIndex >> 1] & 1)) + 0x70, 0x10 * (battleData.mainSelection[battleData.selectorIndex >> 1] >> 1));
			Text::TextFunctions::DrawString("Battle", 0x78, 0);
			Text::TextFunctions::DrawString("Bag", 0xA8, 0);
			Text::TextFunctions::DrawString("Party", 0x78, 0x10);
			if (battleType.info.isWildBattle || battleType.info.isLinkBattle)
			{
				Text::TextFunctions::DrawString("Flee", 0xA8, 0x10);
			}
			else
			{
				Text::TextFunctions::DrawString("Call", 0xA8, 0x10);
			}
		}

		void Battle::MoveSelectionRender()
		{
			Text::TextFunctions::SetTextColour(15, 3, 1);
			u16* address = (u16*)0x060073C2;
			memset32((void*)0x0600C000, WHITETEXTBG, 0xF0C);
			u32 i;
			for (i = 0; i < 20; i++)
			{
				address[i] = 0x1200 + (i * 20);
				address[0x20 + i] = 0x1201 + (i * 20);
				address[0x40 + i] = 0x1202 + (i * 20);
				address[0x60 + i] = 0x1203 + (i * 20);
			}
			for (i = 0; i < 7; i++)
			{
				address[i + 22] = 0x1200 + (i * 20);
				address[0x20 + i + 22] = 0x1201 + (i * 20);
				address[0x40 + i + 22] = 0x1202 + (i * 20);
				address[0x60 + i + 22] = 0x1203 + (i * 20);
			}
			PokemonBattleData* data = (PokemonBattleData*)&battleData.pokemonStats[battleData.currentBattlerIndex];
			for (i = 0; i < 2; i++)
			{
				u32 j;
				for (j = 0; j < 2; j++)
				{
					u16 moveID = data[0].moves[(i * 2) + j];
					if (moveID)
					{
						Text::TextFunctions::DrawString(Moves::GetMoveNameByIndex(moveID), j * 80 + 16, i * 0x10);
					}
					else
					{
						Text::TextFunctions::DrawString("-", j * 80 + 16, i * 0x10);
					}
				}
			}
			//Text::TextFunctions::DrawCharacter(ARROWCHAR, (80 * (battleData.internalSelection[battleData.selectorIndex >> 1] & 1)) + 8, 0x10 * (battleData.internalSelection[battleData.selectorIndex >> 1] >> 1));
		}

		inline u32 InterpretStatus(u32 status)
		{
			PrimaryStatusStruct* statusValues = (PrimaryStatusStruct*)&status;
			if (statusValues->sleepTurns || statusValues->frozen)
			{
				return 1;
			}
			else if (statusValues->paralysed || statusValues->poisoned || statusValues->badlyPoisoned || statusValues->burned)
			{
				return 2;
			}
			return 0;
		}

		u32 Battle::CaptureChecks(Core::Pokemon::Pokemon* target, u16 itemID)
		{
			u32 maxHPValue = target->Decrypt(MaximumHP);
			u32 catchRate = maxHPValue - (target->Decrypt(CurrentHP) << 1);
			catchRate = Maths::UnsignedFractionalMultiplication(catchRate, ballBonusRates[itemID]());
			catchRate *= target->GetCatchRate();
			catchRate = Maths::UnsignedDivide(catchRate, maxHPValue);
			catchRate = statusBonusRates[InterpretStatus(target->Decrypt(StatusAilment))](catchRate);
			if (catchRate < 255)
			{
				u32 finalCatchRate = Sqrt(Sqrt(Maths::UnsignedDivide(catchRate * 100, 255)));
				finalCatchRate *= 0x50F4;
				u32 i;
				for (i = 0; i < CriticalCaptureFailure; i++)
				{
					u16 value = Maths::GetDelimitedRandom16BitValue(0x10000);
					if (value > finalCatchRate)
					{
						break;
					}
				}
				if (i != TripleShakeSuccess)
				{
					{
						u32 numberOfPokemon = Pokedex::GetNationalCaught();
						{
							u32 j;
							for (j = 0; j < 6; j++)
							{
								if (criticalCaptureValues[j][0] > numberOfPokemon)
								{
									numberOfPokemon = criticalCaptureValues[j][1];
									break;
								}
							}
						}
						catchRate = Maths::UnsignedFractionalMultiplication(catchRate, numberOfPokemon);
					}
					u32 rand = Maths::GetDelimitedRandom16BitValue(2048);
					if (rand < catchRate)
					{
						if (Maths::GetDelimitedRandom16BitValue(0x10000) > finalCatchRate)
						{
							return CriticalCaptureFailure;
						}
						return CriticalCaptureSuccess;
					}
					return i;
				}
				return TripleShakeSuccess;
			}
			return TripleShakeSuccess;
		}

		void Battle::CopyBattleDataFromPokemon(Core::Pokemon::Pokemon* thePokemon, u32 dataIndex)
		{
			PokemonBattleData* dataLocation = (PokemonBattleData*)&battleData.pokemonStats[dataIndex];
			memset32(dataLocation, 0, sizeof(PokemonBattleData) >> 2);
			dataLocation[0].species = thePokemon->Decrypt(Species);
			dataLocation[0].ability = thePokemon->Decrypt(Ability);
			dataLocation[0].forme = thePokemon->Decrypt(FormeIndex);
			dataLocation[0].gender = thePokemon->Decrypt(Gender);
			dataLocation[0].heldItem = thePokemon->Decrypt(HeldItem);
			dataLocation[0].level = thePokemon->Decrypt(Level);
			u32 i;
			for (i = 0; i < 4; i++)
			{
				dataLocation[0].moves[i] = thePokemon->Decrypt(Move1 + i);
				dataLocation[0].pp[i] = thePokemon->Decrypt(Move1PP + i);
			}
			for (i = 0; i < NumBattleStats - 2; i++)
			{
				dataLocation[0].stats[i] = thePokemon->Decrypt(Attack + i);
				dataLocation[0].statLevels[i] = 6;
			}
			for (i = NumBattleStats - 2; i < NumBattleStats; i++)
			{
				dataLocation[0].statLevels[i] = 6;
			}
			dataLocation[0].personalityID = thePokemon->Decrypt(PersonalityID);
			dataLocation[0].primaryStatus = thePokemon->Decrypt(StatusAilment);
			dataLocation[0].secondaryStatuses = 0;
			dataLocation[0].battleFlags = 0;
			dataLocation[0].type1 = thePokemon->Decrypt(Type1);
			dataLocation[0].type2 = thePokemon->Decrypt(Type2);
			dataLocation[0].type3 = Type_None;
			dataLocation[0].currentHP = thePokemon->Decrypt(CurrentHP);
			dataLocation[0].maximumHP = thePokemon->Decrypt(MaximumHP);
			dataLocation[0].happiness = thePokemon->Decrypt(Friendship);
			dataLocation[0].mainPointer = thePokemon;
			RecalculateAllEffectiveStats(*dataLocation);
		}

		u32 Battle::PrioritiseBetweenTwoPokemon(u32 index1, u32 index2)
		{
			PokemonBattleData* pkmn1 = &battleData.pokemonStats[index1];
			PokemonBattleData* pkmn2 = &battleData.pokemonStats[index2];
			s32 priorityValue = 0;
			{
				u32 selection = battleData.battleBanks[MoveSelection1 + index1];
				if (selection >= Selections_Switch)
				{
					priorityValue = 6;
				}
				else if (selection == Selections_AI_Fleeing)
				{
					priorityValue = -7;
				}
				else
				{
					u16 move = pkmn1[0].moves[battleData.battleBanks[MoveSelection1 + index1]];
					const MoveData &moveData = *Moves::GetMoveDataByIndex(move);
					s8 priority = moveData.priority;
					if ((moveData.category == Category_Status && pkmn1[0].ability == Prankster) || (moveData.type == Type_Flying && pkmn1[0].ability == Gale_Wings))
					{
						priority++;
					}
					priorityValue = priority;
				}
				selection = battleData.battleBanks[MoveSelection1 + index2];
				if (selection >= Selections_Switch)
				{
					priorityValue = 0;
				}
				else
				{
					u16 move = pkmn2[0].moves[battleData.battleBanks[MoveSelection1 + index2]];
					const MoveData &moveData = *Moves::GetMoveDataByIndex(move);
					s8 priority = moveData.priority;
					if ((moveData.category == Category_Status && pkmn2[0].ability == Prankster) || (moveData.type == Type_Flying && pkmn2[0].ability == Gale_Wings))
					{
						priority++;
					}
					priorityValue -= priority;
				}
			}
			if (priorityValue < 0)
			{
				return PokemonTwoFirst;
			}
			else if (priorityValue > 0)
			{
				return PokemonOneFirst;
			}
			else
			{
				u32 speed1 = (pkmn2[0].ability == Unaware) ? pkmn1[0].stats[BattleSpeed] : pkmn1[0].effectiveStats[BattleSpeed];
				u32 speed2 = (pkmn1[0].ability == Unaware) ? pkmn2[0].stats[BattleSpeed] : pkmn2[0].effectiveStats[BattleSpeed];
				if ((pkmn1[0].ability == Stall && pkmn2[0].ability != Stall) || (Items::GetItemEffect(pkmn1[0].heldItem) == Item_Effect_Last_In_Priority_Bracket && Items::GetItemEffect(pkmn2[0].heldItem) != Item_Effect_Last_In_Priority_Bracket) || (Items::GetItemEffect(pkmn1[0].heldItem) != Item_Effect_First_In_Priority_Bracket && Items::GetItemEffect(pkmn2[0].heldItem) == Item_Effect_First_In_Priority_Bracket))
				{
					return PokemonTwoFirst;
				}
				else if ((pkmn1[0].ability != Stall && pkmn2[0].ability == Stall) || (Items::GetItemEffect(pkmn1[0].heldItem) != Item_Effect_Last_In_Priority_Bracket && Items::GetItemEffect(pkmn2[0].heldItem) == Item_Effect_Last_In_Priority_Bracket) || (Items::GetItemEffect(pkmn1[0].heldItem) == Item_Effect_First_In_Priority_Bracket && Items::GetItemEffect(pkmn2[0].heldItem) != Item_Effect_First_In_Priority_Bracket))
				{
					return PokemonOneFirst;
				}
				if (pkmn1[0].primaryStatus)
				{
					if (pkmn1[0].ability == Quick_Feet)
					{
						speed1 = Maths::UnsignedFractionalMultiplication(speed1, 150);
					}
					else if (pkmn1[0].primaryStatusBits.paralysed)
					{
						speed1 >>= 2;
					}
				}
				if (Items::GetItemEffect(pkmn1[0].heldItem) == Item_Effect_Boost_EVs)
				{
					speed1 >>= 1;
				}
				if (pkmn2[0].primaryStatus)
				{
					if (pkmn2[0].ability == Quick_Feet)
					{
						speed2 = Maths::UnsignedFractionalMultiplication(speed2, 150);
					}
					else if (pkmn2[0].primaryStatusBits.paralysed)
					{
						speed2 >>= 2;
					}
				}
				if (Items::GetItemEffect(pkmn2[0].heldItem) == Item_Effect_Boost_EVs)
				{
					speed2 >>= 1;
				}
				s32 finalValue = speed1 - speed2;
				if (battleData.counterBits.trickRoom)
				{
					if (finalValue < 0)
					{
						return PokemonOneFirst;
					}
					else if (finalValue > 0)
					{
						return PokemonTwoFirst;
					}
					else
					{
						return PokemonOneFirst + Maths::GetDelimitedRandom32BitValue(2);
					}
				}
				else
				{
					if (finalValue < 0)
					{
						return PokemonTwoFirst;
					}
					else if (finalValue > 0)
					{
						return PokemonOneFirst;
					}
					else
					{
						return PokemonOneFirst + Maths::GetDelimitedRandom32BitValue(2);
					}
				}
			}
		}

		void Battle::RecalculateEffectiveStat(PokemonBattleData &location, u32 statIndex)
		{
			u32 statBuff = statModifierRates[location.statLevels[statIndex]];
			location.effectiveStats[statIndex] = Maths::UnsignedFractionalMultiplication(location.stats[statIndex], statBuff);
		}

		void Battle::RecalculateAllEffectiveStats(PokemonBattleData &dataLocation)
		{
			for (u32 i = 0; i < NumBattleStats - 2; i++)
			{
				RecalculateEffectiveStat(dataLocation, i);
			}
		}

		void Battle::PrioritisePokemon()
		{
			u32 numBattlers = battleData.battleBanks[NumBattlers];
			u32 i;
			for (i = 0; i < numBattlers; i++)
			{
				u32 j;
				for (j = i + 1; j < numBattlers; j++)
				{
					if (PrioritiseBetweenTwoPokemon(i, j) == PokemonTwoFirst)
					{
						u32 temp = battleData.battleOrder[i];
						battleData.battleOrder[i] = battleData.battleOrder[j];
						battleData.battleOrder[j] = temp;
					}
				}
			}
		}

		void Battle::UpdateCounters()
		{
			battleData.battleTurnsCounter++;
			u32 weatherEnded = false;
			if (!battleData.weatherBits.permanent)
			{
				u32 turns = battleData.weatherBits.turnsRemaining;
				turns--;
				if (turns == 0)
				{
					battleData.weather = 0;
					weatherEnded = true;
					// Script to clear weather here
				}
			}
			if (weatherEnded == false)
			{
				battleData.weatherBits.turnsRemaining--;
				// Script to indicate continued weather
			}
			u32 i;
			for (i = 0; i < battleData.battleBanks[NumBattlers]; i++)
			{
				PokemonBattleData* pkmn = &battleData.pokemonStats[i];
				pkmn[0].secondaryStatusBits.ppReduced = 0;
				if (pkmn[0].currentHP != 0)
				{
					Core::Pokemon::Pokemon* thePokemon = pkmn[0].mainPointer;
					if (pkmn[0].battleStatusFlags.roosted)
					{
						thePokemon->SetBasicTypes();
						pkmn[0].type1 = thePokemon->Decrypt(Type1);
						pkmn[0].type2 = thePokemon->Decrypt(Type2);
						pkmn[0].battleStatusFlags.roosted = 0;
					}
					if (pkmn[0].primaryStatusBits.badlyPoisoned)
					{
						pkmn[0].primaryStatusBits.badlyPoisonedCounter++;
						thePokemon->Encrypt(StatusAilment, pkmn[0].primaryStatus);
					}
					if (pkmn[0].battleStatusFlags.charged)
					{
						pkmn[0].battleStatusFlags.charged--;
					}
					if (pkmn[0].ability == Slow_Start && pkmn[0].slowStartCounter < 4)
					{
						pkmn[0].slowStartCounter++;
					}
					if (pkmn[0].secondaryStatusBits.perishSongCounter)
					{
						pkmn[0].secondaryStatusBits.perishSongCounter--;
						if (pkmn[0].secondaryStatusBits.perishSongCounter == 0)
						{
							// faint as a result of perish song
						}
					}
					pkmn[0].damageReceivedLastTurn = pkmn[0].damageReceivedThisTurn;
					pkmn[0].damageReceivedThisTurn = 0;
				}
			}
		}
	}
}
