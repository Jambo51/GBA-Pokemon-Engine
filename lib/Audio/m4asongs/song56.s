@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song56_grp, group_6
	.equ	song56_pri, 4
	.equ	song56_rev, 178
	.equ	song56_mvl, 127
	.equ	song56_key, 0
	.equ	song56_tbs, 1
	.equ	song56_exg, 1
	.equ	song56_cmp, 1

	.text
	.global	song56
	.align	2

@**************** Track 00 ****************************@

song56_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song56_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Dn5 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , Dn5 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song56_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song56_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , An5 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , An5 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song56:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song56_pri	@ Priority
	.byte	song56_rev	@ Reverb.

	.word	song56_grp

	.word	song56_0
	.word	song56_1

	.end
