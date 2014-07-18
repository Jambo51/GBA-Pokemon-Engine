@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song93_grp, group_6
	.equ	song93_pri, 5
	.equ	song93_rev, 178
	.equ	song93_mvl, 127
	.equ	song93_key, 0
	.equ	song93_tbs, 1
	.equ	song93_exg, 1
	.equ	song93_cmp, 1

	.text
	.global	song93
	.align	2

@**************** Track 00 ****************************@

song93_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		VOL   , 49*song93_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		N03   , Cn6 , v112
	.byte	W01
	.byte		VOL   , 68*song93_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 90*song93_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		VOL   , 69*song93_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Cn6 , v040
	.byte	W01
	.byte		VOL   , 90*song93_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song93:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song93_pri	@ Priority
	.byte	song93_rev	@ Reverb.

	.word	song93_grp

	.word	song93_0

	.end
