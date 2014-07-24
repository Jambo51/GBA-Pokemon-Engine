@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song5_grp, group_5
	.equ	song5_pri, 5
	.equ	song5_rev, 178
	.equ	song5_mvl, 127
	.equ	song5_key, 0
	.equ	song5_tbs, 1
	.equ	song5_exg, 1
	.equ	song5_cmp, 1

	.section .rodata
	.global	song5
	.align	2

@**************** Track 00 ****************************@

song5_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 150
	.byte		VOICE , 87
	.byte		VOL   , 80*song5_mvl/mxv
	.byte		BEND  , c_v+13
	.byte		N03   , As5 , v068
	.byte	W03
	.byte		        Gn6 , v127
	.byte	W03
	.byte		        Gn6 , v068
	.byte	W03
	.byte		        Gn6 , v127
	.byte	W03
	.byte		VOICE , 88
	.byte		N06   , Gn6 , v068
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song5:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song5_pri	@ Priority
	.byte	song5_rev	@ Reverb.

	.word	song5_grp

	.word	song5_0

	.end
