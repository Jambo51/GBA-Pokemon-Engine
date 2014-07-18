@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song92_grp, group_6
	.equ	song92_pri, 5
	.equ	song92_rev, 178
	.equ	song92_mvl, 127
	.equ	song92_key, 0
	.equ	song92_tbs, 1
	.equ	song92_exg, 1
	.equ	song92_cmp, 1

	.text
	.global	song92
	.align	2

@**************** Track 00 ****************************@

song92_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		VOL   , 110*song92_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Gn3 , v112
	.byte	W04
	.byte		        Gn4 , v064
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song92:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song92_pri	@ Priority
	.byte	song92_rev	@ Reverb.

	.word	song92_grp

	.word	song92_0

	.end
