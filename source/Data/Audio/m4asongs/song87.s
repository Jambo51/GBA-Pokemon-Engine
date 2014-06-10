@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song87_grp, group_6
	.equ	song87_pri, 5
	.equ	song87_rev, 178
	.equ	song87_mvl, 127
	.equ	song87_key, 0
	.equ	song87_tbs, 1
	.equ	song87_exg, 1
	.equ	song87_cmp, 1

	.section .rodata
	.global	song87
	.align	2

@**************** Track 00 ****************************@

song87_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*song87_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		N07   , An1 , v127
	.byte	W01
	.byte		VOL   , 52*song87_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 68*song87_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 82*song87_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 105*song87_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+37
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 40*song87_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+1
	.byte		N06
	.byte	W02
	.byte		VOL   , 52*song87_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 79*song87_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 105*song87_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W10
	.byte	W12
	.byte	W12
	.byte	GOTO
	 .word	song87_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song87_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*song87_mvl/mxv
	.byte		N07   , Gn2 , v040
	.byte	W01
	.byte		VOL   , 69*song87_mvl/mxv
	.byte	W01
	.byte		        83*song87_mvl/mxv
	.byte	W01
	.byte		        105*song87_mvl/mxv
	.byte	W01
	.byte		        67*song87_mvl/mxv
	.byte	W02
	.byte		        23*song87_mvl/mxv
	.byte	W04
	.byte		VOICE , 25
	.byte		VOL   , 52*song87_mvl/mxv
	.byte		N06   , Gs4 
	.byte	W02
	.byte		VOL   , 81*song87_mvl/mxv
	.byte	W01
	.byte		        105*song87_mvl/mxv
	.byte	W02
	.byte		        52*song87_mvl/mxv
	.byte	W09
	.byte	W12
	.byte	W12
	.byte	GOTO
	 .word	song87_1 + 0x2
	.byte	FINE

@******************************************************@
	.align	2

song87:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song87_pri	@ Priority
	.byte	song87_rev	@ Reverb.

	.word	song87_grp

	.word	song87_0
	.word	song87_1

	.end
