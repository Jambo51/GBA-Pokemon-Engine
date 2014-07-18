@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song124_grp, group_6
	.equ	song124_pri, 4
	.equ	song124_rev, 178
	.equ	song124_mvl, 127
	.equ	song124_key, 0
	.equ	song124_tbs, 1
	.equ	song124_exg, 1
	.equ	song124_cmp, 1

	.text
	.global	song124
	.align	2

@**************** Track 00 ****************************@

song124_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 26
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 105*song124_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , En3 , v127
	.byte	W03
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v-34
	.byte	W03
	.byte		PAN   , c_v+7
	.byte		N03   , Gn3 , v100
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		BEND  , c_v+4
	.byte		N06   , En3 , v127
	.byte	W03
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+0
	.byte		N06   , Cn3 , v084
	.byte	W06
	.byte		BEND  , c_v-20
	.byte		N06   , En3 , v068
	.byte	W03
	.byte		BEND  , c_v-41
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song124:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song124_pri	@ Priority
	.byte	song124_rev	@ Reverb.

	.word	song124_grp

	.word	song124_0

	.end
