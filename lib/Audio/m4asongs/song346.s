@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song346_grp, group_61
	.equ	song346_pri, 0
	.equ	song346_rev, 178
	.equ	song346_mvl, 127
	.equ	song346_key, 0
	.equ	song346_tbs, 1
	.equ	song346_exg, 1
	.equ	song346_cmp, 1

	.section .rodata
	.global	song346
	.align	2

@**************** Track 00 ****************************@

song346_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 59*song346_mvl/mxv
	.byte	W24
	.byte		N06   , Cn2 , v088
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song346_0 + 0xD
	.byte	GOTO
	 .word	song346_0 + 0xD
	.byte	FINE

@**************** Track 01 ****************************@

song346_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song346_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W24
	.byte	W12
	.byte		N06   , En3 , v088
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song346_1 + 0xD
	.byte	GOTO
	 .word	song346_1 + 0xD
	.byte	FINE

@**************** Track 02 ****************************@

song346_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 45*song346_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W24
	.byte		N06   , Cn2 , v048
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song346_2 + 0x12
	.byte	GOTO
	 .word	song346_2 + 0x12
	.byte	FINE

@**************** Track 03 ****************************@

song346_3:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 34*song346_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn4 , v120
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Gn4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		TIE   , Cn4 , v064
	.byte	W24
	.byte		BEND  , c_v+9
	.byte	W09
	.byte		        c_v-10
	.byte	W09
	.byte		        c_v+0
	.byte	W54
	.byte		        c_v+9
	.byte	W24
	.byte		        c_v-8
	.byte	W24
	.byte		        c_v+0
	.byte	W48
	.byte		EOT
	.byte	GOTO
	 .word	song346_3 + 0x21
	.byte	FINE

@******************************************************@
	.align	2

song346:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song346_pri	@ Priority
	.byte	song346_rev	@ Reverb.

	.word	song346_grp

	.word	song346_0
	.word	song346_1
	.word	song346_2
	.word	song346_3

	.end
