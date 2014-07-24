@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song25_grp, group_5
	.equ	song25_pri, 4
	.equ	song25_rev, 178
	.equ	song25_mvl, 127
	.equ	song25_key, 0
	.equ	song25_tbs, 1
	.equ	song25_exg, 1
	.equ	song25_cmp, 1

	.section .rodata
	.global	song25
	.align	2

@**************** Track 00 ****************************@

song25_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 5
	.byte		BENDR , 12
	.byte		VOL   , 80*song25_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Gn5 , v127
	.byte	W06
	.byte		N18   , Ds5 
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song25:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song25_pri	@ Priority
	.byte	song25_rev	@ Reverb.

	.word	song25_grp

	.word	song25_0

	.end
