@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song47_grp, group_6
	.equ	song47_pri, 4
	.equ	song47_rev, 178
	.equ	song47_mvl, 127
	.equ	song47_key, 0
	.equ	song47_tbs, 1
	.equ	song47_exg, 1
	.equ	song47_cmp, 1

	.text
	.global	song47
	.align	2

@**************** Track 00 ****************************@

song47_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 15
	.byte		VOL   , 90*song47_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		TIE   , Gn2 , v100
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		EOT
	.byte	GOTO
	 .word	song47_0 + 0x2
	.byte	W48
	.byte	FINE

@******************************************************@
	.align	2

song47:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song47_pri	@ Priority
	.byte	song47_rev	@ Reverb.

	.word	song47_grp

	.word	song47_0

	.end
