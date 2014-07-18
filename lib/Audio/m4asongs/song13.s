@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song13_grp, group_5
	.equ	song13_pri, 5
	.equ	song13_rev, 178
	.equ	song13_mvl, 127
	.equ	song13_key, 0
	.equ	song13_tbs, 1
	.equ	song13_exg, 1
	.equ	song13_cmp, 1

	.text
	.global	song13
	.align	2

@**************** Track 00 ****************************@

song13_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 45
	.byte		VOICE , 125
	.byte		VOL   , 110*song13_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , As2 , v100
	.byte	W03
	.byte		BEND  , c_v-33
	.byte		N36   , Ds3 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song13_1:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 110*song13_mvl/mxv
	.byte		N03   , Cn3 , v127
	.byte	W03
	.byte		N18
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song13:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song13_pri	@ Priority
	.byte	song13_rev	@ Reverb.

	.word	song13_grp

	.word	song13_0
	.word	song13_1

	.end
