@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song10_grp, group_5
	.equ	song10_pri, 4
	.equ	song10_rev, 178
	.equ	song10_mvl, 127
	.equ	song10_key, 0
	.equ	song10_tbs, 1
	.equ	song10_exg, 1
	.equ	song10_cmp, 1

	.section .rodata
	.global	song10
	.align	2

@**************** Track 00 ****************************@

song10_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 85
	.byte		VOL   , 100*song10_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Ds2 , v052
	.byte	W02
	.byte		VOICE , 86
	.byte		N06   , Gn3 , v092
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song10:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song10_pri	@ Priority
	.byte	song10_rev	@ Reverb.

	.word	song10_grp

	.word	song10_0

	.end
