@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song144_grp, group_6
	.equ	song144_pri, 4
	.equ	song144_rev, 178
	.equ	song144_mvl, 127
	.equ	song144_key, 0
	.equ	song144_tbs, 1
	.equ	song144_exg, 1
	.equ	song144_cmp, 1

	.section .rodata
	.global	song144
	.align	2

@**************** Track 00 ****************************@

song144_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 29
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 61*song144_mvl/mxv
	.byte		BEND  , c_v+8
	.byte		N10   , Gn3 , v127
	.byte	W01
	.byte		VOL   , 84*song144_mvl/mxv
	.byte	W01
	.byte		        97*song144_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 110*song144_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		        c_v-12
	.byte	W01
	.byte		VOL   , 89*song144_mvl/mxv
	.byte	W01
	.byte		        64*song144_mvl/mxv
	.byte		BEND  , c_v-42
	.byte	W01
	.byte		VOL   , 34*song144_mvl/mxv
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

song144:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song144_pri	@ Priority
	.byte	song144_rev	@ Reverb.

	.word	song144_grp

	.word	song144_0

	.end
