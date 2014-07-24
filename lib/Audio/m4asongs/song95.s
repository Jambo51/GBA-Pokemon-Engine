@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song95_grp, group_6
	.equ	song95_pri, 5
	.equ	song95_rev, 178
	.equ	song95_mvl, 127
	.equ	song95_key, 0
	.equ	song95_tbs, 1
	.equ	song95_exg, 1
	.equ	song95_cmp, 1

	.section .rodata
	.global	song95
	.align	2

@**************** Track 00 ****************************@

song95_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 46
	.byte		VOL   , 95*song95_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N03   , Cn6 , v127
	.byte	W01
	.byte		PAN   , c_v+2
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Gn6 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W02
	.byte	W03
	.byte		BEND  , c_v+1
	.byte		N03   , Cn6 , v104
	.byte	W01
	.byte		PAN   , c_v-2
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Gn6 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W04
	.byte	W01
	.byte		BEND  , c_v+1
	.byte		N03   , Cs6 , v080
	.byte	W01
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Gs6 
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W04
	.byte		BEND  , c_v+1
	.byte		N03   , Cs6 , v048
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+1
	.byte		N06   , Gs6 
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W03
	.byte	W02
	.byte		        c_v+4
	.byte		BEND  , c_v+1
	.byte		N03   , Cs6 , v032
	.byte	W01
	.byte		BEND  , c_v+2
	.byte	W01
	.byte		        c_v+4
	.byte	W02
	.byte		        c_v+0
	.byte		N06   , Gs6 
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song95:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song95_pri	@ Priority
	.byte	song95_rev	@ Reverb.

	.word	song95_grp

	.word	song95_0

	.end
