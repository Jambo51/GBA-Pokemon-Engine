@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song89_grp, group_6
	.equ	song89_pri, 5
	.equ	song89_rev, 178
	.equ	song89_mvl, 127
	.equ	song89_key, 0
	.equ	song89_tbs, 1
	.equ	song89_exg, 1
	.equ	song89_cmp, 1

	.section .rodata
	.global	song89
	.align	2

@**************** Track 00 ****************************@

song89_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 14
	.byte		VOL   , 90*song89_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N02   , Cn5 , v112
	.byte	W02
	.byte		N09   , Gn4 
	.byte	W04
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song89:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song89_pri	@ Priority
	.byte	song89_rev	@ Reverb.

	.word	song89_grp

	.word	song89_0

	.end
