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
 	.short PKMN_MISSINGNO
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
