@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song319_grp, group_54
	.equ	song319_pri, 5
	.equ	song319_rev, 178
	.equ	song319_mvl, 127
	.equ	song319_key, 0
	.equ	song319_tbs, 1
	.equ	song319_exg, 1
	.equ	song319_cmp, 1

	.text
	.global	song319
	.align	2

@**************** Track 00 ****************************@

song319_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 32
	.byte		VOICE , 60
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 59*song319_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+1
	.byte	W12
	.byte	TEMPO , 68
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v040
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v040
	.byte	W06
	.byte		        Gs3 , v096
	.byte	W06
	.byte		        Gs3 , v040
	.byte	W06
	.byte		N03   , Gs3 , v096
	.byte	W03
	.byte		        Gs3 , v040
	.byte	W03
	.byte		        Gs3 , v096
	.byte	W03
	.byte		        Gs3 , v040
	.byte	W03
	.byte		N06   , Bn3 , v096
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		        Cs4 , v096
	.byte	W06
	.byte		        Cs4 , v040
	.byte	W06
	.byte		        Ds4 , v096
	.byte	W06
	.byte		        Bn3 , v040
	.byte	W06
	.byte		N03   , Ds4 , v096
	.byte	W03
	.byte		        Ds4 , v040
	.byte	W03
	.byte		        Ds4 , v096
	.byte	W03
	.byte		        Ds4 , v040
	.byte	W03
	.byte		VOL   , 25*song319_mvl/mxv
	.byte		N48   , En4 , v096
	.byte	W06
	.byte		VOL   , 29*song319_mvl/mxv
	.byte	W03
	.byte		        31*song319_mvl/mxv
	.byte	W03
	.byte		MOD   , 5
	.byte		VOL   , 34*song319_mvl/mxv
	.byte	W03
	.byte		        38*song319_mvl/mxv
	.byte	W03
	.byte		        41*song319_mvl/mxv
	.byte	W03
	.byte		        44*song319_mvl/mxv
	.byte	W03
	.byte		        50*song319_mvl/mxv
	.byte	W03
	.byte		        55*song319_mvl/mxv
	.byte	W03
	.byte		        64*song319_mvl/mxv
	.byte	W03
	.byte		        71*song319_mvl/mxv
	.byte	W15
	.byte		MOD   , 0
	.byte		N06   , En4 , v040
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song319_1:
	.byte	KEYSH , 0
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 94*song319_mvl/mxv
	.byte		PAN   , c_v-18
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , Gs4 , v127
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		        0
	.byte		N06   , Gs4 , v052
	.byte	W06
	.byte		N03   , Gs4 , v120
	.byte	W03
	.byte		        Gs4 , v052
	.byte	W03
	.byte		        Gs4 , v120
	.byte	W03
	.byte		        Gs4 , v052
	.byte	W03
	.byte		N06   , En4 , v127
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		        0
	.byte		N06   , En4 , v052
	.byte	W06
	.byte		N03   , En4 , v120
	.byte	W03
	.byte		        En4 , v052
	.byte	W03
	.byte		        En4 , v120
	.byte	W03
	.byte		        En4 , v052
	.byte	W03
	.byte		N06   , Bn4 , v127
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		        0
	.byte		N06   , Bn4 , v052
	.byte	W06
	.byte		N03   , Bn4 , v120
	.byte	W03
	.byte		        Bn4 , v052
	.byte	W03
	.byte		        Bn4 , v120
	.byte	W03
	.byte		        Bn4 , v052
	.byte	W03
	.byte		N06   , An4 , v127
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		        0
	.byte		N06   , An4 , v052
	.byte	W06
	.byte		N03   , An4 , v120
	.byte	W03
	.byte		        An4 , v052
	.byte	W03
	.byte		        An4 , v120
	.byte	W03
	.byte		        An4 , v052
	.byte	W03
	.byte		VOL   , 31*song319_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , Gs4 , v127
	.byte	W03
	.byte		VOL   , 34*song319_mvl/mxv
	.byte	W03
	.byte		        38*song319_mvl/mxv
	.byte	W03
	.byte		        43*song319_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte		VOL   , 49*song319_mvl/mxv
	.byte	W03
	.byte		        56*song319_mvl/mxv
	.byte	W03
	.byte		        67*song319_mvl/mxv
	.byte	W03
	.byte		        74*song319_mvl/mxv
	.byte	W03
	.byte		        82*song319_mvl/mxv
	.byte	W03
	.byte		        91*song319_mvl/mxv
	.byte	W03
	.byte		        94*song319_mvl/mxv
	.byte	W18
	.byte		N06   , Gs4 , v048
	.byte	W09
	.byte		MOD   , 0
	.byte	W15
	.byte	FINE

@**************** Track 02 ****************************@

song319_2:
	.byte	KEYSH , 0
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 47*song319_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N24   , Bn3 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Cs4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N06   , An4 
	.byte	W12
	.byte		N03   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		VOL   , 28*song319_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 4
	.byte		VOL   , 38*song319_mvl/mxv
	.byte	W12
	.byte		        47*song319_mvl/mxv
	.byte	W12
	.byte		        59*song319_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song319_3:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 94*song319_mvl/mxv
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N09   , Bn1 , v096
	.byte	W12
	.byte		N03   , En2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N24   , An1 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N03   , Bn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N09   , Fs1 
	.byte	W06
	.byte		BEND  , c_v+6
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		VOL   , 28*song319_mvl/mxv
	.byte		N48   , En1 , v127
	.byte	W03
	.byte		VOL   , 31*song319_mvl/mxv
	.byte	W03
	.byte		        32*song319_mvl/mxv
	.byte	W03
	.byte		        35*song319_mvl/mxv
	.byte	W03
	.byte		        40*song319_mvl/mxv
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 48*song319_mvl/mxv
	.byte	W03
	.byte		        53*song319_mvl/mxv
	.byte	W03
	.byte		        62*song319_mvl/mxv
	.byte	W03
	.byte		        66*song319_mvl/mxv
	.byte	W03
	.byte		        70*song319_mvl/mxv
	.byte	W03
	.byte		        77*song319_mvl/mxv
	.byte	W03
	.byte		        88*song319_mvl/mxv
	.byte	W03
	.byte		        94*song319_mvl/mxv
	.byte	W14
	.byte		MOD   , 0
	.byte	W22
	.byte	FINE

@**************** Track 04 ****************************@

song319_4:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 71*song319_mvl/mxv
	.byte	W12
	.byte		N06   , Bn3 , v127
	.byte	W06
	.byte		MOD   , 4
	.byte		N06   , Bn3 , v052
	.byte	W06
	.byte		N03   , Bn3 , v120
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		        Bn3 , v120
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		MOD   , 0
	.byte		N06   , Gs3 , v127
	.byte	W06
	.byte		MOD   , 4
	.byte		N06   , Gs3 , v052
	.byte	W06
	.byte		N03   , Gs3 , v120
	.byte	W03
	.byte		        Gs3 , v052
	.byte	W03
	.byte		        Gs3 , v120
	.byte	W03
	.byte		        Gs3 , v052
	.byte	W03
	.byte		MOD   , 0
	.byte		N06   , En4 , v127
	.byte	W06
	.byte		MOD   , 4
	.byte		N06   , En4 , v052
	.byte	W06
	.byte		N03   , En4 , v120
	.byte	W03
	.byte		        En4 , v052
	.byte	W03
	.byte		        En4 , v120
	.byte	W03
	.byte		        En4 , v052
	.byte	W03
	.byte		MOD   , 0
	.byte		N06   , Bn3 , v127
	.byte	W06
	.byte		        Bn3 , v052
	.byte	W06
	.byte		N03   , Bn3 , v120
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		        Bn3 , v120
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		VOL   , 19*song319_mvl/mxv
	.byte		N48   , En4 , v127
	.byte	W03
	.byte		VOL   , 22*song319_mvl/mxv
	.byte	W03
	.byte		        25*song319_mvl/mxv
	.byte	W03
	.byte		MOD   , 4
	.byte		VOL   , 26*song319_mvl/mxv
	.byte	W03
	.byte		        28*song319_mvl/mxv
	.byte	W03
	.byte		        34*song319_mvl/mxv
	.byte	W03
	.byte		        40*song319_mvl/mxv
	.byte	W03
	.byte		        46*song319_mvl/mxv
	.byte	W03
	.byte		        51*song319_mvl/mxv
	.byte	W03
	.byte		        59*song319_mvl/mxv
	.byte	W03
	.byte		        68*song319_mvl/mxv
	.byte	W03
	.byte		        82*song319_mvl/mxv
	.byte	W15
	.byte		MOD   , 0
	.byte		N06   , En4 , v040
	.byte	W24
	.byte	FINE

@**************** Track 05 ****************************@

song319_5:
	.byte	KEYSH , 0
	.byte		VOICE , 2
	.byte		PAN   , c_v+32
	.byte		VOL   , 65*song319_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , Gs3 , v127
	.byte	W06
	.byte		        Gs3 , v052
	.byte	W06
	.byte		N03   , Gs3 , v120
	.byte	W03
	.byte		        Gs3 , v052
	.byte	W03
	.byte		        Gs3 , v120
	.byte	W03
	.byte		        Gs3 , v052
	.byte	W03
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        En3 , v052
	.byte	W06
	.byte		N03   , En3 , v120
	.byte	W03
	.byte		        En3 , v052
	.byte	W03
	.byte		        En3 , v120
	.byte	W03
	.byte		        En3 , v052
	.byte	W03
	.byte		N06   , Bn3 , v127
	.byte	W06
	.byte		        Bn3 , v052
	.byte	W06
	.byte		N03   , Bn3 , v120
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		        Bn3 , v120
	.byte	W03
	.byte		        Bn3 , v052
	.byte	W03
	.byte		N06   , An3 , v127
	.byte	W06
	.byte		        An3 , v052
	.byte	W06
	.byte		N03   , An3 , v120
	.byte	W03
	.byte		        An3 , v052
	.byte	W03
	.byte		        An3 , v120
	.byte	W03
	.byte		        An3 , v052
	.byte	W03
	.byte		N48   , Gs3 , v127
	.byte	W72
	.byte	FINE

@**************** Track 06 ****************************@

song319_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 82*song319_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v092
	.byte	W18
	.byte		N06   , Cn1 , v076
	.byte	W06
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 94*song319_mvl/mxv
	.byte		N06   , Dn2 , v088
	.byte	W06
	.byte		N05   , An1 , v104
	.byte	W06
	.byte		N06   , Gn1 , v112
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		VOL   , 71*song319_mvl/mxv
	.byte		N06   , En1 , v120
	.byte		N42   , An2 
	.byte	W06
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		VOL   , 74*song319_mvl/mxv
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		VOL   , 81*song319_mvl/mxv
	.byte		N03   , En1 , v048
	.byte	W03
	.byte		VOL   , 82*song319_mvl/mxv
	.byte		N03   , En1 , v088
	.byte	W03
	.byte		VOL   , 86*song319_mvl/mxv
	.byte		N03   , En1 , v056
	.byte	W03
	.byte		VOL   , 88*song319_mvl/mxv
	.byte		N03   , En1 , v088
	.byte	W03
	.byte		VOL   , 92*song319_mvl/mxv
	.byte		N03   , En1 , v060
	.byte	W03
	.byte		        En1 , v104
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        En1 , v072
	.byte		N03   , An1 , v092
	.byte	W03
	.byte		VOL   , 82*song319_mvl/mxv
	.byte		N06   , En1 , v064
	.byte		N06   , Fn1 , v112
	.byte		N24   , Cs2 , v080
	.byte	W06
	.byte		VOL   , 71*song319_mvl/mxv
	.byte	W03
	.byte		        65*song319_mvl/mxv
	.byte	W03
	.byte		        59*song319_mvl/mxv
	.byte	W03
	.byte		        47*song319_mvl/mxv
	.byte	W03
	.byte		        41*song319_mvl/mxv
	.byte	W03
	.byte		        35*song319_mvl/mxv
	.byte	W03
	.byte	FINE

@**************** Track 07 ****************************@

song319_7:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		VOL   , 71*song319_mvl/mxv
	.byte	W12
	.byte	W72
	.byte		PAN   , c_v-32
	.byte		N12   , Bn4 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N36   , Bn4 , v080
	.byte	W12
	.byte	W72
	.byte	FINE

@******************************************************@
	.align	2

song319:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song319_pri	@ Priority
	.byte	song319_rev	@ Reverb.

	.word	song319_grp

	.word	song319_0
	.word	song319_1
	.word	song319_2
	.word	song319_3
	.word	song319_4
	.word	song319_5
	.word	song319_6
	.word	song319_7

	.end
