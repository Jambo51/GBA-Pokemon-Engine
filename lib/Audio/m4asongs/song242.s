@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song242_grp, group_7
	.equ	song242_pri, 5
	.equ	song242_rev, 178
	.equ	song242_mvl, 127
	.equ	song242_key, 0
	.equ	song242_tbs, 1
	.equ	song242_exg, 1
	.equ	song242_cmp, 1

	.section .rodata
	.global	song242
	.align	2

@**************** Track 00 ****************************@

song242_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 91
	.byte		VOICE , 125
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*song242_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N01   , Cn4 , v127
	.byte	W03
	.byte		VOICE , 124
	.byte		N01   , Cn5 , v064
	.byte	W21
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song242:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song242_pri	@ Priority
	.byte	song242_rev	@ Reverb.

	.word	song242_grp

	.word	song242_0

	.end
