@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song123_grp, group_6
	.equ	song123_pri, 4
	.equ	song123_rev, 178
	.equ	song123_mvl, 127
	.equ	song123_key, 0
	.equ	song123_tbs, 1
	.equ	song123_exg, 1
	.equ	song123_cmp, 1

	.section .rodata
	.global	song123
	.align	2

@**************** Track 00 ****************************@

song123_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 125
	.byte		VOICE , 10
	.byte		BENDR , 12
	.byte		VOL   , 105*song123_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+0
	.byte		N09   , En4 , v112
	.byte	W03
	.byte		BEND  , c_v+6
	.byte	W03
	.byte		        c_v+12
	.byte	W05
	.byte		        c_v+8
	.byte	W01
	.byte		PAN   , c_v+16
	.byte		N09   , Gn4 
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-14
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-11
	.byte		N09   , En4 
	.byte	W03
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		        c_v+1
	.byte	W05
	.byte		        c_v-3
	.byte	W01
	.byte		PAN   , c_v-16
	.byte		N09   , Gn4 
	.byte	W03
	.byte		BEND  , c_v-19
	.byte	W03
	.byte		        c_v-25
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-19
	.byte		N09   , En4 
	.byte	W03
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		        c_v-6
	.byte	W05
	.byte		        c_v-10
	.byte	W01
	.byte		PAN   , c_v+16
	.byte		N09   , Gn4 , v096
	.byte	W03
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		        c_v-32
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-32
	.byte		N09   , En4 , v084
	.byte	W03
	.byte		BEND  , c_v-26
	.byte	W03
	.byte		        c_v-19
	.byte	W05
	.byte		        c_v-23
	.byte	W01
	.byte		PAN   , c_v-16
	.byte		N09   , Gn4 , v060
	.byte	W03
	.byte		BEND  , c_v-40
	.byte	W03
	.byte		        c_v-45
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song123_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		VOL   , 105*song123_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		N09   , Cn3 , v052
	.byte	W12
	.byte		PAN   , c_v-7
	.byte		N09   , Gn2 
	.byte	W12
	.byte		PAN   , c_v+9
	.byte		N09   , Cn3 , v052
	.byte	W12
	.byte		PAN   , c_v-6
	.byte		N09   , Gn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song123_1 + 0x11
	.byte	PATT
	 .word	song123_1 + 0x11
	.byte	FINE

@******************************************************@
	.align	2

song123:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song123_pri	@ Priority
	.byte	song123_rev	@ Reverb.

	.word	song123_grp

	.word	song123_0
	.word	song123_1

	.end
