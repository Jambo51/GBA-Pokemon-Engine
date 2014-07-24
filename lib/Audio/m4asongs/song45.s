@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song45_grp, group_5
	.equ	song45_pri, 4
	.equ	song45_rev, 178
	.equ	song45_mvl, 127
	.equ	song45_key, 0
	.equ	song45_tbs, 1
	.equ	song45_exg, 1
	.equ	song45_cmp, 1

	.section .rodata
	.global	song45
	.align	2

@**************** Track 00 ****************************@

song45_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 120
	.byte		VOL   , 127*song45_mvl/mxv
	.byte		N06   , Bn3 , v028
	.byte	W03
	.byte	W03
	.byte		N21   , Gs4 
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song45:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song45_pri	@ Priority
	.byte	song45_rev	@ Reverb.

	.word	song45_grp

	.word	song45_0

	.end
