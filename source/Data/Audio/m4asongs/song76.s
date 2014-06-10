@ Songgroup: 3

	.include "MPlayDef.s"

	.equ	song76_grp, group_6
	.equ	song76_pri, 2
	.equ	song76_rev, 178
	.equ	song76_mvl, 127
	.equ	song76_key, 0
	.equ	song76_tbs, 1
	.equ	song76_exg, 1
	.equ	song76_cmp, 1

	.section .rodata
	.global	song76
	.align	2

@**************** Track 00 ****************************@

song76_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 18*song76_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Cn3 , v060
	.byte	W03
	.byte		VOL   , 33*song76_mvl/mxv
	.byte	W03
	.byte		        48*song76_mvl/mxv
	.byte	W03
	.byte		        55*song76_mvl/mxv
	.byte	W03
	.byte		        65*song76_mvl/mxv
	.byte	W03
	.byte		        74*song76_mvl/mxv
	.byte	W03
	.byte		        85*song76_mvl/mxv
	.byte	W03
	.byte		        100*song76_mvl/mxv
	.byte	W03
	.byte		N36   , Cn3 , v060
	.byte	W24
	.byte	W12
	.byte	GOTO
	 .word	song76_0 + 0x21
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song76:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song76_pri	@ Priority
	.byte	song76_rev	@ Reverb.

	.word	song76_grp

	.word	song76_0

	.end
