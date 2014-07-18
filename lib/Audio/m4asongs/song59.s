@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song59_grp, group_6
	.equ	song59_pri, 4
	.equ	song59_rev, 178
	.equ	song59_mvl, 127
	.equ	song59_key, 0
	.equ	song59_tbs, 1
	.equ	song59_exg, 1
	.equ	song59_cmp, 1

	.text
	.global	song59
	.align	2

@**************** Track 00 ****************************@

song59_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song59_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Gn5 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , Gn5 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song59_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song59_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Dn6 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , Dn6 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song59:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song59_pri	@ Priority
	.byte	song59_rev	@ Reverb.

	.word	song59_grp

	.word	song59_0
	.word	song59_1

	.end
