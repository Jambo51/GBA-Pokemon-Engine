#include "GlobalDefinitions.h"
#include "MappingDefinitions.h"
#include "Maths.h"
#include "libsprites.h"
#include "Pokemon.h"
#include "Game.h"
#include "PokeStats.h"
#include "PokemonBaseData.h"
#include "MemoryLocations.h"
#include "TextFunctions.h"
#include "RTC.h"

const RODATA_LOCATION ALIGN(1) char name[] = { 0xFB, 0x00, '\0' };
const RODATA_LOCATION ALIGN(1) char number[] = { 0xFB, 0x01, '\0' };
const RODATA_LOCATION ALIGN(1) char otName[] = { 0xFB, 0x02, '\0' };
const RODATA_LOCATION ALIGN(1) char itemName[] = { 0xFB, 0x03, '\0' };
const RODATA_LOCATION ALIGN(1) char natureString[] = { 0xFB, 0x04, ' ', 'n', 'a', 't', 'u', 'r', 'e', '.', '\0' };
const RODATA_LOCATION ALIGN(1) char metString[] = { 'M', 'e', 't', ' ', 'i', 'n', ' ', 0xFB, 0x05, ' ', 'a', 't', ' ', 0x80, ' ', 0xFB, 0x06, '.', '\0' };
const RODATA_LOCATION ALIGN(1) char characteristicString[] = { 0xFB, 0x07, '.', '\0' };
const RODATA_LOCATION ALIGN(1) char idString[] = { 0xFB, 0x08, '\0' };


StringAndPositionStruct pageOneStrings[] = {
		{ (char*)&name, 100, 0x20 }
};

Pokemon::Pokemon(u32 species, u32 level, char* nickname)
{
	mainData = AbridgedPokemon(species, level, nickname);
	CalculateStats();
}

u32 Pokemon::Decrypt(u8 index) const
{
	if (index < StatusAilment)
	{
		return mainData.Decrypt(index);
	}
	switch(index - StatusAilment)
	{
		case StatusAilment - StatusAilment:
			return statusAilment;
			break;
		case Level - StatusAilment:
			return level;
			break;
		case CurrentHP - StatusAilment:
			return currentHP;
			break;
		case MaximumHP - StatusAilment:
			return maximumHP;
			break;
		case Attack - StatusAilment:
			return attack;
			break;
		case Defence - StatusAilment:
			return defence;
			break;
		case Speed - StatusAilment:
			return speed;
			break;
		case SpecialAttack - StatusAilment:
			return specialAttack;
			break;
		case SpecialDefence - StatusAilment:
			return specialDefence;
			break;
		default:
			return 0;
			break;
	}
}

bool Pokemon::AddExperience(u32 exp)
{
	u32 currentExp = mainData.Decrypt(Experience);
	u32 maxExp = mainData.GetLevel100MaxExperience();
	u32 value = 0;
	if (currentExp + exp < maxExp)
	{
		value = currentExp + exp;
	}
	else
	{
		value = maxExp;
	}
	Encrypt(Experience, value);
	bool levelUpCheckRequired = false;
	while (mainData.ExperienceGainCausesLevelUp(mainData.Decrypt(Experience), level))
	{
		Encrypt(Level, level + 1);
		levelUpCheckRequired = true;
	}
	return levelUpCheckRequired;
}

void Pokemon::Encrypt(u8 index, u32 value)
{
	if (index < StatusAilment)
	{
		mainData.Encrypt(index, value);
		if (index != Checksum)
		{
			mainData.Encrypt(Checksum, 0);
		}
	}
	switch(index - StatusAilment)
	{
		case StatusAilment - StatusAilment:
			if (value != 0 && Decrypt(0x37) == 0)
			{
				statusAilment = value;
			}
			else if (value == 0)
			{
				statusAilment = value;
			}
			break;
		case Level - StatusAilment:
			if (value <= 100)
			{
				level = value;
			}
			break;
		case CurrentHP - StatusAilment:
			currentHP = value;
			break;
		case MaximumHP - StatusAilment:
			maximumHP = value;
			break;
		case Attack - StatusAilment:
			attack = value;
			break;
		case Defence - StatusAilment:
			defence = value;
			break;
		case Speed - StatusAilment:
			speed = value;
			break;
		case SpecialAttack - StatusAilment:
			specialAttack = value;
			break;
		case SpecialDefence - StatusAilment:
			specialDefence = value;
			break;
	}
}

/*

u32 HappinessCheck(Pokemon* thePokemon)
{
	return mainData.Decrypt(Friendship) >= MaxHappiness;
}

u32 LevelCheck(Pokemon* thePokemon, u32 theLevel)
{
	return mainData.Decrypt(Level) >= theLevel;
}

u32 TimeCheck()
{
	return rtcData.timeOfDay != Time_Night;
}

u32 GenderCheck(Pokemon* thePokemon, u32 targetGender)
{
	return mainData.Decrypt(Gender) == targetGender;
}

u32 HeldItemCheck(Pokemon* thePokemon, u32 targetItem)
{
	return mainData.Decrypt(HeldItem) == targetItem;
}

u32 KnownMoveCheck(Pokemon* thePokemon, u32 targetMove)
{
	u32 i;
	for (i = 0; i < 4; i++)
	{
		if (mainData.Decrypt(Move1 + i) == targetMove)
		{
			return true;
		}
	}
	return false;
}

u32 KnownMoveCheckType(Pokemon* thePokemon, u32 targetType)
{
	u32 i;
	for (i = 0; i < 4; i++)
	{
		u16 moveID = mainData.Decrypt(Move1 + i);
		if (moveData[moveID].type == targetType)
		{
			return true;
		}
	}
	return false;
}

u32 CheckLevelUpEvolutions(Pokemon* thePokemon)
{
	u16 species = mainData.Decrypt(Species);
	u32 length = evoData[species].index;
	EvolutionData* mainDataLoc = (EvolutionData*)evoData[species].pointerToData;
	if (mainDataLoc != 0)
	{
		u32 i;
		for (i = 0; i < length; i++)
		{
			u32 evolutionTriggered = false;
			switch (mainDataLoc[i].evolutionType)
			{
				case MaxHappiness:
					if (HappinessCheck(thePokemon) == true)
					{
						// Evolve
					}
					break;
				case MaxHappinessTimeDependent:
					if (HappinessCheck(thePokemon) == true && TimeCheck() == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUp:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						// Evolve
					}
					break;
				case LevelUpTimeDependent:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && TimeCheck() == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUpGender:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && GenderCheck(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpInSpecificMap:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && Game::GetCurrentMap().mapBankMapCombined == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUpInMapName:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && Game::GetCurrentMap().mapNameID == mainDataLoc[i].condition2)
					{
						// Evolve
					}
					break;
				case LevelUpWithHeldItem:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && HeldItemCheck(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpWithHeldItemTimeDependent:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && HeldItemCheck(thePokemon, (mainDataLoc[i].condition2 & 0x7FFF)) == true && TimeCheck() == ((mainDataLoc[i].condition2 & 0x8000) >> 15))
					{
						// Evolve
					}
					break;
				case LevelUpWithKnownMove:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && KnownMoveCheck(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpWithKnownMoveType:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && KnownMoveCheckType(thePokemon, mainDataLoc[i].condition2) == true)
					{
						// Evolve
					}
					break;
				case LevelUpWithPersonality:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u16 targetSpecies;
						if (Maths::UnsignedModulus((thePokemon->Decrypt(PersonalityID) & 0xFFFF), 10) > 4)
						{
							targetSpecies = mainDataLoc[i].condition2;
						}
						else
						{
							targetSpecies = mainDataLoc[i].resultingSpecies;
						}
					}
				case LevelUpWithSpeciesInParty:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u32 j;
						for (j = 0; j < 6; j++)
						{
							if (thePokemon != &partyPokemon[j])
							{
								if (PokemonDecrypter(&partyPokemon[j], Species) == mainDataLoc[i].condition2)
								{
									// Evolve
									break;
								}
							}
						}
					}
					break;
				case LevelUpWithStatBalance:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1Split.byte1) == true)
					{
						u32 statOne = mainData.Decrypt(Attack + mainDataLoc[i].condition2Split.byte1);
						u32 statTwo = mainData.Decrypt(Attack + mainDataLoc[i].condition2Split.byte2);
						u32 success = false;
						switch (mainDataLoc[i].condition1Split.byte2)
						{
							case 0:
								if (statOne == statTwo)
								{
									success = true;
								}
								break;
							case 1:
								if (statOne < statTwo)
								{
									success = true;
								}
								break;
							case 2:
								if (statOne > statTwo)
								{
									success = true;
								}
								break;
							case 3:
								if (statOne <= statTwo)
								{
									success = true;
								}
								break;
							case 4:
								if (statOne >= statTwo)
								{
									success = true;
								}
								break;
							default:
								break;
						}
						if (success == true)
						{
							// Evolve
						}
					}
					break;
				case LevelUpWithTypeInParty:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u32 j;
						for (j = 0; j < 6; j++)
						{
							Pokemon* p = &partyPokemon[j];
							u16 c = mainDataLoc[i].condition2;
							if (PokemonDecrypter(p, Type1) == c || PokemonDecrypter(p, Type2) == c)
							{
								// Evolve
								break;
							}
						}
					}
					break;
				case LevelUpWithWeatherOnOverworld:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						u8 mapBank = currentMap.mapLocation.mapBank;
						u8 map = currentMap.mapLocation.map;
						MapHeader* header = maps[mapBank][map];
						if (header->weatherType == mainDataLoc[i].condition2)
						{
							// Evolve
						}
					}
					break;
				case MaxBeauty:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true && mainData.Decrypt(Beauty) >= MaxHappiness)
					{
						// Evolve
					}
					break;
				case CreatesPokemon:
					if (LevelCheck(thePokemon, mainDataLoc[i].condition1) == true)
					{
						if (CountPartyPokemon() < 6)// && PlayerHasItemCategory(Category_Balls) == true)
						{
							// Create Pokémon
						}
						// Evolve
					}
				default:
					break;
			}
			if (evolutionTriggered == true)
			{
				return true;
			}
		}
	}
	return false;
}

u32 CheckTradeEvolutions(Pokemon* incomingPokemon, Pokemon* outgoingPokemon)
{
	u16 species = PokemonDecrypter(incomingPokemon, Species);
	u32 length = evoData[species].index;
	EvolutionData* mainDataLoc = (EvolutionData*)evoData[species].pointerToData;
	if (mainDataLoc != 0)
	{
		u32 i;
		for (i = 0; i < length; i++)
		{
			u32 evolutionTriggered = false;
			switch (mainDataLoc[i].evolutionType)
			{
				case Trade:
					// Evolve
					break;
				case TradeWhileHoldingItem:
					if (HeldItemCheck(incomingPokemon, mainDataLoc[i].condition1) == true)
					{
						// Evolve
					}
					break;
				case TradeWithSpecificSpecies:
					if (PokemonDecrypter(outgoingPokemon, Species) == mainDataLoc[i].condition1)
					{
						if (PokemonDecrypter(outgoingPokemon, HeldItem) != ITEM_EVERSTONE && PokemonDecrypter(incomingPokemon, HeldItem) != ITEM_EVERSTONE)
						{
							// Evolve
						}
					}
					break;
				default:
					break;
			}
			if (evolutionTriggered == true)
			{
				return true;
			}
		}
	}
	return false;
}

u32 CheckStoneEvolutions(Pokemon* thePokemon, u16 itemID)
{
	u16 species = mainData.Decrypt(Species);
	u32 length = evoData[species].index;
	EvolutionData* mainDataLoc = (EvolutionData*)evoData[species].pointerToData;
	if (mainDataLoc != 0)
	{
		u32 i;
		for (i = 0; i < length; i++)
		{
			u32 evolutionTriggered = false;
			if (itemID == mainDataLoc[i].condition1)
			{
				switch (mainDataLoc[i].evolutionType)
				{
					case ItemUsed:
						// Evolve
						break;
					case ItemWithConditionUsed:
						switch (mainDataLoc[i].condition2Split.byte1)
						{
							case 0:
								if (GenderCheck(thePokemon, mainDataLoc[i].condition2Split.byte2) == true)
								{
									// Evolve
								}
								break;
						}
						break;
					default:
						break;
				}
			}
			if (evolutionTriggered == true)
			{
				return true;
			}
		}
	}
	return false;
}*/

u32 GetBaseStatFromIndex(u16 species, u8 statIndex, u32 formeIndex)
{
	u8 returnable = 0;
	InternalBaseData* dataLoc = ((InternalBaseData**)((InternalBaseData***)pokemonBaseData[species].baseDataInfo.pointerToData))[0];
	switch (statIndex)
	{
		case 0:
			returnable = dataLoc[formeIndex].baseHP;
			break;
		case 1:
			returnable = dataLoc[formeIndex].baseAttack;
			break;
		case 2:
			returnable = dataLoc[formeIndex].baseDefence;
			break;
		case 3:
			returnable = dataLoc[formeIndex].baseSpeed;
			break;
		case 4:
			returnable = dataLoc[formeIndex].baseSpecialAttack;
			break;
		case 5:
			returnable = dataLoc[formeIndex].baseSpecialDefence;
			break;
	}
	return returnable;
}

void Pokemon::CalculateStats()
{
	u32 formeIndex = mainData.GetClampedFormeByteValue(&pokemonBaseData[mainData.Decrypt(Species)].baseDataInfo);
	u32 sum = Decrypt(HP_IV);
	sum += (GetBaseStatFromIndex(Decrypt(Species), 0, formeIndex) << 1);
	sum += ((Decrypt(HP_EV) >> 2) + 100) * level;
	u16 statValue = Maths::UnsignedDivide(sum, 100) + 10;
	u16 hpDiff = maximumHP - currentHP;
	Encrypt(CurrentHP, statValue - hpDiff);
	Encrypt(MaximumHP, statValue);
	for (int i = 1; i < 6; i++)
	{
		sum = Decrypt(HP_IV + i);
		sum += (GetBaseStatFromIndex(Decrypt(Species), i, formeIndex) << 1);
		sum += (Decrypt(HP_EV + i) >> 2);
		sum *= level;
		sum = Maths::UnsignedDivide(sum, 100) + 5;
		sum = Maths::UnsignedFractionalMultiplication(sum, natureEffects[Decrypt(Nature)][i - 1]);
		Encrypt(MaximumHP + i, sum);
	}
}

const RODATA_LOCATION u16 alternativeSpeciesChecks[][2] = { { NidoranF, NidoranM }, { Illumise, Volbeat }, { Volbeat, Illumise } };
const RODATA_LOCATION IncenseItemEgg incenseItemEggs[] = { { Wynaut, Wobbuffet, ITEM_LAXINCENSE }, { Azurill, Marill, ITEM_SEAINCENSE }, { Mime_Jr, Mr_Mime, ITEM_ODDINCENSE }, { Munchlax, Snorlax, ITEM_FULLINCENSE }, { Budew, Roselia, ITEM_ROSEINCENSE }, { Chingling, Chimecho, ITEM_PUREINCENSE }, { Bonsly, Sudowoodo, ITEM_ROCKINCENSE }, { Happiny, Chansey, ITEM_LUCKINCENSE }, { Mantyke, Mantine, ITEM_WAVEINCENSE } };

Pokemon* Pokemon::GenerateEgg(Pokemon* mother, Pokemon* father)
{
	u16 motherItem = mother->Decrypt(HeldItem);
	//u16 fatherItem = PokemonDecrypter(father, HeldItem);
	u16 species = mother->Decrypt(Species);
	if (pokemonBaseData[species].eggGroup1 == EGG_GROUP_DITTO && pokemonBaseData[species].eggGroup2 == EGG_GROUP_DITTO)
	{
		species = father->Decrypt(Species);
	}
	species = FindBabySpeciesInner(species);
	if (species == Manaphy)
	{
		species = Phione;
	}
	for (int i = 0; i < 3; i++)
	{
		if (species == alternativeSpeciesChecks[i][0])
		{
			species = alternativeSpeciesChecks[i][Maths::GetDelimitedRandom32BitValue(2)];
			break;
		}
	}
	for (int i = 0; i < 9; i++)
	{
		if (species == incenseItemEggs[i].foundSpecies)
		{
			if (motherItem != incenseItemEggs[i].itemID && motherItem != incenseItemEggs[i].itemID)
			{
				species = incenseItemEggs[i].alternativeSpecies;
			}
			break;
		}
	}
	Pokemon* egg = new Pokemon(0, species);
	egg->Encrypt(IsEgg, true);
	egg->Encrypt(Friendship, pokemonBaseData[species].hatchSteps);
	// Calculate Egg Moves and award where necessary
	return egg;
}

void Pokemon::GivePokemonToPlayer(u8 level, u16 species, u32 formeIndex)
{
	Pokemon* thePokemon = new Pokemon(level, species);
	thePokemon->Encrypt(OTID, Game::GetPlayer().completeTrainerID);
	thePokemon->Encrypt(OTName, (u32)&Game::GetPlayer().name);
	InternalBaseData* data = (InternalBaseData*)((void**)pokemonBaseData[species].baseDataInfo.pointerToData)[formeIndex];
	thePokemon->Encrypt(Friendship, data[0].baseFriendship);
	if (formeIndex != 0)
	{
		thePokemon->Encrypt(FormeIndex, formeIndex);
	}
	Game::AddNewPokemon(*thePokemon);
	delete thePokemon;
}

Pokemon* Pokemon::GenerateTrainerPokemon(u8 level, u16 species, char* trainerName, u32 id, u32 formeIndex)
{
	Pokemon* thePokemon = new Pokemon(level, species);
	thePokemon->Encrypt(OTID, id);
	thePokemon->Encrypt(OTName, (u32)trainerName);
	InternalBaseData* data = (InternalBaseData*)((void**)pokemonBaseData[species].baseDataInfo.pointerToData)[formeIndex];
	thePokemon->Encrypt(Friendship, data[0].baseFriendship);
	if (formeIndex != 0)
	{
		thePokemon->Encrypt(FormeIndex, formeIndex);
	}
	return thePokemon;
}

Pokemon* Pokemon::GenerateWildPokemonFromData(WildData* initData)
{
	WildPokemonEntry* pointer;
	{
		WildPokemonData* info = initData[0].data[battleType.info.wildBattleVariety];
		pointer = info[0].wildData[RTC::GetTime().timeOfDay];
		if (pointer == 0)
		{
			pointer = info[0].wildData[0];
			if (pointer == 0)
			{
				return NULL;
			}
		}
	}
	u32 loopCounter = 0;
	{
		u32 percentage = Maths::GetDelimitedRandom32BitValue(100);
		u32 counter = pointer[loopCounter].percentage;
		while (counter < percentage && counter <= 100)
		{
			loopCounter++;
			counter += pointer[loopCounter].percentage;
		}
	}
	u32 calculatedLevel;
	{
		calculatedLevel = pointer[loopCounter].maxLevel;
		u32 minLevel = pointer[loopCounter].minLevel;
		if (minLevel > calculatedLevel)
		{
			u32 temp = minLevel;
			minLevel = calculatedLevel;
			calculatedLevel = temp;
		}
		if (calculatedLevel != minLevel)
		{
			calculatedLevel += Maths::GetDelimitedRandom32BitValue((calculatedLevel - minLevel) + 1);
		}
	}
	return new Pokemon(pointer[loopCounter].species, calculatedLevel);
}
