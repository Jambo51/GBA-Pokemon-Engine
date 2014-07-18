@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song29_grp, group_5
	.equ	song29_pri, 4
	.equ	song29_rev, 178
	.equ	song29_mvl, 127
	.equ	song29_key, 0
	.equ	song29_tbs, 1
	.equ	song29_exg, 1
	.equ	song29_cmp, 1

	.text
	.global	song29
	.align	2

@**************** Track 00 ****************************@

song29_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 122
	.byte		VOL   , 100*song29_mvl/mxv
	.byte		N01   , Ds3 , v127
	.byte	W02
	.byte		VOICE , 126
	.byte		N01   , Gs4 
	.byte	W01
	.byte	W03
	.byte	W01
	.byte		        Gs4 , v088
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song29:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song29_pri	@ Priority
	.byte	song29_rev	@ Reverb.

	.word	song29_grp

	.word	song29_0

	.end
