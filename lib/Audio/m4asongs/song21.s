@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song21_grp, group_5
	.equ	song21_pri, 4
	.equ	song21_rev, 178
	.equ	song21_mvl, 127
	.equ	song21_key, 0
	.equ	song21_tbs, 1
	.equ	song21_exg, 1
	.equ	song21_cmp, 1

	.section .rodata
	.global	song21
	.align	2

@**************** Track 00 ****************************@

song21_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 50
	.byte		VOICE , 5
	.byte		BENDR , 12
	.byte		VOL   , 60*song21_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn5 , v127
	.byte	W03
	.byte		        Gn6 , v112
	.byte	W03
	.byte		        Gn6 , v024
	.byte	W03
	.byte		        Gn6 , v068
	.byte	W03
	.byte		        Gn6 , v024
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song21:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song21_pri	@ Priority
	.byte	song21_rev	@ Reverb.

	.word	song21_grp

	.word	song21_0

	.end
