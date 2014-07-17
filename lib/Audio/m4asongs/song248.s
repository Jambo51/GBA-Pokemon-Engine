@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song248_grp, group_7
	.equ	song248_pri, 5
	.equ	song248_rev, 178
	.equ	song248_mvl, 127
	.equ	song248_key, 0
	.equ	song248_tbs, 1
	.equ	song248_exg, 1
	.equ	song248_cmp, 1

	.section .rodata
	.global	song248
	.align	2

@**************** Track 00 ****************************@

song248_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 62
	.byte		VOICE , 8
	.byte		VOL   , 80*song248_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N30   , Cn3 , v120
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song248:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song248_pri	@ Priority
	.byte	song248_rev	@ Reverb.

	.word	song248_grp

	.word	song248_0

	.end
