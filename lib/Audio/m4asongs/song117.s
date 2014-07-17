@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song117_grp, group_6
	.equ	song117_pri, 4
	.equ	song117_rev, 178
	.equ	song117_mvl, 127
	.equ	song117_key, 0
	.equ	song117_tbs, 1
	.equ	song117_exg, 1
	.equ	song117_cmp, 1

	.section .rodata
	.global	song117
	.align	2

@**************** Track 00 ****************************@

song117_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 23
	.byte		VOL   , 95*song117_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N09   , Cn3 , v127
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+37
	.byte	W01
	.byte		        c_v+48
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-1
	.byte		N03   , En3 
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

song117:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song117_pri	@ Priority
	.byte	song117_rev	@ Reverb.

	.word	song117_grp

	.word	song117_0

	.end
