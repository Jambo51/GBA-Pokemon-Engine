@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song222_grp, group_6
	.equ	song222_pri, 4
	.equ	song222_rev, 178
	.equ	song222_mvl, 127
	.equ	song222_key, 0
	.equ	song222_tbs, 1
	.equ	song222_exg, 1
	.equ	song222_cmp, 1

	.section .rodata
	.global	song222
	.align	2

@**************** Track 00 ****************************@

song222_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 41
	.byte		VOL   , 100*song222_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N01   , Dn5 , v127
	.byte	W01
	.byte		        Gn4 
	.byte	W01
	.byte		N09   , En5 
	.byte	W02
	.byte		PAN   , c_v+6
	.byte	W02
	.byte		VOL   , 92*song222_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W01
	.byte		VOL   , 83*song222_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		VOL   , 71*song222_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 46*song222_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 22*song222_mvl/mxv
	.byte		PAN   , c_v-12
	.byte		BEND  , c_v-15
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song222:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song222_pri	@ Priority
	.byte	song222_rev	@ Reverb.

	.word	song222_grp

	.word	song222_0

	.end
