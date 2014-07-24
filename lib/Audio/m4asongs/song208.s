@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song208_grp, group_6
	.equ	song208_pri, 4
	.equ	song208_rev, 178
	.equ	song208_mvl, 127
	.equ	song208_key, 0
	.equ	song208_tbs, 1
	.equ	song208_exg, 1
	.equ	song208_cmp, 1

	.section .rodata
	.global	song208
	.align	2

@**************** Track 00 ****************************@

song208_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 18
	.byte		VOL   , 110*song208_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , En3 , v127
	.byte	W03
	.byte		N01   , As3 
	.byte	W03
	.byte		N02   , Gn3 
	.byte	W03
	.byte		N01   , Cs4 
	.byte	W03
	.byte		PAN   , c_v+7
	.byte		N02   , En3 , v072
	.byte	W03
	.byte		N01   , As3 
	.byte	W03
	.byte		PAN   , c_v-7
	.byte		N02   , Gn3 , v040
	.byte	W03
	.byte		N01   , Cs4 
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song208_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		VOL   , 110*song208_mvl/mxv
	.byte		N01   , Cn3 , v040
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
	 .word	song208_1 + 0x10
	.byte	FINE

@******************************************************@
	.align	2

song208:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song208_pri	@ Priority
	.byte	song208_rev	@ Reverb.

	.word	song208_grp

	.word	song208_0
	.word	song208_1

	.end
