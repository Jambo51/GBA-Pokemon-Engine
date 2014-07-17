@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song23_grp, group_5
	.equ	song23_pri, 4
	.equ	song23_rev, 178
	.equ	song23_mvl, 127
	.equ	song23_key, 0
	.equ	song23_tbs, 1
	.equ	song23_exg, 1
	.equ	song23_cmp, 1

	.section .rodata
	.global	song23
	.align	2

@**************** Track 00 ****************************@

song23_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 64
	.byte		VOICE , 7
	.byte		BENDR , 12
	.byte		VOL   , 70*song23_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N04   , Fn2 , v127
	.byte	W04
	.byte		N01   , Dn3 
	.byte	W02
	.byte		VOICE , 8
	.byte	FINE

@******************************************************@
	.align	2

song23:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song23_pri	@ Priority
	.byte	song23_rev	@ Reverb.

	.word	song23_grp

	.word	song23_0

	.end
