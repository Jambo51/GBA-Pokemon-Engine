@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song30_grp, group_5
	.equ	song30_pri, 4
	.equ	song30_rev, 178
	.equ	song30_mvl, 127
	.equ	song30_key, 0
	.equ	song30_tbs, 1
	.equ	song30_exg, 1
	.equ	song30_cmp, 1

	.text
	.global	song30
	.align	2

@**************** Track 00 ****************************@

song30_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 126
	.byte		VOL   , 110*song30_mvl/mxv
	.byte		N01   , Gs3 , v127
	.byte	W01
	.byte		        Cn4 , v068
	.byte	W02
	.byte	W02
	.byte		N03   , Gs4 , v127
	.byte	W01
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song30:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song30_pri	@ Priority
	.byte	song30_rev	@ Reverb.

	.word	song30_grp

	.word	song30_0

	.end
