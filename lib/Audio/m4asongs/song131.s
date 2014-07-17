@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song131_grp, group_6
	.equ	song131_pri, 4
	.equ	song131_rev, 178
	.equ	song131_mvl, 127
	.equ	song131_key, 0
	.equ	song131_tbs, 1
	.equ	song131_exg, 1
	.equ	song131_cmp, 1

	.section .rodata
	.global	song131
	.align	2

@**************** Track 00 ****************************@

song131_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 18
	.byte		VOL   , 110*song131_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+32
	.byte		N06   , Gn3 , v127
	.byte	W02
	.byte		PAN   , c_v-8
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+32
	.byte		N04   , Cn3 
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N01   , Gn3 
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		N13   , Gn3 
	.byte	W02
	.byte		VOL   , 96*song131_mvl/mxv
	.byte	W01
	.byte		        85*song131_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-23
	.byte	W01
	.byte		VOL   , 66*song131_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		VOL   , 36*song131_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W02
	.byte		VOL   , 12*song131_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W21
	.byte	FINE

@**************** Track 01 ****************************@

song131_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		VOL   , 110*song131_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		N02   , En3 , v052
	.byte	W04
	.byte		PAN   , c_v+10
	.byte		N02   , En3 , v044
	.byte	W04
	.byte		PAN   , c_v-7
	.byte		N02   , En3 , v036
	.byte	W04
	.byte		PAN   , c_v+10
	.byte		N02   , En3 , v028
	.byte	W04
	.byte		PAN   , c_v-7
	.byte		N02   , En3 , v020
	.byte	W08
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song131:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song131_pri	@ Priority
	.byte	song131_rev	@ Reverb.

	.word	song131_grp

	.word	song131_0
	.word	song131_1

	.end
