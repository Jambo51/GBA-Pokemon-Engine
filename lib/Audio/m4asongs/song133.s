@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song133_grp, group_6
	.equ	song133_pri, 4
	.equ	song133_rev, 178
	.equ	song133_mvl, 127
	.equ	song133_key, 0
	.equ	song133_tbs, 1
	.equ	song133_exg, 1
	.equ	song133_cmp, 1

	.text
	.global	song133
	.align	2

@**************** Track 00 ****************************@

song133_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 63*song133_mvl/mxv
	.byte		BEND  , c_v-48
	.byte		N72   , Fn4 , v108
	.byte	W02
	.byte		VOL   , 68*song133_mvl/mxv
	.byte		BEND  , c_v-43
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		BEND  , c_v-38
	.byte	W02
	.byte		PAN   , c_v+15
	.byte		VOL   , 70*song133_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		VOL   , 75*song133_mvl/mxv
	.byte		BEND  , c_v-30
	.byte	W03
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		VOL   , 78*song133_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		PAN   , c_v-9
	.byte	W01
	.byte		VOL   , 85*song133_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 90*song133_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-8
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		PAN   , c_v+15
	.byte	W01
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+9
	.byte	W03
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+11
	.byte	W02
	.byte		        c_v+14
	.byte	W01
	.byte		PAN   , c_v-9
	.byte	W01
	.byte		BEND  , c_v+19
	.byte	W02
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		BEND  , c_v+23
	.byte	W02
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+27
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+29
	.byte	W02
	.byte		        c_v+33
	.byte	W01
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		BEND  , c_v+35
	.byte	W02
	.byte		VOL   , 74*song133_mvl/mxv
	.byte		PAN   , c_v+15
	.byte	W01
	.byte		BEND  , c_v+38
	.byte	W02
	.byte		VOL   , 58*song133_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+42
	.byte	W03
	.byte		VOL   , 47*song133_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+45
	.byte	W02
	.byte		        c_v+48
	.byte	W01
	.byte		VOL   , 34*song133_mvl/mxv
	.byte		PAN   , c_v-9
	.byte	W01
	.byte		BEND  , c_v+50
	.byte	W02
	.byte		VOL   , 22*song133_mvl/mxv
	.byte		PAN   , c_v-15
	.byte	W01
	.byte		BEND  , c_v+54
	.byte	W02
	.byte		VOL   , 6*song133_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+58
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song133:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song133_pri	@ Priority
	.byte	song133_rev	@ Reverb.

	.word	song133_grp

	.word	song133_0

	.end
