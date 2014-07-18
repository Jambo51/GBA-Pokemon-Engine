@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song178_grp, group_6
	.equ	song178_pri, 4
	.equ	song178_rev, 178
	.equ	song178_mvl, 127
	.equ	song178_key, 0
	.equ	song178_tbs, 1
	.equ	song178_exg, 1
	.equ	song178_cmp, 1

	.text
	.global	song178
	.align	2

@**************** Track 00 ****************************@

song178_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 6
	.byte		BENDR , 12
	.byte		VOL   , 115*song178_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N19   , An2 , v127
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-18
	.byte	W01
	.byte		VOL   , 108*song178_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		VOL   , 94*song178_mvl/mxv
	.byte	W03
	.byte		        78*song178_mvl/mxv
	.byte	W01
	.byte		        62*song178_mvl/mxv
	.byte	W01
	.byte		        40*song178_mvl/mxv
	.byte	W01
	.byte		        27*song178_mvl/mxv
	.byte	W02
	.byte		        12*song178_mvl/mxv
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song178:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song178_pri	@ Priority
	.byte	song178_rev	@ Reverb.

	.word	song178_grp

	.word	song178_0

	.end
