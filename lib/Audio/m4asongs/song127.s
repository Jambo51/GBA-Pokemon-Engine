@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song127_grp, group_6
	.equ	song127_pri, 4
	.equ	song127_rev, 178
	.equ	song127_mvl, 127
	.equ	song127_key, 0
	.equ	song127_tbs, 1
	.equ	song127_exg, 1
	.equ	song127_cmp, 1

	.text
	.global	song127
	.align	2

@**************** Track 00 ****************************@

song127_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		VOL   , 110*song127_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v+0
	.byte		N02   , Bn3 , v112
	.byte	W04
	.byte		PAN   , c_v-9
	.byte		N02   , Fn5 , v064
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		N02   , Bn3 , v036
	.byte	W03
	.byte		VOICE , 18
	.byte		N02   , Cn6 , v096
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

song127:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song127_pri	@ Priority
	.byte	song127_rev	@ Reverb.

	.word	song127_grp

	.word	song127_0

	.end
