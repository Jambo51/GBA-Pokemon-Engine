@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song215_grp, group_6
	.equ	song215_pri, 4
	.equ	song215_rev, 178
	.equ	song215_mvl, 127
	.equ	song215_key, 0
	.equ	song215_tbs, 1
	.equ	song215_exg, 1
	.equ	song215_cmp, 1

	.section .rodata
	.global	song215
	.align	2

@**************** Track 00 ****************************@

song215_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 59
	.byte		BENDR , 12
	.byte		VOL   , 110*song215_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , En3 , v127
	.byte	W01
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		        c_v+0
	.byte		N03   , An3 , v048
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W01
	.byte		        c_v-16
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song215:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song215_pri	@ Priority
	.byte	song215_rev	@ Reverb.

	.word	song215_grp

	.word	song215_0

	.end
