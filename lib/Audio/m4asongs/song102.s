@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song102_grp, group_5
	.equ	song102_pri, 5
	.equ	song102_rev, 178
	.equ	song102_mvl, 127
	.equ	song102_key, 0
	.equ	song102_tbs, 1
	.equ	song102_exg, 1
	.equ	song102_cmp, 1

	.section .rodata
	.global	song102
	.align	2

@**************** Track 00 ****************************@

song102_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 50
	.byte		VOICE , 4
	.byte		BENDR , 12
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 90*song102_mvl/mxv
	.byte		BEND  , c_v+4
	.byte		N01   , Cn5 , v064
	.byte	W01
	.byte		        Cn5 , v020
	.byte	W01
	.byte		        Cn5 , v064
	.byte	W01
	.byte		        Cn5 , v020
	.byte	W01
	.byte		        Cn6 , v064
	.byte	W02
	.byte		        Cn6 , v020
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song102:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song102_pri	@ Priority
	.byte	song102_rev	@ Reverb.

	.word	song102_grp

	.word	song102_0

	.end
