/*
 * PokeData.s
 *
 *  Created on: 1 Jul 2014
 *      Author: Jamie
 */

 	.include "PokeDefines.s"

 	.section .rodata
 	.global evoData
 	.global pokemonBaseData

 .align 2

  evoData1:
 	.short LevelUp
 	.short 16
 	.short PKMN_IVYSAUR

 evoData2:
 	.short LevelUp
 	.short 32
 	.short PKMN_VENUSAUR

 evoData4:
 	.short LevelUp
 	.short 16
 	.short PKMN_CHARMELEON

 evoData5:
 	.short LevelUp
 	.short 36
 	.short PKMN_CHARIZARD

 evoData7:
 	.short LevelUp
 	.short 16
 	.short PKMN_WARTORTLE

 evoData8:
 	.short LevelUp
 	.short 36
 	.short PKMN_BLASTOISE

 evoData10:
 	.short LevelUp
 	.short 7
 	.short PKMN_METAPOD

 evoData11:
 	.short LevelUp
 	.short 10
 	.short PKMN_BUTTERFREE

 evoData13:
 	.short LevelUp
 	.short 7
 	.short PKMN_KAKUNA

 evoData14:
 	.short LevelUp
 	.short 10
 	.short PKMN_BEEDRILL

 evoData16:
 	.short LevelUp
 	.short 18
 	.short PKMN_PIDGEOTTO

 evoData17:
 	.short LevelUp
 	.short 36
 	.short PKMN_PIDGEOT

 evoData19:
 	.short LevelUp
 	.short 20
 	.short PKMN_RATICATE

 evoData21:
 	.short LevelUp
 	.short 20
 	.short PKMN_FEAROW

 evoData23:
 	.short LevelUp
 	.short 24
 	.short PKMN_ARBOK

 evoData25:
 	.short ItemUsed
 	.short ITEM_THUNDERSTONE
 	.short PKMN_RAICHU

 evoData27:
 	.short LevelUp
 	.short 28
 	.short PKMN_SANDSLASH

 evoData29:
 	.short LevelUp
 	.short 16
 	.short PKMN_NIDORINA

 evoData30:
 	.short ItemUsed
 	.short ITEM_MOONSTONE
 	.short PKMN_NIDOQUEEN

 evoData32:
 	.short LevelUp
 	.short 16
 	.short PKMN_NIDORINO

 evoData33:
 	.short ItemUsed
 	.short ITEM_MOONSTONE
 	.short PKMN_NIDOKING

 evoData35:
 	.short ItemUsed
 	.short ITEM_MOONSTONE
 	.short PKMN_CLEFABLE

 evoData37:
 	.short ItemUsed
 	.short ITEM_FIRESTONE
 	.short PKMN_NINETALES

 evoData39:
 	.short ItemUsed
 	.short ITEM_MOONSTONE
 	.short PKMN_JIGGLYPUFF

 evoData41:
 	.short LevelUp
 	.short 22
 	.short PKMN_GOLBAT

 evoData42:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_CROBAT

 evoData43:
 	.short LevelUp
 	.short 21
 	.short PKMN_GLOOM

 evoData46:
 	.short LevelUp
 	.short 24
 	.short PKMN_PARASECT

 evoData48:
 	.short LevelUp
 	.short 31
 	.short PKMN_VENOMOTH

 evoData50:
 	.short LevelUp
 	.short 26
 	.short PKMN_DUGTRIO

 evoData52:
 	.short LevelUp
 	.short 28
 	.short PKMN_PERSIAN

 evoData54:
 	.short LevelUp
 	.short 33
 	.short PKMN_GOLDUCK

 evoData56:
 	.short LevelUp
 	.short 28
 	.short PKMN_PRIMEAPE

 evoData58:
 	.short ItemUsed
 	.short ITEM_FIRESTONE
 	.short PKMN_ARCANINE

 evoData60:
 	.short LevelUp
 	.short 25
 	.short PKMN_POLIWHIRL

 evoData63:
 	.short LevelUp
 	.short 16
 	.short PKMN_KADABRA

 evoData64:
 	.short Trade
 	.short 0x0000
 	.short PKMN_ALAKAZAM

 evoData66:
 	.short LevelUp
 	.short 28
 	.short PKMN_MACHOKE

 evoData67:
 	.short Trade
 	.short 0x0000
 	.short PKMN_MACHAMP

 evoData69:
 	.short LevelUp
 	.short 21
 	.short PKMN_WEEPINBELL

 evoData70:
 	.short ItemUsed
 	.short ITEM_LEAFSTONE
 	.short PKMN_VICTREEBEL

 evoData72:
 	.short LevelUp
 	.short 30
 	.short PKMN_TENTACRUEL

 evoData74:
 	.short LevelUp
 	.short 25
 	.short PKMN_GRAVELER

 evoData75:
 	.short Trade
 	.short 0x0000
 	.short PKMN_GOLEM

 evoData77:
 	.short LevelUp
 	.short 40
 	.short PKMN_RAPIDASH

 evoData81:
 	.short LevelUp
 	.short 30
 	.short PKMN_MAGNETON

 evoData84:
 	.short LevelUp
 	.short 31
 	.short PKMN_DODRIO

 evoData86:
 	.short LevelUp
 	.short 34
 	.short PKMN_DEWGONG

 evoData88:
 	.short LevelUp
 	.short 38
 	.short PKMN_MUK

 evoData90:
 	.short ItemUsed
 	.short ITEM_WATERSTONE
 	.short PKMN_CLOYSTER

 evoData92:
 	.short LevelUp
 	.short 25
 	.short PKMN_HAUNTER

 evoData93:
 	.short Trade
 	.short 0x0000
 	.short PKMN_GENGAR

 evoData95:
 	.short TradeWhileHoldingItem
 	.short ITEM_METALCOAT
 	.short PKMN_STEELIX

 evoData96:
 	.short LevelUp
 	.short 26
 	.short PKMN_HYPNO

 evoData98:
 	.short LevelUp
 	.short 28
 	.short PKMN_KINGLER

 evoData100:
 	.short LevelUp
 	.short 30
 	.short PKMN_ELECTRODE

 evoData102:
 	.short ItemUsed
 	.short ITEM_LEAFSTONE
 	.short PKMN_EXEGGUTOR

 evoData104:
 	.short LevelUp
 	.short 28
 	.short PKMN_MAROWAK

 evoData109:
 	.short LevelUp
 	.short 35
 	.short PKMN_WEEZING

 evoData111:
 	.short LevelUp
 	.short 42
 	.short PKMN_RHYDON

 evoData112:
 	.short TradeWhileHoldingItem
 	.short ITEM_PROTECTOR
 	.short PKMN_RHYPERIOR

 evoData113:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_BLISSEY

 evoData116:
 	.short LevelUp
 	.short 32
 	.short PKMN_SEADRA

 evoData117:
 	.short TradeWhileHoldingItem
 	.short ITEM_DRAGONSCALE
 	.short PKMN_KINGDRA

 evoData118:
 	.short LevelUp
 	.short 33
 	.short PKMN_SEAKING

 evoData120:
 	.short ItemUsed
 	.short ITEM_WATERSTONE
 	.short PKMN_STARMIE

 evoData123:
 	.short TradeWhileHoldingItem
 	.short ITEM_METALCOAT
 	.short PKMN_SCIZOR

 evoData125:
 	.short TradeWhileHoldingItem
 	.short ITEM_ELECTIRISER
 	.short PKMN_ELECTIVIRE

 evoData126:
 	.short TradeWhileHoldingItem
 	.short ITEM_MAGMARISER
 	.short PKMN_MAGMORTAR

 evoData129:
 	.short LevelUp
 	.short 20
 	.short PKMN_GYARADOS

 evoData137:
 	.short TradeWhileHoldingItem
 	.short ITEM_UPGRADE
 	.short PKMN_PORYGON2

 evoData138:
 	.short LevelUp
 	.short 40
 	.short PKMN_OMASTAR

 evoData140:
 	.short LevelUp
 	.short 40
 	.short PKMN_KABUTOPS

 evoData147:
 	.short LevelUp
 	.short 30
 	.short PKMN_DRAGONAIR

 evoData148:
 	.short LevelUp
 	.short 55
 	.short PKMN_DRAGONITE

 evoData152:
 	.short LevelUp
 	.short 16
 	.short PKMN_BAYLEEF

 evoData153:
 	.short LevelUp
 	.short 32
 	.short PKMN_MEGANIUM

 evoData155:
 	.short LevelUp
 	.short 14
 	.short PKMN_QUILAVA

 evoData156:
 	.short LevelUp
 	.short 36
 	.short PKMN_TYPHLOSION

 evoData158:
 	.short LevelUp
 	.short 18
 	.short PKMN_CROCONAW

 evoData159:
 	.short LevelUp
 	.short 36
 	.short PKMN_FERALIGATR

 evoData161:
 	.short LevelUp
 	.short 15
 	.short PKMN_FURRET

 evoData163:
 	.short LevelUp
 	.short 20
 	.short PKMN_NOCTOWL

 evoData165:
 	.short LevelUp
 	.short 18
 	.short PKMN_LEDIAN

 evoData167:
 	.short LevelUp
 	.short 22
 	.short PKMN_ARIADOS

 evoData170:
 	.short LevelUp
 	.short 27
 	.short PKMN_LANTURN

 evoData172:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_PIKACHU

 evoData173:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_CLEFAIRY

 evoData174:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_JIGGLYPUFF

 evoData175:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_TOGETIC

 evoData176:
 	.short ItemUsed
 	.short ITEM_SHINYSTONE
 	.short PKMN_TOGEKISS

 evoData177:
 	.short LevelUp
 	.short 25
 	.short PKMN_XATU

 evoData179:
 	.short LevelUp
 	.short 15
 	.short PKMN_FLAAFFY

 evoData180:
 	.short LevelUp
 	.short 30
 	.short PKMN_AMPHAROS

 evoData183:
 	.short LevelUp
 	.short 18
 	.short PKMN_AZUMARILL

 evoData187:
 	.short LevelUp
 	.short 18
 	.short PKMN_SKIPLOOM

 evoData188:
 	.short LevelUp
 	.short 27
 	.short PKMN_JUMPLUFF

 evoData191:
 	.short ItemUsed
 	.short ITEM_SUNSTONE
 	.short PKMN_SUNFLORA

 evoData194:
 	.short LevelUp
 	.short 20
 	.short PKMN_QUAGSIRE

 evoData198:
 	.short ItemUsed
 	.short ITEM_DUSKSTONE
 	.short PKMN_HONCHKROW

 evoData200:
 	.short ItemUsed
 	.short ITEM_DUSKSTONE
 	.short PKMN_MISMAGIUS

 evoData204:
 	.short LevelUp
 	.short 31
 	.short PKMN_FORRETRESS

 evoData209:
 	.short LevelUp
 	.short 23
 	.short PKMN_GRANBULL

 evoData216:
 	.short LevelUp
 	.short 30
 	.short PKMN_URSARING

 evoData218:
 	.short LevelUp
 	.short 38
 	.short PKMN_MAGCARGO

 evoData220:
 	.short LevelUp
 	.short 33
 	.short PKMN_PILOSWINE

 evoData223:
 	.short LevelUp
 	.short 25
 	.short PKMN_OCTILLERY

 evoData228:
 	.short LevelUp
 	.short 24
 	.short PKMN_HOUNDOOM

 evoData231:
 	.short LevelUp
 	.short 25
 	.short PKMN_DONPHAN

 evoData233:
 	.short TradeWhileHoldingItem
 	.short ITEM_DUBIOUSDISC
 	.short PKMN_PORYGON_Z

 evoData238:
 	.short LevelUp
 	.short 30
 	.short PKMN_JYNX

 evoData239:
 	.short LevelUp
 	.short 30
 	.short PKMN_ELECTABUZZ

 evoData240:
 	.short LevelUp
 	.short 30
 	.short PKMN_MAGMAR

 evoData246:
 	.short LevelUp
 	.short 30
 	.short PKMN_PUPITAR

 evoData247:
 	.short LevelUp
 	.short 55
 	.short PKMN_TYRANITAR

 evoData252:
 	.short LevelUp
 	.short 16
 	.short PKMN_GROVYLE

 evoData253:
 	.short LevelUp
 	.short 32
 	.short PKMN_SCEPTILE

 evoData255:
 	.short LevelUp
 	.short 16
 	.short PKMN_COMBUSKEN

 evoData256:
 	.short LevelUp
 	.short 36
 	.short PKMN_BLAZIKEN

 evoData258:
 	.short LevelUp
 	.short 16
 	.short PKMN_MARSHTOMP

 evoData259:
 	.short LevelUp
 	.short 36
 	.short PKMN_SWAMPERT

 evoData261:
 	.short LevelUp
 	.short 18
 	.short PKMN_MIGHTYENA

 evoData263:
 	.short LevelUp
 	.short 20
 	.short PKMN_LINOONE

 evoData266:
 	.short LevelUp
 	.short 10
 	.short PKMN_BEAUTIFLY

 evoData268:
 	.short LevelUp
 	.short 10
 	.short PKMN_DUSTOX

 evoData270:
 	.short LevelUp
 	.short 14
 	.short PKMN_LOMBRE

 evoData271:
 	.short ItemUsed
 	.short ITEM_WATERSTONE
 	.short PKMN_LUDICOLO

 evoData273:
 	.short LevelUp
 	.short 14
 	.short PKMN_NUZLEAF

 evoData274:
 	.short ItemUsed
 	.short ITEM_LEAFSTONE
 	.short PKMN_SHIFTRY

 evoData276:
 	.short LevelUp
 	.short 22
 	.short PKMN_SWELLOW

 evoData278:
 	.short LevelUp
 	.short 25
 	.short PKMN_PELIPPER

 evoData280:
 	.short LevelUp
 	.short 20
 	.short PKMN_KIRLIA

 evoData283:
 	.short LevelUp
 	.short 22
 	.short PKMN_MASQUERAIN

 evoData285:
 	.short LevelUp
 	.short 23
 	.short PKMN_BRELOOM

 evoData287:
 	.short LevelUp
 	.short 18
 	.short PKMN_VIGOROTH

 evoData288:
 	.short LevelUp
 	.short 36
 	.short PKMN_SLAKING

 evoData293:
 	.short LevelUp
 	.short 20
 	.short PKMN_LOUDRED

 evoData294:
 	.short LevelUp
 	.short 40
 	.short PKMN_EXPLOUD

 evoData296:
 	.short LevelUp
 	.short 24
 	.short PKMN_HARIYAMA

 evoData298:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_MARILL

 evoData300:
 	.short ItemUsed
 	.short ITEM_MOONSTONE
 	.short PKMN_DELCATTY

 evoData304:
 	.short LevelUp
 	.short 32
 	.short PKMN_LAIRON

 evoData305:
 	.short LevelUp
 	.short 42
 	.short PKMN_AGGRON

 evoData307:
 	.short LevelUp
 	.short 37
 	.short PKMN_MEDICHAM

 evoData309:
 	.short LevelUp
 	.short 26
 	.short PKMN_MANECTRIC

 evoData315:
 	.short ItemUsed
 	.short ITEM_SHINYSTONE
 	.short PKMN_ROSERADE

 evoData316:
 	.short LevelUp
 	.short 26
 	.short PKMN_SWALOT

 evoData318:
 	.short LevelUp
 	.short 30
 	.short PKMN_SHARPEDO

 evoData320:
 	.short LevelUp
 	.short 40
 	.short PKMN_WAILORD

 evoData322:
 	.short LevelUp
 	.short 33
 	.short PKMN_CAMERUPT

 evoData325:
 	.short LevelUp
 	.short 32
 	.short PKMN_GRUMPIG

 evoData328:
 	.short LevelUp
 	.short 35
 	.short PKMN_VIBRAVA

 evoData329:
 	.short LevelUp
 	.short 45
 	.short PKMN_FLYGON

 evoData331:
 	.short LevelUp
 	.short 32
 	.short PKMN_CACTURNE

 evoData333:
 	.short LevelUp
 	.short 35
 	.short PKMN_ALTARIA

 evoData339:
 	.short LevelUp
 	.short 30
 	.short PKMN_WHISCASH

 evoData341:
 	.short LevelUp
 	.short 30
 	.short PKMN_CRAWDAUNT

 evoData343:
 	.short LevelUp
 	.short 36
 	.short PKMN_CLAYDOL

 evoData345:
 	.short LevelUp
 	.short 40
 	.short PKMN_CRADILY

 evoData347:
 	.short LevelUp
 	.short 40
 	.short PKMN_ARMALDO

 evoData353:
 	.short LevelUp
 	.short 37
 	.short PKMN_BANETTE

 evoData355:
 	.short LevelUp
 	.short 37
 	.short PKMN_DUSCLOPS

 evoData356:
 	.short TradeWhileHoldingItem
 	.short ITEM_REAPERCLOTH
 	.short PKMN_DUSKNOIR

 evoData360:
 	.short LevelUp
 	.short 15
 	.short PKMN_WOBBUFFET

 evoData363:
 	.short LevelUp
 	.short 32
 	.short PKMN_SEALEO

 evoData364:
 	.short LevelUp
 	.short 44
 	.short PKMN_WALREIN

 evoData371:
 	.short LevelUp
 	.short 30
 	.short PKMN_SHELGON

 evoData372:
 	.short LevelUp
 	.short 50
 	.short PKMN_SALAMENCE

 evoData374:
 	.short LevelUp
 	.short 20
 	.short PKMN_METANG

 evoData375:
 	.short LevelUp
 	.short 45
 	.short PKMN_METAGROSS

 evoData387:
 	.short LevelUp
 	.short 18
 	.short PKMN_GROTLE

 evoData388:
 	.short LevelUp
 	.short 32
 	.short PKMN_TORTERRA

 evoData390:
 	.short LevelUp
 	.short 14
 	.short PKMN_MONFERNO

 evoData391:
 	.short LevelUp
 	.short 36
 	.short PKMN_INFERNAPE

 evoData393:
 	.short LevelUp
 	.short 16
 	.short PKMN_PRINPLUP

 evoData394:
 	.short LevelUp
 	.short 36
 	.short PKMN_EMPOLEON

 evoData396:
 	.short LevelUp
 	.short 14
 	.short PKMN_STARAVIA

 evoData397:
 	.short LevelUp
 	.short 34
 	.short PKMN_STARAPTOR

 evoData399:
 	.short LevelUp
 	.short 15
 	.short PKMN_BIBAREL

 evoData401:
 	.short LevelUp
 	.short 10
 	.short PKMN_KRICKETUNE

 evoData403:
 	.short LevelUp
 	.short 15
 	.short PKMN_LUXIO

 evoData404:
 	.short LevelUp
 	.short 30
 	.short PKMN_LUXRAY

 evoData408:
 	.short LevelUp
 	.short 30
 	.short PKMN_RAMPARDOS

 evoData410:
 	.short LevelUp
 	.short 30
 	.short PKMN_BASTIODON

 evoData418:
 	.short LevelUp
 	.short 26
 	.short PKMN_FLOATZEL

 evoData420:
 	.short LevelUp
 	.short 25
 	.short PKMN_CHERRIM

 evoData422:
 	.short LevelUp
 	.short 30
 	.short PKMN_GASTRODON

 evoData425:
 	.short LevelUp
 	.short 28
 	.short PKMN_DRIFBLIM

 evoData427:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_LOPUNNY

 evoData431:
 	.short LevelUp
 	.short 38
 	.short PKMN_PURUGLY

 evoData434:
 	.short LevelUp
 	.short 34
 	.short PKMN_SKUNTANK

 evoData436:
 	.short LevelUp
 	.short 33
 	.short PKMN_BRONZONG

 evoData443:
 	.short LevelUp
 	.short 24
 	.short PKMN_GABITE

 evoData444:
 	.short LevelUp
 	.short 48
 	.short PKMN_GARCHOMP

 evoData446:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_SNORLAX

 evoData449:
 	.short LevelUp
 	.short 34
 	.short PKMN_HIPPOWDON

 evoData451:
 	.short LevelUp
 	.short 40
 	.short PKMN_DRAPION

 evoData453:
 	.short LevelUp
 	.short 37
 	.short PKMN_TOXICROAK

 evoData456:
 	.short LevelUp
 	.short 31
 	.short PKMN_LUMINEON

 evoData459:
 	.short LevelUp
 	.short 40
 	.short PKMN_ABOMASNOW

 evoData495:
 	.short LevelUp
 	.short 17
 	.short PKMN_SERVINE

 evoData496:
 	.short LevelUp
 	.short 36
 	.short PKMN_SERPERIOR

 evoData498:
 	.short LevelUp
 	.short 17
 	.short PKMN_PIGNITE

 evoData499:
 	.short LevelUp
 	.short 36
 	.short PKMN_EMBOAR

 evoData501:
 	.short LevelUp
 	.short 17
 	.short PKMN_DEWOTT

 evoData502:
 	.short LevelUp
 	.short 36
 	.short PKMN_SAMUROTT

 evoData504:
 	.short LevelUp
 	.short 20
 	.short PKMN_WATCHOG

 evoData506:
 	.short LevelUp
 	.short 16
 	.short PKMN_HERDIER

 evoData507:
 	.short LevelUp
 	.short 32
 	.short PKMN_STOUTLAND

 evoData509:
 	.short LevelUp
 	.short 20
 	.short PKMN_LIEPARD

 evoData511:
 	.short ItemUsed
 	.short ITEM_LEAFSTONE
 	.short PKMN_SIMISAGE

 evoData513:
 	.short ItemUsed
 	.short ITEM_FIRESTONE
 	.short PKMN_SIMISEAR

 evoData515:
 	.short ItemUsed
 	.short ITEM_WATERSTONE
 	.short PKMN_SIMIPOUR

 evoData517:
 	.short ItemUsed
 	.short ITEM_MOONSTONE
 	.short PKMN_MUSHARNA

 evoData519:
 	.short LevelUp
 	.short 21
 	.short PKMN_TRANQUIL

 evoData520:
 	.short LevelUp
 	.short 32
 	.short PKMN_UNFEZANT

 evoData522:
 	.short LevelUp
 	.short 27
 	.short PKMN_ZEBSTRIKA

 evoData524:
 	.short LevelUp
 	.short 25
 	.short PKMN_BOLDORE

 evoData525:
 	.short Trade
 	.short 0x0000
 	.short PKMN_GIGALITH

 evoData527:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_SWOOBAT

 evoData529:
 	.short LevelUp
 	.short 31
 	.short PKMN_EXCADRILL

 evoData532:
 	.short LevelUp
 	.short 25
 	.short PKMN_GURDURR

 evoData533:
 	.short Trade
 	.short 0x0000
 	.short PKMN_CONKELDURR

 evoData535:
 	.short LevelUp
 	.short 25
 	.short PKMN_PALPITOAD

 evoData536:
 	.short LevelUp
 	.short 36
 	.short PKMN_SEISMITOAD

 evoData540:
 	.short LevelUp
 	.short 20
 	.short PKMN_SWADLOON

 evoData541:
 	.short MaxHappiness
 	.short 0x0000
 	.short PKMN_LEAVANNY

 evoData543:
 	.short LevelUp
 	.short 22
 	.short PKMN_WHIRLIPEDE

 evoData544:
 	.short LevelUp
 	.short 30
 	.short PKMN_SCOLIPEDE

 evoData546:
 	.short ItemUsed
 	.short ITEM_SUNSTONE
 	.short PKMN_WHIMSICOTT

 evoData548:
 	.short ItemUsed
 	.short ITEM_SUNSTONE
 	.short PKMN_LILLIGANT

 evoData551:
 	.short LevelUp
 	.short 29
 	.short PKMN_KROKOROK

 evoData552:
 	.short LevelUp
 	.short 40
 	.short PKMN_KROOKODILE

 evoData554:
 	.short LevelUp
 	.short 35
 	.short PKMN_DARMANITAN

 evoData557:
 	.short LevelUp
 	.short 34
 	.short PKMN_CRUSTLE

 evoData559:
 	.short LevelUp
 	.short 39
 	.short PKMN_SCRAFTY

 evoData562:
 	.short LevelUp
 	.short 34
 	.short PKMN_COFAGRIGUS

 evoData564:
 	.short LevelUp
 	.short 37
 	.short PKMN_CARRACOSTA

 evoData566:
 	.short LevelUp
 	.short 37
 	.short PKMN_ARCHEOPS

 evoData568:
 	.short LevelUp
 	.short 36
 	.short PKMN_GARBODOR

 evoData570:
 	.short LevelUp
 	.short 30
 	.short PKMN_ZOROARK

 evoData572:
 	.short ItemUsed
 	.short ITEM_SHINYSTONE
 	.short PKMN_CINCCINO

 evoData574:
 	.short LevelUp
 	.short 32
 	.short PKMN_GOTHORITA

 evoData575:
 	.short LevelUp
 	.short 41
 	.short PKMN_GOTHITELLE

 evoData577:
 	.short LevelUp
 	.short 32
 	.short PKMN_DUOSION

 evoData578:
 	.short LevelUp
 	.short 41
 	.short PKMN_REUNICLUS

 evoData580:
 	.short LevelUp
 	.short 35
 	.short PKMN_SWANNA

 evoData582:
 	.short LevelUp
 	.short 35
 	.short PKMN_VANILLISH

 evoData583:
 	.short LevelUp
 	.short 47
 	.short PKMN_VANILLUXE

 evoData585:
 	.short LevelUp
 	.short 34
 	.short PKMN_SAWSBUCK

 evoData588:
 	.short TradeWithSpecies
 	.short PKMN_SHELMET
 	.short PKMN_ESCAVALIER

 evoData590:
 	.short LevelUp
 	.short 39
 	.short PKMN_AMOONGUSS

 evoData592:
 	.short LevelUp
 	.short 40
 	.short PKMN_JELLICENT

 evoData595:
 	.short LevelUp
 	.short 36
 	.short PKMN_GALVANTULA

 evoData597:
 	.short LevelUp
 	.short 40
 	.short PKMN_FERROTHORN

 evoData599:
 	.short LevelUp
 	.short 38
 	.short PKMN_KLANG

 evoData600:
 	.short LevelUp
 	.short 49
 	.short PKMN_KLINKLANG

 evoData602:
 	.short LevelUp
 	.short 39
 	.short PKMN_EELEKTRIK

 evoData603:
 	.short ItemUsed
 	.short ITEM_THUNDERSTONE
 	.short PKMN_EELEKTROSS

 evoData605:
 	.short LevelUp
 	.short 42
 	.short PKMN_BEHEEYEM

 evoData607:
 	.short LevelUp
 	.short 41
 	.short PKMN_LAMPENT

 evoData608:
 	.short ItemUsed
 	.short ITEM_DUSKSTONE
 	.short PKMN_CHANDELURE

 evoData610:
 	.short LevelUp
 	.short 38
 	.short PKMN_FRAXURE

 evoData611:
 	.short LevelUp
 	.short 48
 	.short PKMN_HAXORUS

 evoData613:
 	.short LevelUp
 	.short 37
 	.short PKMN_BEARTIC

 evoData616:
 	.short TradeWithSpecies
 	.short PKMN_KARRABLAST
 	.short PKMN_ACCELGOR

 evoData619:
 	.short LevelUp
 	.short 50
 	.short PKMN_MIENSHAO

 evoData622:
 	.short LevelUp
 	.short 43
 	.short PKMN_GOLURK

 evoData624:
 	.short LevelUp
 	.short 52
 	.short PKMN_BISHARP

 evoData627:
 	.short LevelUp
 	.short 54
 	.short PKMN_BRAVIARY

 evoData629:
 	.short LevelUp
 	.short 54
 	.short PKMN_MANDIBUZZ

 evoData633:
 	.short LevelUp
 	.short 50
 	.short PKMN_ZWEILOUS

 evoData634:
 	.short LevelUp
 	.short 64
 	.short PKMN_HYDREIGON

 evoData636:
 	.short LevelUp
 	.short 59
 	.short PKMN_VOLCARONA

 evoData650:
 	.short LevelUp
 	.short 16
 	.short PKMN_QUILLADIN

 evoData651:
 	.short LevelUp
 	.short 36
 	.short PKMN_CHESNAUGHT

 evoData653:
 	.short LevelUp
 	.short 16
 	.short PKMN_BRAIXEN

 evoData654:
 	.short LevelUp
 	.short 36
 	.short PKMN_DELPHOX

 evoData656:
 	.short LevelUp
 	.short 16
 	.short PKMN_FROGADIER

 evoData657:
 	.short LevelUp
 	.short 36
 	.short PKMN_GRENINJA

 evoData659:
 	.short LevelUp
 	.short 20
 	.short PKMN_DIGGERSBY

 evoData661:
 	.short LevelUp
 	.short 17
 	.short PKMN_FLETCHINDER

 evoData662:
 	.short LevelUp
 	.short 35
 	.short PKMN_TALONFLAME

 evoData664:
 	.short LevelUp
 	.short 9
 	.short PKMN_SPEWPA

 evoData665:
 	.short LevelUp
 	.short 12
 	.short PKMN_VIVILLION

 evoData667:
 	.short LevelUp
 	.short 35
 	.short PKMN_PYROAR

 evoData669:
 	.short LevelUp
 	.short 19
 	.short PKMN_FLOETTE

 evoData670:
 	.short ItemUsed
 	.short ITEM_SHINYSTONE
 	.short PKMN_FLORGES

 evoData672:
 	.short LevelUp
 	.short 32
 	.short PKMN_GOGOAT

 evoData677:
 	.short LevelUp
 	.short 25
 	.short PKMN_MEOWSTIC

 evoData679:
 	.short LevelUp
 	.short 35
 	.short PKMN_DOUBLADE

 evoData680:
 	.short ItemUsed
 	.short ITEM_DUSKSTONE
 	.short PKMN_AEGISLASH

 evoData682:
 	.short TradeWhileHoldingItem
 	.short ITEM_SACHET
 	.short PKMN_AROMATISSE

 evoData684:
 	.short TradeWhileHoldingItem
 	.short ITEM_WHIPPEDDREAM
 	.short PKMN_SLURPUFF

 evoData686:
 	.short LevelUp
 	.short 30
 	.short PKMN_MALAMAR

 evoData688:
 	.short LevelUp
 	.short 39
 	.short PKMN_BARBARACLE

 evoData690:
 	.short LevelUp
 	.short 48
 	.short PKMN_DRAGALGE

 evoData692:
 	.short LevelUp
 	.short 37
 	.short PKMN_CLAWITZER

 evoData694:
 	.short ItemUsed
 	.short ITEM_SUNSTONE
 	.short PKMN_HELIOLISK

 evoData704:
 	.short LevelUp
 	.short 40
 	.short PKMN_SLIGGOO

 evoData708:
 	.short Trade
 	.short 0x0000
 	.short PKMN_TREVENANT

 evoData710:
 	.short Trade
 	.short 0x0000
 	.short PKMN_GOURGEIST

 evoData712:
 	.short LevelUp
 	.short 37
 	.short PKMN_AVALUGG

 evoData714:
 	.short LevelUp
 	.short 48
 	.short PKMN_NOIVERN

 	.align 4

 evoData44:
 	.short ItemUsed
 	.short ITEM_LEAFSTONE
 	.short PKMN_VILEPLUME
 	.short 0x0000
 	.short ItemUsed
 	.short ITEM_SUNSTONE
 	.short PKMN_BELLOSSOM
 	.short 0x0000

 evoData61:
 	.short ItemUsed
 	.short ITEM_WATERSTONE
 	.short PKMN_POLIWRATH
 	.short 0x0000
 	.short TradeWhileHoldingItem
 	.short ITEM_KINGSROCK
 	.short PKMN_POLITOED
 	.short 0x0000

 evoData79:
 	.short LevelUp
 	.short 37
 	.short PKMN_SLOWBRO
 	.short 0x0000
 	.short TradeWhileHoldingItem
 	.short ITEM_KINGSROCK
 	.short PKMN_SLOWKING
 	.short 0x0000

 evoData108:
 	.short LevelUpWithKnownMove
 	.short 0x0000
 	.short PKMN_LICKILICKY
 	.short MOVE_ROLLOUT

 evoData114:
 	.short LevelUpWithKnownMove
 	.short 0x0000
 	.short PKMN_TANGROWTH
 	.short MOVE_ANCIENTPOWER

 evoData133:
 	.short LvlUpWithKnownMoveType
 	.short 0x0000
 	.short PKMN_SYLVEON
 	.short Type_Fairy
 	.short LevelUpInSpecificMap
 	.short 0x0000
 	.short PKMN_GLACEON
 	.byte 0x00
 	.byte 0x00
 	.short LevelUpInSpecificMap
 	.short 0x0000
 	.short PKMN_LEAFEON
 	.byte 0x00
 	.byte 0x00
 	.short MaxHappinessTimeDep
 	.short 0x0000
 	.short PKMN_UMBREON
 	.short TIME_NIGHT
 	.short MaxHappinessTimeDep
 	.short 0x0000
 	.short PKMN_ESPEON
 	.short TIME_DAY
 	.short ItemUsed
 	.short ITEM_WATERSTONE
 	.short PKMN_VAPOREON
 	.short 0x0000
 	.short ItemUsed
 	.short ITEM_FIRESTONE
 	.short PKMN_FLAREON
 	.short 0x0000
 	.short ItemUsed
 	.short ITEM_THUNDERSTONE
 	.short PKMN_JOLTEON
 	.short 0x0000

 evoData190:
 	.short LevelUpWithKnownMove
 	.short 0x0000
 	.short PKMN_AMBIPOM
 	.short MOVE_DOUBLEHIT

 evoData193:
 	.short LevelUpWithKnownMove
 	.short 0x0000
 	.short PKMN_YANMEGA
 	.short MOVE_ANCIENTPOWER

 evoData207:
 	.short LvlUpWithHldItmTimeDep
 	.short 0x0000
 	.short PKMN_GLISCOR
 	.short (ITEM_RAZORFANG + (TIME_NIGHT * 0x8000))

 evoData215:
 	.short LvlUpWithHldItmTimeDep
 	.short 0x0000
 	.short PKMN_WEAVILE
 	.short (ITEM_RAZORCLAW + (TIME_NIGHT * 0x8000))

 evoData221:
 	.short LevelUpWithKnownMove
 	.short 0x0000
 	.short PKMN_MAMOSWINE
 	.short MOVE_ANCIENTPOWER

 evoData236:
 	.short LevelUpWithStatBalance
 	.byte 20
 	.byte COMPARE_A_GREATER_B
 	.short PKMN_HITMONLEE
 	.byte STAT_ATTACK
 	.byte STAT_DEFENCE
 	.short LevelUpWithStatBalance
 	.byte 20
 	.byte COMPARE_A_LESS_B
 	.short PKMN_HITMONCHAN
 	.byte STAT_ATTACK
 	.byte STAT_DEFENCE
 	.short LevelUpWithStatBalance
 	.byte 20
 	.byte COMPARE_EQUALS
 	.short PKMN_HITMONTOP
 	.byte STAT_ATTACK
 	.byte STAT_DEFENCE

 evoData265:
 	.short LevelUpWithPersonality
 	.short 7
 	.short PKMN_SILCOON
 	.short PKMN_CASCOON

 evoData281:
 	.short LevelUp
 	.short 30
 	.short PKMN_GARDEVOIR
 	.short 0x0000
 	.short ItemWithConditionUsed
 	.short ITEM_DAWNSTONE
 	.short PKMN_GALLADE
 	.byte 0x00
 	.byte 0x00

 evoData299:
 	.short LevelUpInMapName
 	.short 0x0000
 	.short PKMN_PROBOPASS
 	.short 0x0000

 evoData349:
 	.short MaxBeauty
 	.short 0x0000
 	.short PKMN_MILOTIC
 	.short 0x0000
 	.short TradeWhileHoldingItem
 	.short ITEM_PRISMSCALE
 	.short PKMN_MILOTIC
 	.short 0x0000

 evoData361:
 	.short LevelUp
 	.short 42
 	.short PKMN_GLALIE
 	.short 0x0000
 	.short ItemWithConditionUsed
 	.short ITEM_DAWNSTONE
 	.short PKMN_FROSLASS
 	.byte 0x00
 	.byte 0x01

 evoData366:
 	.short TradeWhileHoldingItem
 	.short ITEM_DEEPSEASCALE
 	.short PKMN_GOREBYSS
 	.short 0x0000
 	.short TradeWhileHoldingItem
 	.short ITEM_DEEPSEATOOTH
 	.short PKMN_HUNTAIL
 	.short 0x0000

 evoData406:
 	.short MaxHappinessTimeDep
 	.short 0x0000
 	.short PKMN_ROSERADE
 	.short TIME_DAY

 evoData412:
 	.short LevelUpGender
 	.short 20
 	.short PKMN_WORMADAM
 	.short GENDER_FEMALE
 	.short LevelUpGender
 	.short 20
 	.short PKMN_MOTHIM
 	.short GENDER_MALE

 evoData415:
 	.short LevelUpGender
 	.short 21
 	.short PKMN_VESPIQUEN
 	.short GENDER_FEMALE

 evoData433:
 	.short MaxHappinessTimeDep
 	.short 0x0000
 	.short PKMN_CHIMECHO
 	.short TIME_NIGHT

 evoData438:
 	.short LevelUpWithKnownMove
 	.short 0x0000
 	.short PKMN_SUDOWOODO
 	.short MOVE_MIMIC

 evoData439:
 	.short LevelUpWithKnownMove
 	.short 0x0000
 	.short PKMN_MR_MIME
 	.short MOVE_MIMIC

 evoData440:
 	.short LvlUpWithHldItmTimeDep
 	.short 0x0000
 	.short PKMN_CHANSEY
 	.short (ITEM_OVALSTONE + (TIME_DAY * 0x8000))

 evoData447:
 	.short MaxHappinessTimeDep
 	.short 0x0000
 	.short PKMN_LUCARIO
 	.short TIME_DAY

 evoData458:
 	.short LvlUpWithSpecInParty
 	.short 0x0000
 	.short PKMN_MANTINE
 	.short PKMN_REMORAID

 evoData674:
 	.short LevelUpWithTypeInParty
 	.short 32
 	.short PKMN_PANGORO
 	.short Type_Dark

 evoData696:
 	.short LevelUpTimeDependent
 	.short 39
 	.short PKMN_TYRANTRUM
 	.short TIME_DAY

 evoData698:
 	.short LevelUpTimeDependent
 	.short 39
 	.short PKMN_AURORUS
 	.short TIME_NIGHT

 evoData705:
 	.short LvlWithWeatherOnOworld
 	.short 50
 	.short PKMN_GOODRA
 	.short WEATHER_RAIN

 evoData:
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData1
	.word		1
	.word		evoData2
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData4
	.word		1
	.word		evoData5
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData7
	.word		1
	.word		evoData8
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData10
	.word		1
	.word		evoData11
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData13
	.word		1
	.word		evoData14
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData16
	.word		1
	.word		evoData17
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData19
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData21
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData23
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData25
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData27
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData29
	.word		1
	.word		evoData30
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData32
	.word		1
	.word		evoData33
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData35
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData37
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData39
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData41
	.word		1
	.word		evoData42
	.word		1
	.word		evoData43
	.word		2
	.word		evoData44
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData46
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData48
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData50
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData52
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData54
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData56
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData58
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData60
	.word		2
	.word		evoData61
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData63
	.word		1
	.word		evoData64
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData66
	.word		1
	.word		evoData67
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData69
	.word		1
	.word		evoData70
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData72
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData74
	.word		1
	.word		evoData75
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData77
	.word		0
	.word		0x00000000
	.word		2
	.word		evoData79
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData81
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData84
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData86
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData88
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData90
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData92
	.word		1
	.word		evoData93
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData95
	.word		1
	.word		evoData96
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData98
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData100
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData102
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData104
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData108
	.word		1
	.word		evoData109
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData111
	.word		1
	.word		evoData112
	.word		1
	.word		evoData113
	.word		1
	.word		evoData114
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData116
	.word		1
	.word		evoData117
	.word		1
	.word		evoData118
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData120
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData123
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData125
	.word		1
	.word		evoData126
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData129
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		8
	.word		evoData133
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData137
	.word		1
	.word		evoData138
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData140
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData147
	.word		1
	.word		evoData148
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData152
	.word		1
	.word		evoData153
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData155
	.word		1
	.word		evoData156
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData158
	.word		1
	.word		evoData159
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData161
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData163
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData165
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData167
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData170
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData172
	.word		1
	.word		evoData173
	.word		1
	.word		evoData174
	.word		1
	.word		evoData175
	.word		1
	.word		evoData176
	.word		1
	.word		evoData177
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData179
	.word		1
	.word		evoData180
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData183
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData187
	.word		1
	.word		evoData188
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData190
	.word		1
	.word		evoData191
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData193
	.word		1
	.word		evoData194
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData198
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData200
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData204
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData207
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData209
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData215
	.word		1
	.word		evoData216
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData218
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData220
	.word		1
	.word		evoData221
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData223
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData228
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData231
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData233
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		3
	.word		evoData236
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData238
	.word		1
	.word		evoData239
	.word		1
	.word		evoData240
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData246
	.word		1
	.word		evoData247
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData252
	.word		1
	.word		evoData253
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData255
	.word		1
	.word		evoData256
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData258
	.word		1
	.word		evoData259
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData261
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData263
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData265
	.word		1
	.word		evoData266
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData268
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData270
	.word		1
	.word		evoData271
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData273
	.word		1
	.word		evoData274
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData276
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData278
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData280
	.word		2
	.word		evoData281
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData283
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData285
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData287
	.word		1
	.word		evoData288
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData293
	.word		1
	.word		evoData294
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData296
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData298
	.word		1
	.word		evoData299
	.word		1
	.word		evoData300
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData304
	.word		1
	.word		evoData305
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData307
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData309
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData315
	.word		1
	.word		evoData316
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData318
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData320
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData322
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData325
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData328
	.word		1
	.word		evoData329
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData331
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData333
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData339
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData341
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData343
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData345
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData347
	.word		0
	.word		0x00000000
	.word		2
	.word		evoData349
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData353
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData355
	.word		1
	.word		evoData356
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData360
	.word		2
	.word		evoData361
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData363
	.word		1
	.word		evoData364
	.word		0
	.word		0x00000000
	.word		2
	.word		evoData366
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData371
	.word		1
	.word		evoData372
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData374
	.word		1
	.word		evoData375
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData387
	.word		1
	.word		evoData388
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData390
	.word		1
	.word		evoData391
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData393
	.word		1
	.word		evoData394
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData396
	.word		1
	.word		evoData397
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData399
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData401
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData403
	.word		1
	.word		evoData404
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData406
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData408
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData410
	.word		0
	.word		0x00000000
	.word		2
	.word		evoData412
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData415
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData418
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData420
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData422
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData425
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData427
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData431
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData433
	.word		1
	.word		evoData434
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData436
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData438
	.word		1
	.word		evoData439
	.word		1
	.word		evoData440
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData443
	.word		1
	.word		evoData444
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData446
	.word		1
	.word		evoData447
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData449
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData451
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData453
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData456
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData458
	.word		1
	.word		evoData459
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData495
	.word		1
	.word		evoData496
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData498
	.word		1
	.word		evoData499
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData501
	.word		1
	.word		evoData502
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData504
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData506
	.word		1
	.word		evoData507
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData509
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData511
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData513
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData515
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData517
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData519
	.word		1
	.word		evoData520
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData522
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData524
	.word		1
	.word		evoData525
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData527
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData529
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData532
	.word		1
	.word		evoData533
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData535
	.word		1
	.word		evoData536
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData540
	.word		1
	.word		evoData541
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData543
	.word		1
	.word		evoData544
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData546
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData548
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData551
	.word		1
	.word		evoData552
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData554
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData557
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData559
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData562
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData564
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData566
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData568
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData570
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData572
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData574
	.word		1
	.word		evoData575
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData577
	.word		1
	.word		evoData578
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData580
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData582
	.word		1
	.word		evoData583
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData585
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData588
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData590
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData592
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData595
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData597
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData599
	.word		1
	.word		evoData600
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData602
	.word		1
	.word		evoData603
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData605
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData607
	.word		1
	.word		evoData608
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData610
	.word		1
	.word		evoData611
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData613
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData616
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData619
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData622
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData624
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData627
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData629
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData633
	.word		1
	.word		evoData634
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData636
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData650
	.word		1
	.word		evoData651
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData653
	.word		1
	.word		evoData654
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData656
	.word		1
	.word		evoData657
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData659
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData661
	.word		1
	.word		evoData662
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData664
	.word		1
	.word		evoData665
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData667
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData669
	.word		1
	.word		evoData670
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData672
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData674
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData677
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData679
	.word		1
	.word		evoData680
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData682
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData684
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData686
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData688
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData690
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData692
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData694
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData696
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData698
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData704
	.word		1
	.word		evoData705
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData708
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData710
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData712
	.word		0
	.word		0x00000000
	.word		1
	.word		evoData714
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000
	.word		0
	.word		0x00000000

pokemonInternalBaseData0_0:
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.byte		Type_None
	.byte		Type_None
	.word		0x00000000
	.byte		Ability_NoAbility
	.byte		Ability_NoAbility
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0000
	.short		0x0000
	.byte		0x00
	.byte		0x00

pointerSet000:
	.word		pokemonInternalBaseData0_0

pokemonInternalBaseData1_0:
	.byte		0x2D
	.byte		0x31
	.byte		0x31
	.byte		0x2D
	.byte		0x41
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Chlorophyll
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0040
	.byte		0x46
	.byte		0x2D

pointerSet001:
	.word		pokemonInternalBaseData1_0

pokemonInternalBaseData2_0:
	.byte		0x3C
	.byte		0x3E
	.byte		0x3F
	.byte		0x3C
	.byte		0x50
	.byte		0x50
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Chlorophyll
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0500
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet002:
	.word		pokemonInternalBaseData2_0

pokemonInternalBaseData3_0:
	.byte		0x50
	.byte		0x52
	.byte		0x53
	.byte		0x50
	.byte		0x64
	.byte		0x64
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Chlorophyll
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0600
	.short		0x00EC
	.byte		0x46
	.byte		0x2D

pointerSet003:
	.word		pokemonInternalBaseData3_0

pokemonInternalBaseData4_0:
	.byte		0x27
	.byte		0x34
	.byte		0x2B
	.byte		0x41
	.byte		0x3C
	.byte		0x32
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Solar_Power
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003E
	.byte		0x46
	.byte		0x2D

pointerSet004:
	.word		pokemonInternalBaseData4_0

pokemonInternalBaseData5_0:
	.byte		0x3A
	.byte		0x40
	.byte		0x3A
	.byte		0x50
	.byte		0x50
	.byte		0x41
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Solar_Power
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet005:
	.word		pokemonInternalBaseData5_0

pokemonInternalBaseData6_0:
	.byte		0x4E
	.byte		0x54
	.byte		0x4E
	.byte		0x64
	.byte		0x6D
	.byte		0x55
	.byte		Type_Fire
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Solar_Power
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00F0
	.byte		0x46
	.byte		0x2D

pointerSet006:
	.word		pokemonInternalBaseData6_0

pokemonInternalBaseData7_0:
	.byte		0x2C
	.byte		0x30
	.byte		0x41
	.byte		0x2B
	.byte		0x32
	.byte		0x40
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003F
	.byte		0x46
	.byte		0x2D

pointerSet007:
	.word		pokemonInternalBaseData7_0

pokemonInternalBaseData8_0:
	.byte		0x3B
	.byte		0x3F
	.byte		0x50
	.byte		0x3A
	.byte		0x41
	.byte		0x50
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet008:
	.word		pokemonInternalBaseData8_0

pokemonInternalBaseData9_0:
	.byte		0x4F
	.byte		0x53
	.byte		0x64
	.byte		0x4E
	.byte		0x55
	.byte		0x69
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x00EF
	.byte		0x46
	.byte		0x2D

pointerSet009:
	.word		pokemonInternalBaseData9_0

pokemonInternalBaseData10_0:
	.byte		0x2D
	.byte		0x1E
	.byte		0x23
	.byte		0x2D
	.byte		0x14
	.byte		0x14
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Shield_Dust
	.byte		Ability_Shield_Dust
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0027
	.byte		0x46
	.byte		0xFF

pointerSet010:
	.word		pokemonInternalBaseData10_0

pokemonInternalBaseData11_0:
	.byte		0x32
	.byte		0x14
	.byte		0x37
	.byte		0x1E
	.byte		0x19
	.byte		0x19
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0048
	.byte		0x46
	.byte		0x78

pointerSet011:
	.word		pokemonInternalBaseData11_0

pokemonInternalBaseData12_0:
	.byte		0x3C
	.byte		0x2D
	.byte		0x32
	.byte		0x46
	.byte		0x50
	.byte		0x50
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Compound_Eyes
	.byte		Ability_Compound_Eyes
	.byte		Ability_Tinted_Lens
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0600
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet012:
	.word		pokemonInternalBaseData12_0

pokemonInternalBaseData13_0:
	.byte		0x28
	.byte		0x23
	.byte		0x1E
	.byte		0x32
	.byte		0x14
	.byte		0x14
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Shield_Dust
	.byte		Ability_Shield_Dust
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0027
	.byte		0x46
	.byte		0xFF

pointerSet013:
	.word		pokemonInternalBaseData13_0

pokemonInternalBaseData14_0:
	.byte		0x2D
	.byte		0x19
	.byte		0x32
	.byte		0x23
	.byte		0x19
	.byte		0x19
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0048
	.byte		0x46
	.byte		0x78

pointerSet014:
	.word		pokemonInternalBaseData14_0

pokemonInternalBaseData15_0:
	.byte		0x41
	.byte		0x50
	.byte		0x28
	.byte		0x4B
	.byte		0x2D
	.byte		0x50
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Swarm
	.byte		Ability_Sniper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0408
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet015:
	.word		pokemonInternalBaseData15_0

pokemonInternalBaseData16_0:
	.byte		0x28
	.byte		0x2D
	.byte		0x28
	.byte		0x38
	.byte		0x23
	.byte		0x23
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Tangled_Feet
	.byte		Ability_Big_Pecks
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0032
	.byte		0x46
	.byte		0xFF

pointerSet016:
	.word		pokemonInternalBaseData16_0

pokemonInternalBaseData17_0:
	.byte		0x3F
	.byte		0x3C
	.byte		0x37
	.byte		0x47
	.byte		0x32
	.byte		0x32
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Tangled_Feet
	.byte		Ability_Big_Pecks
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x007A
	.byte		0x46
	.byte		0x78

pointerSet017:
	.word		pokemonInternalBaseData17_0

pokemonInternalBaseData18_0:
	.byte		0x53
	.byte		0x50
	.byte		0x4B
	.byte		0x5B
	.byte		0x46
	.byte		0x46
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Tangled_Feet
	.byte		Ability_Big_Pecks
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x00D3
	.byte		0x46
	.byte		0x2D

pointerSet018:
	.word		pokemonInternalBaseData18_0

pokemonInternalBaseData19_0:
	.byte		0x1E
	.byte		0x38
	.byte		0x23
	.byte		0x48
	.byte		0x19
	.byte		0x23
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Guts
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0033
	.byte		0x46
	.byte		0xFF

pointerSet019:
	.word		pokemonInternalBaseData19_0

pokemonInternalBaseData20_0:
	.byte		0x37
	.byte		0x51
	.byte		0x3C
	.byte		0x61
	.byte		0x32
	.byte		0x46
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Guts
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0091
	.byte		0x46
	.byte		0x7F

pointerSet020:
	.word		pokemonInternalBaseData20_0

pokemonInternalBaseData21_0:
	.byte		0x28
	.byte		0x3C
	.byte		0x1E
	.byte		0x46
	.byte		0x1F
	.byte		0x1F
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Keen_Eye
	.byte		Ability_Sniper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0034
	.byte		0x46
	.byte		0xFF

pointerSet021:
	.word		pokemonInternalBaseData21_0

pokemonInternalBaseData22_0:
	.byte		0x41
	.byte		0x5A
	.byte		0x41
	.byte		0x64
	.byte		0x3D
	.byte		0x3D
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Keen_Eye
	.byte		Ability_Sniper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x009B
	.byte		0x46
	.byte		0x5A

pointerSet022:
	.word		pokemonInternalBaseData22_0

pokemonInternalBaseData23_0:
	.byte		0x23
	.byte		0x3C
	.byte		0x2C
	.byte		0x37
	.byte		0x28
	.byte		0x36
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Shed_Skin
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003A
	.byte		0x46
	.byte		0xFF

pointerSet023:
	.word		pokemonInternalBaseData23_0

pokemonInternalBaseData24_0:
	.byte		0x3C
	.byte		0x55
	.byte		0x45
	.byte		0x50
	.byte		0x41
	.byte		0x4F
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Shed_Skin
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0099
	.byte		0x46
	.byte		0x5A

pointerSet024:
	.word		pokemonInternalBaseData24_0

pokemonInternalBaseData25_0:
	.byte		0x23
	.byte		0x37
	.byte		0x1E
	.byte		0x5A
	.byte		0x32
	.byte		0x28
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Lightning_Rod
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0069
	.byte		0x46
	.byte		0xBE

pointerSet025:
	.word		pokemonInternalBaseData25_0

pokemonInternalBaseData26_0:
	.byte		0x3C
	.byte		0x5A
	.byte		0x37
	.byte		0x64
	.byte		0x5A
	.byte		0x50
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Lightning_Rod
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x00D6
	.byte		0x46
	.byte		0x4B

pointerSet026:
	.word		pokemonInternalBaseData26_0

pokemonInternalBaseData27_0:
	.byte		0x32
	.byte		0x4B
	.byte		0x55
	.byte		0x28
	.byte		0x14
	.byte		0x1E
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Rush
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003C
	.byte		0x46
	.byte		0xFF

pointerSet027:
	.word		pokemonInternalBaseData27_0

pokemonInternalBaseData28_0:
	.byte		0x4B
	.byte		0x64
	.byte		0x6E
	.byte		0x41
	.byte		0x2D
	.byte		0x37
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Rush
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x009E
	.byte		0x46
	.byte		0x5A

pointerSet028:
	.word		pokemonInternalBaseData28_0

pokemonInternalBaseData29_0:
	.byte		0x37
	.byte		0x2F
	.byte		0x34
	.byte		0x29
	.byte		0x28
	.byte		0x28
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Rivalry
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0037
	.byte		0x46
	.byte		0xEB

pointerSet029:
	.word		pokemonInternalBaseData29_0

pokemonInternalBaseData30_0:
	.byte		0x46
	.byte		0x3E
	.byte		0x43
	.byte		0x38
	.byte		0x37
	.byte		0x37
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Rivalry
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0080
	.byte		0x46
	.byte		0x78

pointerSet030:
	.word		pokemonInternalBaseData30_0

pokemonInternalBaseData31_0:
	.byte		0x5A
	.byte		0x52
	.byte		0x57
	.byte		0x4C
	.byte		0x4B
	.byte		0x55
	.byte		Type_Poison
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Rivalry
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00DF
	.byte		0x46
	.byte		0x2D

pointerSet031:
	.word		pokemonInternalBaseData31_0

pokemonInternalBaseData32_0:
	.byte		0x2E
	.byte		0x39
	.byte		0x28
	.byte		0x32
	.byte		0x28
	.byte		0x28
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Rivalry
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0037
	.byte		0x46
	.byte		0xEB

pointerSet032:
	.word		pokemonInternalBaseData32_0

pokemonInternalBaseData33_0:
	.byte		0x3D
	.byte		0x48
	.byte		0x39
	.byte		0x41
	.byte		0x37
	.byte		0x37
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Rivalry
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0080
	.byte		0x46
	.byte		0x78

pointerSet033:
	.word		pokemonInternalBaseData33_0

pokemonInternalBaseData34_0:
	.byte		0x51
	.byte		0x5C
	.byte		0x4D
	.byte		0x55
	.byte		0x55
	.byte		0x4B
	.byte		Type_Poison
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Rivalry
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00DF
	.byte		0x46
	.byte		0x2D

pointerSet034:
	.word		pokemonInternalBaseData34_0

pokemonInternalBaseData35_0:
	.byte		0x46
	.byte		0x2D
	.byte		0x30
	.byte		0x23
	.byte		0x3C
	.byte		0x41
	.byte		Type_Fairy
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Magic_Guard
	.byte		Ability_Friend_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0071
	.byte		0x8C
	.byte		0x96

pointerSet035:
	.word		pokemonInternalBaseData35_0

pokemonInternalBaseData36_0:
	.byte		0x5F
	.byte		0x46
	.byte		0x49
	.byte		0x3C
	.byte		0x55
	.byte		0x5A
	.byte		Type_Fairy
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Magic_Guard
	.byte		Ability_Unaware
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00D5
	.byte		0x8C
	.byte		0x19

pointerSet036:
	.word		pokemonInternalBaseData36_0

pokemonInternalBaseData37_0:
	.byte		0x26
	.byte		0x29
	.byte		0x28
	.byte		0x41
	.byte		0x32
	.byte		0x41
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flash_Fire
	.byte		Ability_Flash_Fire
	.byte		Ability_Drought
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003C
	.byte		0x46
	.byte		0xBE

pointerSet037:
	.word		pokemonInternalBaseData37_0

pokemonInternalBaseData38_0:
	.byte		0x49
	.byte		0x4C
	.byte		0x4B
	.byte		0x64
	.byte		0x51
	.byte		0x64
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flash_Fire
	.byte		Ability_Flash_Fire
	.byte		Ability_Drought
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0440
	.short		0x00B1
	.byte		0x46
	.byte		0x4B

pointerSet038:
	.word		pokemonInternalBaseData38_0

pokemonInternalBaseData39_0:
	.byte		0x73
	.byte		0x2D
	.byte		0x14
	.byte		0x14
	.byte		0x2D
	.byte		0x19
	.byte		Type_Normal
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Competitive
	.byte		Ability_Friend_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x005F
	.byte		0x46
	.byte		0xAA

pointerSet039:
	.word		pokemonInternalBaseData39_0

pokemonInternalBaseData40_0:
	.byte		0x8C
	.byte		0x46
	.byte		0x2D
	.byte		0x2D
	.byte		0x4B
	.byte		0x32
	.byte		Type_Normal
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Competitive
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00BF
	.byte		0x46
	.byte		0x32

pointerSet040:
	.word		pokemonInternalBaseData40_0

pokemonInternalBaseData41_0:
	.byte		0x28
	.byte		0x2D
	.byte		0x23
	.byte		0x37
	.byte		0x1E
	.byte		0x28
	.byte		Type_Poison
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Inner_Focus
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0031
	.byte		0x46
	.byte		0xFF

pointerSet041:
	.word		pokemonInternalBaseData41_0

pokemonInternalBaseData42_0:
	.byte		0x4B
	.byte		0x50
	.byte		0x46
	.byte		0x5A
	.byte		0x41
	.byte		0x4B
	.byte		Type_Poison
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Inner_Focus
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x009F
	.byte		0x46
	.byte		0x5A

pointerSet042:
	.word		pokemonInternalBaseData42_0

pokemonInternalBaseData43_0:
	.byte		0x2D
	.byte		0x32
	.byte		0x37
	.byte		0x1E
	.byte		0x4B
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0040
	.byte		0x46
	.byte		0xFF

pointerSet043:
	.word		pokemonInternalBaseData43_0

pokemonInternalBaseData44_0:
	.byte		0x3C
	.byte		0x41
	.byte		0x46
	.byte		0x28
	.byte		0x55
	.byte		0x4B
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Stench
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x008A
	.byte		0x46
	.byte		0x78

pointerSet044:
	.word		pokemonInternalBaseData44_0

pokemonInternalBaseData45_0:
	.byte		0x4B
	.byte		0x50
	.byte		0x55
	.byte		0x32
	.byte		0x64
	.byte		0x5A
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Effect_Spore
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00D8
	.byte		0x46
	.byte		0x2D

pointerSet045:
	.word		pokemonInternalBaseData45_0

pokemonInternalBaseData46_0:
	.byte		0x23
	.byte		0x46
	.byte		0x37
	.byte		0x19
	.byte		0x2D
	.byte		0x37
	.byte		Type_Bug
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Effect_Spore
	.byte		Ability_Dry_Skin
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0039
	.byte		0x46
	.byte		0xBE

pointerSet046:
	.word		pokemonInternalBaseData46_0

pokemonInternalBaseData47_0:
	.byte		0x3C
	.byte		0x5F
	.byte		0x50
	.byte		0x1E
	.byte		0x3C
	.byte		0x50
	.byte		Type_Bug
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Effect_Spore
	.byte		Ability_Dry_Skin
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0018
	.short		0x008E
	.byte		0x46
	.byte		0x4B

pointerSet047:
	.word		pokemonInternalBaseData47_0

pokemonInternalBaseData48_0:
	.byte		0x3C
	.byte		0x37
	.byte		0x32
	.byte		0x2D
	.byte		0x28
	.byte		0x37
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Compound_Eyes
	.byte		Ability_Tinted_Lens
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x003D
	.byte		0x46
	.byte		0xBE

pointerSet048:
	.word		pokemonInternalBaseData48_0

pokemonInternalBaseData49_0:
	.byte		0x46
	.byte		0x41
	.byte		0x3C
	.byte		0x5A
	.byte		0x5A
	.byte		0x4B
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Shield_Dust
	.byte		Ability_Tinted_Lens
	.byte		Ability_Wonder_Skin
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		0x009E
	.byte		0x46
	.byte		0x4B

pointerSet049:
	.word		pokemonInternalBaseData49_0

pokemonInternalBaseData50_0:
	.byte		0x0A
	.byte		0x37
	.byte		0x19
	.byte		0x5F
	.byte		0x23
	.byte		0x2D
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Arena_Trap
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0035
	.byte		0x46
	.byte		0xFF

pointerSet050:
	.word		pokemonInternalBaseData50_0

pokemonInternalBaseData51_0:
	.byte		0x23
	.byte		0x50
	.byte		0x32
	.byte		0x78
	.byte		0x32
	.byte		0x46
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Arena_Trap
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x008E
	.byte		0x46
	.byte		0x32

pointerSet051:
	.word		pokemonInternalBaseData51_0

pokemonInternalBaseData52_0:
	.byte		0x28
	.byte		0x2D
	.byte		0x23
	.byte		0x5A
	.byte		0x28
	.byte		0x28
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Pickup
	.byte		Ability_Technician
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003A
	.byte		0x46
	.byte		0xFF

pointerSet052:
	.word		pokemonInternalBaseData52_0

pokemonInternalBaseData53_0:
	.byte		0x41
	.byte		0x46
	.byte		0x3C
	.byte		0x73
	.byte		0x41
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Limber
	.byte		Ability_Technician
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x009A
	.byte		0x46
	.byte		0x5A

pointerSet053:
	.word		pokemonInternalBaseData53_0

pokemonInternalBaseData54_0:
	.byte		0x32
	.byte		0x34
	.byte		0x30
	.byte		0x37
	.byte		0x41
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Damp
	.byte		Ability_Cloud_Nine
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0040
	.byte		0x46
	.byte		0xBE

pointerSet054:
	.word		pokemonInternalBaseData54_0

pokemonInternalBaseData55_0:
	.byte		0x50
	.byte		0x52
	.byte		0x4E
	.byte		0x55
	.byte		0x5F
	.byte		0x50
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Damp
	.byte		Ability_Cloud_Nine
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00AF
	.byte		0x46
	.byte		0x4B

pointerSet055:
	.word		pokemonInternalBaseData55_0

pokemonInternalBaseData56_0:
	.byte		0x28
	.byte		0x50
	.byte		0x23
	.byte		0x46
	.byte		0x23
	.byte		0x2D
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Vital_Spirit
	.byte		Ability_Anger_Point
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003D
	.byte		0x46
	.byte		0xBE

pointerSet056:
	.word		pokemonInternalBaseData56_0

pokemonInternalBaseData57_0:
	.byte		0x41
	.byte		0x69
	.byte		0x3C
	.byte		0x5F
	.byte		0x3C
	.byte		0x46
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Vital_Spirit
	.byte		Ability_Anger_Point
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x009F
	.byte		0x46
	.byte		0x4B

pointerSet057:
	.word		pokemonInternalBaseData57_0

pokemonInternalBaseData58_0:
	.byte		0x37
	.byte		0x46
	.byte		0x2D
	.byte		0x3C
	.byte		0x46
	.byte		0x32
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Flash_Fire
	.byte		Ability_Justified
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0046
	.byte		0x46
	.byte		0xBE

pointerSet058:
	.word		pokemonInternalBaseData58_0

pokemonInternalBaseData59_0:
	.byte		0x5A
	.byte		0x6E
	.byte		0x50
	.byte		0x5F
	.byte		0x64
	.byte		0x50
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Flash_Fire
	.byte		Ability_Justified
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00C2
	.byte		0x46
	.byte		0x4B

pointerSet059:
	.word		pokemonInternalBaseData59_0

pokemonInternalBaseData60_0:
	.byte		0x28
	.byte		0x32
	.byte		0x28
	.byte		0x5A
	.byte		0x28
	.byte		0x28
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Damp
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003C
	.byte		0x46
	.byte		0xFF

pointerSet060:
	.word		pokemonInternalBaseData60_0

pokemonInternalBaseData61_0:
	.byte		0x41
	.byte		0x41
	.byte		0x41
	.byte		0x5A
	.byte		0x32
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Damp
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0087
	.byte		0x46
	.byte		0x78

pointerSet061:
	.word		pokemonInternalBaseData61_0

pokemonInternalBaseData62_0:
	.byte		0x5A
	.byte		0x55
	.byte		0x5F
	.byte		0x46
	.byte		0x46
	.byte		0x5A
	.byte		Type_Water
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Damp
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0030
	.short		0x00E1
	.byte		0x46
	.byte		0x2D

pointerSet062:
	.word		pokemonInternalBaseData62_0

pokemonInternalBaseData63_0:
	.byte		0x19
	.byte		0x14
	.byte		0x0F
	.byte		0x5A
	.byte		0x69
	.byte		0x37
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Inner_Focus
	.byte		Ability_Magic_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003E
	.byte		0x46
	.byte		0xC8

pointerSet063:
	.word		pokemonInternalBaseData63_0

pokemonInternalBaseData64_0:
	.byte		0x28
	.byte		0x23
	.byte		0x1E
	.byte		0x69
	.byte		0x78
	.byte		0x46
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Inner_Focus
	.byte		Ability_Magic_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x008C
	.byte		0x46
	.byte		0x64

pointerSet064:
	.word		pokemonInternalBaseData64_0

pokemonInternalBaseData65_0:
	.byte		0x37
	.byte		0x32
	.byte		0x2D
	.byte		0x78
	.byte		0x87
	.byte		0x55
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Inner_Focus
	.byte		Ability_Magic_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00DD
	.byte		0x46
	.byte		0x32

pointerSet065:
	.word		pokemonInternalBaseData65_0

pokemonInternalBaseData66_0:
	.byte		0x46
	.byte		0x50
	.byte		0x32
	.byte		0x23
	.byte		0x23
	.byte		0x23
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_No_Guard
	.byte		Ability_Steadfast
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003D
	.byte		0x46
	.byte		0xB4

pointerSet066:
	.word		pokemonInternalBaseData66_0

pokemonInternalBaseData67_0:
	.byte		0x50
	.byte		0x64
	.byte		0x46
	.byte		0x2D
	.byte		0x32
	.byte		0x3C
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_No_Guard
	.byte		Ability_Steadfast
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x008E
	.byte		0x46
	.byte		0x5A

pointerSet067:
	.word		pokemonInternalBaseData67_0

pokemonInternalBaseData68_0:
	.byte		0x5A
	.byte		0x82
	.byte		0x50
	.byte		0x37
	.byte		0x41
	.byte		0x55
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_No_Guard
	.byte		Ability_Steadfast
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00E3
	.byte		0x46
	.byte		0x2D

pointerSet068:
	.word		pokemonInternalBaseData68_0

pokemonInternalBaseData69_0:
	.byte		0x32
	.byte		0x4B
	.byte		0x23
	.byte		0x28
	.byte		0x46
	.byte		0x1E
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x46
	.byte		0xFF

pointerSet069:
	.word		pokemonInternalBaseData69_0

pokemonInternalBaseData70_0:
	.byte		0x41
	.byte		0x5A
	.byte		0x32
	.byte		0x37
	.byte		0x55
	.byte		0x2D
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0089
	.byte		0x46
	.byte		0x78

pointerSet070:
	.word		pokemonInternalBaseData70_0

pokemonInternalBaseData71_0:
	.byte		0x50
	.byte		0x69
	.byte		0x41
	.byte		0x46
	.byte		0x64
	.byte		0x3C
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00D8
	.byte		0x46
	.byte		0x2D

pointerSet071:
	.word		pokemonInternalBaseData71_0

pokemonInternalBaseData72_0:
	.byte		0x28
	.byte		0x28
	.byte		0x23
	.byte		0x46
	.byte		0x32
	.byte		0x64
	.byte		Type_Water
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Liquid_Ooze
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0043
	.byte		0x46
	.byte		0xBE

pointerSet072:
	.word		pokemonInternalBaseData72_0

pokemonInternalBaseData73_0:
	.byte		0x50
	.byte		0x46
	.byte		0x41
	.byte		0x64
	.byte		0x50
	.byte		0x78
	.byte		Type_Water
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Liquid_Ooze
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00B4
	.byte		0x46
	.byte		0x3C

pointerSet073:
	.word		pokemonInternalBaseData73_0

pokemonInternalBaseData74_0:
	.byte		0x28
	.byte		0x50
	.byte		0x64
	.byte		0x14
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Rock
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Sturdy
	.byte		Ability_Sand_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003C
	.byte		0x46
	.byte		0xFF

pointerSet074:
	.word		pokemonInternalBaseData74_0

pokemonInternalBaseData75_0:
	.byte		0x37
	.byte		0x5F
	.byte		0x73
	.byte		0x23
	.byte		0x2D
	.byte		0x2D
	.byte		Type_Rock
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Sturdy
	.byte		Ability_Sand_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0089
	.byte		0x46
	.byte		0x78

pointerSet075:
	.word		pokemonInternalBaseData75_0

pokemonInternalBaseData76_0:
	.byte		0x50
	.byte		0x6E
	.byte		0x82
	.byte		0x2D
	.byte		0x37
	.byte		0x41
	.byte		Type_Rock
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Sturdy
	.byte		Ability_Sand_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0030
	.short		0x00DA
	.byte		0x46
	.byte		0x2D

pointerSet076:
	.word		pokemonInternalBaseData76_0

pokemonInternalBaseData77_0:
	.byte		0x32
	.byte		0x55
	.byte		0x37
	.byte		0x5A
	.byte		0x41
	.byte		0x41
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Flash_Fire
	.byte		Ability_Flame_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0052
	.byte		0x46
	.byte		0xBE

pointerSet077:
	.word		pokemonInternalBaseData77_0

pokemonInternalBaseData78_0:
	.byte		0x41
	.byte		0x64
	.byte		0x46
	.byte		0x69
	.byte		0x50
	.byte		0x50
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Flash_Fire
	.byte		Ability_Flame_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AF
	.byte		0x46
	.byte		0x3C

pointerSet078:
	.word		pokemonInternalBaseData78_0

pokemonInternalBaseData79_0:
	.byte		0x5A
	.byte		0x41
	.byte		0x41
	.byte		0x0F
	.byte		0x28
	.byte		0x28
	.byte		Type_Water
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Own_Tempo
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003F
	.byte		0x46
	.byte		0xBE

pointerSet079:
	.word		pokemonInternalBaseData79_0

pokemonInternalBaseData80_0:
	.byte		0x5F
	.byte		0x4B
	.byte		0x6E
	.byte		0x1E
	.byte		0x64
	.byte		0x50
	.byte		Type_Water
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Own_Tempo
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AC
	.byte		0x46
	.byte		0x4B

pointerSet080:
	.word		pokemonInternalBaseData80_0

pokemonInternalBaseData81_0:
	.byte		0x19
	.byte		0x23
	.byte		0x46
	.byte		0x2D
	.byte		0x5F
	.byte		0x37
	.byte		Type_Electric
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Magnet_Pull
	.byte		Ability_Sturdy
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0041
	.byte		0x46
	.byte		0xBE

pointerSet081:
	.word		pokemonInternalBaseData81_0

pokemonInternalBaseData82_0:
	.byte		0x32
	.byte		0x3C
	.byte		0x5F
	.byte		0x46
	.byte		0x78
	.byte		0x46
	.byte		Type_Electric
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Magnet_Pull
	.byte		Ability_Sturdy
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00A3
	.byte		0x46
	.byte		0x3C

pointerSet082:
	.word		pokemonInternalBaseData82_0

pokemonInternalBaseData83_0:
	.byte		0x34
	.byte		0x41
	.byte		0x37
	.byte		0x3C
	.byte		0x3A
	.byte		0x3E
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Inner_Focus
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x007B
	.byte		0x46
	.byte		0x2D

pointerSet083:
	.word		pokemonInternalBaseData83_0

pokemonInternalBaseData84_0:
	.byte		0x23
	.byte		0x55
	.byte		0x2D
	.byte		0x4B
	.byte		0x23
	.byte		0x23
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Early_Bird
	.byte		Ability_Tangled_Feet
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003E
	.byte		0x46
	.byte		0xBE

pointerSet084:
	.word		pokemonInternalBaseData84_0

pokemonInternalBaseData85_0:
	.byte		0x3C
	.byte		0x6E
	.byte		0x46
	.byte		0x64
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Early_Bird
	.byte		Ability_Tangled_Feet
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A1
	.byte		0x46
	.byte		0x2D

pointerSet085:
	.word		pokemonInternalBaseData85_0

pokemonInternalBaseData86_0:
	.byte		0x41
	.byte		0x2D
	.byte		0x37
	.byte		0x2D
	.byte		0x2D
	.byte		0x46
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Hydration
	.byte		Ability_Ice_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0041
	.byte		0x46
	.byte		0xBE

pointerSet086:
	.word		pokemonInternalBaseData86_0

pokemonInternalBaseData87_0:
	.byte		0x5A
	.byte		0x46
	.byte		0x50
	.byte		0x46
	.byte		0x46
	.byte		0x5F
	.byte		Type_Water
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Hydration
	.byte		Ability_Ice_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00A6
	.byte		0x46
	.byte		0x4B

pointerSet087:
	.word		pokemonInternalBaseData87_0

pokemonInternalBaseData88_0:
	.byte		0x50
	.byte		0x50
	.byte		0x32
	.byte		0x19
	.byte		0x28
	.byte		0x32
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Stench
	.byte		Ability_Sticky_Hold
	.byte		Ability_Poison_Touch
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0041
	.byte		0x46
	.byte		0xBE

pointerSet088:
	.word		pokemonInternalBaseData88_0

pokemonInternalBaseData89_0:
	.byte		0x69
	.byte		0x69
	.byte		0x4B
	.byte		0x32
	.byte		0x41
	.byte		0x64
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Stench
	.byte		Ability_Sticky_Hold
	.byte		Ability_Poison_Touch
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0005
	.short		0x00AF
	.byte		0x46
	.byte		0x4B

pointerSet089:
	.word		pokemonInternalBaseData89_0

pokemonInternalBaseData90_0:
	.byte		0x1E
	.byte		0x41
	.byte		0x64
	.byte		0x28
	.byte		0x2D
	.byte		0x19
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Shell_Armour
	.byte		Ability_Skill_Link
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003D
	.byte		0x46
	.byte		0xBE

pointerSet090:
	.word		pokemonInternalBaseData90_0

pokemonInternalBaseData91_0:
	.byte		0x32
	.byte		0x5F
	.byte		0xB4
	.byte		0x46
	.byte		0x55
	.byte		0x2D
	.byte		Type_Water
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Shell_Armour
	.byte		Ability_Skill_Link
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00B8
	.byte		0x46
	.byte		0x3C

pointerSet091:
	.word		pokemonInternalBaseData91_0

pokemonInternalBaseData92_0:
	.byte		0x1E
	.byte		0x23
	.byte		0x1E
	.byte		0x50
	.byte		0x64
	.byte		0x23
	.byte		Type_Ghost
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003E
	.byte		0x46
	.byte		0xBE

pointerSet092:
	.word		pokemonInternalBaseData92_0

pokemonInternalBaseData93_0:
	.byte		0x2D
	.byte		0x32
	.byte		0x2D
	.byte		0x5F
	.byte		0x73
	.byte		0x37
	.byte		Type_Ghost
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x008E
	.byte		0x46
	.byte		0x5A

pointerSet093:
	.word		pokemonInternalBaseData93_0

pokemonInternalBaseData94_0:
	.byte		0x3C
	.byte		0x41
	.byte		0x3C
	.byte		0x6E
	.byte		0x82
	.byte		0x4B
	.byte		Type_Ghost
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00E1
	.byte		0x46
	.byte		0x2D

pointerSet094:
	.word		pokemonInternalBaseData94_0

pokemonInternalBaseData95_0:
	.byte		0x23
	.byte		0x2D
	.byte		0xA0
	.byte		0x46
	.byte		0x1E
	.byte		0x2D
	.byte		Type_Rock
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Sturdy
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x004D
	.byte		0x46
	.byte		0x2D

pointerSet095:
	.word		pokemonInternalBaseData95_0

pokemonInternalBaseData96_0:
	.byte		0x3C
	.byte		0x30
	.byte		0x2D
	.byte		0x2A
	.byte		0x2B
	.byte		0x5A
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Forewarn
	.byte		Ability_Inner_Focus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0042
	.byte		0x46
	.byte		0xBE

pointerSet096:
	.word		pokemonInternalBaseData96_0

pokemonInternalBaseData97_0:
	.byte		0x55
	.byte		0x49
	.byte		0x46
	.byte		0x43
	.byte		0x49
	.byte		0x73
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Forewarn
	.byte		Ability_Inner_Focus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00A9
	.byte		0x46
	.byte		0x4B

pointerSet097:
	.word		pokemonInternalBaseData97_0

pokemonInternalBaseData98_0:
	.byte		0x1E
	.byte		0x69
	.byte		0x5A
	.byte		0x32
	.byte		0x19
	.byte		0x19
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Shell_Armour
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0041
	.byte		0x46
	.byte		0xE1

pointerSet098:
	.word		pokemonInternalBaseData98_0

pokemonInternalBaseData99_0:
	.byte		0x37
	.byte		0x82
	.byte		0x73
	.byte		0x4B
	.byte		0x32
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Shell_Armour
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A6
	.byte		0x46
	.byte		0x3C

pointerSet099:
	.word		pokemonInternalBaseData99_0

pokemonInternalBaseData100_0:
	.byte		0x28
	.byte		0x1E
	.byte		0x32
	.byte		0x64
	.byte		0x37
	.byte		0x37
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Soundproof
	.byte		Ability_Static
	.byte		Ability_Aftermath
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0042
	.byte		0x46
	.byte		0xBE

pointerSet100:
	.word		pokemonInternalBaseData100_0

pokemonInternalBaseData101_0:
	.byte		0x3C
	.byte		0x32
	.byte		0x46
	.byte		0x8C
	.byte		0x50
	.byte		0x50
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Soundproof
	.byte		Ability_Static
	.byte		Ability_Aftermath
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A8
	.byte		0x46
	.byte		0x3C

pointerSet101:
	.word		pokemonInternalBaseData101_0

pokemonInternalBaseData102_0:
	.byte		0x3C
	.byte		0x28
	.byte		0x50
	.byte		0x28
	.byte		0x3C
	.byte		0x2D
	.byte		Type_Grass
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Harvest
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0041
	.byte		0x46
	.byte		0x5A

pointerSet102:
	.word		pokemonInternalBaseData102_0

pokemonInternalBaseData103_0:
	.byte		0x5F
	.byte		0x5F
	.byte		0x55
	.byte		0x37
	.byte		0x7D
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Harvest
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00B6
	.byte		0x46
	.byte		0x2D

pointerSet103:
	.word		pokemonInternalBaseData103_0

pokemonInternalBaseData104_0:
	.byte		0x32
	.byte		0x32
	.byte		0x5F
	.byte		0x23
	.byte		0x28
	.byte		0x32
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Lightning_Rod
	.byte		Ability_Battle_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0040
	.byte		0x46
	.byte		0xBE

pointerSet104:
	.word		pokemonInternalBaseData104_0

pokemonInternalBaseData105_0:
	.byte		0x3C
	.byte		0x50
	.byte		0x6E
	.byte		0x2D
	.byte		0x32
	.byte		0x50
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Lightning_Rod
	.byte		Ability_Battle_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0095
	.byte		0x46
	.byte		0x4B

pointerSet105:
	.word		pokemonInternalBaseData105_0

pokemonInternalBaseData106_0:
	.byte		0x32
	.byte		0x78
	.byte		0x35
	.byte		0x57
	.byte		0x23
	.byte		0x6E
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Limber
	.byte		Ability_Reckless
	.byte		Ability_Unburden
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x009F
	.byte		0x46
	.byte		0x2D

pointerSet106:
	.word		pokemonInternalBaseData106_0

pokemonInternalBaseData107_0:
	.byte		0x32
	.byte		0x69
	.byte		0x4F
	.byte		0x4C
	.byte		0x23
	.byte		0x6E
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Iron_Fist
	.byte		Ability_Inner_Focus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x009F
	.byte		0x46
	.byte		0x2D

pointerSet107:
	.word		pokemonInternalBaseData107_0

pokemonInternalBaseData108_0:
	.byte		0x5A
	.byte		0x37
	.byte		0x4B
	.byte		0x1E
	.byte		0x3C
	.byte		0x4B
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Own_Tempo
	.byte		Ability_Oblivious
	.byte		Ability_Cloud_Nine
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x004D
	.byte		0x46
	.byte		0x2D

pointerSet108:
	.word		pokemonInternalBaseData108_0

pokemonInternalBaseData109_0:
	.byte		0x28
	.byte		0x41
	.byte		0x5F
	.byte		0x23
	.byte		0x3C
	.byte		0x2D
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0044
	.byte		0x46
	.byte		0xBE

pointerSet109:
	.word		pokemonInternalBaseData109_0

pokemonInternalBaseData110_0:
	.byte		0x41
	.byte		0x5A
	.byte		0x78
	.byte		0x3C
	.byte		0x55
	.byte		0x46
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AC
	.byte		0x46
	.byte		0x3C

pointerSet110:
	.word		pokemonInternalBaseData110_0

pokemonInternalBaseData111_0:
	.byte		0x50
	.byte		0x55
	.byte		0x5F
	.byte		0x19
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Ground
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Lightning_Rod
	.byte		Ability_Rock_Head
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0045
	.byte		0x46
	.byte		0x78

pointerSet111:
	.word		pokemonInternalBaseData111_0

pokemonInternalBaseData112_0:
	.byte		0x69
	.byte		0x82
	.byte		0x78
	.byte		0x28
	.byte		0x2D
	.byte		0x2D
	.byte		Type_Ground
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Lightning_Rod
	.byte		Ability_Rock_Head
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AA
	.byte		0x46
	.byte		0x3C

pointerSet112:
	.word		pokemonInternalBaseData112_0

pokemonInternalBaseData113_0:
	.byte		0xFA
	.byte		0x05
	.byte		0x05
	.byte		0x32
	.byte		0x23
	.byte		0x69
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Serene_Grace
	.byte		Ability_Healer
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x018B
	.byte		0x8C
	.byte		0x1E

pointerSet113:
	.word		pokemonInternalBaseData113_0

pokemonInternalBaseData114_0:
	.byte		0x41
	.byte		0x37
	.byte		0x73
	.byte		0x3C
	.byte		0x64
	.byte		0x28
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Leaf_Guard
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0057
	.byte		0x46
	.byte		0x2D

pointerSet114:
	.word		pokemonInternalBaseData114_0

pokemonInternalBaseData115_0:
	.byte		0x69
	.byte		0x5F
	.byte		0x50
	.byte		0x5A
	.byte		0x28
	.byte		0x50
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Early_Bird
	.byte		Ability_Scrappy
	.byte		Ability_Inner_Focus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00AC
	.byte		0x46
	.byte		0x2D

pointerSet115:
	.word		pokemonInternalBaseData115_0

pokemonInternalBaseData116_0:
	.byte		0x1E
	.byte		0x28
	.byte		0x46
	.byte		0x3C
	.byte		0x46
	.byte		0x19
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Sniper
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003B
	.byte		0x46
	.byte		0xE1

pointerSet116:
	.word		pokemonInternalBaseData116_0

pokemonInternalBaseData117_0:
	.byte		0x37
	.byte		0x41
	.byte		0x5F
	.byte		0x55
	.byte		0x5F
	.byte		0x2D
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Sniper
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0110
	.short		0x009A
	.byte		0x46
	.byte		0x4B

pointerSet117:
	.word		pokemonInternalBaseData117_0

pokemonInternalBaseData118_0:
	.byte		0x2D
	.byte		0x43
	.byte		0x3C
	.byte		0x3F
	.byte		0x23
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Water_Veil
	.byte		Ability_Lightning_Rod
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0040
	.byte		0x46
	.byte		0xE1

pointerSet118:
	.word		pokemonInternalBaseData118_0

pokemonInternalBaseData119_0:
	.byte		0x50
	.byte		0x5C
	.byte		0x41
	.byte		0x44
	.byte		0x41
	.byte		0x50
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Water_Veil
	.byte		Ability_Lightning_Rod
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x009E
	.byte		0x46
	.byte		0x3C

pointerSet119:
	.word		pokemonInternalBaseData119_0

pokemonInternalBaseData120_0:
	.byte		0x1E
	.byte		0x2D
	.byte		0x37
	.byte		0x55
	.byte		0x46
	.byte		0x37
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Illuminate
	.byte		Ability_Natural_Cure
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0044
	.byte		0x46
	.byte		0xE1

pointerSet120:
	.word		pokemonInternalBaseData120_0

pokemonInternalBaseData121_0:
	.byte		0x3C
	.byte		0x4B
	.byte		0x55
	.byte		0x73
	.byte		0x64
	.byte		0x55
	.byte		Type_Water
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Illuminate
	.byte		Ability_Natural_Cure
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00B6
	.byte		0x46
	.byte		0x3C

pointerSet121:
	.word		pokemonInternalBaseData121_0

pokemonInternalBaseData122_0:
	.byte		0x28
	.byte		0x2D
	.byte		0x41
	.byte		0x5A
	.byte		0x64
	.byte		0x78
	.byte		Type_Psychic
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Soundproof
	.byte		Ability_Filter
	.byte		Ability_Technician
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00A1
	.byte		0x46
	.byte		0x2D

pointerSet122:
	.word		pokemonInternalBaseData122_0

pokemonInternalBaseData123_0:
	.byte		0x46
	.byte		0x6E
	.byte		0x50
	.byte		0x69
	.byte		0x37
	.byte		0x50
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Technician
	.byte		Ability_Steadfast
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0064
	.byte		0x46
	.byte		0x2D

pointerSet123:
	.word		pokemonInternalBaseData123_0

pokemonInternalBaseData124_0:
	.byte		0x41
	.byte		0x32
	.byte		0x23
	.byte		0x5F
	.byte		0x73
	.byte		0x5F
	.byte		Type_Ice
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Forewarn
	.byte		Ability_Dry_Skin
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x009F
	.byte		0x46
	.byte		0x2D

pointerSet124:
	.word		pokemonInternalBaseData124_0

pokemonInternalBaseData125_0:
	.byte		0x41
	.byte		0x53
	.byte		0x39
	.byte		0x69
	.byte		0x5F
	.byte		0x55
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Vital_Spirit
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AC
	.byte		0x46
	.byte		0x2D

pointerSet125:
	.word		pokemonInternalBaseData125_0

pokemonInternalBaseData126_0:
	.byte		0x41
	.byte		0x5F
	.byte		0x39
	.byte		0x5D
	.byte		0x64
	.byte		0x55
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flame_Body
	.byte		Ability_Flame_Body
	.byte		Ability_Vital_Spirit
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet126:
	.word		pokemonInternalBaseData126_0

pokemonInternalBaseData127_0:
	.byte		0x41
	.byte		0x7D
	.byte		0x64
	.byte		0x55
	.byte		0x37
	.byte		0x46
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Mould_Breaker
	.byte		Ability_Moxie
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AF
	.byte		0x46
	.byte		0x2D

pointerSet127:
	.word		pokemonInternalBaseData127_0

pokemonInternalBaseData128_0:
	.byte		0x4B
	.byte		0x64
	.byte		0x5F
	.byte		0x6E
	.byte		0x28
	.byte		0x46
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Anger_Point
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0044
	.short		0x00AC
	.byte		0x46
	.byte		0x2D

pointerSet128:
	.word		pokemonInternalBaseData128_0

pokemonInternalBaseData129_0:
	.byte		0x14
	.byte		0x0A
	.byte		0x37
	.byte		0x50
	.byte		0x0F
	.byte		0x14
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Swift_Swim
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0028
	.byte		0x46
	.byte		0xFF

pointerSet129:
	.word		pokemonInternalBaseData129_0

pokemonInternalBaseData130_0:
	.byte		0x5F
	.byte		0x7D
	.byte		0x4F
	.byte		0x51
	.byte		0x3C
	.byte		0x64
	.byte		Type_Water
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Intimidate
	.byte		Ability_Moxie
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00BD
	.byte		0x46
	.byte		0x2D

pointerSet130:
	.word		pokemonInternalBaseData130_0

pokemonInternalBaseData131_0:
	.byte		0x82
	.byte		0x55
	.byte		0x50
	.byte		0x3C
	.byte		0x55
	.byte		0x5F
	.byte		Type_Water
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Shell_Armour
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00BB
	.byte		0x46
	.byte		0x2D

pointerSet131:
	.word		pokemonInternalBaseData131_0

pokemonInternalBaseData132_0:
	.byte		0x30
	.byte		0x30
	.byte		0x30
	.byte		0x30
	.byte		0x30
	.byte		0x30
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Limber
	.byte		Ability_Limber
	.byte		Ability_Imposter
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0065
	.byte		0x46
	.byte		0x23

pointerSet132:
	.word		pokemonInternalBaseData132_0

pokemonInternalBaseData133_0:
	.byte		0x37
	.byte		0x37
	.byte		0x32
	.byte		0x37
	.byte		0x2D
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Adaptability
	.byte		Ability_Anticipation
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0041
	.byte		0x46
	.byte		0x2D

pointerSet133:
	.word		pokemonInternalBaseData133_0

pokemonInternalBaseData134_0:
	.byte		0x82
	.byte		0x41
	.byte		0x3C
	.byte		0x41
	.byte		0x6E
	.byte		0x5F
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Water_Absorb
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00B8
	.byte		0x46
	.byte		0x2D

pointerSet134:
	.word		pokemonInternalBaseData134_0

pokemonInternalBaseData135_0:
	.byte		0x41
	.byte		0x41
	.byte		0x3C
	.byte		0x82
	.byte		0x6E
	.byte		0x5F
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Volt_Absorb
	.byte		Ability_Volt_Absorb
	.byte		Ability_Quick_Feet
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00B8
	.byte		0x46
	.byte		0x2D

pointerSet135:
	.word		pokemonInternalBaseData135_0

pokemonInternalBaseData136_0:
	.byte		0x41
	.byte		0x82
	.byte		0x3C
	.byte		0x41
	.byte		0x5F
	.byte		0x6E
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flash_Fire
	.byte		Ability_Flash_Fire
	.byte		Ability_Guts
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00B8
	.byte		0x46
	.byte		0x2D

pointerSet136:
	.word		pokemonInternalBaseData136_0

pokemonInternalBaseData137_0:
	.byte		0x41
	.byte		0x3C
	.byte		0x46
	.byte		0x28
	.byte		0x55
	.byte		0x4B
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Trace
	.byte		Ability_Download
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x004F
	.byte		0x46
	.byte		0x2D

pointerSet137:
	.word		pokemonInternalBaseData137_0

pokemonInternalBaseData138_0:
	.byte		0x23
	.byte		0x28
	.byte		0x64
	.byte		0x23
	.byte		0x5A
	.byte		0x37
	.byte		Type_Rock
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Shell_Armour
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0047
	.byte		0x46
	.byte		0x2D

pointerSet138:
	.word		pokemonInternalBaseData138_0

pokemonInternalBaseData139_0:
	.byte		0x46
	.byte		0x3C
	.byte		0x7D
	.byte		0x37
	.byte		0x73
	.byte		0x46
	.byte		Type_Rock
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Shell_Armour
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet139:
	.word		pokemonInternalBaseData139_0

pokemonInternalBaseData140_0:
	.byte		0x1E
	.byte		0x50
	.byte		0x5A
	.byte		0x37
	.byte		0x37
	.byte		0x2D
	.byte		Type_Rock
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Battle_Armour
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0047
	.byte		0x46
	.byte		0x2D

pointerSet140:
	.word		pokemonInternalBaseData140_0

pokemonInternalBaseData141_0:
	.byte		0x3C
	.byte		0x73
	.byte		0x69
	.byte		0x50
	.byte		0x41
	.byte		0x46
	.byte		Type_Rock
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Battle_Armour
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet141:
	.word		pokemonInternalBaseData141_0

pokemonInternalBaseData142_0:
	.byte		0x50
	.byte		0x69
	.byte		0x41
	.byte		0x82
	.byte		0x3C
	.byte		0x4B
	.byte		Type_Rock
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Pressure
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00B4
	.byte		0x46
	.byte		0x2D

pointerSet142:
	.word		pokemonInternalBaseData142_0

pokemonInternalBaseData143_0:
	.byte		0xA0
	.byte		0x6E
	.byte		0x41
	.byte		0x1E
	.byte		0x41
	.byte		0x6E
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Immunity
	.byte		Ability_Thick_Fat
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00BD
	.byte		0x46
	.byte		0x19

pointerSet143:
	.word		pokemonInternalBaseData143_0

pokemonInternalBaseData144_0:
	.byte		0x5A
	.byte		0x55
	.byte		0x64
	.byte		0x55
	.byte		0x5F
	.byte		0x7D
	.byte		Type_Ice
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Snow_Cloak
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet144:
	.word		pokemonInternalBaseData144_0

pokemonInternalBaseData145_0:
	.byte		0x5A
	.byte		0x5A
	.byte		0x55
	.byte		0x64
	.byte		0x7D
	.byte		0x5A
	.byte		Type_Electric
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Static
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet145:
	.word		pokemonInternalBaseData145_0

pokemonInternalBaseData146_0:
	.byte		0x5A
	.byte		0x64
	.byte		0x5A
	.byte		0x5A
	.byte		0x7D
	.byte		0x55
	.byte		Type_Fire
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Flame_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet146:
	.word		pokemonInternalBaseData146_0

pokemonInternalBaseData147_0:
	.byte		0x29
	.byte		0x40
	.byte		0x2D
	.byte		0x32
	.byte		0x32
	.byte		0x32
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_Marvel_Scale
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x23
	.byte		0x2D

pointerSet147:
	.word		pokemonInternalBaseData147_0

pokemonInternalBaseData148_0:
	.byte		0x3D
	.byte		0x54
	.byte		0x41
	.byte		0x46
	.byte		0x46
	.byte		0x46
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_Marvel_Scale
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0093
	.byte		0x23
	.byte		0x2D

pointerSet148:
	.word		pokemonInternalBaseData148_0

pokemonInternalBaseData149_0:
	.byte		0x5B
	.byte		0x86
	.byte		0x5F
	.byte		0x50
	.byte		0x64
	.byte		0x64
	.byte		Type_Dragon
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Inner_Focus
	.byte		Ability_Multiscale
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x010E
	.byte		0x23
	.byte		0x2D

pointerSet149:
	.word		pokemonInternalBaseData149_0

pokemonInternalBaseData150_0:
	.byte		0x6A
	.byte		0x6E
	.byte		0x5A
	.byte		0x82
	.byte		0x9A
	.byte		0x5A
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x0132
	.byte		0x00
	.byte		0x03

pointerSet150:
	.word		pokemonInternalBaseData150_0

pokemonInternalBaseData151_0:
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Synchronise
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x010E
	.byte		0x64
	.byte		0x2D

pointerSet151:
	.word		pokemonInternalBaseData151_0

pokemonInternalBaseData152_0:
	.byte		0x2D
	.byte		0x31
	.byte		0x41
	.byte		0x2D
	.byte		0x31
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Leaf_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0040
	.byte		0x46
	.byte		0x2D

pointerSet152:
	.word		pokemonInternalBaseData152_0

pokemonInternalBaseData153_0:
	.byte		0x3C
	.byte		0x3E
	.byte		0x50
	.byte		0x3C
	.byte		0x3F
	.byte		0x50
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Leaf_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet153:
	.word		pokemonInternalBaseData153_0

pokemonInternalBaseData154_0:
	.byte		0x50
	.byte		0x52
	.byte		0x64
	.byte		0x50
	.byte		0x53
	.byte		0x64
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Leaf_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0810
	.short		0x00EC
	.byte		0x46
	.byte		0x2D

pointerSet154:
	.word		pokemonInternalBaseData154_0

pokemonInternalBaseData155_0:
	.byte		0x27
	.byte		0x34
	.byte		0x2B
	.byte		0x41
	.byte		0x3C
	.byte		0x32
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Flash_Fire
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003E
	.byte		0x46
	.byte		0x2D

pointerSet155:
	.word		pokemonInternalBaseData155_0

pokemonInternalBaseData156_0:
	.byte		0x3A
	.byte		0x40
	.byte		0x3A
	.byte		0x50
	.byte		0x50
	.byte		0x41
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Flash_Fire
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet156:
	.word		pokemonInternalBaseData156_0

pokemonInternalBaseData157_0:
	.byte		0x4E
	.byte		0x54
	.byte		0x4E
	.byte		0x64
	.byte		0x6D
	.byte		0x55
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Flash_Fire
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00F0
	.byte		0x46
	.byte		0x2D

pointerSet157:
	.word		pokemonInternalBaseData157_0

pokemonInternalBaseData158_0:
	.byte		0x32
	.byte		0x41
	.byte		0x40
	.byte		0x2B
	.byte		0x2C
	.byte		0x30
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003F
	.byte		0x46
	.byte		0x2D

pointerSet158:
	.word		pokemonInternalBaseData158_0

pokemonInternalBaseData159_0:
	.byte		0x41
	.byte		0x50
	.byte		0x50
	.byte		0x3A
	.byte		0x3B
	.byte		0x3F
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0014
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet159:
	.word		pokemonInternalBaseData159_0

pokemonInternalBaseData160_0:
	.byte		0x55
	.byte		0x69
	.byte		0x64
	.byte		0x4E
	.byte		0x4F
	.byte		0x53
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0018
	.short		0x00EF
	.byte		0x46
	.byte		0x2D

pointerSet160:
	.word		pokemonInternalBaseData160_0

pokemonInternalBaseData161_0:
	.byte		0x23
	.byte		0x2E
	.byte		0x22
	.byte		0x14
	.byte		0x23
	.byte		0x2D
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Keen_Eye
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x002B
	.byte		0x46
	.byte		0xFF

pointerSet161:
	.word		pokemonInternalBaseData161_0

pokemonInternalBaseData162_0:
	.byte		0x55
	.byte		0x4C
	.byte		0x40
	.byte		0x5A
	.byte		0x2D
	.byte		0x37
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Keen_Eye
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0091
	.byte		0x46
	.byte		0x5A

pointerSet162:
	.word		pokemonInternalBaseData162_0

pokemonInternalBaseData163_0:
	.byte		0x3C
	.byte		0x1E
	.byte		0x1E
	.byte		0x32
	.byte		0x24
	.byte		0x38
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Keen_Eye
	.byte		Ability_Tinted_Lens
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0034
	.byte		0x46
	.byte		0xFF

pointerSet163:
	.word		pokemonInternalBaseData163_0

pokemonInternalBaseData164_0:
	.byte		0x64
	.byte		0x32
	.byte		0x32
	.byte		0x46
	.byte		0x4C
	.byte		0x60
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Keen_Eye
	.byte		Ability_Tinted_Lens
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x009B
	.byte		0x46
	.byte		0x5A

pointerSet164:
	.word		pokemonInternalBaseData164_0

pokemonInternalBaseData165_0:
	.byte		0x28
	.byte		0x14
	.byte		0x1E
	.byte		0x37
	.byte		0x28
	.byte		0x50
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Early_Bird
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0035
	.byte		0x46
	.byte		0xFF

pointerSet165:
	.word		pokemonInternalBaseData165_0

pokemonInternalBaseData166_0:
	.byte		0x37
	.byte		0x23
	.byte		0x32
	.byte		0x55
	.byte		0x37
	.byte		0x6E
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Early_Bird
	.byte		Ability_Iron_Fist
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x0089
	.byte		0x46
	.byte		0x5A

pointerSet166:
	.word		pokemonInternalBaseData166_0

pokemonInternalBaseData167_0:
	.byte		0x28
	.byte		0x3C
	.byte		0x28
	.byte		0x1E
	.byte		0x28
	.byte		0x28
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Insomnia
	.byte		Ability_Sniper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0032
	.byte		0x46
	.byte		0xFF

pointerSet167:
	.word		pokemonInternalBaseData167_0

pokemonInternalBaseData168_0:
	.byte		0x46
	.byte		0x5A
	.byte		0x46
	.byte		0x28
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Insomnia
	.byte		Ability_Sniper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0089
	.byte		0x46
	.byte		0x5A

pointerSet168:
	.word		pokemonInternalBaseData168_0

pokemonInternalBaseData169_0:
	.byte		0x55
	.byte		0x5A
	.byte		0x50
	.byte		0x82
	.byte		0x46
	.byte		0x50
	.byte		Type_Poison
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Inner_Focus
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x00F1
	.byte		0x46
	.byte		0x5A

pointerSet169:
	.word		pokemonInternalBaseData169_0

pokemonInternalBaseData170_0:
	.byte		0x4B
	.byte		0x26
	.byte		0x26
	.byte		0x43
	.byte		0x38
	.byte		0x38
	.byte		Type_Water
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Volt_Absorb
	.byte		Ability_Illuminate
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0042
	.byte		0x46
	.byte		0xBE

pointerSet170:
	.word		pokemonInternalBaseData170_0

pokemonInternalBaseData171_0:
	.byte		0x7D
	.byte		0x3A
	.byte		0x3A
	.byte		0x43
	.byte		0x4C
	.byte		0x4C
	.byte		Type_Water
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Volt_Absorb
	.byte		Ability_Illuminate
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A1
	.byte		0x46
	.byte		0x4B

pointerSet171:
	.word		pokemonInternalBaseData171_0

pokemonInternalBaseData172_0:
	.byte		0x14
	.byte		0x28
	.byte		0x0F
	.byte		0x3C
	.byte		0x23
	.byte		0x23
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Lightning_Rod
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0029
	.byte		0x46
	.byte		0xBE

pointerSet172:
	.word		pokemonInternalBaseData172_0

pokemonInternalBaseData173_0:
	.byte		0x32
	.byte		0x19
	.byte		0x1C
	.byte		0x0F
	.byte		0x2D
	.byte		0x37
	.byte		Type_Fairy
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Magic_Guard
	.byte		Ability_Friend_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x002C
	.byte		0x8C
	.byte		0x96

pointerSet173:
	.word		pokemonInternalBaseData173_0

pokemonInternalBaseData174_0:
	.byte		0x5A
	.byte		0x1E
	.byte		0x0F
	.byte		0x0F
	.byte		0x28
	.byte		0x14
	.byte		Type_Normal
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Competitive
	.byte		Ability_Friend_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x002A
	.byte		0x46
	.byte		0xAA

pointerSet174:
	.word		pokemonInternalBaseData174_0

pokemonInternalBaseData175_0:
	.byte		0x23
	.byte		0x14
	.byte		0x41
	.byte		0x14
	.byte		0x28
	.byte		0x41
	.byte		Type_Fairy
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Serene_Grace
	.byte		Ability_Super_Luck
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0031
	.byte		0x46
	.byte		0xBE

pointerSet175:
	.word		pokemonInternalBaseData175_0

pokemonInternalBaseData176_0:
	.byte		0x37
	.byte		0x28
	.byte		0x55
	.byte		0x28
	.byte		0x50
	.byte		0x69
	.byte		Type_Fairy
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Serene_Grace
	.byte		Ability_Super_Luck
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x008E
	.byte		0x46
	.byte		0x4B

pointerSet176:
	.word		pokemonInternalBaseData176_0

pokemonInternalBaseData177_0:
	.byte		0x28
	.byte		0x32
	.byte		0x2D
	.byte		0x46
	.byte		0x46
	.byte		0x2D
	.byte		Type_Psychic
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Early_Bird
	.byte		Ability_Magic_Bounce
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0040
	.byte		0x46
	.byte		0xBE

pointerSet177:
	.word		pokemonInternalBaseData177_0

pokemonInternalBaseData178_0:
	.byte		0x41
	.byte		0x4B
	.byte		0x46
	.byte		0x5F
	.byte		0x5F
	.byte		0x46
	.byte		Type_Psychic
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Early_Bird
	.byte		Ability_Magic_Bounce
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		0x00A5
	.byte		0x46
	.byte		0x4B

pointerSet178:
	.word		pokemonInternalBaseData178_0

pokemonInternalBaseData179_0:
	.byte		0x37
	.byte		0x28
	.byte		0x28
	.byte		0x23
	.byte		0x41
	.byte		0x2D
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Plus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0038
	.byte		0x46
	.byte		0xEB

pointerSet179:
	.word		pokemonInternalBaseData179_0

pokemonInternalBaseData180_0:
	.byte		0x46
	.byte		0x37
	.byte		0x37
	.byte		0x2D
	.byte		0x50
	.byte		0x3C
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Plus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x0080
	.byte		0x46
	.byte		0x78

pointerSet180:
	.word		pokemonInternalBaseData180_0

pokemonInternalBaseData181_0:
	.byte		0x5A
	.byte		0x4B
	.byte		0x4B
	.byte		0x37
	.byte		0x73
	.byte		0x5A
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Plus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00E1
	.byte		0x46
	.byte		0x2D

pointerSet181:
	.word		pokemonInternalBaseData181_0

pokemonInternalBaseData182_0:
	.byte		0x4B
	.byte		0x50
	.byte		0x55
	.byte		0x32
	.byte		0x5A
	.byte		0x64
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_Healer
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x00D8
	.byte		0x46
	.byte		0x2D

pointerSet182:
	.word		pokemonInternalBaseData182_0

pokemonInternalBaseData183_0:
	.byte		0x46
	.byte		0x14
	.byte		0x32
	.byte		0x28
	.byte		0x14
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Huge_Power
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0058
	.byte		0x46
	.byte		0xBE

pointerSet183:
	.word		pokemonInternalBaseData183_0

pokemonInternalBaseData184_0:
	.byte		0x64
	.byte		0x32
	.byte		0x50
	.byte		0x32
	.byte		0x32
	.byte		0x50
	.byte		Type_Water
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Huge_Power
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00B9
	.byte		0x46
	.byte		0x4B

pointerSet184:
	.word		pokemonInternalBaseData184_0

pokemonInternalBaseData185_0:
	.byte		0x46
	.byte		0x64
	.byte		0x73
	.byte		0x1E
	.byte		0x1E
	.byte		0x41
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Rock_Head
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0090
	.byte		0x46
	.byte		0x41

pointerSet185:
	.word		pokemonInternalBaseData185_0

pokemonInternalBaseData186_0:
	.byte		0x5A
	.byte		0x4B
	.byte		0x4B
	.byte		0x46
	.byte		0x5A
	.byte		0x64
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Damp
	.byte		Ability_Drizzle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x00E1
	.byte		0x46
	.byte		0x2D

pointerSet186:
	.word		pokemonInternalBaseData186_0

pokemonInternalBaseData187_0:
	.byte		0x23
	.byte		0x23
	.byte		0x28
	.byte		0x32
	.byte		0x23
	.byte		0x37
	.byte		Type_Grass
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Leaf_Guard
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0032
	.byte		0x46
	.byte		0xFF

pointerSet187:
	.word		pokemonInternalBaseData187_0

pokemonInternalBaseData188_0:
	.byte		0x37
	.byte		0x2D
	.byte		0x32
	.byte		0x50
	.byte		0x2D
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Leaf_Guard
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0077
	.byte		0x46
	.byte		0x78

pointerSet188:
	.word		pokemonInternalBaseData188_0

pokemonInternalBaseData189_0:
	.byte		0x4B
	.byte		0x37
	.byte		0x46
	.byte		0x6E
	.byte		0x37
	.byte		0x55
	.byte		Type_Grass
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Leaf_Guard
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x00CB
	.byte		0x46
	.byte		0x2D

pointerSet189:
	.word		pokemonInternalBaseData189_0

pokemonInternalBaseData190_0:
	.byte		0x37
	.byte		0x46
	.byte		0x37
	.byte		0x55
	.byte		0x28
	.byte		0x37
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Pickup
	.byte		Ability_Skill_Link
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0048
	.byte		0x46
	.byte		0x2D

pointerSet190:
	.word		pokemonInternalBaseData190_0

pokemonInternalBaseData191_0:
	.byte		0x1E
	.byte		0x1E
	.byte		0x1E
	.byte		0x1E
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Solar_Power
	.byte		Ability_Early_Bird
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0024
	.byte		0x46
	.byte		0xEB

pointerSet191:
	.word		pokemonInternalBaseData191_0

pokemonInternalBaseData192_0:
	.byte		0x4B
	.byte		0x4B
	.byte		0x37
	.byte		0x1E
	.byte		0x69
	.byte		0x55
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Solar_Power
	.byte		Ability_Early_Bird
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x0095
	.byte		0x46
	.byte		0x78

pointerSet192:
	.word		pokemonInternalBaseData192_0

pokemonInternalBaseData193_0:
	.byte		0x41
	.byte		0x41
	.byte		0x2D
	.byte		0x5F
	.byte		0x4B
	.byte		0x2D
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Speed_Boost
	.byte		Ability_Compound_Eyes
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x004E
	.byte		0x46
	.byte		0x4B

pointerSet193:
	.word		pokemonInternalBaseData193_0

pokemonInternalBaseData194_0:
	.byte		0x37
	.byte		0x2D
	.byte		0x2D
	.byte		0x0F
	.byte		0x19
	.byte		0x19
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Damp
	.byte		Ability_Water_Absorb
	.byte		Ability_Unaware
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x002A
	.byte		0x46
	.byte		0xFF

pointerSet194:
	.word		pokemonInternalBaseData194_0

pokemonInternalBaseData195_0:
	.byte		0x5F
	.byte		0x55
	.byte		0x55
	.byte		0x23
	.byte		0x41
	.byte		0x41
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Damp
	.byte		Ability_Water_Absorb
	.byte		Ability_Unaware
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0097
	.byte		0x46
	.byte		0x5A

pointerSet195:
	.word		pokemonInternalBaseData195_0

pokemonInternalBaseData196_0:
	.byte		0x41
	.byte		0x41
	.byte		0x3C
	.byte		0x6E
	.byte		0x82
	.byte		0x5F
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Synchronise
	.byte		Ability_Magic_Bounce
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00B8
	.byte		0x46
	.byte		0x2D

pointerSet196:
	.word		pokemonInternalBaseData196_0

pokemonInternalBaseData197_0:
	.byte		0x5F
	.byte		0x41
	.byte		0x6E
	.byte		0x41
	.byte		0x3C
	.byte		0x82
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Synchronise
	.byte		Ability_Inner_Focus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00B8
	.byte		0x23
	.byte		0x2D

pointerSet197:
	.word		pokemonInternalBaseData197_0

pokemonInternalBaseData198_0:
	.byte		0x3C
	.byte		0x55
	.byte		0x2A
	.byte		0x5B
	.byte		0x55
	.byte		0x2A
	.byte		Type_Dark
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Super_Luck
	.byte		Ability_Prankster
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0051
	.byte		0x23
	.byte		0x1E

pointerSet198:
	.word		pokemonInternalBaseData198_0

pokemonInternalBaseData199_0:
	.byte		0x5F
	.byte		0x4B
	.byte		0x50
	.byte		0x1E
	.byte		0x64
	.byte		0x6E
	.byte		Type_Water
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Own_Tempo
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x00AC
	.byte		0x46
	.byte		0x46

pointerSet199:
	.word		pokemonInternalBaseData199_0

pokemonInternalBaseData200_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x3C
	.byte		0x55
	.byte		0x55
	.byte		0x55
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0057
	.byte		0x23
	.byte		0x2D

pointerSet200:
	.word		pokemonInternalBaseData200_0

pokemonInternalBaseData201_0:
	.byte		0x30
	.byte		0x48
	.byte		0x30
	.byte		0x30
	.byte		0x48
	.byte		0x30
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x0076
	.byte		0x46
	.byte		0xE1

pointerSet201:
	.word		pokemonInternalBaseData201_0

pokemonInternalBaseData202_0:
	.byte		0xBE
	.byte		0x21
	.byte		0x3A
	.byte		0x21
	.byte		0x21
	.byte		0x3A
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Shadow_Tag
	.byte		Ability_Shadow_Tag
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet202:
	.word		pokemonInternalBaseData202_0

pokemonInternalBaseData203_0:
	.byte		0x46
	.byte		0x50
	.byte		0x41
	.byte		0x55
	.byte		0x5A
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Early_Bird
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x009F
	.byte		0x46
	.byte		0x3C

pointerSet203:
	.word		pokemonInternalBaseData203_0

pokemonInternalBaseData204_0:
	.byte		0x32
	.byte		0x41
	.byte		0x5A
	.byte		0x0F
	.byte		0x23
	.byte		0x23
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003A
	.byte		0x46
	.byte		0xBE

pointerSet204:
	.word		pokemonInternalBaseData204_0

pokemonInternalBaseData205_0:
	.byte		0x4B
	.byte		0x5A
	.byte		0x8C
	.byte		0x28
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Bug
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00A3
	.byte		0x46
	.byte		0x4B

pointerSet205:
	.word		pokemonInternalBaseData205_0

pokemonInternalBaseData206_0:
	.byte		0x64
	.byte		0x46
	.byte		0x46
	.byte		0x2D
	.byte		0x41
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Serene_Grace
	.byte		Ability_Run_Away
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0091
	.byte		0x46
	.byte		0xBE

pointerSet206:
	.word		pokemonInternalBaseData206_0

pokemonInternalBaseData207_0:
	.byte		0x41
	.byte		0x4B
	.byte		0x69
	.byte		0x55
	.byte		0x23
	.byte		0x41
	.byte		Type_Ground
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Sand_Veil
	.byte		Ability_Immunity
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0056
	.byte		0x46
	.byte		0x3C

pointerSet207:
	.word		pokemonInternalBaseData207_0

pokemonInternalBaseData208_0:
	.byte		0x4B
	.byte		0x55
	.byte		0xC8
	.byte		0x1E
	.byte		0x37
	.byte		0x41
	.byte		Type_Steel
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Sturdy
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00B3
	.byte		0x46
	.byte		0x19

pointerSet208:
	.word		pokemonInternalBaseData208_0

pokemonInternalBaseData209_0:
	.byte		0x3C
	.byte		0x50
	.byte		0x32
	.byte		0x1E
	.byte		0x28
	.byte		0x28
	.byte		Type_Fairy
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Run_Away
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x46
	.byte		0xBE

pointerSet209:
	.word		pokemonInternalBaseData209_0

pokemonInternalBaseData210_0:
	.byte		0x5A
	.byte		0x78
	.byte		0x4B
	.byte		0x2D
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Fairy
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Quick_Feet
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x009E
	.byte		0x46
	.byte		0x4B

pointerSet210:
	.word		pokemonInternalBaseData210_0

pokemonInternalBaseData211_0:
	.byte		0x41
	.byte		0x5F
	.byte		0x4B
	.byte		0x55
	.byte		0x37
	.byte		0x37
	.byte		Type_Water
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Swift_Swim
	.byte		Ability_Intimidate
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0056
	.byte		0x46
	.byte		0x2D

pointerSet211:
	.word		pokemonInternalBaseData211_0

pokemonInternalBaseData212_0:
	.byte		0x46
	.byte		0x82
	.byte		0x64
	.byte		0x41
	.byte		0x37
	.byte		0x50
	.byte		Type_Bug
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Technician
	.byte		Ability_Light_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AF
	.byte		0x46
	.byte		0x19

pointerSet212:
	.word		pokemonInternalBaseData212_0

pokemonInternalBaseData213_0:
	.byte		0x14
	.byte		0x0A
	.byte		0xE6
	.byte		0x05
	.byte		0x0A
	.byte		0xE6
	.byte		Type_Bug
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Gluttony
	.byte		Ability_Contrary
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x00B1
	.byte		0x46
	.byte		0xBE

pointerSet213:
	.word		pokemonInternalBaseData213_0

pokemonInternalBaseData214_0:
	.byte		0x50
	.byte		0x7D
	.byte		0x4B
	.byte		0x55
	.byte		0x28
	.byte		0x5F
	.byte		Type_Bug
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Guts
	.byte		Ability_Moxie
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AF
	.byte		0x46
	.byte		0x2D

pointerSet214:
	.word		pokemonInternalBaseData214_0

pokemonInternalBaseData215_0:
	.byte		0x37
	.byte		0x5F
	.byte		0x37
	.byte		0x73
	.byte		0x23
	.byte		0x4B
	.byte		Type_Dark
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Keen_Eye
	.byte		Ability_Pickpocket
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0056
	.byte		0x23
	.byte		0x3C

pointerSet215:
	.word		pokemonInternalBaseData215_0

pokemonInternalBaseData216_0:
	.byte		0x3C
	.byte		0x50
	.byte		0x32
	.byte		0x28
	.byte		0x32
	.byte		0x32
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Pickup
	.byte		Ability_Quick_Feet
	.byte		Ability_Honey_Gather
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0042
	.byte		0x46
	.byte		0x78

pointerSet216:
	.word		pokemonInternalBaseData216_0

pokemonInternalBaseData217_0:
	.byte		0x5A
	.byte		0x82
	.byte		0x4B
	.byte		0x37
	.byte		0x4B
	.byte		0x4B
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Quick_Feet
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AF
	.byte		0x46
	.byte		0x3C

pointerSet217:
	.word		pokemonInternalBaseData217_0

pokemonInternalBaseData218_0:
	.byte		0x28
	.byte		0x28
	.byte		0x28
	.byte		0x14
	.byte		0x46
	.byte		0x28
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Magma_Armour
	.byte		Ability_Flame_Body
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0032
	.byte		0x46
	.byte		0xBE

pointerSet218:
	.word		pokemonInternalBaseData218_0

pokemonInternalBaseData219_0:
	.byte		0x32
	.byte		0x32
	.byte		0x78
	.byte		0x1E
	.byte		0x50
	.byte		0x50
	.byte		Type_Fire
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Magma_Armour
	.byte		Ability_Flame_Body
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0090
	.byte		0x46
	.byte		0x4B

pointerSet219:
	.word		pokemonInternalBaseData219_0

pokemonInternalBaseData220_0:
	.byte		0x32
	.byte		0x32
	.byte		0x28
	.byte		0x32
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Ice
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Snow_Cloak
	.byte		Ability_Thick_Fat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0032
	.byte		0x46
	.byte		0xE1

pointerSet220:
	.word		pokemonInternalBaseData220_0

pokemonInternalBaseData221_0:
	.byte		0x64
	.byte		0x64
	.byte		0x50
	.byte		0x32
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Ice
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Snow_Cloak
	.byte		Ability_Thick_Fat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0005
	.short		0x009E
	.byte		0x46
	.byte		0x4B

pointerSet221:
	.word		pokemonInternalBaseData221_0

pokemonInternalBaseData222_0:
	.byte		0x37
	.byte		0x37
	.byte		0x55
	.byte		0x23
	.byte		0x41
	.byte		0x55
	.byte		Type_Water
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Natural_Cure
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x0085
	.byte		0x46
	.byte		0x3C

pointerSet222:
	.word		pokemonInternalBaseData222_0

pokemonInternalBaseData223_0:
	.byte		0x23
	.byte		0x41
	.byte		0x23
	.byte		0x41
	.byte		0x41
	.byte		0x23
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Sniper
	.byte		Ability_Moody
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003C
	.byte		0x46
	.byte		0xBE

pointerSet223:
	.word		pokemonInternalBaseData223_0

pokemonInternalBaseData224_0:
	.byte		0x4B
	.byte		0x69
	.byte		0x4B
	.byte		0x2D
	.byte		0x69
	.byte		0x4B
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Suction_Cups
	.byte		Ability_Sniper
	.byte		Ability_Moody
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x00A8
	.byte		0x46
	.byte		0x4B

pointerSet224:
	.word		pokemonInternalBaseData224_0

pokemonInternalBaseData225_0:
	.byte		0x2D
	.byte		0x37
	.byte		0x2D
	.byte		0x4B
	.byte		0x41
	.byte		0x2D
	.byte		Type_Ice
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Vital_Spirit
	.byte		Ability_Hustle
	.byte		Ability_Insomnia
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0074
	.byte		0x46
	.byte		0x2D

pointerSet225:
	.word		pokemonInternalBaseData225_0

pokemonInternalBaseData226_0:
	.byte		0x41
	.byte		0x28
	.byte		0x46
	.byte		0x46
	.byte		0x50
	.byte		0x8C
	.byte		Type_Water
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Water_Absorb
	.byte		Ability_Water_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00A3
	.byte		0x46
	.byte		0x19

pointerSet226:
	.word		pokemonInternalBaseData226_0

pokemonInternalBaseData227_0:
	.byte		0x41
	.byte		0x50
	.byte		0x8C
	.byte		0x46
	.byte		0x28
	.byte		0x46
	.byte		Type_Steel
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Sturdy
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00A3
	.byte		0x46
	.byte		0x19

pointerSet227:
	.word		pokemonInternalBaseData227_0

pokemonInternalBaseData228_0:
	.byte		0x2D
	.byte		0x3C
	.byte		0x1E
	.byte		0x41
	.byte		0x50
	.byte		0x32
	.byte		Type_Dark
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Early_Bird
	.byte		Ability_Flash_Fire
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0042
	.byte		0x23
	.byte		0x78

pointerSet228:
	.word		pokemonInternalBaseData228_0

pokemonInternalBaseData229_0:
	.byte		0x4B
	.byte		0x5A
	.byte		0x32
	.byte		0x5F
	.byte		0x6E
	.byte		0x50
	.byte		Type_Dark
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Early_Bird
	.byte		Ability_Flash_Fire
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00AF
	.byte		0x23
	.byte		0x2D

pointerSet229:
	.word		pokemonInternalBaseData229_0

pokemonInternalBaseData230_0:
	.byte		0x4B
	.byte		0x5F
	.byte		0x5F
	.byte		0x55
	.byte		0x5F
	.byte		0x5F
	.byte		Type_Water
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Sniper
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0504
	.short		0x00F3
	.byte		0x46
	.byte		0x2D

pointerSet230:
	.word		pokemonInternalBaseData230_0

pokemonInternalBaseData231_0:
	.byte		0x5A
	.byte		0x3C
	.byte		0x3C
	.byte		0x28
	.byte		0x28
	.byte		0x28
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Pickup
	.byte		Ability_Pickup
	.byte		Ability_Sand_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0042
	.byte		0x46
	.byte		0x78

pointerSet231:
	.word		pokemonInternalBaseData231_0

pokemonInternalBaseData232_0:
	.byte		0x5A
	.byte		0x78
	.byte		0x78
	.byte		0x32
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Sand_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0014
	.short		0x00AF
	.byte		0x46
	.byte		0x3C

pointerSet232:
	.word		pokemonInternalBaseData232_0

pokemonInternalBaseData233_0:
	.byte		0x55
	.byte		0x50
	.byte		0x5A
	.byte		0x3C
	.byte		0x69
	.byte		0x5F
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Trace
	.byte		Ability_Download
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00B4
	.byte		0x46
	.byte		0x2D

pointerSet233:
	.word		pokemonInternalBaseData233_0

pokemonInternalBaseData234_0:
	.byte		0x49
	.byte		0x5F
	.byte		0x3E
	.byte		0x55
	.byte		0x55
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Frisk
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x00A3
	.byte		0x46
	.byte		0x2D

pointerSet234:
	.word		pokemonInternalBaseData234_0

pokemonInternalBaseData235_0:
	.byte		0x37
	.byte		0x14
	.byte		0x23
	.byte		0x4B
	.byte		0x14
	.byte		0x2D
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Own_Tempo
	.byte		Ability_Technician
	.byte		Ability_Moody
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0058
	.byte		0x46
	.byte		0x2D

pointerSet235:
	.word		pokemonInternalBaseData235_0

pokemonInternalBaseData236_0:
	.byte		0x23
	.byte		0x23
	.byte		0x23
	.byte		0x23
	.byte		0x23
	.byte		0x23
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Steadfast
	.byte		Ability_Vital_Spirit
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x002A
	.byte		0x46
	.byte		0x4B

pointerSet236:
	.word		pokemonInternalBaseData236_0

pokemonInternalBaseData237_0:
	.byte		0x32
	.byte		0x5F
	.byte		0x5F
	.byte		0x46
	.byte		0x23
	.byte		0x6E
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Technician
	.byte		Ability_Steadfast
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x009F
	.byte		0x46
	.byte		0x2D

pointerSet237:
	.word		pokemonInternalBaseData237_0

pokemonInternalBaseData238_0:
	.byte		0x2D
	.byte		0x1E
	.byte		0x0F
	.byte		0x41
	.byte		0x55
	.byte		0x41
	.byte		Type_Ice
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Forewarn
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003D
	.byte		0x46
	.byte		0x2D

pointerSet238:
	.word		pokemonInternalBaseData238_0

pokemonInternalBaseData239_0:
	.byte		0x2D
	.byte		0x3F
	.byte		0x25
	.byte		0x5F
	.byte		0x41
	.byte		0x37
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Vital_Spirit
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0048
	.byte		0x46
	.byte		0x2D

pointerSet239:
	.word		pokemonInternalBaseData239_0

pokemonInternalBaseData240_0:
	.byte		0x2D
	.byte		0x4B
	.byte		0x25
	.byte		0x53
	.byte		0x46
	.byte		0x37
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flame_Body
	.byte		Ability_Flame_Body
	.byte		Ability_Vital_Spirit
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0049
	.byte		0x46
	.byte		0x2D

pointerSet240:
	.word		pokemonInternalBaseData240_0

pokemonInternalBaseData241_0:
	.byte		0x5F
	.byte		0x50
	.byte		0x69
	.byte		0x64
	.byte		0x28
	.byte		0x46
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Scrappy
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AC
	.byte		0x46
	.byte		0x2D

pointerSet241:
	.word		pokemonInternalBaseData241_0

pokemonInternalBaseData242_0:
	.byte		0xFF
	.byte		0x0A
	.byte		0x0A
	.byte		0x37
	.byte		0x4B
	.byte		0x87
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Serene_Grace
	.byte		Ability_Healer
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x0260
	.byte		0x8C
	.byte		0x1E

pointerSet242:
	.word		pokemonInternalBaseData242_0

pokemonInternalBaseData243_0:
	.byte		0x5A
	.byte		0x55
	.byte		0x4B
	.byte		0x73
	.byte		0x73
	.byte		0x64
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Volt_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0180
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet243:
	.word		pokemonInternalBaseData243_0

pokemonInternalBaseData244_0:
	.byte		0x73
	.byte		0x73
	.byte		0x55
	.byte		0x64
	.byte		0x5A
	.byte		0x4B
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Flash_Fire
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0009
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet244:
	.word		pokemonInternalBaseData244_0

pokemonInternalBaseData245_0:
	.byte		0x64
	.byte		0x4B
	.byte		0x73
	.byte		0x55
	.byte		0x5A
	.byte		0x73
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0810
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet245:
	.word		pokemonInternalBaseData245_0

pokemonInternalBaseData246_0:
	.byte		0x32
	.byte		0x40
	.byte		0x32
	.byte		0x29
	.byte		0x2D
	.byte		0x32
	.byte		Type_Rock
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Guts
	.byte		Ability_Sand_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x23
	.byte		0x2D

pointerSet246:
	.word		pokemonInternalBaseData246_0

pokemonInternalBaseData247_0:
	.byte		0x46
	.byte		0x54
	.byte		0x46
	.byte		0x33
	.byte		0x41
	.byte		0x46
	.byte		Type_Rock
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0090
	.byte		0x23
	.byte		0x2D

pointerSet247:
	.word		pokemonInternalBaseData247_0

pokemonInternalBaseData248_0:
	.byte		0x64
	.byte		0x86
	.byte		0x6E
	.byte		0x3D
	.byte		0x5F
	.byte		0x64
	.byte		Type_Rock
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Sand_Stream
	.byte		Ability_Sand_Stream
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x010E
	.byte		0x23
	.byte		0x2D

pointerSet248:
	.word		pokemonInternalBaseData248_0

pokemonInternalBaseData249_0:
	.byte		0x6A
	.byte		0x5A
	.byte		0x82
	.byte		0x6E
	.byte		0x5A
	.byte		0x9A
	.byte		Type_Psychic
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Multiscale
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x0132
	.byte		0x00
	.byte		0x03

pointerSet249:
	.word		pokemonInternalBaseData249_0

pokemonInternalBaseData250_0:
	.byte		0x6A
	.byte		0x82
	.byte		0x5A
	.byte		0x5A
	.byte		0x6E
	.byte		0x9A
	.byte		Type_Fire
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x0132
	.byte		0x00
	.byte		0x03

pointerSet250:
	.word		pokemonInternalBaseData250_0

pokemonInternalBaseData251_0:
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		Type_Psychic
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Natural_Cure
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x010E
	.byte		0x64
	.byte		0x2D

pointerSet251:
	.word		pokemonInternalBaseData251_0

pokemonInternalBaseData252_0:
	.byte		0x28
	.byte		0x2D
	.byte		0x23
	.byte		0x46
	.byte		0x41
	.byte		0x37
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Unburden
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003E
	.byte		0x46
	.byte		0x2D

pointerSet252:
	.word		pokemonInternalBaseData252_0

pokemonInternalBaseData253_0:
	.byte		0x32
	.byte		0x41
	.byte		0x2D
	.byte		0x5F
	.byte		0x55
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Unburden
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet253:
	.word		pokemonInternalBaseData253_0

pokemonInternalBaseData254_0:
	.byte		0x46
	.byte		0x55
	.byte		0x41
	.byte		0x78
	.byte		0x69
	.byte		0x55
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Unburden
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x00EF
	.byte		0x46
	.byte		0x2D

pointerSet254:
	.word		pokemonInternalBaseData254_0

pokemonInternalBaseData255_0:
	.byte		0x2D
	.byte		0x3C
	.byte		0x28
	.byte		0x2D
	.byte		0x46
	.byte		0x32
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003E
	.byte		0x46
	.byte		0x2D

pointerSet255:
	.word		pokemonInternalBaseData255_0

pokemonInternalBaseData256_0:
	.byte		0x3C
	.byte		0x55
	.byte		0x3C
	.byte		0x37
	.byte		0x55
	.byte		0x3C
	.byte		Type_Fire
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet256:
	.word		pokemonInternalBaseData256_0

pokemonInternalBaseData257_0:
	.byte		0x50
	.byte		0x78
	.byte		0x46
	.byte		0x50
	.byte		0x6E
	.byte		0x46
	.byte		Type_Fire
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00EF
	.byte		0x46
	.byte		0x2D

pointerSet257:
	.word		pokemonInternalBaseData257_0

pokemonInternalBaseData258_0:
	.byte		0x32
	.byte		0x46
	.byte		0x32
	.byte		0x28
	.byte		0x32
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003E
	.byte		0x46
	.byte		0x2D

pointerSet258:
	.word		pokemonInternalBaseData258_0

pokemonInternalBaseData259_0:
	.byte		0x46
	.byte		0x55
	.byte		0x46
	.byte		0x32
	.byte		0x3C
	.byte		0x46
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet259:
	.word		pokemonInternalBaseData259_0

pokemonInternalBaseData260_0:
	.byte		0x64
	.byte		0x6E
	.byte		0x5A
	.byte		0x3C
	.byte		0x55
	.byte		0x5A
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00F1
	.byte		0x46
	.byte		0x2D

pointerSet260:
	.word		pokemonInternalBaseData260_0

pokemonInternalBaseData261_0:
	.byte		0x23
	.byte		0x37
	.byte		0x23
	.byte		0x23
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Quick_Feet
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x002C
	.byte		0x46
	.byte		0xFF

pointerSet261:
	.word		pokemonInternalBaseData261_0

pokemonInternalBaseData262_0:
	.byte		0x46
	.byte		0x5A
	.byte		0x46
	.byte		0x46
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Quick_Feet
	.byte		Ability_Moxie
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0093
	.byte		0x46
	.byte		0x7F

pointerSet262:
	.word		pokemonInternalBaseData262_0

pokemonInternalBaseData263_0:
	.byte		0x26
	.byte		0x1E
	.byte		0x29
	.byte		0x3C
	.byte		0x1E
	.byte		0x29
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Pickup
	.byte		Ability_Gluttony
	.byte		Ability_Quick_Feet
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0030
	.byte		0x46
	.byte		0xFF

pointerSet263:
	.word		pokemonInternalBaseData263_0

pokemonInternalBaseData264_0:
	.byte		0x4E
	.byte		0x46
	.byte		0x3D
	.byte		0x64
	.byte		0x32
	.byte		0x3D
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Pickup
	.byte		Ability_Gluttony
	.byte		Ability_Quick_Feet
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0093
	.byte		0x46
	.byte		0x5A

pointerSet264:
	.word		pokemonInternalBaseData264_0

pokemonInternalBaseData265_0:
	.byte		0x2D
	.byte		0x2D
	.byte		0x23
	.byte		0x14
	.byte		0x14
	.byte		0x1E
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Shield_Dust
	.byte		Ability_Shield_Dust
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0027
	.byte		0x46
	.byte		0xFF

pointerSet265:
	.word		pokemonInternalBaseData265_0

pokemonInternalBaseData266_0:
	.byte		0x32
	.byte		0x23
	.byte		0x37
	.byte		0x0F
	.byte		0x19
	.byte		0x19
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0048
	.byte		0x46
	.byte		0x78

pointerSet266:
	.word		pokemonInternalBaseData266_0

pokemonInternalBaseData267_0:
	.byte		0x3C
	.byte		0x46
	.byte		0x32
	.byte		0x41
	.byte		0x5A
	.byte		0x32
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Swarm
	.byte		Ability_Rivalry
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet267:
	.word		pokemonInternalBaseData267_0

pokemonInternalBaseData268_0:
	.byte		0x32
	.byte		0x23
	.byte		0x37
	.byte		0x0F
	.byte		0x19
	.byte		0x19
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0029
	.byte		0x46
	.byte		0x78

pointerSet268:
	.word		pokemonInternalBaseData268_0

pokemonInternalBaseData269_0:
	.byte		0x3C
	.byte		0x32
	.byte		0x46
	.byte		0x41
	.byte		0x32
	.byte		0x5A
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Shield_Dust
	.byte		Ability_Shield_Dust
	.byte		Ability_Compound_Eyes
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x0087
	.byte		0x46
	.byte		0x2D

pointerSet269:
	.word		pokemonInternalBaseData269_0

pokemonInternalBaseData270_0:
	.byte		0x28
	.byte		0x1E
	.byte		0x1E
	.byte		0x1E
	.byte		0x28
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Rain_Dish
	.byte		Ability_Own_Tempo
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x002C
	.byte		0x46
	.byte		0xFF

pointerSet270:
	.word		pokemonInternalBaseData270_0

pokemonInternalBaseData271_0:
	.byte		0x3C
	.byte		0x32
	.byte		0x32
	.byte		0x32
	.byte		0x3C
	.byte		0x46
	.byte		Type_Water
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Rain_Dish
	.byte		Ability_Own_Tempo
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x0077
	.byte		0x46
	.byte		0x78

pointerSet271:
	.word		pokemonInternalBaseData271_0

pokemonInternalBaseData272_0:
	.byte		0x50
	.byte		0x46
	.byte		0x46
	.byte		0x46
	.byte		0x5A
	.byte		0x64
	.byte		Type_Water
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Rain_Dish
	.byte		Ability_Own_Tempo
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x00D8
	.byte		0x46
	.byte		0x2D

pointerSet272:
	.word		pokemonInternalBaseData272_0

pokemonInternalBaseData273_0:
	.byte		0x28
	.byte		0x28
	.byte		0x32
	.byte		0x1E
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Early_Bird
	.byte		Ability_Pickpocket
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x002C
	.byte		0x46
	.byte		0xFF

pointerSet273:
	.word		pokemonInternalBaseData273_0

pokemonInternalBaseData274_0:
	.byte		0x46
	.byte		0x46
	.byte		0x28
	.byte		0x3C
	.byte		0x3C
	.byte		0x28
	.byte		Type_Grass
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Early_Bird
	.byte		Ability_Pickpocket
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0077
	.byte		0x46
	.byte		0x78

pointerSet274:
	.word		pokemonInternalBaseData274_0

pokemonInternalBaseData275_0:
	.byte		0x5A
	.byte		0x64
	.byte		0x3C
	.byte		0x50
	.byte		0x5A
	.byte		0x3C
	.byte		Type_Grass
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Early_Bird
	.byte		Ability_Pickpocket
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00D8
	.byte		0x46
	.byte		0x2D

pointerSet275:
	.word		pokemonInternalBaseData275_0

pokemonInternalBaseData276_0:
	.byte		0x28
	.byte		0x37
	.byte		0x1E
	.byte		0x55
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Guts
	.byte		Ability_Scrappy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0036
	.byte		0x46
	.byte		0xC8

pointerSet276:
	.word		pokemonInternalBaseData276_0

pokemonInternalBaseData277_0:
	.byte		0x3C
	.byte		0x55
	.byte		0x3C
	.byte		0x7D
	.byte		0x32
	.byte		0x32
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Guts
	.byte		Ability_Scrappy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0097
	.byte		0x46
	.byte		0x2D

pointerSet277:
	.word		pokemonInternalBaseData277_0

pokemonInternalBaseData278_0:
	.byte		0x28
	.byte		0x1E
	.byte		0x1E
	.byte		0x55
	.byte		0x37
	.byte		0x1E
	.byte		Type_Water
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Keen_Eye
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0036
	.byte		0x46
	.byte		0xBE

pointerSet278:
	.word		pokemonInternalBaseData278_0

pokemonInternalBaseData279_0:
	.byte		0x3C
	.byte		0x32
	.byte		0x64
	.byte		0x41
	.byte		0x55
	.byte		0x46
	.byte		Type_Water
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Keen_Eye
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0097
	.byte		0x46
	.byte		0x2D

pointerSet279:
	.word		pokemonInternalBaseData279_0

pokemonInternalBaseData280_0:
	.byte		0x1C
	.byte		0x19
	.byte		0x19
	.byte		0x28
	.byte		0x2D
	.byte		0x23
	.byte		Type_Psychic
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Trace
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0028
	.byte		0x23
	.byte		0xEB

pointerSet280:
	.word		pokemonInternalBaseData280_0

pokemonInternalBaseData281_0:
	.byte		0x26
	.byte		0x23
	.byte		0x23
	.byte		0x32
	.byte		0x41
	.byte		0x37
	.byte		Type_Psychic
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Trace
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x0061
	.byte		0x23
	.byte		0x78

pointerSet281:
	.word		pokemonInternalBaseData281_0

pokemonInternalBaseData282_0:
	.byte		0x44
	.byte		0x41
	.byte		0x41
	.byte		0x50
	.byte		0x7D
	.byte		0x73
	.byte		Type_Psychic
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Synchronise
	.byte		Ability_Trace
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00E9
	.byte		0x23
	.byte		0x2D

pointerSet282:
	.word		pokemonInternalBaseData282_0

pokemonInternalBaseData283_0:
	.byte		0x28
	.byte		0x1E
	.byte		0x20
	.byte		0x41
	.byte		0x32
	.byte		0x34
	.byte		Type_Bug
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Swift_Swim
	.byte		Ability_Rain_Dish
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0036
	.byte		0x46
	.byte		0xC8

pointerSet283:
	.word		pokemonInternalBaseData283_0

pokemonInternalBaseData284_0:
	.byte		0x46
	.byte		0x3C
	.byte		0x3E
	.byte		0x3C
	.byte		0x50
	.byte		0x52
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Intimidate
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0500
	.short		0x0091
	.byte		0x46
	.byte		0x4B

pointerSet284:
	.word		pokemonInternalBaseData284_0

pokemonInternalBaseData285_0:
	.byte		0x3C
	.byte		0x28
	.byte		0x3C
	.byte		0x23
	.byte		0x28
	.byte		0x3C
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Effect_Spore
	.byte		Ability_Poison_Heal
	.byte		Ability_Quick_Feet
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003B
	.byte		0x46
	.byte		0xFF

pointerSet285:
	.word		pokemonInternalBaseData285_0

pokemonInternalBaseData286_0:
	.byte		0x3C
	.byte		0x82
	.byte		0x50
	.byte		0x46
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Grass
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Effect_Spore
	.byte		Ability_Poison_Heal
	.byte		Ability_Technician
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A1
	.byte		0x46
	.byte		0x5A

pointerSet286:
	.word		pokemonInternalBaseData286_0

pokemonInternalBaseData287_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x3C
	.byte		0x1E
	.byte		0x23
	.byte		0x23
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Truant
	.byte		Ability_Truant
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0038
	.byte		0x46
	.byte		0xFF

pointerSet287:
	.word		pokemonInternalBaseData287_0

pokemonInternalBaseData288_0:
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		0x5A
	.byte		0x37
	.byte		0x37
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Vital_Spirit
	.byte		Ability_Vital_Spirit
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x009A
	.byte		0x46
	.byte		0x78

pointerSet288:
	.word		pokemonInternalBaseData288_0

pokemonInternalBaseData289_0:
	.byte		0x96
	.byte		0xA0
	.byte		0x64
	.byte		0x64
	.byte		0x5F
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Truant
	.byte		Ability_Truant
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00FC
	.byte		0x46
	.byte		0x2D

pointerSet289:
	.word		pokemonInternalBaseData289_0

pokemonInternalBaseData290_0:
	.byte		0x1F
	.byte		0x2D
	.byte		0x5A
	.byte		0x28
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Bug
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Compound_Eyes
	.byte		Ability_Compound_Eyes
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0035
	.byte		0x46
	.byte		0xFF

pointerSet290:
	.word		pokemonInternalBaseData290_0

pokemonInternalBaseData291_0:
	.byte		0x3D
	.byte		0x5A
	.byte		0x2D
	.byte		0xA0
	.byte		0x32
	.byte		0x32
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Speed_Boost
	.byte		Ability_Speed_Boost
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A0
	.byte		0x46
	.byte		0x78

pointerSet291:
	.word		pokemonInternalBaseData291_0

pokemonInternalBaseData292_0:
	.byte		0x01
	.byte		0x5A
	.byte		0x2D
	.byte		0x28
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Bug
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Wonder_Guard
	.byte		Ability_Wonder_Guard
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0053
	.byte		0x46
	.byte		0x2D

pointerSet292:
	.word		pokemonInternalBaseData292_0

pokemonInternalBaseData293_0:
	.byte		0x40
	.byte		0x33
	.byte		0x17
	.byte		0x1C
	.byte		0x33
	.byte		0x17
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Soundproof
	.byte		Ability_Soundproof
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0030
	.byte		0x46
	.byte		0xBE

pointerSet293:
	.word		pokemonInternalBaseData293_0

pokemonInternalBaseData294_0:
	.byte		0x54
	.byte		0x47
	.byte		0x2B
	.byte		0x30
	.byte		0x47
	.byte		0x2B
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Soundproof
	.byte		Ability_Soundproof
	.byte		Ability_Scrappy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x007E
	.byte		0x46
	.byte		0x78

pointerSet294:
	.word		pokemonInternalBaseData294_0

pokemonInternalBaseData295_0:
	.byte		0x68
	.byte		0x5B
	.byte		0x3F
	.byte		0x44
	.byte		0x5B
	.byte		0x3F
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Soundproof
	.byte		Ability_Soundproof
	.byte		Ability_Scrappy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00D8
	.byte		0x46
	.byte		0x2D

pointerSet295:
	.word		pokemonInternalBaseData295_0

pokemonInternalBaseData296_0:
	.byte		0x48
	.byte		0x3C
	.byte		0x1E
	.byte		0x19
	.byte		0x14
	.byte		0x1E
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Guts
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x002F
	.byte		0x46
	.byte		0xB4

pointerSet296:
	.word		pokemonInternalBaseData296_0

pokemonInternalBaseData297_0:
	.byte		0x90
	.byte		0x78
	.byte		0x3C
	.byte		0x32
	.byte		0x28
	.byte		0x3C
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Guts
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A6
	.byte		0x46
	.byte		0xC8

pointerSet297:
	.word		pokemonInternalBaseData297_0

pokemonInternalBaseData298_0:
	.byte		0x32
	.byte		0x14
	.byte		0x28
	.byte		0x14
	.byte		0x14
	.byte		0x28
	.byte		Type_Normal
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Huge_Power
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0026
	.byte		0x46
	.byte		0x96

pointerSet298:
	.word		pokemonInternalBaseData298_0

pokemonInternalBaseData299_0:
	.byte		0x1E
	.byte		0x2D
	.byte		0x87
	.byte		0x1E
	.byte		0x2D
	.byte		0x5A
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Magnet_Pull
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x004B
	.byte		0x46
	.byte		0xFF

pointerSet299:
	.word		pokemonInternalBaseData299_0

pokemonInternalBaseData300_0:
	.byte		0x32
	.byte		0x2D
	.byte		0x2D
	.byte		0x32
	.byte		0x23
	.byte		0x23
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Normalise
	.byte		Ability_Wonder_Skin
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0034
	.byte		0x46
	.byte		0xFF

pointerSet300:
	.word		pokemonInternalBaseData300_0

pokemonInternalBaseData301_0:
	.byte		0x46
	.byte		0x41
	.byte		0x41
	.byte		0x46
	.byte		0x37
	.byte		0x37
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Normalise
	.byte		Ability_Wonder_Skin
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0041
	.short		0x0085
	.byte		0x46
	.byte		0x3C

pointerSet301:
	.word		pokemonInternalBaseData301_0

pokemonInternalBaseData302_0:
	.byte		0x32
	.byte		0x4B
	.byte		0x4B
	.byte		0x32
	.byte		0x41
	.byte		0x41
	.byte		Type_Dark
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Stall
	.byte		Ability_Prankster
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0014
	.short		0x0085
	.byte		0x23
	.byte		0x2D

pointerSet302:
	.word		pokemonInternalBaseData302_0

pokemonInternalBaseData303_0:
	.byte		0x32
	.byte		0x55
	.byte		0x55
	.byte		0x32
	.byte		0x37
	.byte		0x37
	.byte		Type_Steel
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Intimidate
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0014
	.short		0x0085
	.byte		0x46
	.byte		0x2D

pointerSet303:
	.word		pokemonInternalBaseData303_0

pokemonInternalBaseData304_0:
	.byte		0x32
	.byte		0x46
	.byte		0x64
	.byte		0x1E
	.byte		0x28
	.byte		0x28
	.byte		Type_Steel
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Rock_Head
	.byte		Ability_Heavy_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0042
	.byte		0x23
	.byte		0xB4

pointerSet304:
	.word		pokemonInternalBaseData304_0

pokemonInternalBaseData305_0:
	.byte		0x3C
	.byte		0x5A
	.byte		0x8C
	.byte		0x28
	.byte		0x32
	.byte		0x32
	.byte		Type_Steel
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Rock_Head
	.byte		Ability_Heavy_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0097
	.byte		0x23
	.byte		0x5A

pointerSet305:
	.word		pokemonInternalBaseData305_0

pokemonInternalBaseData306_0:
	.byte		0x46
	.byte		0x6E
	.byte		0xB4
	.byte		0x32
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Steel
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Rock_Head
	.byte		Ability_Heavy_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0030
	.short		0x00EF
	.byte		0x23
	.byte		0x2D

pointerSet306:
	.word		pokemonInternalBaseData306_0

pokemonInternalBaseData307_0:
	.byte		0x1E
	.byte		0x28
	.byte		0x37
	.byte		0x3C
	.byte		0x28
	.byte		0x37
	.byte		Type_Fighting
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Pure_Power
	.byte		Ability_Pure_Power
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0038
	.byte		0x46
	.byte		0xB4

pointerSet307:
	.word		pokemonInternalBaseData307_0

pokemonInternalBaseData308_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x4B
	.byte		0x50
	.byte		0x3C
	.byte		0x4B
	.byte		Type_Fighting
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Pure_Power
	.byte		Ability_Pure_Power
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0090
	.byte		0x46
	.byte		0x5A

pointerSet308:
	.word		pokemonInternalBaseData308_0

pokemonInternalBaseData309_0:
	.byte		0x28
	.byte		0x2D
	.byte		0x28
	.byte		0x41
	.byte		0x41
	.byte		0x28
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Lightning_Rod
	.byte		Ability_Minus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003B
	.byte		0x46
	.byte		0x78

pointerSet309:
	.word		pokemonInternalBaseData309_0

pokemonInternalBaseData310_0:
	.byte		0x46
	.byte		0x4B
	.byte		0x3C
	.byte		0x69
	.byte		0x69
	.byte		0x3C
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Lightning_Rod
	.byte		Ability_Minus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A6
	.byte		0x46
	.byte		0x2D

pointerSet310:
	.word		pokemonInternalBaseData310_0

pokemonInternalBaseData311_0:
	.byte		0x3C
	.byte		0x32
	.byte		0x28
	.byte		0x5F
	.byte		0x55
	.byte		0x4B
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Plus
	.byte		Ability_Plus
	.byte		Ability_Lightning_Rod
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x008E
	.byte		0x46
	.byte		0xC8

pointerSet311:
	.word		pokemonInternalBaseData311_0

pokemonInternalBaseData312_0:
	.byte		0x3C
	.byte		0x28
	.byte		0x32
	.byte		0x5F
	.byte		0x4B
	.byte		0x55
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Minus
	.byte		Ability_Minus
	.byte		Ability_Volt_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x008E
	.byte		0x46
	.byte		0xC8

pointerSet312:
	.word		pokemonInternalBaseData312_0

pokemonInternalBaseData313_0:
	.byte		0x41
	.byte		0x49
	.byte		0x37
	.byte		0x55
	.byte		0x2F
	.byte		0x4B
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Illuminate
	.byte		Ability_Swarm
	.byte		Ability_Prankster
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x008C
	.byte		0x46
	.byte		0x96

pointerSet313:
	.word		pokemonInternalBaseData313_0

pokemonInternalBaseData314_0:
	.byte		0x41
	.byte		0x2F
	.byte		0x37
	.byte		0x55
	.byte		0x49
	.byte		0x4B
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Tinted_Lens
	.byte		Ability_Prankster
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x008C
	.byte		0x46
	.byte		0x96

pointerSet314:
	.word		pokemonInternalBaseData314_0

pokemonInternalBaseData315_0:
	.byte		0x32
	.byte		0x3C
	.byte		0x2D
	.byte		0x41
	.byte		0x64
	.byte		0x50
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Poison_Point
	.byte		Ability_Leaf_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x008C
	.byte		0x46
	.byte		0x96

pointerSet315:
	.word		pokemonInternalBaseData315_0

pokemonInternalBaseData316_0:
	.byte		0x46
	.byte		0x2B
	.byte		0x35
	.byte		0x28
	.byte		0x2B
	.byte		0x35
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Liquid_Ooze
	.byte		Ability_Sticky_Hold
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003C
	.byte		0x46
	.byte		0xE1

pointerSet316:
	.word		pokemonInternalBaseData316_0

pokemonInternalBaseData317_0:
	.byte		0x64
	.byte		0x49
	.byte		0x53
	.byte		0x37
	.byte		0x49
	.byte		0x53
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Liquid_Ooze
	.byte		Ability_Sticky_Hold
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A3
	.byte		0x46
	.byte		0x4B

pointerSet317:
	.word		pokemonInternalBaseData317_0

pokemonInternalBaseData318_0:
	.byte		0x2D
	.byte		0x5A
	.byte		0x14
	.byte		0x41
	.byte		0x41
	.byte		0x14
	.byte		Type_Water
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Rough_Skin
	.byte		Ability_Rough_Skin
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003D
	.byte		0x23
	.byte		0xE1

pointerSet318:
	.word		pokemonInternalBaseData318_0

pokemonInternalBaseData319_0:
	.byte		0x46
	.byte		0x78
	.byte		0x28
	.byte		0x5F
	.byte		0x5F
	.byte		0x28
	.byte		Type_Water
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Rough_Skin
	.byte		Ability_Rough_Skin
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A1
	.byte		0x23
	.byte		0x3C

pointerSet319:
	.word		pokemonInternalBaseData319_0

pokemonInternalBaseData320_0:
	.byte		0x82
	.byte		0x46
	.byte		0x23
	.byte		0x3C
	.byte		0x46
	.byte		0x23
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Water_Veil
	.byte		Ability_Oblivious
	.byte		Ability_Pressure
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0050
	.byte		0x46
	.byte		0x7D

pointerSet320:
	.word		pokemonInternalBaseData320_0

pokemonInternalBaseData321_0:
	.byte		0xAA
	.byte		0x5A
	.byte		0x2D
	.byte		0x3C
	.byte		0x5A
	.byte		0x2D
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Water_Veil
	.byte		Ability_Oblivious
	.byte		Ability_Pressure
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00AF
	.byte		0x46
	.byte		0x3C

pointerSet321:
	.word		pokemonInternalBaseData321_0

pokemonInternalBaseData322_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x28
	.byte		0x23
	.byte		0x41
	.byte		0x2D
	.byte		Type_Fire
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Simple
	.byte		Ability_Own_Tempo
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003D
	.byte		0x46
	.byte		0xFF

pointerSet322:
	.word		pokemonInternalBaseData322_0

pokemonInternalBaseData323_0:
	.byte		0x46
	.byte		0x64
	.byte		0x46
	.byte		0x28
	.byte		0x69
	.byte		0x4B
	.byte		Type_Fire
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Magma_Armour
	.byte		Ability_Solid_Rock
	.byte		Ability_Anger_Point
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x00A1
	.byte		0x46
	.byte		0x96

pointerSet323:
	.word		pokemonInternalBaseData323_0

pokemonInternalBaseData324_0:
	.byte		0x46
	.byte		0x55
	.byte		0x8C
	.byte		0x14
	.byte		0x55
	.byte		0x46
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_White_Smoke
	.byte		Ability_White_Smoke
	.byte		Ability_Shell_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00A5
	.byte		0x46
	.byte		0x5A

pointerSet324:
	.word		pokemonInternalBaseData324_0

pokemonInternalBaseData325_0:
	.byte		0x3C
	.byte		0x19
	.byte		0x23
	.byte		0x3C
	.byte		0x46
	.byte		0x50
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Own_Tempo
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0042
	.byte		0x46
	.byte		0xFF

pointerSet325:
	.word		pokemonInternalBaseData325_0

pokemonInternalBaseData326_0:
	.byte		0x50
	.byte		0x2D
	.byte		0x41
	.byte		0x50
	.byte		0x5A
	.byte		0x6E
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Own_Tempo
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00A5
	.byte		0x46
	.byte		0x3C

pointerSet326:
	.word		pokemonInternalBaseData326_0

pokemonInternalBaseData327_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x3C
	.byte		0x3C
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Own_Tempo
	.byte		Ability_Tangled_Feet
	.byte		Ability_Contrary
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x007E
	.byte		0x46
	.byte		0xFF

pointerSet327:
	.word		pokemonInternalBaseData327_0

pokemonInternalBaseData328_0:
	.byte		0x2D
	.byte		0x64
	.byte		0x2D
	.byte		0x0A
	.byte		0x2D
	.byte		0x2D
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Arena_Trap
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003A
	.byte		0x46
	.byte		0xFF

pointerSet328:
	.word		pokemonInternalBaseData328_0

pokemonInternalBaseData329_0:
	.byte		0x32
	.byte		0x46
	.byte		0x32
	.byte		0x46
	.byte		0x32
	.byte		0x32
	.byte		Type_Ground
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0044
	.short		0x0077
	.byte		0x46
	.byte		0x78

pointerSet329:
	.word		pokemonInternalBaseData329_0

pokemonInternalBaseData330_0:
	.byte		0x50
	.byte		0x64
	.byte		0x50
	.byte		0x64
	.byte		0x50
	.byte		0x50
	.byte		Type_Ground
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0084
	.short		0x00EA
	.byte		0x46
	.byte		0x2D

pointerSet330:
	.word		pokemonInternalBaseData330_0

pokemonInternalBaseData331_0:
	.byte		0x32
	.byte		0x55
	.byte		0x28
	.byte		0x23
	.byte		0x55
	.byte		0x28
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Veil
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0043
	.byte		0x23
	.byte		0xBE

pointerSet331:
	.word		pokemonInternalBaseData331_0

pokemonInternalBaseData332_0:
	.byte		0x46
	.byte		0x73
	.byte		0x3C
	.byte		0x37
	.byte		0x73
	.byte		0x3C
	.byte		Type_Grass
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Veil
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x00A6
	.byte		0x23
	.byte		0x3C

pointerSet332:
	.word		pokemonInternalBaseData332_0

pokemonInternalBaseData333_0:
	.byte		0x2D
	.byte		0x28
	.byte		0x3C
	.byte		0x32
	.byte		0x28
	.byte		0x4B
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Natural_Cure
	.byte		Ability_Cloud_Nine
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x003E
	.byte		0x46
	.byte		0xFF

pointerSet333:
	.word		pokemonInternalBaseData333_0

pokemonInternalBaseData334_0:
	.byte		0x4B
	.byte		0x46
	.byte		0x5A
	.byte		0x50
	.byte		0x46
	.byte		0x69
	.byte		Type_Dragon
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Natural_Cure
	.byte		Ability_Cloud_Nine
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00AC
	.byte		0x46
	.byte		0x2D

pointerSet334:
	.word		pokemonInternalBaseData334_0

pokemonInternalBaseData335_0:
	.byte		0x49
	.byte		0x73
	.byte		0x3C
	.byte		0x5A
	.byte		0x3C
	.byte		0x3C
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Immunity
	.byte		Ability_Immunity
	.byte		Ability_Toxic_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A0
	.byte		0x46
	.byte		0x5A

pointerSet335:
	.word		pokemonInternalBaseData335_0

pokemonInternalBaseData336_0:
	.byte		0x49
	.byte		0x64
	.byte		0x3C
	.byte		0x41
	.byte		0x64
	.byte		0x3C
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x00A0
	.byte		0x46
	.byte		0x5A

pointerSet336:
	.word		pokemonInternalBaseData336_0

pokemonInternalBaseData337_0:
	.byte		0x46
	.byte		0x37
	.byte		0x41
	.byte		0x46
	.byte		0x5F
	.byte		0x55
	.byte		Type_Rock
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x009A
	.byte		0x46
	.byte		0x2D

pointerSet337:
	.word		pokemonInternalBaseData337_0

pokemonInternalBaseData338_0:
	.byte		0x46
	.byte		0x5F
	.byte		0x55
	.byte		0x46
	.byte		0x37
	.byte		0x41
	.byte		Type_Rock
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x009A
	.byte		0x46
	.byte		0x2D

pointerSet338:
	.word		pokemonInternalBaseData338_0

pokemonInternalBaseData339_0:
	.byte		0x32
	.byte		0x30
	.byte		0x2B
	.byte		0x3C
	.byte		0x2E
	.byte		0x29
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Anticipation
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003A
	.byte		0x46
	.byte		0xBE

pointerSet339:
	.word		pokemonInternalBaseData339_0

pokemonInternalBaseData340_0:
	.byte		0x6E
	.byte		0x4E
	.byte		0x49
	.byte		0x3C
	.byte		0x4C
	.byte		0x47
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Anticipation
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A4
	.byte		0x46
	.byte		0x4B

pointerSet340:
	.word		pokemonInternalBaseData340_0

pokemonInternalBaseData341_0:
	.byte		0x2B
	.byte		0x50
	.byte		0x41
	.byte		0x23
	.byte		0x32
	.byte		0x23
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Shell_Armour
	.byte		Ability_Adaptability
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003E
	.byte		0x46
	.byte		0xCD

pointerSet341:
	.word		pokemonInternalBaseData341_0

pokemonInternalBaseData342_0:
	.byte		0x3F
	.byte		0x78
	.byte		0x55
	.byte		0x37
	.byte		0x5A
	.byte		0x37
	.byte		Type_Water
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Shell_Armour
	.byte		Ability_Adaptability
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A4
	.byte		0x46
	.byte		0x9B

pointerSet342:
	.word		pokemonInternalBaseData342_0

pokemonInternalBaseData343_0:
	.byte		0x28
	.byte		0x28
	.byte		0x37
	.byte		0x37
	.byte		0x28
	.byte		0x46
	.byte		Type_Ground
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x003C
	.byte		0x46
	.byte		0xFF

pointerSet343:
	.word		pokemonInternalBaseData343_0

pokemonInternalBaseData344_0:
	.byte		0x3C
	.byte		0x46
	.byte		0x69
	.byte		0x4B
	.byte		0x46
	.byte		0x78
	.byte		Type_Ground
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00AF
	.byte		0x46
	.byte		0x5A

pointerSet344:
	.word		pokemonInternalBaseData344_0

pokemonInternalBaseData345_0:
	.byte		0x42
	.byte		0x29
	.byte		0x4D
	.byte		0x17
	.byte		0x3D
	.byte		0x57
	.byte		Type_Rock
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Suction_Cups
	.byte		Ability_Suction_Cups
	.byte		Ability_Storm_Drain
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0047
	.byte		0x46
	.byte		0x2D

pointerSet345:
	.word		pokemonInternalBaseData345_0

pokemonInternalBaseData346_0:
	.byte		0x56
	.byte		0x51
	.byte		0x61
	.byte		0x2B
	.byte		0x51
	.byte		0x6B
	.byte		Type_Rock
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Suction_Cups
	.byte		Ability_Suction_Cups
	.byte		Ability_Storm_Drain
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet346:
	.word		pokemonInternalBaseData346_0

pokemonInternalBaseData347_0:
	.byte		0x2D
	.byte		0x5F
	.byte		0x32
	.byte		0x4B
	.byte		0x28
	.byte		0x32
	.byte		Type_Rock
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Battle_Armour
	.byte		Ability_Battle_Armour
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0047
	.byte		0x46
	.byte		0x2D

pointerSet347:
	.word		pokemonInternalBaseData347_0

pokemonInternalBaseData348_0:
	.byte		0x4B
	.byte		0x7D
	.byte		0x64
	.byte		0x2D
	.byte		0x46
	.byte		0x50
	.byte		Type_Rock
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Battle_Armour
	.byte		Ability_Battle_Armour
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet348:
	.word		pokemonInternalBaseData348_0

pokemonInternalBaseData349_0:
	.byte		0x14
	.byte		0x0F
	.byte		0x14
	.byte		0x50
	.byte		0x0A
	.byte		0x37
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Oblivious
	.byte		Ability_Adaptability
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0028
	.byte		0x46
	.byte		0xFF

pointerSet349:
	.word		pokemonInternalBaseData349_0

pokemonInternalBaseData350_0:
	.byte		0x5F
	.byte		0x3C
	.byte		0x4F
	.byte		0x51
	.byte		0x64
	.byte		0x7D
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Marvel_Scale
	.byte		Ability_Competitive
	.byte		Ability_Cute_Charm
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00BD
	.byte		0x46
	.byte		0x3C

pointerSet350:
	.word		pokemonInternalBaseData350_0

pokemonInternalBaseData351_0:
	.byte		0x46
	.byte		0x46
	.byte		0x46
	.byte		0x46
	.byte		0x46
	.byte		0x46
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Forecast
	.byte		Ability_Forecast
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0093
	.byte		0x46
	.byte		0x2D

pointerSet351:
	.word		pokemonInternalBaseData351_0

pokemonInternalBaseData352_0:
	.byte		0x3C
	.byte		0x5A
	.byte		0x46
	.byte		0x28
	.byte		0x3C
	.byte		0x78
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Colour_Change
	.byte		Ability_Colour_Change
	.byte		Ability_Protean
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x009A
	.byte		0x46
	.byte		0xC8

pointerSet352:
	.word		pokemonInternalBaseData352_0

pokemonInternalBaseData353_0:
	.byte		0x2C
	.byte		0x4B
	.byte		0x23
	.byte		0x2D
	.byte		0x3F
	.byte		0x21
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Frisk
	.byte		Ability_Cursed_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003B
	.byte		0x23
	.byte		0xE1

pointerSet353:
	.word		pokemonInternalBaseData353_0

pokemonInternalBaseData354_0:
	.byte		0x40
	.byte		0x73
	.byte		0x41
	.byte		0x41
	.byte		0x53
	.byte		0x3F
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Frisk
	.byte		Ability_Cursed_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x009F
	.byte		0x23
	.byte		0x2D

pointerSet354:
	.word		pokemonInternalBaseData354_0

pokemonInternalBaseData355_0:
	.byte		0x14
	.byte		0x28
	.byte		0x5A
	.byte		0x19
	.byte		0x1E
	.byte		0x5A
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x003B
	.byte		0x23
	.byte		0xBE

pointerSet355:
	.word		pokemonInternalBaseData355_0

pokemonInternalBaseData356_0:
	.byte		0x28
	.byte		0x46
	.byte		0x82
	.byte		0x19
	.byte		0x3C
	.byte		0x82
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x009F
	.byte		0x23
	.byte		0x5A

pointerSet356:
	.word		pokemonInternalBaseData356_0

pokemonInternalBaseData357_0:
	.byte		0x63
	.byte		0x44
	.byte		0x53
	.byte		0x33
	.byte		0x48
	.byte		0x57
	.byte		Type_Grass
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Solar_Power
	.byte		Ability_Harvest
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A1
	.byte		0x46
	.byte		0xC8

pointerSet357:
	.word		pokemonInternalBaseData357_0

pokemonInternalBaseData358_0:
	.byte		0x41
	.byte		0x32
	.byte		0x46
	.byte		0x41
	.byte		0x5F
	.byte		0x50
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0500
	.short		0x0095
	.byte		0x46
	.byte		0x2D

pointerSet358:
	.word		pokemonInternalBaseData358_0

pokemonInternalBaseData359_0:
	.byte		0x41
	.byte		0x82
	.byte		0x3C
	.byte		0x4B
	.byte		0x4B
	.byte		0x3C
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Super_Luck
	.byte		Ability_Justified
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A3
	.byte		0x23
	.byte		0x1E

pointerSet359:
	.word		pokemonInternalBaseData359_0

pokemonInternalBaseData360_0:
	.byte		0x5F
	.byte		0x17
	.byte		0x30
	.byte		0x17
	.byte		0x17
	.byte		0x30
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Shadow_Tag
	.byte		Ability_Shadow_Tag
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0034
	.byte		0x46
	.byte		0x7D

pointerSet360:
	.word		pokemonInternalBaseData360_0

pokemonInternalBaseData361_0:
	.byte		0x32
	.byte		0x32
	.byte		0x32
	.byte		0x32
	.byte		0x32
	.byte		0x32
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Ice_Body
	.byte		Ability_Moody
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003C
	.byte		0x46
	.byte		0xBE

pointerSet361:
	.word		pokemonInternalBaseData361_0

pokemonInternalBaseData362_0:
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Ice_Body
	.byte		Ability_Moody
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A8
	.byte		0x46
	.byte		0x4B

pointerSet362:
	.word		pokemonInternalBaseData362_0

pokemonInternalBaseData363_0:
	.byte		0x46
	.byte		0x28
	.byte		0x32
	.byte		0x19
	.byte		0x37
	.byte		0x32
	.byte		Type_Ice
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Ice_Body
	.byte		Ability_Oblivious
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003A
	.byte		0x46
	.byte		0xFF

pointerSet363:
	.word		pokemonInternalBaseData363_0

pokemonInternalBaseData364_0:
	.byte		0x5A
	.byte		0x3C
	.byte		0x46
	.byte		0x2D
	.byte		0x4B
	.byte		0x46
	.byte		Type_Ice
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Ice_Body
	.byte		Ability_Oblivious
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0090
	.byte		0x46
	.byte		0x78

pointerSet364:
	.word		pokemonInternalBaseData364_0

pokemonInternalBaseData365_0:
	.byte		0x6E
	.byte		0x50
	.byte		0x5A
	.byte		0x41
	.byte		0x5F
	.byte		0x5A
	.byte		Type_Ice
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Ice_Body
	.byte		Ability_Oblivious
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00EF
	.byte		0x46
	.byte		0x2D

pointerSet365:
	.word		pokemonInternalBaseData365_0

pokemonInternalBaseData366_0:
	.byte		0x23
	.byte		0x40
	.byte		0x55
	.byte		0x20
	.byte		0x4A
	.byte		0x37
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Shell_Armour
	.byte		Ability_Shell_Armour
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0045
	.byte		0x46
	.byte		0xFF

pointerSet366:
	.word		pokemonInternalBaseData366_0

pokemonInternalBaseData367_0:
	.byte		0x37
	.byte		0x68
	.byte		0x69
	.byte		0x34
	.byte		0x5E
	.byte		0x4B
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Swift_Swim
	.byte		Ability_Water_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0014
	.short		0x00AA
	.byte		0x46
	.byte		0x3C

pointerSet367:
	.word		pokemonInternalBaseData367_0

pokemonInternalBaseData368_0:
	.byte		0x37
	.byte		0x54
	.byte		0x69
	.byte		0x34
	.byte		0x72
	.byte		0x4B
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Swift_Swim
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00AA
	.byte		0x46
	.byte		0x3C

pointerSet368:
	.word		pokemonInternalBaseData368_0

pokemonInternalBaseData369_0:
	.byte		0x64
	.byte		0x5A
	.byte		0x82
	.byte		0x37
	.byte		0x2D
	.byte		0x41
	.byte		Type_Water
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Rock_Head
	.byte		Ability_Sturdy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0011
	.short		0x00AA
	.byte		0x46
	.byte		0x19

pointerSet369:
	.word		pokemonInternalBaseData369_0

pokemonInternalBaseData370_0:
	.byte		0x2B
	.byte		0x1E
	.byte		0x37
	.byte		0x61
	.byte		0x28
	.byte		0x41
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Swift_Swim
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0074
	.byte		0x46
	.byte		0xE1

pointerSet370:
	.word		pokemonInternalBaseData370_0

pokemonInternalBaseData371_0:
	.byte		0x2D
	.byte		0x4B
	.byte		0x3C
	.byte		0x32
	.byte		0x28
	.byte		0x1E
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Rock_Head
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x23
	.byte		0x2D

pointerSet371:
	.word		pokemonInternalBaseData371_0

pokemonInternalBaseData372_0:
	.byte		0x41
	.byte		0x5F
	.byte		0x64
	.byte		0x32
	.byte		0x3C
	.byte		0x32
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Rock_Head
	.byte		Ability_Rock_Head
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0093
	.byte		0x23
	.byte		0x2D

pointerSet372:
	.word		pokemonInternalBaseData372_0

pokemonInternalBaseData373_0:
	.byte		0x5F
	.byte		0x87
	.byte		0x50
	.byte		0x64
	.byte		0x6E
	.byte		0x50
	.byte		Type_Dragon
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Intimidate
	.byte		Ability_Moxie
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x010E
	.byte		0x23
	.byte		0x2D

pointerSet373:
	.word		pokemonInternalBaseData373_0

pokemonInternalBaseData374_0:
	.byte		0x28
	.byte		0x37
	.byte		0x50
	.byte		0x1E
	.byte		0x23
	.byte		0x3C
	.byte		Type_Steel
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Clear_Body
	.byte		Ability_Light_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003C
	.byte		0x23
	.byte		0x03

pointerSet374:
	.word		pokemonInternalBaseData374_0

pokemonInternalBaseData375_0:
	.byte		0x3C
	.byte		0x4B
	.byte		0x64
	.byte		0x32
	.byte		0x37
	.byte		0x50
	.byte		Type_Steel
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Clear_Body
	.byte		Ability_Light_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0093
	.byte		0x23
	.byte		0x03

pointerSet375:
	.word		pokemonInternalBaseData375_0

pokemonInternalBaseData376_0:
	.byte		0x50
	.byte		0x87
	.byte		0x82
	.byte		0x46
	.byte		0x5F
	.byte		0x5A
	.byte		Type_Steel
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Clear_Body
	.byte		Ability_Light_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0030
	.short		0x010E
	.byte		0x23
	.byte		0x03

pointerSet376:
	.word		pokemonInternalBaseData376_0

pokemonInternalBaseData377_0:
	.byte		0x50
	.byte		0x64
	.byte		0xC8
	.byte		0x32
	.byte		0x32
	.byte		0x64
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Clear_Body
	.byte		Ability_Sturdy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0030
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet377:
	.word		pokemonInternalBaseData377_0

pokemonInternalBaseData378_0:
	.byte		0x50
	.byte		0x32
	.byte		0x64
	.byte		0x32
	.byte		0x64
	.byte		0xC8
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Clear_Body
	.byte		Ability_Ice_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet378:
	.word		pokemonInternalBaseData378_0

pokemonInternalBaseData379_0:
	.byte		0x50
	.byte		0x4B
	.byte		0x96
	.byte		0x32
	.byte		0x4B
	.byte		0x96
	.byte		Type_Steel
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Clear_Body
	.byte		Ability_Clear_Body
	.byte		Ability_Light_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0420
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet379:
	.word		pokemonInternalBaseData379_0

pokemonInternalBaseData380_0:
	.byte		0x50
	.byte		0x50
	.byte		0x5A
	.byte		0x6E
	.byte		0x6E
	.byte		0x82
	.byte		Type_Dragon
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x010E
	.byte		0x5A
	.byte		0x03

pointerSet380:
	.word		pokemonInternalBaseData380_0

pokemonInternalBaseData381_0:
	.byte		0x50
	.byte		0x5A
	.byte		0x50
	.byte		0x6E
	.byte		0x82
	.byte		0x6E
	.byte		Type_Dragon
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x010E
	.byte		0x5A
	.byte		0x03

pointerSet381:
	.word		pokemonInternalBaseData381_0

pokemonInternalBaseData382_0:
	.byte		0x64
	.byte		0x64
	.byte		0x5A
	.byte		0x5A
	.byte		0x96
	.byte		0x8C
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Drizzle
	.byte		Ability_Drizzle
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x012E
	.byte		0x00
	.byte		0x05

pointerSet382:
	.word		pokemonInternalBaseData382_0

pokemonInternalBaseData383_0:
	.byte		0x64
	.byte		0x96
	.byte		0x8C
	.byte		0x5A
	.byte		0x64
	.byte		0x5A
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Drought
	.byte		Ability_Drought
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x012E
	.byte		0x00
	.byte		0x05

pointerSet383:
	.word		pokemonInternalBaseData383_0

pokemonInternalBaseData384_0:
	.byte		0x69
	.byte		0x96
	.byte		0x5A
	.byte		0x5F
	.byte		0x96
	.byte		0x5A
	.byte		Type_Dragon
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Air_Lock
	.byte		Ability_Air_Lock
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0108
	.short		0x0132
	.byte		0x00
	.byte		0x03

pointerSet384:
	.word		pokemonInternalBaseData384_0

pokemonInternalBaseData385_0:
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		Type_Steel
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Serene_Grace
	.byte		Ability_Serene_Grace
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x010E
	.byte		0x64
	.byte		0x03

pointerSet385:
	.word		pokemonInternalBaseData385_0

pokemonInternalBaseData386_0:
	.byte		50
	.byte		150
	.byte		50
	.byte		150
	.byte		150
	.byte		50
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0144
	.short		0x010E
	.byte		0x00
	.byte		0x03

pokemonInternalBaseData386_1:
	.byte		50
	.byte		180
	.byte		20
	.byte		150
	.byte		180
	.byte		20
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0108
	.short		0x010E
	.byte		0x00
	.byte		0x03

pokemonInternalBaseData386_2:
	.byte		50
	.byte		70
	.byte		160
	.byte		90
	.byte		70
	.byte		160
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0420
	.short		0x010E
	.byte		0x00
	.byte		0x03

pokemonInternalBaseData386_3:
	.byte		50
	.byte		95
	.byte		90
	.byte		180
	.byte		95
	.byte		90
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x010E
	.byte		0x00
	.byte		0x03

pointerSet386:
	.word		pokemonInternalBaseData386_0
	.word		pokemonInternalBaseData386_1
	.word		pokemonInternalBaseData386_2
	.word		pokemonInternalBaseData386_3

pokemonInternalBaseData387_0:
	.byte		0x37
	.byte		0x44
	.byte		0x40
	.byte		0x1F
	.byte		0x2D
	.byte		0x37
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Shell_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0040
	.byte		0x46
	.byte		0x2D

pointerSet387:
	.word		pokemonInternalBaseData387_0

pokemonInternalBaseData388_0:
	.byte		0x4B
	.byte		0x59
	.byte		0x55
	.byte		0x24
	.byte		0x37
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Shell_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0014
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet388:
	.word		pokemonInternalBaseData388_0

pokemonInternalBaseData389_0:
	.byte		0x5F
	.byte		0x6D
	.byte		0x69
	.byte		0x38
	.byte		0x4B
	.byte		0x55
	.byte		Type_Grass
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Shell_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0018
	.short		0x00EC
	.byte		0x46
	.byte		0x2D

pointerSet389:
	.word		pokemonInternalBaseData389_0

pokemonInternalBaseData390_0:
	.byte		0x2C
	.byte		0x3A
	.byte		0x2C
	.byte		0x3D
	.byte		0x3A
	.byte		0x2C
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Iron_Fist
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003E
	.byte		0x46
	.byte		0x2D

pointerSet390:
	.word		pokemonInternalBaseData390_0

pokemonInternalBaseData391_0:
	.byte		0x40
	.byte		0x4E
	.byte		0x34
	.byte		0x51
	.byte		0x4E
	.byte		0x34
	.byte		Type_Fire
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Iron_Fist
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet391:
	.word		pokemonInternalBaseData391_0

pokemonInternalBaseData392_0:
	.byte		0x4C
	.byte		0x68
	.byte		0x47
	.byte		0x6C
	.byte		0x68
	.byte		0x47
	.byte		Type_Fire
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Iron_Fist
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0144
	.short		0x00F0
	.byte		0x46
	.byte		0x2D

pointerSet392:
	.word		pokemonInternalBaseData392_0

pokemonInternalBaseData393_0:
	.byte		0x35
	.byte		0x33
	.byte		0x35
	.byte		0x28
	.byte		0x3D
	.byte		0x38
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003F
	.byte		0x46
	.byte		0x2D

pointerSet393:
	.word		pokemonInternalBaseData393_0

pokemonInternalBaseData394_0:
	.byte		0x40
	.byte		0x42
	.byte		0x44
	.byte		0x32
	.byte		0x51
	.byte		0x4C
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x008E
	.byte		0x46
	.byte		0x2D

pointerSet394:
	.word		pokemonInternalBaseData394_0

pokemonInternalBaseData395_0:
	.byte		0x54
	.byte		0x56
	.byte		0x58
	.byte		0x3C
	.byte		0x6F
	.byte		0x65
	.byte		Type_Water
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00EF
	.byte		0x46
	.byte		0x2D

pointerSet395:
	.word		pokemonInternalBaseData395_0

pokemonInternalBaseData396_0:
	.byte		0x28
	.byte		0x37
	.byte		0x1E
	.byte		0x3C
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Keen_Eye
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0031
	.byte		0x46
	.byte		0xFF

pointerSet396:
	.word		pokemonInternalBaseData396_0

pokemonInternalBaseData397_0:
	.byte		0x37
	.byte		0x4B
	.byte		0x32
	.byte		0x50
	.byte		0x28
	.byte		0x28
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Intimidate
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0077
	.byte		0x46
	.byte		0x78

pointerSet397:
	.word		pokemonInternalBaseData397_0

pokemonInternalBaseData398_0:
	.byte		0x55
	.byte		0x78
	.byte		0x46
	.byte		0x64
	.byte		0x32
	.byte		0x32
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Intimidate
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00D6
	.byte		0x46
	.byte		0x2D

pointerSet398:
	.word		pokemonInternalBaseData398_0

pokemonInternalBaseData399_0:
	.byte		0x3B
	.byte		0x2D
	.byte		0x28
	.byte		0x1F
	.byte		0x23
	.byte		0x28
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Simple
	.byte		Ability_Unaware
	.byte		Ability_Moody
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0032
	.byte		0x46
	.byte		0xFF

pointerSet399:
	.word		pokemonInternalBaseData399_0

pokemonInternalBaseData400_0:
	.byte		0x4F
	.byte		0x55
	.byte		0x3C
	.byte		0x47
	.byte		0x37
	.byte		0x3C
	.byte		Type_Normal
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Simple
	.byte		Ability_Unaware
	.byte		Ability_Moody
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0090
	.byte		0x46
	.byte		0x7F

pointerSet400:
	.word		pokemonInternalBaseData400_0

pokemonInternalBaseData401_0:
	.byte		0x25
	.byte		0x19
	.byte		0x29
	.byte		0x19
	.byte		0x19
	.byte		0x29
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0027
	.byte		0x46
	.byte		0xFF

pointerSet401:
	.word		pokemonInternalBaseData401_0

pokemonInternalBaseData402_0:
	.byte		0x4D
	.byte		0x55
	.byte		0x33
	.byte		0x41
	.byte		0x37
	.byte		0x33
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Swarm
	.byte		Ability_Technician
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0086
	.byte		0x46
	.byte		0x2D

pointerSet402:
	.word		pokemonInternalBaseData402_0

pokemonInternalBaseData403_0:
	.byte		0x2D
	.byte		0x41
	.byte		0x22
	.byte		0x2D
	.byte		0x28
	.byte		0x22
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Rivalry
	.byte		Ability_Intimidate
	.byte		Ability_Guts
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0035
	.byte		0x46
	.byte		0xEB

pointerSet403:
	.word		pokemonInternalBaseData403_0

pokemonInternalBaseData404_0:
	.byte		0x3C
	.byte		0x55
	.byte		0x31
	.byte		0x3C
	.byte		0x3C
	.byte		0x31
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Rivalry
	.byte		Ability_Intimidate
	.byte		Ability_Guts
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x007F
	.byte		0x64
	.byte		0x78

pointerSet404:
	.word		pokemonInternalBaseData404_0

pokemonInternalBaseData405_0:
	.byte		0x50
	.byte		0x78
	.byte		0x4F
	.byte		0x46
	.byte		0x5F
	.byte		0x4F
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Rivalry
	.byte		Ability_Intimidate
	.byte		Ability_Guts
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00EB
	.byte		0x46
	.byte		0x2D

pointerSet405:
	.word		pokemonInternalBaseData405_0

pokemonInternalBaseData406_0:
	.byte		0x28
	.byte		0x1E
	.byte		0x23
	.byte		0x37
	.byte		0x32
	.byte		0x46
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Poison_Point
	.byte		Ability_Leaf_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0038
	.byte		0x46
	.byte		0xFF

pointerSet406:
	.word		pokemonInternalBaseData406_0

pokemonInternalBaseData407_0:
	.byte		0x3C
	.byte		0x46
	.byte		0x37
	.byte		0x5A
	.byte		0x7D
	.byte		0x69
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Poison_Point
	.byte		Ability_Technician
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00E3
	.byte		0x46
	.byte		0x4B

pointerSet407:
	.word		pokemonInternalBaseData407_0

pokemonInternalBaseData408_0:
	.byte		0x43
	.byte		0x7D
	.byte		0x28
	.byte		0x3A
	.byte		0x1E
	.byte		0x1E
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Mould_Breaker
	.byte		Ability_Mould_Breaker
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0046
	.byte		0x46
	.byte		0x2D

pointerSet408:
	.word		pokemonInternalBaseData408_0

pokemonInternalBaseData409_0:
	.byte		0x61
	.byte		0xA5
	.byte		0x3C
	.byte		0x3A
	.byte		0x41
	.byte		0x32
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Mould_Breaker
	.byte		Ability_Mould_Breaker
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet409:
	.word		pokemonInternalBaseData409_0

pokemonInternalBaseData410_0:
	.byte		0x1E
	.byte		0x2A
	.byte		0x76
	.byte		0x1E
	.byte		0x2A
	.byte		0x58
	.byte		Type_Rock
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Soundproof
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0046
	.byte		0x46
	.byte		0x2D

pointerSet410:
	.word		pokemonInternalBaseData410_0

pokemonInternalBaseData411_0:
	.byte		0x3C
	.byte		0x34
	.byte		0xA8
	.byte		0x1E
	.byte		0x2F
	.byte		0x8A
	.byte		Type_Rock
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Soundproof
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet411:
	.word		pokemonInternalBaseData411_0

pokemonInternalBaseData412_0:
	.byte		0x28
	.byte		0x1D
	.byte		0x2D
	.byte		0x24
	.byte		0x1D
	.byte		0x2D
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Shed_Skin
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x002D
	.byte		0x46
	.byte		0x78

pointerSet412:
	.word		pokemonInternalBaseData412_0

pokemonInternalBaseData413_0:
	.byte		60
	.byte		59
	.byte		85
	.byte		36
	.byte		79
	.byte		105
	.byte		Type_Bug
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Anticipation
	.byte		Ability_Anticipation
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		148
	.byte		70
	.byte		45

pokemonInternalBaseData413_1:
	.byte		60
	.byte		79
	.byte		105
	.byte		36
	.byte		59
	.byte		85
	.byte		Type_Bug
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Anticipation
	.byte		Ability_Anticipation
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		148
	.byte		70
	.byte		45

pokemonInternalBaseData413_2:
	.byte		60
	.byte		69
	.byte		95
	.byte		36
	.byte		69
	.byte		95
	.byte		Type_Bug
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Anticipation
	.byte		Ability_Anticipation
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		148
	.byte		70
	.byte		45

pointerSet413:
	.word		pokemonInternalBaseData413_0
	.word		pokemonInternalBaseData413_1
	.word		pokemonInternalBaseData413_2

pokemonInternalBaseData414_0:
	.byte		0x46
	.byte		0x5E
	.byte		0x32
	.byte		0x42
	.byte		0x5E
	.byte		0x32
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Swarm
	.byte		Ability_Tinted_Lens
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x0094
	.byte		0x46
	.byte		0x2D

pointerSet414:
	.word		pokemonInternalBaseData414_0

pokemonInternalBaseData415_0:
	.byte		0x1E
	.byte		0x1E
	.byte		0x2A
	.byte		0x46
	.byte		0x1E
	.byte		0x2A
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Honey_Gather
	.byte		Ability_Honey_Gather
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0031
	.byte		0x46
	.byte		0x78

pointerSet415:
	.word		pokemonInternalBaseData415_0

pokemonInternalBaseData416_0:
	.byte		0x46
	.byte		0x50
	.byte		0x66
	.byte		0x28
	.byte		0x50
	.byte		0x66
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x00A6
	.byte		0x46
	.byte		0x2D

pointerSet416:
	.word		pokemonInternalBaseData416_0

pokemonInternalBaseData417_0:
	.byte		0x3C
	.byte		0x2D
	.byte		0x46
	.byte		0x5F
	.byte		0x2D
	.byte		0x5A
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Pickup
	.byte		Ability_Volt_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x008E
	.byte		0x64
	.byte		0xC8

pointerSet417:
	.word		pokemonInternalBaseData417_0

pokemonInternalBaseData418_0:
	.byte		0x37
	.byte		0x41
	.byte		0x23
	.byte		0x55
	.byte		0x3C
	.byte		0x1E
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Swift_Swim
	.byte		Ability_Water_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0042
	.byte		0x46
	.byte		0xBE

pointerSet418:
	.word		pokemonInternalBaseData418_0

pokemonInternalBaseData419_0:
	.byte		0x55
	.byte		0x69
	.byte		0x37
	.byte		0x73
	.byte		0x55
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Swift_Swim
	.byte		Ability_Water_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AD
	.byte		0x46
	.byte		0x4B

pointerSet419:
	.word		pokemonInternalBaseData419_0

pokemonInternalBaseData420_0:
	.byte		0x2D
	.byte		0x23
	.byte		0x2D
	.byte		0x23
	.byte		0x3E
	.byte		0x35
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Chlorophyll
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0037
	.byte		0x46
	.byte		0xBE

pointerSet420:
	.word		pokemonInternalBaseData420_0

pokemonInternalBaseData421_0:
	.byte		0x46
	.byte		0x3C
	.byte		0x46
	.byte		0x55
	.byte		0x57
	.byte		0x4E
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Flower_Gift
	.byte		Ability_Flower_Gift
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x009E
	.byte		0x46
	.byte		0x4B

pointerSet421:
	.word		pokemonInternalBaseData421_0

pokemonInternalBaseData422_0:
	.byte		0x4C
	.byte		0x30
	.byte		0x30
	.byte		0x22
	.byte		0x39
	.byte		0x3E
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Sticky_Hold
	.byte		Ability_Storm_Drain
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0041
	.byte		0x46
	.byte		0xBE

pointerSet422:
	.word		pokemonInternalBaseData422_0

pokemonInternalBaseData423_0:
	.byte		0x6F
	.byte		0x53
	.byte		0x44
	.byte		0x27
	.byte		0x5C
	.byte		0x52
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sticky_Hold
	.byte		Ability_Storm_Drain
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A6
	.byte		0x46
	.byte		0x4B

pointerSet423:
	.word		pokemonInternalBaseData423_0

pokemonInternalBaseData424_0:
	.byte		0x4B
	.byte		0x64
	.byte		0x42
	.byte		0x73
	.byte		0x3C
	.byte		0x42
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Technician
	.byte		Ability_Pickup
	.byte		Ability_Skill_Link
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A9
	.byte		0x64
	.byte		0x2D

pointerSet424:
	.word		pokemonInternalBaseData424_0

pokemonInternalBaseData425_0:
	.byte		0x5A
	.byte		0x32
	.byte		0x22
	.byte		0x46
	.byte		0x3C
	.byte		0x2C
	.byte		Type_Ghost
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Aftermath
	.byte		Ability_Unburden
	.byte		Ability_Flare_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x0046
	.byte		0x46
	.byte		0x7D

pointerSet425:
	.word		pokemonInternalBaseData425_0

pokemonInternalBaseData426_0:
	.byte		0x96
	.byte		0x50
	.byte		0x2C
	.byte		0x50
	.byte		0x5A
	.byte		0x36
	.byte		Type_Ghost
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Aftermath
	.byte		Ability_Unburden
	.byte		Ability_Flare_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00AE
	.byte		0x46
	.byte		0x3C

pointerSet426:
	.word		pokemonInternalBaseData426_0

pokemonInternalBaseData427_0:
	.byte		0x37
	.byte		0x42
	.byte		0x2C
	.byte		0x55
	.byte		0x2C
	.byte		0x38
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Klutz
	.byte		Ability_Limber
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0046
	.byte		0x00
	.byte		0xBE

pointerSet427:
	.word		pokemonInternalBaseData427_0

pokemonInternalBaseData428_0:
	.byte		0x41
	.byte		0x4C
	.byte		0x54
	.byte		0x69
	.byte		0x36
	.byte		0x60
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Klutz
	.byte		Ability_Limber
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A8
	.byte		0x8C
	.byte		0x3C

pointerSet428:
	.word		pokemonInternalBaseData428_0

pokemonInternalBaseData429_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x3C
	.byte		0x69
	.byte		0x69
	.byte		0x69
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0500
	.short		0x00AD
	.byte		0x23
	.byte		0x2D

pointerSet429:
	.word		pokemonInternalBaseData429_0

pokemonInternalBaseData430_0:
	.byte		0x64
	.byte		0x7D
	.byte		0x34
	.byte		0x47
	.byte		0x69
	.byte		0x34
	.byte		Type_Dark
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Insomnia
	.byte		Ability_Super_Luck
	.byte		Ability_Moxie
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00B1
	.byte		0x23
	.byte		0x1E

pointerSet430:
	.word		pokemonInternalBaseData430_0

pokemonInternalBaseData431_0:
	.byte		0x31
	.byte		0x37
	.byte		0x2A
	.byte		0x55
	.byte		0x2A
	.byte		0x25
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Limber
	.byte		Ability_Own_Tempo
	.byte		Ability_Keen_Eye
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003E
	.byte		0x46
	.byte		0xBE

pointerSet431:
	.word		pokemonInternalBaseData431_0

pokemonInternalBaseData432_0:
	.byte		0x47
	.byte		0x52
	.byte		0x40
	.byte		0x70
	.byte		0x40
	.byte		0x3B
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Thick_Fat
	.byte		Ability_Own_Tempo
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x009E
	.byte		0x46
	.byte		0x4B

pointerSet432:
	.word		pokemonInternalBaseData432_0

pokemonInternalBaseData433_0:
	.byte		0x2D
	.byte		0x1E
	.byte		0x32
	.byte		0x2D
	.byte		0x41
	.byte		0x32
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0039
	.byte		0x46
	.byte		0x78

pointerSet433:
	.word		pokemonInternalBaseData433_0

pokemonInternalBaseData434_0:
	.byte		0x3F
	.byte		0x3F
	.byte		0x2F
	.byte		0x4A
	.byte		0x29
	.byte		0x29
	.byte		Type_Poison
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Stench
	.byte		Ability_Aftermath
	.byte		Ability_Keen_Eye
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0042
	.byte		0x46
	.byte		0xE1

pointerSet434:
	.word		pokemonInternalBaseData434_0

pokemonInternalBaseData435_0:
	.byte		0x67
	.byte		0x5D
	.byte		0x43
	.byte		0x54
	.byte		0x47
	.byte		0x3D
	.byte		Type_Poison
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Stench
	.byte		Ability_Aftermath
	.byte		Ability_Keen_Eye
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A8
	.byte		0x46
	.byte		0x3C

pointerSet435:
	.word		pokemonInternalBaseData435_0

pokemonInternalBaseData436_0:
	.byte		0x39
	.byte		0x18
	.byte		0x56
	.byte		0x17
	.byte		0x18
	.byte		0x56
	.byte		Type_Steel
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Heatproof
	.byte		Ability_Heavy_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003C
	.byte		0x46
	.byte		0xFF

pointerSet436:
	.word		pokemonInternalBaseData436_0

pokemonInternalBaseData437_0:
	.byte		0x43
	.byte		0x59
	.byte		0x74
	.byte		0x21
	.byte		0x4F
	.byte		0x74
	.byte		Type_Steel
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Heatproof
	.byte		Ability_Heavy_Metal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x00AF
	.byte		0x46
	.byte		0x5A

pointerSet437:
	.word		pokemonInternalBaseData437_0

pokemonInternalBaseData438_0:
	.byte		0x32
	.byte		0x50
	.byte		0x5F
	.byte		0x0A
	.byte		0x0A
	.byte		0x2D
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Rock_Head
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003A
	.byte		0x46
	.byte		0xFF

pointerSet438:
	.word		pokemonInternalBaseData438_0

pokemonInternalBaseData439_0:
	.byte		0x14
	.byte		0x19
	.byte		0x2D
	.byte		0x3C
	.byte		0x46
	.byte		0x5A
	.byte		Type_Psychic
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Soundproof
	.byte		Ability_Filter
	.byte		Ability_Technician
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x003E
	.byte		0x46
	.byte		0x91

pointerSet439:
	.word		pokemonInternalBaseData439_0

pokemonInternalBaseData440_0:
	.byte		0x64
	.byte		0x05
	.byte		0x05
	.byte		0x1E
	.byte		0x0F
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Serene_Grace
	.byte		Ability_Friend_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x006E
	.byte		0x8C
	.byte		0x82

pointerSet440:
	.word		pokemonInternalBaseData440_0

pokemonInternalBaseData441_0:
	.byte		0x4C
	.byte		0x41
	.byte		0x2D
	.byte		0x5B
	.byte		0x5C
	.byte		0x2A
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Tangled_Feet
	.byte		Ability_Big_Pecks
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0090
	.byte		0x23
	.byte		0x1E

pointerSet441:
	.word		pokemonInternalBaseData441_0

pokemonInternalBaseData442_0:
	.byte		0x32
	.byte		0x5C
	.byte		0x6C
	.byte		0x23
	.byte		0x5C
	.byte		0x6C
	.byte		Type_Ghost
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x00AA
	.byte		0x46
	.byte		0x64

pointerSet442:
	.word		pokemonInternalBaseData442_0

pokemonInternalBaseData443_0:
	.byte		0x3A
	.byte		0x46
	.byte		0x2D
	.byte		0x2A
	.byte		0x28
	.byte		0x2D
	.byte		Type_Dragon
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Veil
	.byte		Ability_Rough_Skin
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x46
	.byte		0x2D

pointerSet443:
	.word		pokemonInternalBaseData443_0

pokemonInternalBaseData444_0:
	.byte		0x44
	.byte		0x5A
	.byte		0x41
	.byte		0x52
	.byte		0x32
	.byte		0x37
	.byte		Type_Dragon
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Veil
	.byte		Ability_Rough_Skin
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0090
	.byte		0x46
	.byte		0x2D

pointerSet444:
	.word		pokemonInternalBaseData444_0

pokemonInternalBaseData445_0:
	.byte		0x6C
	.byte		0x82
	.byte		0x5F
	.byte		0x66
	.byte		0x50
	.byte		0x55
	.byte		Type_Dragon
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Veil
	.byte		Ability_Sand_Veil
	.byte		Ability_Rough_Skin
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x010E
	.byte		0x46
	.byte		0x2D

pointerSet445:
	.word		pokemonInternalBaseData445_0

pokemonInternalBaseData446_0:
	.byte		0x87
	.byte		0x55
	.byte		0x28
	.byte		0x05
	.byte		0x28
	.byte		0x55
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Pickup
	.byte		Ability_Thick_Fat
	.byte		Ability_Gluttony
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x004E
	.byte		0x46
	.byte		0x32

pointerSet446:
	.word		pokemonInternalBaseData446_0

pokemonInternalBaseData447_0:
	.byte		0x28
	.byte		0x46
	.byte		0x28
	.byte		0x3C
	.byte		0x23
	.byte		0x28
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Steadfast
	.byte		Ability_Inner_Focus
	.byte		Ability_Prankster
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0039
	.byte		0x46
	.byte		0x4B

pointerSet447:
	.word		pokemonInternalBaseData447_0

pokemonInternalBaseData448_0:
	.byte		0x46
	.byte		0x6E
	.byte		0x46
	.byte		0x5A
	.byte		0x73
	.byte		0x46
	.byte		Type_Fighting
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Steadfast
	.byte		Ability_Inner_Focus
	.byte		Ability_Justified
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x00B8
	.byte		0x46
	.byte		0x2D

pointerSet448:
	.word		pokemonInternalBaseData448_0

pokemonInternalBaseData449_0:
	.byte		0x44
	.byte		0x48
	.byte		0x4E
	.byte		0x20
	.byte		0x26
	.byte		0x2A
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Stream
	.byte		Ability_Sand_Stream
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0042
	.byte		0x46
	.byte		0x8C

pointerSet449:
	.word		pokemonInternalBaseData449_0

pokemonInternalBaseData450_0:
	.byte		108
	.byte		112
	.byte		118
	.byte		47
	.byte		68
	.byte		72
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Stream
	.byte		Ability_Sand_Stream
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		184
	.byte		0x46
	.byte		60

pointerSet450:
	.word		pokemonInternalBaseData450_0

pokemonInternalBaseData451_0:
	.byte		0x28
	.byte		0x32
	.byte		0x5A
	.byte		0x41
	.byte		0x1E
	.byte		0x37
	.byte		Type_Poison
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Battle_Armour
	.byte		Ability_Sniper
	.byte		Ability_Keen_Eye
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0042
	.byte		0x46
	.byte		0x78

pointerSet451:
	.word		pokemonInternalBaseData451_0

pokemonInternalBaseData452_0:
	.byte		0x46
	.byte		0x5A
	.byte		0x6E
	.byte		0x5F
	.byte		0x3C
	.byte		0x4B
	.byte		Type_Poison
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Battle_Armour
	.byte		Ability_Sniper
	.byte		Ability_Keen_Eye
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AF
	.byte		0x46
	.byte		0x2D

pointerSet452:
	.word		pokemonInternalBaseData452_0

pokemonInternalBaseData453_0:
	.byte		0x30
	.byte		0x3D
	.byte		0x28
	.byte		0x32
	.byte		0x3D
	.byte		0x28
	.byte		Type_Poison
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Anticipation
	.byte		Ability_Dry_Skin
	.byte		Ability_Poison_Touch
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x64
	.byte		0x8C

pointerSet453:
	.word		pokemonInternalBaseData453_0

pokemonInternalBaseData454_0:
	.byte		0x53
	.byte		0x6A
	.byte		0x41
	.byte		0x55
	.byte		0x56
	.byte		0x41
	.byte		Type_Poison
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Anticipation
	.byte		Ability_Dry_Skin
	.byte		Ability_Poison_Touch
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AC
	.byte		0x46
	.byte		0x4B

pointerSet454:
	.word		pokemonInternalBaseData454_0

pokemonInternalBaseData455_0:
	.byte		0x4A
	.byte		0x64
	.byte		0x48
	.byte		0x2E
	.byte		0x5A
	.byte		0x48
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x009F
	.byte		0x46
	.byte		0xC8

pointerSet455:
	.word		pokemonInternalBaseData455_0

pokemonInternalBaseData456_0:
	.byte		0x31
	.byte		0x31
	.byte		0x38
	.byte		0x42
	.byte		0x31
	.byte		0x3D
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Storm_Drain
	.byte		Ability_Water_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0042
	.byte		0x46
	.byte		0xBE

pointerSet456:
	.word		pokemonInternalBaseData456_0

pokemonInternalBaseData457_0:
	.byte		0x45
	.byte		0x45
	.byte		0x4C
	.byte		0x5B
	.byte		0x45
	.byte		0x56
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Storm_Drain
	.byte		Ability_Water_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A1
	.byte		0x46
	.byte		0x4B

pointerSet457:
	.word		pokemonInternalBaseData457_0

pokemonInternalBaseData458_0:
	.byte		0x2D
	.byte		0x14
	.byte		0x32
	.byte		0x32
	.byte		0x3C
	.byte		0x78
	.byte		Type_Water
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Water_Absorb
	.byte		Ability_Water_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0045
	.byte		0x46
	.byte		0x19

pointerSet458:
	.word		pokemonInternalBaseData458_0

pokemonInternalBaseData459_0:
	.byte		0x3C
	.byte		0x3E
	.byte		0x32
	.byte		0x28
	.byte		0x3E
	.byte		0x3C
	.byte		Type_Grass
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Snow_Warning
	.byte		Ability_Snow_Warning
	.byte		Ability_Soundproof
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0043
	.byte		0x46
	.byte		0x78

pointerSet459:
	.word		pokemonInternalBaseData459_0

pokemonInternalBaseData460_0:
	.byte		0x5A
	.byte		0x5C
	.byte		0x4B
	.byte		0x3C
	.byte		0x5C
	.byte		0x55
	.byte		Type_Grass
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Snow_Warning
	.byte		Ability_Snow_Warning
	.byte		Ability_Soundproof
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0104
	.short		0x00AD
	.byte		0x46
	.byte		0x3C

pointerSet460:
	.word		pokemonInternalBaseData460_0

pokemonInternalBaseData461_0:
	.byte		0x46
	.byte		0x78
	.byte		0x41
	.byte		0x7D
	.byte		0x2D
	.byte		0x55
	.byte		Type_Dark
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Pickpocket
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0044
	.short		0x00B3
	.byte		0x23
	.byte		0x2D

pointerSet461:
	.word		pokemonInternalBaseData461_0

pokemonInternalBaseData462_0:
	.byte		0x46
	.byte		0x46
	.byte		0x73
	.byte		0x3C
	.byte		0x82
	.byte		0x5A
	.byte		Type_Electric
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Magnet_Pull
	.byte		Ability_Sturdy
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00F1
	.byte		0x46
	.byte		0x1E

pointerSet462:
	.word		pokemonInternalBaseData462_0

pokemonInternalBaseData463_0:
	.byte		0x6E
	.byte		0x55
	.byte		0x5F
	.byte		0x32
	.byte		0x50
	.byte		0x5F
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Own_Tempo
	.byte		Ability_Oblivious
	.byte		Ability_Cloud_Nine
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00B4
	.byte		0x46
	.byte		0x1E

pointerSet463:
	.word		pokemonInternalBaseData463_0

pokemonInternalBaseData464_0:
	.byte		0x73
	.byte		0x8C
	.byte		0x82
	.byte		0x28
	.byte		0x37
	.byte		0x37
	.byte		Type_Ground
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Lightning_Rod
	.byte		Ability_Solid_Rock
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00F1
	.byte		0x46
	.byte		0x1E

pointerSet464:
	.word		pokemonInternalBaseData464_0

pokemonInternalBaseData465_0:
	.byte		0x64
	.byte		0x64
	.byte		0x7D
	.byte		0x32
	.byte		0x6E
	.byte		0x32
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Leaf_Guard
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00BB
	.byte		0x46
	.byte		0x1E

pointerSet465:
	.word		pokemonInternalBaseData465_0

pokemonInternalBaseData466_0:
	.byte		0x4B
	.byte		0x7B
	.byte		0x43
	.byte		0x5F
	.byte		0x5F
	.byte		0x55
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Motor_Drive
	.byte		Ability_Motor_Drive
	.byte		Ability_Vital_Spirit
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00F3
	.byte		0x46
	.byte		0x1E

pointerSet466:
	.word		pokemonInternalBaseData466_0

pokemonInternalBaseData467_0:
	.byte		0x4B
	.byte		0x5F
	.byte		0x43
	.byte		0x53
	.byte		0x7D
	.byte		0x5F
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flame_Body
	.byte		Ability_Flame_Body
	.byte		Ability_Vital_Spirit
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00F3
	.byte		0x46
	.byte		0x1E

pointerSet467:
	.word		pokemonInternalBaseData467_0

pokemonInternalBaseData468_0:
	.byte		0x55
	.byte		0x32
	.byte		0x5F
	.byte		0x50
	.byte		0x78
	.byte		0x73
	.byte		Type_Fairy
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Serene_Grace
	.byte		Ability_Super_Luck
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0600
	.short		0x00F5
	.byte		0x46
	.byte		0x1E

pointerSet468:
	.word		pokemonInternalBaseData468_0

pokemonInternalBaseData469_0:
	.byte		0x56
	.byte		0x4C
	.byte		0x56
	.byte		0x5F
	.byte		0x74
	.byte		0x38
	.byte		Type_Bug
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Speed_Boost
	.byte		Ability_Tinted_Lens
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00B4
	.byte		0x46
	.byte		0x1E

pointerSet469:
	.word		pokemonInternalBaseData469_0

pokemonInternalBaseData470_0:
	.byte		0x41
	.byte		0x6E
	.byte		0x82
	.byte		0x5F
	.byte		0x3C
	.byte		0x41
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Leaf_Guard
	.byte		Ability_Leaf_Guard
	.byte		Ability_Chlorophyll
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00B8
	.byte		0x23
	.byte		0x2D

pointerSet470:
	.word		pokemonInternalBaseData470_0

pokemonInternalBaseData471_0:
	.byte		0x41
	.byte		0x3C
	.byte		0x6E
	.byte		0x41
	.byte		0x82
	.byte		0x5F
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Snow_Cloak
	.byte		Ability_Snow_Cloak
	.byte		Ability_Ice_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00B8
	.byte		0x23
	.byte		0x2D

pointerSet471:
	.word		pokemonInternalBaseData471_0

pokemonInternalBaseData472_0:
	.byte		0x4B
	.byte		0x5F
	.byte		0x7D
	.byte		0x5F
	.byte		0x2D
	.byte		0x4B
	.byte		Type_Ground
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Hyper_Cutter
	.byte		Ability_Sand_Veil
	.byte		Ability_Poison_Heal
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00B3
	.byte		0x46
	.byte		0x1E

pointerSet472:
	.word		pokemonInternalBaseData472_0

pokemonInternalBaseData473_0:
	.byte		0x6E
	.byte		0x82
	.byte		0x50
	.byte		0x50
	.byte		0x46
	.byte		0x3C
	.byte		Type_Ice
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Oblivious
	.byte		Ability_Snow_Cloak
	.byte		Ability_Thick_Fat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00EF
	.byte		0x46
	.byte		0x32

pointerSet473:
	.word		pokemonInternalBaseData473_0

pokemonInternalBaseData474_0:
	.byte		0x55
	.byte		0x50
	.byte		0x46
	.byte		0x5A
	.byte		0x87
	.byte		0x4B
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Adaptability
	.byte		Ability_Download
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00F1
	.byte		0x46
	.byte		0x1E

pointerSet474:
	.word		pokemonInternalBaseData474_0

pokemonInternalBaseData475_0:
	.byte		0x44
	.byte		0x7D
	.byte		0x41
	.byte		0x50
	.byte		0x41
	.byte		0x73
	.byte		Type_Psychic
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Steadfast
	.byte		Ability_Steadfast
	.byte		Ability_Justified
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00E9
	.byte		0x23
	.byte		0x2D

pointerSet475:
	.word		pokemonInternalBaseData475_0

pokemonInternalBaseData476_0:
	.byte		0x3C
	.byte		0x37
	.byte		0x91
	.byte		0x28
	.byte		0x4B
	.byte		0x96
	.byte		Type_Rock
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Magnet_Pull
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0810
	.short		0x00B8
	.byte		0x46
	.byte		0x3C

pointerSet476:
	.word		pokemonInternalBaseData476_0

pokemonInternalBaseData477_0:
	.byte		0x2D
	.byte		0x64
	.byte		0x87
	.byte		0x2D
	.byte		0x41
	.byte		0x87
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Frisk
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0810
	.short		0x00EC
	.byte		0x23
	.byte		0x2D

pointerSet477:
	.word		pokemonInternalBaseData477_0

pokemonInternalBaseData478_0:
	.byte		0x46
	.byte		0x50
	.byte		0x46
	.byte		0x6E
	.byte		0x50
	.byte		0x46
	.byte		Type_Ice
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Snow_Cloak
	.byte		Ability_Snow_Cloak
	.byte		Ability_Cursed_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A8
	.byte		0x46
	.byte		0x4B

pointerSet478:
	.word		pokemonInternalBaseData478_0

pokemonInternalBaseData479_0:
	.byte		50
	.byte		50
	.byte		77
	.byte		91
	.byte		95
	.byte		77
	.byte		Type_Electric
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		154
	.byte		70
	.byte		45

pokemonInternalBaseData479_1:
	.byte		50
	.byte		65
	.byte		107
	.byte		86
	.byte		105
	.byte		107
	.byte		Type_Electric
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		154
	.byte		70
	.byte		45

pokemonInternalBaseData479_2:
	.byte		50
	.byte		65
	.byte		107
	.byte		86
	.byte		105
	.byte		107
	.byte		Type_Electric
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		154
	.byte		70
	.byte		45

pokemonInternalBaseData479_3:
	.byte		50
	.byte		65
	.byte		107
	.byte		86
	.byte		105
	.byte		107
	.byte		Type_Electric
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		154
	.byte		70
	.byte		45

pokemonInternalBaseData479_4:
	.byte		50
	.byte		65
	.byte		107
	.byte		86
	.byte		105
	.byte		107
	.byte		Type_Electric
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		154
	.byte		70
	.byte		45

pokemonInternalBaseData479_5:
	.byte		50
	.byte		65
	.byte		107
	.byte		86
	.byte		105
	.byte		107
	.byte		Type_Electric
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0140
	.short		154
	.byte		70
	.byte		45

pointerSet479:
	.word		pokemonInternalBaseData479_0
	.word		pokemonInternalBaseData479_1
	.word		pokemonInternalBaseData479_2
	.word		pokemonInternalBaseData479_3
	.word		pokemonInternalBaseData479_4
	.word		pokemonInternalBaseData479_5

pokemonInternalBaseData480_0:
	.byte		0x4B
	.byte		0x4B
	.byte		0x82
	.byte		0x5F
	.byte		0x4B
	.byte		0x82
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0420
	.short		0x0105
	.byte		0x8C
	.byte		0x03

pointerSet480:
	.word		pokemonInternalBaseData480_0

pokemonInternalBaseData481_0:
	.byte		0x50
	.byte		0x69
	.byte		0x69
	.byte		0x50
	.byte		0x69
	.byte		0x69
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0504
	.short		0x0105
	.byte		0x8C
	.byte		0x03

pointerSet481:
	.word		pokemonInternalBaseData481_0

pokemonInternalBaseData482_0:
	.byte		0x4B
	.byte		0x7D
	.byte		0x46
	.byte		0x73
	.byte		0x7D
	.byte		0x46
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0108
	.short		0x0105
	.byte		0x8C
	.byte		0x03

pointerSet482:
	.word		pokemonInternalBaseData482_0

pokemonInternalBaseData483_0:
	.byte		0x64
	.byte		0x78
	.byte		0x78
	.byte		0x5A
	.byte		0x96
	.byte		0x64
	.byte		Type_Steel
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x0132
	.byte		0x00
	.byte		0x1E

pointerSet483:
	.word		pokemonInternalBaseData483_0

pokemonInternalBaseData484_0:
	.byte		0x5A
	.byte		0x78
	.byte		0x64
	.byte		0x64
	.byte		0x96
	.byte		0x78
	.byte		Type_Water
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x0132
	.byte		0x00
	.byte		0x1E

pointerSet484:
	.word		pokemonInternalBaseData484_0

pokemonInternalBaseData485_0:
	.byte		0x5B
	.byte		0x5A
	.byte		0x6A
	.byte		0x4D
	.byte		0x82
	.byte		0x6A
	.byte		Type_Fire
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Flash_Fire
	.byte		Ability_Flash_Fire
	.byte		Ability_Flame_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x010E
	.byte		0x64
	.byte		0x03

pointerSet485:
	.word		pokemonInternalBaseData485_0

pokemonInternalBaseData486_0:
	.byte		0x6E
	.byte		0xA0
	.byte		0x6E
	.byte		0x64
	.byte		0x50
	.byte		0x6E
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Slow_Start
	.byte		Ability_Slow_Start
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x012E
	.byte		0x00
	.byte		0x03

pointerSet486:
	.word		pokemonInternalBaseData486_0

pokemonInternalBaseData487_0:
	.byte		150
	.byte		100
	.byte		120
	.byte		90
	.byte		100
	.byte		120
	.byte		Type_Ghost
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		3
	.short		306
	.byte		0
	.byte		3

pokemonInternalBaseData487_1:
	.byte		150
	.byte		120
	.byte		100
	.byte		90
	.byte		120
	.byte		100
	.byte		Type_Ghost
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		3
	.short		306
	.byte		0
	.byte		3

pointerSet487:
	.word		pokemonInternalBaseData487_0
	.word		pokemonInternalBaseData487_1

pokemonInternalBaseData488_0:
	.byte		0x78
	.byte		0x46
	.byte		0x78
	.byte		0x55
	.byte		0x4B
	.byte		0x82
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x010E
	.byte		0x64
	.byte		0x03

pointerSet488:
	.word		pokemonInternalBaseData488_0

pokemonInternalBaseData489_0:
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		0x50
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Hydration
	.byte		Ability_Hydration
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x00D8
	.byte		0x46
	.byte		0x1E

pointerSet489:
	.word		pokemonInternalBaseData489_0

pokemonInternalBaseData490_0:
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Hydration
	.byte		Ability_Hydration
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x010E
	.byte		0x46
	.byte		0x03

pointerSet490:
	.word		pokemonInternalBaseData490_0

pokemonInternalBaseData491_0:
	.byte		0x46
	.byte		0x5A
	.byte		0x5A
	.byte		0x7D
	.byte		0x87
	.byte		0x5A
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Bad_Dreams
	.byte		Ability_Bad_Dreams
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0240
	.short		0x010E
	.byte		0x00
	.byte		0x03

pointerSet491:
	.word		pokemonInternalBaseData491_0

pokemonInternalBaseData492_0:
	.byte		100
	.byte		100
	.byte		100
	.byte		100
	.byte		100
	.byte		100
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Natural_Cure
	.byte		Ability_Natural_Cure
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		3
	.short		270
	.byte		100
	.byte		45

pokemonInternalBaseData492_1:
	.byte		100
	.byte		103
	.byte		75
	.byte		127
	.byte		120
	.byte		75
	.byte		Type_Grass
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Serene_Grace
	.byte		Ability_Serene_Grace
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		3
	.short		270
	.byte		100
	.byte		45

pointerSet492:
	.word		pokemonInternalBaseData492_0
	.word		pokemonInternalBaseData492_1

pokemonInternalBaseData493_0:
	.byte		0x78
	.byte		0x78
	.byte		0x78
	.byte		0x78
	.byte		0x78
	.byte		0x78
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Multitype
	.byte		Ability_Multitype
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x0144
	.byte		0x00
	.byte		0x03

pointerSet493:
	.word		pokemonInternalBaseData493_0

pokemonInternalBaseData494_0:
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		0x64
	.byte		Type_Psychic
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Victory_Star
	.byte		Ability_Victory_Star
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x010E
	.byte		0x64
	.byte		0x03

pointerSet494:
	.word		pokemonInternalBaseData494_0

pokemonInternalBaseData495_0:
	.byte		0x2D
	.byte		0x2D
	.byte		0x37
	.byte		0x3F
	.byte		0x2D
	.byte		0x37
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Contrary
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x001C
	.byte		0x46
	.byte		0x2D

pointerSet495:
	.word		pokemonInternalBaseData495_0

pokemonInternalBaseData496_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x4B
	.byte		0x53
	.byte		0x3C
	.byte		0x4B
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Contrary
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0091
	.byte		0x46
	.byte		0x2D

pointerSet496:
	.word		pokemonInternalBaseData496_0

pokemonInternalBaseData497_0:
	.byte		0x4B
	.byte		0x4B
	.byte		0x5F
	.byte		0x71
	.byte		0x4B
	.byte		0x5F
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Overgrow
	.byte		Ability_Overgrow
	.byte		Ability_Contrary
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x00EE
	.byte		0x46
	.byte		0x2D

pointerSet497:
	.word		pokemonInternalBaseData497_0

pokemonInternalBaseData498_0:
	.byte		0x41
	.byte		0x3F
	.byte		0x2D
	.byte		0x2D
	.byte		0x2D
	.byte		0x2D
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Thick_Fat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x001C
	.byte		0x46
	.byte		0x2D

pointerSet498:
	.word		pokemonInternalBaseData498_0

pokemonInternalBaseData499_0:
	.byte		0x5A
	.byte		0x5D
	.byte		0x37
	.byte		0x37
	.byte		0x46
	.byte		0x37
	.byte		Type_Fire
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Thick_Fat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0092
	.byte		0x46
	.byte		0x2D

pointerSet499:
	.word		pokemonInternalBaseData499_0

pokemonInternalBaseData500_0:
	.byte		0x6E
	.byte		0x7B
	.byte		0x41
	.byte		0x41
	.byte		0x64
	.byte		0x41
	.byte		Type_Fire
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Blaze
	.byte		Ability_Blaze
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00EE
	.byte		0x46
	.byte		0x2D

pointerSet500:
	.word		pokemonInternalBaseData500_0

pokemonInternalBaseData501_0:
	.byte		0x37
	.byte		0x37
	.byte		0x2D
	.byte		0x2D
	.byte		0x3F
	.byte		0x2D
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Shell_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x001C
	.byte		0x46
	.byte		0x2D

pointerSet501:
	.word		pokemonInternalBaseData501_0

pokemonInternalBaseData502_0:
	.byte		0x4B
	.byte		0x4B
	.byte		0x3C
	.byte		0x3C
	.byte		0x53
	.byte		0x3C
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Shell_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x0091
	.byte		0x46
	.byte		0x2D

pointerSet502:
	.word		pokemonInternalBaseData502_0

pokemonInternalBaseData503_0:
	.byte		0x5F
	.byte		0x64
	.byte		0x55
	.byte		0x46
	.byte		0x6C
	.byte		0x46
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Torrent
	.byte		Ability_Torrent
	.byte		Ability_Shell_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00EE
	.byte		0x46
	.byte		0x2D

pointerSet503:
	.word		pokemonInternalBaseData503_0

pokemonInternalBaseData504_0:
	.byte		0x2D
	.byte		0x37
	.byte		0x27
	.byte		0x2A
	.byte		0x23
	.byte		0x27
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Run_Away
	.byte		Ability_Keen_Eye
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0033
	.byte		0x46
	.byte		0xFF

pointerSet504:
	.word		pokemonInternalBaseData504_0

pokemonInternalBaseData505_0:
	.byte		0x3C
	.byte		0x55
	.byte		0x45
	.byte		0x4D
	.byte		0x3C
	.byte		0x45
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Illuminate
	.byte		Ability_Keen_Eye
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0093
	.byte		0x46
	.byte		0xFF

pointerSet505:
	.word		pokemonInternalBaseData505_0

pokemonInternalBaseData506_0:
	.byte		0x2D
	.byte		0x3C
	.byte		0x2D
	.byte		0x37
	.byte		0x19
	.byte		0x2D
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Vital_Spirit
	.byte		Ability_Pickup
	.byte		Ability_Run_Away
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0037
	.byte		0x46
	.byte		0xFF

pointerSet506:
	.word		pokemonInternalBaseData506_0

pokemonInternalBaseData507_0:
	.byte		0x41
	.byte		0x50
	.byte		0x41
	.byte		0x3C
	.byte		0x23
	.byte		0x41
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Sand_Rush
	.byte		Ability_Scrappy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0082
	.byte		0x46
	.byte		0x78

pointerSet507:
	.word		pokemonInternalBaseData507_0

pokemonInternalBaseData508_0:
	.byte		0x55
	.byte		0x64
	.byte		0x5A
	.byte		0x50
	.byte		0x2D
	.byte		0x5A
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Sand_Rush
	.byte		Ability_Scrappy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00DD
	.byte		0x46
	.byte		0x2D

pointerSet508:
	.word		pokemonInternalBaseData508_0

pokemonInternalBaseData509_0:
	.byte		0x29
	.byte		0x32
	.byte		0x25
	.byte		0x42
	.byte		0x32
	.byte		0x25
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Limber
	.byte		Ability_Unburden
	.byte		Ability_Prankster
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0038
	.byte		0x46
	.byte		0xFF

pointerSet509:
	.word		pokemonInternalBaseData509_0

pokemonInternalBaseData510_0:
	.byte		0x40
	.byte		0x58
	.byte		0x32
	.byte		0x6A
	.byte		0x58
	.byte		0x32
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Limber
	.byte		Ability_Unburden
	.byte		Ability_Prankster
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x009C
	.byte		0x46
	.byte		0x5A

pointerSet510:
	.word		pokemonInternalBaseData510_0

pokemonInternalBaseData511_0:
	.byte		0x32
	.byte		0x35
	.byte		0x30
	.byte		0x40
	.byte		0x35
	.byte		0x30
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Gluttony
	.byte		Ability_Gluttony
	.byte		Ability_Overgrow
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003F
	.byte		0x46
	.byte		0xBE

pointerSet511:
	.word		pokemonInternalBaseData511_0

pokemonInternalBaseData512_0:
	.byte		0x4B
	.byte		0x62
	.byte		0x3F
	.byte		0x65
	.byte		0x62
	.byte		0x3F
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Gluttony
	.byte		Ability_Gluttony
	.byte		Ability_Overgrow
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AE
	.byte		0x46
	.byte		0x4B

pointerSet512:
	.word		pokemonInternalBaseData512_0

pokemonInternalBaseData513_0:
	.byte		0x32
	.byte		0x35
	.byte		0x30
	.byte		0x40
	.byte		0x35
	.byte		0x30
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Gluttony
	.byte		Ability_Gluttony
	.byte		Ability_Blaze
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003F
	.byte		0x46
	.byte		0xBE

pointerSet513:
	.word		pokemonInternalBaseData513_0

pokemonInternalBaseData514_0:
	.byte		0x4B
	.byte		0x62
	.byte		0x3F
	.byte		0x65
	.byte		0x62
	.byte		0x3F
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Gluttony
	.byte		Ability_Gluttony
	.byte		Ability_Blaze
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AE
	.byte		0x46
	.byte		0x4B

pointerSet514:
	.word		pokemonInternalBaseData514_0

pokemonInternalBaseData515_0:
	.byte		0x32
	.byte		0x35
	.byte		0x30
	.byte		0x40
	.byte		0x35
	.byte		0x30
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Gluttony
	.byte		Ability_Gluttony
	.byte		Ability_Torrent
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003F
	.byte		0x46
	.byte		0xBE

pointerSet515:
	.word		pokemonInternalBaseData515_0

pokemonInternalBaseData516_0:
	.byte		0x4B
	.byte		0x62
	.byte		0x3F
	.byte		0x65
	.byte		0x62
	.byte		0x3F
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Gluttony
	.byte		Ability_Gluttony
	.byte		Ability_Torrent
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AE
	.byte		0x46
	.byte		0x4B

pointerSet516:
	.word		pokemonInternalBaseData516_0

pokemonInternalBaseData517_0:
	.byte		0x4C
	.byte		0x19
	.byte		0x2D
	.byte		0x18
	.byte		0x43
	.byte		0x37
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Forewarn
	.byte		Ability_Synchronise
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003A
	.byte		0x46
	.byte		0xBE

pointerSet517:
	.word		pokemonInternalBaseData517_0

pokemonInternalBaseData518_0:
	.byte		0x74
	.byte		0x37
	.byte		0x55
	.byte		0x1D
	.byte		0x6B
	.byte		0x5F
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Forewarn
	.byte		Ability_Synchronise
	.byte		Ability_Telepathy
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00AA
	.byte		0x46
	.byte		0x4B

pointerSet518:
	.word		pokemonInternalBaseData518_0

pokemonInternalBaseData519_0:
	.byte		0x32
	.byte		0x37
	.byte		0x32
	.byte		0x2B
	.byte		0x24
	.byte		0x1E
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Big_Pecks
	.byte		Ability_Super_Luck
	.byte		Ability_Rivalry
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0035
	.byte		0x46
	.byte		0xFF

pointerSet519:
	.word		pokemonInternalBaseData519_0

pokemonInternalBaseData520_0:
	.byte		0x3E
	.byte		0x4D
	.byte		0x3E
	.byte		0x41
	.byte		0x32
	.byte		0x2A
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Big_Pecks
	.byte		Ability_Super_Luck
	.byte		Ability_Rivalry
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x007D
	.byte		0x46
	.byte		0x78

pointerSet520:
	.word		pokemonInternalBaseData520_0

pokemonInternalBaseData521_0:
	.byte		0x50
	.byte		0x69
	.byte		0x50
	.byte		0x5D
	.byte		0x41
	.byte		0x37
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Big_Pecks
	.byte		Ability_Super_Luck
	.byte		Ability_Rivalry
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00D7
	.byte		0x46
	.byte		0x2D

pointerSet521:
	.word		pokemonInternalBaseData521_0

pokemonInternalBaseData522_0:
	.byte		0x2D
	.byte		0x3C
	.byte		0x20
	.byte		0x4C
	.byte		0x32
	.byte		0x20
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Lightning_Rod
	.byte		Ability_Motor_Drive
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003B
	.byte		0x46
	.byte		0xBE

pointerSet522:
	.word		pokemonInternalBaseData522_0

pokemonInternalBaseData523_0:
	.byte		0x4B
	.byte		0x64
	.byte		0x3F
	.byte		0x74
	.byte		0x50
	.byte		0x3F
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Lightning_Rod
	.byte		Ability_Motor_Drive
	.byte		Ability_Sap_Sipper
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AE
	.byte		0x46
	.byte		0x4B

pointerSet523:
	.word		pokemonInternalBaseData523_0

pokemonInternalBaseData524_0:
	.byte		0x37
	.byte		0x4B
	.byte		0x55
	.byte		0x0F
	.byte		0x19
	.byte		0x19
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0038
	.byte		0x46
	.byte		0xFF

pointerSet524:
	.word		pokemonInternalBaseData524_0

pokemonInternalBaseData525_0:
	.byte		0x46
	.byte		0x69
	.byte		0x69
	.byte		0x14
	.byte		0x32
	.byte		0x28
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0014
	.short		0x0089
	.byte		0x46
	.byte		0x78

pointerSet525:
	.word		pokemonInternalBaseData525_0

pokemonInternalBaseData526_0:
	.byte		0x55
	.byte		0x87
	.byte		0x82
	.byte		0x19
	.byte		0x3C
	.byte		0x46
	.byte		Type_Rock
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Sturdy
	.byte		Ability_Sand_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00E3
	.byte		0x46
	.byte		0x2D

pointerSet526:
	.word		pokemonInternalBaseData526_0

pokemonInternalBaseData527_0:
	.byte		0x37
	.byte		0x2D
	.byte		0x2B
	.byte		0x48
	.byte		0x37
	.byte		0x2B
	.byte		Type_Psychic
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Unaware
	.byte		Ability_Klutz
	.byte		Ability_Simple
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003F
	.byte		0x46
	.byte		0xBE

pointerSet527:
	.word		pokemonInternalBaseData527_0

pokemonInternalBaseData528_0:
	.byte		0x43
	.byte		0x39
	.byte		0x37
	.byte		0x72
	.byte		0x4D
	.byte		0x37
	.byte		Type_Psychic
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Unaware
	.byte		Ability_Klutz
	.byte		Ability_Simple
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0095
	.byte		0x46
	.byte		0x2D

pointerSet528:
	.word		pokemonInternalBaseData528_0

pokemonInternalBaseData529_0:
	.byte		0x3C
	.byte		0x55
	.byte		0x28
	.byte		0x44
	.byte		0x1E
	.byte		0x2D
	.byte		Type_Ground
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Sand_Rush
	.byte		Ability_Sand_Force
	.byte		Ability_Mould_Breaker
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0042
	.byte		0x46
	.byte		0x78

pointerSet529:
	.word		pokemonInternalBaseData529_0

pokemonInternalBaseData530_0:
	.byte		0x6E
	.byte		0x87
	.byte		0x3C
	.byte		0x58
	.byte		0x32
	.byte		0x41
	.byte		Type_Ground
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Sand_Rush
	.byte		Ability_Sand_Force
	.byte		Ability_Mould_Breaker
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00B2
	.byte		0x46
	.byte		0x3C

pointerSet530:
	.word		pokemonInternalBaseData530_0

pokemonInternalBaseData531_0:
	.byte		0x67
	.byte		0x3C
	.byte		0x56
	.byte		0x32
	.byte		0x3C
	.byte		0x56
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Healer
	.byte		Ability_Regenerator
	.byte		Ability_Klutz
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0186
	.byte		0x46
	.byte		0xFF

pointerSet531:
	.word		pokemonInternalBaseData531_0

pokemonInternalBaseData532_0:
	.byte		0x4B
	.byte		0x50
	.byte		0x37
	.byte		0x23
	.byte		0x19
	.byte		0x23
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Sheer_Force
	.byte		Ability_Iron_Fist
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003D
	.byte		0x46
	.byte		0xBE

pointerSet532:
	.word		pokemonInternalBaseData532_0

pokemonInternalBaseData533_0:
	.byte		0x55
	.byte		0x69
	.byte		0x55
	.byte		0x28
	.byte		0x28
	.byte		0x32
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Sheer_Force
	.byte		Ability_Iron_Fist
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x008E
	.byte		0x46
	.byte		0x5A

pointerSet533:
	.word		pokemonInternalBaseData533_0

pokemonInternalBaseData534_0:
	.byte		0x69
	.byte		0x8C
	.byte		0x5F
	.byte		0x2D
	.byte		0x37
	.byte		0x41
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Sheer_Force
	.byte		Ability_Iron_Fist
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00E3
	.byte		0x46
	.byte		0x2D

pointerSet534:
	.word		pokemonInternalBaseData534_0

pokemonInternalBaseData535_0:
	.byte		0x32
	.byte		0x32
	.byte		0x28
	.byte		0x40
	.byte		0x32
	.byte		0x28
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Hydration
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003B
	.byte		0x46
	.byte		0xFF

pointerSet535:
	.word		pokemonInternalBaseData535_0

pokemonInternalBaseData536_0:
	.byte		0x4B
	.byte		0x41
	.byte		0x37
	.byte		0x45
	.byte		0x41
	.byte		0x37
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Hydration
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x0086
	.byte		0x46
	.byte		0x78

pointerSet536:
	.word		pokemonInternalBaseData536_0

pokemonInternalBaseData537_0:
	.byte		0x69
	.byte		0x55
	.byte		0x4B
	.byte		0x4A
	.byte		0x55
	.byte		0x4B
	.byte		Type_Water
	.byte		Type_Ground
	.word		0x00000000
	.byte		Ability_Swift_Swim
	.byte		Ability_Poison_Touch
	.byte		Ability_Water_Absorb
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0003
	.short		0x00E1
	.byte		0x46
	.byte		0x2D

pointerSet537:
	.word		pokemonInternalBaseData537_0

pokemonInternalBaseData538_0:
	.byte		0x78
	.byte		0x64
	.byte		0x55
	.byte		0x2D
	.byte		0x1E
	.byte		0x55
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Guts
	.byte		Ability_Inner_Focus
	.byte		Ability_Mould_Breaker
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A3
	.byte		0x46
	.byte		0x2D

pointerSet538:
	.word		pokemonInternalBaseData538_0

pokemonInternalBaseData539_0:
	.byte		0x4B
	.byte		0x7D
	.byte		0x4B
	.byte		0x55
	.byte		0x1E
	.byte		0x4B
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Inner_Focus
	.byte		Ability_Mould_Breaker
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A3
	.byte		0x46
	.byte		0x2D

pointerSet539:
	.word		pokemonInternalBaseData539_0

pokemonInternalBaseData540_0:
	.byte		0x2D
	.byte		0x35
	.byte		0x46
	.byte		0x2A
	.byte		0x28
	.byte		0x3C
	.byte		Type_Bug
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Chlorophyll
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003E
	.byte		0x46
	.byte		0xFF

pointerSet540:
	.word		pokemonInternalBaseData540_0

pokemonInternalBaseData541_0:
	.byte		0x37
	.byte		0x3F
	.byte		0x5A
	.byte		0x2A
	.byte		0x32
	.byte		0x50
	.byte		Type_Bug
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Leaf_Guard
	.byte		Ability_Chlorophyll
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x0085
	.byte		0x46
	.byte		0x78

pointerSet541:
	.word		pokemonInternalBaseData541_0

pokemonInternalBaseData542_0:
	.byte		0x4B
	.byte		0x67
	.byte		0x50
	.byte		0x5C
	.byte		0x46
	.byte		0x46
	.byte		Type_Bug
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Chlorophyll
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00DD
	.byte		0x46
	.byte		0x2D

pointerSet542:
	.word		pokemonInternalBaseData542_0

pokemonInternalBaseData543_0:
	.byte		0x1E
	.byte		0x2D
	.byte		0x3B
	.byte		0x39
	.byte		0x1E
	.byte		0x27
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Swarm
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0034
	.byte		0x46
	.byte		0xFF

pointerSet543:
	.word		pokemonInternalBaseData543_0

pokemonInternalBaseData544_0:
	.byte		0x28
	.byte		0x37
	.byte		0x63
	.byte		0x2F
	.byte		0x28
	.byte		0x4F
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Swarm
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x007E
	.byte		0x46
	.byte		0x78

pointerSet544:
	.word		pokemonInternalBaseData544_0

pokemonInternalBaseData545_0:
	.byte		0x3C
	.byte		0x5A
	.byte		0x59
	.byte		0x70
	.byte		0x37
	.byte		0x45
	.byte		Type_Bug
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Poison_Point
	.byte		Ability_Swarm
	.byte		Ability_Speed_Boost
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x00C0
	.short		0x00D6
	.byte		0x46
	.byte		0x2D

pointerSet545:
	.word		pokemonInternalBaseData545_0

pokemonInternalBaseData546_0:
	.byte		0x28
	.byte		0x1B
	.byte		0x3C
	.byte		0x42
	.byte		0x25
	.byte		0x32
	.byte		Type_Grass
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Prankster
	.byte		Ability_Infiltrator
	.byte		Ability_Chlorophyll
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0038
	.byte		0x46
	.byte		0xBE

pointerSet546:
	.word		pokemonInternalBaseData546_0

pokemonInternalBaseData547_0:
	.byte		0x3C
	.byte		0x43
	.byte		0x55
	.byte		0x74
	.byte		0x4D
	.byte		0x4B
	.byte		Type_Grass
	.byte		Type_Fairy
	.word		0x00000000
	.byte		Ability_Prankster
	.byte		Ability_Infiltrator
	.byte		Ability_Chlorophyll
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A8
	.byte		0x46
	.byte		0x4B

pointerSet547:
	.word		pokemonInternalBaseData547_0

pokemonInternalBaseData548_0:
	.byte		0x2D
	.byte		0x23
	.byte		0x32
	.byte		0x1E
	.byte		0x46
	.byte		0x32
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Own_Tempo
	.byte		Ability_Leaf_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0038
	.byte		0x46
	.byte		0xBE

pointerSet548:
	.word		pokemonInternalBaseData548_0

pokemonInternalBaseData549_0:
	.byte		0x46
	.byte		0x3C
	.byte		0x4B
	.byte		0x5A
	.byte		0x6E
	.byte		0x4B
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Own_Tempo
	.byte		Ability_Leaf_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00A8
	.byte		0x46
	.byte		0x4B

pointerSet549:
	.word		pokemonInternalBaseData549_0

pokemonInternalBaseData550_0:
	.byte		0x46
	.byte		0x5C
	.byte		0x41
	.byte		0x62
	.byte		0x50
	.byte		0x37
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Reckless
	.byte		Ability_Adaptability
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A1
	.byte		0x46
	.byte		0x19

pointerSet550:
	.word		pokemonInternalBaseData550_0

pokemonInternalBaseData551_0:
	.byte		0x32
	.byte		0x48
	.byte		0x23
	.byte		0x41
	.byte		0x23
	.byte		0x23
	.byte		Type_Ground
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Moxie
	.byte		Ability_Anger_Point
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003A
	.byte		0x46
	.byte		0xB4

pointerSet551:
	.word		pokemonInternalBaseData551_0

pokemonInternalBaseData552_0:
	.byte		0x3C
	.byte		0x52
	.byte		0x2D
	.byte		0x4A
	.byte		0x2D
	.byte		0x2D
	.byte		Type_Ground
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Moxie
	.byte		Ability_Anger_Point
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x007B
	.byte		0x46
	.byte		0x5A

pointerSet552:
	.word		pokemonInternalBaseData552_0

pokemonInternalBaseData553_0:
	.byte		0x5F
	.byte		0x75
	.byte		0x46
	.byte		0x5C
	.byte		0x41
	.byte		0x46
	.byte		Type_Ground
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Moxie
	.byte		Ability_Anger_Point
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00E5
	.byte		0x46
	.byte		0x2D

pointerSet553:
	.word		pokemonInternalBaseData553_0

pokemonInternalBaseData554_0:
	.byte		0x46
	.byte		0x5A
	.byte		0x2D
	.byte		0x32
	.byte		0x0F
	.byte		0x2D
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Hustle
	.byte		Ability_Inner_Focus
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003F
	.byte		0x46
	.byte		0x78

pointerSet554:
	.word		pokemonInternalBaseData554_0

pokemonInternalBaseData555_0:
	.byte		105
	.byte		140
	.byte		55
	.byte		95
	.byte		30
	.byte		55
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Sheer_Force
	.byte		Ability_Sheer_Force
	.byte		Ability_Zen_Mode
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		8
	.short		168
	.byte		70
	.byte		60

pokemonInternalBaseData555_1:
	.byte		105
	.byte		30
	.byte		105
	.byte		55
	.byte		140
	.byte		105
	.byte		Type_Fire
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Zen_Mode
	.byte		Ability_Zen_Mode
	.byte		Ability_Zen_Mode
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		512
	.short		168
	.byte		70
	.byte		60

pointerSet555:
	.word		pokemonInternalBaseData555_0
	.word		pokemonInternalBaseData555_1

pokemonInternalBaseData556_0:
	.byte		0x4B
	.byte		0x56
	.byte		0x43
	.byte		0x3C
	.byte		0x6A
	.byte		0x43
	.byte		Type_Grass
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Chlorophyll
	.byte		Ability_Storm_Drain
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00A1
	.byte		0x46
	.byte		0xFF

pointerSet556:
	.word		pokemonInternalBaseData556_0

pokemonInternalBaseData557_0:
	.byte		0x32
	.byte		0x41
	.byte		0x55
	.byte		0x37
	.byte		0x23
	.byte		0x23
	.byte		Type_Bug
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Shell_Armour
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0041
	.byte		0x46
	.byte		0xBE

pointerSet557:
	.word		pokemonInternalBaseData557_0

pokemonInternalBaseData558_0:
	.byte		0x46
	.byte		0x5F
	.byte		0x7D
	.byte		0x2D
	.byte		0x41
	.byte		0x4B
	.byte		Type_Bug
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Sturdy
	.byte		Ability_Shell_Armour
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00A6
	.byte		0x46
	.byte		0x4B

pointerSet558:
	.word		pokemonInternalBaseData558_0

pokemonInternalBaseData559_0:
	.byte		0x32
	.byte		0x4B
	.byte		0x46
	.byte		0x30
	.byte		0x23
	.byte		0x46
	.byte		Type_Dark
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Moxie
	.byte		Ability_Intimidate
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0046
	.byte		0x23
	.byte		0xB4

pointerSet559:
	.word		pokemonInternalBaseData559_0

pokemonInternalBaseData560_0:
	.byte		0x41
	.byte		0x5A
	.byte		0x73
	.byte		0x3A
	.byte		0x2D
	.byte		0x73
	.byte		Type_Dark
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Shed_Skin
	.byte		Ability_Moxie
	.byte		Ability_Intimidate
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0410
	.short		0x00AB
	.byte		0x46
	.byte		0x5A

pointerSet560:
	.word		pokemonInternalBaseData560_0

pokemonInternalBaseData561_0:
	.byte		0x48
	.byte		0x3A
	.byte		0x50
	.byte		0x61
	.byte		0x67
	.byte		0x50
	.byte		Type_Psychic
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Wonder_Skin
	.byte		Ability_Magic_Guard
	.byte		Ability_Tinted_Lens
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00AC
	.byte		0x46
	.byte		0x2D

pointerSet561:
	.word		pokemonInternalBaseData561_0

pokemonInternalBaseData562_0:
	.byte		0x26
	.byte		0x1E
	.byte		0x55
	.byte		0x1E
	.byte		0x37
	.byte		0x41
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Mummy
	.byte		Ability_Mummy
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003D
	.byte		0x46
	.byte		0xBE

pointerSet562:
	.word		pokemonInternalBaseData562_0

pokemonInternalBaseData563_0:
	.byte		0x3A
	.byte		0x32
	.byte		0x91
	.byte		0x1E
	.byte		0x5F
	.byte		0x69
	.byte		Type_Ghost
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Mummy
	.byte		Ability_Mummy
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00A9
	.byte		0x46
	.byte		0x5A

pointerSet563:
	.word		pokemonInternalBaseData563_0

pokemonInternalBaseData564_0:
	.byte		0x36
	.byte		0x4E
	.byte		0x67
	.byte		0x16
	.byte		0x35
	.byte		0x2D
	.byte		Type_Water
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Solid_Rock
	.byte		Ability_Sturdy
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x0047
	.byte		0x46
	.byte		0x2D

pointerSet564:
	.word		pokemonInternalBaseData564_0

pokemonInternalBaseData565_0:
	.byte		0x4A
	.byte		0x6C
	.byte		0x85
	.byte		0x20
	.byte		0x53
	.byte		0x41
	.byte		Type_Water
	.byte		Type_Rock
	.word		0x00000000
	.byte		Ability_Solid_Rock
	.byte		Ability_Sturdy
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet565:
	.word		pokemonInternalBaseData565_0

pokemonInternalBaseData566_0:
	.byte		0x37
	.byte		0x70
	.byte		0x2D
	.byte		0x46
	.byte		0x4A
	.byte		0x2D
	.byte		Type_Rock
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Defeatist
	.byte		Ability_Defeatist
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0047
	.byte		0x46
	.byte		0x2D

pointerSet566:
	.word		pokemonInternalBaseData566_0

pokemonInternalBaseData567_0:
	.byte		0x4B
	.byte		0x8C
	.byte		0x41
	.byte		0x6E
	.byte		0x70
	.byte		0x41
	.byte		Type_Rock
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Defeatist
	.byte		Ability_Defeatist
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00B1
	.byte		0x46
	.byte		0x2D

pointerSet567:
	.word		pokemonInternalBaseData567_0

pokemonInternalBaseData568_0:
	.byte		0x32
	.byte		0x32
	.byte		0x3E
	.byte		0x41
	.byte		0x28
	.byte		0x3E
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Stench
	.byte		Ability_Sticky_Hold
	.byte		Ability_Aftermath
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0042
	.byte		0x46
	.byte		0xBE

pointerSet568:
	.word		pokemonInternalBaseData568_0

pokemonInternalBaseData569_0:
	.byte		0x50
	.byte		0x5F
	.byte		0x52
	.byte		0x4B
	.byte		0x3C
	.byte		0x52
	.byte		Type_Poison
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Stench
	.byte		Ability_Weak_Armour
	.byte		Ability_Aftermath
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A6
	.byte		0x46
	.byte		0x3C

pointerSet569:
	.word		pokemonInternalBaseData569_0

pokemonInternalBaseData570_0:
	.byte		0x28
	.byte		0x41
	.byte		0x28
	.byte		0x41
	.byte		0x50
	.byte		0x28
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Illusion
	.byte		Ability_Illusion
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0042
	.byte		0x46
	.byte		0x4B

pointerSet570:
	.word		pokemonInternalBaseData570_0

pokemonInternalBaseData571_0:
	.byte		0x3C
	.byte		0x69
	.byte		0x3C
	.byte		0x69
	.byte		0x78
	.byte		0x3C
	.byte		Type_Dark
	.byte		Type_Dark
	.word		0x00000000
	.byte		Ability_Illusion
	.byte		Ability_Illusion
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00B3
	.byte		0x46
	.byte		0x2D

pointerSet571:
	.word		pokemonInternalBaseData571_0

pokemonInternalBaseData572_0:
	.byte		0x37
	.byte		0x32
	.byte		0x28
	.byte		0x4B
	.byte		0x28
	.byte		0x28
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Technician
	.byte		Ability_Skill_Link
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x003C
	.byte		0x46
	.byte		0xFF

pointerSet572:
	.word		pokemonInternalBaseData572_0

pokemonInternalBaseData573_0:
	.byte		0x4B
	.byte		0x5F
	.byte		0x3C
	.byte		0x73
	.byte		0x41
	.byte		0x3C
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Cute_Charm
	.byte		Ability_Technician
	.byte		Ability_Skill_Link
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A5
	.byte		0x46
	.byte		0xFF

pointerSet573:
	.word		pokemonInternalBaseData573_0

pokemonInternalBaseData574_0:
	.byte		0x2D
	.byte		0x1E
	.byte		0x32
	.byte		0x2D
	.byte		0x37
	.byte		0x41
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Frisk
	.byte		Ability_Competitive
	.byte		Ability_Shadow_Tag
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x003A
	.byte		0x46
	.byte		0xC8

pointerSet574:
	.word		pokemonInternalBaseData574_0

pokemonInternalBaseData575_0:
	.byte		0x3C
	.byte		0x2D
	.byte		0x46
	.byte		0x37
	.byte		0x4B
	.byte		0x55
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Frisk
	.byte		Ability_Competitive
	.byte		Ability_Shadow_Tag
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x0089
	.byte		0x46
	.byte		0x64

pointerSet575:
	.word		pokemonInternalBaseData575_0

pokemonInternalBaseData576_0:
	.byte		0x46
	.byte		0x37
	.byte		0x5F
	.byte		0x41
	.byte		0x5F
	.byte		0x6E
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Frisk
	.byte		Ability_Competitive
	.byte		Ability_Shadow_Tag
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x00DD
	.byte		0x46
	.byte		0x32

pointerSet576:
	.word		pokemonInternalBaseData576_0

pokemonInternalBaseData577_0:
	.byte		0x2D
	.byte		0x1E
	.byte		0x28
	.byte		0x14
	.byte		0x69
	.byte		0x32
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Overcoat
	.byte		Ability_Magic_Guard
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003A
	.byte		0x46
	.byte		0xC8

pointerSet577:
	.word		pokemonInternalBaseData577_0

pokemonInternalBaseData578_0:
	.byte		0x41
	.byte		0x28
	.byte		0x32
	.byte		0x1E
	.byte		0x7D
	.byte		0x3C
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Overcoat
	.byte		Ability_Magic_Guard
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x0082
	.byte		0x46
	.byte		0x64

pointerSet578:
	.word		pokemonInternalBaseData578_0

pokemonInternalBaseData579_0:
	.byte		0x6E
	.byte		0x41
	.byte		0x4B
	.byte		0x1E
	.byte		0x7D
	.byte		0x55
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Overcoat
	.byte		Ability_Magic_Guard
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00DD
	.byte		0x46
	.byte		0x32

pointerSet579:
	.word		pokemonInternalBaseData579_0

pokemonInternalBaseData580_0:
	.byte		0x3E
	.byte		0x2C
	.byte		0x32
	.byte		0x37
	.byte		0x2C
	.byte		0x32
	.byte		Type_Water
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Big_Pecks
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003D
	.byte		0x46
	.byte		0xBE

pointerSet580:
	.word		pokemonInternalBaseData580_0

pokemonInternalBaseData581_0:
	.byte		0x4B
	.byte		0x57
	.byte		0x3F
	.byte		0x62
	.byte		0x57
	.byte		0x3F
	.byte		Type_Water
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Big_Pecks
	.byte		Ability_Hydration
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A6
	.byte		0x46
	.byte		0x2D

pointerSet581:
	.word		pokemonInternalBaseData581_0

pokemonInternalBaseData582_0:
	.byte		0x24
	.byte		0x32
	.byte		0x32
	.byte		0x2C
	.byte		0x41
	.byte		0x3C
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Ice_Body
	.byte		Ability_Ice_Body
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x003D
	.byte		0x46
	.byte		0xFF

pointerSet582:
	.word		pokemonInternalBaseData582_0

pokemonInternalBaseData583_0:
	.byte		0x33
	.byte		0x41
	.byte		0x41
	.byte		0x3B
	.byte		0x50
	.byte		0x4B
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Ice_Body
	.byte		Ability_Ice_Body
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x008A
	.byte		0x46
	.byte		0x78

pointerSet583:
	.word		pokemonInternalBaseData583_0

pokemonInternalBaseData584_0:
	.byte		0x47
	.byte		0x5F
	.byte		0x55
	.byte		0x4F
	.byte		0x6E
	.byte		0x5F
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Ice_Body
	.byte		Ability_Ice_Body
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00F1
	.byte		0x46
	.byte		0x2D

pointerSet584:
	.word		pokemonInternalBaseData584_0

pokemonInternalBaseData585_0:
	.byte		0x3C
	.byte		0x3C
	.byte		0x32
	.byte		0x4B
	.byte		0x28
	.byte		0x32
	.byte		Type_Normal
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Sap_Sipper
	.byte		Ability_Serene_Grace
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0043
	.byte		0x46
	.byte		0xBE

pointerSet585:
	.word		pokemonInternalBaseData585_0

pokemonInternalBaseData586_0:
	.byte		0x50
	.byte		0x64
	.byte		0x46
	.byte		0x5F
	.byte		0x3C
	.byte		0x46
	.byte		Type_Normal
	.byte		Type_Grass
	.word		0x00000000
	.byte		Ability_Chlorophyll
	.byte		Ability_Sap_Sipper
	.byte		Ability_Serene_Grace
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A6
	.byte		0x46
	.byte		0x4B

pointerSet586:
	.word		pokemonInternalBaseData586_0

pokemonInternalBaseData587_0:
	.byte		0x37
	.byte		0x4B
	.byte		0x3C
	.byte		0x67
	.byte		0x4B
	.byte		0x3C
	.byte		Type_Electric
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Static
	.byte		Ability_Motor_Drive
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x0096
	.byte		0x46
	.byte		0xC8

pointerSet587:
	.word		pokemonInternalBaseData587_0

pokemonInternalBaseData588_0:
	.byte		0x32
	.byte		0x4B
	.byte		0x2D
	.byte		0x3C
	.byte		0x28
	.byte		0x2D
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Shed_Skin
	.byte		Ability_No_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003F
	.byte		0x46
	.byte		0xC8

pointerSet588:
	.word		pokemonInternalBaseData588_0

pokemonInternalBaseData589_0:
	.byte		0x46
	.byte		0x87
	.byte		0x69
	.byte		0x14
	.byte		0x3C
	.byte		0x69
	.byte		Type_Bug
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Shell_Armour
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AD
	.byte		0x46
	.byte		0x4B

pointerSet589:
	.word		pokemonInternalBaseData589_0

pokemonInternalBaseData590_0:
	.byte		0x45
	.byte		0x37
	.byte		0x2D
	.byte		0x0F
	.byte		0x37
	.byte		0x37
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Effect_Spore
	.byte		Ability_Effect_Spore
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0001
	.short		0x003B
	.byte		0x46
	.byte		0xBE

pointerSet590:
	.word		pokemonInternalBaseData590_0

pokemonInternalBaseData591_0:
	.byte		0x72
	.byte		0x55
	.byte		0x46
	.byte		0x1E
	.byte		0x55
	.byte		0x50
	.byte		Type_Grass
	.byte		Type_Poison
	.word		0x00000000
	.byte		Ability_Effect_Spore
	.byte		Ability_Effect_Spore
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A2
	.byte		0x46
	.byte		0x4B

pointerSet591:
	.word		pokemonInternalBaseData591_0

pokemonInternalBaseData592_0:
	.byte		0x37
	.byte		0x28
	.byte		0x32
	.byte		0x28
	.byte		0x41
	.byte		0x55
	.byte		Type_Water
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Cursed_Body
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0400
	.short		0x0043
	.byte		0x46
	.byte		0xBE

pointerSet592:
	.word		pokemonInternalBaseData592_0

pokemonInternalBaseData593_0:
	.byte		0x64
	.byte		0x3C
	.byte		0x46
	.byte		0x3C
	.byte		0x55
	.byte		0x69
	.byte		Type_Water
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Water_Absorb
	.byte		Ability_Cursed_Body
	.byte		Ability_Damp
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00A8
	.byte		0x46
	.byte		0x3C

pointerSet593:
	.word		pokemonInternalBaseData593_0

pokemonInternalBaseData594_0:
	.byte		0xA5
	.byte		0x4B
	.byte		0x50
	.byte		0x41
	.byte		0x28
	.byte		0x2D
	.byte		Type_Water
	.byte		Type_Water
	.word		0x00000000
	.byte		Ability_Healer
	.byte		Ability_Hydration
	.byte		Ability_Regenerator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A5
	.byte		0x46
	.byte		0x4B

pointerSet594:
	.word		pokemonInternalBaseData594_0

pokemonInternalBaseData595_0:
	.byte		0x32
	.byte		0x2F
	.byte		0x32
	.byte		0x41
	.byte		0x39
	.byte		0x32
	.byte		Type_Bug
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Compound_Eyes
	.byte		Ability_Unnerve
	.byte		Ability_Swarm
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0040
	.byte		0x46
	.byte		0xBE

pointerSet595:
	.word		pokemonInternalBaseData595_0

pokemonInternalBaseData596_0:
	.byte		0x46
	.byte		0x4D
	.byte		0x3C
	.byte		0x6C
	.byte		0x61
	.byte		0x3C
	.byte		Type_Bug
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Compound_Eyes
	.byte		Ability_Unnerve
	.byte		Ability_Swarm
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00A5
	.byte		0x46
	.byte		0x4B

pointerSet596:
	.word		pokemonInternalBaseData596_0

pokemonInternalBaseData597_0:
	.byte		0x2C
	.byte		0x32
	.byte		0x5B
	.byte		0x0A
	.byte		0x18
	.byte		0x56
	.byte		Type_Grass
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Iron_Barbs
	.byte		Ability_Iron_Barbs
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003D
	.byte		0x46
	.byte		0xFF

pointerSet597:
	.word		pokemonInternalBaseData597_0

pokemonInternalBaseData598_0:
	.byte		0x4A
	.byte		0x5E
	.byte		0x83
	.byte		0x14
	.byte		0x36
	.byte		0x74
	.byte		Type_Grass
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Iron_Barbs
	.byte		Ability_Iron_Barbs
	.byte		Ability_Anticipation
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00AB
	.byte		0x46
	.byte		0x5A

pointerSet598:
	.word		pokemonInternalBaseData598_0

pokemonInternalBaseData599_0:
	.byte		0x28
	.byte		0x37
	.byte		0x46
	.byte		0x1E
	.byte		0x2D
	.byte		0x3C
	.byte		Type_Steel
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Plus
	.byte		Ability_Minus
	.byte		Ability_Clear_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003C
	.byte		0x46
	.byte		0x82

pointerSet599:
	.word		pokemonInternalBaseData599_0

pokemonInternalBaseData600_0:
	.byte		0x3C
	.byte		0x50
	.byte		0x5F
	.byte		0x32
	.byte		0x46
	.byte		0x55
	.byte		Type_Steel
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Plus
	.byte		Ability_Minus
	.byte		Ability_Clear_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x009A
	.byte		0x46
	.byte		0x3C

pointerSet600:
	.word		pokemonInternalBaseData600_0

pokemonInternalBaseData601_0:
	.byte		0x3C
	.byte		0x64
	.byte		0x73
	.byte		0x5A
	.byte		0x46
	.byte		0x55
	.byte		Type_Steel
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Plus
	.byte		Ability_Minus
	.byte		Ability_Clear_Body
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0030
	.short		0x00EA
	.byte		0x46
	.byte		0x1E

pointerSet601:
	.word		pokemonInternalBaseData601_0

pokemonInternalBaseData602_0:
	.byte		0x23
	.byte		0x37
	.byte		0x28
	.byte		0x3C
	.byte		0x2D
	.byte		0x28
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0040
	.short		0x0037
	.byte		0x46
	.byte		0xBE

pointerSet602:
	.word		pokemonInternalBaseData602_0

pokemonInternalBaseData603_0:
	.byte		0x41
	.byte		0x55
	.byte		0x46
	.byte		0x28
	.byte		0x4B
	.byte		0x46
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x008E
	.byte		0x46
	.byte		0xBE

pointerSet603:
	.word		pokemonInternalBaseData603_0

pokemonInternalBaseData604_0:
	.byte		0x55
	.byte		0x73
	.byte		0x50
	.byte		0x32
	.byte		0x69
	.byte		0x50
	.byte		Type_Electric
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00E8
	.byte		0x46
	.byte		0x1E

pointerSet604:
	.word		pokemonInternalBaseData604_0

pokemonInternalBaseData605_0:
	.byte		0x37
	.byte		0x37
	.byte		0x37
	.byte		0x1E
	.byte		0x55
	.byte		0x37
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Telepathy
	.byte		Ability_Synchronise
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0043
	.byte		0x46
	.byte		0xFF

pointerSet605:
	.word		pokemonInternalBaseData605_0

pokemonInternalBaseData606_0:
	.byte		0x4B
	.byte		0x4B
	.byte		0x4B
	.byte		0x28
	.byte		0x7D
	.byte		0x5F
	.byte		Type_Psychic
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Telepathy
	.byte		Ability_Synchronise
	.byte		Ability_Analytic
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00AA
	.byte		0x46
	.byte		0x5A

pointerSet606:
	.word		pokemonInternalBaseData606_0

pokemonInternalBaseData607_0:
	.byte		0x32
	.byte		0x1E
	.byte		0x37
	.byte		0x14
	.byte		0x41
	.byte		0x37
	.byte		Type_Ghost
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flash_Fire
	.byte		Ability_Flame_Body
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0100
	.short		0x0037
	.byte		0x46
	.byte		0xBE

pointerSet607:
	.word		pokemonInternalBaseData607_0

pokemonInternalBaseData608_0:
	.byte		0x3C
	.byte		0x28
	.byte		0x3C
	.byte		0x37
	.byte		0x5F
	.byte		0x3C
	.byte		Type_Ghost
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flash_Fire
	.byte		Ability_Flame_Body
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x0082
	.byte		0x46
	.byte		0xBE

pointerSet608:
	.word		pokemonInternalBaseData608_0

pokemonInternalBaseData609_0:
	.byte		0x3C
	.byte		0x37
	.byte		0x5A
	.byte		0x50
	.byte		0x91
	.byte		0x5A
	.byte		Type_Ghost
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flash_Fire
	.byte		Ability_Flame_Body
	.byte		Ability_Infiltrator
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00EA
	.byte		0x46
	.byte		0x2D

pointerSet609:
	.word		pokemonInternalBaseData609_0

pokemonInternalBaseData610_0:
	.byte		0x2E
	.byte		0x57
	.byte		0x3C
	.byte		0x39
	.byte		0x1E
	.byte		0x28
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Rivalry
	.byte		Ability_Mould_Breaker
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0040
	.byte		0x23
	.byte		0x4B

pointerSet610:
	.word		pokemonInternalBaseData610_0

pokemonInternalBaseData611_0:
	.byte		0x42
	.byte		0x75
	.byte		0x46
	.byte		0x43
	.byte		0x28
	.byte		0x32
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Rivalry
	.byte		Ability_Mould_Breaker
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0090
	.byte		0x23
	.byte		0x3C

pointerSet611:
	.word		pokemonInternalBaseData611_0

pokemonInternalBaseData612_0:
	.byte		0x4C
	.byte		0x93
	.byte		0x5A
	.byte		0x61
	.byte		0x3C
	.byte		0x46
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Rivalry
	.byte		Ability_Mould_Breaker
	.byte		Ability_Unnerve
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x00F3
	.byte		0x23
	.byte		0x2D

pointerSet612:
	.word		pokemonInternalBaseData612_0

pokemonInternalBaseData613_0:
	.byte		0x37
	.byte		0x46
	.byte		0x28
	.byte		0x28
	.byte		0x3C
	.byte		0x28
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Snow_Cloak
	.byte		Ability_Snow_Cloak
	.byte		Ability_Rattled
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003D
	.byte		0x46
	.byte		0x78

pointerSet613:
	.word		pokemonInternalBaseData613_0

pokemonInternalBaseData614_0:
	.byte		0x5F
	.byte		0x6E
	.byte		0x50
	.byte		0x32
	.byte		0x46
	.byte		0x50
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Snow_Cloak
	.byte		Ability_Snow_Cloak
	.byte		Ability_Swift_Swim
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AA
	.byte		0x46
	.byte		0x3C

pointerSet614:
	.word		pokemonInternalBaseData614_0

pokemonInternalBaseData615_0:
	.byte		0x46
	.byte		0x32
	.byte		0x1E
	.byte		0x69
	.byte		0x5F
	.byte		0x87
	.byte		Type_Ice
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0800
	.short		0x00AA
	.byte		0x46
	.byte		0x19

pointerSet615:
	.word		pokemonInternalBaseData615_0

pokemonInternalBaseData616_0:
	.byte		0x32
	.byte		0x28
	.byte		0x55
	.byte		0x19
	.byte		0x28
	.byte		0x41
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Hydration
	.byte		Ability_Shell_Armour
	.byte		Ability_Overcoat
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x003D
	.byte		0x46
	.byte		0xC8

pointerSet616:
	.word		pokemonInternalBaseData616_0

pokemonInternalBaseData617_0:
	.byte		0x50
	.byte		0x46
	.byte		0x28
	.byte		0x91
	.byte		0x64
	.byte		0x3C
	.byte		Type_Bug
	.byte		Type_Bug
	.word		0x00000000
	.byte		Ability_Hydration
	.byte		Ability_Sticky_Hold
	.byte		Ability_Unburden
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0080
	.short		0x00AD
	.byte		0x46
	.byte		0x4B

pointerSet617:
	.word		pokemonInternalBaseData617_0

pokemonInternalBaseData618_0:
	.byte		0x6D
	.byte		0x42
	.byte		0x54
	.byte		0x20
	.byte		0x51
	.byte		0x63
	.byte		Type_Ground
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Static
	.byte		Ability_Limber
	.byte		Ability_Sand_Veil
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0002
	.short		0x00A5
	.byte		0x46
	.byte		0x4B

pointerSet618:
	.word		pokemonInternalBaseData618_0

pokemonInternalBaseData619_0:
	.byte		0x2D
	.byte		0x55
	.byte		0x32
	.byte		0x41
	.byte		0x37
	.byte		0x32
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Regenerator
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0046
	.byte		0x46
	.byte		0xB4

pointerSet619:
	.word		pokemonInternalBaseData619_0

pokemonInternalBaseData620_0:
	.byte		0x41
	.byte		0x7D
	.byte		0x3C
	.byte		0x69
	.byte		0x5F
	.byte		0x3C
	.byte		Type_Fighting
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Inner_Focus
	.byte		Ability_Regenerator
	.byte		Ability_Reckless
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00B3
	.byte		0x46
	.byte		0x2D

pointerSet620:
	.word		pokemonInternalBaseData620_0

pokemonInternalBaseData621_0:
	.byte		0x4D
	.byte		0x78
	.byte		0x5A
	.byte		0x30
	.byte		0x3C
	.byte		0x5A
	.byte		Type_Dragon
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Rough_Skin
	.byte		Ability_Sheer_Force
	.byte		Ability_Mould_Breaker
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AD
	.byte		0x46
	.byte		0x2D

pointerSet621:
	.word		pokemonInternalBaseData621_0

pokemonInternalBaseData622_0:
	.byte		0x3B
	.byte		0x4A
	.byte		0x32
	.byte		0x23
	.byte		0x23
	.byte		0x32
	.byte		Type_Ground
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Iron_Fist
	.byte		Ability_Klutz
	.byte		Ability_No_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003D
	.byte		0x46
	.byte		0xBE

pointerSet622:
	.word		pokemonInternalBaseData622_0

pokemonInternalBaseData623_0:
	.byte		0x59
	.byte		0x7C
	.byte		0x50
	.byte		0x37
	.byte		0x37
	.byte		0x50
	.byte		Type_Ground
	.byte		Type_Ghost
	.word		0x00000000
	.byte		Ability_Iron_Fist
	.byte		Ability_Klutz
	.byte		Ability_No_Guard
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00A9
	.byte		0x46
	.byte		0x5A

pointerSet623:
	.word		pokemonInternalBaseData623_0

pokemonInternalBaseData624_0:
	.byte		0x2D
	.byte		0x55
	.byte		0x46
	.byte		0x3C
	.byte		0x28
	.byte		0x28
	.byte		Type_Dark
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Defiant
	.byte		Ability_Inner_Focus
	.byte		Ability_Pressure
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0044
	.byte		0x23
	.byte		0x78

pointerSet624:
	.word		pokemonInternalBaseData624_0

pokemonInternalBaseData625_0:
	.byte		0x41
	.byte		0x7D
	.byte		0x64
	.byte		0x46
	.byte		0x3C
	.byte		0x46
	.byte		Type_Dark
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Defiant
	.byte		Ability_Inner_Focus
	.byte		Ability_Pressure
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AC
	.byte		0x23
	.byte		0x2D

pointerSet625:
	.word		pokemonInternalBaseData625_0

pokemonInternalBaseData626_0:
	.byte		0x5F
	.byte		0x6E
	.byte		0x5F
	.byte		0x37
	.byte		0x28
	.byte		0x5F
	.byte		Type_Normal
	.byte		Type_Normal
	.word		0x00000000
	.byte		Ability_Reckless
	.byte		Ability_Sap_Sipper
	.byte		Ability_Soundproof
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00AC
	.byte		0x46
	.byte		0x2D

pointerSet626:
	.word		pokemonInternalBaseData626_0

pokemonInternalBaseData627_0:
	.byte		0x46
	.byte		0x53
	.byte		0x32
	.byte		0x3C
	.byte		0x25
	.byte		0x32
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Sheer_Force
	.byte		Ability_Hustle
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0046
	.byte		0x46
	.byte		0xBE

pointerSet627:
	.word		pokemonInternalBaseData627_0

pokemonInternalBaseData628_0:
	.byte		0x64
	.byte		0x7B
	.byte		0x4B
	.byte		0x50
	.byte		0x39
	.byte		0x4B
	.byte		Type_Normal
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Keen_Eye
	.byte		Ability_Sheer_Force
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x00B3
	.byte		0x46
	.byte		0x3C

pointerSet628:
	.word		pokemonInternalBaseData628_0

pokemonInternalBaseData629_0:
	.byte		0x46
	.byte		0x37
	.byte		0x4B
	.byte		0x3C
	.byte		0x2D
	.byte		0x41
	.byte		Type_Dark
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Big_Pecks
	.byte		Ability_Overcoat
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0010
	.short		0x004A
	.byte		0x23
	.byte		0xBE

pointerSet629:
	.word		pokemonInternalBaseData629_0

pokemonInternalBaseData630_0:
	.byte		0x6E
	.byte		0x41
	.byte		0x69
	.byte		0x50
	.byte		0x37
	.byte		0x5F
	.byte		Type_Dark
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Big_Pecks
	.byte		Ability_Overcoat
	.byte		Ability_Weak_Armour
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00B3
	.byte		0x23
	.byte		0x3C

pointerSet630:
	.word		pokemonInternalBaseData630_0

pokemonInternalBaseData631_0:
	.byte		0x55
	.byte		0x61
	.byte		0x42
	.byte		0x41
	.byte		0x69
	.byte		0x42
	.byte		Type_Fire
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Gluttony
	.byte		Ability_Flash_Fire
	.byte		Ability_White_Smoke
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0200
	.short		0x00A9
	.byte		0x46
	.byte		0x5A

pointerSet631:
	.word		pokemonInternalBaseData631_0

pokemonInternalBaseData632_0:
	.byte		0x3A
	.byte		0x6D
	.byte		0x70
	.byte		0x6D
	.byte		0x30
	.byte		0x30
	.byte		Type_Bug
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Swarm
	.byte		Ability_Hustle
	.byte		Ability_Truant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0020
	.short		0x00A9
	.byte		0x46
	.byte		0x5A

pointerSet632:
	.word		pokemonInternalBaseData632_0

pokemonInternalBaseData633_0:
	.byte		0x34
	.byte		0x41
	.byte		0x32
	.byte		0x26
	.byte		0x2D
	.byte		0x32
	.byte		Type_Dark
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Hustle
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x003C
	.byte		0x23
	.byte		0x2D

pointerSet633:
	.word		pokemonInternalBaseData633_0

pokemonInternalBaseData634_0:
	.byte		0x48
	.byte		0x55
	.byte		0x46
	.byte		0x3A
	.byte		0x41
	.byte		0x46
	.byte		Type_Dark
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Hustle
	.byte		Ability_Hustle
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0008
	.short		0x0093
	.byte		0x23
	.byte		0x2D

pointerSet634:
	.word		pokemonInternalBaseData634_0

pokemonInternalBaseData635_0:
	.byte		0x5C
	.byte		0x69
	.byte		0x5A
	.byte		0x62
	.byte		0x7D
	.byte		0x5A
	.byte		Type_Dark
	.byte		Type_Dragon
	.word		0x00000000
	.byte		Ability_Levitate
	.byte		Ability_Levitate
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x010E
	.byte		0x23
	.byte		0x2D

pointerSet635:
	.word		pokemonInternalBaseData635_0

pokemonInternalBaseData636_0:
	.byte		0x37
	.byte		0x55
	.byte		0x37
	.byte		0x3C
	.byte		0x32
	.byte		0x37
	.byte		Type_Bug
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flame_Body
	.byte		Ability_Flame_Body
	.byte		Ability_Swarm
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0004
	.short		0x0048
	.byte		0x46
	.byte		0x2D

pointerSet636:
	.word		pokemonInternalBaseData636_0

pokemonInternalBaseData637_0:
	.byte		0x55
	.byte		0x3C
	.byte		0x41
	.byte		0x64
	.byte		0x87
	.byte		0x69
	.byte		Type_Bug
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Flame_Body
	.byte		Ability_Flame_Body
	.byte		Ability_Swarm
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x00F8
	.byte		0x46
	.byte		0x0F

pointerSet637:
	.word		pokemonInternalBaseData637_0

pokemonInternalBaseData638_0:
	.byte		0x5B
	.byte		0x5A
	.byte		0x81
	.byte		0x6C
	.byte		0x5A
	.byte		0x48
	.byte		Type_Steel
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Justified
	.byte		Ability_Justified
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0030
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet638:
	.word		pokemonInternalBaseData638_0

pokemonInternalBaseData639_0:
	.byte		0x5B
	.byte		0x81
	.byte		0x5A
	.byte		0x6C
	.byte		0x48
	.byte		0x5A
	.byte		Type_Rock
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Justified
	.byte		Ability_Justified
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet639:
	.word		pokemonInternalBaseData639_0

pokemonInternalBaseData640_0:
	.byte		0x5B
	.byte		0x5A
	.byte		0x48
	.byte		0x6C
	.byte		0x5A
	.byte		0x81
	.byte		Type_Grass
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Justified
	.byte		Ability_Justified
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0C00
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet640:
	.word		pokemonInternalBaseData640_0

pokemonInternalBaseData641_0:
	.byte		79
	.byte		115
	.byte		70
	.byte		111
	.byte		125
	.byte		80
	.byte		Type_Flying
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Prankster
	.byte		Ability_Prankster
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		12
	.short		261
	.byte		90
	.byte		3

pokemonInternalBaseData641_1:
	.byte		79
	.byte		100
	.byte		80
	.byte		121
	.byte		110
	.byte		90
	.byte		Type_Flying
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Regenerator
	.byte		Ability_Regenerator
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		192
	.short		261
	.byte		90
	.byte		3

pointerSet641:
	.word		pokemonInternalBaseData641_0
	.word		pokemonInternalBaseData641_1

pokemonInternalBaseData642_0:
	.byte		79
	.byte		115
	.byte		70
	.byte		111
	.byte		125
	.byte		80
	.byte		Type_Electric
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Prankster
	.byte		Ability_Prankster
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		12
	.short		261
	.byte		90
	.byte		3

pokemonInternalBaseData642_1:
	.byte		79
	.byte		105
	.byte		70
	.byte		101
	.byte		145
	.byte		80
	.byte		Type_Electric
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Volt_Absorb
	.byte		Ability_Volt_Absorb
	.byte		Ability_Defiant
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		768
	.short		261
	.byte		90
	.byte		3

pointerSet642:
	.word		pokemonInternalBaseData642_0
	.word		pokemonInternalBaseData642_1

pokemonInternalBaseData643_0:
	.byte		0x64
	.byte		0x78
	.byte		0x64
	.byte		0x5A
	.byte		0x96
	.byte		0x78
	.byte		Type_Dragon
	.byte		Type_Fire
	.word		0x00000000
	.byte		Ability_Turboblaze
	.byte		Ability_Turboblaze
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x0132
	.byte		0x00
	.byte		0x2D

pointerSet643:
	.word		pokemonInternalBaseData643_0

pokemonInternalBaseData644_0:
	.byte		0x64
	.byte		0x96
	.byte		0x78
	.byte		0x5A
	.byte		0x78
	.byte		0x64
	.byte		Type_Dragon
	.byte		Type_Electric
	.word		0x00000000
	.byte		Ability_Teravolt
	.byte		Ability_Teravolt
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x000C
	.short		0x0132
	.byte		0x00
	.byte		0x2D

pointerSet644:
	.word		pokemonInternalBaseData644_0

pokemonInternalBaseData645_0:
	.byte		89
	.byte		125
	.byte		90
	.byte		101
	.byte		115
	.byte		80
	.byte		Type_Ground
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Sand_Force
	.byte		Ability_Sand_Force
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		768
	.short		270
	.byte		90
	.byte		3

pokemonInternalBaseData645_1:
	.byte		89
	.byte		145
	.byte		90
	.byte		91
	.byte		105
	.byte		80
	.byte		Type_Ground
	.byte		Type_Flying
	.word		0x00000000
	.byte		Ability_Intimidate
	.byte		Ability_Intimidate
	.byte		Ability_Sheer_Force
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		12
	.short		270
	.byte		90
	.byte		3

pointerSet645:
	.word		pokemonInternalBaseData645_0
	.word		pokemonInternalBaseData645_1

pokemonInternalBaseData646_0:
	.byte		125
	.byte		130
	.byte		90
	.byte		95
	.byte		130
	.byte		90
	.byte		Type_Dragon
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Pressure
	.byte		Ability_Pressure
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		261
	.short		297
	.byte		0
	.byte		3

pokemonInternalBaseData646_1:
	.byte		125
	.byte		120
	.byte		90
	.byte		95
	.byte		170
	.byte		100
	.byte		Type_Dragon
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Turboblaze
	.byte		Ability_Turboblaze
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		768
	.short		297
	.byte		0
	.byte		3

pokemonInternalBaseData646_2:
	.byte		125
	.byte		170
	.byte		100
	.byte		95
	.byte		120
	.byte		90
	.byte		Type_Dragon
	.byte		Type_Ice
	.word		0x00000000
	.byte		Ability_Teravolt
	.byte		Ability_Teravolt
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		12
	.short		297
	.byte		0
	.byte		3

pointerSet646:
	.word		pokemonInternalBaseData646_0
	.word		pokemonInternalBaseData646_1
	.word		pokemonInternalBaseData646_2

pokemonInternalBaseData647_0:
	.byte		0x5B
	.byte		0x48
	.byte		0x5A
	.byte		0x6C
	.byte		0x81
	.byte		0x5A
	.byte		Type_Water
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Justified
	.byte		Ability_Justified
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0300
	.short		0x0105
	.byte		0x23
	.byte		0x03

pointerSet647:
	.word		pokemonInternalBaseData647_0

pokemonInternalBaseData648_0:
	.byte		100
	.byte		77
	.byte		77
	.byte		90
	.byte		128
	.byte		128
	.byte		Type_Normal
	.byte		Type_Psychic
	.word		0x00000000
	.byte		Ability_Serene_Grace
	.byte		Ability_Serene_Grace
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		1344
	.short		270
	.byte		100
	.byte		3

pokemonInternalBaseData648_1:
	.byte		100
	.byte		128
	.byte		90
	.byte		128
	.byte		77
	.byte		77
	.byte		Type_Normal
	.byte		Type_Fighting
	.word		0x00000000
	.byte		Ability_Serene_Grace
	.byte		Ability_Serene_Grace
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		84
	.short		270
	.byte		100
	.byte		3

pointerSet648:
	.word		pokemonInternalBaseData648_0
	.word		pokemonInternalBaseData648_1

pokemonInternalBaseData649_0:
	.byte		0x47
	.byte		0x78
	.byte		0x5F
	.byte		0x63
	.byte		0x78
	.byte		0x5F
	.byte		Type_Bug
	.byte		Type_Steel
	.word		0x00000000
	.byte		Ability_Download
	.byte		Ability_Download
	.byte		Ability_NoAbility
	.byte		0x00
	.byte		0x00
	.byte		0x00
	.short		0x0144
	.short		0x010E
	.byte		0x00
	.byte		0x03

pointerSet649:
	.word		pokemonInternalBaseData649_0

baseData:
	.word		0x00000001
	.word		pointerSet000
	.byte		GenderDist_Genderless
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_UNDISCOVERED
	.byte		EGG_GROUP_UNDISCOVERED
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet001
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet002
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet003
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		GenderSplit
	.word		0x00000001
	.word		pointerSet004
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_DRAGON
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet005
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_DRAGON
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet006
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_DRAGON
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet007
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_WATER1
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet008
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_WATER1
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet009
	.byte		GenderDist_8712
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_WATER1
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet010
	.byte		GenderDist_5050
	.byte		Steps_2805
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet011
	.byte		GenderDist_5050
	.byte		Steps_2805
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet012
	.byte		GenderDist_5050
	.byte		Steps_2805
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		GenderSplit
	.word		0x00000001
	.word		pointerSet013
	.byte		GenderDist_5050
	.byte		Steps_2805
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet014
	.byte		GenderDist_5050
	.byte		Steps_2805
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet015
	.byte		GenderDist_5050
	.byte		Steps_2805
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet016
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_FLYING
	.byte		EGG_GROUP_FLYING
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet017
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_FLYING
	.byte		EGG_GROUP_FLYING
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet018
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_FLYING
	.byte		EGG_GROUP_FLYING
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet019
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		GenderSplit
	.word		0x00000001
	.word		pointerSet020
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		GenderSplit
	.word		0x00000001
	.word		pointerSet021
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FLYING
	.byte		EGG_GROUP_FLYING
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet022
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FLYING
	.byte		EGG_GROUP_FLYING
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet023
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_DRAGON
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet024
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_DRAGON
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet025
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FAIRY
	.byte		0x00
	.byte		GenderSplit
	.word		0x00000001
	.word		pointerSet026
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FAIRY
	.byte		0x00
	.byte		GenderSplit
	.word		0x00000001
	.word		pointerSet027
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet028
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet029
	.byte		GenderDist_0100
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet030
	.byte		GenderDist_0100
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_UNDISCOVERED
	.byte		EGG_GROUP_UNDISCOVERED
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet031
	.byte		GenderDist_0100
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_UNDISCOVERED
	.byte		EGG_GROUP_UNDISCOVERED
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet032
	.byte		GenderDist_1000
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet033
	.byte		GenderDist_1000
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet034
	.byte		GenderDist_1000
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MONSTER
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet035
	.byte		GenderDist_2575
	.byte		Steps_5355
	.byte		LevelUp_Fast
	.byte		EGG_GROUP_FAIRY
	.byte		EGG_GROUP_FAIRY
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet036
	.byte		GenderDist_2575
	.byte		Steps_5355
	.byte		LevelUp_Fast
	.byte		EGG_GROUP_FAIRY
	.byte		EGG_GROUP_FAIRY
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet037
	.byte		GenderDist_2575
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet038
	.byte		GenderDist_2575
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet039
	.byte		GenderDist_2575
	.byte		Steps_5355
	.byte		LevelUp_Fast
	.byte		EGG_GROUP_FAIRY
	.byte		EGG_GROUP_FAIRY
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet040
	.byte		GenderDist_2575
	.byte		Steps_5355
	.byte		LevelUp_Fast
	.byte		EGG_GROUP_FAIRY
	.byte		EGG_GROUP_FAIRY
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet041
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FLYING
	.byte		EGG_GROUP_FLYING
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet042
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FLYING
	.byte		EGG_GROUP_FLYING
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet043
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_GRASS
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet044
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_GRASS
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet045
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_GRASS
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet046
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet047
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet048
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet049
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_BUG
	.byte		EGG_GROUP_BUG
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet050
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet051
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet052
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet053
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet054
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_WATER1
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet055
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_WATER1
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet056
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet057
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet058
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_Slow
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet059
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_Slow
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet060
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_WATER1
	.byte		EGG_GROUP_WATER1
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet061
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_WATER1
	.byte		EGG_GROUP_WATER1
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet062
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_WATER1
	.byte		EGG_GROUP_WATER1
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet063
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet064
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet065
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet066
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet067
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet068
	.byte		GenderDist_7525
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		EGG_GROUP_HUMAN_LIKE
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet069
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_GRASS
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet070
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_GRASS
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet071
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_GRASS
	.byte		EGG_GROUP_GRASS
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet072
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_Slow
	.byte		EGG_GROUP_WATER3
	.byte		EGG_GROUP_WATER3
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet073
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_Slow
	.byte		EGG_GROUP_WATER3
	.byte		EGG_GROUP_WATER3
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet074
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MINERAL
	.byte		EGG_GROUP_MINERAL
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet075
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MINERAL
	.byte		EGG_GROUP_MINERAL
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet076
	.byte		GenderDist_5050
	.byte		Steps_4080
	.byte		LevelUp_MediumSlow
	.byte		EGG_GROUP_MINERAL
	.byte		EGG_GROUP_MINERAL
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet077
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet078
	.byte		GenderDist_5050
	.byte		Steps_5355
	.byte		LevelUp_MediumFast
	.byte		EGG_GROUP_FIELD
	.byte		EGG_GROUP_FIELD
	.byte		0x00
	.byte		NoFormes
	.word		0x00000001
	.word		pointerSet079
	.word		0x00000001
	.word		pointerSet080
	.word		0x00000001
	.word		pointerSet081
	.word		0x00000001
	.word		pointerSet082
	.word		0x00000001
	.word		pointerSet083
	.word		0x00000001
	.word		pointerSet084
	.word		0x00000001
	.word		pointerSet085
	.word		0x00000001
	.word		pointerSet086
	.word		0x00000001
	.word		pointerSet087
	.word		0x00000001
	.word		pointerSet088
	.word		0x00000001
	.word		pointerSet089
	.word		0x00000001
	.word		pointerSet090
	.word		0x00000001
	.word		pointerSet091
	.word		0x00000001
	.word		pointerSet092
	.word		0x00000001
	.word		pointerSet093
	.word		0x00000001
	.word		pointerSet094
	.word		0x00000001
	.word		pointerSet095
	.word		0x00000001
	.word		pointerSet096
	.word		0x00000001
	.word		pointerSet097
	.word		0x00000001
	.word		pointerSet098
	.word		0x00000001
	.word		pointerSet099
	.word		0x00000001
	.word		pointerSet100
	.word		0x00000001
	.word		pointerSet101
	.word		0x00000001
	.word		pointerSet102
	.word		0x00000001
	.word		pointerSet103
	.word		0x00000001
	.word		pointerSet104
	.word		0x00000001
	.word		pointerSet105
	.word		0x00000001
	.word		pointerSet106
	.word		0x00000001
	.word		pointerSet107
	.word		0x00000001
	.word		pointerSet108
	.word		0x00000001
	.word		pointerSet109
	.word		0x00000001
	.word		pointerSet110
	.word		0x00000001
	.word		pointerSet111
	.word		0x00000001
	.word		pointerSet112
	.word		0x00000001
	.word		pointerSet113
	.word		0x00000001
	.word		pointerSet114
	.word		0x00000001
	.word		pointerSet115
	.word		0x00000001
	.word		pointerSet116
	.word		0x00000001
	.word		pointerSet117
	.word		0x00000001
	.word		pointerSet118
	.word		0x00000001
	.word		pointerSet119
	.word		0x00000001
	.word		pointerSet120
	.word		0x00000001
	.word		pointerSet121
	.word		0x00000001
	.word		pointerSet122
	.word		0x00000001
	.word		pointerSet123
	.word		0x00000001
	.word		pointerSet124
	.word		0x00000001
	.word		pointerSet125
	.word		0x00000001
	.word		pointerSet126
	.word		0x00000001
	.word		pointerSet127
	.word		0x00000001
	.word		pointerSet128
	.word		0x00000001
	.word		pointerSet129
	.word		0x00000001
	.word		pointerSet130
	.word		0x00000001
	.word		pointerSet131
	.word		0x00000001
	.word		pointerSet132
	.word		0x00000001
	.word		pointerSet133
	.word		0x00000001
	.word		pointerSet134
	.word		0x00000001
	.word		pointerSet135
	.word		0x00000001
	.word		pointerSet136
	.word		0x00000001
	.word		pointerSet137
	.word		0x00000001
	.word		pointerSet138
	.word		0x00000001
	.word		pointerSet139
	.word		0x00000001
	.word		pointerSet140
	.word		0x00000001
	.word		pointerSet141
	.word		0x00000001
	.word		pointerSet142
	.word		0x00000001
	.word		pointerSet143
	.word		0x00000001
	.word		pointerSet144
	.word		0x00000001
	.word		pointerSet145
	.word		0x00000001
	.word		pointerSet146
	.word		0x00000001
	.word		pointerSet147
	.word		0x00000001
	.word		pointerSet148
	.word		0x00000001
	.word		pointerSet149
	.word		0x00000001
	.word		pointerSet150
	.word		0x00000001
	.word		pointerSet151
	.word		0x00000001
	.word		pointerSet152
	.word		0x00000001
	.word		pointerSet153
	.word		0x00000001
	.word		pointerSet154
	.word		0x00000001
	.word		pointerSet155
	.word		0x00000001
	.word		pointerSet156
	.word		0x00000001
	.word		pointerSet157
	.word		0x00000001
	.word		pointerSet158
	.word		0x00000001
	.word		pointerSet159
	.word		0x00000001
	.word		pointerSet160
	.word		0x00000001
	.word		pointerSet161
	.word		0x00000001
	.word		pointerSet162
	.word		0x00000001
	.word		pointerSet163
	.word		0x00000001
	.word		pointerSet164
	.word		0x00000001
	.word		pointerSet165
	.word		0x00000001
	.word		pointerSet166
	.word		0x00000001
	.word		pointerSet167
	.word		0x00000001
	.word		pointerSet168
	.word		0x00000001
	.word		pointerSet169
	.word		0x00000001
	.word		pointerSet170
	.word		0x00000001
	.word		pointerSet171
	.word		0x00000001
	.word		pointerSet172
	.word		0x00000001
	.word		pointerSet173
	.word		0x00000001
	.word		pointerSet174
	.word		0x00000001
	.word		pointerSet175
	.word		0x00000001
	.word		pointerSet176
	.word		0x00000001
	.word		pointerSet177
	.word		0x00000001
	.word		pointerSet178
	.word		0x00000001
	.word		pointerSet179
	.word		0x00000001
	.word		pointerSet180
	.word		0x00000001
	.word		pointerSet181
	.word		0x00000001
	.word		pointerSet182
	.word		0x00000001
	.word		pointerSet183
	.word		0x00000001
	.word		pointerSet184
	.word		0x00000001
	.word		pointerSet185
	.word		0x00000001
	.word		pointerSet186
	.word		0x00000001
	.word		pointerSet187
	.word		0x00000001
	.word		pointerSet188
	.word		0x00000001
	.word		pointerSet189
	.word		0x00000001
	.word		pointerSet190
	.word		0x00000001
	.word		pointerSet191
	.word		0x00000001
	.word		pointerSet192
	.word		0x00000001
	.word		pointerSet193
	.word		0x00000001
	.word		pointerSet194
	.word		0x00000001
	.word		pointerSet195
	.word		0x00000001
	.word		pointerSet196
	.word		0x00000001
	.word		pointerSet197
	.word		0x00000001
	.word		pointerSet198
	.word		0x00000001
	.word		pointerSet199
	.word		0x00000001
	.word		pointerSet200
	.word		0x00000001
	.word		pointerSet201
	.word		0x00000001
	.word		pointerSet202
	.word		0x00000001
	.word		pointerSet203
	.word		0x00000001
	.word		pointerSet204
	.word		0x00000001
	.word		pointerSet205
	.word		0x00000001
	.word		pointerSet206
	.word		0x00000001
	.word		pointerSet207
	.word		0x00000001
	.word		pointerSet208
	.word		0x00000001
	.word		pointerSet209
	.word		0x00000001
	.word		pointerSet210
	.word		0x00000001
	.word		pointerSet211
	.word		0x00000001
	.word		pointerSet212
	.word		0x00000001
	.word		pointerSet213
	.word		0x00000001
	.word		pointerSet214
	.word		0x00000001
	.word		pointerSet215
	.word		0x00000001
	.word		pointerSet216
	.word		0x00000001
	.word		pointerSet217
	.word		0x00000001
	.word		pointerSet218
	.word		0x00000001
	.word		pointerSet219
	.word		0x00000001
	.word		pointerSet220
	.word		0x00000001
	.word		pointerSet221
	.word		0x00000001
	.word		pointerSet222
	.word		0x00000001
	.word		pointerSet223
	.word		0x00000001
	.word		pointerSet224
	.word		0x00000001
	.word		pointerSet225
	.word		0x00000001
	.word		pointerSet226
	.word		0x00000001
	.word		pointerSet227
	.word		0x00000001
	.word		pointerSet228
	.word		0x00000001
	.word		pointerSet229
	.word		0x00000001
	.word		pointerSet230
	.word		0x00000001
	.word		pointerSet231
	.word		0x00000001
	.word		pointerSet232
	.word		0x00000001
	.word		pointerSet233
	.word		0x00000001
	.word		pointerSet234
	.word		0x00000001
	.word		pointerSet235
	.word		0x00000001
	.word		pointerSet236
	.word		0x00000001
	.word		pointerSet237
	.word		0x00000001
	.word		pointerSet238
	.word		0x00000001
	.word		pointerSet239
	.word		0x00000001
	.word		pointerSet240
	.word		0x00000001
	.word		pointerSet241
	.word		0x00000001
	.word		pointerSet242
	.word		0x00000001
	.word		pointerSet243
	.word		0x00000001
	.word		pointerSet244
	.word		0x00000001
	.word		pointerSet245
	.word		0x00000001
	.word		pointerSet246
	.word		0x00000001
	.word		pointerSet247
	.word		0x00000001
	.word		pointerSet248
	.word		0x00000001
	.word		pointerSet249
	.word		0x00000001
	.word		pointerSet250
	.word		0x00000001
	.word		pointerSet251
	.word		0x00000001
	.word		pointerSet252
	.word		0x00000001
	.word		pointerSet253
	.word		0x00000001
	.word		pointerSet254
	.word		0x00000001
	.word		pointerSet255
	.word		0x00000001
	.word		pointerSet256
	.word		0x00000001
	.word		pointerSet257
	.word		0x00000001
	.word		pointerSet258
	.word		0x00000001
	.word		pointerSet259
	.word		0x00000001
	.word		pointerSet260
	.word		0x00000001
	.word		pointerSet261
	.word		0x00000001
	.word		pointerSet262
	.word		0x00000001
	.word		pointerSet263
	.word		0x00000001
	.word		pointerSet264
	.word		0x00000001
	.word		pointerSet265
	.word		0x00000001
	.word		pointerSet266
	.word		0x00000001
	.word		pointerSet267
	.word		0x00000001
	.word		pointerSet268
	.word		0x00000001
	.word		pointerSet269
	.word		0x00000001
	.word		pointerSet270
	.word		0x00000001
	.word		pointerSet271
	.word		0x00000001
	.word		pointerSet272
	.word		0x00000001
	.word		pointerSet273
	.word		0x00000001
	.word		pointerSet274
	.word		0x00000001
	.word		pointerSet275
	.word		0x00000001
	.word		pointerSet276
	.word		0x00000001
	.word		pointerSet277
	.word		0x00000001
	.word		pointerSet278
	.word		0x00000001
	.word		pointerSet279
	.word		0x00000001
	.word		pointerSet280
	.word		0x00000001
	.word		pointerSet281
	.word		0x00000001
	.word		pointerSet282
	.word		0x00000001
	.word		pointerSet283
	.word		0x00000001
	.word		pointerSet284
	.word		0x00000001
	.word		pointerSet285
	.word		0x00000001
	.word		pointerSet286
	.word		0x00000001
	.word		pointerSet287
	.word		0x00000001
	.word		pointerSet288
	.word		0x00000001
	.word		pointerSet289
	.word		0x00000001
	.word		pointerSet290
	.word		0x00000001
	.word		pointerSet291
	.word		0x00000001
	.word		pointerSet292
	.word		0x00000001
	.word		pointerSet293
	.word		0x00000001
	.word		pointerSet294
	.word		0x00000001
	.word		pointerSet295
	.word		0x00000001
	.word		pointerSet296
	.word		0x00000001
	.word		pointerSet297
	.word		0x00000001
	.word		pointerSet298
	.word		0x00000001
	.word		pointerSet299
	.word		0x00000001
	.word		pointerSet300
	.word		0x00000001
	.word		pointerSet301
	.word		0x00000001
	.word		pointerSet302
	.word		0x00000001
	.word		pointerSet303
	.word		0x00000001
	.word		pointerSet304
	.word		0x00000001
	.word		pointerSet305
	.word		0x00000001
	.word		pointerSet306
	.word		0x00000001
	.word		pointerSet307
	.word		0x00000001
	.word		pointerSet308
	.word		0x00000001
	.word		pointerSet309
	.word		0x00000001
	.word		pointerSet310
	.word		0x00000001
	.word		pointerSet311
	.word		0x00000001
	.word		pointerSet312
	.word		0x00000001
	.word		pointerSet313
	.word		0x00000001
	.word		pointerSet314
	.word		0x00000001
	.word		pointerSet315
	.word		0x00000001
	.word		pointerSet316
	.word		0x00000001
	.word		pointerSet317
	.word		0x00000001
	.word		pointerSet318
	.word		0x00000001
	.word		pointerSet319
	.word		0x00000001
	.word		pointerSet320
	.word		0x00000001
	.word		pointerSet321
	.word		0x00000001
	.word		pointerSet322
	.word		0x00000001
	.word		pointerSet323
	.word		0x00000001
	.word		pointerSet324
	.word		0x00000001
	.word		pointerSet325
	.word		0x00000001
	.word		pointerSet326
	.word		0x00000001
	.word		pointerSet327
	.word		0x00000001
	.word		pointerSet328
	.word		0x00000001
	.word		pointerSet329
	.word		0x00000001
	.word		pointerSet330
	.word		0x00000001
	.word		pointerSet331
	.word		0x00000001
	.word		pointerSet332
	.word		0x00000001
	.word		pointerSet333
	.word		0x00000001
	.word		pointerSet334
	.word		0x00000001
	.word		pointerSet335
	.word		0x00000001
	.word		pointerSet336
	.word		0x00000001
	.word		pointerSet337
	.word		0x00000001
	.word		pointerSet338
	.word		0x00000001
	.word		pointerSet339
	.word		0x00000001
	.word		pointerSet340
	.word		0x00000001
	.word		pointerSet341
	.word		0x00000001
	.word		pointerSet342
	.word		0x00000001
	.word		pointerSet343
	.word		0x00000001
	.word		pointerSet344
	.word		0x00000001
	.word		pointerSet345
	.word		0x00000001
	.word		pointerSet346
	.word		0x00000001
	.word		pointerSet347
	.word		0x00000001
	.word		pointerSet348
	.word		0x00000001
	.word		pointerSet349
	.word		0x00000001
	.word		pointerSet350
	.word		0x00000001
	.word		pointerSet351
	.word		0x00000001
	.word		pointerSet352
	.word		0x00000001
	.word		pointerSet353
	.word		0x00000001
	.word		pointerSet354
	.word		0x00000001
	.word		pointerSet355
	.word		0x00000001
	.word		pointerSet356
	.word		0x00000001
	.word		pointerSet357
	.word		0x00000001
	.word		pointerSet358
	.word		0x00000001
	.word		pointerSet359
	.word		0x00000001
	.word		pointerSet360
	.word		0x00000001
	.word		pointerSet361
	.word		0x00000001
	.word		pointerSet362
	.word		0x00000001
	.word		pointerSet363
	.word		0x00000001
	.word		pointerSet364
	.word		0x00000001
	.word		pointerSet365
	.word		0x00000001
	.word		pointerSet366
	.word		0x00000001
	.word		pointerSet367
	.word		0x00000001
	.word		pointerSet368
	.word		0x00000001
	.word		pointerSet369
	.word		0x00000001
	.word		pointerSet370
	.word		0x00000001
	.word		pointerSet371
	.word		0x00000001
	.word		pointerSet372
	.word		0x00000001
	.word		pointerSet373
	.word		0x00000001
	.word		pointerSet374
	.word		0x00000001
	.word		pointerSet375
	.word		0x00000001
	.word		pointerSet376
	.word		0x00000001
	.word		pointerSet377
	.word		0x00000001
	.word		pointerSet378
	.word		0x00000001
	.word		pointerSet379
	.word		0x00000001
	.word		pointerSet380
	.word		0x00000001
	.word		pointerSet381
	.word		0x00000001
	.word		pointerSet382
	.word		0x00000001
	.word		pointerSet383
	.word		0x00000001
	.word		pointerSet384
	.word		0x00000001
	.word		pointerSet385
	.word		0x00000004
	.word		pointerSet386
	.word		0x00000001
	.word		pointerSet387
	.word		0x00000001
	.word		pointerSet388
	.word		0x00000001
	.word		pointerSet389
	.word		0x00000001
	.word		pointerSet390
	.word		0x00000001
	.word		pointerSet391
	.word		0x00000001
	.word		pointerSet392
	.word		0x00000001
	.word		pointerSet393
	.word		0x00000001
	.word		pointerSet394
	.word		0x00000001
	.word		pointerSet395
	.word		0x00000001
	.word		pointerSet396
	.word		0x00000001
	.word		pointerSet397
	.word		0x00000001
	.word		pointerSet398
	.word		0x00000001
	.word		pointerSet399
	.word		0x00000001
	.word		pointerSet400
	.word		0x00000001
	.word		pointerSet401
	.word		0x00000001
	.word		pointerSet402
	.word		0x00000001
	.word		pointerSet403
	.word		0x00000001
	.word		pointerSet404
	.word		0x00000001
	.word		pointerSet405
	.word		0x00000001
	.word		pointerSet406
	.word		0x00000001
	.word		pointerSet407
	.word		0x00000001
	.word		pointerSet408
	.word		0x00000001
	.word		pointerSet409
	.word		0x00000001
	.word		pointerSet410
	.word		0x00000001
	.word		pointerSet411
	.word		0x00000001
	.word		pointerSet412
	.word		0x00000003
	.word		pointerSet413
	.word		0x00000001
	.word		pointerSet414
	.word		0x00000001
	.word		pointerSet415
	.word		0x00000001
	.word		pointerSet416
	.word		0x00000001
	.word		pointerSet417
	.word		0x00000001
	.word		pointerSet418
	.word		0x00000001
	.word		pointerSet419
	.word		0x00000001
	.word		pointerSet420
	.word		0x00000001
	.word		pointerSet421
	.word		0x00000001
	.word		pointerSet422
	.word		0x00000001
	.word		pointerSet423
	.word		0x00000001
	.word		pointerSet424
	.word		0x00000001
	.word		pointerSet425
	.word		0x00000001
	.word		pointerSet426
	.word		0x00000001
	.word		pointerSet427
	.word		0x00000001
	.word		pointerSet428
	.word		0x00000001
	.word		pointerSet429
	.word		0x00000001
	.word		pointerSet430
	.word		0x00000001
	.word		pointerSet431
	.word		0x00000001
	.word		pointerSet432
	.word		0x00000001
	.word		pointerSet433
	.word		0x00000001
	.word		pointerSet434
	.word		0x00000001
	.word		pointerSet435
	.word		0x00000001
	.word		pointerSet436
	.word		0x00000001
	.word		pointerSet437
	.word		0x00000001
	.word		pointerSet438
	.word		0x00000001
	.word		pointerSet439
	.word		0x00000001
	.word		pointerSet440
	.word		0x00000001
	.word		pointerSet441
	.word		0x00000001
	.word		pointerSet442
	.word		0x00000001
	.word		pointerSet443
	.word		0x00000001
	.word		pointerSet444
	.word		0x00000001
	.word		pointerSet445
	.word		0x00000001
	.word		pointerSet446
	.word		0x00000001
	.word		pointerSet447
	.word		0x00000001
	.word		pointerSet448
	.word		0x00000001
	.word		pointerSet449
	.word		0x00000001
	.word		pointerSet450
	.word		0x00000001
	.word		pointerSet451
	.word		0x00000001
	.word		pointerSet452
	.word		0x00000001
	.word		pointerSet453
	.word		0x00000001
	.word		pointerSet454
	.word		0x00000001
	.word		pointerSet455
	.word		0x00000001
	.word		pointerSet456
	.word		0x00000001
	.word		pointerSet457
	.word		0x00000001
	.word		pointerSet458
	.word		0x00000001
	.word		pointerSet459
	.word		0x00000001
	.word		pointerSet460
	.word		0x00000001
	.word		pointerSet461
	.word		0x00000001
	.word		pointerSet462
	.word		0x00000001
	.word		pointerSet463
	.word		0x00000001
	.word		pointerSet464
	.word		0x00000001
	.word		pointerSet465
	.word		0x00000001
	.word		pointerSet466
	.word		0x00000001
	.word		pointerSet467
	.word		0x00000001
	.word		pointerSet468
	.word		0x00000001
	.word		pointerSet469
	.word		0x00000001
	.word		pointerSet470
	.word		0x00000001
	.word		pointerSet471
	.word		0x00000001
	.word		pointerSet472
	.word		0x00000001
	.word		pointerSet473
	.word		0x00000001
	.word		pointerSet474
	.word		0x00000001
	.word		pointerSet475
	.word		0x00000001
	.word		pointerSet476
	.word		0x00000001
	.word		pointerSet477
	.word		0x00000001
	.word		pointerSet478
	.word		0x00000006
	.word		pointerSet479
	.word		0x00000001
	.word		pointerSet480
	.word		0x00000001
	.word		pointerSet481
	.word		0x00000001
	.word		pointerSet482
	.word		0x00000001
	.word		pointerSet483
	.word		0x00000001
	.word		pointerSet484
	.word		0x00000001
	.word		pointerSet485
	.word		0x00000001
	.word		pointerSet486
	.word		0x00000002
	.word		pointerSet487
	.word		0x00000001
	.word		pointerSet488
	.word		0x00000001
	.word		pointerSet489
	.word		0x00000001
	.word		pointerSet490
	.word		0x00000001
	.word		pointerSet491
	.word		0x00000001
	.word		pointerSet492
	.word		0x00000002
	.word		pointerSet493
	.word		0x00000001
	.word		pointerSet494
	.word		0x00000001
	.word		pointerSet495
	.word		0x00000001
	.word		pointerSet496
	.word		0x00000001
	.word		pointerSet497
	.word		0x00000001
	.word		pointerSet498
	.word		0x00000001
	.word		pointerSet499
	.word		0x00000001
	.word		pointerSet500
	.word		0x00000001
	.word		pointerSet501
	.word		0x00000001
	.word		pointerSet502
	.word		0x00000001
	.word		pointerSet503
	.word		0x00000001
	.word		pointerSet504
	.word		0x00000001
	.word		pointerSet505
	.word		0x00000001
	.word		pointerSet506
	.word		0x00000001
	.word		pointerSet507
	.word		0x00000001
	.word		pointerSet508
	.word		0x00000001
	.word		pointerSet509
	.word		0x00000001
	.word		pointerSet510
	.word		0x00000001
	.word		pointerSet511
	.word		0x00000001
	.word		pointerSet512
	.word		0x00000001
	.word		pointerSet513
	.word		0x00000001
	.word		pointerSet514
	.word		0x00000001
	.word		pointerSet515
	.word		0x00000001
	.word		pointerSet516
	.word		0x00000001
	.word		pointerSet517
	.word		0x00000001
	.word		pointerSet518
	.word		0x00000001
	.word		pointerSet519
	.word		0x00000001
	.word		pointerSet520
	.word		0x00000001
	.word		pointerSet521
	.word		0x00000001
	.word		pointerSet522
	.word		0x00000001
	.word		pointerSet523
	.word		0x00000001
	.word		pointerSet524
	.word		0x00000001
	.word		pointerSet525
	.word		0x00000001
	.word		pointerSet526
	.word		0x00000001
	.word		pointerSet527
	.word		0x00000001
	.word		pointerSet528
	.word		0x00000001
	.word		pointerSet529
	.word		0x00000001
	.word		pointerSet530
	.word		0x00000001
	.word		pointerSet531
	.word		0x00000001
	.word		pointerSet532
	.word		0x00000001
	.word		pointerSet533
	.word		0x00000001
	.word		pointerSet534
	.word		0x00000001
	.word		pointerSet535
	.word		0x00000001
	.word		pointerSet536
	.word		0x00000001
	.word		pointerSet537
	.word		0x00000001
	.word		pointerSet538
	.word		0x00000001
	.word		pointerSet539
	.word		0x00000001
	.word		pointerSet540
	.word		0x00000001
	.word		pointerSet541
	.word		0x00000001
	.word		pointerSet542
	.word		0x00000001
	.word		pointerSet543
	.word		0x00000001
	.word		pointerSet544
	.word		0x00000001
	.word		pointerSet545
	.word		0x00000001
	.word		pointerSet546
	.word		0x00000001
	.word		pointerSet547
	.word		0x00000001
	.word		pointerSet548
	.word		0x00000001
	.word		pointerSet549
	.word		0x00000001
	.word		pointerSet550
	.word		0x00000001
	.word		pointerSet551
	.word		0x00000001
	.word		pointerSet552
	.word		0x00000001
	.word		pointerSet553
	.word		0x00000001
	.word		pointerSet554
	.word		0x00000002
	.word		pointerSet555
	.word		0x00000001
	.word		pointerSet556
	.word		0x00000001
	.word		pointerSet557
	.word		0x00000001
	.word		pointerSet558
	.word		0x00000001
	.word		pointerSet559
	.word		0x00000001
	.word		pointerSet560
	.word		0x00000001
	.word		pointerSet561
	.word		0x00000001
	.word		pointerSet562
	.word		0x00000001
	.word		pointerSet563
	.word		0x00000001
	.word		pointerSet564
	.word		0x00000001
	.word		pointerSet565
	.word		0x00000001
	.word		pointerSet566
	.word		0x00000001
	.word		pointerSet567
	.word		0x00000001
	.word		pointerSet568
	.word		0x00000001
	.word		pointerSet569
	.word		0x00000001
	.word		pointerSet570
	.word		0x00000001
	.word		pointerSet571
	.word		0x00000001
	.word		pointerSet572
	.word		0x00000001
	.word		pointerSet573
	.word		0x00000001
	.word		pointerSet574
	.word		0x00000001
	.word		pointerSet575
	.word		0x00000001
	.word		pointerSet576
	.word		0x00000001
	.word		pointerSet577
	.word		0x00000001
	.word		pointerSet578
	.word		0x00000001
	.word		pointerSet579
	.word		0x00000001
	.word		pointerSet580
	.word		0x00000001
	.word		pointerSet581
	.word		0x00000001
	.word		pointerSet582
	.word		0x00000001
	.word		pointerSet583
	.word		0x00000001
	.word		pointerSet584
	.word		0x00000001
	.word		pointerSet585
	.word		0x00000001
	.word		pointerSet586
	.word		0x00000001
	.word		pointerSet587
	.word		0x00000001
	.word		pointerSet588
	.word		0x00000001
	.word		pointerSet589
	.word		0x00000001
	.word		pointerSet590
	.word		0x00000001
	.word		pointerSet591
	.word		0x00000001
	.word		pointerSet592
	.word		0x00000001
	.word		pointerSet593
	.word		0x00000001
	.word		pointerSet594
	.word		0x00000001
	.word		pointerSet595
	.word		0x00000001
	.word		pointerSet596
	.word		0x00000001
	.word		pointerSet597
	.word		0x00000001
	.word		pointerSet598
	.word		0x00000001
	.word		pointerSet599
	.word		0x00000001
	.word		pointerSet600
	.word		0x00000001
	.word		pointerSet601
	.word		0x00000001
	.word		pointerSet602
	.word		0x00000001
	.word		pointerSet603
	.word		0x00000001
	.word		pointerSet604
	.word		0x00000001
	.word		pointerSet605
	.word		0x00000001
	.word		pointerSet606
	.word		0x00000001
	.word		pointerSet607
	.word		0x00000001
	.word		pointerSet608
	.word		0x00000001
	.word		pointerSet609
	.word		0x00000001
	.word		pointerSet610
	.word		0x00000001
	.word		pointerSet611
	.word		0x00000001
	.word		pointerSet612
	.word		0x00000001
	.word		pointerSet613
	.word		0x00000001
	.word		pointerSet614
	.word		0x00000001
	.word		pointerSet615
	.word		0x00000001
	.word		pointerSet616
	.word		0x00000001
	.word		pointerSet617
	.word		0x00000001
	.word		pointerSet618
	.word		0x00000001
	.word		pointerSet619
	.word		0x00000001
	.word		pointerSet620
	.word		0x00000001
	.word		pointerSet621
	.word		0x00000001
	.word		pointerSet622
	.word		0x00000001
	.word		pointerSet623
	.word		0x00000001
	.word		pointerSet624
	.word		0x00000001
	.word		pointerSet625
	.word		0x00000001
	.word		pointerSet626
	.word		0x00000001
	.word		pointerSet627
	.word		0x00000001
	.word		pointerSet628
	.word		0x00000001
	.word		pointerSet629
	.word		0x00000001
	.word		pointerSet630
	.word		0x00000001
	.word		pointerSet631
	.word		0x00000001
	.word		pointerSet632
	.word		0x00000001
	.word		pointerSet633
	.word		0x00000001
	.word		pointerSet634
	.word		0x00000001
	.word		pointerSet635
	.word		0x00000001
	.word		pointerSet636
	.word		0x00000001
	.word		pointerSet637
	.word		0x00000001
	.word		pointerSet638
	.word		0x00000001
	.word		pointerSet639
	.word		0x00000001
	.word		pointerSet640
	.word		0x00000002
	.word		pointerSet641
	.word		0x00000002
	.word		pointerSet642
	.word		0x00000001
	.word		pointerSet643
	.word		0x00000001
	.word		pointerSet644
	.word		0x00000002
	.word		pointerSet645
	.word		0x00000003
	.word		pointerSet646
	.word		0x00000001
	.word		pointerSet647
	.word		0x00000002
	.word		pointerSet648
	.word		0x00000001
	.word		pointerSet649
	.word		0x00000001
	.word		pointerSet650
	.word		0x00000001
	.word		pointerSet651
	.word		0x00000001
	.word		pointerSet652
	.word		0x00000001
	.word		pointerSet653
	.word		0x00000001
	.word		pointerSet654
	.word		0x00000001
	.word		pointerSet655
	.word		0x00000001
	.word		pointerSet656
	.word		0x00000001
	.word		pointerSet657
	.word		0x00000001
	.word		pointerSet658
	.word		0x00000001
	.word		pointerSet659
	.word		0x00000001
	.word		pointerSet660
	.word		0x00000001
	.word		pointerSet661
	.word		0x00000001
	.word		pointerSet662
	.word		0x00000001
	.word		pointerSet663
	.word		0x00000001
	.word		pointerSet664
	.word		0x00000001
	.word		pointerSet665
	.word		0x00000001
	.word		pointerSet666
	.word		0x00000001
	.word		pointerSet667
	.word		0x00000001
	.word		pointerSet668
	.word		0x00000001
	.word		pointerSet669
	.word		0x00000001
	.word		pointerSet670
	.word		0x00000001
	.word		pointerSet671
	.word		0x00000001
	.word		pointerSet672
	.word		0x00000001
	.word		pointerSet673
	.word		0x00000001
	.word		pointerSet674
	.word		0x00000001
	.word		pointerSet675
	.word		0x00000001
	.word		pointerSet676
	.word		0x00000001
	.word		pointerSet677
	.word		0x00000001
	.word		pointerSet678
	.word		0x00000001
	.word		pointerSet679
	.word		0x00000001
	.word		pointerSet680
	.word		0x00000001
	.word		pointerSet681
	.word		0x00000001
	.word		pointerSet682
	.word		0x00000001
	.word		pointerSet683
	.word		0x00000001
	.word		pointerSet684
	.word		0x00000001
	.word		pointerSet685
	.word		0x00000001
	.word		pointerSet686
	.word		0x00000001
	.word		pointerSet687
	.word		0x00000001
	.word		pointerSet688
	.word		0x00000001
	.word		pointerSet689
	.word		0x00000001
	.word		pointerSet690
	.word		0x00000001
	.word		pointerSet691
	.word		0x00000001
	.word		pointerSet692
	.word		0x00000001
	.word		pointerSet693
	.word		0x00000001
	.word		pointerSet694
	.word		0x00000001
	.word		pointerSet695
	.word		0x00000001
	.word		pointerSet696
	.word		0x00000001
	.word		pointerSet697
	.word		0x00000001
	.word		pointerSet698
	.word		0x00000001
	.word		pointerSet699
	.word		0x00000001
	.word		pointerSet700
	.word		0x00000001
	.word		pointerSet701
	.word		0x00000001
	.word		pointerSet702
	.word		0x00000001
	.word		pointerSet703
	.word		0x00000001
	.word		pointerSet704
	.word		0x00000001
	.word		pointerSet705
	.word		0x00000001
	.word		pointerSet706
	.word		0x00000001
	.word		pointerSet707
	.word		0x00000001
	.word		pointerSet708
	.word		0x00000001
	.word		pointerSet709
	.word		0x00000001
	.word		pointerSet710
	.word		0x00000001
	.word		pointerSet711
	.word		0x00000001
	.word		pointerSet712
	.word		0x00000001
	.word		pointerSet713
	.word		0x00000001
	.word		pointerSet714
	.word		0x00000001
	.word		pointerSet715
	.word		0x00000001
	.word		pointerSet716
	.word		0x00000001
	.word		pointerSet717
	.word		0x00000001
	.word		pointerSet718
	.word		0x00000001
	.word		pointerSet719
	.word		0x00000001
	.word		pointerSet720
	.word		0x00000001
	.word		pointerSet721
