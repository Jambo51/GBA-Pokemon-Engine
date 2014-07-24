@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song207_grp, group_6
	.equ	song207_pri, 4
	.equ	song207_rev, 178
	.equ	song207_mvl, 127
	.equ	song207_key, 0
	.equ	song207_tbs, 1
	.equ	song207_exg, 1
	.equ	song207_cmp, 1

	.section .rodata
	.global	song207
	.align	2

@**************** Track 00 ****************************@

song207_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 26
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song207_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn2 , v127
	.byte	W03
	.byte		PAN   , c_v+6
	.byte		N03   , Fs2 , v120
	.byte	W04
	.byte		PAN   , c_v-6
	.byte		N03   , Fn2 , v116
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		N03   , En2 , v112
	.byte	W04
	.byte		PAN   , c_v-11
	.byte		N03   , Ds2 , v108
	.byte	W04
	.byte		PAN   , c_v+0
	.byte		N03   , Dn2 , v100
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song207_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song207_mvl/mxv
	.byte		N02   , Fn2 , v072
	.byte	W02
	.byte		N01
	.byte	W01
	.byte		N02   , Gn2 
	.byte	W03
	.byte		N01   , Gs2 , v060
	.byte	W01
	.byte		N02   , Cn3 , v040
	.byte	W03
	.byte		        Cn3 , v032
	.byte	W04
	.byte		N01   , Cn3 , v028
	.byte	W04
	.byte		        Cn3 , v020
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song207:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song207_pri	@ Priority
	.byte	song207_rev	@ Reverb.

	.word	song207_grp

	.word	song207_0
	.word	song207_1

	.end
