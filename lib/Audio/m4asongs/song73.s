@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song73_grp, group_6
	.equ	song73_pri, 4
	.equ	song73_rev, 178
	.equ	song73_mvl, 127
	.equ	song73_key, 0
	.equ	song73_tbs, 1
	.equ	song73_exg, 1
	.equ	song73_cmp, 1

	.text
	.global	song73
	.align	2

@**************** Track 00 ****************************@

song73_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 38
	.byte		BENDR , 2
	.byte		VOL   , 51*song73_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		TIE   , En5 , v080
	.byte	W01
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		VOL   , 56*song73_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 62*song73_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 69*song73_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 75*song73_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 85*song73_mvl/mxv
	.byte	W02
	.byte		        92*song73_mvl/mxv
	.byte	W02
	.byte		        100*song73_mvl/mxv
	.byte	W08
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W03
	.byte		        96*song73_mvl/mxv
	.byte	W03
	.byte		        88*song73_mvl/mxv
	.byte	W03
	.byte		        81*song73_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		VOL   , 74*song73_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W02
	.byte		VOL   , 62*song73_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W02
	.byte		VOL   , 49*song73_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W03
	.byte		VOL   , 39*song73_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W02
	.byte		VOL   , 25*song73_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song73:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song73_pri	@ Priority
	.byte	song73_rev	@ Reverb.

	.word	song73_grp

	.word	song73_0

	.end
