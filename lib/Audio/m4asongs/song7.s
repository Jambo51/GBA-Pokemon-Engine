@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song7_grp, group_5
	.equ	song7_pri, 2
	.equ	song7_rev, 178
	.equ	song7_mvl, 127
	.equ	song7_key, 0
	.equ	song7_tbs, 1
	.equ	song7_exg, 1
	.equ	song7_cmp, 1

	.text
	.global	song7
	.align	2

@**************** Track 00 ****************************@

song7_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 89
	.byte		VOL   , 80*song7_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N18   , Gn1 , v127
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song7:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song7_pri	@ Priority
	.byte	song7_rev	@ Reverb.

	.word	song7_grp

	.word	song7_0

	.end
