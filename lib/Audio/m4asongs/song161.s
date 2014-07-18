@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song161_grp, group_6
	.equ	song161_pri, 4
	.equ	song161_rev, 178
	.equ	song161_mvl, 127
	.equ	song161_key, 0
	.equ	song161_tbs, 1
	.equ	song161_exg, 1
	.equ	song161_cmp, 1

	.text
	.global	song161
	.align	2

@**************** Track 00 ****************************@

song161_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 7*song161_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N18   , Cn5 , v052
	.byte	W01
	.byte		VOL   , 20*song161_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 41*song161_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 70*song161_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 93*song161_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song161_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		PAN   , c_v-14
	.byte	W01
	.byte		VOL   , 98*song161_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 85*song161_mvl/mxv
	.byte		PAN   , c_v-14
	.byte		BEND  , c_v+4
	.byte	W02
	.byte		VOL   , 69*song161_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 51*song161_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		PAN   , c_v-14
	.byte		VOL   , 38*song161_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		VOL   , 17*song161_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		VOL   , 4*song161_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W08
	.byte	FINE

@******************************************************@
	.align	2

song161:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song161_pri	@ Priority
	.byte	song161_rev	@ Reverb.

	.word	song161_grp

	.word	song161_0

	.end
