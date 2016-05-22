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

#include "Scene.h"

namespace Entities
{
	class Pokemon;
}

namespace Scenes
{
	namespace Battles
	{
		typedef struct BattleMusicStorage {
			u16 wildBattle;
			u16 doubleRareWildBattle;
			u16 legendaryWildBattle;
			u16 roamingWildBattle;
			u16 trainerBattle;
			u16 gymBattle;
			u16 eliteFourBattle;
			u16 championBattle;
			u16 linkBattle;
		} BattleMusicStorage;

		typedef struct TrainerClassMusic {
			u16 classID;
			u16 themeID;
		} TrainerClassMusic;

		typedef struct BattleStatusStruct {
			u32 usedCritEnhancingMove:1;
			u32 focusEnergyInEffect:1;
			u32 direHitInEffect:1;
			u32 protectedFlag:1;
			u32 highPriorityProtected:1;
			u32 wideGuardProtected:1;
			u32 craftyShieldProtected:1;
			u32 tertiaryTypeActive:1;
			u32 trappedInBattle:1;
			u32 cannotSleep:1;
			u32 safeguarded:1;
			u32 substituted:1;
			u32 roosted:1;
			u32 moved:1;
			u32 damaged:1;
			u32 chargingFly:1;
			u32 chargingDig:1;
			u32 chargingDive:1;
			u32 switching:1;
			u32 usedDefenceCurl:1;
			u32 pledgeTriggered:1;
			u32 retaliatePowerUp:1;
			u32 fusionPowerUp:1;
			u32 meFirst:1;
			u32 charged:2;
			u32 helpingHand:1;
			u32 mudSport:1;
			u32 waterSport:1;
			u32 flashFireTriggered:1;
			u32 transformed:1;
			u32 foresight:1;
		} BattleStatusStruct;

		typedef struct BattleStatusStructTwo {
			u32 miracleEye:1;
			u32 electrified:1;
			u32 unused:30;
		} BattleStatusStructTwo;

		typedef struct PokemonBattleData {
			Pokemon* mainPointer;
			u32 personalityID;
			u16 species;
			u16 currentHP;
			u16 maximumHP;
			u16 heldItem;
			u16 moves[4];
			u8 pp[4];
			u16 stats[5];
			u16 effectiveStats[5];
			u16 slowStartCounter;
			union
			{
				u32 primaryStatus;
				PrimaryStatusStruct primaryStatusBits;
			};
			union
			{
				u32 secondaryStatuses;
				SecondaryStatusStruct secondaryStatusBits;
			};
			u8 ability;
			u8 statLevels[NumBattleStats];
			u8 type1;
			u8 type2;
			u8 type3;
			u8 forme;
			u8 level;
			u8 gender;
			u8 happiness;
			u8 alignment;
			union
			{
				u32 battleFlags;
				BattleStatusStruct battleStatusFlags;
			};
			union
			{
				u32 battleFlagsBank2;
				BattleStatusStructTwo battleStatusFlagsBank2;
			};
			u16 damageReceivedThisTurn;
			u16 damageReceivedLastTurn;
		} PokemonBattleData;

		typedef struct BattleFlagsStruct {
			u32 attackEffectiveness:4;
			u32 criticalHitFlag:1;
			u32 moveTypeOverride:1;
			u32 wonderGuardTriggered:1;
			u32 dampTriggered:1;
			u32 voltAbsorbTriggered:1;
			u32 waterAbsorbTriggered:1;
			u32 levitateTriggered:1;
			u32 sapSipperTriggered:1;
			u32 damageTypeDealt:4;
			u32 waitForMoveAnimation:1;
			u32 extraEffectBlock:1;
			u32 echoedVoiceRaisedThisTurn:1;
			u32 battleScriptTextWaitFlag:1;
			u32 battleScriptTextContinueFlag:1;
			u32 ionDeluge:1;
			u32 waitAttack:1;
			u32 endBattle:1;
			u32 unused:8;
		} BattleFlagsStruct;

		typedef struct BattleWeatherBits {
			u16 rain:1;
			u16 hail:1;
			u16 snow:1;
			u16 sunny:1;
			u16 sandstorm:1;
			u16 fog:1;
			u16 shadowyAura:1;
			u16 permanent:1;
			u16 turnsRemaining:8;
		} BattleWeatherBits;

		typedef struct BattleCounterBits {
			u32 trickRoom:3;
			u32 wonderRoom:3;
			u32 magicRoom:3;
			u32 echoedVoice:8;
			u32 unusedCounter:15;
			u32 escapeAttempts:12;
			u32 payDay:20;
		} BattleCounterBits;

		typedef struct BattleParticipantBits {
			u32 numParticipants:3;
			u32 numExpShareHolders:3;
			u32 participantFlags:6;
			u32 holderFlags:6;
			u32 unused:14;
		} BattleParticipantBits;

		typedef struct BattleAIData {

		} BattleAIData;

		typedef struct BattleVarietyBitsStruct {
			u8 isDoubleBattle:1;
			u8 isMovesetBattle:1;
			u8 isHeldItemsBattle:1;
			u8 unused:5;
		} BattleVarietyBitsStruct;

		typedef struct EVSpreadStruct {

		} EVSpreadStruct;

		typedef struct TrainerPokemonData {
			u16 species;
			u16 level;
			union
			{
				u16 EVSpread;
				EVSpreadStruct EVSpreadData;
			};
			u16 heldItem;
		} TrainerPokemonData;

		typedef struct TrainerPokemonDataWithMoves {
			TrainerPokemonData mainData;
			u16 moves[4];
		} TrainerPokemonDataWithMoves;

		typedef struct TrainerData {
			u8 numPokemon;
			u8 introThemeSlot:6;
			u8 genderBits:2;
			u8 trainerClass;
			BattleVarietyBitsStruct battleVarietyBits;
			char name[16];
			union
			{
				TrainerPokemonData* pokemonData;
				TrainerPokemonDataWithMoves* pokemonDataMoves;
			};
		} TrainerData;

		typedef struct TrainerBattleData {
			u32 trainerID;
			TrainerData* pointerToData;
			char* afterBattleText;
			u8* afterBattleScript;
		} TrainerBattleData;

		typedef struct BattleData {
			PokemonBattleData* pokemonStats;
			u8 battleBanks[NumBattleBanks];
			u32 currentBattlerIndex;
			union
			{
				u8 battleOrder[4];
				u32 combinedOrder;
			};
			u16 battleTurnsCounter;
			union
			{
				u16 weather;
				BattleWeatherBits weatherBits;
			};
			union
			{
				u32 battleFlags;
				BattleFlagsStruct flags;
			};
			u16 moveIndex;
			u16 itemIndex;
			union
			{
				u32 counters[2];
				BattleCounterBits counterBits;
			};
			BattleParticipantBits participantInfo;
			TrainerBattleData* trainerData;
			u32 (*typeChartCallback)(u32);
			u32 genericBuffer;
		} BattleData;

		class Battle : public Scene
		{
		private:
			static Battle* instance;
			static u8 numRegions;
			static u16 criticalCaptureValues[][2];
			static u32 battleTextPalette[];
			static BattleMusicStorage musicValues[];
			static TrainerClassMusic classValues[];
			static TrainerClassMusic legendaryValues[];
			static TrainerClassMusic roamingValues[];
			static U32FunctionPointerVoid ballBonusRates[];
			static U32FunctionPointerU32 statusBonusRates[];
			static U32FunctionPointerU32 typeChartCallbackFunctions[][(Item_Effect_Inversion - Item_Effect_Double_Cash_Gain) + 1];
			static const u8* moveScriptsTable[];
			static u16 statModifierRates[];
			void DrawMainSelectionMenu();
			u32 PrioritiseBetweenTwoPokemon(u32 index1, u32 index2);
			void PrioritisePokemon();
			void UpdateCounters();
		protected:
			void CopyBattleDataFromPokemon(Pokemon* thePokemon, u32 dataIndex);
			u32 currentStatus;
			BattleTypeStruct battleType;
			Pokemon enemyPokemon[6];
			BattleData battleData;
			Battle(const BattleTypeStruct &bts);
			~Battle();
		public:
			static u32 TiltEffectTypeChartCallback(u32 incomingValue);
			static u32 InversionEffectTypeChartCallback(u32 incomingValue);
			static u32 TiltedInversionTypeChartCallback(u32 incomingValue);
			static u32 DoubleTiltedTypeChartCallback(u32 incomingValue);
			u16 CalculateBattleTrack();
			static u32 NoSpecialEffectPokeball();
			static u32 HalfAgainPokeball();
			static u32 DoublePokeball();
			static u32 AlwaysCatchPokeball();
			static u32 LevelBallPokeball();
			static u32 MoonBallPokeball();
			static u32 LoveBallPokeball();
			static u32 HeavyBallPokeball();
			static u32 FastBallPokeball();
			static u32 RepeatBallPokeball();
			static u32 TimerBallPokeball();
			static u32 NestBallPokeball();
			static u32 QuickBallPokeball();
			static u32 DuskBallPokeball();
			static u32 DoubleLikelihood(u32 initialValue);
			static u32 HalfAgainLikelihood(u32 initialValue);
			static u32 NoChangeLikelihood(u32 initialValue);
			static u32 CaptureChecks(Pokemon* target, u16 itemID);
			void MoveSelectionRender();
			void RecalculateEffectiveStat(PokemonBattleData &data, u32 statIndex);
			void RecalculateAllEffectiveStats(PokemonBattleData &dataLocation);
			void CalculateMoveDamage(u16 moveID, u32 attackerID, u32 defenderID);
			BattleData & GetBattleData() { return battleData; }
			const BattleData & GetBattleData() const { return battleData; }
			const BattleTypeStruct & GetBattleTypeStruct() const { return battleType; }
			Pokemon* GetEnemyBattlerByIndex(u32 index) const { return (Pokemon*)&enemyPokemon[index]; }
			virtual void OnExitCallback() { }
			virtual void OnEnterCallback() { }
			virtual void Update() = 0;
		};
	}
}

#endif
