@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song209_grp, group_6
	.equ	song209_pri, 4
	.equ	song209_rev, 178
	.equ	song209_mvl, 127
	.equ	song209_key, 0
	.equ	song209_tbs, 1
	.equ	song209_exg, 1
	.equ	song209_cmp, 1

	.section .rodata
	.global	song209
	.align	2

@**************** Track 00 ****************************@

song209_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 115*song209_mvl/mxv
	.byte		BEND  , c_v-18
	.byte		N60   , Gn2 , v127
	.byte	W03
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v-16
	.byte	W04
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v-11
	.byte	W02
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-8
	.byte	W04
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-2
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+4
	.byte	W04
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v+7
	.byte	W02
	.byte		VOL   , 109*song209_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+10
	.byte	W02
	.byte		VOL   , 103*song209_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v+13
	.byte	W03
	.byte		VOL   , 92*song209_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+16
	.byte	W03
	.byte		VOL   , 79*song209_mvl/mxv
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v+18
	.byte	W02
	.byte	W02
	.byte		VOL   , 62*song209_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+21
	.byte	W04
	.byte		VOL   , 40*song209_mvl/mxv
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v+26
	.byte	W02
	.byte		VOL   , 22*song209_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 8*song209_mvl/mxv
	.byte		BEND  , c_v+43
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song209_1:
	.byte	KEYSH , 0
	.byte		VOICE , 25
	.byte		VOL   , 115*song209_mvl/mxv
	.byte		N06   , Cn3 , v040
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   , Cn3 , v040
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song209_1 + 0xC
	.byte		N06   , Cn3 , v032
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 , v012
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song209:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song209_pri	@ Priority
	.byte	song209_rev	@ Reverb.

	.word	song209_grp

	.word	song209_0
	.word	song209_1

	.end
