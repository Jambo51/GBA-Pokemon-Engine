@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song26_grp, group_5
	.equ	song26_pri, 4
	.equ	song26_rev, 178
	.equ	song26_mvl, 127
	.equ	song26_key, 0
	.equ	song26_tbs, 1
	.equ	song26_exg, 1
	.equ	song26_cmp, 1

	.text
	.global	song26
	.align	2

@**************** Track 00 ****************************@

song26_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 92
	.byte		BENDR , 12
	.byte		VOL   , 120*song26_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn2 , v127
	.byte	W03
	.byte		        Cn2 , v020
	.byte	W03
	.byte		N18   , Cn2 , v127
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		N09   , Cn2 , v020
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song26:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song26_pri	@ Priority
	.byte	song26_rev	@ Reverb.

	.word	song26_grp

	.word	song26_0

	.end
