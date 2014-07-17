@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song263_grp, group_1
	.equ	song263_pri, 1
	.equ	song263_rev, 178
	.equ	song263_mvl, 127
	.equ	song263_key, 0
	.equ	song263_tbs, 1
	.equ	song263_exg, 1
	.equ	song263_cmp, 1

	.section .rodata
	.global	song263
	.align	2

@**************** Track 00 ****************************@

song263_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 47
	.byte		VOL   , 80*song263_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		N24   , Dn2 , v127
	.byte	W48
	.byte	FINE

@**************** Track 01 ****************************@

song263_1:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		VOL   , 80*song263_mvl/mxv
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 , v080
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W30
	.byte	FINE

@**************** Track 02 ****************************@

song263_2:
	.byte	KEYSH , 0
	.byte		VOICE , 82
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 80*song263_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W06
	.byte		N06   , Gn4 , v032
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song263_3:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 80*song263_mvl/mxv
	.byte		PAN   , c_v+23
	.byte		N48   , Bn2 , v100
	.byte	W48
	.byte	FINE

@******************************************************@
	.align	2

song263:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song263_pri	@ Priority
	.byte	song263_rev	@ Reverb.

	.word	song263_grp

	.word	song263_0
	.word	song263_1
	.word	song263_2
	.word	song263_3

	.end
