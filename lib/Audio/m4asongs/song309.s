@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song309_grp, group_45
	.equ	song309_pri, 0
	.equ	song309_rev, 178
	.equ	song309_mvl, 127
	.equ	song309_key, 0
	.equ	song309_tbs, 1
	.equ	song309_exg, 1
	.equ	song309_cmp, 1

	.section .rodata
	.global	song309
	.align	2

@**************** Track 00 ****************************@

song309_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte		VOL   , 26*song309_mvl/mxv
	.byte		N36   , Fs3 , v120
	.byte	W36
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N24   , Dn3 , v127
	.byte	W24
	.byte		N06   , En3 , v120
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		VOL   , 26*song309_mvl/mxv
	.byte		N24   , Gn3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        15*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 26*song309_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , Cn4 , v108
	.byte	W12
	.byte		N48   , An3 , v127
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        25*song309_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N06   , An3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N36   , An3 
	.byte	W12
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        24*song309_mvl/mxv
	.byte		N06
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        Cn4 , v104
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		        An3 , v127
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		VOL   , 21*song309_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W06
	.byte		VOL   , 16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 7*song309_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 25*song309_mvl/mxv
	.byte		N24   , Gn4 , v088
	.byte	W06
	.byte		VOL   , 15*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte		VOL   , 26*song309_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 21*song309_mvl/mxv
	.byte		N24   , Gn3 , v127
	.byte	W06
	.byte		VOL   , 16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 7*song309_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 24*song309_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		VOL   , 21*song309_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W06
	.byte		VOL   , 16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 7*song309_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 24*song309_mvl/mxv
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cn4 , v108
	.byte	W12
	.byte		N48   , An3 , v127
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        25*song309_mvl/mxv
	.byte		N12
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Cn4 , v108
	.byte	W12
	.byte		N06   , Bn3 , v127
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 , v120
	.byte	W06
	.byte		MOD   , 7
	.byte		N12   , Fs3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N48   , An3 
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        24*song309_mvl/mxv
	.byte		N48   , Bn3 
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        25*song309_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn4 , v096
	.byte	W12
	.byte		N48   , Bn3 , v127
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        24*song309_mvl/mxv
	.byte		N48   , An3 
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        25*song309_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , An3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		VOL   , 21*song309_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W06
	.byte		VOL   , 15*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte		VOL   , 26*song309_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 21*song309_mvl/mxv
	.byte		N24   , An3 
	.byte	W06
	.byte		VOL   , 15*song309_mvl/mxv
	.byte	W06
	.byte		        26*song309_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		N48   , Bn3 
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        25*song309_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		        Cn4 , v104
	.byte	W12
	.byte		N48   , Bn3 , v127
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        24*song309_mvl/mxv
	.byte		N48   , An3 
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        26*song309_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte	PATT
	 .word	song309_0 + 0x18A
	.byte		N48   , An2 , v120
	.byte	W24
	.byte		VOL   , 21*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W03
	.byte		        12*song309_mvl/mxv
	.byte	W06
	.byte		        7*song309_mvl/mxv
	.byte	W09
	.byte		        26*song309_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte		VOL   , 19*song309_mvl/mxv
	.byte	W06
	.byte		        16*song309_mvl/mxv
	.byte	W06
	.byte		        25*song309_mvl/mxv
	.byte		N12   , An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	GOTO
	 .word	song309_0 + 0x25
	.byte	FINE

@**************** Track 01 ****************************@

song309_1:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 48*song309_mvl/mxv
	.byte		N06   , Dn4 , v127
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N48   , An4 
	.byte	W30
	.byte		VOL   , 54*song309_mvl/mxv
	.byte	W06
	.byte		        61*song309_mvl/mxv
	.byte	W06
	.byte		        70*song309_mvl/mxv
	.byte	W06
	.byte		VOICE , 73
	.byte		VOL   , 65*song309_mvl/mxv
	.byte		N24   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N06   , Gn4 
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 56*song309_mvl/mxv
	.byte	W06
	.byte		        45*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 65*song309_mvl/mxv
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W12
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		VOL   , 56*song309_mvl/mxv
	.byte	W06
	.byte		        45*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 65*song309_mvl/mxv
	.byte		N24
	.byte	W24
	.byte		N06   , Fs4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N36   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 56*song309_mvl/mxv
	.byte	W06
	.byte		        45*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 65*song309_mvl/mxv
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOICE , 48
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		MOD   , 0
	.byte		N24
	.byte	W12
	.byte		VOL   , 34*song309_mvl/mxv
	.byte	W12
	.byte		        45*song309_mvl/mxv
	.byte		N06   , Gn4 
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W12
	.byte		VOL   , 34*song309_mvl/mxv
	.byte	W12
	.byte		        45*song309_mvl/mxv
	.byte		N12   , Bn3 
	.byte	W12
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N48   , An4 
	.byte	W12
	.byte		VOL   , 34*song309_mvl/mxv
	.byte	W36
	.byte		        45*song309_mvl/mxv
	.byte		N12
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W12
	.byte		VOL   , 34*song309_mvl/mxv
	.byte	W36
	.byte		        45*song309_mvl/mxv
	.byte		N48   , Dn5 
	.byte	W12
	.byte		VOL   , 34*song309_mvl/mxv
	.byte	W36
	.byte		VOICE , 60
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		N48   , Dn4 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song309_mvl/mxv
	.byte	W06
	.byte		        34*song309_mvl/mxv
	.byte	W06
	.byte		        28*song309_mvl/mxv
	.byte	W06
	.byte		        22*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		N12   , Cn4 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N03   , An3 
	.byte	W03
	.byte		        Bn3 , v096
	.byte	W03
	.byte		N06   , An3 , v108
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Bn3 , v127
	.byte	W06
	.byte		N24   , En4 , v096
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 , v127
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song309_mvl/mxv
	.byte	W06
	.byte		        34*song309_mvl/mxv
	.byte	W06
	.byte		        28*song309_mvl/mxv
	.byte	W06
	.byte		        22*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		N48   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song309_mvl/mxv
	.byte	W06
	.byte		        34*song309_mvl/mxv
	.byte	W06
	.byte		        28*song309_mvl/mxv
	.byte	W06
	.byte		        22*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		VOL   , 45*song309_mvl/mxv
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song309_mvl/mxv
	.byte	W06
	.byte		        34*song309_mvl/mxv
	.byte	W06
	.byte		        28*song309_mvl/mxv
	.byte	W06
	.byte		        22*song309_mvl/mxv
	.byte	W06
	.byte		VOICE , 73
	.byte		MOD   , 0
	.byte		VOL   , 68*song309_mvl/mxv
	.byte		N48   , Dn4 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 61*song309_mvl/mxv
	.byte	W06
	.byte		        55*song309_mvl/mxv
	.byte	W06
	.byte		        50*song309_mvl/mxv
	.byte	W06
	.byte		        45*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song309_mvl/mxv
	.byte		N12   , Cn4 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 61*song309_mvl/mxv
	.byte	W06
	.byte		        55*song309_mvl/mxv
	.byte	W06
	.byte		        50*song309_mvl/mxv
	.byte	W06
	.byte		        45*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 65*song309_mvl/mxv
	.byte		N48   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 61*song309_mvl/mxv
	.byte	W06
	.byte		        55*song309_mvl/mxv
	.byte	W06
	.byte		        50*song309_mvl/mxv
	.byte	W06
	.byte		        45*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 69*song309_mvl/mxv
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 61*song309_mvl/mxv
	.byte	W06
	.byte		        55*song309_mvl/mxv
	.byte	W06
	.byte		        50*song309_mvl/mxv
	.byte	W06
	.byte		        45*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song309_mvl/mxv
	.byte		N03   , Dn4 , v120
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 , v068
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 , v076
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Cs5 , v088
	.byte	W03
	.byte		N30   , Dn5 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 56*song309_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte	W06
	.byte		VOL   , 69*song309_mvl/mxv
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N03   , An4 , v100
	.byte	W03
	.byte		        Fs4 , v092
	.byte	W03
	.byte		        En4 , v084
	.byte	W03
	.byte		        Dn4 , v072
	.byte	W03
	.byte	GOTO
	 .word	song309_1 + 0x28
	.byte	FINE

@**************** Track 02 ****************************@

song309_2:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 34*song309_mvl/mxv
	.byte	W48
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Fs2 , v120
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte		        Fs2 , v120
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N09   , An2 
	.byte	W09
	.byte		N03   , Cs3 , v120
	.byte	W03
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        An2 , v120
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N03   , Fs2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 , v127
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N06   , En2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 , v120
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N36   , Dn2 , v127
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		PAN   , c_v+62
	.byte		VOL   , 22*song309_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		VOL   , 34*song309_mvl/mxv
	.byte		N12   , Fs2 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PEND
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn3 
	.byte	W12
	.byte	PATT
	 .word	song309_2 + 0x170
	.byte	PATT
	 .word	song309_2 + 0x18F
	.byte	PATT
	 .word	song309_2 + 0x1B0
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En2 
	.byte	W12
	.byte		N36   , Dn2 , v120
	.byte	W12
	.byte		MOD   , 8
	.byte		VOL   , 22*song309_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 34*song309_mvl/mxv
	.byte	W03
	.byte		N03   , Ds2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		N24   , Fs2 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , An2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte	GOTO
	 .word	song309_2 + 0x1F
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 03 ****************************@

song309_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 53*song309_mvl/mxv
	.byte		MOD   , 2
	.byte	W96
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Gn2 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N06   , Gn2 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte	PEND
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06   , Cn3 , v096
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn2 , v120
	.byte	W12
	.byte		N12   , Cn2 , v100
	.byte	W12
	.byte		N06   , Bn1 , v120
	.byte	W12
	.byte		N12   , An1 , v104
	.byte	W12
	.byte	PATT
	 .word	song309_3 + 0xF
	.byte	PATT
	 .word	song309_3 + 0x28
	.byte		N12   , Dn2 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N48   , An1 
	.byte	W24
	.byte		VOL   , 44*song309_mvl/mxv
	.byte	W06
	.byte		        38*song309_mvl/mxv
	.byte	W06
	.byte		        34*song309_mvl/mxv
	.byte	W06
	.byte		        29*song309_mvl/mxv
	.byte	W06
	.byte		        53*song309_mvl/mxv
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N12   , Gn1 , v120
	.byte	W42
	.byte		N06   , Fs1 , v096
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W48
	.byte	PEND
	.byte		N12   , Gn1 , v120
	.byte	W48
	.byte		N12
	.byte	W24
	.byte		N18   , Dn2 
	.byte	W18
	.byte		N06   , Cs2 
	.byte	W06
	.byte	PEND
	.byte		N12   , Dn1 , v120
	.byte	W42
	.byte		N06   , Cs1 , v096
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W48
	.byte	PEND
	.byte		N12   , Dn1 , v120
	.byte	W42
	.byte		N06   , Cs1 , v096
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W12
	.byte		N18
	.byte	W18
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song309_3 + 0x9B
	.byte	PATT
	 .word	song309_3 + 0xA8
	.byte	PATT
	 .word	song309_3 + 0xB5
	.byte	PATT
	 .word	song309_3 + 0xC2
	.byte		N48   , Dn1 , v120
	.byte	W48
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte	GOTO
	 .word	song309_3 + 0xF
	.byte	FINE

@**************** Track 04 ****************************@

song309_4:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 25*song309_mvl/mxv
	.byte	W48
	.byte		N06   , Dn4 , v127
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		VOICE , 45
	.byte		VOL   , 50*song309_mvl/mxv
	.byte	W12
	.byte		N12   , Dn4 , v112
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte	W36
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Dn4 
	.byte	W36
	.byte	W96
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W12
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Dn5 
	.byte	W24
	.byte		N06   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 , v080
	.byte	W06
	.byte		N12   , Dn5 , v112
	.byte	W48
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
	 .word	song309_4 + 0x1F
	.byte	FINE

@**************** Track 05 ****************************@

song309_5:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 43*song309_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		VOL   , 37*song309_mvl/mxv
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte	PEND
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte	PEND
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte	PATT
	 .word	song309_5 + 0x3D
	.byte	PATT
	 .word	song309_5 + 0x3D
	.byte	PATT
	 .word	song309_5 + 0x60
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N03   , Fs3 , v116
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs3 , v080
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N30   , An3 , v120
	.byte	W30
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte	GOTO
	 .word	song309_5 + 0xD
	.byte	FINE

@**************** Track 06 ****************************@

song309_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 64*song309_mvl/mxv
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N06   , Gs2 , v064
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W36
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N06   , Gs2 , v064
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Gs2 , v068
	.byte	W06
	.byte		        Dn3 , v080
	.byte	W06
	.byte		        En3 , v108
	.byte	W06
	.byte		        Gs2 , v068
	.byte	W06
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs2 , v084
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Fs2 , v108
	.byte	W12
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N06   , Gs2 , v068
	.byte	W06
	.byte		        Dn3 , v080
	.byte	W06
	.byte		        En3 , v108
	.byte	W06
	.byte		        Gs2 , v068
	.byte	W06
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N06   , Gs2 , v080
	.byte	W06
	.byte		        Dn3 , v088
	.byte	W06
	.byte		        En3 , v108
	.byte	W06
	.byte		        Gs2 , v068
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		        Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Gs2 , v084
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        En3 , v104
	.byte	W06
	.byte		        Gs2 , v064
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Fs2 , v024
	.byte	W12
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs2 , v084
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Fs2 , v108
	.byte	W12
	.byte		N12   , Bn4 , v056
	.byte	W12
	.byte		N09   , Bn4 , v024
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N12   , Bn4 , v044
	.byte	W12
	.byte		N09   , Bn4 , v024
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song309_6 + 0x18F
	.byte	PATT
	 .word	song309_6 + 0x18F
	.byte	PATT
	 .word	song309_6 + 0x18F
	.byte	PATT
	 .word	song309_6 + 0x18F
	.byte	PATT
	 .word	song309_6 + 0x18F
	.byte	PATT
	 .word	song309_6 + 0x18F
	.byte	PATT
	 .word	song309_6 + 0x18F
	.byte		N03   , Fs2 , v076
	.byte	W03
	.byte		        Fs2 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs2 , v064
	.byte	W12
	.byte		        Fs2 , v088
	.byte	W12
	.byte		N24   , Bn4 , v048
	.byte	W24
	.byte	GOTO
	 .word	song309_6 + 0x3D
	.byte	FINE

@******************************************************@
	.align	2

song309:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song309_pri	@ Priority
	.byte	song309_rev	@ Reverb.

	.word	song309_grp

	.word	song309_0
	.word	song309_1
	.word	song309_2
	.word	song309_3
	.word	song309_4
	.word	song309_5
	.word	song309_6

	.end
