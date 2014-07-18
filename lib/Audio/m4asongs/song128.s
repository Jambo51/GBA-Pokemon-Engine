@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song128_grp, group_6
	.equ	song128_pri, 4
	.equ	song128_rev, 178
	.equ	song128_mvl, 127
	.equ	song128_key, 0
	.equ	song128_tbs, 1
	.equ	song128_exg, 1
	.equ	song128_cmp, 1

	.text
	.global	song128
	.align	2

@**************** Track 00 ****************************@

song128_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song128_mvl/mxv
	.byte		BEND  , c_v-18
	.byte		N19   , Dn3 , v108
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 101*song128_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		VOL   , 84*song128_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 64*song128_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		PAN   , c_v+8
	.byte	W02
	.byte		VOL   , 45*song128_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W02
	.byte		VOL   , 32*song128_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOICE , 2
	.byte	W01
	.byte		VOL   , 13*song128_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W08
	.byte	FINE

@******************************************************@
	.align	2

song128:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song128_pri	@ Priority
	.byte	song128_rev	@ Reverb.

	.word	song128_grp

	.word	song128_0

	.end
