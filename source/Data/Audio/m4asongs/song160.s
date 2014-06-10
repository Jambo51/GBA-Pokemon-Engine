@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song160_grp, group_6
	.equ	song160_pri, 4
	.equ	song160_rev, 178
	.equ	song160_mvl, 127
	.equ	song160_key, 0
	.equ	song160_tbs, 1
	.equ	song160_exg, 1
	.equ	song160_cmp, 1

	.section .rodata
	.global	song160
	.align	2

@**************** Track 00 ****************************@

song160_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 15
	.byte		BENDR , 12
	.byte		PAN   , c_v+18
	.byte		VOL   , 48*song160_mvl/mxv
	.byte		BEND  , c_v-48
	.byte		N04   , Gn2 , v127
	.byte	W01
	.byte		VOL   , 81*song160_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 110*song160_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+0
	.byte	W04
	.byte		VOL   , 48*song160_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v-48
	.byte		N04   , An2 
	.byte	W01
	.byte		VOL   , 81*song160_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 110*song160_mvl/mxv
	.byte		BEND  , c_v+16
	.byte	W15
	.byte		VOL   , 110*song160_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

song160:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song160_pri	@ Priority
	.byte	song160_rev	@ Reverb.

	.word	song160_grp

	.word	song160_0

	.end
