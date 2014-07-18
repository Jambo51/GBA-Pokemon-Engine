@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song61_grp, group_6
	.equ	song61_pri, 4
	.equ	song61_rev, 178
	.equ	song61_mvl, 127
	.equ	song61_key, 0
	.equ	song61_tbs, 1
	.equ	song61_exg, 1
	.equ	song61_cmp, 1

	.text
	.global	song61
	.align	2

@**************** Track 00 ****************************@

song61_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song61_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Bn5 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , Bn5 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song61_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song61_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Fs6 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , Fs6 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song61:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song61_pri	@ Priority
	.byte	song61_rev	@ Reverb.

	.word	song61_grp

	.word	song61_0
	.word	song61_1

	.end
