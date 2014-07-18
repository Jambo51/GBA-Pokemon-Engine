/*
 * MusicData.c
 *
 *  Created on: 25 Nov 2013
 *      Author: Jamie
 */

#include "Data/GlobalDefinitions.h"
#include "Data/Audio.h"

const GBPTrackHeader* gbpSongs[] = { (GBPTrackHeader*)(&song_1_Header), (GBPTrackHeader*)(&song_2_Header), (GBPTrackHeader*)(&song_3_Header), (GBPTrackHeader*)(&song_4_Header), (GBPTrackHeader*)(&song_5_Header), (GBPTrackHeader*)(&song_6_Header), (GBPTrackHeader*)(&song_7_Header), (GBPTrackHeader*)(&song_8_Header), (GBPTrackHeader*)(&song_9_Header), (GBPTrackHeader*)(&song_10_Header), (GBPTrackHeader*)(&song_11_Header), (GBPTrackHeader*)(&song_12_Header), (GBPTrackHeader*)(&song_13_Header), (GBPTrackHeader*)(&song_14_Header), (GBPTrackHeader*)(&song_15_Header), (GBPTrackHeader*)(&song_16_Header), (GBPTrackHeader*)(&song_17_Header), (GBPTrackHeader*)(&song_18_Header), (GBPTrackHeader*)(&song_19_Header), (GBPTrackHeader*)(&song_20_Header), (GBPTrackHeader*)(&song_21_Header), (GBPTrackHeader*)(&song_22_Header), (GBPTrackHeader*)(&song_23_Header), (GBPTrackHeader*)(&song_24_Header), (GBPTrackHeader*)(&song_25_Header), (GBPTrackHeader*)(&song_26_Header), (GBPTrackHeader*)(&song_27_Header), (GBPTrackHeader*)(&song_28_Header), (GBPTrackHeader*)(&song_29_Header), (GBPTrackHeader*)(&song_30_Header), (GBPTrackHeader*)(&song_31_Header), (GBPTrackHeader*)(&song_32_Header), (GBPTrackHeader*)(&song_33_Header), (GBPTrackHeader*)(&song_34_Header), (GBPTrackHeader*)(&song_35_Header), (GBPTrackHeader*)(&song_36_Header), (GBPTrackHeader*)(&song_37_Header), (GBPTrackHeader*)(&song_38_Header), (GBPTrackHeader*)(&song_39_Header), (GBPTrackHeader*)(&song_40_Header), (GBPTrackHeader*)(&song_41_Header), (GBPTrackHeader*)(&song_42_Header), (GBPTrackHeader*)(&song_43_Header), (GBPTrackHeader*)(&song_44_Header), (GBPTrackHeader*)(&song_45_Header), (GBPTrackHeader*)(&song_46_Header), (GBPTrackHeader*)(&song_47_Header), (GBPTrackHeader*)(&song_48_Header), (GBPTrackHeader*)(&song_49_Header), (GBPTrackHeader*)(&song_50_Header), (GBPTrackHeader*)(&song_51_Header), (GBPTrackHeader*)(&song_52_Header), (GBPTrackHeader*)(&song_53_Header), (GBPTrackHeader*)(&song_54_Header), (GBPTrackHeader*)(&song_55_Header), (GBPTrackHeader*)(&song_56_Header), (GBPTrackHeader*)(&song_57_Header), (GBPTrackHeader*)(&song_58_Header), (GBPTrackHeader*)(&song_59_Header), (GBPTrackHeader*)(&song_60_Header), (GBPTrackHeader*)(&song_61_Header), (GBPTrackHeader*)(&song_62_Header), (GBPTrackHeader*)(&song_63_Header), (GBPTrackHeader*)(&song_64_Header), (GBPTrackHeader*)(&song_65_Header), (GBPTrackHeader*)(&song_66_Header), (GBPTrackHeader*)(&song_67_Header), (GBPTrackHeader*)(&song_68_Header), (GBPTrackHeader*)(&song_69_Header), (GBPTrackHeader*)(&song_70_Header), (GBPTrackHeader*)(&song_71_Header), (GBPTrackHeader*)(&song_72_Header), (GBPTrackHeader*)(&song_73_Header), (GBPTrackHeader*)(&song_74_Header), (GBPTrackHeader*)(&song_75_Header), (GBPTrackHeader*)(&song_76_Header), (GBPTrackHeader*)(&song_77_Header), (GBPTrackHeader*)(&song_78_Header), (GBPTrackHeader*)(&song_79_Header), (GBPTrackHeader*)(&song_80_Header), (GBPTrackHeader*)(&song_81_Header), (GBPTrackHeader*)(&song_82_Header), (GBPTrackHeader*)(&song_83_Header), (GBPTrackHeader*)(&song_84_Header), (GBPTrackHeader*)(&song_85_Header), (GBPTrackHeader*)(&song_86_Header), (GBPTrackHeader*)(&song_87_Header), (GBPTrackHeader*)(&song_88_Header), (GBPTrackHeader*)(&song_89_Header), (GBPTrackHeader*)(&song_90_Header), (GBPTrackHeader*)(&song_91_Header), (GBPTrackHeader*)(&song_92_Header), (GBPTrackHeader*)(&song_93_Header), (GBPTrackHeader*)(&song_94_Header), (GBPTrackHeader*)(&song_95_Header), (GBPTrackHeader*)(&song_96_Header), (GBPTrackHeader*)(&song_97_Header), (GBPTrackHeader*)(&song_98_Header), (GBPTrackHeader*)(&song_99_Header), (GBPTrackHeader*)(&song_100_Header), (GBPTrackHeader*)(&song_101_Header), (GBPTrackHeader*)(&song_102_Header), (GBPTrackHeader*)(&song_103_Header), (GBPTrackHeader*)(&song_104_Header), (GBPTrackHeader*)(&song_105_Header), (GBPTrackHeader*)(&song_106_Header), (GBPTrackHeader*)(&song_107_Header), (GBPTrackHeader*)(&song_108_Header), (GBPTrackHeader*)(&song_109_Header), (GBPTrackHeader*)(&song_110_Header), (GBPTrackHeader*)(&song_111_Header), (GBPTrackHeader*)(&song_112_Header), (GBPTrackHeader*)(&song_113_Header), (GBPTrackHeader*)(&song_114_Header), (GBPTrackHeader*)(&song_115_Header), (GBPTrackHeader*)(&song_116_Header), (GBPTrackHeader*)(&song_117_Header), (GBPTrackHeader*)(&song_118_Header), (GBPTrackHeader*)(&song_119_Header), (GBPTrackHeader*)(&song_120_Header), (GBPTrackHeader*)(&song_121_Header), (GBPTrackHeader*)(&song_122_Header), (GBPTrackHeader*)(&song_123_Header), (GBPTrackHeader*)(&song_124_Header), (GBPTrackHeader*)(&song_125_Header), (GBPTrackHeader*)(&song_126_Header), (GBPTrackHeader*)(&song_127_Header), (GBPTrackHeader*)(&song_128_Header), (GBPTrackHeader*)(&song_129_Header), (GBPTrackHeader*)(&song_130_Header), (GBPTrackHeader*)(&song_131_Header), (GBPTrackHeader*)(&song_132_Header), (GBPTrackHeader*)(&song_133_Header), (GBPTrackHeader*)(&song_134_Header), (GBPTrackHeader*)(&song_135_Header), (GBPTrackHeader*)(&song_136_Header), (GBPTrackHeader*)(&song_137_Header), (GBPTrackHeader*)(&song_138_Header), (GBPTrackHeader*)(&song_139_Header), (GBPTrackHeader*)(&song_140_Header), (GBPTrackHeader*)(&song_141_Header), (GBPTrackHeader*)(&song_142_Header), (GBPTrackHeader*)(&song_143_Header), (GBPTrackHeader*)(&song_144_Header), (GBPTrackHeader*)(&song_145_Header), (GBPTrackHeader*)(&song_146_Header), (GBPTrackHeader*)(&song_147_Header) };

const u16 CGBFreq[] = {
		8013, 7566, 7144, 6742,
		6362, 6005, 5666, 5346,
		5048, 4766, 4499, 4246
	};

const u16 freq[75] = {
	44,		// C3
	156,
	262,
	363,
	457,
	547,
	631,
	710,
	786,
	854,
	923,
	986,
	1046,	// C4
	1102,
	1155,
	1205,
	1253,
	1297,
	1339,
	1379,
	1417,
	1452,
	1486,
	1517,
	1546,	// C5
	1575,
	1602,
	1627,
	1650,
	1673,
	1694,
	1714,
	1732,
	1750,
	1767,
	1783,
	1798,	// C6
	1812,
	1825,
	1837,
	1849,
	1860,
	1871,
	1881,
	1890,
	1899,
	1907,
	1915,
	1923,	// C7
	1930,
	1936,
	1943,
	1949,
	1954,
	1959,
	1964,
	1969,
	1974,
	1978,
	1982,
	1985,	// C8
	1988,
	1992,
	1995,
	1998,
	2001,
	2004,
	2006,
	2009,
	2011,
	2013,
	2015,
	2017,
	2019,
	2020
	};

const WavePattern patterns[] = {
			{ 0xCE8A4602, 0xDCEDFEFF, 0x6587A9CB, 0x11223344 },
			{ 0xCE8A4602, 0xEEFEFFEF, 0x87A9CBDD, 0x11224365 },
			{ 0xEEBD6913, 0xEDFFFFEE, 0xEEFFFFDE, 0x3196DBEE },
			{ 0xCD8A4602, 0xFFDEFEEF, 0x98BADCEE, 0x10325476 },
			{ 0x67452301, 0xF7EECD8A, 0xA8DCEE7F, 0x10325476 },
			{ 0x33221100, 0x11223344, 0xAACCEEFF, 0xEECCAA88 },
			{ 0xCE8A4602, 0x6587A9CB, 0xDCEDFEFF, 0x11223344 },
			{ 0xF587A9C0, 0xDCEDFEFF, 0xF1223344, 0xCE8A4602 },
			{ 0x1F223344, 0xCE8A4600, 0xDCEDFEF8, 0x6587A9CB },
			{ 0x08000011, 0x9A571300, 0x98A9BAB4, 0x21436587 },
			{ 0x2833E221, 0xEAFF22E1, 0x10DC1410, 0x735141E3 },
			{ 0x000000FF, 0x00000000, 0x000000FF, 0x00000000 },
			{ 0x0000FFFF, 0x00000000, 0x0000FFFF, 0x00000000 },
			{ 0xFFFFFFFF, 0x00000000, 0xFFFFFFFF, 0x00000000 },
			{ 0xFFFFFFFF, 0x0000FFFF, 0xFFFFFFFF, 0x0000FFFF }
	};

const ALIGN(1) u8 noiseData00[] = { 0x20, 0x11, 0x00, 0xFF };
const ALIGN(1) u8 noiseData01[] = { 0x20, 0xC1, 0x33, 0xFF };
const ALIGN(1) u8 noiseData02[] = { 0x20, 0xB1, 0x33, 0xFF };
const ALIGN(1) u8 noiseData03[] = { 0x20, 0xA1, 0x33, 0xFF };
const ALIGN(1) u8 noiseData04[] = { 0x20, 0x81, 0x33, 0xFF };
const ALIGN(1) u8 noiseData05[] = { 0x27, 0x84, 0x37, 0x26, 0x84, 0x36, 0x25, 0x83, 0x35, 0x24, 0x83, 0x34, 0x23, 0x82, 0x33, 0x22, 0x81, 0x32, 0xFF };
const ALIGN(1) u8 noiseData06[] = { 0x20, 0x51, 0x2A, 0xFF };
const ALIGN(1) u8 noiseData07[] = { 0x21, 0x41, 0x2B, 0x20, 0x61, 0x2A, 0xFF };
const ALIGN(1) u8 noiseData08[] = { 0x20, 0x81, 0x10, 0xFF };
const ALIGN(1) u8 noiseData09[] = { 0x20, 0x82, 0x23, 0xFF };
const ALIGN(1) u8 noiseData010[] = { 0x20, 0x82, 0x25, 0xFF };
const ALIGN(1) u8 noiseData011[] = { 0x20, 0x82, 0x26, 0xFF };
const ALIGN(1) u8 noiseData012[] = { 0x20, 0xA1, 0x10, 0xFF };
const ALIGN(1) u8 noiseData16[] = { 0x20, 0xA2, 0x11, 0xFF };
const ALIGN(1) u8 noiseData17[] = { 0x20, 0xA2, 0x50, 0xFF };
const ALIGN(1) u8 noiseData18[] = { 0x20, 0xA1, 0x18, 0x20, 0x31, 0x33, 0xFF };
const ALIGN(1) u8 noiseData19[] = { 0x22, 0x91, 0x28, 0x20, 0x71, 0x18, 0xFF };
const ALIGN(1) u8 noiseData110[] = { 0x20, 0x91, 0x22, 0xFF };
const ALIGN(1) u8 noiseData111[] = { 0x20, 0x71, 0x22, 0xFF };
const ALIGN(1) u8 noiseData112[] = { 0x20, 0x61, 0x22, 0xFF };
const ALIGN(1) u8 noiseData30[] = { 0xFF };
const ALIGN(1) u8 noiseData31[] = { 0x20, 0x91, 0x33, 0xFF };
const ALIGN(1) u8 noiseData32[] = { 0x20, 0x51, 0x32, 0xFF };
const ALIGN(1) u8 noiseData33[] = { 0x20, 0x81, 0x31, 0xFF };
const ALIGN(1) u8 noiseData34[] = { 0x20, 0x88, 0x6B, 0x20, 0x71, 0x00, 0xFF };
const ALIGN(1) u8 noiseData35[] = { 0x30, 0x91, 0x18, 0xFF };
const ALIGN(1) u8 noiseData36[] = { 0x20, 0x11, 0x11, 0xFF };
const ALIGN(1) u8 noiseData37[] = { 0x27, 0x92, 0x10, 0xFF };
const ALIGN(1) u8 noiseData38[] = { 0x33, 0x91, 0x00, 0x33, 0x11, 0x00, 0xFF };
const ALIGN(1) u8 noiseData39[] = { 0x33, 0x91, 0x11, 0x33, 0x11, 0x00, 0xFF };
const ALIGN(1) u8 noiseData311[] = { 0x20, 0xA8, 0x6B, 0x20, 0x71, 0x00, 0xFF };
const ALIGN(1) u8 noiseData312[] = { 0x20, 0x84, 0x12, 0xFF };
const ALIGN(1) u8 noiseData45[] = { 0x20, 0xA1, 0x31, 0xFF };
const ALIGN(1) u8 noiseData47[] = { 0x33, 0x81, 0x00, 0x33, 0x11, 0x00, 0xFF };
const ALIGN(1) u8 noiseData48[] = { 0x33, 0x51, 0x21, 0x33, 0x11, 0x11, 0xFF };
const ALIGN(1) u8 noiseData49[] = { 0x33, 0x51, 0x50, 0x33, 0x11, 0x11, 0xFF };
const ALIGN(1) u8 noiseData410[] = { 0x33, 0x81, 0x21, 0x33, 0x11, 0x11, 0xFF };
const ALIGN(1) u8 noiseData412[] = { 0x33, 0x88, 0x15, 0x20, 0x65, 0x12, 0xFF };
const u8* noiseDataPointers0[] = { (u8*)(&noiseData00), (u8*)(&noiseData01), (u8*)(&noiseData02), (u8*)(&noiseData03), (u8*)(&noiseData04), (u8*)(&noiseData05), (u8*)(&noiseData06), (u8*)(&noiseData07), (u8*)(&noiseData08), (u8*)(&noiseData09), (u8*)(&noiseData010), (u8*)(&noiseData011), (u8*)(&noiseData012) };
const u8* noiseDataPointers1[] = { (u8*)(&noiseData00), (u8*)(&noiseData08), (u8*)(&noiseData09), (u8*)(&noiseData010), (u8*)(&noiseData011), (u8*)(&noiseData012), (u8*)(&noiseData16), (u8*)(&noiseData17), (u8*)(&noiseData18), (u8*)(&noiseData19), (u8*)(&noiseData110), (u8*)(&noiseData111), (u8*)(&noiseData112) };
const u8* noiseDataPointers2[] = { (u8*)(&noiseData00), (u8*)(&noiseData01), (u8*)(&noiseData110), (u8*)(&noiseData111), (u8*)(&noiseData112), (u8*)(&noiseData05), (u8*)(&noiseData06), (u8*)(&noiseData07), (u8*)(&noiseData08), (u8*)(&noiseData09), (u8*)(&noiseData010), (u8*)(&noiseData011), (u8*)(&noiseData012) };
const u8* noiseDataPointers3[] = { (u8*)(&noiseData30), (u8*)(&noiseData31), (u8*)(&noiseData32), (u8*)(&noiseData33), (u8*)(&noiseData34), (u8*)(&noiseData35), (u8*)(&noiseData36), (u8*)(&noiseData37), (u8*)(&noiseData38), (u8*)(&noiseData39), (u8*)(&noiseData30), (u8*)(&noiseData311), (u8*)(&noiseData312) };
const u8* noiseDataPointers4[] = { (u8*)(&noiseData30), (u8*)(&noiseData36), (u8*)(&noiseData32), (u8*)(&noiseData33), (u8*)(&noiseData34), (u8*)(&noiseData45), (u8*)(&noiseData35), (u8*)(&noiseData47), (u8*)(&noiseData48), (u8*)(&noiseData49), (u8*)(&noiseData410), (u8*)(&noiseData311), (u8*)(&noiseData412) };
const u8* noiseDataPointers5[] = { (u8*)(&noiseData00), (u8*)(&noiseData110), (u8*)(&noiseData111), (u8*)(&noiseData112), (u8*)(&noiseData37), (u8*)(&noiseData38), (u8*)(&noiseData39), (u8*)(&noiseData05), (u8*)(&noiseData06), (u8*)(&noiseData412), (u8*)(&noiseData33), (u8*)(&noiseData32), (u8*)(&noiseData311) };
const void* noiseDataPointers[] = { &noiseDataPointers0, &noiseDataPointers1, &noiseDataPointers2, &noiseDataPointers3, &noiseDataPointers4, &noiseDataPointers5 };
