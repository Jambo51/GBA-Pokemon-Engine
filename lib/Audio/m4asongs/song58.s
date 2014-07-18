@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song58_grp, group_6
	.equ	song58_pri, 4
	.equ	song58_rev, 178
	.equ	song58_mvl, 127
	.equ	song58_key, 0
	.equ	song58_tbs, 1
	.equ	song58_exg, 1
	.equ	song58_cmp, 1

	.text
	.global	song58
	.align	2

@**************** Track 00 ****************************@

song58_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song58_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Fn5 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , Fn5 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song58_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song58_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Cn6 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , Cn6 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song58:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song58_pri	@ Priority
	.byte	song58_rev	@ Reverb.

	.word	song58_grp

	.word	song58_0
	.word	song58_1

	.end
