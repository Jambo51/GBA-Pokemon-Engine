@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song141_grp, group_6
	.equ	song141_pri, 4
	.equ	song141_rev, 178
	.equ	song141_mvl, 127
	.equ	song141_key, 0
	.equ	song141_tbs, 1
	.equ	song141_exg, 1
	.equ	song141_cmp, 1

	.section .rodata
	.global	song141
	.align	2

@**************** Track 00 ****************************@

song141_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 31
	.byte		VOL   , 110*song141_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Dn2 , v127
	.byte	W01
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOICE , 23
	.byte		BEND  , c_v+0
	.byte		N02   , Gn1 , v112
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Cn2 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N01
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		N01   , Cn3 
	.byte	W01
	.byte		VOICE , 31
	.byte		PAN   , c_v-16
	.byte		N01   , Dn2 
	.byte	W02
	.byte		VOICE , 23
	.byte		PAN   , c_v+0
	.byte		N01   , Cn2 
	.byte	W01
	.byte		VOICE , 31
	.byte		PAN   , c_v+16
	.byte		N01   , Dn2 , v096
	.byte	W01
	.byte		VOICE , 23
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+16
	.byte		N01   , Cn3 
	.byte	W02
	.byte		PAN   , c_v+8
	.byte		N01   , Cn2 
	.byte	W08
	.byte	FINE

@******************************************************@
	.align	2

song141:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song141_pri	@ Priority
	.byte	song141_rev	@ Reverb.

	.word	song141_grp

	.word	song141_0

	.end
