@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song251_grp, group_7
	.equ	song251_pri, 5
	.equ	song251_rev, 178
	.equ	song251_mvl, 127
	.equ	song251_key, 0
	.equ	song251_tbs, 1
	.equ	song251_exg, 1
	.equ	song251_cmp, 1

	.text
	.global	song251
	.align	2

@**************** Track 00 ****************************@

song251_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 210
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 95*song251_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N04   , Dn5 , v092
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Dn5 , v032
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N04   , An4 , v096
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , An4 , v032
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N04   , Fs4 , v092
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Fs4 , v032
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N04   , En4 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , En4 , v032
	.byte	W06
	.byte		PAN   , c_v-39
	.byte		N04   , Dn4 , v096
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Dn4 , v032
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Dn4 , v016
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v012
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Dn4 , v004
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song251:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song251_pri	@ Priority
	.byte	song251_rev	@ Reverb.

	.word	song251_grp

	.word	song251_0

	.end
