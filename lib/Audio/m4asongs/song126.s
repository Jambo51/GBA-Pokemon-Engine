@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song126_grp, group_6
	.equ	song126_pri, 4
	.equ	song126_rev, 178
	.equ	song126_mvl, 127
	.equ	song126_key, 0
	.equ	song126_tbs, 1
	.equ	song126_exg, 1
	.equ	song126_cmp, 1

	.text
	.global	song126
	.align	2

@**************** Track 00 ****************************@

song126_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song126_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Cn3 , v108
	.byte	W02
	.byte		PAN   , c_v-19
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 97*song126_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		VOL   , 84*song126_mvl/mxv
	.byte	W03
	.byte		        76*song126_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		VOL   , 55*song126_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W02
	.byte		VOL   , 39*song126_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 25*song126_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		VOL   , 13*song126_mvl/mxv
	.byte	W03
	.byte		        7*song126_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song126:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song126_pri	@ Priority
	.byte	song126_rev	@ Reverb.

	.word	song126_grp

	.word	song126_0

	.end
