@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song250_grp, group_7
	.equ	song250_pri, 5
	.equ	song250_rev, 178
	.equ	song250_mvl, 127
	.equ	song250_key, 0
	.equ	song250_tbs, 1
	.equ	song250_exg, 1
	.equ	song250_cmp, 1

	.text
	.global	song250
	.align	2

@**************** Track 00 ****************************@

song250_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 210
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 96*song250_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N04   , Dn4 , v096
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v032
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N04   , Fs4 , v096
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Fs4 , v032
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N04   , An4 , v096
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , An4 , v032
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N04   , Cs5 , v096
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Cs5 , v032
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N04   , Dn5 , v076
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Dn5 , v032
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Dn5 , v024
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Dn5 , v016
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Dn5 , v008
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Dn5 , v004
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song250:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song250_pri	@ Priority
	.byte	song250_rev	@ Reverb.

	.word	song250_grp

	.word	song250_0

	.end
