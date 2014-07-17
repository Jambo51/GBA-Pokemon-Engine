@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song311_grp, group_47
	.equ	song311_pri, 0
	.equ	song311_rev, 178
	.equ	song311_mvl, 127
	.equ	song311_key, 0
	.equ	song311_tbs, 1
	.equ	song311_exg, 1
	.equ	song311_cmp, 1

	.section .rodata
	.global	song311
	.align	2

@**************** Track 00 ****************************@

song311_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 70
	.byte	W09
	.byte		VOICE , 73
	.byte		VOL   , 90*song311_mvl/mxv
	.byte		BENDR , 3
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+0
	.byte		N06   , En4 , v112
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N68   , Bn4 
	.byte	W06
	.byte		VOL   , 77*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        59*song311_mvl/mxv
	.byte	W06
	.byte		        51*song311_mvl/mxv
	.byte	W06
	.byte		        42*song311_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 50*song311_mvl/mxv
	.byte	W06
	.byte		        55*song311_mvl/mxv
	.byte	W03
	.byte		        63*song311_mvl/mxv
	.byte	W03
	.byte		        71*song311_mvl/mxv
	.byte	W03
	.byte		        79*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte	W15
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		N06   , Bn4 , v112
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Bn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N06   , Cn5 , v112
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		        Dn5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	PATT
	 .word	song311_0 + 0x7F
	.byte		N06   , Dn5 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Cn5 
	.byte	W24
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	GOTO
	 .word	song311_0 + 0x37
	.byte	FINE

@**************** Track 01 ****************************@

song311_1:
	.byte	KEYSH , 0
	.byte	W09
	.byte		VOICE , 56
	.byte		VOL   , 90*song311_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		N06   , Gs3 , v080
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N68   , En4 , v100
	.byte	W06
	.byte		VOL   , 77*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        59*song311_mvl/mxv
	.byte	W06
	.byte		        51*song311_mvl/mxv
	.byte	W06
	.byte		        42*song311_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 50*song311_mvl/mxv
	.byte	W06
	.byte		        55*song311_mvl/mxv
	.byte	W03
	.byte		        63*song311_mvl/mxv
	.byte	W03
	.byte		        71*song311_mvl/mxv
	.byte	W03
	.byte		        79*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte	W15
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte	W12
	.byte		N06   , En3 , v092
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		        Bn1 
	.byte	W48
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N06   , En3 , v092
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , An1 , v112
	.byte	W24
	.byte		        Bn1 
	.byte	W48
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N06   , Fn3 , v092
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte		N06
	.byte	W36
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , As1 , v112
	.byte	W12
	.byte		        Cn2 
	.byte	W48
	.byte	PATT
	 .word	song311_1 + 0x6A
	.byte		N06   , Fn3 , v092
	.byte	W24
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , As1 , v112
	.byte	W24
	.byte		        Cn2 
	.byte	W48
	.byte	GOTO
	 .word	song311_1 + 0x32
	.byte	FINE

@**************** Track 02 ****************************@

song311_2:
	.byte	KEYSH , 0
	.byte	W09
	.byte		VOICE , 58
	.byte		VOL   , 90*song311_mvl/mxv
	.byte	W24
	.byte		N21   , En1 , v127
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Gs0 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		VOL   , 90*song311_mvl/mxv
	.byte		N21   , En1 , v127
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N48   , An1 
	.byte	W06
	.byte		VOL   , 75*song311_mvl/mxv
	.byte	W03
	.byte		        65*song311_mvl/mxv
	.byte	W06
	.byte		        60*song311_mvl/mxv
	.byte	W06
	.byte		        65*song311_mvl/mxv
	.byte	W06
	.byte		        72*song311_mvl/mxv
	.byte	W03
	.byte		        77*song311_mvl/mxv
	.byte	W03
	.byte		        86*song311_mvl/mxv
	.byte	W06
	.byte		        90*song311_mvl/mxv
	.byte	W09
	.byte		        70*song311_mvl/mxv
	.byte		N48   , Bn1 
	.byte	W06
	.byte		VOL   , 73*song311_mvl/mxv
	.byte	W06
	.byte		        75*song311_mvl/mxv
	.byte	W06
	.byte		        78*song311_mvl/mxv
	.byte	W06
	.byte		        82*song311_mvl/mxv
	.byte	W09
	.byte		        86*song311_mvl/mxv
	.byte	W06
	.byte		        90*song311_mvl/mxv
	.byte	W09
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N24   , An1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W30
	.byte		        90*song311_mvl/mxv
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N48   , As1 
	.byte	W06
	.byte		VOL   , 75*song311_mvl/mxv
	.byte	W03
	.byte		        65*song311_mvl/mxv
	.byte	W06
	.byte		        60*song311_mvl/mxv
	.byte	W06
	.byte		        65*song311_mvl/mxv
	.byte	W06
	.byte		        72*song311_mvl/mxv
	.byte	W03
	.byte		        77*song311_mvl/mxv
	.byte	W03
	.byte		        86*song311_mvl/mxv
	.byte	W06
	.byte		        90*song311_mvl/mxv
	.byte	W09
	.byte		        70*song311_mvl/mxv
	.byte		N48   , Cn2 
	.byte	W06
	.byte		VOL   , 73*song311_mvl/mxv
	.byte	W06
	.byte		        75*song311_mvl/mxv
	.byte	W06
	.byte		        78*song311_mvl/mxv
	.byte	W06
	.byte		        82*song311_mvl/mxv
	.byte	W09
	.byte		        86*song311_mvl/mxv
	.byte	W06
	.byte		        90*song311_mvl/mxv
	.byte	W09
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N24   , As1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W30
	.byte		        90*song311_mvl/mxv
	.byte		N24   , Fn1 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte		N24   , Bn0 
	.byte	W12
	.byte		VOL   , 82*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        41*song311_mvl/mxv
	.byte	W03
	.byte		        28*song311_mvl/mxv
	.byte	W03
	.byte	GOTO
	 .word	song311_2 + 0x2F
	.byte	FINE

@**************** Track 03 ****************************@

song311_3:
	.byte	KEYSH , 0
	.byte	W09
	.byte		VOICE , 82
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v-48
	.byte		VOL   , 90*song311_mvl/mxv
	.byte		N06   , Bn2 , v052
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N72   , Gs3 
	.byte	W06
	.byte		VOL   , 77*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        59*song311_mvl/mxv
	.byte	W06
	.byte		        51*song311_mvl/mxv
	.byte	W06
	.byte		        42*song311_mvl/mxv
	.byte	W15
	.byte		        50*song311_mvl/mxv
	.byte	W06
	.byte		        55*song311_mvl/mxv
	.byte	W03
	.byte		        63*song311_mvl/mxv
	.byte	W03
	.byte		        71*song311_mvl/mxv
	.byte	W03
	.byte		        79*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte	W15
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N06   , Bn2 , v060
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs3 
	.byte	W96
	.byte	W12
	.byte		        Bn2 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs3 
	.byte	W96
	.byte	W12
	.byte		N06   , Cn3 , v060
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte		        Dn3 
	.byte	W96
	.byte	PATT
	 .word	song311_3 + 0x4C
	.byte		N06   , Dn3 , v060
	.byte	W96
	.byte	GOTO
	 .word	song311_3 + 0x32
	.byte	FINE

@**************** Track 04 ****************************@

song311_4:
	.byte	KEYSH , 0
	.byte	W09
	.byte		VOICE , 80
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+48
	.byte		VOL   , 90*song311_mvl/mxv
	.byte		N06   , Gs2 , v052
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N72   , En3 
	.byte	W06
	.byte		VOL   , 77*song311_mvl/mxv
	.byte	W03
	.byte		        68*song311_mvl/mxv
	.byte	W03
	.byte		        59*song311_mvl/mxv
	.byte	W06
	.byte		        51*song311_mvl/mxv
	.byte	W06
	.byte		        42*song311_mvl/mxv
	.byte	W15
	.byte		        50*song311_mvl/mxv
	.byte	W06
	.byte		        55*song311_mvl/mxv
	.byte	W03
	.byte		        63*song311_mvl/mxv
	.byte	W03
	.byte		        71*song311_mvl/mxv
	.byte	W03
	.byte		        79*song311_mvl/mxv
	.byte	W03
	.byte		        90*song311_mvl/mxv
	.byte	W15
	.byte		VOICE , 83
	.byte		PAN   , c_v+48
	.byte		N03   , Bn5 , v032
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cs6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Bn5 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cs6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Bn5 
	.byte	W48
	.byte		N03   , Cn6 , v032
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte	PEND
	.byte		        Dn6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cn6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte	PATT
	 .word	song311_4 + 0x68
	.byte		N03   , Dn6 , v032
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cn6 
	.byte	W48
	.byte	GOTO
	 .word	song311_4 + 0x32
	.byte	FINE

@**************** Track 05 ****************************@

song311_5:
	.byte	KEYSH , 0
	.byte	W09
	.byte		VOICE , 81
	.byte		VOL   , 90*song311_mvl/mxv
	.byte	W36
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		        Ds5 , v032
	.byte	W06
	.byte		BEND  , c_v+2
	.byte		N06   , En5 , v080
	.byte	W12
	.byte		        En5 , v032
	.byte	W12
	.byte		        En5 , v080
	.byte	W12
	.byte		        En5 , v032
	.byte	W12
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte	W96
	.byte		N06   , An4 , v048
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	W96
	.byte		        An4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Gs4 
	.byte	W48
	.byte	W96
	.byte		        As4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	W96
	.byte		        As4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , An4 
	.byte	W48
	.byte	GOTO
	 .word	song311_5 + 0x1E
	.byte	FINE

@**************** Track 06 ****************************@

song311_6:
	.byte	KEYSH , 0
	.byte	W09
	.byte		VOICE , 0
	.byte		VOL   , 90*song311_mvl/mxv
	.byte	W24
	.byte		N03   , En1 , v112
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v092
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v072
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v112
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		N06   , En1 , v076
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v064
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte	PEND
	.byte		N06   , En1 , v112
	.byte	W24
	.byte		        Fs2 , v064
	.byte	W24
	.byte		N12   , Bn2 , v092
	.byte	W24
	.byte		N06   , En1 , v112
	.byte		N03   , Fs2 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Fs2 , v040
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v052
	.byte	W06
	.byte		        En1 , v088
	.byte		N06   , Fs2 , v060
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song311_6 + 0x2C
	.byte	PATT
	 .word	song311_6 + 0x59
	.byte	PATT
	 .word	song311_6 + 0x2C
	.byte	PATT
	 .word	song311_6 + 0x59
	.byte	PATT
	 .word	song311_6 + 0x2C
	.byte	PATT
	 .word	song311_6 + 0x59
	.byte	GOTO
	 .word	song311_6 + 0x2C
	.byte	FINE

@******************************************************@
	.align	2

song311:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song311_pri	@ Priority
	.byte	song311_rev	@ Reverb.

	.word	song311_grp

	.word	song311_0
	.word	song311_1
	.word	song311_2
	.word	song311_3
	.word	song311_4
	.word	song311_5
	.word	song311_6

	.end
