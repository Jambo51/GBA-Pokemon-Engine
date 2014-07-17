@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song108_grp, group_6
	.equ	song108_pri, 5
	.equ	song108_rev, 178
	.equ	song108_mvl, 127
	.equ	song108_key, 0
	.equ	song108_tbs, 1
	.equ	song108_exg, 1
	.equ	song108_cmp, 1

	.section .rodata
	.global	song108
	.align	2

@**************** Track 00 ****************************@

song108_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 16
	.byte		VOL   , 110*song108_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N03   , Gs4 , v072
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 58*song108_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 28*song108_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song108:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song108_pri	@ Priority
	.byte	song108_rev	@ Reverb.

	.word	song108_grp

	.word	song108_0

	.end
