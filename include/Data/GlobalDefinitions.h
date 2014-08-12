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
#define IWRAM_LOCATION __attribute__((section (".bss")))
#define RODATA_LOCATION __attribute__((section (".rodata")))

#define TilePaletteRAM(n) (0x05000000 + (n << 5))
#define ObjectPaletteRAM(n) (0x05000200 + (n << 5))
#define ObjectTileBase(n) (0x06010000 + (n << 5))

#define NumberOfPokemon 722

#include "tonc.h"
#include <stdbool.h>

typedef void (*FunctionPtr)(void);

// --- primary typedefs ---
enum Times { Time_Day, Time_Morning, Time_Afternoon, Time_Night, Time_NumTimes };

enum Flag { Flag_Null = 0, Flag_RunningShoes, Flag_RunningShoesOn, Flag_UsingGBP, Flag_Locked, Flag_KeyRaised, Flag_FadeOut, Flag_Pokegear = 0x800, Flag_Pokedex, Flag_PokemonMenu, Flag_NationalDex };

enum Types { Type_Normal, Type_Fighting, Type_Flying, Type_Poison, Type_Ground, Type_Rock, Type_Bug, Type_Ghost, Type_Steel, Type_Fire, Type_Water, Type_Grass, Type_Electric, Type_Psychic, Type_Ice, Type_Dragon, Type_Dark, Type_Fairy, Type_None };

enum Keys { Key_A, Key_B, Key_Select, Key_Start, Key_Right, Key_Left, Key_Up, Key_Down, Key_RightBumper, Key_LeftBumper };

enum Shapes { Shape_Square, Shape_Horizontal, Shape_Vertical };

enum SquareShapes { Square_8x8, Square_16x16, Square_32x32, Square_64x64 };

enum HorizontalShaeps { Horizontal_16x8, Horizontal_32x8, Horizontal_32x16, Horizontal_64x32 };

enum VerticalShapes { Vertical_8x16, Vertical_8x32, Vertical_16x32, Vertical_32x64 };

enum Songs { Song_None, Song_CrystalTitleScreen, Song_GSCRoute1, Song_GSCRoute3, Song_GSCRoute11, Song_MagnetTrainFanfare, Song_KantoGymBattle, Song_KantoTrainerBattle, Song_KantoWildBattle, Song_GSCPokecentre, Song_HikerEncounter, Song_ClassicLassEncounter, Song_PolicemanEncounter, Song_HealingFanfare, Song_GSCLavenderTown, Song_Route2, Song_GSCMountMoon, Song_GSCFollowMe, Song_GSCGameCorner, Song_GSCRidingTheBike, Song_GSCHallOfFame, Song_GSCViridianCity, Song_GSCCeladonCity, Song_GSCTrainerVictoryFanfare, Song_GSCWildVictoryFanfare, Song_GSCGymVictoryFanfare, Song_DanceOfTheClefairy, Song_GSCGym, Song_GSCPalletTown, Song_GSCOaksLab, Song_GSCOaksTheme, Song_SilverEncounter, Song_SilverOutro, Song_GSCSurfing, Song_GSCEvolution, Song_NationalPark, Song_GSCCredits, Song_AzaleaTown, Song_CherrygroveCity, Song_KimonoGirlEncounter, Song_UnionCave, Song_JohtoWildBattle, Song_JohtoTrainerBattle, Song_Route30, Song_EcruteakCity, Song_VioletCity, Song_JohtoGymBattle, Song_GSCChampionBattle, Song_SilverBattle, Song_TeamRocketBattle, Song_ElmsLab, Song_DarkCave, Song_Route29, Song_Route34, Song_SSAqua, Song_YoungsterEncounter, Song_GSCLassEncounter, Song_TeamRocketEncounter, Song_PokecollectorEncounter, Song_SageEncounter, Song_NewBarkTown, Song_GoldenrodCity, Song_GSCVermilionCity, Song_RadioFanfare1, Song_PokefluteRadio, Song_TinTower, Song_SproutTower, Song_BurnedTower, Song_OlivineLighthouse, Song_Route42, Song_GSCIndigoPlateau, Song_Route38, Song_RocketHideout, Song_DragonsDen, Song_JohtoLegendaryBattle, Song_UnownRadioSignal, Song_GSCWildBattleVitoryNoIntro, Song_Route26, Song_EncounterWithMum, Song_VictoryRoad, Song_PokemonLullaby, Song_PokemonMarch, Song_GSIntro1, Song_GSIntro2, Song_ContinueMenuTheme, Song_InsideTheRuins, Song_RocketRadioTowerTakeover, Song_EcruteakDanceTheatre, Song_PreparingForBugCatchingContest, Song_BugCatchingContest, Song_RocketRadioSignal, Song_Unknown, Song_TheEnd, Song_ClairsTheme, Song_Unknown2, Song_Unknown3, Song_BuenasRadioShow, Song_EusinesTheme, Song_CrystalIntro, Song_BattleTower, Song_LegendaryBeastBattle, Song_BattleTowerInterior, Song_PokecomCentre, Song_RBYPalletTown, Song_RBYPokecentre, Song_RBYGym, Song_RBYViridianCity, Song_CeruleanCity, Song_RBYCeladonCity, Song_CinnabarIsland, Song_RBYVermilionCity, Song_RBYLavenderTown, Song_SSAnne, Song_RBYOaksTheme, Song_BluesTheme, Song_RBYFollowMe, Song_RBYEvolution, Song_RBYHealingFanfare, Song_RBYRoute1, Song_Route24, Song_RBYRoute3, Song_RBYRoute11, Song_RBYIndigoPlateau, Song_RBYTitleScreen, Song_RBYCredits, Song_RBYHallOfFame, Song_RBYOaksLab, Song_JigglypuffsLullaby, Song_RBYRidingTheBike, Song_RBYSurfing, Song_RBYGameCorner, Song_RBYIntro, Song_UnknownDungeon, Song_ViridianForest, Song_RBYMountMoon, Song_CinnabarMansion, Song_PokemonTower, Song_SilphCo, Song_RBYEvilEncounter, Song_RBYFemaleEncounter, Song_RBYMaleEncounter, Song_RBYGymBattle, Song_RBYTrainerBattle, Song_RBYWildBattle, Song_RBYChampionBattle, Song_RBYTrainerVictoryFanfare, Song_RBYWildVictoryFanfare, Song_RBYGymVictoryFanfare };

enum Genders { Gender_Male, Gender_Female, Gender_Genderless = 0xFF };

enum ItemCategories { Category_Items, Category_KeyItems, Category_Berries, Category_Apricorns, Category_TechnicalMachines, Category_Balls };

enum Abilities { NoAbility, Stench, Magician, Rock_Head, Moxie, Poison_Touch, Static, Colour_Change, Shield_Dust, Rough_Skin, Effect_Spore, Synchronise, Poison_Point, Flame_Body, Cute_Charm, Steadfast, Anger_Point, Pickpocket, Cursed_Body, Weak_Armour, Mummy, Justified, Rattled, Iron_Barbs, Gooey, Aftermath, Drizzle, Drought, Sand_Stream, Snow_Warning, Trace, Forecast, Intimidate, Download, Anticipation, Forewarn, Illusion, Imposter, Volt_Absorb, Water_Absorb, Sap_Sipper, Flash_Fire, Motor_Drive, Sand_Veil, Compound_Eyes, Swift_Swim, Chlorophyll, Hustle, Plus, Minus, Marvel_Scale, Tangled_Feet, Quick_Feet, Sand_Rush, Victory_Star, Rivalry, Snow_Cloak, Unburden, Solar_Power, Grass_Pelt, Defiant, Competitive, Huge_Power, Guts, Pure_Power, Sheer_Force, Toxic_Boost, Flare_Boost, Sand_Force, Strong_Jaw, Iron_Fist, Overgrow, Blaze, Torrent, Swarm, Reckless, Technician, Analytic, Adaptability, Mega_Launcher, Tough_Claws, Dark_Aura, Fairy_Aura, Clear_Body, Keen_Eye, Hyper_Cutter, White_Smoke, Big_Pecks, Flower_Veil, Leaf_Guard, Wonder_Guard, Levitate, Soundproof, Bulletproof, Lightning_Rod, Storm_Drain, Natural_Cure, Rain_Dish, Ice_Body, Poison_Heal, Cheek_Pouch, Hydration, Healer, Regenerator, Shed_Skin, Dry_Skin, Normalise, Protean, Refrigerate, Pixilate, Aerilate, Mould_Breaker, Turboblaze, Teravolt, Stall, Prankster, Gale_Wings, Speed_Boost, Battle_Armour, Sturdy, Damp, Limber, Oblivious, Cloud_Nine, Insomnia, Immunity, Own_Tempo, Suction_Cups, Shadow_Tag, Serene_Grace, Inner_Focus, Magma_Armour, Water_Veil, Magnet_Pull, Pressure, Thick_Fat, Early_Bird, Run_Away, Pickup, Truant, Sticky_Hold, Liquid_Ooze, Arena_Trap, Vital_Spirit, Shell_Armour, Air_Lock, Gluttony, Heatproof, Simple, Skill_Link, Sniper, Magic_Guard, No_Guard, Klutz, Super_Luck, Unaware, Tinted_Lens, Filter, Solid_Rock, Slow_Start, Scrappy, Frisk, Multitype, Flower_Gift, Bad_Dreams, Contrary, Unnerve, Defeatist, Friend_Guard, Heavy_Metal, Light_Metal, Multiscale, Harvest, Telepathy, Moody, Overcoat, Wonder_Skin, Infiltrator, Magic_Bounce, Zen_Mode, Aroma_Veil, Fur_Coat, Sweet_Veil, Stance_Change, Symbiosis, Aura_Break, Illuminate, Honey_Gather };

enum CryptionIndices { PersonalityID, OTID, Nickname, FormeIndex, Gender, Nature, ForcedShiny, OTName, Mark, Checksum, IsObedient, Species, HeldItem, Move1, Move2, Move3, Move4, Move1PP, Move2PP, Move3PP, Move4PP, PPBonuses, Coolness, Beauty, Cuteness, Experience, HP_EV, Attack_EV, Defence_EV, Speed_EV, Special_Attack_EV, Special_Defence_EV, Friendship, Smartness, PokerusStatus, MetLocation, CaptureLevel, IsObedient2, PokeBall, HP_IV, Attack_IV, Defence_IV, Speed_IV, Special_Attack_IV, Special_Defence_IV, IsEgg, Ability, Toughness, Feel, Type1, Type2, IsObedient3, IsObedient4, IsObedient5, IsObedient6, StatusAilment, Level, CurrentHP, MaximumHP, Attack, Defence, Speed, SpecialAttack, SpecialDefence, IsObedient7 };

enum EvolutionTypes { NoEvolution, MaxHappiness, MaxHappinessTimeDependent, LevelUp, LevelUpWithStatBalance, LevelUpWithPersonality, LevelUpGender, LevelUpTimeDependent, LevelUpWithHeldItem, LevelUpWithHeldItemTimeDependent, LevelUpWithKnownMove, LevelUpWithKnownMoveType, LevelUpWithSpeciesInParty, LevelUpWithTypeInParty, LevelUpInMapName, LevelUpInSpecificMap, LevelUpWithWeatherOnOverworld, MaxBeauty, CreatesPokemon, Trade, TradeWhileHoldingItem, TradeWithSpecificSpecies, ItemUsed, ItemWithConditionUsed };

enum SpriteSides { Sprite_Side_Front, Sprite_Side_Back, Palette_Normal, Palette_Shiny };

enum FormeCheckTypes { NoFormes, GenderSplit, GenericFromByte };

enum PokemonSpecies { Missingno, Bulbasaur, Ivysaur, Venusaur, Charmander, Charmeleon, Charizard, Squirtle, Wartortle, Blastoise, Caterpie, Metapod, Butterfree, Weedle, Kakuna, Beedrill, Pidgey, Pidgeotto, Pidgeot, Rattata, Raticate, Spearow, Fearow, Ekans, Arbok, Pikachu, Raichu, Sandshrew, Sandslash, NidoranF, Nidorina, Nidoqueen, NidoranM, Nidorino, Nidoking, Clefairy, Clefable, Vulpix, Ninetales, Jigglypuff, Wigglytuff, Zubat, Golbat, Oddish, Gloom, Vileplume, Paras, Parasect, Venonat, Venomoth, Diglett, Dugtrio, Meowth, Persian, Psyduck, Golduck, Mankey, Primeape, Growlithe, Arcanine, Poliwag, Poliwhirl, Poliwrath, Abra, Kadabra, Alakazam, Machop, Machoke, Machamp, Bellsprout, Weepinbell, Victreebel, Tentacool, Tentacruel, Geodude, Graveler, Golem, Ponyta, Rapidash, Slowpoke, Slowbro, Magnemite, Magneton, Farfetchd, Doduo, Dodrio, Seel, Dewgong, Grimer, Muk, Shellder, Cloyster, Gastly, Haunter, Gengar, Onix, Drowzee, Hypno, Krabby, Kingler, Voltorb, Electrode, Exeggcute, Exeggutor, Cubone, Marowak, Hitmonlee, Hitmonchan, Lickitung, Koffing, Weezing, Rhyhorn, Rhydon, Chansey, Tangela, Kangaskhan, Horsea, Seadra, Goldeen, Seaking, Staryu, Starmie, Mr_Mime, Scyther, Jynx, Electabuzz, Magmar, Pinsir, Tauros, Magikarp, Gyarados, Lapras, Ditto, Eevee, Vaporeon, Jolteon, Flareon, Porygon, Omanyte, Omastar, Kabuto, Kabutops, Aerodactyl, Snorlax, Articuno, Zapdos, Moltres, Dratini, Dragonair, Dragonite, Mewtwo, Mew, Chikorita, Bayleef, Meganium, Cyndaquil, Quilava, Typhlosion, Totodile, Croconaw, Feraligatr, Sentret, Furret, Hoothoot, Noctowl, Ledyba, Ledian, Spinarak, Ariados, Crobat, Chinchou, Lanturn, Pichu, Cleffa, Igglybuff, Togepi, Togetic, Natu, Xatu, Mareep, Flaaffy, Ampharos, Bellossom, Marill, Azumarill, Sudowoodo, Politoed, Hoppip, Skiploom, Jumpluff, Aipom, Sunkern, Sunflora, Yanma, Wooper, Quagsire, Espeon, Umbreon, Murkrow, Slowking, Misdreavus, Unown, Wobbuffet, Girafarig, Pineco, Forretress, Dunsparce, Gligar, Steelix, Snubbull, Granbull, Qwilfish, Scizor, Shuckle, Heracross, Sneasel, Teddiursa, Ursaring, Slugma, Magcargo, Swinub, Piloswine, Corsola, Remoraid, Octillery, Delibird, Mantine, Skarmory, Houndour, Houndoom, Kingdra, Phanpy, Donphan, Porygon2, Stantler, Smeargle, Tyrogue, Hitmontop, Smoochum, Elekid, Magby, Miltank, Blissey, Raikou, Entei, Suicune, Larvitar, Pupitar, Tyranitar, Lugia, Ho_Oh, Celebi, Treecko, Grovyle, Sceptile, Torchic, Combusken, Blaziken, Mudkip, Marshtomp, Swampert, Poochyena, Mightyena, Zigzagoon, Linoone, Wurmple, Silcoon, Beautifly, Cascoon, Dustox, Lotad, Lombre, Ludicolo, Seedot, Nuzleaf, Shiftry, Taillow, Swellow, Wingull, Pelipper, Ralts, Kirlia, Gardevoir, Surskit, Masquerain, Shroomish, Breloom, Slakoth, Vigoroth, Slaking, Nincada, Ninjask, Shedinja, Whismur, Loudred, Exploud, Makuhita, Hariyama, Azurill, Nosepass, Skitty, Delcatty, Sableye, Mawile, Aron, Lairon, Aggron, Meditite, Medicham, Electrike, Manectric, Plusle, Minun, Volbeat, Illumise, Roselia, Gulpin, Swalot, Carvanha, Sharpedo, Wailmer, Wailord, Numel, Camerupt, Torkoal, Spoink, Grumpig, Spinda, Trapinch, Vibrava, Flygon, Cacnea, Cacturne, Swablu, Altaria, Zangoose, Seviper, Lunatone, Solrock, Barboach, Whiscash, Corphish, Crawdaunt, Baltoy, Claydol, Lileep, Cradily, Anorith, Armaldo, Feebas, Milotic, Castform, Kecleon, Shuppet, Banette, Duskull, Dusclops, Tropius, Chimecho, Absol, Wynaut, Snorunt, Glalie, Spheal, Sealeo, Walrein, Clamperl, Huntail, Gorebyss, Relicanth, Luvdisc, Bagon, Shelgon, Salamence, Beldum, Metang, Metagross, Regirock, Regice, Registeel, Latias, Latios, Kyogre, Groudon, Rayquaza, Jirachi, Deoxys, Turtwig, Grotle, Torterra, Chimchar, Monferno, Infernape, Piplup, Prinplup, Empoleon, Starly, Staravia, Staraptor, Bidoof, Bibarel, Kricketot, Kricketune, Shinx, Luxio, Luxray, Budew, Roserade, Cranidos, Rampardos, Shieldon, Bastiodon, Burmy, Wormadam, Mothim, Combee, Vespiquen, Pachirisu, Buizel, Floatzel, Cherubi, Cherrim, Shellos, Gastrodon, Ambipom, Drifloon, Drifblim, Buneary, Lopunny, Mismagius, Honchkrow, Glameow, Purugly, Chingling, Stunky, Skuntank, Bronzor, Bronzong, Bonsly, Mime_Jr, Happiny, Chatot, Spiritomb, Gible, Gabite, Garchomp, Munchlax, Riolu, Lucario, Hippopotas, Hippowdon, Skorupi, Drapion, Croagunk, Toxicroak, Carnivine, Finneon, Lumineon, Mantyke, Snover, Abomasnow, Weavile, Magnezone, Lickilicky, Rhyperior, Tangrowth, Electivire, Magmortar, Togekiss, Yanmega, Leafeon, Glaceon, Gliscor, Mamoswine, Porygon_Z, Gallade, Probopass, Dusknoir, Froslass, Rotom, Uxie, Mesprit, Azelf, Dialga, Palkia, Heatran, Regigigas, Giratina, Cresselia, Phione, Manaphy, Darkrai, Shaymin, Arceus, Victini, Snivy, Servine, Serperior, Tepig, Pignite, Emboar, Oshawott, Dewott, Samurott, Patrat, Watchog, Lillipup, Herdier, Stoutland, Purrloin, Liepard, Pansage, Simisage, Pansear, Simisear, Panpour, Simipour, Munna, Musharna, Pidove, Tranquil, Unfezant, Blitzle, Zebstrika, Roggenrola, Boldore, Gigalith, Woobat, Swoobat, Drilbur, Excadrill, Audino, Timburr, Gurdurr, Conkeldurr, Tympole, Palpitoad, Seismitoad, Throh, Sawk, Sewaddle, Swadloon, Leavanny, Venipede, Whirlipede, Scolipede, Cottonee, Whimsicott, Petilil, Lilligant, Basculin, Sandile, Krokorok, Krookodile, Darumaka, Darmanitan, Maractus, Dwebble, Crustle, Scraggy, Scrafty, Sigilyph, Yamask, Cofagrigus, Tirtouga, Carracosta, Archen, Archeops, Trubbish, Garbodor, Zorua, Zoroark, Minccino, Cinccino, Gothita, Gothorita, Gothitelle, Solosis, Duosion, Reuniclus, Ducklett, Swanna, Vanillite, Vanillish, Vanilluxe, Deerling, Sawsbuck, Emolga, Karrablast, Escavalier, Foongus, Amoonguss, Frillish, Jellicent, Alomomola, Joltik, Galvantula, Ferroseed, Ferrothorn, Klink, Klang, Klinklang, Tynamo, Eelektrik, Eelektross, Elgyem, Beheeyem, Litwick, Lampent, Chandelure, Axew, Fraxure, Haxorus, Cubchoo, Beartic, Cryogonal, Shelmet, Accelgor, Stunfisk, Mienfoo, Mienshao, Druddigon, Golett, Golurk, Pawniard, Bisharp, Bouffalant, Rufflet, Braviary, Vullaby, Mandibuzz, Heatmor, Durant, Deino, Zweilous, Hydreigon, Larvesta, Volcarona, Cobalion, Terrakion, Virizion, Tornadus, Thundurus, Reshiram, Zekrom, Landorus, Kyurem, Keldeo, Meloetta, Genesect, Chespin, Quilladin, Chesnaught, Fennekin, Braixen, Delphox, Froakie, Frogadier, Greninja, Bunnelby, Diggersby, Fletchling, Fletchinder, Talonflame, Scatterbug, Spewpa, Vivillion, Litleo, Pyroar, Flabebe, Floette, Florges, Skiddo, Gogoat, Pancham, Pangoro, Furfrou, Espurr, Meowstic, Honedge, Doublade, Aegislash, Spritze, Aromatisse, Swirlix, Slurpuff, Inkay, Malamar, Binnacle, Barbacle, Skrelp, Dragalge, Clauncher, Clawitzer, Helioptile, Heliolisk, Tyrunt, Tyrantrum, Amaura, Aurorus, Sylveon, Hawlucha, Dedenne, Carbink, Goomy, Sliggoo, Goodra, Klefki, Phantump, Trevenant, Pumpkaboo, Gourgeist, Bergmite, Avalugg, Noibat, Noivern, Xerneas, Yvetal, Zygarde, Diancie, Hoopa, Volcanion };

enum Items { ITEM_NOITEM, ITEM_THUNDERSTONE, ITEM_SUNSTONE, ITEM_FIRESTONE, ITEM_LEAFSTONE, ITEM_WATERSTONE, ITEM_MOONSTONE, ITEM_DUSKSTONE, ITEM_SHINYSTONE, ITEM_DAWNSTONE, ITEM_EVERSTONE, ITEM_LAXINCENSE, ITEM_SEAINCENSE, ITEM_ODDINCENSE, ITEM_FULLINCENSE, ITEM_ROSEINCENSE, ITEM_PUREINCENSE, ITEM_ROCKINCENSE, ITEM_LUCKINCENSE, ITEM_WAVEINCENSE, ITEM_RAZORCLAW, ITEM_RAZORFANG, ITEM_KINGSROCK, ITEM_METALCOAT, ITEM_UPGRADE, ITEM_DUBIOUSDISC, ITEM_ELECTIRISER, ITEM_MAGMARISER, ITEM_PROTECTOR, ITEM_DRAGONSCALE, ITEM_PRISMSCALE, Item_Stick, Item_Razor_Claw, Item_Scope_Lens, Item_Lucky_Punch, Item_Fighting_Plate, Item_Flying_Plate, Item_Poison_Plate, Item_Ground_Plate, Item_Rock_Plate, Item_Bug_Plate, Item_Ghost_Plate, Item_Steel_Plate, Item_Fire_Plate, Item_Water_Plate, Item_Grass_Plate, Item_Electric_Plate, Item_Psychic_Plate, Item_Ice_Plate, Item_Dragon_Plate, Item_Dark_Plate, Item_Fairy_Plate };

enum EggGroups { EGG_GROUP_MONSTER,	EGG_GROUP_WATER1, EGG_GROUP_BUG, EGG_GROUP_FLYING, EGG_GROUP_FIELD, EGG_GROUP_FAIRY, EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE, EGG_GROUP_WATER3, EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS, EGG_GROUP_WATER2, EGG_GROUP_DITTO, EGG_GROUP_DRAGON, EGG_GROUP_UNDISCOVERED };

enum WildDatOrders { GrassData, WaterData, TreeData, RockSmashData, FishingRodData, NumWildDatas };

enum GBPStatusFlags { ModulationActivation, ModulationStatus, PortamentoActivation, PitchBendActivation, ArpeggiationActivation, ArpeggiationStatus };

enum CaptureStates { ZeroShakesFailure, SingleShakeFailure, DoubleShakeFailure, TripleShakeFailure, TripleShakeSuccess, CriticalCaptureFailure, CriticalCaptureSuccess };

enum PokedexModes {	Regional, National };

enum BattleStats { BattleAttack, BattleDefence, BattleSpeed, BattleSpecialAttack, BattleSpecialDefence, Accuracy, Evasion, NumBattleStats };

enum BattleBanks { Target, User, TargetAlly, UserAlly, PokeballTarget, MoveTypeOverrideValue, NumBattleBanks };

enum MoveCategories { Category_Physical, Category_Special, Category_Status };

enum MoveEffectivenesses { NoEffect, EighthDamage, QuarterDamage, HalfDamage, NormalDamage, DoubleDamage, QuadrupleDamage, OctupleDamage, InvertedToHeal };

enum MoveSelections { SelectedMove0, SelectedMove1, SelectedMove2, SelectedMove3, UseItem, Flee };

enum ScriptEndingIndices { NotEnded, Ended, WaitForFrames };

enum MoveEffects { Effects_NoSpecial, Effects_Judgement, Effects_Weather_Ball, Effects_Hits_Through_Protect, Effects_Perish_Song, Effects_Special_Physical, Effects_Sacred_Sword };

enum BattleScriptJumpIfContexts { JumpIfByte, JumpIfHalfWord, JumpIfWord, JumpIfWeather, JumpIfSpecies, JumpIfHeldItem, JumpIfAbility, JumpIfStatLevel, JumpIfStatus, JumpIfSecondaryStatus, JumpIfSpecialStatus, JumpIfPrimaryType, JumpIfSecondaryType, JumpIfTertiaryType, JumpIfAbilityPresent, JumpIfCannotSwitch, JumpIfTurnCounter, JumpIfCannotSleep, JumpIfDamageType, JumpIfArray };

enum BattleScriptComparisonModes { Equals, NotEqual, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, IfAnyBitsSet, IfNoBitsSet };

enum MoveEffectIDs { PrimaryEffect, SecondaryEffect, MaxNumEffects };

enum SecondaryMoveEffects { NoSecondaryEffect, ChangeStat, Sleep, Burn, Paralyse, Poison, BadlyPoison, Freeze };

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

typedef struct U32BitField {
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
	u16 bit16:1;
	u16 bit17:1;
	u16 bit18:1;
	u16 bit19:1;
	u16 bit20:1;
	u16 bit21:1;
	u16 bit22:1;
	u16 bit23:1;
	u16 bit24:1;
	u16 bit25:1;
	u16 bit26:1;
	u16 bit27:1;
	u16 bit28:1;
	u16 bit29:1;
	u16 bit30:1;
	u16 bit31:1;
} U32BitField;

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
	u16 percentage;
	u16 minLevel;
	u16 maxLevel;
	u16 species;
} WildPokemonEntry;

typedef struct WildPokemonData
{
	u8 encounterRate[Time_NumTimes];
	WildPokemonEntry* wildData[Time_NumTimes];
} WildPokemonData;

typedef struct WildData
{
	WildPokemonData* data[NumWildDatas];
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
	u32 statusFlags;
	u8 frameDelay;
	u8 loopCounter;
	u8 loopCounter2;
	s8 keyShift;
	u8 currentOctave;
	u8 currentVoice;
	u8 fadeSpeed;
	u8 noteLength1;
	u8 noteLength2;
	u8 channelVolume;
	u8 fadeDirection;
	u8 velocity;
	u8 pan;
	u8 arpeggiationVoice:2;
	u8 arpeggiationDelayCount:6;
	u8 arpeggiationCountdown;
	u8 modulationCountdown;
	u8 modulationDelay:6;
	u8 modulationMode:2;
	u8 modulationDepth;
	u8 modulationSpeedDelay:4;
	u8 modulationSpeed:4;
	s8 pitchBendRate;
	u8 portamentoCountdown;
	u8 portamentoDelay;
	u8 portamentoTarget;
	u8 portamentoSpeedDelay:4;
	u8 portamentoSpeed:4;
} GBPToneData;

typedef struct GBPWaveData {
	u8* nextInstruction;
	u8* returnLocation;
	u16 pitch;
	u16 tone;
	u32 statusFlags;
	u8 frameDelay;
	u8 noteLength1;
	u8 noteLength2;
	u8 loopCounter;
	u8 loopCounter2;
	s8 keyShift;
	u8 currentOctave;
	u8 velocity;
	u8 currentVoice;
	u8 pan;
	u8 modulationCountdown;
	u8 modulationDelay:6;
	u8 modulationMode:2;
	u8 modulationDepth;
	u8 modulationSpeedDelay:4;
	u8 modulationSpeed:4;
	s8 pitchBendRate;
	u8 portamentoCountdown;
	u8 portamentoDelay;
	u8 portamentoTarget;
	u8 portamentoSpeedDelay:4;
	u8 portamentoSpeed:4;
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
	u32 formeValue:9;
	u32 forceShiny:1;
	u32 hasHiddenAbility:1;
	u8 ppBonuses;
	union
	{
		u8 friendship;
		u8 eggCycleCounter;
	};
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

typedef struct PrimaryStatusStruct {
	u32 sleepTurns:8;
	u32 frozen:1;
	u32 paralysed:1;
	u32 burned:1;
	u32 poisoned:1;
	u32 badlyPoisoned:1;
	u32 badlyPoisonedCounter:21;
} PrimaryStatusStruct;

typedef struct Pokemon {
	AbridgedPokemon mainData;
	union
	{
		u32 statusAilment;
		PrimaryStatusStruct statusAilmentBits;
	};
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

typedef struct PercentageItemPair {
	u16 percentage;
	u16 itemID;
} PercentageItemPair;

typedef struct EVYieldStruct {
	u16 hpEVYield:2;
	u16 attackEVYield:2;
	u16 defenceEVYield:2;
	u16 speedEVYield:2;
	u16 specialAttackEVYield:2;
	u16 specialDefenceEVYield:2;
	u16 unused:4;
} EVYieldStruct;

typedef struct InternalBaseData {
	u8 baseHP;
	u8 baseAttack;
	u8 baseDefence;
	u8 baseSpeed;
	u8 baseSpecialAttack;
	u8 baseSpecialDefence;
	u8 type1;
	u8 type2;
	PercentageItemPair* items;
	u8 ability1;
	u8 ability2;
	u8 hiddenAbility;
	u8 frontspriteYPos;
	u8 backspriteYPos;
	u8 shadowPos;
	union
	{
		u16 EVYield;
		EVYieldStruct EVYields;
	};
	u16 baseExpYield;
	u8 baseFriendship;
	u8 catchRate;
} InternalBaseData;

typedef struct BaseData {
	IndexTable baseDataInfo;
	u8 genderSplitByte;
	u8 hatchSteps;
	u8 levelUpType;
	u8 eggGroup1;
	u8 eggGroup2;
	u8 safariZoneFleeRate;
	u8 colour;
	u8 formeType;
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

typedef struct TextFunctionPair {
	char* string;
	void (*function)(void);
} TextFunctionPair;

typedef struct IncenseItemEgg {
	u16 foundSpecies;
	u16 alternativeSpecies;
	u16 itemID;
} IncenseItemEgg;

typedef struct SecondaryStatusStruct {
	u32 data;
} SecondaryStatusStruct;

typedef struct BattleStatusStruct {
	u32 usedCritEnhancingMove:1;
	u32 focusEnergyInEffect:1;
	u32 direHitInEffect:1;
	u32 protected:1;
	u32 highPriorityProtected:1;
	u32 wideGuardProtected:1;
	u32 craftyShieldProtected:1;
	u32 tertiaryTypeActive:1;
	u32 trappedInBattle:1;
	u32 cannotSleep:1;
	u32 safeguarded:1;
	u32 substituted:1;
	u32 data:22;
} BattleStatusStruct;

typedef struct PokemonBattleData {
	u16 species;
	u8 type1;
	u8 type2;
	u32 personalityID;
	u8 ability;
	u8 statLevels[NumBattleStats];
	u16 stats[5];
	u16 effectiveStats[5];
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
	u8 level;
	u8 gender;
	u16 currentHP;
	u16 maximumHP;
	u8 pp[4];
	u16 moves[4];
	u8 forme;
	u8 type3;
	u16 heldItem;
	union
	{
		u32 battleFlags;
		BattleStatusStruct battleStatusFlags;
	};
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
	u32 damageTypeDealt:2;
	u32 unused:18;
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

typedef struct BattleData {
	PokemonBattleData* pokemonStats;
	u8 battleBanks[NumBattleBanks];
	u8 moveSelections[4];
	u8 conversionIndices[4];
	u8 battlePartyPositions[6];
	u8 numBattlers;
	u8 positionInCallStack;
	u8 moveEffects[MaxNumEffects];
	u8 moveEffectsExtraInfo[MaxNumEffects];
	u16 battleTurnsCounter;
	union
	{
		u16 weather;
		BattleWeatherBits weatherBits;
	};
	u32 battleDamageMultiplier;
	u32 battleDamage;
	union
	{
		u32 battleFlags;
		BattleFlagsStruct flags;
	};
	u16 moveIndex;
	u16 itemIndex;
	u8* callStack[0x10];
} BattleData;

typedef u32 (*U32FunctionPointerVoid)(void);

typedef u32 (*U32FunctionPointerU32)(u32);

#endif // TOOLBOX_H

