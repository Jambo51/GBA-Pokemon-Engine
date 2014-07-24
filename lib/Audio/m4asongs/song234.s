@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song234_grp, group_6
	.equ	song234_pri, 4
	.equ	song234_rev, 178
	.equ	song234_mvl, 127
	.equ	song234_key, 0
	.equ	song234_tbs, 1
	.equ	song234_exg, 1
	.equ	song234_cmp, 1

	.section .rodata
	.global	song234
	.align	2

@**************** Track 00 ****************************@

song234_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 60
	.byte		BENDR , 12
	.byte		VOL   , 25*song234_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N24   , Gs2 , v127
	.byte	W01
	.byte		PAN   , c_v+2
	.byte		VOL   , 51*song234_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 74*song234_mvl/mxv
	.byte	W01
	.byte		        89*song234_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		PAN   , c_v+2
	.byte		VOL   , 100*song234_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		PAN   , c_v-4
	.byte	W02
	.byte		        c_v-2
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 85*song234_mvl/mxv
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte		VOL   , 62*song234_mvl/mxv
	.byte	W01
	.byte		        33*song234_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		VOL   , 11*song234_mvl/mxv
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song234:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song234_pri	@ Priority
	.byte	song234_rev	@ Reverb.

	.word	song234_grp

	.word	song234_0

	.end
