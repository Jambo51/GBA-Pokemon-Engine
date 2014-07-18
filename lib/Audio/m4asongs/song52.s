@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song52_grp, group_6
	.equ	song52_pri, 4
	.equ	song52_rev, 178
	.equ	song52_mvl, 127
	.equ	song52_key, 0
	.equ	song52_tbs, 1
	.equ	song52_exg, 1
	.equ	song52_cmp, 1

	.text
	.global	song52
	.align	2

@**************** Track 00 ****************************@

song52_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 16
	.byte		VOL   , 100*song52_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N12   , Fn4 , v076
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song52_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 100*song52_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , Fn4 , v056
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song52:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song52_pri	@ Priority
	.byte	song52_rev	@ Reverb.

	.word	song52_grp

	.word	song52_0
	.word	song52_1

	.end
