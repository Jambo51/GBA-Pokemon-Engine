@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song345_grp, group_36
	.equ	song345_pri, 0
	.equ	song345_rev, 178
	.equ	song345_mvl, 127
	.equ	song345_key, 0
	.equ	song345_tbs, 1
	.equ	song345_exg, 1
	.equ	song345_cmp, 1

	.text
	.global	song345
	.align	2

@**************** Track 00 ****************************@

song345_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 36
	.byte		VOICE , 5
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		VOL   , 23*song345_mvl/mxv
	.byte		N24   , En3 , v108
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte	W12
	.byte		N12
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
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N24   , Cn4 
	.byte	W06
	.byte		BEND  , c_v+1
	.byte	W06
	.byte		MOD   , 4
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	GOTO
	 .word	song345_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song345_1:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		MOD   , 0
	.byte		VOL   , 81*song345_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Gn5 , v040
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn6 , v024
	.byte	W12
	.byte		        An5 , v040
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N36   , Gn5 , v028
	.byte	W12
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N12   , En5 , v040
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N60   , Fn5 
	.byte	W15
	.byte		MOD   , 4
	.byte	W44
	.byte	W01
	.byte		        0
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N36   , En5 
	.byte	W12
	.byte		MOD   , 3
	.byte	W24
	.byte		N06   , Fn5 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , En5 
	.byte	W06
	.byte		N48   , Dn5 
	.byte	W09
	.byte		MOD   , 4
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Cn6 , v024
	.byte	W12
	.byte		        Bn5 , v040
	.byte	W12
	.byte		        Bn5 , v028
	.byte	W12
	.byte		        Cn6 , v032
	.byte	W12
	.byte		N36   , An5 , v040
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N48
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N60   , Cn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W48
	.byte		VOICE , 83
	.byte		MOD   , 0
	.byte		N12
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		LFOS  , 50
	.byte		N48   , Fn5 
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        70*song345_mvl/mxv
	.byte	W06
	.byte		        57*song345_mvl/mxv
	.byte	W06
	.byte		        42*song345_mvl/mxv
	.byte	W06
	.byte		        23*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte		N36   , Gn5 , v032
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        70*song345_mvl/mxv
	.byte	W06
	.byte		        57*song345_mvl/mxv
	.byte	W06
	.byte		        92*song345_mvl/mxv
	.byte		N12   , Fn5 , v040
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N48   , En5 
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        70*song345_mvl/mxv
	.byte	W06
	.byte		        57*song345_mvl/mxv
	.byte	W06
	.byte		        42*song345_mvl/mxv
	.byte	W06
	.byte		        23*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N06   , Fn5 
	.byte	W24
	.byte		N24
	.byte	W12
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        92*song345_mvl/mxv
	.byte		N36   , Gn5 , v032
	.byte	W12
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W09
	.byte		        73*song345_mvl/mxv
	.byte	W06
	.byte		        60*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte		N06   , Fn5 , v040
	.byte	W06
	.byte		        Gn5 , v028
	.byte	W06
	.byte		N48   , En5 , v040
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        75*song345_mvl/mxv
	.byte	W06
	.byte		        57*song345_mvl/mxv
	.byte	W06
	.byte		        42*song345_mvl/mxv
	.byte	W06
	.byte		        29*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte	W06
	.byte		VOL   , 92*song345_mvl/mxv
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N48   , Dn5 
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        77*song345_mvl/mxv
	.byte	W06
	.byte		        59*song345_mvl/mxv
	.byte	W06
	.byte		        46*song345_mvl/mxv
	.byte	W06
	.byte		        30*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte		N24   , An4 
	.byte	W12
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        92*song345_mvl/mxv
	.byte		N18   , En5 
	.byte	W12
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W06
	.byte		N06   , Ds5 , v024
	.byte	W06
	.byte		VOL   , 92*song345_mvl/mxv
	.byte		N48   , Dn5 , v040
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W12
	.byte		        75*song345_mvl/mxv
	.byte	W06
	.byte		        57*song345_mvl/mxv
	.byte	W06
	.byte		        42*song345_mvl/mxv
	.byte	W06
	.byte		        30*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W03
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W09
	.byte		        74*song345_mvl/mxv
	.byte	W06
	.byte		        57*song345_mvl/mxv
	.byte	W06
	.byte		        40*song345_mvl/mxv
	.byte	W06
	.byte		        25*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 76*song345_mvl/mxv
	.byte	W12
	.byte		        92*song345_mvl/mxv
	.byte		N24   , En5 
	.byte	W09
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W06
	.byte		        58*song345_mvl/mxv
	.byte	W09
	.byte		        46*song345_mvl/mxv
	.byte		N42
	.byte	W12
	.byte		MOD   , 5
	.byte	W06
	.byte		VOL   , 63*song345_mvl/mxv
	.byte	W06
	.byte		        79*song345_mvl/mxv
	.byte	W09
	.byte		        92*song345_mvl/mxv
	.byte	W09
	.byte		N06   , Ds5 , v016
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte		N36   , Dn5 , v028
	.byte	W12
	.byte		VOL   , 81*song345_mvl/mxv
	.byte	W03
	.byte		MOD   , 4
	.byte	W03
	.byte		        5
	.byte	W06
	.byte		VOL   , 67*song345_mvl/mxv
	.byte	W06
	.byte		        39*song345_mvl/mxv
	.byte	W06
	.byte		VOICE , 80
	.byte		MOD   , 0
	.byte		N06   , En5 , v012
	.byte	W03
	.byte		VOL   , 91*song345_mvl/mxv
	.byte	W03
	.byte		N06   , Fn5 , v016
	.byte	W06
	.byte	GOTO
	 .word	song345_1 + 0x2
	.byte		MOD   , 0
	.byte		VOL   , 92*song345_mvl/mxv
	.byte	FINE

@**************** Track 02 ****************************@

song345_2:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-40
	.byte		VOL   , 37*song345_mvl/mxv
	.byte		N36   , Cn4 , v127
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N03   , Cn4 , v112
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W36
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v+0
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	GOTO
	 .word	song345_2 + 0x2
	.byte	FINE

@**************** Track 03 ****************************@

song345_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		MOD   , 0
	.byte		PAN   , c_v-5
	.byte		VOL   , 46*song345_mvl/mxv
	.byte		N24   , Cn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		N24   , Fn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N12   , Dn2 , v096
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N24   , En2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Bn1 , v096
	.byte	W12
	.byte		        An2 , v108
	.byte	W12
	.byte		        En2 , v096
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N24   , Fn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 , v096
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		        Cn2 , v112
	.byte	W24
	.byte		        Fn2 , v096
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N24   , Gn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Gn1 , v092
	.byte	W03
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v+0
	.byte	W06
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Cn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Gn1 , v096
	.byte	W12
	.byte		N24   , Fn2 , v112
	.byte	W24
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 , v112
	.byte	W36
	.byte		        Bn1 , v096
	.byte	W12
	.byte		        En2 , v112
	.byte	W12
	.byte		        Bn2 , v096
	.byte	W12
	.byte		        Gn2 , v112
	.byte	W12
	.byte		        Dn2 , v096
	.byte	W12
	.byte		N24   , Fn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Dn2 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Gn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Bn1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N72   , Cn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W60
	.byte		        0
	.byte		N24   , En2 , v096
	.byte	W24
	.byte		N48   , Fn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W36
	.byte		        0
	.byte		N36   , Gn1 
	.byte	W12
	.byte		MOD   , 11
	.byte	W24
	.byte		        0
	.byte		N12   , Bn1 , v096
	.byte	W12
	.byte		N48   , Cn2 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W36
	.byte		        0
	.byte		N24   , An1 
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , En1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N48   , Fn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W36
	.byte		        0
	.byte		N36   , Gs1 
	.byte	W36
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		N24   , An1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Gs1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Gn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Fs1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Fn1 , v112
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		N12   , Fn1 , v096
	.byte	W12
	.byte		MOD   , 11
	.byte		N12   , Fn1 , v112
	.byte	W12
	.byte		MOD   , 0
	.byte	W24
	.byte		N12   , Cn2 , v096
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N12   , Fs1 , v112
	.byte	W36
	.byte		        Fs1 , v096
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		        Cn2 , v096
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N12   , Gn1 , v112
	.byte	W36
	.byte		        Gn1 , v096
	.byte	W12
	.byte		        Gn1 , v112
	.byte	W36
	.byte		        Gn1 , v096
	.byte	W12
	.byte	W12
	.byte		        Gn1 , v112
	.byte	W24
	.byte		        Gn1 , v096
	.byte	W12
	.byte		        Gn1 , v112
	.byte	W12
	.byte		        Gn1 , v096
	.byte	W24
	.byte		        Gn1 , v112
	.byte	W12
	.byte	GOTO
	 .word	song345_3 + 0x2
	.byte	FINE

@**************** Track 04 ****************************@

song345_4:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 37*song345_mvl/mxv
	.byte		PAN   , c_v-21
	.byte		N36   , En3 , v112
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N03   , Gn3 
	.byte	W24
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W48
	.byte		        Gn3 
	.byte	W24
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	W24
	.byte		        Fn3 
	.byte	W48
	.byte		N06
	.byte	W24
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	W24
	.byte		        Dn3 
	.byte	W48
	.byte		        Fn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W12
	.byte	GOTO
	 .word	song345_4 + 0x2
	.byte	FINE

@**************** Track 05 ****************************@

song345_5:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 34*song345_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N36   , Gn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , En5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N60   , Fn5 
	.byte	W15
	.byte		MOD   , 6
	.byte	W44
	.byte	W01
	.byte		        0
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N36   , En5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		N06   , Fn5 
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N06   , En5 
	.byte	W06
	.byte		N48   , Dn5 
	.byte	W09
	.byte		MOD   , 6
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		N36   , An5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N48
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N60   , Cn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W48
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Fn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 28*song345_mvl/mxv
	.byte	W09
	.byte		        23*song345_mvl/mxv
	.byte	W09
	.byte		        17*song345_mvl/mxv
	.byte	W06
	.byte		        10*song345_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 34*song345_mvl/mxv
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 28*song345_mvl/mxv
	.byte	W06
	.byte		        23*song345_mvl/mxv
	.byte	W06
	.byte		        17*song345_mvl/mxv
	.byte	W06
	.byte		        11*song345_mvl/mxv
	.byte	W06
	.byte		        34*song345_mvl/mxv
	.byte		N12   , Fn4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 29*song345_mvl/mxv
	.byte	W12
	.byte		        23*song345_mvl/mxv
	.byte	W06
	.byte		        18*song345_mvl/mxv
	.byte	W06
	.byte		        11*song345_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W06
	.byte		VOL   , 34*song345_mvl/mxv
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N06   , Fn4 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 28*song345_mvl/mxv
	.byte	W12
	.byte		        23*song345_mvl/mxv
	.byte	W09
	.byte		        34*song345_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 29*song345_mvl/mxv
	.byte	W12
	.byte		        23*song345_mvl/mxv
	.byte	W09
	.byte		        16*song345_mvl/mxv
	.byte	W06
	.byte		        11*song345_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 34*song345_mvl/mxv
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W09
	.byte		VOL   , 28*song345_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 23*song345_mvl/mxv
	.byte	W09
	.byte		        17*song345_mvl/mxv
	.byte	W06
	.byte		        11*song345_mvl/mxv
	.byte	W06
	.byte		        7*song345_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 34*song345_mvl/mxv
	.byte		N24   , An3 
	.byte	W24
	.byte		N18   , En4 
	.byte	W18
	.byte		N06   , Ds4 , v088
	.byte	W06
	.byte		N48   , Dn4 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 28*song345_mvl/mxv
	.byte	W12
	.byte		        23*song345_mvl/mxv
	.byte	W09
	.byte		        17*song345_mvl/mxv
	.byte	W06
	.byte		        10*song345_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 34*song345_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 26*song345_mvl/mxv
	.byte	W12
	.byte		        23*song345_mvl/mxv
	.byte	W09
	.byte		        17*song345_mvl/mxv
	.byte	W09
	.byte		        11*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 34*song345_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W24
	.byte		VOL   , 34*song345_mvl/mxv
	.byte		N24   , En4 
	.byte	W12
	.byte		VOL   , 28*song345_mvl/mxv
	.byte	W06
	.byte		        22*song345_mvl/mxv
	.byte	W06
	.byte		        17*song345_mvl/mxv
	.byte		MOD   , 5
	.byte		N42
	.byte	W09
	.byte		VOL   , 19*song345_mvl/mxv
	.byte	W09
	.byte		        23*song345_mvl/mxv
	.byte	W06
	.byte		        34*song345_mvl/mxv
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , Ds4 , v088
	.byte	W06
	.byte		MOD   , 0
	.byte		N36   , Dn4 , v104
	.byte	W09
	.byte		VOL   , 27*song345_mvl/mxv
	.byte	W06
	.byte		MOD   , 6
	.byte		VOL   , 20*song345_mvl/mxv
	.byte	W06
	.byte		        14*song345_mvl/mxv
	.byte	W06
	.byte		        9*song345_mvl/mxv
	.byte	W09
	.byte		VOICE , 4
	.byte		VOL   , 30*song345_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , En5 , v068
	.byte	W06
	.byte		        Fn5 , v080
	.byte	W06
	.byte	GOTO
	 .word	song345_5 + 0x2
	.byte		MOD   , 0
	.byte		VOL   , 34*song345_mvl/mxv
	.byte	FINE

@******************************************************@
	.align	2

song345:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song345_pri	@ Priority
	.byte	song345_rev	@ Reverb.

	.word	song345_grp

	.word	song345_0
	.word	song345_1
	.word	song345_2
	.word	song345_3
	.word	song345_4
	.word	song345_5

	.end
