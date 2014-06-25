//
// customtypes.h: 
// 


#ifndef CUSTOMTYPES_H
#define CUSTOMTYPES_H

#define MALLOCLENGTH 20
#define SPRALLOCLENGTH 35
#define PALLOCLENGTH 16
#define CALLBACKLENGTH 10

#define EWRAM_LOCATION __attribute__((section (".sbss")))

#define TilePaletteRAM(n) (0x05000000 + (n << 5))
#define ObjectPaletteRAM(n) (0x05000200 + (n << 5))
#define ObjectTileBase(n) (0x06010000 + (n << 5))

#include "tonc.h"

typedef void (*FunctionPtr)(void);

// --- primary typedefs ---
typedef enum { Time_Day, Time_Morning, Time_Afternoon, Time_Night } Times;

typedef enum { Flag_Null = 0, Flag_RunningShoes, Flag_RunningShoesOn, Flag_UsingGBP, Flag_Locked, Flag_KeyRaised, Flag_FadeOut, Flag_Pokegear = 0x800, Flag_Pokedex = 0x801, Flag_PokemonMenu = 0x802  } Flags;

typedef enum { Type_Normal, Type_Fighting, Type_Flying, Type_Poison, Type_Ground, Type_Rock, Type_Bug, Type_Ghost, Type_Steel, Type_Fire, Type_Water, Type_Grass, Type_Electric, Type_Psychic, Type_Ice, Type_Dragon, Type_Dark, Type_Fairy, Type_None } Types;

typedef enum { Key_A, Key_B, Key_Select, Key_Start, Key_Right, Key_Left, Key_Up, Key_Down, Key_RightBumper, Key_LeftBumper } Keys;

typedef enum { Shape_Square, Shape_Horizontal, Shape_Vertical } OAMShapes;

typedef enum { Square_8x8, Square_16x16, Square_32x32, Square_64x64 } SquareShapeSizes;

typedef enum { Horizontal_16x8, Horizontal_32x8, Horizontal_32x16, Horizontal_64x32 } HorizontalShapeSizes;

typedef enum { Vertical_8x16, Vertical_8x32, Vertical_16x32, Vertical_32x64 } VerticalShapeSizes;

typedef enum { Song_None, Song_CrystalTitleScreen, Song_GSCRoute1, Song_GSCRoute3, Song_GSCRoute11, Song_MagnetTrainFanfare, Song_KantoGymBattle, Song_KantoTrainerBattle, Song_KantoWildBattle, Song_GSCPokecentre, Song_HikerEncounter, Song_ClassicLassEncounter, Song_PolicemanEncounter, Song_HealingFanfare, Song_GSCLavenderTown, Song_Route2, Song_GSCMountMoon, Song_GSCFollowMe, Song_GSCGameCorner, Song_GSCRidingTheBike, Song_GSCHallOfFame, Song_GSCViridianCity, Song_GSCCeladonCity, Song_GSCTrainerVictoryFanfare, Song_GSCWildVictoryFanfare, Song_GSCGymVictoryFanfare, Song_DanceOfTheClefairy, Song_GSCGym, Song_GSCPalletTown, Song_GSCOaksLab, Song_GSCOaksTheme, Song_SilverEncounter, Song_SilverOutro, Song_GSCSurfing, Song_GSCEvolution, Song_NationalPark, Song_GSCCredits, Song_AzaleaTown, Song_CherrygroveCity, Song_KimonoGirlEncounter, Song_UnionCave, Song_JohtoWildBattle, Song_JohtoTrainerBattle, Song_Route30, Song_EcruteakCity, Song_VioletCity, Song_JohtoGymBattle, Song_GSCChampionBattle, Song_SilverBattle, Song_TeamRocketBattle, Song_ElmsLab, Song_DarkCave, Song_Route29, Song_Route34, Song_SSAqua, Song_YoungsterEncounter, Song_GSCLassEncounter, Song_TeamRocketEncounter, Song_PokecollectorEncounter, Song_SageEncounter, Song_NewBarkTown, Song_GoldenrodCity, Song_GSCVermilionCity, Song_RadioFanfare1, Song_PokefluteRadio, Song_TinTower, Song_SproutTower, Song_BurnedTower, Song_OlivineLighthouse, Song_Route42, Song_GSCIndigoPlateau, Song_Route38, Song_RocketHideout, Song_DragonsDen, Song_JohtoLegendaryBattle, Song_UnownRadioSignal, Song_GSCWildBattleVitoryNoIntro, Song_Route26, Song_EncounterWithMum, Song_VictoryRoad, Song_PokemonLullaby, Song_PokemonMarch, Song_GSIntro1, Song_GSIntro2, Song_ContinueMenuTheme, Song_InsideTheRuins, Song_RocketRadioTowerTakeover, Song_EcruteakDanceTheatre, Song_PreparingForBugCatchingContest, Song_BugCatchingContest, Song_RocketRadioSignal, Song_Unknown, Song_TheEnd, Song_ClairsTheme, Song_Unknown2, Song_Unknown3, Song_BuenasRadioShow, Song_EusinesTheme, Song_CrystalIntro, Song_BattleTower, Song_LegendaryBeastBattle, Song_BattleTowerInterior, Song_PokecomCentre, Song_RBYPalletTown, Song_RBYPokecentre, Song_RBYGym, Song_RBYViridianCity, Song_CeruleanCity, Song_RBYCeladonCity, Song_CinnabarIsland, Song_RBYVermilionCity, Song_RBYLavenderTown, Song_SSAnne, Song_RBYOaksTheme, Song_BluesTheme, Song_RBYFollowMe, Song_RBYEvolution, Song_RBYHealingFanfare, Song_RBYRoute1, Song_Route24, Song_RBYRoute3, Song_RBYRoute11, Song_RBYIndigoPlateau, Song_RBYTitleScreen, Song_RBYCredits, Song_RBYHallOfFame, Song_RBYOaksLab, Song_JigglypuffsLullaby, Song_RBYRidingTheBike, Song_RBYSurfing, Song_RBYGameCorner, Song_RBYIntro, Song_UnknownDungeon, Song_ViridianForest, Song_RBYMountMoon, Song_CinnabarMansion, Song_PokemonTower, Song_SilphCo, Song_RBYEvilEncounter, Song_RBYFemaleEncounter, Song_RBYMaleEncounter, Song_RBYGymBattle, Song_RBYTrainerBattle, Song_RBYWildBattle, Song_RBYChampionBattle, Song_RBYTrainerVictoryFanfare, Song_RBYWildVictoryFanfare, Song_RBYGymVictoryFanfare } Songs;

typedef enum { Gender_Male, Gender_Female, Gender_Genderless = 0xFF } PokemonGenders;

typedef enum { Category_Items, Category_KeyItems, Category_Berries, Category_Apricorns, Category_TechnicalMachines, Category_Balls } ItemCategories;

typedef struct U8BitField {
	u8 bit0:1;
	u8 bit1:1;
	u8 bit2:1;
	u8 bit3:1;
	u8 bit4:1;
	u8 bit5:1;
	u8 bit6:1;
	u8 bit7:1;
} U8BitField;

typedef struct U16BitField {
	u16 bit0:1;
	u16 bit1:1;
	u16 bit2:1;
	u16 bit3:1;
	u16 bit4:1;
	u16 bit5:1;
	u16 bit6:1;
	u16 bit7:1;
	u16 bit8:1;
	u16 bit9:1;
	u16 bit10:1;
	u16 bit11:1;
	u16 bit12:1;
	u16 bit13:1;
	u16 bit14:1;
	u16 bit15:1;
} U16BitField;

typedef struct SaveBlockFooter {
	u16 blockNumber;
	u16 saveNumber;
	u32 checksum;
	u8* pointer;
} SaveBlockFooter;

typedef struct SaveBlock {
	u8 data[0x994];
	SaveBlockFooter footer;
} SaveBlock;

typedef struct ColourInner {
	u16 red:5;
	u16 blue:5;
	u16 green:5;
	u16 alpha:1;
} ColourInner;

typedef struct Colour {
	union {
		u16 colour;
		ColourInner colours;
	};
} Colour;

typedef struct ColourChangeStruct {
	s8 redChange;
	u8 redFramesPerChange;
	u8 redFramesCounter;
	s8 blueChange;
	u8 blueFramesPerChange;
	u8 blueFramesCounter;
	s8 greenChange;
	u8 greenFramesPerChange;
	u8 greenFramesCounter;
	u8 alignment;
	u16 alignment2;
} ColourChangeStruct;

typedef struct PaletteFadeStruct {
	u16* paletteLocation;
	u16* targetPaletteLocation;
	ColourChangeStruct* valueChanges;
	u8 framesPassed;
	u8 framesTotal;
	u8 fadeDirection;
	u8 isActive;
} PaletteFadeStruct;

typedef struct SpriteData {
	u8 numberOfFrames;
	u8 paletteSlotID;
	u8 spriteShape;
	u8 spriteSize;
	u32* frames;
} SpriteData;

typedef struct MovesetEntry
{
	u16 moveID;
	u8 level;
	u8 unused;
} MovesetEntry;

typedef struct Block
{
    u32 bottom[2];
    u32 top[2];
} Block;

typedef struct MapConnectionData {
	u32 type;
	s32 offset;
	u8 mapBank;
	u8 map;
	u16 alignment;
} MapConnectionData;

typedef struct MapConnection {
	u32 numberOfConnections;
	MapConnectionData* mainData;
} MapConnection;

typedef struct TileAnimationStruct {
	u32* dataPointer;
	u8 frameDelay;
	u8 numberOfFrames;
	u8 frameOfAnimation;
	u8 framesUntilChange;
	u16 startTile;
	u8 numberOfTiles;
	u8 specialFlags;
} TileAnimationStruct;

typedef struct TileAnimationStructROM {
	u32 length;
	TileAnimationStruct* dataPointer;
} TileAnimationStructROM;

typedef struct MapPalette {
	u16 palette[4][256];
} MapPalette;

typedef struct Tileset
{
	u32 information;
	union
	{
		u16* primaryTilesetData[0x5000];
		u16* secondaryTilesetData[0x3000];
		u16* RSETilesetData[0x4000];
	};
	MapPalette* paletteData;
	union
	{
		Block* primaryBlockData[0x280];
		Block* secondaryBlockData[0x100];
		Block* RSEBlockData[0x1F0];
	};
	TileAnimationStructROM* blockAnimationsData;
	union
	{
		u32* primaryBlockInformation[0x280];
		u32* secondaryBlockInformation[0x100];
		u32* RSEBlockInformation[0x1F0];
	};
} Tileset;

typedef struct MapFooter
{
	u32 width;
	u32 height;
	u16* borderBlocks;
	u16* mapDataLocation;
	Tileset* primaryTileset;
	Tileset* secondaryTileset;
	u8 borderWidth;
	u8 borderHeight;
	u16 alignment;
} MapFooter;

typedef struct LevelScript
{
	u8 type;
	u8* scriptLocation; // unaligned, make sure to load using loop
} LevelScript;

typedef struct WildPokemonEntry
{
	u8 minLevel;
	u8 maxLevel;
	u16 species;
} WildPokemonEntry;

typedef struct WildGrassPokemonData
{
	u32 information;
	WildPokemonEntry* wildData[12];
} WildGrassPokemonData;

typedef struct WildWaterPokemonData
{
	u32 information;
	WildPokemonEntry* wildData[10];
} WildWaterPokemonData;

typedef struct WildTreePokemonData
{
	u32 information;
	WildPokemonEntry* wildData[5];
} WildTreePokemonData;

typedef struct WildData
{
	WildGrassPokemonData* grassData;
	WildWaterPokemonData* waterData;
	WildTreePokemonData* treeData;
	WildTreePokemonData* rockSmashData;
	WildGrassPokemonData* fishingRodData;
} WildData;

typedef struct MapBankMapCombo
{
	u8 mapBank;
	u8 map;
} MapBankMapCombo;

typedef struct MapHeader {
	MapFooter* footerLocation;
	u32* eventsLocation;
	LevelScript* levelScriptsLocation;
	MapConnection* connections;
	u16 musicTrack;
	union
	{
		MapBankMapCombo mapLocation;
		u16 mapBankMapCombined;
	};
	u8 mapNameID;
	u8 caveStatus;
	u8 weatherType;
	u8 lightStatus;
	u8 tilesetType;
	u8 escapeRopeType;
	u8 showName;
	u8 battleType;
	WildData* wildDataLocation;
} MapHeader;



typedef struct BagItem {
	u16 quantity;
	u16 itemID;
} BagItem;

typedef struct TrainerIDStruct {
	u16 trainerID;
	u16 secretID;
} TrainerIDStruct;

typedef struct Player {
	union
	{
		u32 completeTrainerID;
		TrainerIDStruct trainerIDStruct;
	};
	u16 hoursPlayed;
	u8 minutesPlayed;
	u8 secondsPlayed;
	u8 framesPlayed;
	u8 gender;
	char name[7];
	char primaryRivalName[7];
	char secondaryRivalName[7];
	char tertiaryRivalName[7];
	u16 boxOutline:4;
	u16 stereoSound:1;
	u16 options:11;
} Player;

typedef struct Buffer {
	char text[20];
} Buffer;

typedef struct RealTimeClock {
	u16 year;
	u8 month;
	u8 day;
	u8 dayOfWeek;
	u8 hour;
	u8 minute;
	u8 second;
	u8 timeOfDay;
} RealTimeClock;

typedef struct Bag {
	u32 bagInformation;
	BagItem bagItemsData[40];
	BagItem keyItemsData[30];
	BagItem ballItemsData[20];
	BagItem TMData[103];
	BagItem berryItemsData[30];
} Bag;

typedef struct GBPToneData {
	u8* nextInstruction;
	u8* returnLocation;
	u16 pitch;
	u16 tone;
	u8 frameDelay;
	u8 pitchBendRate;
	u8 pitchBendDirection:1;
	u8 pitchBendActivationStatus:1;
	u8 unusedBits:6;
	u8 loopCounter;
	u8 loopCounter2;
	s8 keyShift;
	u8 currentOctave;
	u8 currentVoice;
	u8 fadeSpeed;
	u8 modulationCountdown:6;
	u8 modulationStatus:1;
	u8 modulationActivationStatus:1;
	u8 modulationDelay:6;
	u8 modulationMode:2;
	u8 modulationDepth;
	u8 modulationSpeedDelay:4;
	u8 modulationSpeed:4;
	u8 noteLength1;
	u8 noteLength2;
	u8 channelVolume;
	u8 fadeDirection;
	u8 velocity;
	u8 pan;
	u8 arpeggiationVoice:2;
	u8 arpeggiationDelayCount:4;
	u8 arpeggiationStatus:1;
	u8 arpeggiationActivationStatus:1;
	u8 arpeggiationCountdown;
} GBPToneData;

typedef struct GBPWaveData {
	u8* nextInstruction;
	u8* returnLocation;
	u16 pitch;
	u16 tone;
	u8 frameDelay;
	u8 pitchBendRate;
	u8 pitchBendDirection:1;
	u8 pitchBendActivationStatus:1;
	u8 unusedBits:6;
	u8 loopCounter;
	u8 loopCounter2;
	s8 keyShift;
	u8 currentOctave;
	u8 velocity;
	u8 currentVoice;
	u8 modulationCountdown:6;
	u8 modulationStatus:1;
	u8 modulationActivationStatus:1;
	u8 modulationDelay:6;
	u8 modulationMode:2;
	u8 modulationDepth;
	u8 modulationSpeedDelay:4;
	u8 modulationSpeed:4;
	u8 noteLength1;
	u8 noteLength2;
	u8 pan;
} GBPWaveData;

typedef struct GBPNoiseData {
	u8* nextInstruction;
	u8* returnLocation;
	u8 noteLength1;
	u8 noteLength2;
	u8 noiseSet;
	u8 frameDelay;
	u8 loopCounter;
	u8 loopCounter2;
	u8 pan;
	u8 noiseFrameDelay:7;
	u8 noiseActive:1;
	u8* samplePointer;
} GBPNoiseData;

typedef struct GBPMusicStruct {
	u16 tempo;
	u16 tone1Included:1;
	u16 tone2Included:1;
	u16 waveIncluded:1;
	u16 noiseIncluded:1;
	u16 tone1update:1;
	u16 tone2update:1;
	u16 waveupdate:1;
	u16 noiseupdate:1;
	u16 unused:8;
	GBPToneData tone1;
	GBPToneData tone2;
	GBPWaveData wave;
	GBPNoiseData noise;
} GBPMusicStruct;

typedef struct GBPTrack {
	u32 trackType:2;
	u32 secondaryTracks:1;
	u32 unused:29;
	u8* songData;
} GBPTrack;

typedef struct GBPTrackHeader {
	u8 trackType:2;
	u8 secondaryTracks:1;
	u8 tone1Included:1;
	u8 tone2Included:1;
	u8 waveIncluded:1;
	u8 noiseIncluded:1;
	u8 alignment:1;
	u8 numberOfTracks;
	u16 unused;
	u8* songData;
	GBPTrack theTracks[];
} GBPTrackHeader;

typedef struct MoveData {
	u16 effectID;
	u8 basePower;
	u8 type;
	u8 accuracy;
	u8 basePP;
	u8 effectAccuracy;
	u8 targets;
	s8 priority;
	u8 specialFlags;
	u8 category;
	u8 padding;
} MoveData;

typedef struct NPCData {
	u16 xLocation;
	u16 yLocation;
	u8* scriptLocation;
	u8 spriteID;
	u8 directionFacing:4;
	u8 isActive:1;
	u8 unused:3;
	u8 oamStructID;
	u8 nextWalkingFrame;
	u8 previousWalkingFrame;
	u8 frameDelay;
	u8 pixelsMoved;
	u8 dataSpriteID:7;
	u8 isMoving:1;
} NPCData;

typedef struct Double8BitValue
{
	u8 byte1;
	u8 byte2;
} Double8BitValue;

typedef struct EvolutionData {
	u16 evolutionType;
	union
	{
		u16 condition1;
		Double8BitValue condition1Split;
	};
	union
	{
		u16 resultingSpecies;
		Double8BitValue resultingSpeciesSplit;
	};
	union
	{
		u16 condition2;
		Double8BitValue condition2Split;
	};
} EvolutionData;

typedef struct KeyBuffer {
	union
	{
		u16 keyBits;
		U16BitField keyBitsInterpreted;
	};
	union
	{
		u16 previousKeyBits;
		U16BitField previousKeyBitsInterpreted;
	};
	u8 IsAIgnored:1;
	u8 IsBIgnored:1;
	u8 IsSelectIgnored:1;
	u8 IsStartIgnored:1;
	u8 IsRightIgnored:1;
	u8 IsLeftIgnored:1;
	u8 IsUpIgnored:1;
	u8 IsDownIgnored:1;
	u8 IsRBIgnored:1;
	u8 IsLBIgnored:1;
	u8 unused2:6;
	u8 Timers[10];
} KeyBuffer;

typedef struct PreOAMStruct {
	void (*StateFunction)(u32);
	void* tileLocation;
	u16* paletteLocation;
	u16 xLocation;
	u16 yLocation;
	u8 objShape;
	u8 objSize;
	u8 paletteSlot:4;
	u8 priority:4;
	u8 spriteID;
	u8 isActive:1;
	u8 requiresUpdate:1;
	u8 hFlip:1;
	u8 vFlip:1;
	u8 unused:4;
	u8 framesToChange;
	u8 frame;
	u8 animationStep;
} PreOAMStruct;

typedef struct ConnectionStruct {
	u8 isActive;
	u8 mapBank;
	u8 map;
	u8 alignment;
	s32 offset;
} ConnectionStruct;

typedef struct FourBPPPixelGroup {
	u8 colour:4;
	u8 colour2:4;
} FourBPPPixel;

typedef struct IndexTable {
	u32 index;
	void* pointerToData;
} IndexTable;

typedef struct MemoryManagementStructure {
	u32 filledEntries;
	void* startLocation;
	u32 memoryBlockLength;
	IndexTable data[MALLOCLENGTH];
} MemoryManagementStructure;

typedef struct SpriteManagementStructure {
	u32 filledEntries;
	void* startLocation;
	u32 memoryBlockLength;
	IndexTable data[SPRALLOCLENGTH];
} SpriteManagementStructure;

typedef struct PaletteManagementStructure {
	u32 filledEntriesObjects;
	IndexTable dataObjects[PALLOCLENGTH];
} PaletteManagementStructure;

typedef struct WavePattern {
	u32 part1;
	u32 part2;
	u32 part3;
	u32 part4;
} WavePattern;

typedef struct DexEntry {
	u16 seenCaughtValue;
	u16 speciesValue;
	u8* textPointer;
} DexEntry;

typedef struct AbridgedPokemon {
	u32 personalityID;
	u32 originalTrainerID;
	char nickname[11];
	u8 ability;
	char originalTrainerName[7];
	u8 mark;
	u16 checksum;
	u8 gender;
	u8 nature;
	u16 species;
	u16 heldItem;
	u32 experience:21;
	u32 formeValue:10;
	u32 forceShiny:1;
	u8 ppBonuses;
	u8 friendship;
	u8 type1;
	u8 type2;
	u16 move1;
	u16 move2;
	u16 move3;
	u16 move4;
	u8 move1PP;
	u8 move2PP;
	u8 move3PP;
	u8 move4PP;
	u8 hpEV;
	u8 attackEV;
	u8 defenceEV;
	u8 speedEV;
	u8 specialAttackEV;
	u8 specialDefenceEV;
	u8 coolness;
	u8 beauty;
	u8 cuteness;
	u8 smartness;
	u8 toughness;
	u8 feel;
	u8 pokerusStatus:1;
	u8 pokeBall:7;
	u8 metLocation;
	u8 catchLevel;
	u8 originsInfo;
	u32 hpIV:5;
	u32 attackIV:5;
	u32 defenceIV:5;
	u32 speedIV:5;
	u32 specialAttackIV:5;
	u32 specialDefenceIV:5;
	u32 isEgg:1;
	u32 isObedient:1;
	u32 ribbons;
} AbridgedPokemon;

typedef struct Pokemon {
	AbridgedPokemon mainData;
	u32 statusAilment;
	u8 level;
	u8 pokerusRemaining;
	u16 currentHP;
	u16 maximumHP;
	u16 attack;
	u16 defence;
	u16 speed;
	u16 specialAttack;
	u16 specialDefence;
} Pokemon;

#define NUMBOXES 25
#define POKEMONPERBOX 30

typedef struct PokemonStorageBoxes {
	u32 currentBoxID;
	AbridgedPokemon boxData[NUMBOXES][POKEMONPERBOX];
} PokemonStorageBoxes;

typedef struct BaseData {
	u8 baseHP;
	u8 baseAttack;
	u8 baseDefence;
	u8 baseSpeed;
	u8 baseSpecialAttack;
	u8 baseSpecialDefence;
	u8 type1;
	u8 type2;
	u8 catchRate;
	u8 genderSplitByte;
	u16 EVYield;
	u16 item1;
	u16 item2;
	u16 baseExpYield;
	u8 hatchSteps;
	u8 baseFriendship;
	u8 levelUpType;
	u8 eggGroup1;
	u8 eggGroup2;
	u8 ability1;
	u8 ability2;
	u8 hiddenAbility;
	u8 safariZoneFleeRate;
	u8 colour;
} BaseData;

typedef struct PokedexData {
	DexEntry* data;
	u32 mode;
	u32 currentUpperLimit;
} PokedexData;

typedef struct MusicFadeInfo {
	u8 stepNumber;
	u8 direction;
	u8 frameDelay;
	u8 active;
} MusicFadeInfo;

typedef struct OverworldMovementStruct {
	u32 isMoving:1;
	u32 isRunning:1;
	u32 movingRight:1;
	u32 movingLeft:1;
	u32 movingUp:1;
	u32 movingDown:1;
	u32 counter:26;
} OverworldMovementStruct;

typedef struct CallbackEntry {
	void (*Function)(u32);
	u32 data;
} CallbackEntry;

typedef struct CallbackStruct {
	u32 filledEntries;
	CallbackEntry entries[CALLBACKLENGTH];
} CallbackStruct;

#endif // TOOLBOX_H

