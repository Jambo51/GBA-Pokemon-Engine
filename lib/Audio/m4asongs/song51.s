@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song51_grp, group_6
	.equ	song51_pri, 4
	.equ	song51_rev, 178
	.equ	song51_mvl, 127
	.equ	song51_key, 0
	.equ	song51_tbs, 1
	.equ	song51_exg, 1
	.equ	song51_cmp, 1

	.text
	.global	song51
	.align	2

@**************** Track 00 ****************************@

song51_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 16
	.byte		VOL   , 100*song51_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N12   , Fn4 , v088
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song51_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 100*song51_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , Fn4 , v072
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song51:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song51_pri	@ Priority
	.byte	song51_rev	@ Reverb.

	.word	song51_grp

	.word	song51_0
	.word	song51_1

	.end
