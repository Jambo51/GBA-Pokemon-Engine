@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song132_grp, group_6
	.equ	song132_pri, 4
	.equ	song132_rev, 178
	.equ	song132_mvl, 127
	.equ	song132_key, 0
	.equ	song132_tbs, 1
	.equ	song132_exg, 1
	.equ	song132_cmp, 1

	.text
	.global	song132
	.align	2

@**************** Track 00 ****************************@

song132_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 6
	.byte		VOL   , 120*song132_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Cn3 , v127
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N02   , Dn3 , v084
	.byte	W02
	.byte		BEND  , c_v-32
	.byte	W18
	.byte	FINE

@**************** Track 01 ****************************@

song132_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 120*song132_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		N03   , An2 , v052
	.byte	W04
	.byte		N02
	.byte	W02
	.byte		PAN   , c_v-8
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song132:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song132_pri	@ Priority
	.byte	song132_rev	@ Reverb.

	.word	song132_grp

	.word	song132_0
	.word	song132_1

	.end
