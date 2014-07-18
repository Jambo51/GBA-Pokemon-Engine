@ Songgroup: 3

	.include "MPlayDef.s"

	.equ	song75_grp, group_6
	.equ	song75_pri, 2
	.equ	song75_rev, 178
	.equ	song75_mvl, 127
	.equ	song75_key, 0
	.equ	song75_tbs, 1
	.equ	song75_exg, 1
	.equ	song75_cmp, 1

	.text
	.global	song75
	.align	2

@**************** Track 00 ****************************@

song75_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 80*song75_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Gn3 , v060
	.byte	W03
	.byte		VOL   , 76*song75_mvl/mxv
	.byte	W03
	.byte		        74*song75_mvl/mxv
	.byte	W03
	.byte		        72*song75_mvl/mxv
	.byte	W03
	.byte		        68*song75_mvl/mxv
	.byte	W03
	.byte		        64*song75_mvl/mxv
	.byte	W03
	.byte		        58*song75_mvl/mxv
	.byte	W03
	.byte		        50*song75_mvl/mxv
	.byte	W03
	.byte		        44*song75_mvl/mxv
	.byte		N24
	.byte	W03
	.byte		VOL   , 38*song75_mvl/mxv
	.byte	W03
	.byte		        34*song75_mvl/mxv
	.byte	W03
	.byte		        27*song75_mvl/mxv
	.byte	W03
	.byte		        20*song75_mvl/mxv
	.byte	W03
	.byte		        15*song75_mvl/mxv
	.byte	W03
	.byte		        10*song75_mvl/mxv
	.byte	W03
	.byte		        6*song75_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song75:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song75_pri	@ Priority
	.byte	song75_rev	@ Reverb.

	.word	song75_grp

	.word	song75_0

	.end
