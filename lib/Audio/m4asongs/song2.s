@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song2_grp, group_5
	.equ	song2_pri, 5
	.equ	song2_rev, 178
	.equ	song2_mvl, 127
	.equ	song2_key, 0
	.equ	song2_tbs, 1
	.equ	song2_exg, 1
	.equ	song2_cmp, 1

	.section .rodata
	.global	song2
	.align	2

@**************** Track 00 ****************************@

song2_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte		VOICE , 4
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 100*song2_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N08   , Cn4 , v112
	.byte	W08
	.byte		N04   , Cn4 , v028
	.byte	W04
	.byte		N08   , Cn4 , v112
	.byte	W08
	.byte		N04   , Cn4 , v024
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song2:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song2_pri	@ Priority
	.byte	song2_rev	@ Reverb.

	.word	song2_grp

	.word	song2_0

	.end
