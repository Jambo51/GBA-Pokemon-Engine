@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song173_grp, group_6
	.equ	song173_pri, 4
	.equ	song173_rev, 178
	.equ	song173_mvl, 127
	.equ	song173_key, 0
	.equ	song173_tbs, 1
	.equ	song173_exg, 1
	.equ	song173_cmp, 1

	.text
	.global	song173
	.align	2

@**************** Track 00 ****************************@

song173_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 24
	.byte		VOL   , 110*song173_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N01   , Cn6 , v127
	.byte	W01
	.byte		        Gn6 , v112
	.byte	W01
	.byte		VOICE , 38
	.byte		VOL   , 58*song173_mvl/mxv
	.byte		N08   , Gn4 
	.byte	W01
	.byte		VOL   , 68*song173_mvl/mxv
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 75*song173_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v-48
	.byte	W02
	.byte		VOL   , 83*song173_mvl/mxv
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 90*song173_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+10
	.byte	W01
	.byte		VOL   , 101*song173_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v+39
	.byte	W01
	.byte		VOL   , 110*song173_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+63
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song173:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song173_pri	@ Priority
	.byte	song173_rev	@ Reverb.

	.word	song173_grp

	.word	song173_0

	.end
