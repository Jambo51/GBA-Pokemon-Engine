@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song88_grp, group_5
	.equ	song88_pri, 5
	.equ	song88_rev, 178
	.equ	song88_mvl, 127
	.equ	song88_key, 0
	.equ	song88_tbs, 1
	.equ	song88_exg, 1
	.equ	song88_cmp, 1

	.text
	.global	song88
	.align	2

@**************** Track 00 ****************************@

song88_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 64
	.byte		VOICE , 6
	.byte		BENDR , 12
	.byte		VOL   , 90*song88_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N01   , Ds3 , v127
	.byte	W02
	.byte		N03   , Gs3 , v100
	.byte	W05
	.byte		N16   , Fn5 , v072
	.byte	W05
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song88_1:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		VOL   , 90*song88_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W02
	.byte		N03   , Gs3 , v060
	.byte	W05
	.byte		N16   , Fn5 
	.byte	W05
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song88:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song88_pri	@ Priority
	.byte	song88_rev	@ Reverb.

	.word	song88_grp

	.word	song88_0
	.word	song88_1

	.end
