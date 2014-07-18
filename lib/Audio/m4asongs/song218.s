@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song218_grp, group_6
	.equ	song218_pri, 4
	.equ	song218_rev, 178
	.equ	song218_mvl, 127
	.equ	song218_key, 0
	.equ	song218_tbs, 1
	.equ	song218_exg, 1
	.equ	song218_cmp, 1

	.text
	.global	song218
	.align	2

@**************** Track 00 ****************************@

song218_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 90
	.byte		VOICE , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song218_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , An6 , v100
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 90*song218_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 77*song218_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 37*song218_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W02
	.byte		N02   , An6 , v056
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v-6
	.byte		VOL   , 100*song218_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , An6 , v100
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		VOL   , 90*song218_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W02
	.byte		PAN   , c_v+1
	.byte		VOL   , 77*song218_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 37*song218_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		N02   , An6 , v056
	.byte	W01
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		        c_v-10
	.byte		VOL   , 100*song218_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , An6 , v072
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 90*song218_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 77*song218_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		VOL   , 37*song218_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W02
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song218_1:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		VOL   , 100*song218_mvl/mxv
	.byte	W02
	.byte		N06   , Fs6 , v040
	.byte	W04
	.byte	W04
	.byte		N06
	.byte	W02
	.byte	W06
	.byte	W01
	.byte		        Fs6 , v032
	.byte	W05
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song218:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song218_pri	@ Priority
	.byte	song218_rev	@ Reverb.

	.word	song218_grp

	.word	song218_0
	.word	song218_1

	.end
