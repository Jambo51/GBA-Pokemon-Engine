@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song8_grp, group_5
	.equ	song8_pri, 5
	.equ	song8_rev, 178
	.equ	song8_mvl, 127
	.equ	song8_key, 0
	.equ	song8_tbs, 1
	.equ	song8_exg, 1
	.equ	song8_cmp, 1

	.text
	.global	song8
	.align	2

@**************** Track 00 ****************************@

song8_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 127
	.byte		VOL   , 80*song8_mvl/mxv
	.byte		N03   , Dn3 , v127
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song8:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song8_pri	@ Priority
	.byte	song8_rev	@ Reverb.

	.word	song8_grp

	.word	song8_0

	.end
