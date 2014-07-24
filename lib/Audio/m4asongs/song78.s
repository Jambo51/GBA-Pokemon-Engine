@ Songgroup: 3

	.include "MPlayDef.s"

	.equ	song78_grp, group_6
	.equ	song78_pri, 2
	.equ	song78_rev, 178
	.equ	song78_mvl, 127
	.equ	song78_key, 0
	.equ	song78_tbs, 1
	.equ	song78_exg, 1
	.equ	song78_cmp, 1

	.section .rodata
	.global	song78
	.align	2

@**************** Track 00 ****************************@

song78_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 15*song78_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Bn3 , v052
	.byte	W03
	.byte		VOL   , 27*song78_mvl/mxv
	.byte	W03
	.byte		        39*song78_mvl/mxv
	.byte	W03
	.byte		        44*song78_mvl/mxv
	.byte	W03
	.byte		        52*song78_mvl/mxv
	.byte	W03
	.byte		        59*song78_mvl/mxv
	.byte	W03
	.byte		        68*song78_mvl/mxv
	.byte	W03
	.byte		        80*song78_mvl/mxv
	.byte	W03
	.byte		N60   , Bn3 , v052
	.byte	W24
	.byte	W24
	.byte	W12
	.byte	GOTO
	 .word	song78_0 + 0x21
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song78:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song78_pri	@ Priority
	.byte	song78_rev	@ Reverb.

	.word	song78_grp

	.word	song78_0

	.end
