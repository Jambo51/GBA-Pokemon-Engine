//
// customtypes.h: 
// 


#ifndef CUSTOMTYPES_H
#define CUSTOMTYPES_H

#define SPRALLOCLENGTH 35
#define PALLOCLENGTH 14

#define EWRAM_LOCATION __attribute__((section (".sbss")))
#define IWRAM_LOCATION __attribute__((section (".bss")))
#define RODATA_LOCATION __attribute__((section (".rodata")))
#define TEXT_LOCATION __attribute__((section (".text")))

#define TilePaletteRAM(n) (0x05000000 + (n << 5))
#define ObjectPaletteRAM(n) (0x05000200 + (n << 5))
#define ObjectTileBase(n) (0x06010000 + (n << 5))

#define NumberOfPokemon 722
#define NumberOfTrainers 5
#define NumberOfFlags 0x2000
#define NumberOfMoves 617
#define NumberOfOverworlds 24
#define NumberOfItems 500
#define NumberOfNatures 25
#define NumberOfAbilities 188
#define PlayerNameLength 7
#define MaxPlayerCash 9999999
#define MaxHappinessAllowed 0xD0
#define U32Max 0xFFFFFFFF
#define U16Max 0xFFFF
#define U8Max 0xFF
#define S32Max 0x7FFFFFFF
#define S16Max 0x7FFF
#define S8Max 0x7F
// Uses 2's complement
#define S32Min 0x80000000
#define S16Min 0x8000
#define S8Min 0x80
#define ARROWCHAR ('~' + 1)
#define BATTLEBGCOLOUR U32Max
#define WHITETEXTBG 0x11111111
#define MAXDEXENTRYLENGTH 50
#define BASESPRITETILELOCATION 0x06010000
#define NUMBUFFERS 16
#define BUFFERLENGTH 40
#define PLAYERNAMEBUFFER NUMBUFFERS + 1
#define RIVAL1NAMEBUFFER NUMBUFFERS + 2
#define RIVAL2NAMEBUFFER NUMBUFFERS + 3
#define RIVAL3NAMEBUFFER NUMBUFFERS + 4
#define PLAYERNAMELENGTH 7
#define NUMBOXES 25
#define POKEMONPERBOX 30

#define BG0HOFS (u16*)0x04000010
#define BG0VOFS (u16*)0x04000012
#define BG1HOFS (u16*)0x04000014
#define BG1VOFS (u16*)0x04000016
#define BG2HOFS (u16*)0x04000018
#define BG2VOFS (u16*)0x0400001A
#define BG3HOFS (u16*)0x0400001C
#define BG3VOFS (u16*)0x0400001E

#include <tonc.h>

// --- primary typedefs ---
enum Times { Time_Day, Time_Morning, Time_Afternoon, Time_Night, Time_NumTimes };

enum Flag { Flag_Null = 0, Flag_RunningShoes, Flag_RunningShoesOn, Flag_UsingGBP, Flag_Locked, Flag_KeyRaised, Flag_FadeOut, Flag_Pokegear = 0x800, Flag_Pokedex, Flag_PokemonMenu, Flag_NationalDex, Flag_MumBank, Flag_Badge1, Flag_Badge2, Flag_Badge3, Flag_Badge4, Flag_Badge5, Flag_Badge6, Flag_Badge7, Flag_Badge8 };

enum Types { Type_Normal, Type_Fighting, Type_Flying, Type_Poison, Type_Ground, Type_Rock, Type_Bug, Type_Ghost, Type_Steel, Type_Fire, Type_Water, Type_Grass, Type_Electric, Type_Psychic, Type_Ice, Type_Dragon, Type_Dark, Type_Fairy, Type_None };

enum Songs { Song_None, Song_CrystalTitleScreen, Song_GSCRoute1, Song_GSCRoute3, Song_GSCRoute11, Song_MagnetTrainFanfare, Song_KantoGymBattle, Song_KantoTrainerBattle, Song_KantoWildBattle, Song_GSCPokecentre, Song_HikerEncounter, Song_ClassicLassEncounter, Song_PolicemanEncounter, Song_HealingFanfare, Song_GSCLavenderTown, Song_Route2, Song_GSCMountMoon, Song_GSCFollowMe, Song_GSCGameCorner, Song_GSCRidingTheBike, Song_GSCHallOfFame, Song_GSCViridianCity, Song_GSCCeladonCity, Song_GSCTrainerVictoryFanfare, Song_GSCWildVictoryFanfare, Song_GSCGymVictoryFanfare, Song_DanceOfTheClefairy, Song_GSCGym, Song_GSCPalletTown, Song_GSCOaksLab, Song_GSCOaksTheme, Song_SilverEncounter, Song_SilverOutro, Song_GSCSurfing, Song_GSCEvolution, Song_NationalPark, Song_GSCCredits, Song_AzaleaTown, Song_CherrygroveCity, Song_KimonoGirlEncounter, Song_UnionCave, Song_JohtoWildBattle, Song_JohtoTrainerBattle, Song_Route30, Song_EcruteakCity, Song_VioletCity, Song_JohtoGymBattle, Song_GSCChampionBattle, Song_SilverBattle, Song_TeamRocketBattle, Song_ElmsLab, Song_DarkCave, Song_Route29, Song_Route34, Song_SSAqua, Song_YoungsterEncounter, Song_GSCLassEncounter, Song_TeamRocketEncounter, Song_PokecollectorEncounter, Song_SageEncounter, Song_NewBarkTown, Song_GoldenrodCity, Song_GSCVermilionCity, Song_RadioFanfare1, Song_PokefluteRadio, Song_TinTower, Song_SproutTower, Song_BurnedTower, Song_OlivineLighthouse, Song_Route42, Song_GSCIndigoPlateau, Song_Route38, Song_RocketHideout, Song_DragonsDen, Song_JohtoLegendaryBattle, Song_UnownRadioSignal, Song_GSCWildBattleVitoryNoIntro, Song_Route26, Song_EncounterWithMum, Song_VictoryRoad, Song_PokemonLullaby, Song_PokemonMarch, Song_GSIntro1, Song_GSIntro2, Song_ContinueMenuTheme, Song_InsideTheRuins, Song_RocketRadioTowerTakeover, Song_EcruteakDanceTheatre, Song_PreparingForBugCatchingContest, Song_BugCatchingContest, Song_RocketRadioSignal, Song_Unknown, Song_TheEnd, Song_ClairsTheme, Song_Unknown2, Song_Unknown3, Song_BuenasRadioShow, Song_EusinesTheme, Song_CrystalIntro, Song_BattleTower, Song_LegendaryBeastBattle, Song_BattleTowerInterior, Song_PokecomCentre, Song_RBYPalletTown, Song_RBYPokecentre, Song_RBYGym, Song_RBYViridianCity, Song_CeruleanCity, Song_RBYCeladonCity, Song_CinnabarIsland, Song_RBYVermilionCity, Song_RBYLavenderTown, Song_SSAnne, Song_RBYOaksTheme, Song_BluesTheme, Song_RBYFollowMe, Song_RBYEvolution, Song_RBYHealingFanfare, Song_RBYRoute1, Song_Route24, Song_RBYRoute3, Song_RBYRoute11, Song_RBYIndigoPlateau, Song_RBYTitleScreen, Song_RBYCredits, Song_RBYHallOfFame, Song_RBYOaksLab, Song_JigglypuffsLullaby, Song_RBYRidingTheBike, Song_RBYSurfing, Song_RBYGameCorner, Song_RBYIntro, Song_UnknownDungeon, Song_ViridianForest, Song_RBYMountMoon, Song_CinnabarMansion, Song_PokemonTower, Song_SilphCo, Song_RBYEvilEncounter, Song_RBYFemaleEncounter, Song_RBYMaleEncounter, Song_RBYGymBattle, Song_RBYTrainerBattle, Song_RBYWildBattle, Song_RBYChampionBattle, Song_RBYTrainerVictoryFanfare, Song_RBYWildVictoryFanfare, Song_RBYGymVictoryFanfare };

enum Genders { Gender_Male, Gender_Female, Gender_Genderless = 0xFF };

enum Abilities { NoAbility, Stench, Magician, Rock_Head, Moxie, Poison_Touch, Static, Colour_Change, Shield_Dust, Rough_Skin, Effect_Spore, Synchronise, Poison_Point, Flame_Body, Cute_Charm, Steadfast, Anger_Point, Pickpocket, Cursed_Body, Weak_Armour, Mummy, Justified, Rattled, Iron_Barbs, Gooey, Aftermath, Drizzle, Drought, Sand_Stream, Snow_Warning, Trace, Forecast, Intimidate, Download, Anticipation, Forewarn, Illusion, Imposter, Volt_Absorb, Water_Absorb, Sap_Sipper, Flash_Fire, Motor_Drive, Sand_Veil, Compound_Eyes, Swift_Swim, Chlorophyll, Hustle, Plus, Minus, Marvel_Scale, Tangled_Feet, Quick_Feet, Sand_Rush, Victory_Star, Rivalry, Snow_Cloak, Unburden, Solar_Power, Grass_Pelt, Defiant, Competitive, Huge_Power, Guts, Pure_Power, Sheer_Force, Toxic_Boost, Flare_Boost, Sand_Force, Strong_Jaw, Iron_Fist, Overgrow, Blaze, Torrent, Swarm, Reckless, Technician, Analytic, Adaptability, Mega_Launcher, Tough_Claws, Dark_Aura, Fairy_Aura, Clear_Body, Keen_Eye, Hyper_Cutter, White_Smoke, Big_Pecks, Flower_Veil, Leaf_Guard, Wonder_Guard, Levitate, Soundproof, Bulletproof, Lightning_Rod, Storm_Drain, Natural_Cure, Rain_Dish, Ice_Body, Poison_Heal, Cheek_Pouch, Hydration, Healer, Regenerator, Shed_Skin, Dry_Skin, Normalise, Protean, Refrigerate, Pixilate, Aerilate, Mould_Breaker, Turboblaze, Teravolt, Stall, Prankster, Gale_Wings, Speed_Boost, Battle_Armour, Sturdy, Damp, Limber, Oblivious, Cloud_Nine, Insomnia, Immunity, Own_Tempo, Suction_Cups, Shadow_Tag, Serene_Grace, Inner_Focus, Magma_Armour, Water_Veil, Magnet_Pull, Pressure, Thick_Fat, Early_Bird, Run_Away, Pickup, Truant, Sticky_Hold, Liquid_Ooze, Arena_Trap, Vital_Spirit, Shell_Armour, Air_Lock, Gluttony, Heatproof, Simple, Skill_Link, Sniper, Magic_Guard, No_Guard, Klutz, Super_Luck, Unaware, Tinted_Lens, Filter, Solid_Rock, Slow_Start, Scrappy, Frisk, Multitype, Flower_Gift, Bad_Dreams, Contrary, Unnerve, Defeatist, Friend_Guard, Heavy_Metal, Light_Metal, Multiscale, Harvest, Telepathy, Moody, Overcoat, Wonder_Skin, Infiltrator, Magic_Bounce, Zen_Mode, Aroma_Veil, Fur_Coat, Sweet_Veil, Stance_Change, Symbiosis, Aura_Break, Illuminate, Honey_Gather };

enum CryptionIndices { PersonalityID, OTID, Nickname, FormeIndex, Gender, Nature, ForcedShiny, OTName, Mark, Checksum, IsObedient, Species, HeldItem, Move1, Move2, Move3, Move4, Move1PP, Move2PP, Move3PP, Move4PP, PPBonuses, Coolness, Beauty, Cuteness, Experience, HP_EV, Attack_EV, Defence_EV, Speed_EV, Special_Attack_EV, Special_Defence_EV, Friendship, Smartness, PokerusStatus, MetLocation, CaptureLevel, IsObedient2, PokeBall, HP_IV, Attack_IV, Defence_IV, Speed_IV, Special_Attack_IV, Special_Defence_IV, IsEgg, Ability, Toughness, Feel, Type1, Type2, PokerusStrain, PokerusDuration, IsObedient5, IsObedient6, StatusAilment, Level, CurrentHP, MaximumHP, Attack, Defence, Speed, SpecialAttack, SpecialDefence, IsObedient7 };

enum EvolutionTypes { NoEvolution, MaxHappiness, MaxHappinessTimeDependent, LevelUp, LevelUpWithStatBalance, LevelUpWithPersonality, LevelUpGender, LevelUpTimeDependent, LevelUpWithHeldItem, LevelUpWithHeldItemTimeDependent, LevelUpWithKnownMove, LevelUpWithKnownMoveType, LevelUpWithSpeciesInParty, LevelUpWithTypeInParty, LevelUpInMapName, LevelUpInSpecificMap, LevelUpWithWeatherOnOverworld, MaxBeauty, CreatesPokemon, Trade, TradeWhileHoldingItem, TradeWithSpecificSpecies, ItemUsed, ItemWithConditionUsed };

enum SpriteSides { Sprite_Side_Front, Sprite_Side_Back, Palette_Normal, Palette_Shiny };

enum FormeCheckTypes { NoFormes, GenderSplit, GenericFromByte };

enum PokemonSpecies { Missingno, Bulbasaur, Ivysaur, Venusaur, Charmander, Charmeleon, Charizard, Squirtle, Wartortle, Blastoise, Caterpie, Metapod, Butterfree, Weedle, Kakuna, Beedrill, Pidgey, Pidgeotto, Pidgeot, Rattata, Raticate, Spearow, Fearow, Ekans, Arbok, Pikachu, Raichu, Sandshrew, Sandslash, NidoranF, Nidorina, Nidoqueen, NidoranM, Nidorino, Nidoking, Clefairy, Clefable, Vulpix, Ninetales, Jigglypuff, Wigglytuff, Zubat, Golbat, Oddish, Gloom, Vileplume, Paras, Parasect, Venonat, Venomoth, Diglett, Dugtrio, Meowth, Persian, Psyduck, Golduck, Mankey, Primeape, Growlithe, Arcanine, Poliwag, Poliwhirl, Poliwrath, Abra, Kadabra, Alakazam, Machop, Machoke, Machamp, Bellsprout, Weepinbell, Victreebel, Tentacool, Tentacruel, Geodude, Graveler, Golem, Ponyta, Rapidash, Slowpoke, Slowbro, Magnemite, Magneton, Farfetchd, Doduo, Dodrio, Seel, Dewgong, Grimer, Muk, Shellder, Cloyster, Gastly, Haunter, Gengar, Onix, Drowzee, Hypno, Krabby, Kingler, Voltorb, Electrode, Exeggcute, Exeggutor, Cubone, Marowak, Hitmonlee, Hitmonchan, Lickitung, Koffing, Weezing, Rhyhorn, Rhydon, Chansey, Tangela, Kangaskhan, Horsea, Seadra, Goldeen, Seaking, Staryu, Starmie, Mr_Mime, Scyther, Jynx, Electabuzz, Magmar, Pinsir, Tauros, Magikarp, Gyarados, Lapras, Ditto, Eevee, Vaporeon, Jolteon, Flareon, Porygon, Omanyte, Omastar, Kabuto, Kabutops, Aerodactyl, Snorlax, Articuno, Zapdos, Moltres, Dratini, Dragonair, Dragonite, Mewtwo, Mew, Chikorita, Bayleef, Meganium, Cyndaquil, Quilava, Typhlosion, Totodile, Croconaw, Feraligatr, Sentret, Furret, Hoothoot, Noctowl, Ledyba, Ledian, Spinarak, Ariados, Crobat, Chinchou, Lanturn, Pichu, Cleffa, Igglybuff, Togepi, Togetic, Natu, Xatu, Mareep, Flaaffy, Ampharos, Bellossom, Marill, Azumarill, Sudowoodo, Politoed, Hoppip, Skiploom, Jumpluff, Aipom, Sunkern, Sunflora, Yanma, Wooper, Quagsire, Espeon, Umbreon, Murkrow, Slowking, Misdreavus, Unown, Wobbuffet, Girafarig, Pineco, Forretress, Dunsparce, Gligar, Steelix, Snubbull, Granbull, Qwilfish, Scizor, Shuckle, Heracross, Sneasel, Teddiursa, Ursaring, Slugma, Magcargo, Swinub, Piloswine, Corsola, Remoraid, Octillery, Delibird, Mantine, Skarmory, Houndour, Houndoom, Kingdra, Phanpy, Donphan, Porygon2, Stantler, Smeargle, Tyrogue, Hitmontop, Smoochum, Elekid, Magby, Miltank, Blissey, Raikou, Entei, Suicune, Larvitar, Pupitar, Tyranitar, Lugia, Ho_Oh, Celebi, Treecko, Grovyle, Sceptile, Torchic, Combusken, Blaziken, Mudkip, Marshtomp, Swampert, Poochyena, Mightyena, Zigzagoon, Linoone, Wurmple, Silcoon, Beautifly, Cascoon, Dustox, Lotad, Lombre, Ludicolo, Seedot, Nuzleaf, Shiftry, Taillow, Swellow, Wingull, Pelipper, Ralts, Kirlia, Gardevoir, Surskit, Masquerain, Shroomish, Breloom, Slakoth, Vigoroth, Slaking, Nincada, Ninjask, Shedinja, Whismur, Loudred, Exploud, Makuhita, Hariyama, Azurill, Nosepass, Skitty, Delcatty, Sableye, Mawile, Aron, Lairon, Aggron, Meditite, Medicham, Electrike, Manectric, Plusle, Minun, Volbeat, Illumise, Roselia, Gulpin, Swalot, Carvanha, Sharpedo, Wailmer, Wailord, Numel, Camerupt, Torkoal, Spoink, Grumpig, Spinda, Trapinch, Vibrava, Flygon, Cacnea, Cacturne, Swablu, Altaria, Zangoose, Seviper, Lunatone, Solrock, Barboach, Whiscash, Corphish, Crawdaunt, Baltoy, Claydol, Lileep, Cradily, Anorith, Armaldo, Feebas, Milotic, Castform, Kecleon, Shuppet, Banette, Duskull, Dusclops, Tropius, Chimecho, Absol, Wynaut, Snorunt, Glalie, Spheal, Sealeo, Walrein, Clamperl, Huntail, Gorebyss, Relicanth, Luvdisc, Bagon, Shelgon, Salamence, Beldum, Metang, Metagross, Regirock, Regice, Registeel, Latias, Latios, Kyogre, Groudon, Rayquaza, Jirachi, Deoxys, Turtwig, Grotle, Torterra, Chimchar, Monferno, Infernape, Piplup, Prinplup, Empoleon, Starly, Staravia, Staraptor, Bidoof, Bibarel, Kricketot, Kricketune, Shinx, Luxio, Luxray, Budew, Roserade, Cranidos, Rampardos, Shieldon, Bastiodon, Burmy, Wormadam, Mothim, Combee, Vespiquen, Pachirisu, Buizel, Floatzel, Cherubi, Cherrim, Shellos, Gastrodon, Ambipom, Drifloon, Drifblim, Buneary, Lopunny, Mismagius, Honchkrow, Glameow, Purugly, Chingling, Stunky, Skuntank, Bronzor, Bronzong, Bonsly, Mime_Jr, Happiny, Chatot, Spiritomb, Gible, Gabite, Garchomp, Munchlax, Riolu, Lucario, Hippopotas, Hippowdon, Skorupi, Drapion, Croagunk, Toxicroak, Carnivine, Finneon, Lumineon, Mantyke, Snover, Abomasnow, Weavile, Magnezone, Lickilicky, Rhyperior, Tangrowth, Electivire, Magmortar, Togekiss, Yanmega, Leafeon, Glaceon, Gliscor, Mamoswine, Porygon_Z, Gallade, Probopass, Dusknoir, Froslass, Rotom, Uxie, Mesprit, Azelf, Dialga, Palkia, Heatran, Regigigas, Giratina, Cresselia, Phione, Manaphy, Darkrai, Shaymin, Arceus, Victini, Snivy, Servine, Serperior, Tepig, Pignite, Emboar, Oshawott, Dewott, Samurott, Patrat, Watchog, Lillipup, Herdier, Stoutland, Purrloin, Liepard, Pansage, Simisage, Pansear, Simisear, Panpour, Simipour, Munna, Musharna, Pidove, Tranquil, Unfezant, Blitzle, Zebstrika, Roggenrola, Boldore, Gigalith, Woobat, Swoobat, Drilbur, Excadrill, Audino, Timburr, Gurdurr, Conkeldurr, Tympole, Palpitoad, Seismitoad, Throh, Sawk, Sewaddle, Swadloon, Leavanny, Venipede, Whirlipede, Scolipede, Cottonee, Whimsicott, Petilil, Lilligant, Basculin, Sandile, Krokorok, Krookodile, Darumaka, Darmanitan, Maractus, Dwebble, Crustle, Scraggy, Scrafty, Sigilyph, Yamask, Cofagrigus, Tirtouga, Carracosta, Archen, Archeops, Trubbish, Garbodor, Zorua, Zoroark, Minccino, Cinccino, Gothita, Gothorita, Gothitelle, Solosis, Duosion, Reuniclus, Ducklett, Swanna, Vanillite, Vanillish, Vanilluxe, Deerling, Sawsbuck, Emolga, Karrablast, Escavalier, Foongus, Amoonguss, Frillish, Jellicent, Alomomola, Joltik, Galvantula, Ferroseed, Ferrothorn, Klink, Klang, Klinklang, Tynamo, Eelektrik, Eelektross, Elgyem, Beheeyem, Litwick, Lampent, Chandelure, Axew, Fraxure, Haxorus, Cubchoo, Beartic, Cryogonal, Shelmet, Accelgor, Stunfisk, Mienfoo, Mienshao, Druddigon, Golett, Golurk, Pawniard, Bisharp, Bouffalant, Rufflet, Braviary, Vullaby, Mandibuzz, Heatmor, Durant, Deino, Zweilous, Hydreigon, Larvesta, Volcarona, Cobalion, Terrakion, Virizion, Tornadus, Thundurus, Reshiram, Zekrom, Landorus, Kyurem, Keldeo, Meloetta, Genesect, Chespin, Quilladin, Chesnaught, Fennekin, Braixen, Delphox, Froakie, Frogadier, Greninja, Bunnelby, Diggersby, Fletchling, Fletchinder, Talonflame, Scatterbug, Spewpa, Vivillion, Litleo, Pyroar, Flabebe, Floette, Florges, Skiddo, Gogoat, Pancham, Pangoro, Furfrou, Espurr, Meowstic, Honedge, Doublade, Aegislash, Spritze, Aromatisse, Swirlix, Slurpuff, Inkay, Malamar, Binnacle, Barbacle, Skrelp, Dragalge, Clauncher, Clawitzer, Helioptile, Heliolisk, Tyrunt, Tyrantrum, Amaura, Aurorus, Sylveon, Hawlucha, Dedenne, Carbink, Goomy, Sliggoo, Goodra, Klefki, Phantump, Trevenant, Pumpkaboo, Gourgeist, Bergmite, Avalugg, Noibat, Noivern, Xerneas, Yvetal, Zygarde, Diancie, Hoopa, Volcanion };

enum ItemIDs { ITEM_NOITEM, ITEM_THUNDERSTONE, ITEM_SUNSTONE, ITEM_FIRESTONE, ITEM_LEAFSTONE, ITEM_WATERSTONE, ITEM_MOONSTONE, ITEM_DUSKSTONE, ITEM_SHINYSTONE, ITEM_DAWNSTONE, ITEM_EVERSTONE, ITEM_LAXINCENSE, ITEM_SEAINCENSE, ITEM_ODDINCENSE, ITEM_FULLINCENSE, ITEM_ROSEINCENSE, ITEM_PUREINCENSE, ITEM_ROCKINCENSE, ITEM_LUCKINCENSE, ITEM_WAVEINCENSE, ITEM_RAZORCLAW, ITEM_RAZORFANG, ITEM_KINGSROCK, ITEM_METALCOAT, ITEM_UPGRADE, ITEM_DUBIOUSDISC, ITEM_ELECTIRISER, ITEM_MAGMARISER, ITEM_PROTECTOR, ITEM_DRAGONSCALE, ITEM_PRISMSCALE, Item_Stick, Item_Razor_Claw, Item_Scope_Lens, Item_Lucky_Punch, Item_Fighting_Plate, Item_Flying_Plate, Item_Poison_Plate, Item_Ground_Plate, Item_Rock_Plate, Item_Bug_Plate, Item_Ghost_Plate, Item_Steel_Plate, Item_Fire_Plate, Item_Water_Plate, Item_Grass_Plate, Item_Electric_Plate, Item_Psychic_Plate, Item_Ice_Plate, Item_Dragon_Plate, Item_Dark_Plate, Item_Fairy_Plate, Item_Berry_Cheri_Berry, Item_Berry_Chesto_Berry, Item_Berry_Pecha_Berry, Item_Berry_Rawst_Berry, Item_Berry_Aspear_Berry, Item_Berry_Leppa_Berry, Item_Berry_Oran_Berry, Item_Berry_Persim_Berry, Item_Berry_Lum_Berry, Item_Berry_Sitrus_Berry, Item_Berry_Figy_Berry, Item_Berry_Wiki_Berry, Item_Berry_Mago_Berry, Item_Berry_Aguav_Berry, Item_Berry_Iapapa_Berry, Item_Berry_Razz_Berry, Item_Berry_Bluk_Berry, Item_Berry_Nanab_Berry, Item_Berry_Wepear_Berry, Item_Berry_Pinap_Berry, Item_Berry_Pomeg_Berry, Item_Berry_Kelpsy_Berry, Item_Berry_Qualot_Berry, Item_Berry_Hondew_Berry, Item_Berry_Grepa_Berry, Item_Berry_Tamato_Berry, Item_Berry_Cornn_Berry, Item_Berry_Magost_Berry, Item_Berry_Rabuta_Berry, Item_Berry_Nomel_Berry, Item_Berry_Spelon_Berry, Item_Berry_Pamtre_Berry, Item_Berry_Watmel_Berry, Item_Berry_Durin_Berry, Item_Berry_Belue_Berry, Item_Berry_Apicot_Berry, Item_Berry_Lansat_Berry, Item_Berry_Starf_Berry, Item_Berry_Enigma_Berry, Item_Berry_Micle_Berry, Item_Berry_Custap_Berry, Item_Berry_Jaboca_Berry, Item_Berry_Rowap_Berry, Item_Berry_Occa_Berry, Item_Berry_Passho_Berry, Item_Berry_Wacan_Berry, Item_Berry_Rindo_Berry, Item_Berry_Yache_Berry, Item_Berry_Chople_Berry, Item_Berry_Kebia_Berry, Item_Berry_Shuca_Berry, Item_Berry_Coba_Berry, Item_Berry_Payapa_Berry, Item_Berry_Tanga_Berry, Item_Berry_Charti_Berry, Item_Berry_Kasib_Berry, Item_Berry_Haban_Berry, Item_Berry_Colbur_Berry, Item_Berry_Babiri_Berry, Item_Berry_Roseli_Berry, Item_Berry_Kee_Berry, Item_Berry_Maranga_Berry, Item_Berry_Chilan_Berry, Item_Burn_Drive, Item_Chill_Drive, Item_Douse_Drive, Item_Shock_Drive, Item_Griseous_Orb, Item_Thick_Club, Item_Deep_Sea_Tooth, Item_Light_Ball, Item_Soul_Dew, Item_Choice_Band, Item_Choice_Specs, Item_Marvel_Scale, Item_Deep_Sea_Scale, Item_Metal_Powder, Item_Eviolite };

enum EggGroups { EGG_GROUP_MONSTER,	EGG_GROUP_WATER1, EGG_GROUP_BUG, EGG_GROUP_FLYING, EGG_GROUP_FIELD, EGG_GROUP_FAIRY, EGG_GROUP_GRASS, EGG_GROUP_HUMAN_LIKE, EGG_GROUP_WATER3, EGG_GROUP_MINERAL, EGG_GROUP_AMORPHOUS, EGG_GROUP_WATER2, EGG_GROUP_DITTO, EGG_GROUP_DRAGON, EGG_GROUP_UNDISCOVERED };

enum WildDatOrders { GrassData, WaterData, TreeData, RockSmashData, FishingRodData, NumWildDatas };

enum CaptureStates { ZeroShakesFailure, SingleShakeFailure, DoubleShakeFailure, TripleShakeFailure, TripleShakeSuccess, CriticalCaptureFailure, CriticalCaptureSuccess };

enum PokedexModes {	Regional, National };

enum BattleStats { BattleAttack, BattleDefence, BattleSpeed, BattleSpecialAttack, BattleSpecialDefence, Accuracy, Evasion, NumBattleStats };

enum BattleBanks { Target, User, TargetAlly, UserAlly, NumBattlers, MoveTypeOverrideValue, CurrentEffectID, CurrentEffectPower, MoveSelection1, MoveSelection2, MoveSelectiion3, MoveSelection4, Target1, Target2, Target3, Target4, NumBattleBanks };

enum MoveCategories { Category_Physical, Category_Special, Category_Status };

enum MoveEffectivenesses { NoEffect, Ineffective, NormalDamage, SuperEffective, InvertedToHeal };

enum MoveSelections { SelectedMove0, SelectedMove1, SelectedMove2, SelectedMove3, UseItem, Flee };

enum ScriptEndingIndices { NotEnded, Ended, WaitForFrames };

enum MoveEffects { Effects_NoSpecial, Effects_Recoil, Effects_Judgement, Effects_Techno_Blast, Effects_Hits_Through_Protect, Effects_Perish_Song, Effects_Special_Physical, Effects_Sacred_Sword, Effects_Weather_Ball, Effects_Frustration, Effects_Payback, Effects_Return, Effects_Electro_Ball, Effects_Avalanche, Effects_Gyro_Ball, Effects_Eruption, Effects_Punishment, Effects_Fury_Cutter, Effects_Low_Kick, Effects_Echoed_Voice, Effects_Hex, Effects_Wring_Out, Effects_Assurance, Effects_Heat_Crash, Effects_Stored_Power, Effects_Acrobatics, Effects_Flail, Effects_Trump_Card, Effects_Round, Effects_Triple_Kick, Effects_Wake_Up_Slap, Effects_Smelling_Salt, Effects_Gust, Effects_Hidden_Power, Effects_Spit_Up, Effects_Pursuit, Effects_Present, Effects_Natural_Gift, Effects_Magnitude, Effects_Rollout, Effects_Fling, Effects_Pledge, Effects_Knock_Off, Effects_Facade, Effects_Brine, Effects_Venoshock, Effects_Retaliate, Effects_Fusion_Move, Effects_SolarBeam, Effects_Self_Destruct, Effects_Foul_Play, Effects_Chip_Away, Effects_Psywave, Effects_Night_Shade, Effects_Sonic_Boom, Effects_Super_Fang, Effects_Endeavour, Effects_Final_Gambit, Effects_Counter, Effects_Mirror_Coat, Effects_Bide, Effects_Metal_Burst, Effects_False_Swipe, Effects_Max };

enum BattleScriptJumpIfContexts { JumpIfByte, JumpIfHalfWord, JumpIfWord, JumpIfWeather, JumpIfSpecies, JumpIfHeldItem, JumpIfAbility, JumpIfStatLevel, JumpIfStatus, JumpIfSecondaryStatus, JumpIfSpecialStatus, JumpIfPrimaryType, JumpIfSecondaryType, JumpIfTertiaryType, JumpIfAbilityPresent, JumpIfCannotSwitch, JumpIfTurnCounter, JumpIfCannotSleep, JumpIfDamageType, JumpIfMoveEffect, JumpIfBattleType, JumpIfLoopCounter, JumpIfGeneralCounter, JumpIfArray };

enum BattleScriptComparisonModes { Equals, NotEqual, LessThan, GreaterThan, LessThanOrEqual, GreaterThanOrEqual, IfAnyBitsSet, IfNoBitsSet };

enum MoveEffectIDs { PrimaryEffect, SecondaryEffect, MaxNumEffects };

enum SecondaryMoveEffects { NoSecondaryEffect, ChangeStat, Sleep, Burn, Paralyse, Poison, BadlyPoison, Freeze, Recoil };

enum BattleTrackIDs { Track_Battle_Wild, Track_Battle_Rare_Wild, Track_Battle_Link, Track_Battle_Trainer, Track_Battle_Gym_Leader, Track_Battle_Elite_Four, Track_Battle_Champion, Track_Battle_Legendary, Track_Battle_Roaming, NumBattleTrackIDs };

enum TrainerClasses { Class_Gym_Leader, Class_Elite_Four, Class_Champion, Class_Evil_Team, Class_Evil_Team_Duo, Class_Elite_Trainer, Class_Rival };

enum BattleSelectionIndices { Selections_Move1, Selections_Move2, Selections_Move3, Selections_Move4, Selections_AI_Fleeing, Selections_Switch, Selections_Item, Selections_Flee };

enum BattleOrderIndices { PokemonOneFirst, PokemonTwoFirst };

enum HeldItemEffects { Item_Effect_None, Item_Effect_Last_In_Priority_Bracket, Item_Effect_First_In_Priority_Bracket, Item_Effect_Boost_Exp, Item_Effect_Boost_EVs, Item_Effect_Double_Cash_Gain, Item_Effect_Tilt, Item_Effect_Inversion, Item_Effect_Increase_Happiness_Gain };

enum ExpShareModes { Mode_Standard_Exp_Calc, Exp_Share_Mode };

enum FleeResults { Flee_Result_Failed, Flee_Result_Failed_Trapped_Ability, Flee_Result_Failed_Trapped_Move, Flee_Result_Cannot_Flee, Flee_Result_Succeeded, Flee_Result_Run_Away };

enum BattleAIMethods { Battle_AI_Sweeper, Battle_AI_Soemthing };

enum GBPSoundsEngineSets { GBP_Set_BGM, GBP_Set_Fanfare, GBP_Set_SFX, GBP_Set_Max };

enum TypeChartSettings { Standard, Tilt, Invert, UnusedTypeChartSetting };

enum VariableIDs { Var_RegionID = 0x4000 };

typedef u32 (*U32FunctionPointerVoid)(void);

typedef void (*VoidFunctionPointerVoid)(void);

typedef void (*VoidFunctionPointerU32)(u32);

typedef u32 (*U32FunctionPointerU32)(u32);

typedef u8 u8TripleArray[3];

typedef u8 u8DoubleArray[2];

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
	u32 bit0:1;
	u32 bit1:1;
	u32 bit2:1;
	u32 bit3:1;
	u32 bit4:1;
	u32 bit5:1;
	u32 bit6:1;
	u32 bit7:1;
	u32 bit8:1;
	u32 bit9:1;
	u32 bit10:1;
	u32 bit11:1;
	u32 bit12:1;
	u32 bit13:1;
	u32 bit14:1;
	u32 bit15:1;
	u32 bit16:1;
	u32 bit17:1;
	u32 bit18:1;
	u32 bit19:1;
	u32 bit20:1;
	u32 bit21:1;
	u32 bit22:1;
	u32 bit23:1;
	u32 bit24:1;
	u32 bit25:1;
	u32 bit26:1;
	u32 bit27:1;
	u32 bit28:1;
	u32 bit29:1;
	u32 bit30:1;
	u32 bit31:1;
} U32BitField;

typedef struct SaveLocationStruct {
	u8* destinationPosition;
	u8* sourcePosition;
	u32 length;
} SaveLocationStruct;

typedef struct SaveBlock {
	u8 data[0x99C];
	u32 checksum;
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

typedef struct Options
{
	u16 boxOutline:4;
	u16 stereoSound:1;
	u16 playAnimations:1;
	u16 battleSwitchStyle:1;
	u16 textSpeed:2;
	u16 useImperialUnits:1;
	u16 typeValues:2;
	u16 options:4;
} Options;

typedef struct OptionsStruct
{
	union
	{
		Options options;
		u16 allOptions;
	};
} OptionsStruct;

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
	char name[PlayerNameLength];
	char primaryRivalName[PlayerNameLength];
	char secondaryRivalName[PlayerNameLength];
	char tertiaryRivalName[PlayerNameLength];
	u16 alignment;
	u32 balance;
	u32 mumBalance;
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
	u8 season;
} RealTimeClock;

typedef struct SeasonClockValues {
	u8 day;
	u8 month;
} SeasonClockValues;

#define NumBagItems 50
#define NumKeyItems 30
#define NumBallTypes 20
#define NumTMsAndHMs 108
#define NumBerryTypes 30

typedef struct BagData {
	u32 numItemsBag:6;
	u32 numItemsKey:5;
	u32 numItemsBalls:5;
	u32 numTMs:7;
	u32 numHMs:4;
	u32 numBerryItems:5;
} BagData;

typedef struct Bag {
	union
	{
		u32 bagInformationValue;
		BagData bagInformation;
	};
	BagItem bagItemsData[NumBagItems];
	BagItem keyItemsData[NumKeyItems];
	BagItem ballItemsData[NumBallTypes];
	BagItem TMData[NumTMsAndHMs];
	BagItem berryItemsData[NumBerryTypes];
} Bag;

#define NumPCBagItems 50
#define NumPCKeyItems 30
#define NumPCBallTypes 20
#define NumPCTMsAndHMs 108
#define NumPCBerryTypes 30

typedef struct PCStorage {
	union
	{
		u32 bagInformationValue;
		BagData bagInformation;
	};
	BagItem bagItemsData[NumPCBagItems];
	BagItem keyItemsData[NumPCKeyItems];
	BagItem ballItemsData[NumPCBallTypes];
	BagItem TMData[NumPCTMsAndHMs];
	BagItem berryItemsData[NumPCBerryTypes];
} PCStorage;

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

typedef struct MoveFlagsStruct {
	u8 makesContact:1;
	u8 punching:1;
	u8 sheerForceBlockable:1;
	u8 specialistDamageRoutine:1;
	u8 hitsThroughDig:1;
	u8 hitsThroughFly:1;
	u8 hitsThroughDive:1;
	u8 unused:1;
} MoveFlagsStruct;

typedef struct TargetsStruct {
	u8 targetsSelf:1;
	u8 hitsBothInDouble:1;
	u8 hitsAllyInDouble:1;
	u8 unused:5;
} TargetsStruct;

typedef struct MoveData {
	u16 effectID;
	u8 basePower;
	u8 type;
	u8 accuracy;
	u8 basePP;
	u8 effectAccuracy;
	union
	{
		u8 targets;
		TargetsStruct targetsStruct;
	};
	s8 priority;
	union
	{
		u8 specialFlags;
		MoveFlagsStruct specialFlagsStruct;
	};
	u8 category;
	u8 secondaryInformation;
} MoveData;

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

typedef struct FourBPPPixelGroup {
	u8 colour:4;
	u8 colour2:4;
} FourBPPPixel;

typedef struct IndexTable {
	u32 index;
	void* pointerToData;
} IndexTable;

typedef struct PallocDataTable
{
	u32 index;
	u16 paletteID;
	u16 numObjectsUsing;
} PallocDataTable;

typedef struct SpriteManagementStructure {
	u32 filledEntries;
	void* startLocation;
	u32 memoryBlockLength;
	IndexTable data[SPRALLOCLENGTH];
} SpriteManagementStructure;

typedef struct PaletteManagementStructure {
	u32 filledEntriesObjects;
	PallocDataTable dataObjects[PALLOCLENGTH];
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
	char* textPointer;
} DexEntry;

typedef struct PokerusField {
	u8 duration:4;
	u8 strain:4;
} PokerusField;

typedef struct PrimaryStatusStruct {
	u32 sleepTurns:8;
	u32 frozen:1;
	u32 paralysed:1;
	u32 burned:1;
	u32 poisoned:1;
	u32 badlyPoisoned:1;
	u32 hyper:1;
	u32 badlyPoisonedCounter:18;
} PrimaryStatusStruct;

typedef struct StorageBoxInfo {
	u32 currentBoxID:16;
	u32 numPokemon:16;
} StorageBoxInfo;

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
	u8 shadowPos:7;
	u8 hFlipOnPokemonScreen:1;
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

typedef struct PokedexMemoryData {
	DexEntry* data;
	u32 mode;
	u32 currentUpperLimit;
} PokedexMemoryData;

typedef struct MusicFadeInfo {
	u8 stepNumber;
	u8 direction;
	u8 frameDelay;
	bool active;
} MusicFadeInfo;

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
	u32	rolloutUses:3;
	u32 stockpile:2;
	u32 furyCutterCounter:3;
	u32 confusion:3;
	u32 perishSongCounter:2;
	u32 ppReduced:1;
	u32 unused:18;
} SecondaryStatusStruct;

typedef struct InternalBattleTypeStruct {
	u32 isWildBattle:1;
	u32 isTrainerBattle:1;
	u32 isLinkBattle:1;
	u32 isRoamingWildBattle:1;
	u32 isLegendaryWildBattle:1;
	u32 isRareWildBattle:1;
	u32 isDoubleBattle:1;
	u32 wildBattleVariety:25;
} InternalBattleTypeStruct;

typedef struct BattleTypeStruct {
	union
	{
		InternalBattleTypeStruct info;
		u32 basicInfo;
	};
} BattleTypeStruct;

typedef struct StatChangeStruct {
	u8 statID:4;
	s8 strength:4;
} StatChangeStruct;

typedef struct OAMData {
	void (*stateFunction)(u32);
	u32 stateFunctionData;
	u8 paletteSlot;
	u8 priority:4;
	u8 hFlip:1;
	u8 vFlip:1;
	u8 unused:2;
	u8 shape;
	u8 size;
} OAMData;

typedef struct UpAndDownStruct {
	u32 frameDelayLength:8;
	u32 frameDelay:8;
	u32 currentPosition:1;
	u32 unused:15;
} UpAndDownStruct;

typedef struct Vector {
	u32 currentLength;
	u32 currentSize;
	u32* dataLocation;
} Vector;

typedef struct PokedexData {
	char speciesName[16];
	u16 height;
	u16 weight;
	char* entry;
	u16 pokemonScale;
	u8 pokemonXOffset;
	u8 pokemonYOffset;
	u16 trainerScale;
	u8 trainerXOffset;
	u8 trainerYOffset;
} PokedexData;

typedef struct StringAndPositionStruct {
	char* string;
	u16 xPos;
	u16 yPos;
} StringAndPositionStruct;

typedef struct StringAndFunctionPointerStruct {
	char* string;
	VoidFunctionPointerVoid function;
} StringAndFunctionPointerStruct;

typedef struct StringAndFunctionPointerWithFlagIDStruct {
	char* string;
	VoidFunctionPointerVoid function;
	u16 flagID;
	u16 alignment;
} StringAndFunctionPointerWithFlagIDStruct;

typedef struct EntityManagerEntryFlags {
	u8 isAlive:1;
} EntityManagerEntryFlags;

typedef struct EntityManagerEntry {
	union
	{
		u8 flags;
		EntityManagerEntryFlags flagBits;
	};
	void* spriteVRAMLocation;
	OAMData* oamDataLocation;

} EntityManagerEntry;

typedef struct EntityData {

} EntityData;

#endif // TOOLBOX_H

