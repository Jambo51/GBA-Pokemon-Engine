@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song62_grp, group_6
	.equ	song62_pri, 4
	.equ	song62_rev, 178
	.equ	song62_mvl, 127
	.equ	song62_key, 0
	.equ	song62_tbs, 1
	.equ	song62_exg, 1
	.equ	song62_cmp, 1

	.text
	.global	song62
	.align	2

@**************** Track 00 ****************************@

song62_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song62_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Cn6 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , Cn6 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song62_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song62_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Gn6 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , Gn6 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song62:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song62_pri	@ Priority
	.byte	song62_rev	@ Reverb.

	.word	song62_grp

	.word	song62_0
	.word	song62_1

	.end
