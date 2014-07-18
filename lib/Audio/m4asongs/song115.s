@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song115_grp, group_6
	.equ	song115_pri, 4
	.equ	song115_rev, 178
	.equ	song115_mvl, 127
	.equ	song115_key, 0
	.equ	song115_tbs, 1
	.equ	song115_exg, 1
	.equ	song115_cmp, 1

	.text
	.global	song115
	.align	2

@**************** Track 00 ****************************@

song115_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 22
	.byte		VOL   , 110*song115_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+46
	.byte		N09   , Cn3 , v127
	.byte	W03
	.byte		VOL   , 104*song115_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+23
	.byte	W03
	.byte		VOL   , 93*song115_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		VOICE , 21
	.byte		VOL   , 110*song115_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N03   , Cn5 
	.byte	W09
	.byte	FINE

@**************** Track 01 ****************************@

song115_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 110*song115_mvl/mxv
	.byte	W09
	.byte		PAN   , c_v+8
	.byte		N03   , Cn3 , v052
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N03
	.byte	W09
	.byte	FINE

@******************************************************@
	.align	2

song115:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song115_pri	@ Priority
	.byte	song115_rev	@ Reverb.

	.word	song115_grp

	.word	song115_0
	.word	song115_1

	.end
