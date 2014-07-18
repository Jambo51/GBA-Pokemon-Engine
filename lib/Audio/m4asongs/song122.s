@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song122_grp, group_6
	.equ	song122_pri, 4
	.equ	song122_rev, 178
	.equ	song122_mvl, 127
	.equ	song122_key, 0
	.equ	song122_tbs, 1
	.equ	song122_exg, 1
	.equ	song122_cmp, 1

	.text
	.global	song122
	.align	2

@**************** Track 00 ****************************@

song122_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 125
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song122_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , Fn4 , v108
	.byte	W03
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+6
	.byte	W03
	.byte		PAN   , c_v+15
	.byte		BEND  , c_v+12
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+21
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W03
	.byte		        c_v-9
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W06
	.byte		VOL   , 90*song122_mvl/mxv
	.byte	W03
	.byte		        71*song122_mvl/mxv
	.byte	W03
	.byte		        58*song122_mvl/mxv
	.byte	W03
	.byte		        41*song122_mvl/mxv
	.byte	W03
	.byte		        27*song122_mvl/mxv
	.byte	W03
	.byte		        7*song122_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song122:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song122_pri	@ Priority
	.byte	song122_rev	@ Reverb.

	.word	song122_grp

	.word	song122_0

	.end
