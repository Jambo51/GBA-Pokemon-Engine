@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song274_grp, group_10
	.equ	song274_pri, 0
	.equ	song274_rev, 178
	.equ	song274_mvl, 127
	.equ	song274_key, 0
	.equ	song274_tbs, 1
	.equ	song274_exg, 1
	.equ	song274_cmp, 1

	.text
	.global	song274
	.align	2

@**************** Track 00 ****************************@

song274_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 65
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 11*song274_mvl/mxv
	.byte	W48
	.byte		        11*song274_mvl/mxv
	.byte		N48   , Fs4 , v127
	.byte	W03
	.byte		VOL   , 16*song274_mvl/mxv
	.byte	W03
	.byte		        22*song274_mvl/mxv
	.byte	W03
	.byte		        28*song274_mvl/mxv
	.byte	W03
	.byte		        34*song274_mvl/mxv
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 38*song274_mvl/mxv
	.byte	W03
	.byte		        45*song274_mvl/mxv
	.byte	W03
	.byte		        51*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W03
	.byte		        61*song274_mvl/mxv
	.byte	W03
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        73*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W03
	.byte		        85*song274_mvl/mxv
	.byte	W03
	.byte		        90*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 29*song274_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+1
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		VOL   , 32*song274_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 35*song274_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 2
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 29*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte	PATT
	 .word	song274_0 + 0x5D
	.byte		PAN   , c_v-64
	.byte		MOD   , 2
	.byte		VOL   , 31*song274_mvl/mxv
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 37*song274_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		MOD   , 3
	.byte		VOL   , 41*song274_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , En4 
	.byte	W12
	.byte		        En4 , v048
	.byte	W12
	.byte		VOL   , 44*song274_mvl/mxv
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N12   , En5 , v096
	.byte	W12
	.byte		        En5 , v036
	.byte	W12
	.byte		VOL   , 44*song274_mvl/mxv
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N12   , En4 
	.byte	W12
	.byte		        En4 , v048
	.byte	W12
	.byte		VOL   , 44*song274_mvl/mxv
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 38*song274_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Ds3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N06   , En3 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 , v092
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 , v096
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		BEND  , c_v+1
	.byte		N06   , En3 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 , v096
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N18
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		BEND  , c_v+2
	.byte		N06   , En3 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , As3 , v096
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N18   , Cs4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		PAN   , c_v-64
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N24   , Gn3 , v127
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		N24   , En3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Ds3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , En3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Ds3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		N24   , Cn3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Bn2 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        45*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , Bn2 , v056
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N06   , Cn3 , v064
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cs3 , v080
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn3 , v092
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W54
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W54
	.byte		PAN   , c_v-64
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W54
	.byte		PAN   , c_v+63
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W78
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-64
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		N12   , Gn2 , v096
	.byte	W12
	.byte		N24   , As2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N24   , Cs3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N24   , Cs3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N24   , An2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , As2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N24   , Cs3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N24   , Bn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Fs2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Ds2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N03   , Bn3 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N18   , Cs4 
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		VOL   , 44*song274_mvl/mxv
	.byte		N48   , Fs3 
	.byte	W48
	.byte		PAN   , c_v+63
	.byte		N48   , Ds3 
	.byte	W48
	.byte		PAN   , c_v-64
	.byte		VOL   , 32*song274_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , En3 , v064
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 , v092
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+0
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte		        As3 , v104
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+1
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 , v112
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		BEND  , c_v+2
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		BEND  , c_v+2
	.byte		N06   , En3 , v120
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        Bn3 , v116
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte	GOTO
	 .word	song274_0 + 0x34
	.byte	FINE

@**************** Track 01 ****************************@

song274_1:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 11*song274_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N48   , Gs4 , v127
	.byte	W03
	.byte		VOL   , 16*song274_mvl/mxv
	.byte	W03
	.byte		        22*song274_mvl/mxv
	.byte	W03
	.byte		        28*song274_mvl/mxv
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W03
	.byte		        38*song274_mvl/mxv
	.byte	W03
	.byte		        45*song274_mvl/mxv
	.byte	W03
	.byte		        51*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W03
	.byte		        61*song274_mvl/mxv
	.byte	W03
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        73*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W03
	.byte		        85*song274_mvl/mxv
	.byte	W03
	.byte		        90*song274_mvl/mxv
	.byte	W06
	.byte		        11*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Dn5 
	.byte	W03
	.byte		VOL   , 16*song274_mvl/mxv
	.byte	W03
	.byte		        22*song274_mvl/mxv
	.byte	W03
	.byte		        28*song274_mvl/mxv
	.byte	W03
	.byte		        34*song274_mvl/mxv
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 38*song274_mvl/mxv
	.byte	W03
	.byte		        45*song274_mvl/mxv
	.byte	W03
	.byte		        51*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W03
	.byte		        61*song274_mvl/mxv
	.byte	W03
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        73*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W03
	.byte		        85*song274_mvl/mxv
	.byte	W03
	.byte		        90*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 51*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 55*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 65*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 53*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 65*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        En1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Cn3 
	.byte	W12
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        En1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Cs3 
	.byte	W12
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        En1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Ds3 
	.byte	W12
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W66
	.byte		N24   , Fs3 
	.byte	W12
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W66
	.byte		N24   , Gn3 
	.byte	W12
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W66
	.byte		N24   , As3 
	.byte	W12
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N24   , En4 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Ds4 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W12
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N03   , Gn3 , v112
	.byte	W03
	.byte		        An3 , v100
	.byte	W03
	.byte		N18   , Gn3 , v120
	.byte	W06
	.byte		VOL   , 22*song274_mvl/mxv
	.byte	W12
	.byte		        34*song274_mvl/mxv
	.byte		N12   , Fs3 , v127
	.byte	W12
	.byte		BEND  , c_v+1
	.byte		N48   , En3 , v060
	.byte	W32
	.byte	W01
	.byte		BEND  , c_v+2
	.byte	W15
	.byte		        c_v+1
	.byte		N48   , Fn3 , v056
	.byte	W32
	.byte	W01
	.byte		BEND  , c_v+2
	.byte	W15
	.byte		        c_v+1
	.byte		N48   , Fs3 , v092
	.byte	W32
	.byte	W01
	.byte		BEND  , c_v+2
	.byte	W15
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N48   , Gn3 , v127
	.byte	W32
	.byte	W01
	.byte		BEND  , c_v+2
	.byte	W15
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W66
	.byte		        En1 
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W78
	.byte	PEND
	.byte	PATT
	 .word	song274_1 + 0x219
	.byte		BEND  , c_v+0
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W78
	.byte		VOICE , 83
	.byte		VOL   , 22*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N36   , En3 
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N24   , En3 
	.byte	W12
	.byte	W12
	.byte		N36   , An3 , v127
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		N24   , Bn3 
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N36   , Gn3 , v127
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W12
	.byte	PEND
	.byte	W12
	.byte		N36   , En3 
	.byte	W36
	.byte		        Fs3 
	.byte	W36
	.byte		N24   , Ds3 
	.byte	W12
	.byte	W12
	.byte		N36   , En3 
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N24   , En3 
	.byte	W12
	.byte	PATT
	 .word	song274_1 + 0x244
	.byte	PATT
	 .word	song274_1 + 0x24F
	.byte	W12
	.byte		N36   , En3 , v127
	.byte	W36
	.byte		        Fs3 
	.byte	W36
	.byte		N12   , Ds3 
	.byte	W12
	.byte		VOICE , 81
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W18
	.byte		N24   , Fs3 
	.byte	W12
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W18
	.byte		N24   , Gn3 
	.byte	W12
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N24   , As3 
	.byte	W24
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Ds4 
	.byte	W48
	.byte		BEND  , c_v+0
	.byte		N06   , En2 
	.byte	W06
	.byte		        En2 , v092
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v088
	.byte	W18
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Bn2 , v088
	.byte	W06
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        En2 , v088
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W18
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		VOL   , 39*song274_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        En2 , v088
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W18
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        En2 , v084
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W18
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		        En2 , v127
	.byte	W06
	.byte		        En2 , v092
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v088
	.byte	W18
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Bn2 , v088
	.byte	W06
	.byte		VOL   , 51*song274_mvl/mxv
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        En2 , v088
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W18
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        En2 , v088
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W18
	.byte		        Cn3 , v127
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte		        En2 , v127
	.byte	W06
	.byte		        En2 , v084
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W06
	.byte		        Cn3 , v084
	.byte	W18
	.byte		        Cn3 , v116
	.byte	W06
	.byte		        Bn2 , v084
	.byte	W06
	.byte	GOTO
	 .word	song274_1 + 0x58
	.byte	FINE

@**************** Track 02 ****************************@

song274_2:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W84
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		VOICE , 92
	.byte		VOL   , 51*song274_mvl/mxv
	.byte		N24   , En4 , v127
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Cs5 , v127
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Gs4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		N24   , As4 , v127
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		N24   , Gs4 , v127
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte	PEND
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte	PATT
	 .word	song274_2 + 0x33
	.byte	PATT
	 .word	song274_2 + 0x52
	.byte	PATT
	 .word	song274_2 + 0x71
	.byte		VOICE , 87
	.byte		MOD   , 0
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        En3 , v120
	.byte	W30
	.byte		        En2 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v064
	.byte	W30
	.byte		        En2 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte	W36
	.byte		N06   , En2 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , An3 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		VOL   , 44*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte	W36
	.byte		N06   , En3 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte	W36
	.byte		N06   , En3 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
	.byte	W36
	.byte		N06   , En3 , v127
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N24   , As3 
	.byte	W24
	.byte	PEND
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Ds3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N06   , En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W78
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W78
	.byte	PEND
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W66
	.byte		        En2 
	.byte	W12
	.byte	PATT
	 .word	song274_2 + 0x168
	.byte	PATT
	 .word	song274_2 + 0x168
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W54
	.byte		VOICE , 92
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N24   , En2 , v127
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
	.byte		N24   , Cs3 , v127
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PEND
	.byte		N24   , As2 , v127
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte	PEND
	.byte		N24   , Gs2 , v127
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song274_2 + 0x199
	.byte	PATT
	 .word	song274_2 + 0x1A4
	.byte	PATT
	 .word	song274_2 + 0x1AF
	.byte	PATT
	 .word	song274_2 + 0x1BA
	.byte		VOICE , 87
	.byte		N12   , En2 , v127
	.byte	W36
	.byte		N06   , En3 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PATT
	 .word	song274_2 + 0x10D
	.byte	PATT
	 .word	song274_2 + 0x118
	.byte		N48   , Bn3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		        0
	.byte		N36   , Fs3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W24
	.byte		        0
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 , v120
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		VOICE , 92
	.byte	W36
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte	GOTO
	 .word	song274_2 + 0x13
	.byte	FINE

@**************** Track 03 ****************************@

song274_3:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 11*song274_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N48   , Gs2 , v096
	.byte	W06
	.byte		PAN   , c_v-40
	.byte		VOL   , 17*song274_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		VOL   , 25*song274_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-22
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		VOL   , 41*song274_mvl/mxv
	.byte	W06
	.byte		        47*song274_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		VOL   , 52*song274_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		VOL   , 56*song274_mvl/mxv
	.byte	W06
	.byte		        22*song274_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , Dn2 , v100
	.byte	W06
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte	W06
	.byte		        79*song274_mvl/mxv
	.byte	W06
	.byte		        89*song274_mvl/mxv
	.byte	W12
	.byte		VOL   , 60*song274_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte		VOICE , 38
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		VOL   , 64*song274_mvl/mxv
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		VOL   , 60*song274_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , En1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Cn2 
	.byte	W06
	.byte		BEND  , c_v+8
	.byte	W06
	.byte		MOD   , 11
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , En2 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , En1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Cs2 
	.byte	W06
	.byte		BEND  , c_v+8
	.byte	W06
	.byte		MOD   , 11
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , En2 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , En1 
	.byte	W24
	.byte		N06
	.byte	W36
	.byte	W96
	.byte		BEND  , c_v+0
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W66
	.byte		N24
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		MOD   , 11
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W66
	.byte		N24   , Gn1 
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		MOD   , 11
	.byte		BEND  , c_v+0
	.byte	W12
	.byte		MOD   , 0
	.byte		N03   , En1 
	.byte	W06
	.byte		N06
	.byte	W66
	.byte		N24   , Bn1 
	.byte	W06
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		MOD   , 11
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-34
	.byte	W03
	.byte		        c_v-63
	.byte	W03
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte		N06   , En1 , v076
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W66
	.byte		        Gn1 , v120
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W78
	.byte	PEND
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W66
	.byte		        En1 
	.byte	W12
	.byte	PATT
	 .word	song274_3 + 0x110
	.byte	PATT
	 .word	song274_3 + 0x110
	.byte	PATT
	 .word	song274_3 + 0x110
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 120
	.byte		VOL   , 5*song274_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		TIE   , Cn5 , v120
	.byte	W24
	.byte		VOL   , 8*song274_mvl/mxv
	.byte		PAN   , c_v+48
	.byte	W24
	.byte		VOL   , 11*song274_mvl/mxv
	.byte		PAN   , c_v-48
	.byte	W24
	.byte		        c_v+48
	.byte	W12
	.byte		        c_v-48
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v-48
	.byte	W12
	.byte		        c_v+48
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		VOL   , 12*song274_mvl/mxv
	.byte	W06
	.byte		        21*song274_mvl/mxv
	.byte	W06
	.byte		        29*song274_mvl/mxv
	.byte	W06
	.byte		        34*song274_mvl/mxv
	.byte	W06
	.byte		        39*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        48*song274_mvl/mxv
	.byte	W03
	.byte		        52*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W03
	.byte		        61*song274_mvl/mxv
	.byte	W03
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		EOT
	.byte		VOICE , 38
	.byte		VOL   , 45*song274_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v088
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 , v088
	.byte	W06
	.byte		VOL   , 52*song274_mvl/mxv
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v084
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 , v084
	.byte	W06
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v084
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 , v084
	.byte	W06
	.byte		VOL   , 60*song274_mvl/mxv
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v084
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 , v084
	.byte	W06
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v088
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 , v088
	.byte	W06
	.byte		VOL   , 52*song274_mvl/mxv
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v084
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 , v084
	.byte	W06
	.byte		VOL   , 57*song274_mvl/mxv
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v084
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 , v084
	.byte	W06
	.byte		VOL   , 61*song274_mvl/mxv
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        Cn2 , v084
	.byte	W18
	.byte		        Cn2 , v120
	.byte	W06
	.byte		        Bn1 , v084
	.byte	W06
	.byte	GOTO
	 .word	song274_3 + 0x44
	.byte	FINE

@**************** Track 04 ****************************@

song274_4:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 7*song274_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N48   , Gs3 , v080
	.byte	W06
	.byte		VOL   , 7*song274_mvl/mxv
	.byte	W06
	.byte		        11*song274_mvl/mxv
	.byte	W06
	.byte		        13*song274_mvl/mxv
	.byte	W06
	.byte		        16*song274_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W09
	.byte		VOL   , 18*song274_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		VOL   , 21*song274_mvl/mxv
	.byte	W03
	.byte		        24*song274_mvl/mxv
	.byte	W06
	.byte		        7*song274_mvl/mxv
	.byte		N48   , Fs4 
	.byte	W06
	.byte		VOL   , 7*song274_mvl/mxv
	.byte	W06
	.byte		        11*song274_mvl/mxv
	.byte		PAN   , c_v+48
	.byte	W06
	.byte		VOL   , 13*song274_mvl/mxv
	.byte	W06
	.byte		        16*song274_mvl/mxv
	.byte	W09
	.byte		        18*song274_mvl/mxv
	.byte	W06
	.byte		        21*song274_mvl/mxv
	.byte	W03
	.byte		        24*song274_mvl/mxv
	.byte	W06
	.byte	W96
	.byte		VOICE , 14
	.byte		VOL   , 45*song274_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+0
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24   , En4 , v056
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , En4 , v044
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24   , En4 , v024
	.byte	W24
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N24   , En5 , v127
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , En5 , v056
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24   , En5 , v044
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , En5 , v024
	.byte	W24
	.byte	PATT
	 .word	song274_4 + 0x48
	.byte		PAN   , c_v-32
	.byte		VOL   , 45*song274_mvl/mxv
	.byte	W12
	.byte		N24   , En5 , v127
	.byte	W12
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N24   , Ds5 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N12   , Bn4 
	.byte	W12
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 , v096
	.byte	W06
	.byte		        Cn5 , v127
	.byte	W06
	.byte		N18   , Bn4 
	.byte	W06
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 , v096
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 , v127
	.byte	W06
	.byte		N18
	.byte	W06
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        As4 , v096
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn5 , v127
	.byte	W06
	.byte		N18   , Cs5 
	.byte	W06
	.byte		MOD   , 8
	.byte	W12
	.byte		VOICE , 17
	.byte		MOD   , 0
	.byte		VOL   , 48*song274_mvl/mxv
	.byte	W09
	.byte		N03   , Ds5 , v096
	.byte	W03
	.byte		N24   , En5 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Ds5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N03   , Gn4 , v112
	.byte	W03
	.byte		        An4 , v100
	.byte	W03
	.byte		N18   , Gn4 , v120
	.byte	W06
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fs4 , v127
	.byte	W12
	.byte		VOICE , 24
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Bn4 , v056
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cn5 , v064
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cs5 , v088
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Dn5 , v112
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		VOICE , 1
	.byte	W12
	.byte		N06   , Dn4 , v127
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N12   , En4 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En4 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Bn4 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn4 , v040
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , As4 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , As4 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Dn5 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn5 , v040
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N12   , Cs5 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs5 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Gs4 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs4 , v040
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn4 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Bn4 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn4 , v040
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N12   , As4 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , As4 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , En4 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En4 , v040
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds4 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , An4 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An4 , v040
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		N12   , Gs4 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs4 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , En4 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En4 , v040
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Fs4 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fs4 , v040
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds4 , v040
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song274_4 + 0x1C3
	.byte	PATT
	 .word	song274_4 + 0x1F4
	.byte	PATT
	 .word	song274_4 + 0x225
	.byte	PATT
	 .word	song274_4 + 0x256
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song274_mvl/mxv
	.byte		N03   , En4 , v127
	.byte	W06
	.byte		N06   , En4 , v120
	.byte	W18
	.byte		        En4 , v127
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W18
	.byte		N24   , Fs3 
	.byte	W12
	.byte		VOL   , 63*song274_mvl/mxv
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		VOICE , 60
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W18
	.byte		N24   , Gn3 
	.byte	W12
	.byte		VOL   , 79*song274_mvl/mxv
	.byte		MOD   , 9
	.byte	W12
	.byte		        0
	.byte	W12
	.byte		VOICE , 56
	.byte		N06   , En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N18   , Cs4 , v120
	.byte	W18
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En4 
	.byte	W06
	.byte		N03   , Dn4 , v076
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        As3 
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song274_4 + 0x3C
	.byte	FINE

@**************** Track 05 ****************************@

song274_5:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 9*song274_mvl/mxv
	.byte		N48   , Gs4 , v112
	.byte	W06
	.byte		VOL   , 14*song274_mvl/mxv
	.byte	W06
	.byte		        19*song274_mvl/mxv
	.byte	W06
	.byte		        24*song274_mvl/mxv
	.byte	W06
	.byte		        32*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        55*song274_mvl/mxv
	.byte	W06
	.byte		        64*song274_mvl/mxv
	.byte	W03
	.byte		        70*song274_mvl/mxv
	.byte	W03
	.byte		        77*song274_mvl/mxv
	.byte	W03
	.byte		        9*song274_mvl/mxv
	.byte		N48   , Dn5 
	.byte	W06
	.byte		VOL   , 14*song274_mvl/mxv
	.byte	W06
	.byte		        19*song274_mvl/mxv
	.byte	W06
	.byte		        24*song274_mvl/mxv
	.byte	W06
	.byte		        32*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        55*song274_mvl/mxv
	.byte	W06
	.byte		        64*song274_mvl/mxv
	.byte	W03
	.byte		        70*song274_mvl/mxv
	.byte	W03
	.byte		        77*song274_mvl/mxv
	.byte	W03
	.byte		VOICE , 48
	.byte		PAN   , c_v+32
	.byte		VOL   , 40*song274_mvl/mxv
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song274_5 + 0x61
	.byte		PAN   , c_v+32
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		VOL   , 49*song274_mvl/mxv
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		VOL   , 54*song274_mvl/mxv
	.byte		N06   , An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		VOL   , 41*song274_mvl/mxv
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte	PATT
	 .word	song274_5 + 0x61
	.byte	PATT
	 .word	song274_5 + 0x61
	.byte		PAN   , c_v+32
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		VOL   , 45*song274_mvl/mxv
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		VOL   , 51*song274_mvl/mxv
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		VOL   , 56*song274_mvl/mxv
	.byte	W06
	.byte		N06   , As2 
	.byte	W06
	.byte		VOL   , 33*song274_mvl/mxv
	.byte		PAN   , c_v-1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 22*song274_mvl/mxv
	.byte		N96   , Bn2 , v120
	.byte	W60
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W18
	.byte		        22*song274_mvl/mxv
	.byte		N96   , En2 
	.byte	W60
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W18
	.byte		        22*song274_mvl/mxv
	.byte		N96   , Cs3 
	.byte	W60
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W18
	.byte		        22*song274_mvl/mxv
	.byte	W96
	.byte	W96
	.byte		VOICE , 30
	.byte		VOL   , 22*song274_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , En3 , v064
	.byte	W06
	.byte		VOL   , 25*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 29*song274_mvl/mxv
	.byte	W06
	.byte		        36*song274_mvl/mxv
	.byte	W03
	.byte		        45*song274_mvl/mxv
	.byte	W03
	.byte		        55*song274_mvl/mxv
	.byte	W03
	.byte		        60*song274_mvl/mxv
	.byte	W03
	.byte		        63*song274_mvl/mxv
	.byte	W03
	.byte		        68*song274_mvl/mxv
	.byte	W12
	.byte		        22*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Fn3 , v080
	.byte	W06
	.byte		VOL   , 25*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 29*song274_mvl/mxv
	.byte	W06
	.byte		        36*song274_mvl/mxv
	.byte	W03
	.byte		        45*song274_mvl/mxv
	.byte	W03
	.byte		        55*song274_mvl/mxv
	.byte	W03
	.byte		        60*song274_mvl/mxv
	.byte	W03
	.byte		        63*song274_mvl/mxv
	.byte	W03
	.byte		        68*song274_mvl/mxv
	.byte	W12
	.byte		        22*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Fs3 , v092
	.byte	W06
	.byte		VOL   , 25*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 29*song274_mvl/mxv
	.byte	W06
	.byte		        36*song274_mvl/mxv
	.byte	W03
	.byte		        45*song274_mvl/mxv
	.byte	W03
	.byte		        55*song274_mvl/mxv
	.byte	W03
	.byte		        60*song274_mvl/mxv
	.byte	W03
	.byte		        63*song274_mvl/mxv
	.byte	W03
	.byte		        68*song274_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 35*song274_mvl/mxv
	.byte		N48   , Gn3 , v127
	.byte	W06
	.byte		VOL   , 38*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 42*song274_mvl/mxv
	.byte	W03
	.byte		        45*song274_mvl/mxv
	.byte	W03
	.byte		        50*song274_mvl/mxv
	.byte	W03
	.byte		        58*song274_mvl/mxv
	.byte	W03
	.byte		        63*song274_mvl/mxv
	.byte	W03
	.byte		        69*song274_mvl/mxv
	.byte	W03
	.byte		        72*song274_mvl/mxv
	.byte	W03
	.byte		        77*song274_mvl/mxv
	.byte	W12
	.byte		        68*song274_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 17
	.byte		VOL   , 68*song274_mvl/mxv
	.byte	W12
	.byte		N36   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N24   , En3 
	.byte	W12
	.byte	W12
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W12
	.byte	W12
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N36   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte	W12
	.byte		N36   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Fs3 
	.byte	W18
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte		N24   , Ds3 
	.byte	W12
	.byte		VOL   , 68*song274_mvl/mxv
	.byte	W12
	.byte		VOICE , 29
	.byte		N36   , En3 , v032
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N24   , En3 
	.byte	W12
	.byte	W12
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W12
	.byte	W12
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N36   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W12
	.byte	W12
	.byte		N36   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 62*song274_mvl/mxv
	.byte	W06
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        45*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Ds3 
	.byte	W12
	.byte		VOICE , 48
	.byte		PAN   , c_v+32
	.byte		VOL   , 49*song274_mvl/mxv
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 38*song274_mvl/mxv
	.byte		PAN   , c_v-33
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , As2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   , Bn2 
	.byte	W18
	.byte		PAN   , c_v-32
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , As2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		PAN   , c_v-32
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , As2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   , Cs3 
	.byte	W18
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		VOL   , 38*song274_mvl/mxv
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N06   , En2 , v072
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 , v092
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		VOL   , 43*song274_mvl/mxv
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 , v127
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		VOL   , 46*song274_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v-2
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W12
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		VOL   , 51*song274_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        Bn2 , v116
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		N06   , Fs2 , v120
	.byte	W06
	.byte	GOTO
	 .word	song274_5 + 0x3A
	.byte	FINE

@**************** Track 06 ****************************@

song274_6:
	.byte	KEYSH , 0
	.byte		VOICE , 78
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+18
	.byte		VOL   , 8*song274_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+15
	.byte	W92
	.byte	W01
	.byte		VOICE , 78
	.byte		VOL   , 11*song274_mvl/mxv
	.byte		N15   , En3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , Gn3 , v096
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Bn3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Bn3 , v096
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Dn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , Cs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Bn3 , v096
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Gs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , An3 , v096
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Bn3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N15   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , An3 , v096
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , En3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N15   , Ds3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , En3 , v096
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , An3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Fs3 , v096
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N21   , En3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W09
	.byte		N03   , Fn3 , v096
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v+15
	.byte		N18   , Fs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Fn3 , v096
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Ds3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 11*song274_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v+15
	.byte		N15   , En4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , Gn4 , v096
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , As4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Bn4 , v096
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Dn5 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , Cs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Bn4 , v096
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Gs4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , An4 , v096
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N15   , As4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , An4 , v096
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , En4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N15   , Ds4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , En4 , v096
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , An4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte		N18   , Gs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Fs4 , v096
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N21   , En4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W09
	.byte		N03   , Fn4 , v096
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v+15
	.byte		N18   , Fs4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		N03   , Fn4 , v096
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		MOD   , 0
	.byte		PAN   , c_v-17
	.byte		N24   , Ds4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+15
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 48
	.byte		VOL   , 22*song274_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		VOL   , 22*song274_mvl/mxv
	.byte		N96   , En2 , v120
	.byte	W60
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W18
	.byte		        22*song274_mvl/mxv
	.byte		N96   , Cn3 
	.byte	W60
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W18
	.byte		        22*song274_mvl/mxv
	.byte		N96   , En2 
	.byte	W60
	.byte		VOL   , 34*song274_mvl/mxv
	.byte	W06
	.byte		        44*song274_mvl/mxv
	.byte	W03
	.byte		        56*song274_mvl/mxv
	.byte	W06
	.byte		        68*song274_mvl/mxv
	.byte	W03
	.byte		        79*song274_mvl/mxv
	.byte	W18
	.byte		        22*song274_mvl/mxv
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
	.byte		VOICE , 24
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N24   , As4 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Cs5 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Cs5 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , An4 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Cs5 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        As4 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , Bn4 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song274_6 + 0x16
	.byte	FINE

@**************** Track 07 ****************************@

song274_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 65*song274_mvl/mxv
	.byte	W48
	.byte		N48   , Cn3 , v104
	.byte	W36
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte		N48   , Cs2 
	.byte	W24
	.byte		N06   , En1 , v088
	.byte	W12
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		        En1 , v088
	.byte	W12
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		        En1 , v064
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		        En1 , v088
	.byte	W12
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		        En1 , v088
	.byte	W12
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		        En1 , v088
	.byte	W12
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		        En1 , v064
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte		N48   , Bn2 
	.byte	W24
	.byte		N06   , En1 , v088
	.byte	W12
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W24
	.byte		        En1 , v088
	.byte	W12
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PATT
	 .word	song274_7 + 0x3C
	.byte	PATT
	 .word	song274_7 + 0x65
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		        En1 , v064
	.byte	W12
	.byte		        En1 , v072
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N48   , Cn3 , v096
	.byte	W48
	.byte		N06   , Cn1 , v120
	.byte		N48   , An2 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N24   , Cs1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte		N48   , En2 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N24   , Cs1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte		N48   , Gn2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N03   , Gn1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte		N48   , Bn2 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Dn3 , v088
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		        En1 , v127
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Cn1 , v088
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		        Dn3 , v096
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        En1 , v127
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , Dn3 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Dn3 , v088
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		        En1 , v127
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , Dn3 , v088
	.byte	W06
	.byte		N03   , Dn3 , v120
	.byte		N06   , Gs4 , v044
	.byte	W03
	.byte		N03   , Dn3 , v084
	.byte	W03
	.byte		        Dn3 , v088
	.byte		N06   , An4 , v016
	.byte	W03
	.byte		N03   , Dn3 , v064
	.byte	W03
	.byte		N06   , Cn1 , v104
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Dn3 , v112
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Cn1 , v100
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		        En1 , v127
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Dn3 , v076
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		        Cn1 , v064
	.byte		N12   , As4 , v052
	.byte	W06
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Gs4 , v044
	.byte	W06
	.byte		        Cn1 , v076
	.byte		N06   , An4 , v016
	.byte	W06
	.byte		        Cs1 , v120
	.byte		N12   , As4 , v052
	.byte	W12
	.byte		        Dn1 , v096
	.byte		N48   , Cs2 , v120
	.byte	W12
	.byte		N12   , Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v028
	.byte	W12
	.byte		        Dn1 , v016
	.byte	W48
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		N48   , Cn1 , v120
	.byte		N48   , An2 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        En2 , v064
	.byte	W96
	.byte	W72
	.byte		N60   , Cn3 , v052
	.byte	W24
	.byte	W12
	.byte		VOL   , 55*song274_mvl/mxv
	.byte	W84
	.byte		        65*song274_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06   , Cn1 , v100
	.byte		N06   , En2 
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N42   , En2 , v127
	.byte	W18
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte		N24   , En2 , v127
	.byte	W12
	.byte		N06   , Cs1 , v120
	.byte	W06
	.byte		        Cs1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , En2 , v096
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N42   , En2 , v127
	.byte	W06
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 , v076
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N24   , En2 , v127
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte		N06   , En2 , v068
	.byte	W06
	.byte		        Dn1 , v120
	.byte		N42   , En2 , v127
	.byte	W06
	.byte		N03   , Dn2 , v120
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Gn1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte		N24   , En2 , v127
	.byte	W06
	.byte		N06   , Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		N24   , Dn1 , v120
	.byte		N48   , Bn2 , v127
	.byte	W24
	.byte		N03   , Dn2 , v120
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N03   , An1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N24   , Dn1 
	.byte		N48   , Cs2 , v127
	.byte	W24
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte		N48   , An2 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N03   , En1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte		N06
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N48   , En2 
	.byte	W18
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 , v060
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PATT
	 .word	song274_7 + 0x2FE
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N36   , En2 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N03   , En1 , v064
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte		N36   , Cn3 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cs1 , v112
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W06
	.byte		N12   , Fn1 , v124
	.byte	W12
	.byte	GOTO
	 .word	song274_7 + 0x17
	.byte	FINE

@**************** Track 08 ****************************@

song274_8:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song274_mvl/mxv
	.byte	W84
	.byte		N06   , Cn4 , v064
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N03   , Cn4 , v064
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N03   , Cn4 , v064
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte	PATT
	 .word	song274_8 + 0x30
	.byte	PATT
	 .word	song274_8 + 0x30
	.byte	PATT
	 .word	song274_8 + 0x30
	.byte	PATT
	 .word	song274_8 + 0x30
	.byte		N06   , Cn4 , v064
	.byte	W06
	.byte		N06
	.byte	W66
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song274_8 + 0x5D
	.byte	PATT
	 .word	song274_8 + 0x5D
	.byte		N06   , Cn4 , v064
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N03   , Cn4 , v064
	.byte	W06
	.byte		N03
	.byte	W66
	.byte		N03
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song274_8 + 0x7A
	.byte	PATT
	 .word	song274_8 + 0x7A
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		N01   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		VOL   , 68*song274_mvl/mxv
	.byte		N06   , Cn4 , v064
	.byte	W96
	.byte	W96
	.byte		VOL   , 34*song274_mvl/mxv
	.byte		N84   , Cn4 , v092
	.byte	W90
	.byte		N03   , Cn4 , v060
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N21   , Cn4 , v092
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N21   , Cn4 , v080
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N06   , Cn4 , v060
	.byte	W12
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N84   , Cn4 , v092
	.byte	W24
	.byte		PAN   , c_v+0
	.byte	W72
	.byte		N03   , Cn4 , v084
	.byte	W09
	.byte		        Cn4 , v056
	.byte	W09
	.byte		N09   , Cn4 , v044
	.byte	W06
	.byte		VOL   , 68*song274_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W06
	.byte		N03   , Cn4 , v064
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn5 , v024
	.byte	W24
	.byte		PAN   , c_v+0
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
	.byte	W96
	.byte	W96
	.byte		N06   , Cn4 , v064
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 44*song274_mvl/mxv
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W18
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song274_8 + 0x152
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W18
	.byte	GOTO
	 .word	song274_8 + 0x18
	.byte	FINE

@**************** Track 09 ****************************@

song274_9:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 56*song274_mvl/mxv
	.byte		PAN   , c_v+0
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
	.byte	W12
	.byte		N12   , Gn5 , v060
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Gn5 , v056
	.byte	W24
	.byte		        Gn5 , v060
	.byte	W12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Gn5 , v056
	.byte	W12
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
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		        Gn5 , v120
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		        Gn5 , v080
	.byte	W12
	.byte	GOTO
	 .word	song274_9 + 0xD
	.byte	FINE

@******************************************************@
	.align	2

song274:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song274_pri	@ Priority
	.byte	song274_rev	@ Reverb.

	.word	song274_grp

	.word	song274_0
	.word	song274_1
	.word	song274_2
	.word	song274_3
	.word	song274_4
	.word	song274_5
	.word	song274_6
	.word	song274_7
	.word	song274_8
	.word	song274_9

	.end
