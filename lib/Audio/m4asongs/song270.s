@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song270_grp, group_0
	.equ	song270_pri, 5
	.equ	song270_rev, 178
	.equ	song270_mvl, 127
	.equ	song270_key, 0
	.equ	song270_tbs, 1
	.equ	song270_exg, 1
	.equ	song270_cmp, 1

	.section .rodata
	.global	song270
	.align	2

@**************** Track 00 ****************************@

song270_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte	W12
	.byte		VOICE , 13
	.byte		VOL   , 90*song270_mvl/mxv
	.byte		N06   , En3 , v068
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , Ds5 , v088
	.byte	W09
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , En5 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte	W03
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song270_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 13
	.byte		VOL   , 90*song270_mvl/mxv
	.byte	W03
	.byte		N06   , Gs3 , v068
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Cs5 
	.byte	W03
	.byte	W03
	.byte		N12   , En5 , v088
	.byte	W09
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , En5 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song270_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte		BEND  , c_v+1
	.byte	W24
	.byte		VOICE , 13
	.byte		VOL   , 90*song270_mvl/mxv
	.byte		PAN   , c_v-48
	.byte	W12
	.byte		N12   , En5 , v012
	.byte	W09
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , En5 
	.byte	W12
	.byte		N12
	.byte	W15
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song270_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		BEND  , c_v-2
	.byte	W24
	.byte		VOICE , 13
	.byte		VOL   , 90*song270_mvl/mxv
	.byte		PAN   , c_v+48
	.byte	W24
	.byte		N12   , En5 , v012
	.byte	W09
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , En5 
	.byte	W12
	.byte		N12
	.byte	W03
	.byte	W24
	.byte	FINE

@**************** Track 04 ****************************@

song270_4:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte	W12
	.byte		VOICE , 84
	.byte		VOL   , 90*song270_mvl/mxv
	.byte	W21
	.byte		N12   , En2 , v072
	.byte	W03
	.byte	W56
	.byte	W01
	.byte		        En3 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte	W03
	.byte	W24
	.byte	FINE

@**************** Track 05 ****************************@

song270_5:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte	W12
	.byte		VOICE , 85
	.byte		VOL   , 90*song270_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W24
	.byte		N12   , En2 , v052
	.byte	W60
	.byte		        En3 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song270:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song270_pri	@ Priority
	.byte	song270_rev	@ Reverb.

	.word	song270_grp

	.word	song270_0
	.word	song270_1
	.word	song270_2
	.word	song270_3
	.word	song270_4
	.word	song270_5

	.end
