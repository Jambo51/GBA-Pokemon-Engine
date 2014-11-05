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
void MoveSelectionRender();
void RecalculateEffectiveStat(PokemonBattleData* data, u32 statIndex);
void RecalculateAllEffectiveStats(PokemonBattleData* dataLocation);
void CalculateMoveDamage(u16 moveID, u32 attackerID, u32 defenderID);
void InitialiseBattleEnvironment();

#endif
