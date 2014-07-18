@ Songgroup: 3

	.include "MPlayDef.s"

	.equ	song79_grp, group_6
	.equ	song79_pri, 2
	.equ	song79_rev, 178
	.equ	song79_mvl, 127
	.equ	song79_key, 0
	.equ	song79_tbs, 1
	.equ	song79_exg, 1
	.equ	song79_cmp, 1

	.text
	.global	song79
	.align	2

@**************** Track 00 ****************************@

song79_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 80*song79_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Bn3 , v052
	.byte	W03
	.byte		VOL   , 76*song79_mvl/mxv
	.byte	W03
	.byte		        74*song79_mvl/mxv
	.byte	W03
	.byte		        72*song79_mvl/mxv
	.byte	W03
	.byte		        68*song79_mvl/mxv
	.byte	W03
	.byte		        64*song79_mvl/mxv
	.byte	W03
	.byte		        58*song79_mvl/mxv
	.byte	W03
	.byte		        50*song79_mvl/mxv
	.byte	W03
	.byte		        44*song79_mvl/mxv
	.byte		N24
	.byte	W03
	.byte		VOL   , 38*song79_mvl/mxv
	.byte	W03
	.byte		        34*song79_mvl/mxv
	.byte	W03
	.byte		        27*song79_mvl/mxv
	.byte	W03
	.byte		        20*song79_mvl/mxv
	.byte	W03
	.byte		        15*song79_mvl/mxv
	.byte	W03
	.byte		        10*song79_mvl/mxv
	.byte	W03
	.byte		        6*song79_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song79:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song79_pri	@ Priority
	.byte	song79_rev	@ Reverb.

	.word	song79_grp

	.word	song79_0

	.end
