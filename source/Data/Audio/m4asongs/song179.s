@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song179_grp, group_6
	.equ	song179_pri, 4
	.equ	song179_rev, 178
	.equ	song179_mvl, 127
	.equ	song179_key, 0
	.equ	song179_tbs, 1
	.equ	song179_exg, 1
	.equ	song179_cmp, 1

	.section .rodata
	.global	song179
	.align	2

@**************** Track 00 ****************************@

song179_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 37
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 115*song179_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N15   , En3 , v127
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-5
	.byte	W02
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+14
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+46
	.byte	W10
	.byte	FINE

@******************************************************@
	.align	2

song179:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song179_pri	@ Priority
	.byte	song179_rev	@ Reverb.

	.word	song179_grp

	.word	song179_0

	.end
