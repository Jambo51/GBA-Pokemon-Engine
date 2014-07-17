@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song206_grp, group_6
	.equ	song206_pri, 4
	.equ	song206_rev, 178
	.equ	song206_mvl, 127
	.equ	song206_key, 0
	.equ	song206_tbs, 1
	.equ	song206_exg, 1
	.equ	song206_cmp, 1

	.section .rodata
	.global	song206
	.align	2

@**************** Track 00 ****************************@

song206_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 34*song206_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N66   , Cn5 , v127
	.byte	W01
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		VOL   , 43*song206_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 58*song206_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 70*song206_mvl/mxv
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		VOL   , 76*song206_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		VOL   , 90*song206_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+0
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		PAN   , c_v-4
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte		BEND  , c_v-19
	.byte	W01
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-2
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		        c_v+2
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		VOL   , 84*song206_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 78*song206_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 70*song206_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W02
	.byte		        c_v-4
	.byte	W01
	.byte		VOL   , 55*song206_mvl/mxv
	.byte		PAN   , c_v-2
	.byte		BEND  , c_v-29
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 46*song206_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte		BEND  , c_v-31
	.byte	W02
	.byte		VOL   , 36*song206_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 24*song206_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-36
	.byte	W01
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		VOL   , 13*song206_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-42
	.byte	W02
	.byte		VOL   , 5*song206_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song206:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song206_pri	@ Priority
	.byte	song206_rev	@ Reverb.

	.word	song206_grp

	.word	song206_0

	.end
