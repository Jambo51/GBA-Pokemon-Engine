@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song252_grp, group_7
	.equ	song252_pri, 5
	.equ	song252_rev, 178
	.equ	song252_mvl, 127
	.equ	song252_key, 0
	.equ	song252_tbs, 1
	.equ	song252_exg, 1
	.equ	song252_cmp, 1

	.text
	.global	song252
	.align	2

@**************** Track 00 ****************************@

song252_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 210
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 96*song252_mvl/mxv
	.byte		N04   , Dn4 , v120
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N04   , Dn4 , v032
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N04   , Fs4 , v096
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N04   , Fs4 , v032
	.byte	W06
	.byte		VOICE , 92
	.byte		PAN   , c_v+0
	.byte		VOL   , 125*song252_mvl/mxv
	.byte		N04   , An1 , v112
	.byte	W10
	.byte		MOD   , 8
	.byte	W02
	.byte		N06   , An1 , v088
	.byte	W06
	.byte		        An1 , v024
	.byte	W06
	.byte		MOD   , 0
	.byte	FINE

@******************************************************@
	.align	2

song252:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song252_pri	@ Priority
	.byte	song252_rev	@ Reverb.

	.word	song252_grp

	.word	song252_0

	.end
