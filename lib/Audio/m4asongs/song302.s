@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song302_grp, group_38
	.equ	song302_pri, 0
	.equ	song302_rev, 178
	.equ	song302_mvl, 127
	.equ	song302_key, 0
	.equ	song302_tbs, 1
	.equ	song302_exg, 1
	.equ	song302_cmp, 1

	.text
	.global	song302
	.align	2

@**************** Track 00 ****************************@

song302_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 80
	.byte		VOICE , 1
	.byte		PAN   , c_v-19
	.byte		VOL   , 67*song302_mvl/mxv
	.byte		N06   , Gn2 , v096
	.byte	W06
	.byte		        Cn3 , v080
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N72   , Gn3 , v088
	.byte	W72
	.byte		VOL   , 86*song302_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song302_0 + 0x23
	.byte	FINE

@**************** Track 01 ****************************@

song302_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		PAN   , c_v+16
	.byte		VOL   , 77*song302_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		N06   , Cn4 , v096
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N72   , Cn5 
	.byte	W72
	.byte		VOICE , 58
	.byte		PAN   , c_v+0
	.byte		VOL   , 51*song302_mvl/mxv
	.byte		N12   , Cn4 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 43*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 52*song302_mvl/mxv
	.byte		N06   , En4 
	.byte	W06
	.byte		N03   , Fn4 , v100
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		N09   , As3 , v120
	.byte	W12
	.byte		VOICE , 73
	.byte		VOL   , 75*song302_mvl/mxv
	.byte		N12   , Cn5 , v127
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 67*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 75*song302_mvl/mxv
	.byte		N06   , En5 
	.byte	W06
	.byte		N03   , Fn5 , v096
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		N24   , Dn5 , v127
	.byte	W12
	.byte		VOL   , 69*song302_mvl/mxv
	.byte	W12
	.byte		VOICE , 58
	.byte		VOL   , 52*song302_mvl/mxv
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		VOL   , 46*song302_mvl/mxv
	.byte		N03   , Cs4 , v088
	.byte	W03
	.byte		N21   , Cn4 , v127
	.byte	W09
	.byte		MOD   , 4
	.byte		VOL   , 53*song302_mvl/mxv
	.byte	W12
	.byte		VOICE , 73
	.byte		VOL   , 75*song302_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
	.byte		VOL   , 65*song302_mvl/mxv
	.byte	W12
	.byte		        75*song302_mvl/mxv
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N03   , Dn5 , v084
	.byte	W03
	.byte		N21   , Cn5 , v127
	.byte	W09
	.byte		MOD   , 4
	.byte		VOL   , 69*song302_mvl/mxv
	.byte	W12
	.byte		        86*song302_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , En4 
	.byte	W06
	.byte		N03   , Fn4 , v096
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N24   , Dn4 , v127
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 79*song302_mvl/mxv
	.byte	W12
	.byte		        70*song302_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 61*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 71*song302_mvl/mxv
	.byte		N06   , En5 
	.byte	W06
	.byte		N03   , Fn5 , v092
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		N12   , Dn5 , v120
	.byte	W12
	.byte		N09   , As4 
	.byte	W12
	.byte		VOL   , 86*song302_mvl/mxv
	.byte		N12   , Cn4 , v127
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N03   , Cs4 , v088
	.byte	W03
	.byte		N21   , Cn4 , v127
	.byte	W09
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 71*song302_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N03   , Cs5 , v096
	.byte	W03
	.byte		N21   , Cn5 , v127
	.byte	W09
	.byte		MOD   , 4
	.byte	W12
	.byte		VOICE , 21
	.byte		VOL   , 65*song302_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Dn4 , v127
	.byte	W24
	.byte		MOD   , 4
	.byte		VOL   , 56*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 65*song302_mvl/mxv
	.byte		N06   , As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N36   , Fn4 
	.byte	W24
	.byte		MOD   , 4
	.byte		VOL   , 56*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 65*song302_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N18   , En4 
	.byte	W18
	.byte		N03   , Dn4 , v088
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		N24   , Dn4 , v127
	.byte	W24
	.byte		N36   , Cn4 
	.byte	W24
	.byte		MOD   , 4
	.byte		VOL   , 59*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 65*song302_mvl/mxv
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N48   , Fn4 
	.byte	W24
	.byte		VOL   , 60*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 54*song302_mvl/mxv
	.byte	W12
	.byte		VOICE , 1
	.byte		MOD   , 0
	.byte		VOL   , 65*song302_mvl/mxv
	.byte		N36   , Cn5 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N48   , Fn5 
	.byte	W24
	.byte		VOL   , 60*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 54*song302_mvl/mxv
	.byte	W12
	.byte		VOICE , 58
	.byte		VOL   , 43*song302_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , As3 
	.byte	W24
	.byte		MOD   , 4
	.byte		VOL   , 37*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 43*song302_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N48   , En4 
	.byte	W36
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N03   , Cs4 , v084
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N24   , Cs4 , v127
	.byte	W24
	.byte		N36   , Cn4 
	.byte	W24
	.byte		MOD   , 4
	.byte		VOL   , 35*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 43*song302_mvl/mxv
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N36   , Fn4 
	.byte	W24
	.byte		MOD   , 4
	.byte		VOL   , 35*song302_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 43*song302_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W48
	.byte		MOD   , 4
	.byte		VOL   , 39*song302_mvl/mxv
	.byte	W06
	.byte		        37*song302_mvl/mxv
	.byte	W06
	.byte		        32*song302_mvl/mxv
	.byte	W06
	.byte		        27*song302_mvl/mxv
	.byte	W06
	.byte		        21*song302_mvl/mxv
	.byte	W06
	.byte		        16*song302_mvl/mxv
	.byte	W06
	.byte		        10*song302_mvl/mxv
	.byte	W06
	.byte		        5*song302_mvl/mxv
	.byte	W06
	.byte	GOTO
	 .word	song302_1 + 0x138
	.byte		MOD   , 0
	.byte		VOL   , 43*song302_mvl/mxv
	.byte	FINE

@**************** Track 02 ****************************@

song302_2:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		VOL   , 54*song302_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 , v052
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		N36   , Cn6 
	.byte	W06
	.byte		VOL   , 49*song302_mvl/mxv
	.byte	W03
	.byte		        44*song302_mvl/mxv
	.byte	W03
	.byte		        39*song302_mvl/mxv
	.byte	W03
	.byte		        35*song302_mvl/mxv
	.byte	W03
	.byte		        31*song302_mvl/mxv
	.byte	W03
	.byte		        26*song302_mvl/mxv
	.byte	W03
	.byte		        21*song302_mvl/mxv
	.byte	W03
	.byte		        16*song302_mvl/mxv
	.byte	W03
	.byte		        13*song302_mvl/mxv
	.byte	W03
	.byte		        10*song302_mvl/mxv
	.byte	W03
	.byte		VOICE , 48
	.byte		VOL   , 54*song302_mvl/mxv
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn5 , v104
	.byte	W24
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N24   , Fn5 , v092
	.byte	W12
	.byte		VOL   , 48*song302_mvl/mxv
	.byte	W03
	.byte		        37*song302_mvl/mxv
	.byte	W03
	.byte		        28*song302_mvl/mxv
	.byte	W03
	.byte		        16*song302_mvl/mxv
	.byte	W15
	.byte		        54*song302_mvl/mxv
	.byte	W24
	.byte		N06   , Cn4 , v104
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N24   , Fn4 , v100
	.byte	W12
	.byte		VOL   , 48*song302_mvl/mxv
	.byte	W03
	.byte		        37*song302_mvl/mxv
	.byte	W03
	.byte		        28*song302_mvl/mxv
	.byte	W03
	.byte		        16*song302_mvl/mxv
	.byte	W03
	.byte		        54*song302_mvl/mxv
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		VOL   , 43*song302_mvl/mxv
	.byte		N03   , Gn3 , v127
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Cn4 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Gs3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , As3 , v127
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , As3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , As3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , As3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song302_2 + 0x12D
	.byte		PAN   , c_v+32
	.byte		N03   , An3 , v127
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , An3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , An3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , An3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+32
	.byte		N03   , An3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Gn3 , v127
	.byte	W12
	.byte		N06   , As3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song302_2 + 0x196
	.byte	PATT
	 .word	song302_2 + 0x154
	.byte		PAN   , c_v+32
	.byte		VOL   , 50*song302_mvl/mxv
	.byte		N03   , An3 , v127
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte	GOTO
	 .word	song302_2 + 0x12D
	.byte		VOL   , 45*song302_mvl/mxv
	.byte	FINE

@**************** Track 03 ****************************@

song302_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 59*song302_mvl/mxv
	.byte	W96
	.byte		N36   , Fn1 , v127
	.byte	W36
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N03   , Fn2 
	.byte	W12
	.byte		N18   , Fn1 
	.byte	W24
	.byte	PEND
	.byte		N36   , Fn1 , v127
	.byte	W36
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N03   , Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W12
	.byte	PEND
	.byte		N36
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N36   , Fn1 , v127
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte		N03   , Gn1 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song302_3 + 0x9
	.byte	PATT
	 .word	song302_3 + 0x17
	.byte	PATT
	 .word	song302_3 + 0x33
	.byte		N36   , Fn1 , v127
	.byte	W36
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		VOICE , 83
	.byte		VOL   , 56*song302_mvl/mxv
	.byte		N24   , Gn1 , v127
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N03   , As1 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N03   , As1 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N03   , En1 
	.byte	W12
	.byte		N24   , Gn1 , v127
	.byte	W24
	.byte		N03   , Fn2 , v120
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte	W24
	.byte		N03   , An1 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song302_3 + 0x81
	.byte		N24   , Fn1 , v127
	.byte	W24
	.byte		N03   , En2 , v120
	.byte	W12
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		N03   , Gn1 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , En2 , v120
	.byte	W12
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N03   , Gn1 , v120
	.byte	W12
	.byte		N24   , Gn1 , v127
	.byte	W24
	.byte		N03   , Cn2 , v120
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte	W24
	.byte		N03   , An1 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte	PATT
	 .word	song302_3 + 0x81
	.byte	GOTO
	 .word	song302_3 + 0x5D
	.byte	FINE

@**************** Track 04 ****************************@

song302_4:
	.byte	KEYSH , 0
	.byte		VOICE , 58
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte	W96
	.byte		VOL   , 27*song302_mvl/mxv
	.byte		N12   , Fn3 , v120
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , An3 
	.byte	W06
	.byte		N03   , As3 , v088
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		N12   , Gn3 , v120
	.byte	W12
	.byte		N09   , Fn3 
	.byte	W09
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N60   , Cn4 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 23*song302_mvl/mxv
	.byte	W06
	.byte		        20*song302_mvl/mxv
	.byte	W06
	.byte		        18*song302_mvl/mxv
	.byte	W06
	.byte		        16*song302_mvl/mxv
	.byte	W06
	.byte		        27*song302_mvl/mxv
	.byte		N06   , As3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N03   , Cn4 , v096
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N24   , An3 , v120
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N03   , Gs3 , v088
	.byte	W03
	.byte		N21   , Gn3 , v120
	.byte	W09
	.byte		MOD   , 4
	.byte	W12
	.byte		VOICE , 73
	.byte		VOL   , 43*song302_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , As4 
	.byte	W12
	.byte		N03   , Bn4 , v092
	.byte	W03
	.byte		N21   , As4 , v120
	.byte	W09
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , An3 
	.byte	W06
	.byte		N03   , As3 , v096
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		N24   , Gn3 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , An4 
	.byte	W06
	.byte		N03   , As4 , v096
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn4 , v120
	.byte	W12
	.byte		N09   , Fn4 
	.byte	W09
	.byte		N03   , Cs5 , v092
	.byte	W03
	.byte		N60   , Cn5 , v120
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 37*song302_mvl/mxv
	.byte	W06
	.byte		        31*song302_mvl/mxv
	.byte	W06
	.byte		        23*song302_mvl/mxv
	.byte	W06
	.byte		        16*song302_mvl/mxv
	.byte	W06
	.byte		        42*song302_mvl/mxv
	.byte		N12   , Gn4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N03   , Fn4 , v088
	.byte	W03
	.byte		N21   , En4 , v120
	.byte	W21
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , As4 
	.byte	W12
	.byte		N03   , Bn4 , v088
	.byte	W03
	.byte		N21   , As4 , v120
	.byte	W09
	.byte		MOD   , 4
	.byte	W12
	.byte		VOICE , 21
	.byte		VOL   , 54*song302_mvl/mxv
	.byte		PAN   , c_v-17
	.byte		MOD   , 0
	.byte		N36   , Fn3 , v120
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N36   , As3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 , v096
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		        As3 , v096
	.byte	W12
	.byte		        Dn4 , v120
	.byte	W12
	.byte		N03   , Gs3 , v096
	.byte	W03
	.byte		N09   , Gn3 , v120
	.byte	W09
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N36   , An3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		VOICE , 73
	.byte		N36   , En3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N36   , Gn3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 , v096
	.byte	W12
	.byte		        Cn4 , v120
	.byte	W12
	.byte		        As3 , v096
	.byte	W12
	.byte		        Cn4 , v120
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N36   , An3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N36   , Cn4 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	GOTO
	 .word	song302_4 + 0x10A
	.byte	FINE

@**************** Track 05 ****************************@

song302_5:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 37*song302_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-59
	.byte		N06   , Fn5 , v080
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As5 , v120
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N06   , An5 , v084
	.byte	W09
	.byte		PAN   , c_v-61
	.byte	W03
	.byte		N06   , As5 , v120
	.byte	W36
	.byte		        Fn5 , v084
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As5 , v120
	.byte	W12
	.byte		        Dn5 , v076
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , As5 , v120
	.byte	W12
	.byte		        As4 , v080
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As5 , v120
	.byte	W36
	.byte		PAN   , c_v-59
	.byte		N06   , Cn5 , v080
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn5 , v120
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N06   , En5 , v084
	.byte	W09
	.byte		PAN   , c_v-61
	.byte	W03
	.byte		N06   , Fn5 , v120
	.byte	W36
	.byte	PEND
	.byte		N06   , Cn5 , v084
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn5 , v120
	.byte	W12
	.byte		        An4 , v076
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Fn5 , v120
	.byte	W12
	.byte		        Fn4 , v080
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn5 , v120
	.byte	W12
	.byte		        En5 , v072
	.byte	W12
	.byte		        Fn5 , v120
	.byte	W03
	.byte		PAN   , c_v-61
	.byte	W09
	.byte	PEND
	.byte		        c_v-59
	.byte		N06   , Cn5 , v080
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v120
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N06   , Fs5 , v084
	.byte	W09
	.byte		PAN   , c_v-61
	.byte	W03
	.byte		N06   , Gn5 , v120
	.byte	W36
	.byte		        Cn5 , v084
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        Fs5 , v076
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Gn5 , v120
	.byte	W12
	.byte		        En5 , v080
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn5 , v120
	.byte	W36
	.byte	PATT
	 .word	song302_5 + 0x45
	.byte	PATT
	 .word	song302_5 + 0x5F
	.byte	GOTO
	 .word	song302_5 + 0x11
	.byte	FINE

@**************** Track 06 ****************************@

song302_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song302_mvl/mxv
	.byte	W84
	.byte		N06   , Dn3 , v120
	.byte	W06
	.byte		        Dn3 , v092
	.byte	W06
	.byte		N06   , En3 , v120
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Dn3 , v096
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte		N06   , En3 , v120
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song302_6 + 0x10
	.byte		N06   , En3 , v120
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn3 , v096
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song302_6 + 0x10
	.byte	PATT
	 .word	song302_6 + 0x20
	.byte	PATT
	 .word	song302_6 + 0x10
	.byte		N06   , En3 , v120
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn1 
	.byte		N06   , Dn3 , v096
	.byte	W12
	.byte		        Fn1 , v127
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn1 , v127
	.byte	W06
	.byte		        Dn1 , v104
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PEND
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PATT
	 .word	song302_6 + 0x78
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		        Gs1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte	PATT
	 .word	song302_6 + 0x78
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W12
	.byte	PATT
	 .word	song302_6 + 0x78
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		        Cn2 , v100
	.byte	W12
	.byte		        An1 , v120
	.byte	W12
	.byte	GOTO
	 .word	song302_6 + 0x78
	.byte	FINE

@**************** Track 07 ****************************@

song302_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 38*song302_mvl/mxv
	.byte	W48
	.byte		N06   , Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		N06   , Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song302_7 + 0x16
	.byte	PATT
	 .word	song302_7 + 0x16
	.byte	PATT
	 .word	song302_7 + 0x16
	.byte	PATT
	 .word	song302_7 + 0x16
	.byte	PATT
	 .word	song302_7 + 0x16
	.byte	PATT
	 .word	song302_7 + 0x16
	.byte	PATT
	 .word	song302_7 + 0x16
	.byte		N06   , Cn5 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W06
	.byte	PEND
	.byte		N06   , Cn5 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song302_7 + 0x53
	.byte	PATT
	 .word	song302_7 + 0x63
	.byte	PATT
	 .word	song302_7 + 0x53
	.byte		N06   , Cn5 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W42
	.byte	PATT
	 .word	song302_7 + 0x53
	.byte		N06   , Cn5 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	GOTO
	 .word	song302_7 + 0x53
	.byte	FINE

@**************** Track 08 ****************************@

song302_8:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		PAN   , c_v+0
	.byte		VOL   , 38*song302_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N12   , Gn5 , v120
	.byte	W48
	.byte		N12
	.byte	W36
	.byte	PEND
	.byte	W12
	.byte		N12   , Gn5 , v120
	.byte	W48
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song302_8 + 0x11
	.byte	PATT
	 .word	song302_8 + 0x19
	.byte	PATT
	 .word	song302_8 + 0x11
	.byte	PATT
	 .word	song302_8 + 0x19
	.byte	PATT
	 .word	song302_8 + 0x11
	.byte	W12
	.byte		N12   , Gn5 , v120
	.byte	W72
	.byte		N12
	.byte	W12
	.byte	GOTO
	 .word	song302_8 + 0x11
	.byte	FINE

@******************************************************@
	.align	2

song302:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song302_pri	@ Priority
	.byte	song302_rev	@ Reverb.

	.word	song302_grp

	.word	song302_0
	.word	song302_1
	.word	song302_2
	.word	song302_3
	.word	song302_4
	.word	song302_5
	.word	song302_6
	.word	song302_7
	.word	song302_8

	.end
