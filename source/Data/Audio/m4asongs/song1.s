@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song1_grp, group_5
	.equ	song1_pri, 5
	.equ	song1_rev, 178
	.equ	song1_mvl, 127
	.equ	song1_key, 0
	.equ	song1_tbs, 1
	.equ	song1_exg, 1
	.equ	song1_cmp, 1

	.section .rodata
	.global	song1
	.align	2

@**************** Track 00 ****************************@

song1_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 66
	.byte		VOICE , 91
	.byte		VOL   , 100*song1_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Cn3 , v112
	.byte	W04
	.byte		N02
	.byte	W04
	.byte		VOICE , 90
	.byte		N15
	.byte	W16
	.byte	FINE

@******************************************************@
	.align	2

song1:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song1_pri	@ Priority
	.byte	song1_rev	@ Reverb.

	.word	song1_grp

	.word	song1_0

	.end
