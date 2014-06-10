@ Songgroup: 3

	.include "MPlayDef.s"

	.equ	song77_grp, group_6
	.equ	song77_pri, 2
	.equ	song77_rev, 178
	.equ	song77_mvl, 127
	.equ	song77_key, 0
	.equ	song77_tbs, 1
	.equ	song77_exg, 1
	.equ	song77_cmp, 1

	.section .rodata
	.global	song77
	.align	2

@**************** Track 00 ****************************@

song77_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song77_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Cn3 , v060
	.byte	W03
	.byte		VOL   , 96*song77_mvl/mxv
	.byte	W03
	.byte		        93*song77_mvl/mxv
	.byte	W03
	.byte		        90*song77_mvl/mxv
	.byte	W03
	.byte		        85*song77_mvl/mxv
	.byte	W03
	.byte		        81*song77_mvl/mxv
	.byte	W03
	.byte		        73*song77_mvl/mxv
	.byte	W03
	.byte		        62*song77_mvl/mxv
	.byte	W03
	.byte		        55*song77_mvl/mxv
	.byte		N24
	.byte	W03
	.byte		VOL   , 48*song77_mvl/mxv
	.byte	W03
	.byte		        42*song77_mvl/mxv
	.byte	W03
	.byte		        33*song77_mvl/mxv
	.byte	W03
	.byte		        25*song77_mvl/mxv
	.byte	W03
	.byte		        18*song77_mvl/mxv
	.byte	W03
	.byte		        12*song77_mvl/mxv
	.byte	W03
	.byte		        7*song77_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song77:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song77_pri	@ Priority
	.byte	song77_rev	@ Reverb.

	.word	song77_grp

	.word	song77_0

	.end
