@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song110_grp, group_6
	.equ	song110_pri, 5
	.equ	song110_rev, 178
	.equ	song110_mvl, 127
	.equ	song110_key, 0
	.equ	song110_tbs, 1
	.equ	song110_exg, 1
	.equ	song110_cmp, 1

	.section .rodata
	.global	song110
	.align	2

@**************** Track 00 ****************************@

song110_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 28
	.byte		VOL   , 26*song110_mvl/mxv
	.byte		BENDR , 8
	.byte		BEND  , c_v+0
	.byte		N01   , En3 , v116
	.byte	W01
	.byte		VOL   , 105*song110_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N01   , Bn2 
	.byte	W01
	.byte		BEND  , c_v+3
	.byte		N01   , Cn3 
	.byte	W04
	.byte	W04
	.byte		BEND  , c_v+0
	.byte		N04   , Bn3 
	.byte	W02
	.byte		VOL   , 26*song110_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 105*song110_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		        c_v-23
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song110:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song110_pri	@ Priority
	.byte	song110_rev	@ Reverb.

	.word	song110_grp

	.word	song110_0

	.end
