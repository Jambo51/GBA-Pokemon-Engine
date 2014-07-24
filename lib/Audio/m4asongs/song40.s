@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song40_grp, group_5
	.equ	song40_pri, 4
	.equ	song40_rev, 178
	.equ	song40_mvl, 127
	.equ	song40_key, 0
	.equ	song40_tbs, 1
	.equ	song40_exg, 1
	.equ	song40_cmp, 1

	.section .rodata
	.global	song40
	.align	2

@**************** Track 00 ****************************@

song40_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 93
	.byte		XCMD  , xIECV , 9
	.byte		        xIECL , 8
	.byte		VOL   , 90*song40_mvl/mxv
	.byte		N06   , En5 , v064
	.byte	W03
	.byte	W03
	.byte		N03   , En5 , v016
	.byte	W03
	.byte		N06   , En5 , v088
	.byte	W03
	.byte	W03
	.byte		N03   , En5 , v016
	.byte	W03
	.byte		N06   , En5 , v112
	.byte	W03
	.byte	W03
	.byte		N03   , En5 , v016
	.byte	W03
	.byte		N06   , En5 , v127
	.byte	W03
	.byte	W03
	.byte		N03   , En5 , v016
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song40:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song40_pri	@ Priority
	.byte	song40_rev	@ Reverb.

	.word	song40_grp

	.word	song40_0

	.end
