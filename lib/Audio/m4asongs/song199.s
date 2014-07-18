@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song199_grp, group_6
	.equ	song199_pri, 4
	.equ	song199_rev, 178
	.equ	song199_mvl, 127
	.equ	song199_key, 0
	.equ	song199_tbs, 1
	.equ	song199_exg, 1
	.equ	song199_cmp, 1

	.text
	.global	song199
	.align	2

@**************** Track 00 ****************************@

song199_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 90
	.byte		VOICE , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song199_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Ds6 , v100
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 90*song199_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 77*song199_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 37*song199_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W02
	.byte		VOL   , 100*song199_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 90*song199_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		VOL   , 77*song199_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		VOL   , 37*song199_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W02
	.byte		VOL   , 100*song199_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Ds6 , v056
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 90*song199_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		VOL   , 77*song199_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		VOL   , 37*song199_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song199_1:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		VOL   , 100*song199_mvl/mxv
	.byte	W02
	.byte		N06   , Cn6 , v040
	.byte	W04
	.byte	W02
	.byte		N04   , Cn6 , v032
	.byte	W04
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song199:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song199_pri	@ Priority
	.byte	song199_rev	@ Reverb.

	.word	song199_grp

	.word	song199_0
	.word	song199_1

	.end
