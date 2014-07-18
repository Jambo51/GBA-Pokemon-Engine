@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song85_grp, group_6
	.equ	song85_pri, 2
	.equ	song85_rev, 178
	.equ	song85_mvl, 127
	.equ	song85_key, 0
	.equ	song85_tbs, 1
	.equ	song85_exg, 1
	.equ	song85_cmp, 1

	.text
	.global	song85
	.align	2

@**************** Track 00 ****************************@

song85_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 63
	.byte		VOL   , 110*song85_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Dn3 , v127
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song85:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song85_pri	@ Priority
	.byte	song85_rev	@ Reverb.

	.word	song85_grp

	.word	song85_0

	.end
