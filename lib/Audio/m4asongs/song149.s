@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song149_grp, group_6
	.equ	song149_pri, 4
	.equ	song149_rev, 178
	.equ	song149_mvl, 127
	.equ	song149_key, 0
	.equ	song149_tbs, 1
	.equ	song149_exg, 1
	.equ	song149_cmp, 1

	.text
	.global	song149
	.align	2

@**************** Track 00 ****************************@

song149_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		PAN   , c_v+4
	.byte		VOL   , 42*song149_mvl/mxv
	.byte		BEND  , c_v+39
	.byte		N06   , Cn5 , v084
	.byte	W01
	.byte		VOL   , 55*song149_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 71*song149_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		VOL   , 86*song149_mvl/mxv
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 110*song149_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W04
	.byte		VOICE , 8
	.byte		PAN   , c_v-11
	.byte		BEND  , c_v+0
	.byte		N06   , Gn4 , v120
	.byte	W02
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		PAN   , c_v-12
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v-54
	.byte	W09
	.byte	FINE

@**************** Track 01 ****************************@

song149_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		VOL   , 110*song149_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Cn2 , v040
	.byte	W10
	.byte		N02   , Gn2 
	.byte	W14
	.byte	FINE

@******************************************************@
	.align	2

song149:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song149_pri	@ Priority
	.byte	song149_rev	@ Reverb.

	.word	song149_grp

	.word	song149_0
	.word	song149_1

	.end
