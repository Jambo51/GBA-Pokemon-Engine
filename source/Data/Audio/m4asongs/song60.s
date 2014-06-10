@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song60_grp, group_6
	.equ	song60_pri, 4
	.equ	song60_rev, 178
	.equ	song60_mvl, 127
	.equ	song60_key, 0
	.equ	song60_tbs, 1
	.equ	song60_exg, 1
	.equ	song60_cmp, 1

	.section .rodata
	.global	song60
	.align	2

@**************** Track 00 ****************************@

song60_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 48
	.byte		VOL   , 110*song60_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , An5 , v112
	.byte	W06
	.byte	W06
	.byte		N06   , An5 , v040
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song60_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 110*song60_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N12   , En6 , v060
	.byte	W06
	.byte	W06
	.byte		N06   , En6 , v032
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song60:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song60_pri	@ Priority
	.byte	song60_rev	@ Reverb.

	.word	song60_grp

	.word	song60_0
	.word	song60_1

	.end
