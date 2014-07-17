@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song119_grp, group_6
	.equ	song119_pri, 4
	.equ	song119_rev, 178
	.equ	song119_mvl, 127
	.equ	song119_key, 0
	.equ	song119_tbs, 1
	.equ	song119_exg, 1
	.equ	song119_cmp, 1

	.section .rodata
	.global	song119
	.align	2

@**************** Track 00 ****************************@

song119_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 23
	.byte		VOL   , 95*song119_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N12   , Gn2 , v127
	.byte	W06
	.byte		PAN   , c_v-17
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+16
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-1
	.byte	W03
	.byte		N06
	.byte	W03
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		        c_v+13
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song119:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song119_pri	@ Priority
	.byte	song119_rev	@ Reverb.

	.word	song119_grp

	.word	song119_0

	.end
