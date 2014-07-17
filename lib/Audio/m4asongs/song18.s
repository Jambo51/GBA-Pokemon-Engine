@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song18_grp, group_6
	.equ	song18_pri, 4
	.equ	song18_rev, 178
	.equ	song18_mvl, 127
	.equ	song18_key, 0
	.equ	song18_tbs, 1
	.equ	song18_exg, 1
	.equ	song18_cmp, 1

	.section .rodata
	.global	song18
	.align	2

@**************** Track 00 ****************************@

song18_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 1
	.byte		VOL   , 95*song18_mvl/mxv
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		VOL   , 0*song18_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

song18:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song18_pri	@ Priority
	.byte	song18_rev	@ Reverb.

	.word	song18_grp

	.word	song18_0

	.end
