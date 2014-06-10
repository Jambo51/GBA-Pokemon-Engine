@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song260_grp, group_0
	.equ	song260_pri, 5
	.equ	song260_rev, 178
	.equ	song260_mvl, 127
	.equ	song260_key, 0
	.equ	song260_tbs, 1
	.equ	song260_exg, 1
	.equ	song260_cmp, 1

	.section .rodata
	.global	song260
	.align	2

@**************** Track 00 ****************************@

song260_0:
	.byte	KEYSH , 0
	.byte	W12
	.byte	TEMPO , 72
	.byte		VOICE , 82
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 90*song260_mvl/mxv
	.byte		PAN   , c_v+47
	.byte		N09   , Fn4 , v060
	.byte	W18
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N24
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		VOICE , 80
	.byte		MOD   , 0
	.byte		PAN   , c_v+0
	.byte		N06   , Fn3 , v072
	.byte	W06
	.byte		        As2 , v060
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 , v072
	.byte	W06
	.byte		        Fn3 , v060
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		VOICE , 82
	.byte		PAN   , c_v+47
	.byte		N09   , Gn4 , v056
	.byte	W18
	.byte		N03   , En4 , v060
	.byte	W06
	.byte		N24
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOICE , 80
	.byte		MOD   , 0
	.byte		PAN   , c_v+0
	.byte		N06   , Gn3 , v072
	.byte	W06
	.byte		        Cn3 , v060
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 , v072
	.byte	W06
	.byte		        Gn3 , v060
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		VOICE , 82
	.byte		PAN   , c_v-47
	.byte		N48   , An4 
	.byte	W05
	.byte		VOL   , 76*song260_mvl/mxv
	.byte	W04
	.byte		        65*song260_mvl/mxv
	.byte	W05
	.byte		        68*song260_mvl/mxv
	.byte	W01
	.byte		MOD   , 6
	.byte	W04
	.byte		VOL   , 71*song260_mvl/mxv
	.byte	W05
	.byte		        75*song260_mvl/mxv
	.byte	W05
	.byte		        77*song260_mvl/mxv
	.byte	W04
	.byte		MOD   , 8
	.byte	W01
	.byte		VOL   , 80*song260_mvl/mxv
	.byte	W05
	.byte		        84*song260_mvl/mxv
	.byte	W05
	.byte		        87*song260_mvl/mxv
	.byte	W04
	.byte		        90*song260_mvl/mxv
	.byte		MOD   , 0
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 01 ****************************@

song260_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 90*song260_mvl/mxv
	.byte		PAN   , c_v+11
	.byte		N09   , As4 , v116
	.byte	W18
	.byte		N03   , Fn4 
	.byte	W06
	.byte		N44
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		VOL   , 78*song260_mvl/mxv
	.byte	W05
	.byte		        63*song260_mvl/mxv
	.byte	W05
	.byte		        38*song260_mvl/mxv
	.byte	W05
	.byte		        14*song260_mvl/mxv
	.byte	W03
	.byte		        0*song260_mvl/mxv
	.byte	W03
	.byte		        90*song260_mvl/mxv
	.byte		MOD   , 0
	.byte		N03   , An4 , v100
	.byte	W03
	.byte		N06   , As4 , v116
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N09   , Cn5 
	.byte	W18
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N44
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 78*song260_mvl/mxv
	.byte	W05
	.byte		        63*song260_mvl/mxv
	.byte	W05
	.byte		        38*song260_mvl/mxv
	.byte	W05
	.byte		        14*song260_mvl/mxv
	.byte	W03
	.byte		        0*song260_mvl/mxv
	.byte	W03
	.byte		        90*song260_mvl/mxv
	.byte		MOD   , 0
	.byte		N03   , Bn4 , v100
	.byte	W03
	.byte		N24   , Cn5 , v116
	.byte	W15
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N48   , Dn5 
	.byte	W05
	.byte		VOL   , 76*song260_mvl/mxv
	.byte	W04
	.byte		        65*song260_mvl/mxv
	.byte	W05
	.byte		        68*song260_mvl/mxv
	.byte	W01
	.byte		MOD   , 6
	.byte	W04
	.byte		VOL   , 71*song260_mvl/mxv
	.byte	W05
	.byte		        75*song260_mvl/mxv
	.byte	W05
	.byte		        77*song260_mvl/mxv
	.byte	W04
	.byte		MOD   , 8
	.byte	W01
	.byte		VOL   , 80*song260_mvl/mxv
	.byte	W05
	.byte		        84*song260_mvl/mxv
	.byte	W05
	.byte		        87*song260_mvl/mxv
	.byte	W04
	.byte		        90*song260_mvl/mxv
	.byte		MOD   , 0
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 02 ****************************@

song260_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 88
	.byte		VOL   , 90*song260_mvl/mxv
	.byte		N09   , As1 , v080
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N24
	.byte	W24
	.byte		N18   , Dn2 
	.byte	W18
	.byte		        Cn2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N09   , Cn2 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N24
	.byte	W24
	.byte		N18   , En2 
	.byte	W18
	.byte		        Dn2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N09   , Dn2 
	.byte	W48
	.byte	FINE

@**************** Track 03 ****************************@

song260_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 47
	.byte		VOL   , 90*song260_mvl/mxv
	.byte		PAN   , c_v-13
	.byte		N06   , As1 , v127
	.byte	W36
	.byte		        As1 , v100
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        As1 , v127
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W36
	.byte		        Cn2 , v100
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W48
	.byte	FINE

@**************** Track 04 ****************************@

song260_4:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 83
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 90*song260_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N09   , Dn4 , v060
	.byte	W18
	.byte		N03   , As3 
	.byte	W06
	.byte		N24
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte	W06
	.byte		VOICE , 81
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v-2
	.byte		N06   , Fn3 , v052
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , As2 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Dn3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Fn3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Dn3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Fn3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , As3 
	.byte	W06
	.byte		VOICE , 83
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N09   , En4 , v060
	.byte	W18
	.byte		N03   , Cn4 
	.byte	W06
	.byte		N24
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte	W06
	.byte		VOICE , 81
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v-2
	.byte		N06   , Gn3 , v052
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Cn3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , En3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Gn3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , En3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Gn3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Cn4 
	.byte	W06
	.byte		VOICE , 83
	.byte		BEND  , c_v+0
	.byte		N48   , Fs4 , v060
	.byte	W05
	.byte		VOL   , 76*song260_mvl/mxv
	.byte	W04
	.byte		        65*song260_mvl/mxv
	.byte	W05
	.byte		        68*song260_mvl/mxv
	.byte	W01
	.byte		MOD   , 6
	.byte	W04
	.byte		VOL   , 71*song260_mvl/mxv
	.byte	W05
	.byte		        75*song260_mvl/mxv
	.byte	W05
	.byte		        77*song260_mvl/mxv
	.byte	W04
	.byte		MOD   , 8
	.byte	W01
	.byte		VOL   , 80*song260_mvl/mxv
	.byte	W05
	.byte		        84*song260_mvl/mxv
	.byte	W05
	.byte		        87*song260_mvl/mxv
	.byte	W04
	.byte		        90*song260_mvl/mxv
	.byte		MOD   , 0
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 05 ****************************@

song260_5:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 56
	.byte		VOL   , 90*song260_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W68
	.byte	W01
	.byte		N03   , En4 , v080
	.byte	W03
	.byte		N06   , Fn4 , v100
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte	W68
	.byte	W01
	.byte		N03   , Fs4 , v080
	.byte	W03
	.byte		N24   , Gn4 , v100
	.byte	W24
	.byte	W96
	.byte	FINE

@**************** Track 06 ****************************@

song260_6:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 0
	.byte		VOL   , 90*song260_mvl/mxv
	.byte		N06   , En1 , v096
	.byte		N24   , Bn2 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		N03   , En1 , v100
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , En1 , v084
	.byte	W03
	.byte		        En1 , v080
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
	.byte		N06   , En1 , v096
	.byte		N24   , Bn2 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		N03   , En1 , v100
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , En1 , v084
	.byte	W03
	.byte		        En1 , v080
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
	.byte		N06   , En1 , v096
	.byte		N24   , Bn2 , v100
	.byte	W18
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v120
	.byte		N24   , Bn2 , v100
	.byte	W48
	.byte	FINE

@******************************************************@
	.align	2

song260:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song260_pri	@ Priority
	.byte	song260_rev	@ Reverb.

	.word	song260_grp

	.word	song260_0
	.word	song260_1
	.word	song260_2
	.word	song260_3
	.word	song260_4
	.word	song260_5
	.word	song260_6

	.end
