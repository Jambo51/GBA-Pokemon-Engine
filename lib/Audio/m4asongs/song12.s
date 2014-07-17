@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song12_grp, group_5
	.equ	song12_pri, 5
	.equ	song12_rev, 178
	.equ	song12_mvl, 127
	.equ	song12_key, 0
	.equ	song12_tbs, 1
	.equ	song12_exg, 1
	.equ	song12_cmp, 1

	.section .rodata
	.global	song12
	.align	2

@**************** Track 00 ****************************@

song12_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 45
	.byte		VOICE , 127
	.byte		VOL   , 110*song12_mvl/mxv
	.byte		N03   , Gn2 , v100
	.byte	W03
	.byte		N06   , As2 
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song12_1:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 110*song12_mvl/mxv
	.byte		N09   , As1 , v127
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song12:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song12_pri	@ Priority
	.byte	song12_rev	@ Reverb.

	.word	song12_grp

	.word	song12_0
	.word	song12_1

	.end
