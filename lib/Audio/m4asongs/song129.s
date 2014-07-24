@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song129_grp, group_6
	.equ	song129_pri, 4
	.equ	song129_rev, 178
	.equ	song129_mvl, 127
	.equ	song129_key, 0
	.equ	song129_tbs, 1
	.equ	song129_exg, 1
	.equ	song129_cmp, 1

	.section .rodata
	.global	song129
	.align	2

@**************** Track 00 ****************************@

song129_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song129_mvl/mxv
	.byte		PAN   , c_v+14
	.byte		BEND  , c_v+0
	.byte		N09   , Cn5 , v092
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+28
	.byte	W03
	.byte		VOICE , 2
	.byte		BEND  , c_v-64
	.byte		N21   , Bn2 , v108
	.byte	W03
	.byte		BEND  , c_v-55
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v-45
	.byte	W03
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+30
	.byte	W03
	.byte		PAN   , c_v+15
	.byte		BEND  , c_v+39
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		BEND  , c_v+54
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W21
	.byte	FINE

@**************** Track 01 ****************************@

song129_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song129_mvl/mxv
	.byte		N06   , Fn3 , v040
	.byte	W09
	.byte		N24   , Gn3 
	.byte	W15
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song129:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song129_pri	@ Priority
	.byte	song129_rev	@ Reverb.

	.word	song129_grp

	.word	song129_0
	.word	song129_1

	.end
