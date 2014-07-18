@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song243_grp, group_7
	.equ	song243_pri, 5
	.equ	song243_rev, 178
	.equ	song243_mvl, 127
	.equ	song243_key, 0
	.equ	song243_tbs, 1
	.equ	song243_exg, 1
	.equ	song243_cmp, 1

	.text
	.global	song243
	.align	2

@**************** Track 00 ****************************@

song243_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 91
	.byte		VOICE , 125
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 16*song243_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N24   , Gn5 , v080
	.byte	W03
	.byte		VOL   , 32*song243_mvl/mxv
	.byte	W03
	.byte		        48*song243_mvl/mxv
	.byte	W03
	.byte		        64*song243_mvl/mxv
	.byte	W03
	.byte		        80*song243_mvl/mxv
	.byte	W03
	.byte		        96*song243_mvl/mxv
	.byte	W03
	.byte		        112*song243_mvl/mxv
	.byte	W03
	.byte		        127*song243_mvl/mxv
	.byte	W03
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song243:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song243_pri	@ Priority
	.byte	song243_rev	@ Reverb.

	.word	song243_grp

	.word	song243_0

	.end
