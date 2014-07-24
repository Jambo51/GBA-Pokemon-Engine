@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song214_grp, group_6
	.equ	song214_pri, 4
	.equ	song214_rev, 178
	.equ	song214_mvl, 127
	.equ	song214_key, 0
	.equ	song214_tbs, 1
	.equ	song214_exg, 1
	.equ	song214_cmp, 1

	.section .rodata
	.global	song214
	.align	2

@**************** Track 00 ****************************@

song214_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song214_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , An3 , v127
	.byte	W03
	.byte		BEND  , c_v+21
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+6
	.byte		N15   , An3 , v120
	.byte	W03
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		PAN   , c_v+10
	.byte	W02
	.byte		BEND  , c_v-9
	.byte	W03
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-29
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N09   , Cn3 , v127
	.byte	W06
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-15
	.byte		N60   , Cs3 , v124
	.byte	W03
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		PAN   , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte		BEND  , c_v-8
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-9
	.byte	W03
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-22
	.byte	W06
	.byte		VOL   , 103*song214_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W03
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		VOL   , 95*song214_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W03
	.byte		PAN   , c_v-9
	.byte	W05
	.byte		BEND  , c_v-45
	.byte	W01
	.byte		VOL   , 66*song214_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W05
	.byte		        c_v+10
	.byte	W01
	.byte		BEND  , c_v-52
	.byte	W03
	.byte		VOL   , 21*song214_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W04
	.byte	FINE

@**************** Track 01 ****************************@

song214_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 110*song214_mvl/mxv
	.byte		N06   , Cn3 , v060
	.byte	W09
	.byte		N15
	.byte	W15
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song214:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song214_pri	@ Priority
	.byte	song214_rev	@ Reverb.

	.word	song214_grp

	.word	song214_0
	.word	song214_1

	.end
