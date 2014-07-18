@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song6_grp, group_5
	.equ	song6_pri, 5
	.equ	song6_rev, 178
	.equ	song6_mvl, 127
	.equ	song6_key, 0
	.equ	song6_tbs, 1
	.equ	song6_exg, 1
	.equ	song6_cmp, 1

	.text
	.global	song6
	.align	2

@**************** Track 00 ****************************@

song6_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 127
	.byte		VOL   , 110*song6_mvl/mxv
	.byte		N03   , Ds3 , v127
	.byte	W03
	.byte		N15   , Gn4 
	.byte	W21
	.byte	FINE

@******************************************************@
	.align	2

song6:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song6_pri	@ Priority
	.byte	song6_rev	@ Reverb.

	.word	song6_grp

	.word	song6_0

	.end
