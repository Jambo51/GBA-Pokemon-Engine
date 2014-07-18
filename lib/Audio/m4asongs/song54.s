@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song54_grp, group_6
	.equ	song54_pri, 5
	.equ	song54_rev, 178
	.equ	song54_mvl, 127
	.equ	song54_key, 0
	.equ	song54_tbs, 1
	.equ	song54_exg, 1
	.equ	song54_cmp, 1

	.text
	.global	song54
	.align	2

@**************** Track 00 ****************************@

song54_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		VOL   , 120*song54_mvl/mxv
	.byte		BEND  , c_v+12
	.byte		N06   , An2 , v127
	.byte	W03
	.byte		VOL   , 78*song54_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W03
	.byte		VOL   , 120*song54_mvl/mxv
	.byte		BEND  , c_v+36
	.byte		N18   , Cn3 
	.byte	W02
	.byte		BEND  , c_v+35
	.byte	W03
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+26
	.byte	W03
	.byte		VOL   , 102*song54_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W02
	.byte		VOL   , 68*song54_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W03
	.byte		VOL   , 34*song54_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song54:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song54_pri	@ Priority
	.byte	song54_rev	@ Reverb.

	.word	song54_grp

	.word	song54_0

	.end
