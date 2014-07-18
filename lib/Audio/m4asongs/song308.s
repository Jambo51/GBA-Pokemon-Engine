@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song308_grp, group_44
	.equ	song308_pri, 0
	.equ	song308_rev, 178
	.equ	song308_mvl, 127
	.equ	song308_key, 0
	.equ	song308_tbs, 1
	.equ	song308_exg, 1
	.equ	song308_cmp, 1

	.text
	.global	song308
	.align	2

@**************** Track 00 ****************************@

song308_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 17
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song308_mvl/mxv
	.byte		N12   , Fn5 , v084
	.byte	W12
	.byte		N03   , En5 
	.byte	W12
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , As4 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N03   , En5 
	.byte	W12
	.byte		N36   , Fn5 , v084
	.byte	W09
	.byte		MOD   , 6
	.byte	W24
	.byte	W03
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		N36   , An5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		N06   , As5 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , An5 
	.byte	W06
	.byte		N84   , Gn5 
	.byte	W12
	.byte		VOL   , 79*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 68*song308_mvl/mxv
	.byte	W12
	.byte		        56*song308_mvl/mxv
	.byte	W12
	.byte		        45*song308_mvl/mxv
	.byte	W12
	.byte		        34*song308_mvl/mxv
	.byte	W12
	.byte		        22*song308_mvl/mxv
	.byte	W12
	.byte		        90*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		N36   , An5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		N06   , Gn5 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , An5 
	.byte	W06
	.byte		N84   , Cn6 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song308_mvl/mxv
	.byte	W12
	.byte		        68*song308_mvl/mxv
	.byte	W12
	.byte		        56*song308_mvl/mxv
	.byte	W12
	.byte		        45*song308_mvl/mxv
	.byte	W12
	.byte		        34*song308_mvl/mxv
	.byte	W12
	.byte		VOICE , 24
	.byte		MOD   , 0
	.byte		VOL   , 64*song308_mvl/mxv
	.byte		N06   , Fn4 , v127
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N36   , An4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		N06   , As4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , An4 
	.byte	W06
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte	W03
	.byte		        0
	.byte	W09
	.byte		N03   , An3 , v112
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        An3 , v112
	.byte	W06
	.byte		        An3 , v096
	.byte	W06
	.byte		        An3 , v108
	.byte	W12
	.byte		N06   , Fn4 , v127
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N36   , An4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , An4 
	.byte	W06
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N12   , An4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Fn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N24   , Cn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , An3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N48   , Cn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N48
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N24   , An3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOICE , 17
	.byte		VOL   , 90*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Fn5 , v084
	.byte	W12
	.byte		N03   , En5 
	.byte	W03
	.byte		        Fn5 , v068
	.byte	W03
	.byte		N06   , En5 
	.byte	W06
	.byte		        Dn5 , v084
	.byte	W12
	.byte		N12   , En5 
	.byte	W12
	.byte	GOTO
	 .word	song308_0 + 0x23
	.byte	FINE

@**************** Track 01 ****************************@

song308_1:
	.byte	KEYSH , 0
	.byte		VOICE , 21
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte		VOL   , 47*song308_mvl/mxv
	.byte	W48
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N12   , Cn4 , v127
	.byte	W96
	.byte		N24
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N48   , An3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N48   , Fn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 , v120
	.byte	W12
	.byte		        An3 , v127
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N36   , Cn4 , v120
	.byte	W12
	.byte		VOL   , 34*song308_mvl/mxv
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 23*song308_mvl/mxv
	.byte	W12
	.byte		        11*song308_mvl/mxv
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 47*song308_mvl/mxv
	.byte	W48
	.byte		N24   , Dn4 , v127
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N03   , Fn3 , v112
	.byte	W06
	.byte		        Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v108
	.byte	W06
	.byte		        Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v112
	.byte	W24
	.byte		N48   , An3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W24
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		        As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N96   , Fn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W84
	.byte		        0
	.byte		N48   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N24   , An3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte	GOTO
	 .word	song308_1 + 0x17
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song308_2:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 24*song308_mvl/mxv
	.byte	W96
	.byte		PAN   , c_v-64
	.byte		VOL   , 24*song308_mvl/mxv
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N01   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N01   , An3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N01   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N01   , An3 
	.byte	W12
	.byte		N12   , Gn3 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , As3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , As3 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , As3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , Gn3 
	.byte	W12
	.byte	PEND
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , An3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , An3 
	.byte	W12
	.byte	PEND
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , As3 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , As3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , En3 
	.byte	W12
	.byte	PATT
	 .word	song308_2 + 0x56
	.byte	PATT
	 .word	song308_2 + 0x34
	.byte		VOL   , 22*song308_mvl/mxv
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , An3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , An3 
	.byte	W12
	.byte	PATT
	 .word	song308_2 + 0x34
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N03   , As3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N12   , Fn3 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N12   , An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W60
	.byte		PAN   , c_v+63
	.byte		N12   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , An3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , An3 
	.byte	W12
	.byte	PATT
	 .word	song308_2 + 0x34
	.byte	PATT
	 .word	song308_2 + 0x56
	.byte	PATT
	 .word	song308_2 + 0x34
	.byte	GOTO
	 .word	song308_2 + 0xD
	.byte	FINE

@**************** Track 03 ****************************@

song308_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 48*song308_mvl/mxv
	.byte	W96
	.byte		VOICE , 81
	.byte		N06   , Fn1 , v120
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W42
	.byte		N03   , Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N03   , En1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W42
	.byte		N03   , Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W18
	.byte		N03   , Fn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		        As1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N24
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        An1 
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W36
	.byte		        As1 
	.byte	W36
	.byte		        Gn1 
	.byte	W24
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N36
	.byte	W12
	.byte		VOL   , 34*song308_mvl/mxv
	.byte	W06
	.byte		        22*song308_mvl/mxv
	.byte	W06
	.byte		        17*song308_mvl/mxv
	.byte	W06
	.byte		        11*song308_mvl/mxv
	.byte	W06
	.byte		VOICE , 82
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+1
	.byte		N48   , Fn5 , v048
	.byte	W12
	.byte		VOL   , 34*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song308_mvl/mxv
	.byte	W12
	.byte		        11*song308_mvl/mxv
	.byte	W06
	.byte		        4*song308_mvl/mxv
	.byte	W06
	.byte		        48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 34*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Gn5 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , An5 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , As5 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Cn6 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song308_mvl/mxv
	.byte	W12
	.byte		        11*song308_mvl/mxv
	.byte	W06
	.byte		        4*song308_mvl/mxv
	.byte	W06
	.byte		        48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N48
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 21*song308_mvl/mxv
	.byte	W12
	.byte		        11*song308_mvl/mxv
	.byte	W06
	.byte		        4*song308_mvl/mxv
	.byte	W06
	.byte		        48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , An5 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , En6 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Dn6 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 48*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , En6 
	.byte	W12
	.byte		VOL   , 33*song308_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 47*song308_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Fn5 
	.byte	W12
	.byte		N03   , En5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		N06   , En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W12
	.byte		N12   , En5 
	.byte	W12
	.byte	GOTO
	 .word	song308_3 + 0x11
	.byte		BEND  , c_v+0
	.byte	FINE

@**************** Track 04 ****************************@

song308_4:
	.byte	KEYSH , 0
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-30
	.byte		VOL   , 42*song308_mvl/mxv
	.byte	W72
	.byte		N12   , Dn4 , v120
	.byte	W12
	.byte		N03   , En4 
	.byte	W12
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		N03   , En4 , v092
	.byte	W03
	.byte		        Dn4 , v076
	.byte	W03
	.byte		        Cn4 , v064
	.byte	W03
	.byte		        As3 , v052
	.byte	W03
	.byte		        An3 , v048
	.byte	W03
	.byte		        Gn3 , v044
	.byte	W72
	.byte	W03
	.byte	PEND
	.byte		        Cn4 , v120
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		        En4 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Cn4 
	.byte	W18
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PATT
	 .word	song308_4 + 0x14
	.byte		N03   , Fn4 , v120
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	PATT
	 .word	song308_4 + 0x14
	.byte		VOL   , 21*song308_mvl/mxv
	.byte		N24   , Dn4 , v120
	.byte	W06
	.byte		VOL   , 31*song308_mvl/mxv
	.byte	W06
	.byte		        38*song308_mvl/mxv
	.byte	W06
	.byte		        45*song308_mvl/mxv
	.byte	W06
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N03   , En4 
	.byte	W06
	.byte		VOL   , 21*song308_mvl/mxv
	.byte		N24   , Dn4 
	.byte	W06
	.byte		VOL   , 33*song308_mvl/mxv
	.byte	W06
	.byte		        38*song308_mvl/mxv
	.byte	W06
	.byte		        45*song308_mvl/mxv
	.byte	W06
	.byte		N24   , Cn4 
	.byte	W06
	.byte		VOL   , 34*song308_mvl/mxv
	.byte	W06
	.byte		        22*song308_mvl/mxv
	.byte	W06
	.byte		        10*song308_mvl/mxv
	.byte	W06
	.byte		        43*song308_mvl/mxv
	.byte		N03   , Fn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En4 , v092
	.byte	W03
	.byte		        Dn4 , v076
	.byte	W03
	.byte		        Cn4 , v064
	.byte	W03
	.byte		        As3 , v052
	.byte	W03
	.byte		        An3 , v048
	.byte	W03
	.byte		        Gn3 , v044
	.byte	W48
	.byte	W03
	.byte		        Fn4 , v120
	.byte	W18
	.byte		        En4 
	.byte	W18
	.byte		        Fn4 
	.byte	W18
	.byte		        Gn4 
	.byte	W18
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		N03   , Gs4 , v092
	.byte	W03
	.byte		        Fs4 , v076
	.byte	W03
	.byte		        En4 , v064
	.byte	W03
	.byte		        Dn4 , v052
	.byte	W03
	.byte		        Cs4 , v048
	.byte	W03
	.byte		        Bn3 , v044
	.byte	W72
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song308_4 + 0x14
	.byte	FINE

@**************** Track 05 ****************************@

song308_5:
	.byte	KEYSH , 0
	.byte		VOICE , 84
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 41*song308_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W72
	.byte		N12   , As3 , v120
	.byte	W12
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N06   , An3 , v120
	.byte	W06
	.byte		N03   , Gn3 , v096
	.byte	W03
	.byte		        Fn3 , v076
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Dn3 , v060
	.byte	W03
	.byte		        Cn3 , v052
	.byte	W03
	.byte		        As2 , v048
	.byte	W72
	.byte	W03
	.byte	PEND
	.byte		        Fn3 , v120
	.byte	W18
	.byte		        Gn3 
	.byte	W18
	.byte		        An3 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Fn3 
	.byte	W18
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	PATT
	 .word	song308_5 + 0x14
	.byte		N03   , Cn4 , v120
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PATT
	 .word	song308_5 + 0x14
	.byte		N24   , Fn3 , v120
	.byte	W24
	.byte		N03   , En3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N03   , Cn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , As3 , v096
	.byte	W03
	.byte		        Gs3 , v076
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W03
	.byte		        Fn3 , v060
	.byte	W03
	.byte		        Ds3 , v052
	.byte	W03
	.byte		        Cs3 , v048
	.byte	W48
	.byte	W03
	.byte		        Cn4 , v120
	.byte	W18
	.byte		        Bn3 
	.byte	W18
	.byte		        Cn4 
	.byte	W18
	.byte		        Dn4 
	.byte	W18
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N03   , En4 , v096
	.byte	W03
	.byte		        Dn4 , v076
	.byte	W03
	.byte		        Cn4 , v064
	.byte	W03
	.byte		        As3 , v060
	.byte	W03
	.byte		        An3 , v052
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W72
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song308_5 + 0x14
	.byte	FINE

@**************** Track 06 ****************************@

song308_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 50*song308_mvl/mxv
	.byte	W42
	.byte		N03   , En1 , v100
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 , v112
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v100
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W24
	.byte		        Cs1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte	PEND
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v100
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte	PEND
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v100
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W24
	.byte	PEND
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v112
	.byte	W12
	.byte		N03   , Cs1 , v100
	.byte	W03
	.byte		        Cs1 , v092
	.byte	W03
	.byte		N06   , Cs1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 , v112
	.byte	W12
	.byte	PATT
	 .word	song308_6 + 0x1D
	.byte	PATT
	 .word	song308_6 + 0x31
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Cs1 , v100
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v100
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cs1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W06
	.byte		        Cs1 , v092
	.byte	W06
	.byte		        Fn1 , v108
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 , v112
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W24
	.byte		        Cs1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W18
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		        Cs1 , v100
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v100
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cs1 , v100
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cs1 , v100
	.byte	W06
	.byte	PATT
	 .word	song308_6 + 0x48
	.byte		N06   , En3 , v096
	.byte		N03   , Gs4 , v080
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , Gs4 , v044
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte		N24   , An4 , v088
	.byte	W24
	.byte		N06   , En3 , v096
	.byte		N03   , Gs4 , v080
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , Gs4 , v044
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte		N12   , An4 , v088
	.byte	W12
	.byte		N03   , An4 , v032
	.byte	W12
	.byte		N06   , En3 , v096
	.byte		N03   , Gs4 , v080
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , Gs4 , v044
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte		N24   , An4 , v088
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte	W12
	.byte		        En3 , v096
	.byte		N03   , Gs4 , v080
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , Gs4 , v044
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte		N12   , An4 , v088
	.byte	W12
	.byte		N03   , An4 , v032
	.byte	W12
	.byte		N06   , En3 , v096
	.byte		N03   , Gs4 , v080
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , Gs4 , v044
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte		N12   , An4 , v088
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , An4 , v032
	.byte	W12
	.byte		N06   , En3 , v096
	.byte		N03   , Gs4 , v080
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , Gs4 , v044
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte		N12   , An4 , v088
	.byte	W12
	.byte		N03   , An4 , v032
	.byte	W12
	.byte		N06   , En3 , v096
	.byte		N03   , Gs4 , v080
	.byte	W12
	.byte		N06   , Gs2 , v076
	.byte		N03   , Gs4 , v044
	.byte	W12
	.byte		N06   , Dn3 , v120
	.byte		N24   , An4 , v088
	.byte	W24
	.byte		N06   , Dn2 , v120
	.byte	W12
	.byte		        Fn1 , v112
	.byte	W12
	.byte		        En1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	GOTO
	 .word	song308_6 + 0x1D
	.byte	FINE

@**************** Track 07 ****************************@

song308_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 39*song308_mvl/mxv
	.byte	W48
	.byte		N03   , Cn5 , v092
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W18
	.byte		N03   , Cn5 , v092
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte		N03   , Cn5 , v092
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v092
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	PATT
	 .word	song308_7 + 0x1C
	.byte	W24
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		N03   , Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song308_7 + 0x84
	.byte	PATT
	 .word	song308_7 + 0x84
	.byte		N03   , Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte	GOTO
	 .word	song308_7 + 0x1C
	.byte	FINE

@**************** Track 08 ****************************@

song308_8:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 25*song308_mvl/mxv
	.byte	W60
	.byte		N12   , Gn5 , v120
	.byte	W24
	.byte		N12
	.byte	W12
	.byte	W12
	.byte		N12   , Gn5 , v120
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W36
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	W12
	.byte		N12
	.byte	W84
	.byte		N24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N12
	.byte	W36
	.byte	GOTO
	 .word	song308_8 + 0x13
	.byte	FINE

@******************************************************@
	.align	2

song308:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song308_pri	@ Priority
	.byte	song308_rev	@ Reverb.

	.word	song308_grp

	.word	song308_0
	.word	song308_1
	.word	song308_2
	.word	song308_3
	.word	song308_4
	.word	song308_5
	.word	song308_6
	.word	song308_7
	.word	song308_8

	.end
