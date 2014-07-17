@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song125_grp, group_6
	.equ	song125_pri, 4
	.equ	song125_rev, 178
	.equ	song125_mvl, 127
	.equ	song125_key, 0
	.equ	song125_tbs, 1
	.equ	song125_exg, 1
	.equ	song125_cmp, 1

	.section .rodata
	.global	song125
	.align	2

@**************** Track 00 ****************************@

song125_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 64*song125_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Cn3 , v108
	.byte	W03
	.byte		VOL   , 79*song125_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		VOL   , 84*song125_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W03
	.byte		VOL   , 91*song125_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 100*song125_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		VOL   , 110*song125_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-12
	.byte	W06
	.byte		PAN   , c_v-17
	.byte		BEND  , c_v+0
	.byte		N48   , Cn3 , v108
	.byte	W03
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		PAN   , c_v-3
	.byte	W03
	.byte		        c_v+6
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		PAN   , c_v+10
	.byte	W03
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		BEND  , c_v+6
	.byte	W03
	.byte		PAN   , c_v+13
	.byte		BEND  , c_v+11
	.byte	W03
	.byte		        c_v+20
	.byte	W03
	.byte		PAN   , c_v+8
	.byte	W03
	.byte		        c_v+0
	.byte		BEND  , c_v+12
	.byte	W03
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+7
	.byte	W03
	.byte		PAN   , c_v-11
	.byte	W03
	.byte	GOTO
	 .word	song125_0 + 0x2E
	.byte	FINE

@******************************************************@
	.align	2

song125:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song125_pri	@ Priority
	.byte	song125_rev	@ Reverb.

	.word	song125_grp

	.word	song125_0

	.end
