@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song118_grp, group_6
	.equ	song118_pri, 4
	.equ	song118_rev, 178
	.equ	song118_mvl, 127
	.equ	song118_key, 0
	.equ	song118_tbs, 1
	.equ	song118_exg, 1
	.equ	song118_cmp, 1

	.text
	.global	song118
	.align	2

@**************** Track 00 ****************************@

song118_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 24
	.byte		VOL   , 110*song118_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		N09   , Gn4 , v127
	.byte	W02
	.byte		BEND  , c_v+31
	.byte	W02
	.byte		        c_v-34
	.byte	W17
	.byte	FINE

@**************** Track 01 ****************************@

song118_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 110*song118_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Cn4 , v044
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song118:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song118_pri	@ Priority
	.byte	song118_rev	@ Reverb.

	.word	song118_grp

	.word	song118_0
	.word	song118_1

	.end
