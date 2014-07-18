@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song344_grp, group_11
	.equ	song344_pri, 0
	.equ	song344_rev, 178
	.equ	song344_mvl, 127
	.equ	song344_key, 0
	.equ	song344_tbs, 1
	.equ	song344_exg, 1
	.equ	song344_cmp, 1

	.text
	.global	song344
	.align	2

@**************** Track 00 ****************************@

song344_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 64
	.byte		VOICE , 56
	.byte		PAN   , c_v+10
	.byte		VOL   , 90*song344_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N30   , En4 , v108
	.byte	W15
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N30   , Dn4 
	.byte	W15
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N66   , Cs4 
	.byte	W24
	.byte	W03
	.byte		MOD   , 6
	.byte	W24
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		        0*song344_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song344_mvl/mxv
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N66   , En4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W30
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N18   , En4 
	.byte	W18
	.byte		N06   , Fs4 
	.byte	W18
	.byte		        Dn4 
	.byte	W06
	.byte		N66
	.byte	W18
	.byte		MOD   , 6
	.byte	W36
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N66   , En4 
	.byte	W30
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N18   , En4 
	.byte	W18
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N66   , Fs4 
	.byte	W24
	.byte	W03
	.byte		MOD   , 6
	.byte	W24
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N66   , Gs4 
	.byte	W30
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , An4 
	.byte	W18
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N24
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Dn5 
	.byte	W18
	.byte		N06   , An4 
	.byte	W06
	.byte		N24
	.byte	W15
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N66   , Gs4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W30
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		        52*song344_mvl/mxv
	.byte	W03
	.byte		        29*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 0*song344_mvl/mxv
	.byte	W06
	.byte		        90*song344_mvl/mxv
	.byte		N06   , Fs4 
	.byte	W06
	.byte		N18   , Gs4 
	.byte	W18
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N48   , Dn5 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N24   , Cs5 , v112
	.byte	W15
	.byte		MOD   , 6
	.byte	W09
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		N36   , Bn2 , v108
	.byte	W36
	.byte		        En3 
	.byte	W36
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N30   , Bn2 
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N18   , Bn2 
	.byte	W18
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		VOICE , 48
	.byte		N36   , Bn4 , v096
	.byte	W36
	.byte		        En5 
	.byte	W36
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N06   , Gs4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N06   , En5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N48   , Gs5 
	.byte	W48
	.byte		N24   , Fs5 
	.byte	W24
	.byte	GOTO
	 .word	song344_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song344_1:
	.byte		VOL   , 90*song344_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 87
	.byte		N12   , En2 , v080
	.byte	W12
	.byte		N03   , En1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N03   , Cs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N09   , Bn1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N06   , En1 , v080
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte	PEND
	.byte		N06   , Dn1 , v080
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song344_1 + 0x3D
	.byte		N06   , Dn1 , v080
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N18   , Fs1 
	.byte	W18
	.byte	PATT
	 .word	song344_1 + 0x3D
	.byte	PATT
	 .word	song344_1 + 0x4C
	.byte	PATT
	 .word	song344_1 + 0x3D
	.byte		N06   , Dn1 , v080
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
	.byte	PATT
	 .word	song344_1 + 0x3D
	.byte	PATT
	 .word	song344_1 + 0x4C
	.byte		N06   , Cs1 , v080
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N48   , Cn1 
	.byte	W48
	.byte		        Dn1 
	.byte	W48
	.byte		N06   , En1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W24
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N18   , An1 
	.byte	W18
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N06   , En1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte	GOTO
	 .word	song344_1 + 0x4
	.byte	FINE

@**************** Track 02 ****************************@

song344_2:
	.byte	KEYSH , 0
	.byte		VOICE , 85
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+48
	.byte		VOL   , 90*song344_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Gs3 , v064
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		        En3 
	.byte	W12
	.byte		N03   , En2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		VOICE , 81
	.byte		VOL   , 55*song344_mvl/mxv
	.byte		N12   , Fs3 
	.byte	W06
	.byte		VOL   , 59*song344_mvl/mxv
	.byte	W03
	.byte		        61*song344_mvl/mxv
	.byte	W03
	.byte		VOICE , 88
	.byte		VOL   , 65*song344_mvl/mxv
	.byte		N12
	.byte	W06
	.byte		VOL   , 70*song344_mvl/mxv
	.byte	W06
	.byte		        75*song344_mvl/mxv
	.byte		N12
	.byte	W06
	.byte		VOL   , 80*song344_mvl/mxv
	.byte	W03
	.byte		        86*song344_mvl/mxv
	.byte	W03
	.byte		        90*song344_mvl/mxv
	.byte		N12
	.byte	W12
	.byte		VOICE , 81
	.byte		N12   , En3 , v052
	.byte	W12
	.byte		VOICE , 88
	.byte		N12
	.byte	W12
	.byte		MOD   , 3
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N18   , Bn2 
	.byte	W18
	.byte		N12   , Dn3 , v052
	.byte	W12
	.byte		VOICE , 88
	.byte		N12
	.byte	W12
	.byte		MOD   , 3
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte	PEND
	.byte		N12   , En3 , v052
	.byte	W12
	.byte		VOICE , 88
	.byte		N12
	.byte	W12
	.byte		MOD   , 3
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N18   , Bn2 
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song344_2 + 0x6B
	.byte	PATT
	 .word	song344_2 + 0x8A
	.byte		N12   , Dn3 , v052
	.byte	W12
	.byte		VOICE , 88
	.byte		N12
	.byte	W12
	.byte		MOD   , 3
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N12   , Fs3 
	.byte	W18
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N24
	.byte	W24
	.byte	PATT
	 .word	song344_2 + 0x8A
	.byte		N12   , Dn3 , v052
	.byte	W12
	.byte		VOICE , 88
	.byte		N12
	.byte	W12
	.byte		MOD   , 3
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		BEND  , c_v-4
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		        c_v+0
	.byte	W12
	.byte		VOICE , 85
	.byte		PAN   , c_v+0
	.byte		N06   , Gs3 , v064
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N12
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        55*song344_mvl/mxv
	.byte	W05
	.byte		        59*song344_mvl/mxv
	.byte	W01
	.byte		VOICE , 89
	.byte		N12
	.byte	W04
	.byte		VOL   , 63*song344_mvl/mxv
	.byte	W02
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 67*song344_mvl/mxv
	.byte	W03
	.byte		N12
	.byte	W02
	.byte		VOL   , 70*song344_mvl/mxv
	.byte	W05
	.byte		        74*song344_mvl/mxv
	.byte	W05
	.byte		        78*song344_mvl/mxv
	.byte		N12
	.byte	W05
	.byte		VOL   , 82*song344_mvl/mxv
	.byte	W07
	.byte		VOICE , 85
	.byte		VOL   , 90*song344_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Fs3 
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        55*song344_mvl/mxv
	.byte	W05
	.byte		        59*song344_mvl/mxv
	.byte	W01
	.byte		VOICE , 89
	.byte		N12
	.byte	W03
	.byte		MOD   , 6
	.byte	W01
	.byte		VOL   , 63*song344_mvl/mxv
	.byte	W05
	.byte		        67*song344_mvl/mxv
	.byte	W03
	.byte		N12
	.byte	W02
	.byte		VOL   , 70*song344_mvl/mxv
	.byte	W05
	.byte		        74*song344_mvl/mxv
	.byte	W05
	.byte		        78*song344_mvl/mxv
	.byte		N12
	.byte	W05
	.byte		VOL   , 82*song344_mvl/mxv
	.byte	W07
	.byte		VOICE , 85
	.byte		VOL   , 89*song344_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v+47
	.byte		N12   , Bn3 , v060
	.byte	W12
	.byte		N03   , Bn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , An2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+5
	.byte		N06   , Gs2 , v088
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v-2
	.byte		N06   , En5 , v052
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+5
	.byte		N06   , Fs2 , v088
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-47
	.byte		BEND  , c_v-2
	.byte		N06   , Dn5 , v052
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+5
	.byte		N06   , En2 , v088
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v-2
	.byte		N06   , Bn4 , v052
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+5
	.byte		N12   , Ds2 , v088
	.byte	W30
	.byte		PAN   , c_v-47
	.byte		BEND  , c_v-2
	.byte		N06   , Bn3 , v052
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte	GOTO
	 .word	song344_2 + 0x2
	.byte	FINE

@**************** Track 03 ****************************@

song344_3:
	.byte	KEYSH , 0
	.byte		VOICE , 84
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v-48
	.byte		VOL   , 90*song344_mvl/mxv
	.byte		N12   , Bn3 , v064
	.byte	W12
	.byte		N03   , Bn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte		N03   , An2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte		N03   , An2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		VOICE , 80
	.byte		VOL   , 55*song344_mvl/mxv
	.byte		N48   , An3 
	.byte	W06
	.byte		VOL   , 59*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte		VOL   , 61*song344_mvl/mxv
	.byte	W03
	.byte		        65*song344_mvl/mxv
	.byte	W06
	.byte		        70*song344_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 75*song344_mvl/mxv
	.byte	W06
	.byte		        80*song344_mvl/mxv
	.byte	W03
	.byte		        86*song344_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte		VOL   , 90*song344_mvl/mxv
	.byte	W12
	.byte		N48   , Gs3 , v052
	.byte	W24
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N03   , Bn2 
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte	PEND
	.byte		N48   , Fs3 , v052
	.byte	W24
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N06   , An3 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song344_3 + 0x4B
	.byte	PATT
	 .word	song344_3 + 0x5F
	.byte	PATT
	 .word	song344_3 + 0x4B
	.byte		N48   , Fs3 , v052
	.byte	W24
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N12   , An3 
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N24
	.byte	W24
	.byte	PATT
	 .word	song344_3 + 0x4B
	.byte		N48   , Fs3 , v052
	.byte	W24
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N24   , An3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		VOICE , 84
	.byte		PAN   , c_v+0
	.byte		N06   , Bn3 , v064
	.byte	W06
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N48   , Gn3 
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        55*song344_mvl/mxv
	.byte	W05
	.byte		        59*song344_mvl/mxv
	.byte	W05
	.byte		        63*song344_mvl/mxv
	.byte	W05
	.byte		        67*song344_mvl/mxv
	.byte	W05
	.byte		        70*song344_mvl/mxv
	.byte	W05
	.byte		        74*song344_mvl/mxv
	.byte	W05
	.byte		        78*song344_mvl/mxv
	.byte	W05
	.byte		        82*song344_mvl/mxv
	.byte	W07
	.byte		        90*song344_mvl/mxv
	.byte		N48   , An3 
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        55*song344_mvl/mxv
	.byte	W05
	.byte		        59*song344_mvl/mxv
	.byte	W05
	.byte		        63*song344_mvl/mxv
	.byte	W05
	.byte		        67*song344_mvl/mxv
	.byte	W05
	.byte		        70*song344_mvl/mxv
	.byte	W05
	.byte		        74*song344_mvl/mxv
	.byte	W05
	.byte		        78*song344_mvl/mxv
	.byte	W05
	.byte		        82*song344_mvl/mxv
	.byte	W07
	.byte		VOICE , 84
	.byte		PAN   , c_v+0
	.byte		VOL   , 89*song344_mvl/mxv
	.byte		N12   , En4 , v060
	.byte	W12
	.byte		N03   , En3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v-49
	.byte	W06
	.byte		        c_v+0
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-49
	.byte	W06
	.byte		        c_v+0
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N18   , En4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte	W06
	.byte		        c_v+0
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-49
	.byte	W06
	.byte		        c_v-1
	.byte		N06   , An3 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W18
	.byte		VOICE , 80
	.byte		N06   , En3 , v072
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , En5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v+1
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		PAN   , c_v-47
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte	GOTO
	 .word	song344_3 + 0x2
	.byte	FINE

@**************** Track 04 ****************************@

song344_4:
	.byte		VOL   , 90*song344_mvl/mxv
	.byte	KEYSH , 0
	.byte		PAN   , c_v+15
	.byte	W96
	.byte	W96
	.byte		VOICE , 56
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W42
	.byte		N03   , Bn3 , v092
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N09   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		N18   , Cs4 
	.byte	W18
	.byte		N48   , Bn3 
	.byte	W30
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N06   , En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N18   , En4 
	.byte	W18
	.byte		N12   , Dn4 
	.byte	W18
	.byte		N06   , An3 
	.byte	W06
	.byte		N24
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , An4 
	.byte	W18
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N24
	.byte	W15
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N06   , En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N18   , En4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N48   , An4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N24
	.byte	W15
	.byte		MOD   , 6
	.byte	W09
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		N06   , Bn3 , v044
	.byte	W12
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W12
	.byte		        En4 , v048
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W12
	.byte		N12   , En4 , v076
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N18   , Bn4 
	.byte	W18
	.byte		N48   , Cn5 , v112
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        55*song344_mvl/mxv
	.byte	W05
	.byte		        59*song344_mvl/mxv
	.byte	W05
	.byte		        63*song344_mvl/mxv
	.byte	W05
	.byte		        67*song344_mvl/mxv
	.byte	W05
	.byte		        70*song344_mvl/mxv
	.byte	W05
	.byte		        74*song344_mvl/mxv
	.byte	W05
	.byte		        78*song344_mvl/mxv
	.byte	W05
	.byte		        82*song344_mvl/mxv
	.byte	W07
	.byte		        90*song344_mvl/mxv
	.byte		N48   , Dn5 
	.byte	W03
	.byte		VOL   , 79*song344_mvl/mxv
	.byte	W03
	.byte		        55*song344_mvl/mxv
	.byte	W05
	.byte		        59*song344_mvl/mxv
	.byte	W05
	.byte		        63*song344_mvl/mxv
	.byte	W05
	.byte		        67*song344_mvl/mxv
	.byte	W05
	.byte		        70*song344_mvl/mxv
	.byte	W05
	.byte		        74*song344_mvl/mxv
	.byte	W05
	.byte		        78*song344_mvl/mxv
	.byte	W05
	.byte		        82*song344_mvl/mxv
	.byte	W07
	.byte		        89*song344_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song344_4 + 0x4
	.byte	FINE

@**************** Track 05 ****************************@

song344_5:
	.byte		VOL   , 90*song344_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		PAN   , c_v-17
	.byte		BEND  , c_v+0
	.byte		N12   , En2 , v116
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , En2 , v127
	.byte	W24
	.byte		        Dn2 , v116
	.byte	W18
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Dn2 , v127
	.byte	W24
	.byte		        Cs2 , v116
	.byte	W18
	.byte		N06   , An1 
	.byte	W06
	.byte		N12   , Cs2 , v127
	.byte	W24
	.byte		        Cs2 , v116
	.byte	W24
	.byte		N06   , Ds2 , v127
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N12   , En2 
	.byte	W72
	.byte		N06   , En2 , v088
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W18
	.byte		N12   , Dn2 , v100
	.byte	W48
	.byte		N12
	.byte	W24
	.byte		N06   , Dn2 , v088
	.byte	W06
	.byte		N12   , An1 
	.byte	W18
	.byte	PEND
	.byte		N12   , En2 , v100
	.byte	W72
	.byte		N06   , En2 , v088
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song344_5 + 0x3C
	.byte	PATT
	 .word	song344_5 + 0x4A
	.byte	PATT
	 .word	song344_5 + 0x3C
	.byte	PATT
	 .word	song344_5 + 0x4A
	.byte		N12   , Dn2 , v100
	.byte	W48
	.byte		        Dn2 , v088
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W18
	.byte		        En2 , v127
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N06   , En2 , v112
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W18
	.byte		        Cn2 , v127
	.byte	W36
	.byte		N06   , Cn2 , v112
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W24
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N12   , En2 
	.byte	W72
	.byte		N06   , Bn1 , v076
	.byte	W06
	.byte		N12   , En2 , v100
	.byte	W18
	.byte		        Dn2 
	.byte	W72
	.byte		N06   , An1 , v076
	.byte	W06
	.byte		N12   , Dn2 , v100
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , En2 , v112
	.byte	W24
	.byte		        Dn2 , v100
	.byte	W18
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , Dn2 , v112
	.byte	W24
	.byte		        Bn1 , v100
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Bn1 , v112
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Bn1 , v064
	.byte	W06
	.byte		        Dn2 , v072
	.byte	W06
	.byte		        Bn1 , v080
	.byte	W06
	.byte		        Dn2 , v092
	.byte	W06
	.byte		        Bn1 , v100
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        Bn1 , v116
	.byte	W06
	.byte	GOTO
	 .word	song344_5 + 0x4
	.byte	FINE

@**************** Track 06 ****************************@

song344_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 90*song344_mvl/mxv
	.byte		N06   , En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W12
	.byte		N06   , En1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W12
	.byte		N06   , En1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		N03   , En1 , v068
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W06
	.byte		N06   , En1 , v080
	.byte	W06
	.byte		        En1 , v100
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v112
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v092
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		N03   , En1 , v112
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v068
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
	.byte		N06   , En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W18
	.byte		N06   , En1 , v080
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		N03   , En1 , v068
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v112
	.byte	W18
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		N03   , En1 , v112
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v068
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
	.byte	PEND
	.byte		N06   , En1 , v112
	.byte	W18
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		N03   , En1 , v068
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song344_6 + 0x93
	.byte	PATT
	 .word	song344_6 + 0xBD
	.byte	PATT
	 .word	song344_6 + 0x93
	.byte	PATT
	 .word	song344_6 + 0xBD
	.byte	PATT
	 .word	song344_6 + 0x93
	.byte		N48   , Bn2 , v092
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N03   , En1 , v076
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v092
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte		        En1 , v104
	.byte	W03
	.byte		N06   , En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W12
	.byte		N06   , En1 , v112
	.byte	W24
	.byte		        En1 , v088
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v112
	.byte	W24
	.byte		N03
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v068
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
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        En1 , v088
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v068
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
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		        En1 , v096
	.byte	W12
	.byte		        En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W12
	.byte		N06   , En1 , v088
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte		N48   , Bn2 , v092
	.byte	W03
	.byte		N03   , En1 , v084
	.byte	W03
	.byte		        En1 , v068
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
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		        En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W12
	.byte		N06   , En1 , v108
	.byte	W06
	.byte		        En1 , v080
	.byte	W06
	.byte		N03   , En1 , v112
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		        En1 , v052
	.byte	W03
	.byte		        En1 , v056
	.byte	W03
	.byte		        En1 , v060
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		        En1 , v072
	.byte		N24   , Bn2 , v092
	.byte	W03
	.byte		N03   , En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v092
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte		        En1 , v104
	.byte	W03
	.byte	GOTO
	 .word	song344_6 + 0x2
	.byte	FINE

@******************************************************@
	.align	2

song344:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song344_pri	@ Priority
	.byte	song344_rev	@ Reverb.

	.word	song344_grp

	.word	song344_0
	.word	song344_1
	.word	song344_2
	.word	song344_3
	.word	song344_4
	.word	song344_5
	.word	song344_6

	.end
