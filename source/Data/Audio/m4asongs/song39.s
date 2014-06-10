@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song39_grp, group_5
	.equ	song39_pri, 4
	.equ	song39_rev, 178
	.equ	song39_mvl, 127
	.equ	song39_key, 0
	.equ	song39_tbs, 1
	.equ	song39_exg, 1
	.equ	song39_cmp, 1

	.section .rodata
	.global	song39
	.align	2

@**************** Track 00 ****************************@

song39_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 90
	.byte		VOL   , 90*song39_mvl/mxv
	.byte		N06   , En4 , v127
	.byte	W03
	.byte	W03
	.byte		N03   , En4 , v016
	.byte	W03
	.byte		N06   , En4 , v112
	.byte	W03
	.byte	W03
	.byte		N03   , En4 , v016
	.byte	W03
	.byte		N06   , En4 , v088
	.byte	W03
	.byte	W03
	.byte		N03   , En4 , v016
	.byte	W03
	.byte		N06   , En4 , v064
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song39:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song39_pri	@ Priority
	.byte	song39_rev	@ Reverb.

	.word	song39_grp

	.word	song39_0

	.end
