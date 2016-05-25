#ifndef POKEMON_H
#define POKEMON_H

#include "GlobalDefinitions.h"
#include "Scenes/Overworld/MappingDefinitions.h"
#include "AbridgedPokemon.h"
#include "Core/Maths.h"

namespace Core
{
	namespace Pokemon
	{
		class Pokemon
		{
		private:
			static MovesetEntry moveset0[];
			static MovesetEntry moveset1[];
			static MovesetEntry moveset2[];
			static MovesetEntry moveset3[];
			static MovesetEntry moveset4[];
			static MovesetEntry moveset5[];
			static MovesetEntry moveset6[];
			static MovesetEntry moveset7[];
			static MovesetEntry moveset8[];
			static MovesetEntry moveset9[];
			static MovesetEntry moveset10[];
			static MovesetEntry moveset11[];
			static MovesetEntry moveset12[];
			static MovesetEntry moveset13[];
			static MovesetEntry moveset14[];
			static MovesetEntry moveset15[];
			static MovesetEntry moveset16[];
			static MovesetEntry moveset17[];
			static MovesetEntry moveset18[];
			static MovesetEntry moveset19[];
			static MovesetEntry moveset20[];
			static MovesetEntry moveset21[];
			static MovesetEntry moveset22[];
			static MovesetEntry moveset23[];
			static MovesetEntry moveset24[];
			static MovesetEntry moveset25[];
			static MovesetEntry moveset26[];
			static MovesetEntry moveset27[];
			static MovesetEntry moveset28[];
			static MovesetEntry moveset29[];
			static MovesetEntry moveset30[];
			static MovesetEntry moveset31[];
			static MovesetEntry moveset32[];
			static MovesetEntry moveset33[];
			static MovesetEntry moveset34[];
			static MovesetEntry moveset35[];
			static MovesetEntry moveset36[];
			static MovesetEntry moveset37[];
			static MovesetEntry moveset38[];
			static MovesetEntry moveset39[];
			static MovesetEntry moveset40[];
			static MovesetEntry moveset41[];
			static MovesetEntry moveset42[];
			static MovesetEntry moveset43[];
			static MovesetEntry moveset44[];
			static MovesetEntry moveset45[];
			static MovesetEntry moveset46[];
			static MovesetEntry moveset47[];
			static MovesetEntry moveset48[];
			static MovesetEntry moveset49[];
			static MovesetEntry moveset50[];
			static MovesetEntry moveset51[];
			static MovesetEntry moveset52[];
			static MovesetEntry moveset53[];
			static MovesetEntry moveset54[];
			static MovesetEntry moveset55[];
			static MovesetEntry moveset56[];
			static MovesetEntry moveset57[];
			static MovesetEntry moveset58[];
			static MovesetEntry moveset59[];
			static MovesetEntry moveset60[];
			static MovesetEntry moveset61[];
			static MovesetEntry moveset62[];
			static MovesetEntry moveset63[];
			static MovesetEntry moveset64[];
			static MovesetEntry moveset65[];
			static MovesetEntry moveset66[];
			static MovesetEntry moveset67[];
			static MovesetEntry moveset68[];
			static MovesetEntry moveset69[];
			static MovesetEntry moveset70[];
			static MovesetEntry moveset71[];
			static MovesetEntry moveset72[];
			static MovesetEntry moveset73[];
			static MovesetEntry moveset74[];
			static MovesetEntry moveset75[];
			static MovesetEntry moveset76[];
			static MovesetEntry moveset77[];
			static MovesetEntry moveset78[];
			static MovesetEntry moveset79[];
			static MovesetEntry moveset80[];
			static MovesetEntry moveset81[];
			static MovesetEntry moveset82[];
			static MovesetEntry moveset83[];
			static MovesetEntry moveset84[];
			static MovesetEntry moveset85[];
			static MovesetEntry moveset86[];
			static MovesetEntry moveset87[];
			static MovesetEntry moveset88[];
			static MovesetEntry moveset89[];
			static MovesetEntry moveset90[];
			static MovesetEntry moveset91[];
			static MovesetEntry moveset92[];
			static MovesetEntry moveset93[];
			static MovesetEntry moveset94[];
			static MovesetEntry moveset95[];
			static MovesetEntry moveset96[];
			static MovesetEntry moveset97[];
			static MovesetEntry moveset98[];
			static MovesetEntry moveset99[];
			static MovesetEntry moveset100[];
			static MovesetEntry moveset101[];
			static MovesetEntry moveset102[];
			static MovesetEntry moveset103[];
			static MovesetEntry moveset104[];
			static MovesetEntry moveset105[];
			static MovesetEntry moveset106[];
			static MovesetEntry moveset107[];
			static MovesetEntry moveset108[];
			static MovesetEntry moveset109[];
			static MovesetEntry moveset110[];
			static MovesetEntry moveset111[];
			static MovesetEntry moveset112[];
			static MovesetEntry moveset113[];
			static MovesetEntry moveset114[];
			static MovesetEntry moveset115[];
			static MovesetEntry moveset116[];
			static MovesetEntry moveset117[];
			static MovesetEntry moveset118[];
			static MovesetEntry moveset119[];
			static MovesetEntry moveset120[];
			static MovesetEntry moveset121[];
			static MovesetEntry moveset122[];
			static MovesetEntry moveset123[];
			static MovesetEntry moveset124[];
			static MovesetEntry moveset125[];
			static MovesetEntry moveset126[];
			static MovesetEntry moveset127[];
			static MovesetEntry moveset128[];
			static MovesetEntry moveset129[];
			static MovesetEntry moveset130[];
			static MovesetEntry moveset131[];
			static MovesetEntry moveset132[];
			static MovesetEntry moveset133[];
			static MovesetEntry moveset134[];
			static MovesetEntry moveset135[];
			static MovesetEntry moveset136[];
			static MovesetEntry moveset137[];
			static MovesetEntry moveset138[];
			static MovesetEntry moveset139[];
			static MovesetEntry moveset140[];
			static MovesetEntry moveset141[];
			static MovesetEntry moveset142[];
			static MovesetEntry moveset143[];
			static MovesetEntry moveset144[];
			static MovesetEntry moveset145[];
			static MovesetEntry moveset146[];
			static MovesetEntry moveset147[];
			static MovesetEntry moveset148[];
			static MovesetEntry moveset149[];
			static MovesetEntry moveset150[];
			static MovesetEntry moveset151[];
			static MovesetEntry moveset152[];
			static MovesetEntry moveset153[];
			static MovesetEntry moveset154[];
			static MovesetEntry moveset155[];
			static MovesetEntry moveset156[];
			static MovesetEntry moveset157[];
			static MovesetEntry moveset158[];
			static MovesetEntry moveset159[];
			static MovesetEntry moveset160[];
			static MovesetEntry moveset161[];
			static MovesetEntry moveset162[];
			static MovesetEntry moveset163[];
			static MovesetEntry moveset164[];
			static MovesetEntry moveset165[];
			static MovesetEntry moveset166[];
			static MovesetEntry moveset167[];
			static MovesetEntry moveset168[];
			static MovesetEntry moveset169[];
			static MovesetEntry moveset170[];
			static MovesetEntry moveset171[];
			static MovesetEntry moveset172[];
			static MovesetEntry moveset173[];
			static MovesetEntry moveset174[];
			static MovesetEntry moveset175[];
			static MovesetEntry moveset176[];
			static MovesetEntry moveset177[];
			static MovesetEntry moveset178[];
			static MovesetEntry moveset179[];
			static MovesetEntry moveset180[];
			static MovesetEntry moveset181[];
			static MovesetEntry moveset182[];
			static MovesetEntry moveset183[];
			static MovesetEntry moveset184[];
			static MovesetEntry moveset185[];
			static MovesetEntry moveset186[];
			static MovesetEntry moveset187[];
			static MovesetEntry moveset188[];
			static MovesetEntry moveset189[];
			static MovesetEntry moveset190[];
			static MovesetEntry moveset191[];
			static MovesetEntry moveset192[];
			static MovesetEntry moveset193[];
			static MovesetEntry moveset194[];
			static MovesetEntry moveset195[];
			static MovesetEntry moveset196[];
			static MovesetEntry moveset197[];
			static MovesetEntry moveset198[];
			static MovesetEntry moveset199[];
			static MovesetEntry moveset200[];
			static MovesetEntry moveset201[];
			static MovesetEntry moveset202[];
			static MovesetEntry moveset203[];
			static MovesetEntry moveset204[];
			static MovesetEntry moveset205[];
			static MovesetEntry moveset206[];
			static MovesetEntry moveset207[];
			static MovesetEntry moveset208[];
			static MovesetEntry moveset209[];
			static MovesetEntry moveset210[];
			static MovesetEntry moveset211[];
			static MovesetEntry moveset212[];
			static MovesetEntry moveset213[];
			static MovesetEntry moveset214[];
			static MovesetEntry moveset215[];
			static MovesetEntry moveset216[];
			static MovesetEntry moveset217[];
			static MovesetEntry moveset218[];
			static MovesetEntry moveset219[];
			static MovesetEntry moveset220[];
			static MovesetEntry moveset221[];
			static MovesetEntry moveset222[];
			static MovesetEntry moveset223[];
			static MovesetEntry moveset224[];
			static MovesetEntry moveset225[];
			static MovesetEntry moveset226[];
			static MovesetEntry moveset227[];
			static MovesetEntry moveset228[];
			static MovesetEntry moveset229[];
			static MovesetEntry moveset230[];
			static MovesetEntry moveset231[];
			static MovesetEntry moveset232[];
			static MovesetEntry moveset233[];
			static MovesetEntry moveset234[];
			static MovesetEntry moveset235[];
			static MovesetEntry moveset236[];
			static MovesetEntry moveset237[];
			static MovesetEntry moveset238[];
			static MovesetEntry moveset239[];
			static MovesetEntry moveset240[];
			static MovesetEntry moveset241[];
			static MovesetEntry moveset242[];
			static MovesetEntry moveset243[];
			static MovesetEntry moveset244[];
			static MovesetEntry moveset245[];
			static MovesetEntry moveset246[];
			static MovesetEntry moveset247[];
			static MovesetEntry moveset248[];
			static MovesetEntry moveset249[];
			static MovesetEntry moveset250[];
			static MovesetEntry moveset251[];
			static MovesetEntry moveset252[];
			static MovesetEntry moveset253[];
			static MovesetEntry moveset254[];
			static MovesetEntry moveset255[];
			static MovesetEntry moveset256[];
			static MovesetEntry moveset257[];
			static MovesetEntry moveset258[];
			static MovesetEntry moveset259[];
			static MovesetEntry moveset260[];
			static MovesetEntry moveset261[];
			static MovesetEntry moveset262[];
			static MovesetEntry moveset263[];
			static MovesetEntry moveset264[];
			static MovesetEntry moveset265[];
			static MovesetEntry moveset266[];
			static MovesetEntry moveset267[];
			static MovesetEntry moveset268[];
			static MovesetEntry moveset269[];
			static MovesetEntry moveset270[];
			static MovesetEntry moveset271[];
			static MovesetEntry moveset272[];
			static MovesetEntry moveset273[];
			static MovesetEntry moveset274[];
			static MovesetEntry moveset275[];
			static MovesetEntry moveset276[];
			static MovesetEntry moveset277[];
			static MovesetEntry moveset278[];
			static MovesetEntry moveset279[];
			static MovesetEntry moveset280[];
			static MovesetEntry moveset281[];
			static MovesetEntry moveset282[];
			static MovesetEntry moveset283[];
			static MovesetEntry moveset284[];
			static MovesetEntry moveset285[];
			static MovesetEntry moveset286[];
			static MovesetEntry moveset287[];
			static MovesetEntry moveset288[];
			static MovesetEntry moveset289[];
			static MovesetEntry moveset290[];
			static MovesetEntry moveset291[];
			static MovesetEntry moveset292[];
			static MovesetEntry moveset293[];
			static MovesetEntry moveset294[];
			static MovesetEntry moveset295[];
			static MovesetEntry moveset296[];
			static MovesetEntry moveset297[];
			static MovesetEntry moveset298[];
			static MovesetEntry moveset299[];
			static MovesetEntry moveset300[];
			static MovesetEntry moveset301[];
			static MovesetEntry moveset302[];
			static MovesetEntry moveset303[];
			static MovesetEntry moveset304[];
			static MovesetEntry moveset305[];
			static MovesetEntry moveset306[];
			static MovesetEntry moveset307[];
			static MovesetEntry moveset308[];
			static MovesetEntry moveset309[];
			static MovesetEntry moveset310[];
			static MovesetEntry moveset311[];
			static MovesetEntry moveset312[];
			static MovesetEntry moveset313[];
			static MovesetEntry moveset314[];
			static MovesetEntry moveset315[];
			static MovesetEntry moveset316[];
			static MovesetEntry moveset317[];
			static MovesetEntry moveset318[];
			static MovesetEntry moveset319[];
			static MovesetEntry moveset320[];
			static MovesetEntry moveset321[];
			static MovesetEntry moveset322[];
			static MovesetEntry moveset323[];
			static MovesetEntry moveset324[];
			static MovesetEntry moveset325[];
			static MovesetEntry moveset326[];
			static MovesetEntry moveset327[];
			static MovesetEntry moveset328[];
			static MovesetEntry moveset329[];
			static MovesetEntry moveset330[];
			static MovesetEntry moveset331[];
			static MovesetEntry moveset332[];
			static MovesetEntry moveset333[];
			static MovesetEntry moveset334[];
			static MovesetEntry moveset335[];
			static MovesetEntry moveset336[];
			static MovesetEntry moveset337[];
			static MovesetEntry moveset338[];
			static MovesetEntry moveset339[];
			static MovesetEntry moveset340[];
			static MovesetEntry moveset341[];
			static MovesetEntry moveset342[];
			static MovesetEntry moveset343[];
			static MovesetEntry moveset344[];
			static MovesetEntry moveset345[];
			static MovesetEntry moveset346[];
			static MovesetEntry moveset347[];
			static MovesetEntry moveset348[];
			static MovesetEntry moveset349[];
			static MovesetEntry moveset350[];
			static MovesetEntry moveset351[];
			static MovesetEntry moveset352[];
			static MovesetEntry moveset353[];
			static MovesetEntry moveset354[];
			static MovesetEntry moveset355[];
			static MovesetEntry moveset356[];
			static MovesetEntry moveset357[];
			static MovesetEntry moveset358[];
			static MovesetEntry moveset359[];
			static MovesetEntry moveset360[];
			static MovesetEntry moveset361[];
			static MovesetEntry moveset362[];
			static MovesetEntry moveset363[];
			static MovesetEntry moveset364[];
			static MovesetEntry moveset365[];
			static MovesetEntry moveset366[];
			static MovesetEntry moveset367[];
			static MovesetEntry moveset368[];
			static MovesetEntry moveset369[];
			static MovesetEntry moveset370[];
			static MovesetEntry moveset371[];
			static MovesetEntry moveset372[];
			static MovesetEntry moveset373[];
			static MovesetEntry moveset374[];
			static MovesetEntry moveset375[];
			static MovesetEntry moveset376[];
			static MovesetEntry moveset377[];
			static MovesetEntry moveset378[];
			static MovesetEntry moveset379[];
			static MovesetEntry moveset380[];
			static MovesetEntry moveset381[];
			static MovesetEntry moveset382[];
			static MovesetEntry moveset383[];
			static MovesetEntry moveset384[];
			static MovesetEntry moveset385[];
			static MovesetEntry moveset386[];
			static MovesetEntry moveset387[];
			static MovesetEntry moveset388[];
			static MovesetEntry moveset389[];
			static MovesetEntry moveset390[];
			static MovesetEntry moveset391[];
			static MovesetEntry moveset392[];
			static MovesetEntry moveset393[];
			static MovesetEntry moveset394[];
			static MovesetEntry moveset395[];
			static MovesetEntry moveset396[];
			static MovesetEntry moveset397[];
			static MovesetEntry moveset398[];
			static MovesetEntry moveset399[];
			static MovesetEntry moveset400[];
			static MovesetEntry moveset401[];
			static MovesetEntry moveset402[];
			static MovesetEntry moveset403[];
			static MovesetEntry moveset404[];
			static MovesetEntry moveset405[];
			static MovesetEntry moveset406[];
			static MovesetEntry moveset407[];
			static MovesetEntry moveset408[];
			static MovesetEntry moveset409[];
			static MovesetEntry moveset410[];
			static MovesetEntry moveset411[];
			static MovesetEntry moveset412[];
			static MovesetEntry moveset413[];
			static MovesetEntry moveset414[];
			static MovesetEntry moveset415[];
			static MovesetEntry moveset416[];
			static MovesetEntry moveset417[];
			static MovesetEntry moveset418[];
			static MovesetEntry moveset419[];
			static MovesetEntry moveset420[];
			static MovesetEntry moveset421[];
			static MovesetEntry moveset422[];
			static MovesetEntry moveset423[];
			static MovesetEntry moveset424[];
			static MovesetEntry moveset425[];
			static MovesetEntry moveset426[];
			static MovesetEntry moveset427[];
			static MovesetEntry moveset428[];
			static MovesetEntry moveset429[];
			static MovesetEntry moveset430[];
			static MovesetEntry moveset431[];
			static MovesetEntry moveset432[];
			static MovesetEntry moveset433[];
			static MovesetEntry moveset434[];
			static MovesetEntry moveset435[];
			static MovesetEntry moveset436[];
			static MovesetEntry moveset437[];
			static MovesetEntry moveset438[];
			static MovesetEntry moveset439[];
			static MovesetEntry moveset440[];
			static MovesetEntry moveset441[];
			static MovesetEntry moveset442[];
			static MovesetEntry moveset443[];
			static MovesetEntry moveset444[];
			static MovesetEntry moveset445[];
			static MovesetEntry moveset446[];
			static MovesetEntry moveset447[];
			static MovesetEntry moveset448[];
			static MovesetEntry moveset449[];
			static MovesetEntry moveset450[];
			static MovesetEntry moveset451[];
			static MovesetEntry moveset452[];
			static MovesetEntry moveset453[];
			static MovesetEntry moveset454[];
			static MovesetEntry moveset455[];
			static MovesetEntry moveset456[];
			static MovesetEntry moveset457[];
			static MovesetEntry moveset458[];
			static MovesetEntry moveset459[];
			static MovesetEntry moveset460[];
			static MovesetEntry moveset461[];
			static MovesetEntry moveset462[];
			static MovesetEntry moveset463[];
			static MovesetEntry moveset464[];
			static MovesetEntry moveset465[];
			static MovesetEntry moveset466[];
			static MovesetEntry moveset467[];
			static MovesetEntry moveset468[];
			static MovesetEntry moveset469[];
			static MovesetEntry moveset470[];
			static MovesetEntry moveset471[];
			static MovesetEntry moveset472[];
			static MovesetEntry moveset473[];
			static MovesetEntry moveset474[];
			static MovesetEntry moveset475[];
			static MovesetEntry moveset476[];
			static MovesetEntry moveset477[];
			static MovesetEntry moveset478[];
			static MovesetEntry moveset479[];
			static MovesetEntry moveset480[];
			static MovesetEntry moveset481[];
			static MovesetEntry moveset482[];
			static MovesetEntry moveset483[];
			static MovesetEntry moveset484[];
			static MovesetEntry moveset485[];
			static MovesetEntry moveset486[];
			static MovesetEntry moveset487[];
			static MovesetEntry moveset488[];
			static MovesetEntry moveset489[];
			static MovesetEntry moveset490[];
			static MovesetEntry moveset491[];
			static MovesetEntry moveset492[];
			static MovesetEntry moveset493[];
			static MovesetEntry moveset494[];
			static MovesetEntry moveset495[];
			static MovesetEntry moveset496[];
			static MovesetEntry moveset497[];
			static MovesetEntry moveset498[];
			static MovesetEntry moveset499[];
			static MovesetEntry moveset500[];
			static MovesetEntry moveset501[];
			static MovesetEntry moveset502[];
			static MovesetEntry moveset503[];
			static MovesetEntry moveset504[];
			static MovesetEntry moveset505[];
			static MovesetEntry moveset506[];
			static MovesetEntry moveset507[];
			static MovesetEntry moveset508[];
			static MovesetEntry moveset509[];
			static MovesetEntry moveset510[];
			static MovesetEntry moveset511[];
			static MovesetEntry moveset512[];
			static MovesetEntry moveset513[];
			static MovesetEntry moveset514[];
			static MovesetEntry moveset515[];
			static MovesetEntry moveset516[];
			static MovesetEntry moveset517[];
			static MovesetEntry moveset518[];
			static MovesetEntry moveset519[];
			static MovesetEntry moveset520[];
			static MovesetEntry moveset521[];
			static MovesetEntry moveset522[];
			static MovesetEntry moveset523[];
			static MovesetEntry moveset524[];
			static MovesetEntry moveset525[];
			static MovesetEntry moveset526[];
			static MovesetEntry moveset527[];
			static MovesetEntry moveset528[];
			static MovesetEntry moveset529[];
			static MovesetEntry moveset530[];
			static MovesetEntry moveset531[];
			static MovesetEntry moveset532[];
			static MovesetEntry moveset533[];
			static MovesetEntry moveset534[];
			static MovesetEntry moveset535[];
			static MovesetEntry moveset536[];
			static MovesetEntry moveset537[];
			static MovesetEntry moveset538[];
			static MovesetEntry moveset539[];
			static MovesetEntry moveset540[];
			static MovesetEntry moveset541[];
			static MovesetEntry moveset542[];
			static MovesetEntry moveset543[];
			static MovesetEntry moveset544[];
			static MovesetEntry moveset545[];
			static MovesetEntry moveset546[];
			static MovesetEntry moveset547[];
			static MovesetEntry moveset548[];
			static MovesetEntry moveset549[];
			static MovesetEntry moveset550[];
			static MovesetEntry moveset551[];
			static MovesetEntry moveset552[];
			static MovesetEntry moveset553[];
			static MovesetEntry moveset554[];
			static MovesetEntry moveset555[];
			static MovesetEntry moveset556[];
			static MovesetEntry moveset557[];
			static MovesetEntry moveset558[];
			static MovesetEntry moveset559[];
			static MovesetEntry moveset560[];
			static MovesetEntry moveset561[];
			static MovesetEntry moveset562[];
			static MovesetEntry moveset563[];
			static MovesetEntry moveset564[];
			static MovesetEntry moveset565[];
			static MovesetEntry moveset566[];
			static MovesetEntry moveset567[];
			static MovesetEntry moveset568[];
			static MovesetEntry moveset569[];
			static MovesetEntry moveset570[];
			static MovesetEntry moveset571[];
			static MovesetEntry moveset572[];
			static MovesetEntry moveset573[];
			static MovesetEntry moveset574[];
			static MovesetEntry moveset575[];
			static MovesetEntry moveset576[];
			static MovesetEntry moveset577[];
			static MovesetEntry moveset578[];
			static MovesetEntry moveset579[];
			static MovesetEntry moveset580[];
			static MovesetEntry moveset581[];
			static MovesetEntry moveset582[];
			static MovesetEntry moveset583[];
			static MovesetEntry moveset584[];
			static MovesetEntry moveset585[];
			static MovesetEntry moveset586[];
			static MovesetEntry moveset587[];
			static MovesetEntry moveset588[];
			static MovesetEntry moveset589[];
			static MovesetEntry moveset590[];
			static MovesetEntry moveset591[];
			static MovesetEntry moveset592[];
			static MovesetEntry moveset593[];
			static MovesetEntry moveset594[];
			static MovesetEntry moveset595[];
			static MovesetEntry moveset596[];
			static MovesetEntry moveset597[];
			static MovesetEntry moveset598[];
			static MovesetEntry moveset599[];
			static MovesetEntry moveset600[];
			static MovesetEntry moveset601[];
			static MovesetEntry moveset602[];
			static MovesetEntry moveset603[];
			static MovesetEntry moveset604[];
			static MovesetEntry moveset605[];
			static MovesetEntry moveset606[];
			static MovesetEntry moveset607[];
			static MovesetEntry moveset608[];
			static MovesetEntry moveset609[];
			static MovesetEntry moveset610[];
			static MovesetEntry moveset611[];
			static MovesetEntry moveset612[];
			static MovesetEntry moveset613[];
			static MovesetEntry moveset614[];
			static MovesetEntry moveset615[];
			static MovesetEntry moveset616[];
			static MovesetEntry moveset617[];
			static MovesetEntry moveset618[];
			static MovesetEntry moveset619[];
			static MovesetEntry moveset620[];
			static MovesetEntry moveset621[];
			static MovesetEntry moveset622[];
			static MovesetEntry moveset623[];
			static MovesetEntry moveset624[];
			static MovesetEntry moveset625[];
			static MovesetEntry moveset626[];
			static MovesetEntry moveset627[];
			static MovesetEntry moveset628[];
			static MovesetEntry moveset629[];
			static MovesetEntry moveset630[];
			static MovesetEntry moveset631[];
			static MovesetEntry moveset632[];
			static MovesetEntry moveset633[];
			static MovesetEntry moveset634[];
			static MovesetEntry moveset635[];
			static MovesetEntry moveset636[];
			static MovesetEntry moveset637[];
			static MovesetEntry moveset638[];
			static MovesetEntry moveset639[];
			static MovesetEntry moveset640[];
			static MovesetEntry moveset641[];
			static MovesetEntry moveset642[];
			static MovesetEntry moveset643[];
			static MovesetEntry moveset644[];
			static MovesetEntry moveset645[];
			static MovesetEntry moveset646[];
			static MovesetEntry moveset647[];
			static MovesetEntry moveset648[];
			static MovesetEntry moveset649[];
			static u32 pokemonBaseExperiences[][100];
			static u8 natureEffects[][5];
			static char pokemonNames[][12];
			static char name[];
			static char number[];
			static char otName[];
			static char itemName[];
			static char natureString[];
			static char metString[];
			static char characteristicString[];
			static char idString[];
			static u16 alternativeSpeciesChecks[][2];
			static IncenseItemEgg incenseItemEggs[];
			static char abilityNames[][14];
			static char natureNames[][8];
			static char* characteristicsStrings[];
			static MovesetEntry* movesets[];
			AbridgedPokemon mainData;
			union
			{
				u32 statusAilment;
				PrimaryStatusStruct statusAilmentBits;
			}; // 84
			u8 level; // 85
			u8 alignment; // 86
			u16 currentHP; // 88
			u16 maximumHP; // 90
			u16 attack; // 92
			u16 defence; // 94
			u16 speed; // 96
			u16 specialAttack; // 98
			u16 specialDefence; // 100
			void* GetPokemonSpritePaletteFromPokemon(u32 sideIndex) const;
		public:
			Pokemon() { }
			Pokemon(u32 level, u32 species, char* nickname = NULL);
			Pokemon(const AbridgedPokemon &p, bool newPokemon = false);
			Pokemon(const AbridgedPokemon* p, bool newPokemon = false);
			u32 Decrypt(u8 index) const;
			void Encrypt(u8 index, u32 value);
			void CalculateStats();
			bool AddExperience(u32 exp);
			void* GetFrontSprite() const { return mainData.GetFrontSprite(); }
			void* GetBackSprite() const { return mainData.GetBackSprite(); }
			void* GetPalette() const { return mainData.GetPalette(); }
			bool IsShiny() const { return mainData.IsShiny(); }
			u32 CalculateHighestIVIndex() const { return mainData.CalculateHighestIVIndex(); }
			u32 CalculateCharacteristicIndex() const { return mainData.CalculateCharacteristicIndex(); }
			u32 GetCatchRate() const { return mainData.GetCatchRate(); }
			u32 GetBaseExperience() const { return mainData.GetBaseExperience(); }
			u32 GetEVGain() const { return mainData.GetEVGain(); }
			void* GetPokeballSprite() const { return mainData.GetPokeballSprite(); }
			void* GetPokeballPalette() const { return mainData.GetPokeballPalette(); }
			const AbridgedPokemon & GetMainData() const { return mainData; }
			const PrimaryStatusStruct & GetStatus() { return statusAilmentBits; }
			const PPBonusStruct & GetPPBonuses() const { return mainData.GetPPBonuses(); }
			void SetBasicTypes() { mainData.SetBasicTypes(); }
			bool IsFullyEvolved() const { return mainData.IsFullyEvolved(); }
			u32 SumEVs() const { return mainData.SumEVs(); }
			bool AllowEVAddition(u32 value, u32 index) const { return mainData.AllowEVAddition(value, index); }
			static Core::Pokemon::Pokemon* GenerateWildPokemonFromData(const WildData &initData, const BattleTypeStruct &battleType);
			static Core::Pokemon::Pokemon* GenerateEgg(Pokemon* mother, Pokemon* father);
			static void GivePokemonToPlayer(u16 species, u8 level, u16 item, u32 formeIndex = 0);
			static Core::Pokemon::Pokemon* GenerateTrainerPokemon(u16 species, u8 level, char* trainerName, u32 id, u32 formeIndex = 0);
			static u16 FindBabySpeciesInner(u16 sourceSpecies) { return AbridgedPokemon::FindBabySpeciesInner(sourceSpecies); }
			static void GiveEggToPlayer(u16 species);
			bool HasMove(u16 moveID) const { return mainData.HasMove(moveID); }
			static void DeletePokemon(Pokemon* p);
			u32 CalculateLevelFromExperience();
			static char* GetSpeciesName(u32 speciesID)
			{
				if (speciesID < NumberOfPokemon)
				{
					return (char*)&pokemonNames[speciesID];
				}
				return (char*)&pokemonNames[0];
			}
			static char* GetAbilityName(u32 abilityID)
			{
				if (abilityID < NumberOfAbilities)
				{
					return (char*)&abilityNames[abilityID];
				}
				return (char*)&abilityNames[0];
			}
			static char* GetNatureName(u32 natureID)
			{
				if (natureID < NumberOfNatures)
				{
					return (char*)&natureNames[natureID];
				}
				return (char*)&natureNames[0];
			}
			static MovesetEntry* GetMovesetByIndex(u32 index)
			{
				if (index < NumberOfPokemon)
				{
					return movesets[index];
				}
				return movesets[0];
			}
			static u32 GetBaseExperienceByTypeAndLevel(u32 type, u32 level)
			{
				if (type < 6 && level < 100)
				{
					return pokemonBaseExperiences[type][level];
				}
				return 0;
			}
			static bool IsGenderLegitimate(u32 gender, u16 species);
			static u32 CalculateValidGender(u16 species);
		};
	}
}

#endif
