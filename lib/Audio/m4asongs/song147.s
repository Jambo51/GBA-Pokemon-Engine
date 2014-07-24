@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song147_grp, group_6
	.equ	song147_pri, 4
	.equ	song147_rev, 178
	.equ	song147_mvl, 127
	.equ	song147_key, 0
	.equ	song147_tbs, 1
	.equ	song147_exg, 1
	.equ	song147_cmp, 1

	.section .rodata
	.global	song147
	.align	2

@**************** Track 00 ****************************@

song147_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song147_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Gn3 , v108
	.byte	W02
	.byte		PAN   , c_v-19
	.byte	W04
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 97*song147_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		VOL   , 84*song147_mvl/mxv
	.byte	W03
	.byte		        76*song147_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W02
	.byte		VOL   , 55*song147_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W02
	.byte		VOL   , 39*song147_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 25*song147_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		VOL   , 13*song147_mvl/mxv
	.byte	W03
	.byte		        7*song147_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song147:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song147_pri	@ Priority
	.byte	song147_rev	@ Reverb.

	.word	song147_grp

	.word	song147_0

	.end
