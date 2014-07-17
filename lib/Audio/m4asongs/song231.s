@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song231_grp, group_6
	.equ	song231_pri, 4
	.equ	song231_rev, 178
	.equ	song231_mvl, 127
	.equ	song231_key, 0
	.equ	song231_tbs, 1
	.equ	song231_exg, 1
	.equ	song231_cmp, 1

	.section .rodata
	.global	song231
	.align	2

@**************** Track 00 ****************************@

song231_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 41
	.byte		VOL   , 110*song231_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+0
	.byte		N02   , Cn4 , v127
	.byte	W03
	.byte		VOL   , 104*song231_mvl/mxv
	.byte	W03
	.byte		        93*song231_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N02   , Cn5 
	.byte	W03
	.byte		VOL   , 110*song231_mvl/mxv
	.byte	W01
	.byte		VOICE , 22
	.byte		PAN   , c_v+0
	.byte		N24   , Cn4 , v060
	.byte	W02
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		        c_v+1
	.byte	W03
	.byte		        c_v+1
	.byte	W01
	.byte		VOL   , 105*song231_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 103*song231_mvl/mxv
	.byte	W02
	.byte		        91*song231_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 77*song231_mvl/mxv
	.byte		BEND  , c_v-1
	.byte	W02
	.byte		VOL   , 61*song231_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 38*song231_mvl/mxv
	.byte	W01
	.byte		        15*song231_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song231_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 110*song231_mvl/mxv
	.byte		N02   , Cn3 , v060
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Gs4 
	.byte	W04
	.byte		        Gs4 , v020
	.byte	W02
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song231:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song231_pri	@ Priority
	.byte	song231_rev	@ Reverb.

	.word	song231_grp

	.word	song231_0
	.word	song231_1

	.end
