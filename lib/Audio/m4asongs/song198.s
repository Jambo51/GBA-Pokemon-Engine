@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song198_grp, group_6
	.equ	song198_pri, 4
	.equ	song198_rev, 178
	.equ	song198_mvl, 127
	.equ	song198_key, 0
	.equ	song198_tbs, 1
	.equ	song198_exg, 1
	.equ	song198_cmp, 1

	.section .rodata
	.global	song198
	.align	2

@**************** Track 00 ****************************@

song198_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 90
	.byte		VOICE , 38
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song198_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Gn4 , v127
	.byte	W01
	.byte		VOL   , 74*song198_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOICE , 31
	.byte		VOL   , 40*song198_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N03   , Cs5 
	.byte	W01
	.byte		VOL   , 64*song198_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 86*song198_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-16
	.byte	W02
	.byte		VOL   , 110*song198_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , As5 
	.byte	W01
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 0*song198_mvl/mxv
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song198:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song198_pri	@ Priority
	.byte	song198_rev	@ Reverb.

	.word	song198_grp

	.word	song198_0

	.end
