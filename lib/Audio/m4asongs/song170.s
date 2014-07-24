@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song170_grp, group_6
	.equ	song170_pri, 4
	.equ	song170_rev, 178
	.equ	song170_mvl, 127
	.equ	song170_key, 0
	.equ	song170_tbs, 1
	.equ	song170_exg, 1
	.equ	song170_cmp, 1

	.section .rodata
	.global	song170
	.align	2

@**************** Track 00 ****************************@

song170_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 41
	.byte		VOL   , 115*song170_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N01   , Gn3 , v127
	.byte	W01
	.byte		        Cn3 
	.byte	W01
	.byte		N24   , An3 
	.byte	W06
	.byte		PAN   , c_v+6
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 102*song170_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-8
	.byte		VOL   , 88*song170_mvl/mxv
	.byte	W03
	.byte		        78*song170_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 67*song170_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		PAN   , c_v+7
	.byte		VOL   , 45*song170_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 13*song170_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-15
	.byte	W22
	.byte	FINE

@******************************************************@
	.align	2

song170:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song170_pri	@ Priority
	.byte	song170_rev	@ Reverb.

	.word	song170_grp

	.word	song170_0

	.end
