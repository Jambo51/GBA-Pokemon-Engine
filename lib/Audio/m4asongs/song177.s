@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song177_grp, group_6
	.equ	song177_pri, 4
	.equ	song177_rev, 178
	.equ	song177_mvl, 127
	.equ	song177_key, 0
	.equ	song177_tbs, 1
	.equ	song177_exg, 1
	.equ	song177_cmp, 1

	.section .rodata
	.global	song177
	.align	2

@**************** Track 00 ****************************@

song177_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 43
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		VOL   , 61*song177_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N07   , Gs4 , v127
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		VOL   , 75*song177_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		PAN   , c_v-7
	.byte		VOL   , 93*song177_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		VOL   , 110*song177_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		PAN   , c_v-12
	.byte		BEND  , c_v+7
	.byte	W02
	.byte	W02
	.byte		VOL   , 0*song177_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-4
	.byte		N32
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		PAN   , c_v-7
	.byte		VOL   , 36*song177_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		PAN   , c_v+9
	.byte		VOL   , 67*song177_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		PAN   , c_v-13
	.byte		VOL   , 84*song177_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 92*song177_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-7
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		VOL   , 99*song177_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 105*song177_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 110*song177_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		VOL   , 46*song177_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		VOL   , 67*song177_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 84*song177_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v-6
	.byte	W02
	.byte		VOL   , 100*song177_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 110*song177_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 101*song177_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		VOL   , 85*song177_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		VOL   , 75*song177_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 48*song177_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 24*song177_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 6*song177_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song177:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song177_pri	@ Priority
	.byte	song177_rev	@ Reverb.

	.word	song177_grp

	.word	song177_0

	.end
