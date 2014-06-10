@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song268_grp, group_0
	.equ	song268_pri, 5
	.equ	song268_rev, 178
	.equ	song268_mvl, 127
	.equ	song268_key, 0
	.equ	song268_tbs, 1
	.equ	song268_exg, 1
	.equ	song268_cmp, 1

	.section .rodata
	.global	song268
	.align	2

@**************** Track 00 ****************************@

song268_0:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 48
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , Gn3 , v040
	.byte	W08
	.byte		        Bn3 , v052
	.byte	W08
	.byte		        Dn4 , v060
	.byte	W08
	.byte	TEMPO , 72
	.byte		VOICE , 56
	.byte		N04   , Gn3 , v116
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		N44   , Dn4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W04
	.byte		VOL   , 98*song268_mvl/mxv
	.byte	W04
	.byte		        90*song268_mvl/mxv
	.byte	W04
	.byte		        76*song268_mvl/mxv
	.byte	W04
	.byte		        55*song268_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte	W04
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		N05   , Bn3 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		N04   , En4 
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		N48   , Bn4 
	.byte	W03
	.byte		VOL   , 91*song268_mvl/mxv
	.byte	W03
	.byte		        88*song268_mvl/mxv
	.byte	W03
	.byte		        75*song268_mvl/mxv
	.byte	W06
	.byte		        80*song268_mvl/mxv
	.byte	W01
	.byte		MOD   , 6
	.byte	W05
	.byte		VOL   , 85*song268_mvl/mxv
	.byte	W06
	.byte		        91*song268_mvl/mxv
	.byte	W06
	.byte		        95*song268_mvl/mxv
	.byte	W06
	.byte		        100*song268_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		N12
	.byte	W48
	.byte	FINE

@**************** Track 01 ****************************@

song268_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 48
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W04
	.byte		N08   , An3 , v044
	.byte	W08
	.byte		        Cn4 , v056
	.byte	W08
	.byte		N04   , Fs4 , v064
	.byte	W04
	.byte		N08   , Gn4 , v060
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte	W24
	.byte		N08
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		        Bn4 
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Gn5 
	.byte	W08
	.byte		        En5 
	.byte	W08
	.byte		N48   , Gn5 
	.byte	W03
	.byte		VOL   , 91*song268_mvl/mxv
	.byte	W03
	.byte		        88*song268_mvl/mxv
	.byte	W03
	.byte		        75*song268_mvl/mxv
	.byte	W06
	.byte		        80*song268_mvl/mxv
	.byte	W06
	.byte		        85*song268_mvl/mxv
	.byte	W06
	.byte		        91*song268_mvl/mxv
	.byte	W06
	.byte		        95*song268_mvl/mxv
	.byte	W06
	.byte		        100*song268_mvl/mxv
	.byte	W09
	.byte		N12
	.byte	W48
	.byte	FINE

@**************** Track 02 ****************************@

song268_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte	W24
	.byte		VOICE , 47
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N08   , Gn2 , v127
	.byte	W08
	.byte		N16   , Bn1 
	.byte	W16
	.byte		N24   , Dn2 
	.byte	W40
	.byte		N08   , Gn2 
	.byte	W08
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N04   , Cn2 
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N04   , Gn2 
	.byte	W04
	.byte		        Dn2 , v092
	.byte	W04
	.byte		        Dn2 , v096
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        Dn2 , v100
	.byte	W04
	.byte		        Dn2 , v104
	.byte	W04
	.byte		        Dn2 , v108
	.byte	W04
	.byte		        Dn2 , v112
	.byte	W04
	.byte		        Dn2 , v116
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        Dn2 , v120
	.byte	W04
	.byte		        Dn2 , v124
	.byte	W04
	.byte		N24   , Gn2 , v127
	.byte	W48
	.byte	FINE

@**************** Track 03 ****************************@

song268_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte	W24
	.byte		VOICE , 82
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N04   , Dn3 , v052
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		N68   , Bn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W04
	.byte		VOL   , 96*song268_mvl/mxv
	.byte	W08
	.byte		        84*song268_mvl/mxv
	.byte	W09
	.byte		        71*song268_mvl/mxv
	.byte	W06
	.byte		        60*song268_mvl/mxv
	.byte	W06
	.byte		        48*song268_mvl/mxv
	.byte	W06
	.byte		        30*song268_mvl/mxv
	.byte	W03
	.byte		        11*song268_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte	W04
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		N04   , Gn3 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		N48   , Dn4 
	.byte	W16
	.byte		MOD   , 6
	.byte	W32
	.byte		        0
	.byte		N12
	.byte	W48
	.byte	FINE

@**************** Track 04 ****************************@

song268_4:
	.byte	KEYSH , 0
	.byte	W12
	.byte		XCMD  , xIECV , 10
	.byte	W24
	.byte		VOICE , 83
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		PAN   , c_v+47
	.byte		BEND  , c_v+0
	.byte		N04   , Bn2 , v052
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		N68   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W04
	.byte		VOL   , 96*song268_mvl/mxv
	.byte	W08
	.byte		        84*song268_mvl/mxv
	.byte	W09
	.byte		        71*song268_mvl/mxv
	.byte	W06
	.byte		        60*song268_mvl/mxv
	.byte	W06
	.byte		        48*song268_mvl/mxv
	.byte	W06
	.byte		        30*song268_mvl/mxv
	.byte	W03
	.byte		        11*song268_mvl/mxv
	.byte	W02
	.byte		MOD   , 0
	.byte	W04
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		N04   , En3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		N48   , Bn3 
	.byte	W16
	.byte		MOD   , 6
	.byte	W32
	.byte		        0
	.byte		N12
	.byte	W48
	.byte	FINE

@**************** Track 05 ****************************@

song268_5:
	.byte	KEYSH , 0
	.byte	W12
	.byte	W24
	.byte		VOICE , 88
	.byte		VOL   , 100*song268_mvl/mxv
	.byte	W24
	.byte		N24   , Gn1 , v080
	.byte	W32
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N16
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte		        Cn2 
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte		        An1 
	.byte	W16
	.byte		N08   , Gn1 
	.byte	W08
	.byte		N04   , Dn1 
	.byte	W04
	.byte		        Fs1 
	.byte	W04
	.byte		N12   , Gn1 
	.byte	W48
	.byte	FINE

@**************** Track 06 ****************************@

song268_6:
	.byte	KEYSH , 0
	.byte	W12
	.byte	W24
	.byte		VOICE , 0
	.byte		VOL   , 100*song268_mvl/mxv
	.byte		N04   , En1 , v112
	.byte	W04
	.byte		        En1 , v076
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		        En1 , v084
	.byte	W04
	.byte		        En1 , v088
	.byte	W04
	.byte		        En1 , v112
	.byte		N72   , Bn2 , v092
	.byte	W16
	.byte		N04   , En1 , v112
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		        En1 , v068
	.byte	W04
	.byte		        En1 , v088
	.byte	W04
	.byte		        En1 , v108
	.byte	W04
	.byte		        En1 , v112
	.byte	W08
	.byte		N04
	.byte	W16
	.byte		N04
	.byte	W08
	.byte		        En1 , v120
	.byte	W16
	.byte		        En1 , v092
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v112
	.byte		N48   , Bn2 , v092
	.byte	W04
	.byte		N04   , En1 , v076
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v080
	.byte	W04
	.byte		        En1 , v084
	.byte	W04
	.byte		        En1 , v088
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v096
	.byte	W04
	.byte		        En1 , v100
	.byte	W04
	.byte		        En1 , v104
	.byte	W04
	.byte		        En1 , v108
	.byte	W04
	.byte		        En1 , v120
	.byte		N24   , Bn2 , v092
	.byte	W48
	.byte	FINE

@******************************************************@
	.align	2

song268:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song268_pri	@ Priority
	.byte	song268_rev	@ Reverb.

	.word	song268_grp

	.word	song268_0
	.word	song268_1
	.word	song268_2
	.word	song268_3
	.word	song268_4
	.word	song268_5
	.word	song268_6

	.end
