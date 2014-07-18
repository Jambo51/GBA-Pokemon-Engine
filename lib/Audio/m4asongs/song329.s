@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song329_grp, group_58
	.equ	song329_pri, 0
	.equ	song329_rev, 178
	.equ	song329_mvl, 127
	.equ	song329_key, 0
	.equ	song329_tbs, 1
	.equ	song329_exg, 1
	.equ	song329_cmp, 1

	.text
	.global	song329
	.align	2

@**************** Track 00 ****************************@

song329_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 62
	.byte		VOICE , 24
	.byte		VOL   , 75*song329_mvl/mxv
	.byte		N04   , Cn4 , v120
	.byte	W24
	.byte		N20
	.byte	W12
	.byte		MOD   , 7
	.byte	W08
	.byte		        0
	.byte	W04
	.byte		N16
	.byte	W08
	.byte		MOD   , 7
	.byte	W08
	.byte		        0
	.byte		N02   , Bn3 
	.byte	W08
	.byte		N16   , Cn4 
	.byte	W08
	.byte		MOD   , 7
	.byte	W08
	.byte		N04   , Dn4 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , En4 , v120
	.byte	W16
	.byte		N01   , Gn3 
	.byte	W08
	.byte		N16   , En4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Dn4 
	.byte	W16
	.byte		N01   , Gn3 
	.byte	W08
	.byte		N16   , Dn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte	PEND
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N08   , Cn4 
	.byte	W08
	.byte		N04   , Bn3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte		N04   , Dn4 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte	PATT
	 .word	song329_0 + 0x28
	.byte		N16   , Cn4 , v120
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Cn4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		N02   , An3 
	.byte	W08
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte		N04   , Dn4 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Fn4 
	.byte	W16
	.byte		N01   , An3 
	.byte	W08
	.byte		N16   , Fn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , An3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , En4 
	.byte	W16
	.byte		N01   , An3 
	.byte	W08
	.byte		N16   , En4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , An3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N16   , Dn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , An3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N16   , Dn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , An3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Dn4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N04   , Dn4 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Fn4 
	.byte	W16
	.byte		N01   , An3 
	.byte	W08
	.byte		N16   , Fn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , An3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , En4 
	.byte	W16
	.byte		N01   , Gn3 
	.byte	W08
	.byte		N16   , En4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N16   , Dn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N01   , Fn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N02   , Dn4 
	.byte	W16
	.byte		N01   , Gn3 
	.byte	W08
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N02   , Bn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N16   , Cn4 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N04   , Dn4 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte	GOTO
	 .word	song329_0 + 0x28
	.byte	FINE

@**************** Track 01 ****************************@

song329_1:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte		VOL   , 37*song329_mvl/mxv
	.byte		N04   , Fn3 , v120
	.byte	W24
	.byte		N20
	.byte	W12
	.byte		MOD   , 7
	.byte	W08
	.byte		        0
	.byte	W04
	.byte		N16
	.byte	W08
	.byte		MOD   , 7
	.byte	W08
	.byte		        0
	.byte		N02   , En3 
	.byte	W08
	.byte		N16   , Fn3 
	.byte	W08
	.byte		MOD   , 7
	.byte	W08
	.byte		N04   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , Cn4 , v120
	.byte	W24
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		N04   , Bn3 
	.byte	W24
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte	PEND
	.byte		N16   , An3 , v120
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		N04
	.byte	W24
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N04   , Bn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song329_1 + 0x2C
	.byte	PATT
	 .word	song329_1 + 0x42
	.byte		N04   , Cn4 , v120
	.byte	W24
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		N04
	.byte	W24
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte	PEND
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		N04
	.byte	W24
	.byte		N16   , An3 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N04   , Cn4 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte	PATT
	 .word	song329_1 + 0x6A
	.byte		N16   , An3 , v120
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		N02
	.byte	W16
	.byte		        Fn3 
	.byte	W08
	.byte		N16
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N02   , En3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte		N16   , Fn3 
	.byte	W06
	.byte		MOD   , 7
	.byte	W10
	.byte		N04   , Gn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte	GOTO
	 .word	song329_1 + 0x2C
	.byte	FINE

@**************** Track 02 ****************************@

song329_2:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 37*song329_mvl/mxv
	.byte		N04   , An3 , v120
	.byte	W24
	.byte		N20
	.byte	W12
	.byte		MOD   , 7
	.byte	W08
	.byte		        0
	.byte	W04
	.byte		N16
	.byte	W08
	.byte		MOD   , 7
	.byte	W08
	.byte		        0
	.byte		N02   , Gn3 
	.byte	W08
	.byte		N16   , An3 
	.byte	W08
	.byte		MOD   , 7
	.byte	W08
	.byte		N04   , Bn3 
	.byte	W02
	.byte		MOD   , 0
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song329_2 + 0x2C
	.byte	FINE

@**************** Track 03 ****************************@

song329_3:
	.byte	KEYSH , 0
	.byte		VOICE , 35
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		N04   , Gn1 , v120
	.byte	W24
	.byte		N20
	.byte	W10
	.byte		VOL   , 88*song329_mvl/mxv
	.byte		MOD   , 8
	.byte	W14
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte		N16
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W14
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte		N04
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte		N04   , Cn2 , v120
	.byte	W40
	.byte		N02
	.byte	W08
	.byte		N04
	.byte	W40
	.byte		        Gn1 
	.byte	W08
	.byte		N16   , Cn2 
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W14
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte		N16
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N02   , Gn1 
	.byte	W02
	.byte		VOL   , 100*song329_mvl/mxv
	.byte	W06
	.byte		N08   , Cn2 
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		N16   , Gn2 
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte		MOD   , 9
	.byte	W08
	.byte		N04   , Gn1 
	.byte	W02
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte	W06
	.byte		N04   , An1 
	.byte	W24
	.byte		N16   , An2 
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte		MOD   , 8
	.byte	W08
	.byte		N04   , An1 
	.byte	W02
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte	W06
	.byte		N04
	.byte	W40
	.byte		        Gn1 
	.byte	W08
	.byte		N16   , An1 
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W14
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte		N16   , En2 
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W06
	.byte		N02   , An1 
	.byte	W02
	.byte		VOL   , 100*song329_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		N04
	.byte	W16
	.byte		N02
	.byte	W08
	.byte		N16   , En2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W02
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W08
	.byte		MOD   , 0
	.byte		N04   , An1 
	.byte	W02
	.byte		VOL   , 100*song329_mvl/mxv
	.byte	W06
	.byte		N04   , Dn2 
	.byte	W40
	.byte		        An1 
	.byte	W08
	.byte		        Dn2 
	.byte	W40
	.byte		        An1 
	.byte	W08
	.byte		N16   , Dn2 
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W14
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte		N08   , An2 
	.byte	W08
	.byte		N02   , Gn2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		N04   , Dn2 
	.byte	W40
	.byte		N04
	.byte	W08
	.byte		        Gn1 
	.byte	W40
	.byte		        Dn1 
	.byte	W08
	.byte		        Gn1 
	.byte	W40
	.byte		        Dn1 
	.byte	W08
	.byte		N16   , Gn1 
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W14
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte		N02   , Bn1 
	.byte	W16
	.byte		N04   , Gn1 
	.byte	W08
	.byte		N16
	.byte	W08
	.byte		VOL   , 88*song329_mvl/mxv
	.byte	W02
	.byte		MOD   , 8
	.byte	W14
	.byte		VOL   , 100*song329_mvl/mxv
	.byte		MOD   , 0
	.byte		N04   , Gn2 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Gn1 
	.byte	W08
	.byte	GOTO
	 .word	song329_3 + 0x2F
	.byte	FINE

@**************** Track 04 ****************************@

song329_4:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 64*song329_mvl/mxv
	.byte	W72
	.byte		N08   , En1 , v120
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Cn1 
	.byte	W08
	.byte		N08   , Cn1 , v120
	.byte	W24
	.byte		        En1 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		        En1 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	song329_4 + 0xF
	.byte	PATT
	 .word	song329_4 + 0xF
	.byte		N08   , Cn1 , v120
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W16
	.byte		        Cn1 
	.byte	W08
	.byte	PATT
	 .word	song329_4 + 0xF
	.byte	PATT
	 .word	song329_4 + 0xF
	.byte	PATT
	 .word	song329_4 + 0xF
	.byte	PATT
	 .word	song329_4 + 0xF
	.byte	GOTO
	 .word	song329_4 + 0xF
	.byte	FINE

@**************** Track 05 ****************************@

song329_5:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		VOL   , 39*song329_mvl/mxv
	.byte		PAN   , c_v-62
	.byte	W96
	.byte		N02   , Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v060
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v056
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v060
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v056
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	song329_5 + 0x9
	.byte	PATT
	 .word	song329_5 + 0x9
	.byte		N02   , Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v060
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v060
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v060
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v056
	.byte	W08
	.byte	PATT
	 .word	song329_5 + 0x9
	.byte	PATT
	 .word	song329_5 + 0x9
	.byte	PATT
	 .word	song329_5 + 0x9
	.byte		N02   , Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v060
	.byte	W24
	.byte		        Gn5 , v056
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v060
	.byte	W08
	.byte		        Gn5 , v120
	.byte	W16
	.byte		        Gn5 , v056
	.byte	W08
	.byte	GOTO
	 .word	song329_5 + 0x9
	.byte	FINE

@**************** Track 06 ****************************@

song329_6:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		VOL   , 37*song329_mvl/mxv
	.byte		PAN   , c_v-62
	.byte	W96
	.byte	W08
	.byte		N08   , Dn6 , v120
	.byte	W88
	.byte	W08
	.byte		N08
	.byte	W88
	.byte	W08
	.byte		N08
	.byte	W88
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W48
	.byte		N08
	.byte	W16
	.byte	W96
	.byte	W08
	.byte		N08
	.byte	W88
	.byte	W08
	.byte		N08
	.byte	W88
	.byte	W08
	.byte		N08
	.byte	W16
	.byte		N08
	.byte	W72
	.byte	GOTO
	 .word	song329_6 + 0x9
	.byte	FINE

@******************************************************@
	.align	2

song329:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song329_pri	@ Priority
	.byte	song329_rev	@ Reverb.

	.word	song329_grp

	.word	song329_0
	.word	song329_1
	.word	song329_2
	.word	song329_3
	.word	song329_4
	.word	song329_5
	.word	song329_6

	.end
