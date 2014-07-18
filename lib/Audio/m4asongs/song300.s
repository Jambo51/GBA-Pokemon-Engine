@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song300_grp, group_36
	.equ	song300_pri, 0
	.equ	song300_rev, 178
	.equ	song300_mvl, 127
	.equ	song300_key, 0
	.equ	song300_tbs, 1
	.equ	song300_exg, 1
	.equ	song300_cmp, 1

	.text
	.global	song300
	.align	2

@**************** Track 00 ****************************@

song300_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 44
	.byte		VOICE , 5
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		VOL   , 25*song300_mvl/mxv
	.byte		N24   , Cs3 , v108
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , An2 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N24   , An3 
	.byte	W06
	.byte		BEND  , c_v+1
	.byte	W06
	.byte		MOD   , 4
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	GOTO
	 .word	song300_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song300_1:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		MOD   , 0
	.byte		VOL   , 88*song300_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , En5 , v040
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An5 , v024
	.byte	W12
	.byte		        Fs5 , v040
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		N36   , En5 , v028
	.byte	W12
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N12   , Cs5 , v040
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N60   , Dn5 
	.byte	W15
	.byte		MOD   , 4
	.byte	W44
	.byte	W01
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N36   , Cs5 
	.byte	W12
	.byte		MOD   , 3
	.byte	W24
	.byte		N06   , Dn5 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N48   , Bn4 
	.byte	W09
	.byte		MOD   , 4
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N12   , En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        An5 , v024
	.byte	W12
	.byte		        Gs5 , v040
	.byte	W12
	.byte		        Gs5 , v028
	.byte	W12
	.byte		        An5 , v032
	.byte	W12
	.byte		N36   , Fs5 , v040
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N12   , En5 
	.byte	W12
	.byte		N48
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W48
	.byte		VOICE , 83
	.byte		MOD   , 0
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		LFOS  , 50
	.byte		N48   , Dn5 
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        76*song300_mvl/mxv
	.byte	W06
	.byte		        62*song300_mvl/mxv
	.byte	W06
	.byte		        45*song300_mvl/mxv
	.byte	W06
	.byte		        25*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte		N36   , En5 , v032
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        76*song300_mvl/mxv
	.byte	W06
	.byte		        62*song300_mvl/mxv
	.byte	W06
	.byte		        100*song300_mvl/mxv
	.byte		N12   , Dn5 , v040
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N48   , Cs5 
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        76*song300_mvl/mxv
	.byte	W06
	.byte		        62*song300_mvl/mxv
	.byte	W06
	.byte		        45*song300_mvl/mxv
	.byte	W06
	.byte		        25*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte	W12
	.byte		N03   , As4 , v016
	.byte	W03
	.byte		N09   , An4 , v040
	.byte	W09
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W21
	.byte		N03   , Cs5 , v016
	.byte	W03
	.byte		N24   , Dn5 , v040
	.byte	W12
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        100*song300_mvl/mxv
	.byte		N36   , En5 , v032
	.byte	W12
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W09
	.byte		        79*song300_mvl/mxv
	.byte	W06
	.byte		        66*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte		N06   , Dn5 , v040
	.byte	W06
	.byte		        En5 , v028
	.byte	W06
	.byte		N48   , Cs5 , v040
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        81*song300_mvl/mxv
	.byte	W06
	.byte		        62*song300_mvl/mxv
	.byte	W06
	.byte		        46*song300_mvl/mxv
	.byte	W06
	.byte		        32*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte	W06
	.byte		VOL   , 100*song300_mvl/mxv
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        84*song300_mvl/mxv
	.byte	W06
	.byte		        64*song300_mvl/mxv
	.byte	W06
	.byte		        50*song300_mvl/mxv
	.byte	W06
	.byte		        33*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte		N24   , Fs4 
	.byte	W12
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        100*song300_mvl/mxv
	.byte		N18   , Cs5 
	.byte	W12
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W06
	.byte		N06   , Cn5 , v024
	.byte	W06
	.byte		VOL   , 100*song300_mvl/mxv
	.byte		N48   , Bn4 , v040
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W12
	.byte		        81*song300_mvl/mxv
	.byte	W06
	.byte		        62*song300_mvl/mxv
	.byte	W06
	.byte		        45*song300_mvl/mxv
	.byte	W06
	.byte		        33*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte		N24   , An4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W03
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W09
	.byte		        81*song300_mvl/mxv
	.byte	W06
	.byte		        62*song300_mvl/mxv
	.byte	W06
	.byte		        44*song300_mvl/mxv
	.byte	W06
	.byte		        27*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte		N24   , An4 
	.byte	W12
	.byte		VOL   , 83*song300_mvl/mxv
	.byte	W12
	.byte		        100*song300_mvl/mxv
	.byte		N24   , Cs5 
	.byte	W09
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W06
	.byte		        63*song300_mvl/mxv
	.byte	W09
	.byte		        50*song300_mvl/mxv
	.byte		N42
	.byte	W12
	.byte		MOD   , 5
	.byte	W06
	.byte		VOL   , 68*song300_mvl/mxv
	.byte	W06
	.byte		        86*song300_mvl/mxv
	.byte	W09
	.byte		        100*song300_mvl/mxv
	.byte	W09
	.byte		N06   , Cn5 , v016
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte		N36   , Bn4 , v028
	.byte	W12
	.byte		VOL   , 88*song300_mvl/mxv
	.byte	W03
	.byte		MOD   , 4
	.byte	W03
	.byte		        5
	.byte	W06
	.byte		VOL   , 73*song300_mvl/mxv
	.byte	W06
	.byte		        43*song300_mvl/mxv
	.byte	W06
	.byte		VOICE , 80
	.byte		MOD   , 0
	.byte		N06   , Cs5 , v012
	.byte	W03
	.byte		VOL   , 99*song300_mvl/mxv
	.byte	W03
	.byte		N06   , Dn5 , v016
	.byte	W06
	.byte	GOTO
	 .word	song300_1 + 0x2
	.byte		MOD   , 0
	.byte		VOL   , 100*song300_mvl/mxv
	.byte	FINE

@**************** Track 02 ****************************@

song300_2:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-40
	.byte		VOL   , 40*song300_mvl/mxv
	.byte		N36   , An3 , v127
	.byte	W36
	.byte		        Fs3 
	.byte	W36
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , An3 , v112
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W36
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	GOTO
	 .word	song300_2 + 0x2
	.byte	FINE

@**************** Track 03 ****************************@

song300_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		MOD   , 0
	.byte		PAN   , c_v-5
	.byte		VOL   , 50*song300_mvl/mxv
	.byte		N24   , An1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		N24   , Dn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N12   , Bn1 , v096
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Cs2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Gs1 , v096
	.byte	W12
	.byte		        Fs2 , v108
	.byte	W12
	.byte		        Cs2 , v096
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N24   , Dn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En2 , v096
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
	.byte		        An1 , v112
	.byte	W24
	.byte		        Dn2 , v096
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N24   , En2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , En1 , v092
	.byte	W03
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , An1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , En1 , v096
	.byte	W12
	.byte		N24   , Dn2 , v112
	.byte	W24
	.byte		N12   , Cs2 , v096
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 , v112
	.byte	W36
	.byte		        Gs1 , v096
	.byte	W12
	.byte		        Cs2 , v112
	.byte	W12
	.byte		        Gs2 , v096
	.byte	W12
	.byte		        En2 , v112
	.byte	W12
	.byte		        Bn1 , v096
	.byte	W12
	.byte		N24   , Dn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Bn1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , En1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Gs1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N72   , An1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W60
	.byte		        0
	.byte		N24   , Cs2 , v096
	.byte	W24
	.byte		N48   , Dn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W36
	.byte		        0
	.byte		N36   , En1 
	.byte	W12
	.byte		MOD   , 11
	.byte	W24
	.byte		        0
	.byte		N12   , Gs1 , v096
	.byte	W12
	.byte		N48   , An1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W36
	.byte		        0
	.byte		N24   , Fs1 
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Cs1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N48   , Dn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W36
	.byte		        0
	.byte		N36   , Fn1 
	.byte	W36
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		N24   , Fs1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Fn1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , En1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Ds1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Dn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Dn1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		MOD   , 0
	.byte	W24
	.byte		N12   , An1 , v096
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N12   , Ds1 , v112
	.byte	W36
	.byte		        Ds1 , v096
	.byte	W12
	.byte		        Ds1 , v112
	.byte	W12
	.byte		        An1 , v096
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N12   , En1 , v112
	.byte	W36
	.byte		        En1 , v096
	.byte	W12
	.byte		        En1 , v112
	.byte	W36
	.byte		        En1 , v096
	.byte	W12
	.byte	W12
	.byte		        En1 , v112
	.byte	W24
	.byte		        En1 , v096
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v096
	.byte	W24
	.byte		        En1 , v112
	.byte	W12
	.byte	GOTO
	 .word	song300_3 + 0x2
	.byte	FINE

@**************** Track 04 ****************************@

song300_4:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 40*song300_mvl/mxv
	.byte		PAN   , c_v-21
	.byte		N36   , Cs3 , v112
	.byte	W36
	.byte		        Dn3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N03   , En3 
	.byte	W24
	.byte		N06   , Gs3 
	.byte	W12
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N36   , An2 
	.byte	W36
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Gs2 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N36   , An2 
	.byte	W36
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W48
	.byte		        En3 
	.byte	W24
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		N06
	.byte	W24
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte	W24
	.byte		        Bn2 
	.byte	W48
	.byte		        Dn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W12
	.byte	GOTO
	 .word	song300_4 + 0x2
	.byte	FINE

@**************** Track 05 ****************************@

song300_5:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 37*song300_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , En5 , v120
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		N36   , En5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N60   , Dn5 
	.byte	W15
	.byte		MOD   , 6
	.byte	W44
	.byte	W01
	.byte		        0
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N36   , Cs5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		N06   , Dn5 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N48   , Bn4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N12   , En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N36   , Fs5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , En5 
	.byte	W12
	.byte		N48
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W48
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 31*song300_mvl/mxv
	.byte	W09
	.byte		        25*song300_mvl/mxv
	.byte	W09
	.byte		        18*song300_mvl/mxv
	.byte	W06
	.byte		        11*song300_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 37*song300_mvl/mxv
	.byte		N36   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 31*song300_mvl/mxv
	.byte	W06
	.byte		        25*song300_mvl/mxv
	.byte	W06
	.byte		        18*song300_mvl/mxv
	.byte	W06
	.byte		        12*song300_mvl/mxv
	.byte	W06
	.byte		        37*song300_mvl/mxv
	.byte		N12   , Dn4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 32*song300_mvl/mxv
	.byte	W12
	.byte		        25*song300_mvl/mxv
	.byte	W06
	.byte		        19*song300_mvl/mxv
	.byte	W06
	.byte		        12*song300_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W06
	.byte		VOL   , 37*song300_mvl/mxv
	.byte	W06
	.byte		N03   , As3 , v064
	.byte	W03
	.byte		N09   , An3 , v120
	.byte	W09
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W21
	.byte		N03   , Cs4 , v072
	.byte	W03
	.byte		N24   , Dn4 , v120
	.byte	W24
	.byte		N36   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 31*song300_mvl/mxv
	.byte	W12
	.byte		        25*song300_mvl/mxv
	.byte	W09
	.byte		        37*song300_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 32*song300_mvl/mxv
	.byte	W12
	.byte		        25*song300_mvl/mxv
	.byte	W09
	.byte		        18*song300_mvl/mxv
	.byte	W06
	.byte		        12*song300_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 37*song300_mvl/mxv
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W09
	.byte		VOL   , 31*song300_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 25*song300_mvl/mxv
	.byte	W09
	.byte		        18*song300_mvl/mxv
	.byte	W06
	.byte		        12*song300_mvl/mxv
	.byte	W06
	.byte		        7*song300_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 37*song300_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N18   , Cs4 
	.byte	W18
	.byte		N06   , Cn4 , v088
	.byte	W06
	.byte		N48   , Bn3 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 31*song300_mvl/mxv
	.byte	W12
	.byte		        25*song300_mvl/mxv
	.byte	W09
	.byte		        18*song300_mvl/mxv
	.byte	W06
	.byte		        11*song300_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 37*song300_mvl/mxv
	.byte		N24   , An3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N48   , Gs3 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 29*song300_mvl/mxv
	.byte	W12
	.byte		        25*song300_mvl/mxv
	.byte	W09
	.byte		        18*song300_mvl/mxv
	.byte	W09
	.byte		        12*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 37*song300_mvl/mxv
	.byte		N24   , An3 
	.byte	W24
	.byte		VOL   , 37*song300_mvl/mxv
	.byte		N24   , Cs4 
	.byte	W12
	.byte		VOL   , 31*song300_mvl/mxv
	.byte	W06
	.byte		        24*song300_mvl/mxv
	.byte	W06
	.byte		        18*song300_mvl/mxv
	.byte		MOD   , 5
	.byte		N42
	.byte	W09
	.byte		VOL   , 21*song300_mvl/mxv
	.byte	W09
	.byte		        25*song300_mvl/mxv
	.byte	W06
	.byte		        37*song300_mvl/mxv
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , Cn4 , v088
	.byte	W06
	.byte		MOD   , 0
	.byte		N36   , Bn3 , v104
	.byte	W09
	.byte		VOL   , 29*song300_mvl/mxv
	.byte	W06
	.byte		MOD   , 6
	.byte		VOL   , 22*song300_mvl/mxv
	.byte	W06
	.byte		        15*song300_mvl/mxv
	.byte	W06
	.byte		        10*song300_mvl/mxv
	.byte	W09
	.byte		VOICE , 4
	.byte		VOL   , 33*song300_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Cs5 , v068
	.byte	W06
	.byte		        Dn5 , v080
	.byte	W06
	.byte	GOTO
	 .word	song300_5 + 0x2
	.byte		MOD   , 0
	.byte		VOL   , 37*song300_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

song300:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song300_pri	@ Priority
	.byte	song300_rev	@ Reverb.

	.word	song300_grp

	.word	song300_0
	.word	song300_1
	.word	song300_2
	.word	song300_3
	.word	song300_4
	.word	song300_5

	.end
