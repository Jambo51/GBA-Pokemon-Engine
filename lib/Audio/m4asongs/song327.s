@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song327_grp, group_9
	.equ	song327_pri, 0
	.equ	song327_rev, 178
	.equ	song327_mvl, 127
	.equ	song327_key, 0
	.equ	song327_tbs, 1
	.equ	song327_exg, 1
	.equ	song327_cmp, 1

	.text
	.global	song327
	.align	2

@**************** Track 00 ****************************@

song327_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 67
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N36   , Cn4 , v080
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W96
	.byte		N24   , En3 , v072
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		MOD   , 3
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Cn4 , v072
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N12
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		N36   , Bn3 , v072
	.byte	W12
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , An3 
	.byte	W24
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N48   , Fs3 
	.byte	W24
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N24
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 51*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N36   , Fs4 
	.byte	W15
	.byte		MOD   , 3
	.byte	W21
	.byte		        0
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 50*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		VOICE , 17
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N24   , En3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PATT
	 .word	song327_0 + 0x44
	.byte	PATT
	 .word	song327_0 + 0x60
	.byte		MOD   , 0
	.byte		N48   , An3 , v072
	.byte	W24
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte	W12
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		VOICE , 24
	.byte		N24
	.byte	W24
	.byte		N24
	.byte	W12
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N60   , Fs3 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 49*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 34*song327_mvl/mxv
	.byte	W12
	.byte		        63*song327_mvl/mxv
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 50*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N60   , Gn3 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 49*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        63*song327_mvl/mxv
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N60   , Fs3 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 49*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        63*song327_mvl/mxv
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 49*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte		N24   , Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N48   , Bn3 
	.byte	W12
	.byte		VOL   , 56*song327_mvl/mxv
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 49*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song327_0 + 0x18
	.byte		MOD   , 0
	.byte		VOL   , 63*song327_mvl/mxv
	.byte	FINE

@**************** Track 01 ****************************@

song327_1:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N06   , Gn3 , v120
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOICE , 24
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N36   , En4 , v127
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 68*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W60
	.byte		N06   , Dn3 , v120
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gn3 , v127
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , En4 
	.byte	W12
	.byte		N84   , Dn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N96   , Cn4 
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N24   , An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N84   , En4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		        90*song327_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , An4 
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W03
	.byte		MOD   , 5
	.byte	W09
	.byte		VOL   , 68*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N96   , Dn4 
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		VOICE , 17
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Gn4 , v112
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , En5 
	.byte	W12
	.byte		N84   , Dn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		        90*song327_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Gn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N96   , Cn5 
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		        90*song327_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N84   , En5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		        90*song327_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , An5 
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W03
	.byte		MOD   , 5
	.byte	W09
	.byte		VOL   , 68*song327_mvl/mxv
	.byte	W12
	.byte		        90*song327_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		VOICE , 24
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N60   , Fs4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N60   , Gn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N18   , Bn4 , v120
	.byte	W18
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N03   , Cn5 , v092
	.byte	W03
	.byte		        Bn4 , v080
	.byte	W03
	.byte		N12   , An4 , v127
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		VOICE , 17
	.byte		N12   , Dn5 , v112
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N60   , Fs5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N60   , Gn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		N24   , An5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        Cn6 
	.byte	W24
	.byte		        An5 
	.byte	W24
	.byte		N96   , Dn6 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 79*song327_mvl/mxv
	.byte	W12
	.byte		        68*song327_mvl/mxv
	.byte	W12
	.byte		        56*song327_mvl/mxv
	.byte	W12
	.byte		        45*song327_mvl/mxv
	.byte	W12
	.byte		        34*song327_mvl/mxv
	.byte	W12
	.byte		        22*song327_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song327_1 + 0x14
	.byte		MOD   , 0
	.byte		VOL   , 90*song327_mvl/mxv
	.byte	FINE

@**************** Track 02 ****************************@

song327_2:
	.byte	KEYSH , 0
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 44*song327_mvl/mxv
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N36   , En3 , v127
	.byte	W36
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
	.byte		        Bn2 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W48
	.byte		VOICE , 80
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		VOL   , 28*song327_mvl/mxv
	.byte		N06   , Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Dn3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cn3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        En2 , v120
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cn3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song327_2 + 0x56
	.byte	PATT
	 .word	song327_2 + 0x77
	.byte	PATT
	 .word	song327_2 + 0x98
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Dn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Dn3 
	.byte	W12
	.byte	PATT
	 .word	song327_2 + 0xB9
	.byte	PATT
	 .word	song327_2 + 0x13A
	.byte	PATT
	 .word	song327_2 + 0xFA
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W12
	.byte	PATT
	 .word	song327_2 + 0xB9
	.byte	PATT
	 .word	song327_2 + 0x13A
	.byte	PATT
	 .word	song327_2 + 0xFA
	.byte	PATT
	 .word	song327_2 + 0x56
	.byte	GOTO
	 .word	song327_2 + 0x16
	.byte	FINE

@**************** Track 03 ****************************@

song327_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song327_mvl/mxv
	.byte	W24
	.byte		N36   , En2 , v120
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W60
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte	PEND
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		        Cn3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v100
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , An3 , v096
	.byte	W06
	.byte		        An3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte	PEND
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		        Cn3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte	PATT
	 .word	song327_3 + 0x27
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte	PATT
	 .word	song327_3 + 0xAC
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		N06   , Cn4 , v088
	.byte	W06
	.byte		        Cn4 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   , An3 , v096
	.byte	W06
	.byte		        An3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , Bn3 , v096
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Cn4 , v096
	.byte	W06
	.byte		        Cn4 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Bn3 , v096
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Dn4 , v072
	.byte	W06
	.byte		        Dn4 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		        Cn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , An3 , v096
	.byte	W06
	.byte		        An3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		N06   , Cn4 , v096
	.byte	W06
	.byte		        Cn4 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , An3 , v096
	.byte	W06
	.byte		        An3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Bn3 , v096
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , An3 , v096
	.byte	W06
	.byte		        An3 , v032
	.byte	W06
	.byte		N12   , Gn1 , v120
	.byte	W12
	.byte		N06   , Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v032
	.byte	W06
	.byte		N12   , Dn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte	GOTO
	 .word	song327_3 + 0xD
	.byte	FINE

@**************** Track 04 ****************************@

song327_4:
	.byte	KEYSH , 0
	.byte		VOICE , 73
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 34*song327_mvl/mxv
	.byte	W24
	.byte		VOICE , 73
	.byte	W96
	.byte	W12
	.byte		N06   , Dn5 , v127
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        En5 , v120
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Dn5 , v096
	.byte	W03
	.byte		        En5 , v076
	.byte	W03
	.byte		        Dn5 , v068
	.byte	W03
	.byte		        En5 , v060
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 , v032
	.byte	W03
	.byte	W96
	.byte		VOL   , 34*song327_mvl/mxv
	.byte		N06   , Dn5 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	W96
	.byte		VOL   , 29*song327_mvl/mxv
	.byte	W12
	.byte		N06   , Dn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Dn6 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		N03   , Dn6 
	.byte	W03
	.byte		        Ds6 , v060
	.byte	W03
	.byte		        Dn6 , v120
	.byte	W03
	.byte		        Ds6 , v064
	.byte	W03
	.byte		        Dn6 , v120
	.byte	W03
	.byte		        Ds6 , v060
	.byte	W03
	.byte		        Dn6 , v120
	.byte	W03
	.byte		        Ds6 , v060
	.byte	W03
	.byte		        Dn6 , v092
	.byte	W03
	.byte		        Ds6 , v040
	.byte	W03
	.byte		        Dn6 , v064
	.byte	W03
	.byte		        Ds6 , v028
	.byte	W03
	.byte		        Dn6 , v064
	.byte	W03
	.byte		        Ds6 , v028
	.byte	W03
	.byte		        Dn6 , v060
	.byte	W03
	.byte		        Ds6 , v032
	.byte	W03
	.byte	W96
	.byte		N06   , Bn5 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte	W96
	.byte		VOICE , 73
	.byte		N06   , Dn6 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        En6 
	.byte	W06
	.byte		N12   , Dn6 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte	W96
	.byte		VOICE , 14
	.byte		VOL   , 36*song327_mvl/mxv
	.byte	W24
	.byte		N24   , Fs5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte	W96
	.byte	W24
	.byte		        Gn5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        An5 
	.byte	W96
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        An5 
	.byte	W48
	.byte		        Dn5 
	.byte	W48
	.byte		VOICE , 14
	.byte		N24   , Gn5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Gn5 
	.byte	W48
	.byte		VOICE , 73
	.byte		VOL   , 34*song327_mvl/mxv
	.byte		N03   , Gs5 
	.byte	W03
	.byte		N09   , Gn5 
	.byte	W09
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N06   , En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N06   , Bn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		N06   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N03   , Gn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 , v096
	.byte	W03
	.byte		        An5 , v076
	.byte	W03
	.byte		        Gn5 , v088
	.byte	W03
	.byte		        An5 , v064
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 , v048
	.byte	W03
	.byte		        Gn5 , v056
	.byte	W03
	.byte		        An5 , v032
	.byte	W03
	.byte		VOICE , 14
	.byte		VOL   , 43*song327_mvl/mxv
	.byte		N24   , Fs5 , v120
	.byte	W48
	.byte		        Dn5 
	.byte	W48
	.byte		VOL   , 48*song327_mvl/mxv
	.byte		N24   , Gn5 
	.byte	W48
	.byte		        Dn5 
	.byte	W48
	.byte		        An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Dn5 
	.byte	W96
	.byte	GOTO
	 .word	song327_4 + 0xD
	.byte	FINE

@**************** Track 05 ****************************@

song327_5:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 44*song327_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , En2 , v120
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        An1 , v080
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Dn2 
	.byte	W96
	.byte		        Gn1 
	.byte	W96
	.byte		PAN   , c_v+32
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Bn1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , An1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Gn1 
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		N12   , An2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Dn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , An2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Dn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , An1 
	.byte	W96
	.byte	W96
	.byte		        Dn2 
	.byte	W96
	.byte		N24
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Dn2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gn1 
	.byte	W72
	.byte		PAN   , c_v-32
	.byte		N12
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Dn2 
	.byte	W96
	.byte		N24
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N24   , Gn1 
	.byte	W48
	.byte		PAN   , c_v+32
	.byte		N06
	.byte		N24   , Cn2 
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-32
	.byte		N24
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Dn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gn2 
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Dn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Gn2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Dn2 
	.byte	W24
	.byte	W48
	.byte		N12
	.byte	W48
	.byte	W48
	.byte		        Gn1 
	.byte	W48
	.byte	W48
	.byte		PAN   , c_v+32
	.byte		N12   , An2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Dn2 
	.byte	W24
	.byte	W96
	.byte	GOTO
	 .word	song327_5 + 0xD
	.byte	FINE

@**************** Track 06 ****************************@

song327_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 74*song327_mvl/mxv
	.byte	W24
	.byte		N48   , Cs2 , v120
	.byte	W48
	.byte		        An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W96
	.byte		        An2 
	.byte	W96
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte		N12
	.byte	W96
	.byte		N48   , An2 
	.byte	W96
	.byte	W96
	.byte		N48
	.byte	W96
	.byte	W96
	.byte		        Gn2 
	.byte	W96
	.byte		N24   , An2 
	.byte	W96
	.byte		        Gn2 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte		        Bn2 
	.byte	W96
	.byte		N48   , Cs2 
	.byte	W96
	.byte		N24   , An2 
	.byte	W96
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cs2 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        An2 
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte		        Bn2 
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte	GOTO
	 .word	song327_6 + 0x7
	.byte	FINE

@**************** Track 07 ****************************@

song327_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 41*song327_mvl/mxv
	.byte	W24
	.byte		N01   , Gn3 , v120
	.byte	W36
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W60
	.byte		        Gn3 , v064
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		        Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01   , Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W12
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v052
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte	PEND
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v044
	.byte	W03
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song327_7 + 0x45
	.byte		N01   , Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song327_7 + 0x45
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PATT
	 .word	song327_7 + 0x45
	.byte	PATT
	 .word	song327_7 + 0xA7
	.byte		N01   , Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte	PEND
	.byte		N01   , Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte	PEND
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W12
	.byte		        Gn3 , v084
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte	PEND
	.byte		N01
	.byte	W12
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PATT
	 .word	song327_7 + 0x45
	.byte	PATT
	 .word	song327_7 + 0xA7
	.byte	PATT
	 .word	song327_7 + 0x45
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PATT
	 .word	song327_7 + 0x45
	.byte	PATT
	 .word	song327_7 + 0x6E
	.byte	PATT
	 .word	song327_7 + 0x45
	.byte	PATT
	 .word	song327_7 + 0xA7
	.byte	PATT
	 .word	song327_7 + 0xA7
	.byte	PATT
	 .word	song327_7 + 0x111
	.byte	PATT
	 .word	song327_7 + 0x138
	.byte	PATT
	 .word	song327_7 + 0x161
	.byte	GOTO
	 .word	song327_7 + 0x12
	.byte	FINE

@******************************************************@
	.align	2

song327:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song327_pri	@ Priority
	.byte	song327_rev	@ Reverb.

	.word	song327_grp

	.word	song327_0
	.word	song327_1
	.word	song327_2
	.word	song327_3
	.word	song327_4
	.word	song327_5
	.word	song327_6
	.word	song327_7

	.end
