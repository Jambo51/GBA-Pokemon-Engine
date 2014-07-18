@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song49_grp, group_6
	.equ	song49_pri, 4
	.equ	song49_rev, 178
	.equ	song49_mvl, 127
	.equ	song49_key, 0
	.equ	song49_tbs, 1
	.equ	song49_exg, 1
	.equ	song49_cmp, 1

	.text
	.global	song49
	.align	2

@**************** Track 00 ****************************@

song49_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 16
	.byte		VOL   , 100*song49_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N12   , Fn4 , v112
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song49_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 100*song49_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , Fn4 , v100
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song49:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song49_pri	@ Priority
	.byte	song49_rev	@ Reverb.

	.word	song49_grp

	.word	song49_0
	.word	song49_1

	.end
