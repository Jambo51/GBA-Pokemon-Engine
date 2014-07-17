@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song28_grp, group_5
	.equ	song28_pri, 4
	.equ	song28_rev, 178
	.equ	song28_mvl, 127
	.equ	song28_key, 0
	.equ	song28_tbs, 1
	.equ	song28_exg, 1
	.equ	song28_cmp, 1

	.section .rodata
	.global	song28
	.align	2

@**************** Track 00 ****************************@

song28_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 90
	.byte		VOICE , 85
	.byte		VOL   , 90*song28_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Cn3 , v080
	.byte	W02
	.byte		VOICE , 86
	.byte		N03   , Cn4 , v127
	.byte	W01
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song28:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song28_pri	@ Priority
	.byte	song28_rev	@ Reverb.

	.word	song28_grp

	.word	song28_0

	.end
