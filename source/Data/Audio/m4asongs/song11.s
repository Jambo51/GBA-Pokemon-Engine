@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song11_grp, group_6
	.equ	song11_pri, 4
	.equ	song11_rev, 178
	.equ	song11_mvl, 127
	.equ	song11_key, 0
	.equ	song11_tbs, 1
	.equ	song11_exg, 1
	.equ	song11_cmp, 1

	.section .rodata
	.global	song11
	.align	2

@**************** Track 00 ****************************@

song11_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 0
	.byte		VOL   , 90*song11_mvl/mxv
	.byte		N96   , Cn3 , v127
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

song11:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song11_pri	@ Priority
	.byte	song11_rev	@ Reverb.

	.word	song11_grp

	.word	song11_0

	.end
