@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song193_grp, group_6
	.equ	song193_pri, 4
	.equ	song193_rev, 178
	.equ	song193_mvl, 127
	.equ	song193_key, 0
	.equ	song193_tbs, 1
	.equ	song193_exg, 1
	.equ	song193_cmp, 1

	.text
	.global	song193
	.align	2

@**************** Track 00 ****************************@

song193_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 95
	.byte		VOICE , 45
	.byte		BENDR , 8
	.byte		VOL   , 36*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-44
	.byte		N12   , Gs2 , v127
	.byte	W01
	.byte		VOL   , 52*song193_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 67*song193_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 78*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+44
	.byte	W02
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		VOL   , 86*song193_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 55*song193_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 33*song193_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		VOICE , 37
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		N02   , Gs3 , v080
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOICE , 45
	.byte		VOL   , 36*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-44
	.byte		N12   , As2 , v127
	.byte	W01
	.byte		VOL   , 52*song193_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 67*song193_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+17
	.byte	W02
	.byte		VOL   , 78*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		PAN   , c_v-11
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		VOL   , 86*song193_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+28
	.byte	W02
	.byte		VOL   , 55*song193_mvl/mxv
	.byte		PAN   , c_v-11
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 33*song193_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOICE , 37
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		N02   , As3 , v056
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOICE , 45
	.byte		VOL   , 36*song193_mvl/mxv
	.byte		BEND  , c_v-44
	.byte		N12   , Gs2 , v080
	.byte	W02
	.byte		VOL   , 52*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 67*song193_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 78*song193_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+63
	.byte	W02
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		VOL   , 86*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 55*song193_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 33*song193_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOICE , 37
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		N02   , Gs3 , v024
	.byte	W02
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOICE , 45
	.byte		VOL   , 36*song193_mvl/mxv
	.byte		BEND  , c_v-44
	.byte		N12   , As2 , v040
	.byte	W01
	.byte		VOL   , 52*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 67*song193_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 78*song193_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+27
	.byte	W02
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		PAN   , c_v-11
	.byte		BEND  , c_v+44
	.byte	W01
	.byte		VOL   , 86*song193_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		VOL   , 55*song193_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+17
	.byte	W02
	.byte		VOL   , 33*song193_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOICE , 37
	.byte		VOL   , 105*song193_mvl/mxv
	.byte		N02   , As3 , v016
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

song193:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song193_pri	@ Priority
	.byte	song193_rev	@ Reverb.

	.word	song193_grp

	.word	song193_0

	.end
