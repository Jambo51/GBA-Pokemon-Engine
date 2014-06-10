@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song220_grp, group_6
	.equ	song220_pri, 4
	.equ	song220_rev, 178
	.equ	song220_mvl, 127
	.equ	song220_key, 0
	.equ	song220_tbs, 1
	.equ	song220_exg, 1
	.equ	song220_cmp, 1

	.section .rodata
	.global	song220
	.align	2

@**************** Track 00 ****************************@

song220_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 61
	.byte		BENDR , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song220_mvl/mxv
	.byte		MOD   , 30
	.byte		BEND  , c_v+2
	.byte		N54   , Dn4 , v080
	.byte	W12
	.byte		PAN   , c_v-4
	.byte	W12
	.byte		        c_v-10
	.byte	W12
	.byte		        c_v-4
	.byte	W12
	.byte		        c_v+0
	.byte	W06
	.byte		N54   , Cn4 
	.byte	W06
	.byte		PAN   , c_v+6
	.byte	W12
	.byte		        c_v+9
	.byte	W12
	.byte		        c_v+5
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v-4
	.byte		N54   , Dn4 
	.byte	W12
	.byte		PAN   , c_v-10
	.byte	W12
	.byte		        c_v-4
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v+6
	.byte	W06
	.byte		N54   , Cn4 
	.byte	W06
	.byte		PAN   , c_v+9
	.byte	W12
	.byte		        c_v+5
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v-4
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song220_1:
	.byte	KEYSH , 0
	.byte		VOICE , 62
	.byte		BENDR , 44
	.byte		VOL   , 110*song220_mvl/mxv
	.byte		MOD   , 30
	.byte		PAN   , c_v+1
	.byte		BEND  , c_v+1
	.byte		N24   , Dn4 , v040
	.byte	W24
	.byte	W02
	.byte		PAN   , c_v+47
	.byte		N24   , Dn4 , v032
	.byte	W22
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N24   , Cn4 , v040
	.byte	W18
	.byte	W08
	.byte		PAN   , c_v-49
	.byte		N24   , Cn4 , v032
	.byte	W16
	.byte	W12
	.byte		PAN   , c_v+1
	.byte		N24   , Dn4 , v040
	.byte	W12
	.byte	W14
	.byte		PAN   , c_v+47
	.byte		N24   , Dn4 , v032
	.byte	W10
	.byte	W18
	.byte		PAN   , c_v+0
	.byte		N24   , Cn4 , v040
	.byte	W06
	.byte	W20
	.byte		PAN   , c_v-48
	.byte		N24   , Cn4 , v032
	.byte	W04
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song220:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song220_pri	@ Priority
	.byte	song220_rev	@ Reverb.

	.word	song220_grp

	.word	song220_0
	.word	song220_1

	.end
