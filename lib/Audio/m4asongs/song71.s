@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song71_grp, group_6
	.equ	song71_pri, 4
	.equ	song71_rev, 178
	.equ	song71_mvl, 127
	.equ	song71_key, 0
	.equ	song71_tbs, 1
	.equ	song71_exg, 1
	.equ	song71_cmp, 1

	.text
	.global	song71
	.align	2

@**************** Track 00 ****************************@

song71_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song71_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn4 , v112
	.byte	W01
	.byte		VOICE , 26
	.byte	W01
	.byte		N01   , Fn4 , v127
	.byte	W01
	.byte	W01
	.byte		VOICE , 36
	.byte	W02
	.byte		N01   , Cn3 , v056
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song71:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song71_pri	@ Priority
	.byte	song71_rev	@ Reverb.

	.word	song71_grp

	.word	song71_0

	.end
