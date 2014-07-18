@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song225_grp, group_6
	.equ	song225_pri, 4
	.equ	song225_rev, 178
	.equ	song225_mvl, 127
	.equ	song225_key, 0
	.equ	song225_tbs, 1
	.equ	song225_exg, 1
	.equ	song225_cmp, 1

	.text
	.global	song225
	.align	2

@**************** Track 00 ****************************@

song225_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 65
	.byte		BENDR , 12
	.byte		VOL   , 110*song225_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 , v112
	.byte	W01
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v-36
	.byte	W01
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+28
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 , v064
	.byte	W01
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+15
	.byte	W02
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+28
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song225_1:
	.byte	KEYSH , 0
	.byte		VOICE , 57
	.byte		VOL   , 110*song225_mvl/mxv
	.byte		N03   , En3 , v052
	.byte	W03
	.byte	W01
	.byte		N03
	.byte	W02
	.byte	W03
	.byte		        En3 , v032
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song225:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song225_pri	@ Priority
	.byte	song225_rev	@ Reverb.

	.word	song225_grp

	.word	song225_0
	.word	song225_1

	.end
