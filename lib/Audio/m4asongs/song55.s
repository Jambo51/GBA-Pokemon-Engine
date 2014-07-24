@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song55_grp, group_6
	.equ	song55_pri, 4
	.equ	song55_rev, 178
	.equ	song55_mvl, 127
	.equ	song55_key, 0
	.equ	song55_tbs, 1
	.equ	song55_exg, 1
	.equ	song55_cmp, 1

	.section .rodata
	.global	song55
	.align	2

@**************** Track 00 ****************************@

song55_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song55_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Cn5 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , Cn5 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song55_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song55_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , Gn5 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , Gn5 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song55:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song55_pri	@ Priority
	.byte	song55_rev	@ Reverb.

	.word	song55_grp

	.word	song55_0
	.word	song55_1

	.end
