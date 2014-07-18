@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song333_grp, group_62
	.equ	song333_pri, 0
	.equ	song333_rev, 178
	.equ	song333_mvl, 127
	.equ	song333_key, 0
	.equ	song333_tbs, 1
	.equ	song333_exg, 1
	.equ	song333_cmp, 1

	.text
	.global	song333
	.align	2

@**************** Track 00 ****************************@

song333_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 62
	.byte		VOICE , 60
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-28
	.byte		VOL   , 76*song333_mvl/mxv
	.byte	W24
	.byte		N23   , Gn3 , v064
	.byte	W12
	.byte		VOL   , 70*song333_mvl/mxv
	.byte	W03
	.byte		        62*song333_mvl/mxv
	.byte	W03
	.byte		        50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W12
	.byte		        76*song333_mvl/mxv
	.byte		N23
	.byte	W12
	.byte		VOL   , 70*song333_mvl/mxv
	.byte	W03
	.byte		        62*song333_mvl/mxv
	.byte	W03
	.byte		        50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W03
	.byte		        20*song333_mvl/mxv
	.byte	W32
	.byte	W01
	.byte		        76*song333_mvl/mxv
	.byte		N23
	.byte	W12
	.byte		VOL   , 70*song333_mvl/mxv
	.byte	W03
	.byte		        62*song333_mvl/mxv
	.byte	W03
	.byte		        50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W12
	.byte		        76*song333_mvl/mxv
	.byte		N23
	.byte	W12
	.byte		VOL   , 70*song333_mvl/mxv
	.byte	W03
	.byte		        62*song333_mvl/mxv
	.byte	W03
	.byte		        50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W03
	.byte		        20*song333_mvl/mxv
	.byte	W09
	.byte		        54*song333_mvl/mxv
	.byte		N23   , An3 
	.byte	W06
	.byte		VOL   , 57*song333_mvl/mxv
	.byte	W03
	.byte		        63*song333_mvl/mxv
	.byte	W03
	.byte		        66*song333_mvl/mxv
	.byte	W03
	.byte		        74*song333_mvl/mxv
	.byte	W09
	.byte		VOL   , 73*song333_mvl/mxv
	.byte		N32   , Bn3 , v064
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N32   , Gn4 , v064
	.byte	W36
	.byte		N23   , Fn4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		N23   , Gn4 
	.byte	W24
	.byte	PEND
	.byte		N32   , En4 , v064
	.byte	W36
	.byte		N11   , Cn4 
	.byte	W12
	.byte		N15   , Gn3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte	PEND
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N05   , Bn3 
	.byte	W06
	.byte		N44   , Dn4 
	.byte	W48
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N32
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		N23   , Gn3 
	.byte	W24
	.byte	PATT
	 .word	song333_0 + 0x65
	.byte	PATT
	 .word	song333_0 + 0x73
	.byte		N17   , Gn3 , v064
	.byte	W18
	.byte		N05   , Bn3 
	.byte	W06
	.byte		N44   , Dn4 
	.byte	W24
	.byte		VOL   , 68*song333_mvl/mxv
	.byte	W06
	.byte		        64*song333_mvl/mxv
	.byte	W06
	.byte		        59*song333_mvl/mxv
	.byte	W06
	.byte		        55*song333_mvl/mxv
	.byte	W06
	.byte		        73*song333_mvl/mxv
	.byte		N23   , Bn3 
	.byte	W24
	.byte		N17   , Dn4 
	.byte	W18
	.byte		N05   , Fs4 
	.byte	W06
	.byte		N68   , Gn4 
	.byte	W24
	.byte		VOL   , 68*song333_mvl/mxv
	.byte	W24
	.byte		        59*song333_mvl/mxv
	.byte	W06
	.byte		        53*song333_mvl/mxv
	.byte	W06
	.byte		        46*song333_mvl/mxv
	.byte	W06
	.byte		        40*song333_mvl/mxv
	.byte	W06
	.byte		        73*song333_mvl/mxv
	.byte		N15   , Fn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Dn3 
	.byte	W16
	.byte		N44   , Cn3 
	.byte	W15
	.byte		VOL   , 64*song333_mvl/mxv
	.byte	W09
	.byte		        59*song333_mvl/mxv
	.byte	W06
	.byte		        55*song333_mvl/mxv
	.byte	W06
	.byte		        50*song333_mvl/mxv
	.byte	W06
	.byte		        45*song333_mvl/mxv
	.byte	W06
	.byte		        73*song333_mvl/mxv
	.byte		N68   , Fn3 
	.byte	W72
	.byte		N23   , An3 
	.byte	W24
	.byte		N11   , Gn3 
	.byte	W12
	.byte		N44   , Dn3 
	.byte	W60
	.byte		N23   , An3 
	.byte	W24
	.byte		N17   , Gn3 
	.byte	W18
	.byte		N05   , An3 
	.byte	W06
	.byte		N44   , Bn3 
	.byte	W48
	.byte		N23   , Gn3 
	.byte	W24
	.byte	W12
	.byte		N05   , Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N44   , Fn3 
	.byte	W48
	.byte		N23   , An3 
	.byte	W24
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N44   , An3 
	.byte	W48
	.byte		N23   , Cn4 
	.byte	W24
	.byte	W12
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N68   , Dn4 
	.byte	W24
	.byte		VOL   , 69*song333_mvl/mxv
	.byte	W06
	.byte		        65*song333_mvl/mxv
	.byte	W06
	.byte		        60*song333_mvl/mxv
	.byte	W06
	.byte		        55*song333_mvl/mxv
	.byte	W06
	.byte		        51*song333_mvl/mxv
	.byte	W06
	.byte		        47*song333_mvl/mxv
	.byte	W06
	.byte		        43*song333_mvl/mxv
	.byte	W06
	.byte		        37*song333_mvl/mxv
	.byte	W06
	.byte		        73*song333_mvl/mxv
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N68   , Gn4 
	.byte	W24
	.byte		VOL   , 66*song333_mvl/mxv
	.byte	W06
	.byte		        60*song333_mvl/mxv
	.byte	W06
	.byte		        54*song333_mvl/mxv
	.byte	W06
	.byte		        47*song333_mvl/mxv
	.byte	W06
	.byte		        42*song333_mvl/mxv
	.byte	W06
	.byte		        36*song333_mvl/mxv
	.byte	W06
	.byte		        28*song333_mvl/mxv
	.byte	W06
	.byte		        22*song333_mvl/mxv
	.byte	W06
	.byte	GOTO
	 .word	song333_0 + 0x5A
	.byte	FINE

@**************** Track 01 ****************************@

song333_1:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 78*song333_mvl/mxv
	.byte		PAN   , c_v-7
	.byte	W24
	.byte		VOL   , 80*song333_mvl/mxv
	.byte		N92   , Cn4 , v088
	.byte	W24
	.byte		VOL   , 74*song333_mvl/mxv
	.byte	W05
	.byte		        71*song333_mvl/mxv
	.byte	W07
	.byte		        69*song333_mvl/mxv
	.byte	W05
	.byte		        65*song333_mvl/mxv
	.byte	W07
	.byte		        61*song333_mvl/mxv
	.byte	W05
	.byte		        57*song333_mvl/mxv
	.byte	W07
	.byte		        54*song333_mvl/mxv
	.byte	W05
	.byte		        51*song333_mvl/mxv
	.byte	W07
	.byte		        47*song333_mvl/mxv
	.byte	W05
	.byte		        43*song333_mvl/mxv
	.byte	W07
	.byte		        39*song333_mvl/mxv
	.byte	W05
	.byte		        35*song333_mvl/mxv
	.byte	W07
	.byte		        80*song333_mvl/mxv
	.byte		N92   , Dn4 
	.byte	W24
	.byte		VOL   , 74*song333_mvl/mxv
	.byte	W05
	.byte		        71*song333_mvl/mxv
	.byte	W07
	.byte		        69*song333_mvl/mxv
	.byte	W05
	.byte		        65*song333_mvl/mxv
	.byte	W07
	.byte		        61*song333_mvl/mxv
	.byte	W05
	.byte		        57*song333_mvl/mxv
	.byte	W07
	.byte		        54*song333_mvl/mxv
	.byte	W05
	.byte		        51*song333_mvl/mxv
	.byte	W07
	.byte		        47*song333_mvl/mxv
	.byte	W05
	.byte		        43*song333_mvl/mxv
	.byte	W07
	.byte		        39*song333_mvl/mxv
	.byte	W05
	.byte		        35*song333_mvl/mxv
	.byte	W07
	.byte		PAN   , c_v-7
	.byte		VOL   , 62*song333_mvl/mxv
	.byte		N60   , Gn4 , v088
	.byte	W64
	.byte		N15   , Dn4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte		N60   , Dn5 , v088
	.byte	W64
	.byte		N15   , Fn5 
	.byte	W16
	.byte		        En5 
	.byte	W16
	.byte	PEND
	.byte		N68   , Cn5 , v088
	.byte	W72
	.byte		N23   , En5 
	.byte	W24
	.byte	PEND
	.byte		N17   , Dn5 
	.byte	W18
	.byte		N05   , Cn5 
	.byte	W06
	.byte		N44   , Bn4 
	.byte	W48
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N18   , Gn4 
	.byte	W16
	.byte		N15   , Dn4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte	PATT
	 .word	song333_1 + 0x56
	.byte	PATT
	 .word	song333_1 + 0x60
	.byte		N17   , Dn5 , v088
	.byte	W18
	.byte		N05   , Cn5 
	.byte	W06
	.byte		N68   , Bn4 
	.byte	W72
	.byte		N92
	.byte	W96
	.byte		VOICE , 1
	.byte		VOL   , 74*song333_mvl/mxv
	.byte		N15   , Cn4 , v127
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 , v124
	.byte	W16
	.byte		N44   , Fn3 
	.byte	W48
	.byte		VOICE , 56
	.byte		VOL   , 74*song333_mvl/mxv
	.byte		PAN   , c_v+22
	.byte	W12
	.byte		N05   , Fn4 , v088
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N44   , Fn5 
	.byte	W12
	.byte		VOL   , 70*song333_mvl/mxv
	.byte	W06
	.byte		        64*song333_mvl/mxv
	.byte	W06
	.byte		        56*song333_mvl/mxv
	.byte	W06
	.byte		        51*song333_mvl/mxv
	.byte	W06
	.byte		        44*song333_mvl/mxv
	.byte	W06
	.byte		        40*song333_mvl/mxv
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 62*song333_mvl/mxv
	.byte		PAN   , c_v-6
	.byte	W12
	.byte		N23   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		N44   , Dn5 
	.byte	W48
	.byte		VOICE , 1
	.byte		N15   , Cn4 , v127
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		        Cn5 
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		VOICE , 48
	.byte		PAN   , c_v-21
	.byte		N60   , Bn4 , v096
	.byte	W64
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		N92   , Dn5 
	.byte	W48
	.byte		VOL   , 56*song333_mvl/mxv
	.byte	W06
	.byte		        52*song333_mvl/mxv
	.byte	W06
	.byte		        47*song333_mvl/mxv
	.byte	W06
	.byte		        42*song333_mvl/mxv
	.byte	W06
	.byte		        37*song333_mvl/mxv
	.byte	W06
	.byte		        30*song333_mvl/mxv
	.byte	W06
	.byte		        27*song333_mvl/mxv
	.byte	W06
	.byte		        23*song333_mvl/mxv
	.byte	W06
	.byte	GOTO
	 .word	song333_1 + 0x49
	.byte	FINE

@**************** Track 02 ****************************@

song333_2:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-60
	.byte		VOL   , 55*song333_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v-59
	.byte		N23   , Cn3 , v064
	.byte	W12
	.byte		VOL   , 50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W03
	.byte		        20*song333_mvl/mxv
	.byte	W03
	.byte		        10*song333_mvl/mxv
	.byte	W12
	.byte		        53*song333_mvl/mxv
	.byte		N23
	.byte	W12
	.byte		VOL   , 50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W03
	.byte		        20*song333_mvl/mxv
	.byte	W03
	.byte		        10*song333_mvl/mxv
	.byte	W36
	.byte		        53*song333_mvl/mxv
	.byte		N23   , Bn2 
	.byte	W12
	.byte		VOL   , 50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W03
	.byte		        20*song333_mvl/mxv
	.byte	W03
	.byte		        10*song333_mvl/mxv
	.byte	W12
	.byte		        53*song333_mvl/mxv
	.byte		N23
	.byte	W12
	.byte		VOL   , 50*song333_mvl/mxv
	.byte	W03
	.byte		        40*song333_mvl/mxv
	.byte	W03
	.byte		        30*song333_mvl/mxv
	.byte	W03
	.byte		        20*song333_mvl/mxv
	.byte	W03
	.byte		        10*song333_mvl/mxv
	.byte	W12
	.byte		        32*song333_mvl/mxv
	.byte		N23   , An2 
	.byte	W06
	.byte		VOL   , 37*song333_mvl/mxv
	.byte	W03
	.byte		        42*song333_mvl/mxv
	.byte	W03
	.byte		        49*song333_mvl/mxv
	.byte	W03
	.byte		        52*song333_mvl/mxv
	.byte	W03
	.byte		        53*song333_mvl/mxv
	.byte	W06
	.byte		VOL   , 53*song333_mvl/mxv
	.byte		N23   , Gn2 , v064
	.byte	W24
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , As2 
	.byte	W24
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N11   , Dn3 , v064
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N05   , Dn2 
	.byte	W12
	.byte		N23   , Dn3 
	.byte	W24
	.byte		N11   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N23   , As2 
	.byte	W24
	.byte		N05   , Fn2 
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W24
	.byte		N11   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N05   , Gn2 
	.byte	W12
	.byte		N23   , En3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PATT
	 .word	song333_2 + 0x8B
	.byte		N11   , Dn3 , v064
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		VOICE , 1
	.byte		N15   , Cn5 , v068
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		VOICE , 48
	.byte		N23   , An2 , v064
	.byte	W24
	.byte		N11   , Fn2 
	.byte	W12
	.byte		N23   , Cn3 
	.byte	W24
	.byte		N11   , Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		N23   , Bn2 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N23   , Gn3 
	.byte	W24
	.byte		N11   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		VOICE , 1
	.byte		PAN   , c_v-38
	.byte		N15   , Cn5 , v076
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		        Fn5 
	.byte	W16
	.byte		        En5 
	.byte	W16
	.byte		        Dn5 
	.byte	W16
	.byte		        An5 
	.byte	W16
	.byte		        Gn5 
	.byte	W16
	.byte		        Fn5 
	.byte	W16
	.byte		        Cn6 
	.byte	W16
	.byte		        Bn5 
	.byte	W16
	.byte		        An5 
	.byte	W16
	.byte		N24   , Bn5 
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N24   , Bn5 , v048
	.byte	W24
	.byte		PAN   , c_v-40
	.byte		N15   , Bn5 , v044
	.byte	W16
	.byte		        Gn5 , v100
	.byte	W16
	.byte		        Bn5 
	.byte	W16
	.byte		N23   , Dn6 , v088
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N11   , Dn6 , v048
	.byte	W12
	.byte		VOICE , 48
	.byte		PAN   , c_v-41
	.byte		N23   , Gn2 
	.byte	W24
	.byte		N11   , Dn2 , v056
	.byte	W12
	.byte		        Gn2 , v064
	.byte	W12
	.byte		        Dn2 , v072
	.byte	W12
	.byte	GOTO
	 .word	song333_2 + 0x58
	.byte	FINE

@**************** Track 03 ****************************@

song333_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song333_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W24
	.byte		N80   , Cn1 , v120
	.byte	W24
	.byte		VOL   , 51*song333_mvl/mxv
	.byte	W05
	.byte		        45*song333_mvl/mxv
	.byte	W07
	.byte		        41*song333_mvl/mxv
	.byte	W05
	.byte		        37*song333_mvl/mxv
	.byte	W07
	.byte		        34*song333_mvl/mxv
	.byte	W05
	.byte		        29*song333_mvl/mxv
	.byte	W07
	.byte		        25*song333_mvl/mxv
	.byte	W05
	.byte		        20*song333_mvl/mxv
	.byte	W07
	.byte		        14*song333_mvl/mxv
	.byte	W05
	.byte		        10*song333_mvl/mxv
	.byte	W07
	.byte		        6*song333_mvl/mxv
	.byte		N06   , Cs1 
	.byte	W05
	.byte		VOL   , 3*song333_mvl/mxv
	.byte	W07
	.byte		        68*song333_mvl/mxv
	.byte		N72   , Dn1 
	.byte	W24
	.byte		VOL   , 51*song333_mvl/mxv
	.byte	W05
	.byte		        45*song333_mvl/mxv
	.byte	W07
	.byte		        41*song333_mvl/mxv
	.byte	W05
	.byte		        37*song333_mvl/mxv
	.byte	W07
	.byte		        34*song333_mvl/mxv
	.byte	W05
	.byte		        29*song333_mvl/mxv
	.byte	W07
	.byte		        25*song333_mvl/mxv
	.byte	W05
	.byte		        20*song333_mvl/mxv
	.byte	W07
	.byte		        14*song333_mvl/mxv
	.byte	W05
	.byte		        10*song333_mvl/mxv
	.byte	W07
	.byte		        6*song333_mvl/mxv
	.byte	W05
	.byte		        3*song333_mvl/mxv
	.byte	W07
	.byte		VOL   , 68*song333_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N15   , Gn1 , v120
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N30
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		BEND  , c_v-6
	.byte		N15   , Fn1 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N15   , En1 
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N24
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N18   , Dn1 
	.byte	W18
	.byte		        Dn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , An1 
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N15   , Dn2 
	.byte	W18
	.byte		N06   , Gn1 
	.byte	W18
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , An1 
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N15   , Fn1 
	.byte	W18
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N06   , Fn1 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , En2 
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N12   , Cn2 
	.byte	W06
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte		N18   , En1 
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N18   , Cn2 
	.byte	W18
	.byte		        Bn1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N18   , Dn1 
	.byte	W18
	.byte		        Dn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W24
	.byte		        An1 
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , An1 
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N15   , Dn1 
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N03   , Cs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N15   , Dn1 
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N24   , Bn1 
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W06
	.byte		        c_v+0
	.byte	W12
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , En1 
	.byte	W06
	.byte		BEND  , c_v-11
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte	GOTO
	 .word	song333_3 + 0x4C
	.byte	FINE

@**************** Track 04 ****************************@

song333_4:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 57*song333_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W24
	.byte		N92   , Cn4 , v088
	.byte	W96
	.byte		        Dn4 
	.byte	W96
	.byte		N60   , Gn4 , v088
	.byte	W64
	.byte		N15   , Dn4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte		N60   , Dn5 , v088
	.byte	W64
	.byte		N15   , Fn5 
	.byte	W16
	.byte		        En5 
	.byte	W16
	.byte	PEND
	.byte		N68   , Cn5 , v088
	.byte	W72
	.byte		N23   , En5 
	.byte	W24
	.byte	PEND
	.byte		N17   , Dn5 
	.byte	W18
	.byte		N05   , Cn5 
	.byte	W06
	.byte		N44   , Bn4 
	.byte	W48
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N48   , Bn4 
	.byte	W48
	.byte		N18   , Gn4 
	.byte	W16
	.byte		N15   , Dn4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte	PATT
	 .word	song333_4 + 0x1C
	.byte	PATT
	 .word	song333_4 + 0x26
	.byte		N17   , Dn5 , v088
	.byte	W18
	.byte		N05   , Cn5 
	.byte	W06
	.byte		N68   , Bn4 
	.byte	W72
	.byte		N92
	.byte	W96
	.byte		N15   , Cn4 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		N44   , Fn3 
	.byte	W48
	.byte	W12
	.byte		N05   , Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N44   , Fn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 40*song333_mvl/mxv
	.byte	W24
	.byte		        57*song333_mvl/mxv
	.byte		MOD   , 0
	.byte	W12
	.byte		N23   , Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N11   , An4 
	.byte	W12
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		N44   , Dn5 
	.byte	W48
	.byte		N15   , Cn4 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		        Cn5 
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		N60   , Bn4 
	.byte	W64
	.byte		N15   , Gn4 
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte		N92   , Dn5 
	.byte	W96
	.byte	GOTO
	 .word	song333_4 + 0x13
	.byte	FINE

@**************** Track 05 ****************************@

song333_5:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 37*song333_mvl/mxv
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		VOICE , 80
	.byte	W21
	.byte		N01   , Gn2 , v120
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		N06   , Cs3 , v120
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N01
	.byte		N01   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn2 
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn3 
	.byte	W03
	.byte		N01   , Fn2 
	.byte	W01
	.byte		        An2 
	.byte	W02
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn3 
	.byte	W03
	.byte		N01   , En2 
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		N06   , Bn2 , v120
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N01   , Cn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        En2 
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W03
	.byte		N01   , Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte	PEND
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn2 
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn2 
	.byte	W01
	.byte		        Bn2 
	.byte	W02
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N01   , Fn2 
	.byte	W01
	.byte		        An2 
	.byte	W02
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W03
	.byte		N01   , En2 
	.byte	W01
	.byte		        Gn2 
	.byte	W02
	.byte	PATT
	 .word	song333_5 + 0x74
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Fn2 
	.byte	W01
	.byte		        An2 
	.byte	W02
	.byte		N03   , Cn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N13
	.byte	W15
	.byte		N01   , Fn2 
	.byte	W01
	.byte		        An2 
	.byte	W02
	.byte		N03   , Cn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04   , Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W03
	.byte		N01   , Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N03   , Gn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Bn3 
	.byte	W12
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N01   , Cs3 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Fn3 
	.byte	W12
	.byte		N02   , Cn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Dn3 
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N01   , Dn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Gn3 
	.byte	W12
	.byte		N01
	.byte	W06
	.byte	GOTO
	 .word	song333_5 + 0x1D
	.byte	FINE

@**************** Track 06 ****************************@

song333_6:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 42*song333_mvl/mxv
	.byte		PAN   , c_v+38
	.byte	W24
	.byte		N96   , En2 , v120
	.byte	W96
	.byte		N92   , Dn2 
	.byte	W72
	.byte		VOICE , 24
	.byte	W21
	.byte		N01   , Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Fn3 
	.byte	W03
	.byte		N01   , An2 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Ds3 
	.byte	W03
	.byte		N01   , Gn2 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte		N06   , Ds3 , v120
	.byte	W06
	.byte		N03   , En3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N01   , En3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn2 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N03   , En3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		N01   , Dn3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte	PEND
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N01   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Dn3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Bn2 
	.byte	W01
	.byte		        Dn3 
	.byte	W02
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N01   , Dn4 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N01   , An2 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N01   , Fn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W06
	.byte		N01   , As3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		N01   , Gn2 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte	PATT
	 .word	song333_6 + 0x76
	.byte		N06   , As3 , v120
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N01   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Dn3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N01   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        An2 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte		N03   , Fn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N13
	.byte	W15
	.byte		N01   , An2 
	.byte	W01
	.byte		        Cn3 
	.byte	W02
	.byte		N03   , Fn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04   , Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		N01   , Dn3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		N03   , Bn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Dn4 
	.byte	W12
	.byte		N01   , Bn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , An3 
	.byte	W12
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N03   , Fn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , An3 
	.byte	W12
	.byte		N02   , Fn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Fs3 
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W18
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Bn3 
	.byte	W12
	.byte		N01   , Gn3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N10   , Bn3 
	.byte	W12
	.byte		N01
	.byte	W06
	.byte	GOTO
	 .word	song333_6 + 0x21
	.byte	FINE

@**************** Track 07 ****************************@

song333_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 68*song333_mvl/mxv
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte		N24   , Cn1 , v120
	.byte	W36
	.byte		N44
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N20
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn1 , v127
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v044
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N30
	.byte	W36
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N24
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn1 , v084
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N24
	.byte	W30
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn1 , v084
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N18
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N18
	.byte	W36
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v127
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N18
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn1 , v076
	.byte	W06
	.byte		        Dn1 , v056
	.byte	W06
	.byte		        Dn1 , v036
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N18
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N24
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W12
	.byte		        Fn1 
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N18
	.byte	W18
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 , v104
	.byte	W06
	.byte		N05   , Dn1 , v124
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N18   , Cn1 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W30
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte	GOTO
	 .word	song333_7 + 0x29
	.byte	FINE

@**************** Track 08 ****************************@

song333_8:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 37*song333_mvl/mxv
	.byte	W24
	.byte		N01   , Cn5 , v127
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W18
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W42
	.byte	PEND
	.byte		N01   , Cn5 , v127
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W18
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W24
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song333_8 + 0x12
	.byte	PATT
	 .word	song333_8 + 0x21
	.byte		N01   , Cn5 , v127
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W18
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W18
	.byte		N02   , Cn5 , v120
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte	PATT
	 .word	song333_8 + 0x21
	.byte	PATT
	 .word	song333_8 + 0x12
	.byte	PATT
	 .word	song333_8 + 0x21
	.byte		N01   , Cn5 , v127
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W18
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N02   , Cn5 , v120
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song333_8 + 0x21
	.byte	PATT
	 .word	song333_8 + 0x67
	.byte		N02   , Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W30
	.byte	PEND
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte	PEND
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte	PEND
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N02
	.byte	W06
	.byte	PATT
	 .word	song333_8 + 0x8A
	.byte	PATT
	 .word	song333_8 + 0xA2
	.byte	PATT
	 .word	song333_8 + 0xC2
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W18
	.byte	GOTO
	 .word	song333_8 + 0x36
	.byte	FINE

@**************** Track 09 ****************************@

song333_9:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*song333_mvl/mxv
	.byte	W24
	.byte	W24
	.byte		N11   , Gn5 , v127
	.byte	W36
	.byte		N05
	.byte	W36
	.byte	PEND
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	W24
	.byte		N11   , Gn5 , v127
	.byte	W60
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte	PATT
	 .word	song333_9 + 0xD
	.byte	W24
	.byte		N11   , Gn5 , v127
	.byte	W60
	.byte		N06   , Fs5 , v120
	.byte		N12   , Gn5 
	.byte	W12
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	W72
	.byte		N12
	.byte	W24
	.byte	W96
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W48
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	W72
	.byte		N12
	.byte	W24
	.byte	W96
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W12
	.byte	GOTO
	 .word	song333_9 + 0x1A
	.byte	FINE

@******************************************************@
	.align	2

song333:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song333_pri	@ Priority
	.byte	song333_rev	@ Reverb.

	.word	song333_grp

	.word	song333_0
	.word	song333_1
	.word	song333_2
	.word	song333_3
	.word	song333_4
	.word	song333_5
	.word	song333_6
	.word	song333_7
	.word	song333_8
	.word	song333_9

	.end
