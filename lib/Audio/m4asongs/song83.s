@ Songgroup: 3

	.include "MPlayDef.s"

	.equ	song83_grp, group_5
	.equ	song83_pri, 3
	.equ	song83_rev, 178
	.equ	song83_mvl, 127
	.equ	song83_key, 0
	.equ	song83_tbs, 1
	.equ	song83_exg, 1
	.equ	song83_cmp, 1

	.section .rodata
	.global	song83
	.align	2

@**************** Track 00 ****************************@

song83_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 15
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 100*song83_mvl/mxv
	.byte		BEND  , c_v+17
	.byte		N12   , Dn4 , v080
	.byte	W12
	.byte		BEND  , c_v+31
	.byte		N12   , An3 
	.byte	W12
	.byte	W12
	.byte	GOTO
	 .word	song83_0 + 0x2
	.byte	FINE

@******************************************************@
	.align	2

song83:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song83_pri	@ Priority
	.byte	song83_rev	@ Reverb.

	.word	song83_grp

	.word	song83_0

	.end
