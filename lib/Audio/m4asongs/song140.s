@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song140_grp, group_6
	.equ	song140_pri, 4
	.equ	song140_rev, 178
	.equ	song140_mvl, 127
	.equ	song140_key, 0
	.equ	song140_tbs, 1
	.equ	song140_exg, 1
	.equ	song140_cmp, 1

	.text
	.global	song140
	.align	2

@**************** Track 00 ****************************@

song140_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 6
	.byte		VOL   , 110*song140_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , En3 
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		PAN   , c_v+7
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N09   , An2 
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		VOL   , 86*song140_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W02
	.byte		VOL   , 69*song140_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W01
	.byte		VOL   , 53*song140_mvl/mxv
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		VOL   , 20*song140_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOICE , 29
	.byte		VOL   , 110*song140_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48
	.byte	W03
	.byte	W02
	.byte		PAN   , c_v-8
	.byte	W04
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v-6
	.byte	W04
	.byte		        c_v+6
	.byte	W03
	.byte		        c_v-3
	.byte	W08
	.byte	W03
	.byte		VOL   , 78*song140_mvl/mxv
	.byte	W04
	.byte		        64*song140_mvl/mxv
	.byte	W03
	.byte		        51*song140_mvl/mxv
	.byte	W04
	.byte		        38*song140_mvl/mxv
	.byte	W04
	.byte		        25*song140_mvl/mxv
	.byte	W03
	.byte		        12*song140_mvl/mxv
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song140_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 110*song140_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		N03   , Gs2 , v052
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03
	.byte	W12
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song140:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song140_pri	@ Priority
	.byte	song140_rev	@ Reverb.

	.word	song140_grp

	.word	song140_0
	.word	song140_1

	.end
