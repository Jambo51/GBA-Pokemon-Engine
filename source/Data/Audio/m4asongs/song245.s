@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song245_grp, group_7
	.equ	song245_pri, 5
	.equ	song245_rev, 178
	.equ	song245_mvl, 127
	.equ	song245_key, 0
	.equ	song245_tbs, 1
	.equ	song245_exg, 1
	.equ	song245_cmp, 1

	.section .rodata
	.global	song245
	.align	2

@**************** Track 00 ****************************@

song245_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 155
	.byte		VOICE , 10
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 127*song245_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N01   , Cs4 , v072
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song245_1:
	.byte		VOL   , 127*song245_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 124
	.byte		N01   , Cs5 , v072
	.byte	W01
	.byte		        Ds5 , v104
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song245:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song245_pri	@ Priority
	.byte	song245_rev	@ Reverb.

	.word	song245_grp

	.word	song245_0
	.word	song245_1

	.end
