#ifndef BATTLES_H
#define BATTLES_H

/*Normal
Fighting
Flying
Poison
Ground
Rock
Bug
Ghost
Steel
Fire
Water
Grass
Electric
Psychic
Ice
Dragon
Dark
Fairy
???*/

#include "Data/GlobalDefinitions.h"
#include "Data/PokemonBaseData.h"

u32 NoSpecialEffectPokeball();
u32 HalfAgainPokeball();
u32 DoublePokeball();
u32 AlwaysCatchPokeball();
u32 LevelBallPokeball();
u32 MoonBallPokeball();
u32 LoveBallPokeball();
u32 HeavyBallPokeball();
u32 FastBallPokeball();
u32 RepeatBallPokeball();
u32 TimerBallPokeball();
u32 NestBallPokeball();
u32 QuickBallPokeball();
u32 DuskBallPokeball();
u32 DoubleLikelihood(u32 initialValue);
u32 HalfAgainLikelihood(u32 initialValue);
u32 NoChangeLikelihood(u32 initialValue);
u32 CaptureChecks(Pokemon* target, u16 itemID);
u32 ApplyTypeBasedModifiers(u32 currentDamage, u32 moveType, PokemonBattleData* defender);
u32 ApplyCriticalHitModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender);
u32 ApplyItemModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender);
u32 ApplyAbilityModifiers(u32 currentDamage, PokemonBattleData* attacker, PokemonBattleData* defender, MoveData* moveInfo);
void RecalculateEffectiveStat(u32 pokemonIndex, u32 statIndex);
void RecalculateAllEffectiveStats(u32 pokemonIndex);
void CalculateMoveDamage(u16 moveID, u32 attackerID, u32 defenderID);

#endif
