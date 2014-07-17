@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song22_grp, group_5
	.equ	song22_pri, 4
	.equ	song22_rev, 178
	.equ	song22_mvl, 127
	.equ	song22_key, 0
	.equ	song22_tbs, 1
	.equ	song22_exg, 1
	.equ	song22_cmp, 1

	.section .rodata
	.global	song22
	.align	2

@**************** Track 00 ****************************@

song22_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 50
	.byte		VOICE , 5
	.byte		BENDR , 12
	.byte		VOL   , 110*song22_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn3 , v127
	.byte	W03
	.byte		        Cn2 , v112
	.byte	W03
	.byte	W03
	.byte		        Cn2 , v024
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song22:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song22_pri	@ Priority
	.byte	song22_rev	@ Reverb.

	.word	song22_grp

	.word	song22_0

	.end
