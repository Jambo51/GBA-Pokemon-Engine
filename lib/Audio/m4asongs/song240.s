@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song240_grp, group_6
	.equ	song240_pri, 4
	.equ	song240_rev, 178
	.equ	song240_mvl, 127
	.equ	song240_key, 0
	.equ	song240_tbs, 1
	.equ	song240_exg, 1
	.equ	song240_cmp, 1

	.section .rodata
	.global	song240
	.align	2

@**************** Track 00 ****************************@

song240_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 45
	.byte		VOL   , 110*song240_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 , v092
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+0
	.byte		N02   , Cs4 
	.byte	W01
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		        c_v+0
	.byte		N03   , As3 
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+0
	.byte		N02   , En4 
	.byte	W01
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		PAN   , c_v+7
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 , v040
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+0
	.byte		N02   , Cs4 
	.byte	W01
	.byte		BEND  , c_v+30
	.byte	W02
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+0
	.byte		N03   , As3 , v016
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+0
	.byte		N02   , En4 
	.byte	W01
	.byte		BEND  , c_v+30
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song240_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		VOL   , 110*song240_mvl/mxv
	.byte		N01   , Cn3 , v032
	.byte	W02
	.byte		N01
	.byte	W04
	.byte		N01
	.byte	W02
	.byte		N01
	.byte	W04
	.byte		N01   , Cn3 , v020
	.byte	W02
	.byte		N01
	.byte	W04
	.byte	PEND
	.byte	PATT
	 .word	song240_1 + 0x10
	.byte	FINE

@******************************************************@
	.align	2

song240:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song240_pri	@ Priority
	.byte	song240_rev	@ Reverb.

	.word	song240_grp

	.word	song240_0
	.word	song240_1

	.end
