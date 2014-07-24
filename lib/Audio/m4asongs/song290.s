@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song290_grp, group_26
	.equ	song290_pri, 0
	.equ	song290_rev, 178
	.equ	song290_mvl, 127
	.equ	song290_key, 0
	.equ	song290_tbs, 1
	.equ	song290_exg, 1
	.equ	song290_cmp, 1

	.section .rodata
	.global	song290
	.align	2

@**************** Track 00 ****************************@

song290_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 47
	.byte		VOICE , 73
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+31
	.byte		BEND  , c_v+0
	.byte		N36   , An4 , v080
	.byte	W09
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        51*song290_mvl/mxv
	.byte	W06
	.byte	TEMPO , 38
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	TEMPO , 47
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N36   , Gn4 
	.byte	W09
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        51*song290_mvl/mxv
	.byte	W06
	.byte	TEMPO , 38
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	TEMPO , 47
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N36   , Fs4 
	.byte	W09
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        51*song290_mvl/mxv
	.byte	W06
	.byte	TEMPO , 38
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	TEMPO , 47
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N48   , En4 
	.byte	W09
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        51*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		        34*song290_mvl/mxv
	.byte	W06
	.byte		        26*song290_mvl/mxv
	.byte	W06
	.byte	TEMPO , 47
	.byte		        68*song290_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	TEMPO , 55
	.byte	W48
	.byte	TEMPO , 49
	.byte	W24
	.byte	TEMPO , 38
	.byte	W24
	.byte	TEMPO , 49
	.byte	W24
	.byte	TEMPO , 38
	.byte	W24
	.byte	TEMPO , 49
	.byte	W24
	.byte	TEMPO , 38
	.byte	W24
	.byte	TEMPO , 49
	.byte	W48
	.byte	W96
	.byte	W72
	.byte		VOICE , 47
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		TIE   , En1 , v120
	.byte	W24
	.byte	W24
	.byte		VOL   , 88*song290_mvl/mxv
	.byte	W24
	.byte	W02
	.byte		        87*song290_mvl/mxv
	.byte	W03
	.byte		        85*song290_mvl/mxv
	.byte	W09
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        78*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        67*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        58*song290_mvl/mxv
	.byte	W07
	.byte		EOT
	.byte	TEMPO , 64
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		PAN   , c_v-46
	.byte		N12   , En1 
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N12   , En2 
	.byte	W12
	.byte		PAN   , c_v-44
	.byte		N12   , En1 
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N12   , En2 
	.byte	W12
	.byte		PAN   , c_v-46
	.byte		N12   , En1 
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N12   , En2 
	.byte	W12
	.byte		PAN   , c_v-44
	.byte		N12   , En1 
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N36   , An1 
	.byte	W36
	.byte		PAN   , c_v-33
	.byte		N06   , An2 
	.byte	W06
	.byte		        An2 , v120
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N36   , Gn1 , v127
	.byte	W36
	.byte		PAN   , c_v-33
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N36   , Fs1 
	.byte	W36
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N24   , Dn2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , An1 
	.byte	W24
	.byte		        An2 
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
	.byte	TEMPO , 56
	.byte	W24
	.byte	TEMPO , 56
	.byte	W21
	.byte	TEMPO , 53
	.byte	W24
	.byte	W03
	.byte	TEMPO , 48
	.byte	W24
	.byte	W24
	.byte	TEMPO , 45
	.byte	W24
	.byte	TEMPO , 37
	.byte		VOICE , 47
	.byte	W24
	.byte	TEMPO , 64
	.byte		PAN   , c_v+31
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		        En2 , v088
	.byte	W06
	.byte	TEMPO , 64
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	TEMPO , 65
	.byte		PAN   , c_v-32
	.byte		N24   , An1 , v120
	.byte	W48
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N12   , An2 , v124
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , An1 
	.byte	W24
	.byte		N24   , Gn1 , v120
	.byte	W60
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 , v124
	.byte	W06
	.byte		        Gn2 , v116
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N12   , Gn1 , v124
	.byte	W12
	.byte		N24   , An1 , v120
	.byte	W48
	.byte		PAN   , c_v+31
	.byte	W12
	.byte		N12   , An2 , v124
	.byte	W12
	.byte		PAN   , c_v-30
	.byte		N12   , An1 
	.byte	W24
	.byte		N24   , An1 , v120
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 , v124
	.byte	W06
	.byte		        An2 , v116
	.byte	W06
	.byte		PAN   , c_v-30
	.byte		N06   , An1 , v124
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N24   , An1 , v120
	.byte	W36
	.byte		N12   , An1 , v124
	.byte	W24
	.byte		        An1 , v116
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 , v124
	.byte	W06
	.byte		        An2 , v108
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N12   , Gs1 , v124
	.byte	W12
	.byte		N24   , Gn1 , v120
	.byte	W36
	.byte		N12   , Gn1 , v124
	.byte	W24
	.byte		        Gn1 , v120
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N06   , Gn2 , v124
	.byte	W06
	.byte		        Gn2 , v116
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N12   , As1 , v124
	.byte	W12
	.byte		N24   , An1 , v120
	.byte	W36
	.byte		N12   , An1 , v124
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	TEMPO , 61
	.byte		N08   , An1 , v120
	.byte	W08
	.byte		        En1 , v108
	.byte	W08
	.byte		        An1 , v104
	.byte	W08
	.byte	TEMPO , 58
	.byte		PAN   , c_v+32
	.byte		N08   , Cs2 , v120
	.byte	W08
	.byte		        An1 , v104
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte	TEMPO , 51
	.byte		PAN   , c_v-30
	.byte		N08   , En2 , v120
	.byte	W08
	.byte		        Cs2 , v104
	.byte	W04
	.byte	TEMPO , 45
	.byte	W04
	.byte		        En2 
	.byte	W08
	.byte	TEMPO , 42
	.byte		PAN   , c_v+32
	.byte		N24   , En1 , v112
	.byte	W09
	.byte		VOL   , 80*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W03
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte	TEMPO , 52
	.byte		        90*song290_mvl/mxv
	.byte	W48
	.byte	TEMPO , 57
	.byte	W24
	.byte	TEMPO , 62
	.byte	W24
	.byte	TEMPO , 65
	.byte	W96
	.byte	W96
	.byte		VOICE , 60
	.byte	W48
	.byte	TEMPO , 59
	.byte		N36   , Gn3 , v044
	.byte	W24
	.byte	TEMPO , 54
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	TEMPO , 52
	.byte		N32   , Dn3 
	.byte	W32
	.byte	W01
	.byte		N15   , Bn2 
	.byte	W15
	.byte	TEMPO , 57
	.byte		N48   , Gn3 
	.byte	W21
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W03
	.byte	TEMPO , 62
	.byte		PAN   , c_v+16
	.byte		VOL   , 83*song290_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+9
	.byte		VOL   , 79*song290_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		VOL   , 75*song290_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-1
	.byte		VOL   , 72*song290_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v-6
	.byte		VOL   , 70*song290_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-11
	.byte		VOL   , 68*song290_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		VOL   , 65*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W04
	.byte	TEMPO , 65
	.byte		PAN   , c_v+32
	.byte		VOL   , 90*song290_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W72
	.byte	TEMPO , 51
	.byte	W24
	.byte	TEMPO , 65
	.byte	W96
	.byte	W24
	.byte	TEMPO , 57
	.byte	W24
	.byte	TEMPO , 54
	.byte	W24
	.byte	TEMPO , 48
	.byte		VOICE , 47
	.byte	W24
	.byte	TEMPO , 65
	.byte		PAN   , c_v+31
	.byte		VOL   , 77*song290_mvl/mxv
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N12   , An1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N12   , An1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song290_0 + 0x2BA
	.byte	PATT
	 .word	song290_0 + 0x2BA
	.byte	PATT
	 .word	song290_0 + 0x2BA
	.byte		PAN   , c_v+31
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 79*song290_mvl/mxv
	.byte		N06   , En3 , v108
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N12   , En2 , v120
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N06   , Cn3 , v104
	.byte	W06
	.byte		        Cn3 , v088
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		VOL   , 77*song290_mvl/mxv
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N12   , An1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte	PATT
	 .word	song290_0 + 0x2BA
	.byte	PATT
	 .word	song290_0 + 0x2BA
	.byte		PAN   , c_v+31
	.byte		N12   , An1 , v096
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 79*song290_mvl/mxv
	.byte		N06   , En3 , v108
	.byte	W06
	.byte		        En3 , v088
	.byte	W06
	.byte		PAN   , c_v-19
	.byte		N12   , En2 , v116
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N06   , Cn3 , v108
	.byte	W06
	.byte		        Cn3 , v088
	.byte	W06
	.byte		PAN   , c_v-22
	.byte		N12   , Cn2 , v120
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		VOL   , 77*song290_mvl/mxv
	.byte		N06   , An2 
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N24   , An1 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W21
	.byte		        c_v+32
	.byte		N06   , An1 , v127
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N06
	.byte	W36
	.byte		PAN   , c_v+31
	.byte		N06   , An2 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N24   , An1 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W21
	.byte		        c_v+32
	.byte		N06   , An1 , v127
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N06
	.byte	W36
	.byte		PAN   , c_v+31
	.byte		N05   , An2 , v120
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N24   , An1 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W21
	.byte		        c_v+32
	.byte		N06   , An1 , v127
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N06
	.byte	W36
	.byte		VOICE , 48
	.byte		PAN   , c_v+40
	.byte		N24   , Cn4 , v044
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte	TEMPO , 58
	.byte		        An3 
	.byte	W24
	.byte	TEMPO , 51
	.byte		        Gs3 
	.byte	W24
	.byte	TEMPO , 45
	.byte		        Fn3 
	.byte	W24
	.byte	TEMPO , 38
	.byte		        En3 
	.byte	W24
	.byte	TEMPO , 38
	.byte	W96
	.byte	TEMPO , 50
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 1
	.byte		PAN   , c_v-42
	.byte		N48   , Cn3 , v064
	.byte	W48
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N48   , Fn3 
	.byte	W60
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N48   , Fn3 
	.byte	W60
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N48   , En3 
	.byte	W60
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N48   , Bn2 
	.byte	W60
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N48   , An2 
	.byte	W60
	.byte		N24
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N24   , An2 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N48   , Bn2 
	.byte	W48
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		VOL   , 55*song290_mvl/mxv
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N96   , Cs3 
	.byte	W96
	.byte	W48
	.byte	TEMPO , 42
	.byte	W24
	.byte	TEMPO , 35
	.byte	W24
	.byte	TEMPO , 48
	.byte	W96
	.byte	TEMPO , 49
	.byte	W96
	.byte	TEMPO , 54
	.byte	W96
	.byte	TEMPO , 61
	.byte	W96
	.byte	TEMPO , 64
	.byte	W96
	.byte	TEMPO , 65
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
	.byte		VOICE , 47
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N96   , Dn1 , v108
	.byte	W96
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N96   , En1 
	.byte	W96
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , En1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Fn1 
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Cn2 , v120
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N03   , Bn1 , v127
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N24   , An1 , v127
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song290_0 + 0x4AE
	.byte		N24   , An1 , v127
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N24
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N48   , Gn1 
	.byte	W84
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N48   , Gn1 
	.byte	W72
	.byte		PAN   , c_v+32
	.byte	W12
	.byte		N06   , An2 , v108
	.byte	W06
	.byte		        An2 , v100
	.byte	W06
	.byte		N24   , En2 , v127
	.byte	W24
	.byte		PAN   , c_v-36
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v-36
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v-34
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v+33
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v-35
	.byte	W12
	.byte		        c_v+33
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-35
	.byte		N24   , Gn1 
	.byte	W36
	.byte		PAN   , c_v+34
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-34
	.byte		N12   , Gn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N36
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v-40
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v-40
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N24   , An1 
	.byte	W24
	.byte		PAN   , c_v-40
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , An1 
	.byte	W12
	.byte		PAN   , c_v-40
	.byte		N12   , En1 
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N12   , An1 
	.byte	W12
	.byte		        En1 
	.byte	W03
	.byte		PAN   , c_v-40
	.byte	W09
	.byte		        c_v+34
	.byte		N06   , En2 
	.byte	W12
	.byte		PAN   , c_v-40
	.byte		N12   , An1 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N06   , An2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-38
	.byte		N32   , An1 
	.byte	W12
	.byte		VOL   , 79*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W03
	.byte		        11*song290_mvl/mxv
	.byte	W03
	.byte		        0*song290_mvl/mxv
	.byte	W15
	.byte	FINE

@**************** Track 01 ****************************@

song290_1:
	.byte	KEYSH , 0
	.byte		VOICE , 2
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		VOICE , 68
	.byte		PAN   , c_v+32
	.byte		N36   , Cs4 , v052
	.byte	W15
	.byte		VOL   , 64*song290_mvl/mxv
	.byte	W02
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W04
	.byte		        45*song290_mvl/mxv
	.byte	W02
	.byte		        37*song290_mvl/mxv
	.byte	W03
	.byte		        30*song290_mvl/mxv
	.byte	W03
	.byte		        29*song290_mvl/mxv
	.byte	W01
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W15
	.byte		VOL   , 64*song290_mvl/mxv
	.byte	W02
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W04
	.byte		        45*song290_mvl/mxv
	.byte	W02
	.byte		        37*song290_mvl/mxv
	.byte	W03
	.byte		        30*song290_mvl/mxv
	.byte	W03
	.byte		        29*song290_mvl/mxv
	.byte	W01
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N36   , An3 
	.byte	W15
	.byte		VOL   , 64*song290_mvl/mxv
	.byte	W02
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W04
	.byte		        45*song290_mvl/mxv
	.byte	W02
	.byte		        37*song290_mvl/mxv
	.byte	W03
	.byte		        30*song290_mvl/mxv
	.byte	W03
	.byte		        29*song290_mvl/mxv
	.byte	W01
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		TIE   , Bn3 
	.byte	W48
	.byte	W84
	.byte		VOL   , 55*song290_mvl/mxv
	.byte	W12
	.byte		        45*song290_mvl/mxv
	.byte	W12
	.byte		        33*song290_mvl/mxv
	.byte	W12
	.byte		        22*song290_mvl/mxv
	.byte	W09
	.byte		        14*song290_mvl/mxv
	.byte	W15
	.byte		        9*song290_mvl/mxv
	.byte	W24
	.byte		EOT
	.byte		VOL   , 0*song290_mvl/mxv
	.byte	W24
	.byte		        89*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte		VOICE , 56
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , An4 , v112
	.byte	W36
	.byte		N06   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N72   , Fs4 
	.byte	W72
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N12   , An4 , v084
	.byte	W12
	.byte		        An3 , v076
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+16
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 , v112
	.byte	W06
	.byte		VOICE , 56
	.byte		N36   , Cs4 , v127
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N24   , Gn4 , v127
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
	.byte		N36   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , An3 
	.byte	W12
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 77*song290_mvl/mxv
	.byte	W02
	.byte		        71*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W04
	.byte		        52*song290_mvl/mxv
	.byte	W02
	.byte		        48*song290_mvl/mxv
	.byte	W03
	.byte		        42*song290_mvl/mxv
	.byte	W03
	.byte		        39*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N36   , An3 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , En3 
	.byte	W12
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 84*song290_mvl/mxv
	.byte	W02
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W04
	.byte		        52*song290_mvl/mxv
	.byte	W02
	.byte		        48*song290_mvl/mxv
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 56
	.byte		VOL   , 89*song290_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N36   , Cs4 , v127
	.byte	W36
	.byte		MOD   , 0
	.byte		N06
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PATT
	 .word	song290_1 + 0xDD
	.byte		N36   , Cs4 , v127
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , An3 
	.byte	W12
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 77*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        58*song290_mvl/mxv
	.byte	W04
	.byte		        50*song290_mvl/mxv
	.byte	W02
	.byte		        43*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N36   , An3 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , En3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		VOICE , 56
	.byte		PAN   , c_v+16
	.byte		N36   , Dn4 , v127
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 82*song290_mvl/mxv
	.byte	W02
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        62*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        48*song290_mvl/mxv
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N36   , Gn3 , v076
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , Dn3 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 84*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        71*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        63*song290_mvl/mxv
	.byte	W02
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        48*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N72   , Cs4 , v127
	.byte	W15
	.byte		MOD   , 6
	.byte	W56
	.byte	W01
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N96   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W02
	.byte		        79*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W03
	.byte		        52*song290_mvl/mxv
	.byte	W04
	.byte		        48*song290_mvl/mxv
	.byte	W02
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Dn4 , v112
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 87*song290_mvl/mxv
	.byte	W02
	.byte		        84*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N36   , Gn3 , v076
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , Dn3 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        58*song290_mvl/mxv
	.byte	W02
	.byte		        50*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W07
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N80   , En4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		VOL   , 84*song290_mvl/mxv
	.byte	W02
	.byte		        79*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        71*song290_mvl/mxv
	.byte	W04
	.byte		        66*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W04
	.byte		        55*song290_mvl/mxv
	.byte	W02
	.byte		        53*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W03
	.byte		        47*song290_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N06
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		VOL   , 87*song290_mvl/mxv
	.byte	W02
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        79*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        58*song290_mvl/mxv
	.byte	W04
	.byte		        56*song290_mvl/mxv
	.byte	W02
	.byte		        50*song290_mvl/mxv
	.byte	W03
	.byte		        48*song290_mvl/mxv
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W04
	.byte		        41*song290_mvl/mxv
	.byte	W02
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        35*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N12   , Gn4 , v112
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N66   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 80*song290_mvl/mxv
	.byte	W02
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        58*song290_mvl/mxv
	.byte	W02
	.byte		        53*song290_mvl/mxv
	.byte	W03
	.byte		        47*song290_mvl/mxv
	.byte	W03
	.byte		        40*song290_mvl/mxv
	.byte	W04
	.byte		        38*song290_mvl/mxv
	.byte	W02
	.byte		        33*song290_mvl/mxv
	.byte	W03
	.byte		        30*song290_mvl/mxv
	.byte	W03
	.byte		        24*song290_mvl/mxv
	.byte	W04
	.byte		        21*song290_mvl/mxv
	.byte	W02
	.byte		        19*song290_mvl/mxv
	.byte	W10
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N06   , Cs4 , v072
	.byte	W06
	.byte		        Bn3 , v096
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W18
	.byte		N06   , An3 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N24   , Gn4 , v096
	.byte	W24
	.byte		N21   , Fs4 
	.byte	W21
	.byte		N03   , Fn4 , v064
	.byte	W03
	.byte		N21   , En4 , v096
	.byte	W21
	.byte		N03   , Ds4 , v064
	.byte	W03
	.byte		N24   , Dn4 , v096
	.byte	W24
	.byte	PEND
	.byte		N36   , Cs4 , v096
	.byte	W21
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N03   , An3 
	.byte	W12
	.byte		N48   , En4 
	.byte	W18
	.byte		VOL   , 88*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        67*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte	PEND
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , An3 , v096
	.byte	W21
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N03   , En3 
	.byte	W12
	.byte		N48   , Cs4 
	.byte	W18
	.byte		VOL   , 88*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        67*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte	PEND
	.byte		        90*song290_mvl/mxv
	.byte		N06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PATT
	 .word	song290_1 + 0x310
	.byte	PATT
	 .word	song290_1 + 0x328
	.byte	PATT
	 .word	song290_1 + 0x354
	.byte		VOICE , 60
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Dn4 , v056
	.byte	W21
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W18
	.byte		VOL   , 88*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        67*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 48
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W21
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W18
	.byte		VOL   , 88*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        67*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        62*song290_mvl/mxv
	.byte		N72   , Cs4 
	.byte	W02
	.byte		VOL   , 64*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        87*song290_mvl/mxv
	.byte	W03
	.byte		        90*song290_mvl/mxv
	.byte	W40
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N96   , En4 
	.byte	W42
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W02
	.byte		        82*song290_mvl/mxv
	.byte	W04
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        60*song290_mvl/mxv
	.byte	W02
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W04
	.byte		        51*song290_mvl/mxv
	.byte	W02
	.byte		        49*song290_mvl/mxv
	.byte	W03
	.byte		        48*song290_mvl/mxv
	.byte	W07
	.byte		VOICE , 60
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Dn4 , v044
	.byte	W21
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W18
	.byte		VOL   , 88*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        67*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 48
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Gn3 , v056
	.byte	W21
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W18
	.byte		VOL   , 88*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        67*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        56*song290_mvl/mxv
	.byte		N80   , En4 
	.byte	W02
	.byte		VOL   , 60*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        63*song290_mvl/mxv
	.byte	W02
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W04
	.byte		        79*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W03
	.byte		        84*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W48
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W02
	.byte		        84*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        79*song290_mvl/mxv
	.byte	W04
	.byte		        78*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W04
	.byte		        71*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W06
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W07
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N12   , Gn4 , v060
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Bn3 , v072
	.byte	W24
	.byte		        An3 , v080
	.byte	W24
	.byte		        Gs3 , v076
	.byte	W24
	.byte		VOICE , 56
	.byte		PAN   , c_v-34
	.byte		N06   , An3 , v096
	.byte	W24
	.byte		N15   , Gs3 
	.byte	W24
	.byte		N06   , An3 
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte	W12
	.byte		N06   , An3 , v096
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W24
	.byte		N06   , An3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte	PEND
	.byte		N06   , An3 , v096
	.byte	W24
	.byte		N15   , Gs3 
	.byte	W24
	.byte		N06   , An3 
	.byte	W24
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song290_1 + 0x518
	.byte	PATT
	 .word	song290_1 + 0x527
	.byte	PATT
	 .word	song290_1 + 0x518
	.byte	PATT
	 .word	song290_1 + 0x527
	.byte	PATT
	 .word	song290_1 + 0x518
	.byte	PATT
	 .word	song290_1 + 0x527
	.byte	PATT
	 .word	song290_1 + 0x518
	.byte	W12
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        An1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Fn3 
	.byte	W12
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        An1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Fs3 
	.byte	W12
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        An1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Gs3 
	.byte	W12
	.byte	W12
	.byte		VOICE , 48
	.byte		N24   , An4 , v080
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        En4 
	.byte	W12
	.byte	W12
	.byte		        Fn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		VOL   , 18*song290_mvl/mxv
	.byte		N48   , Cn4 , v044
	.byte	W02
	.byte		VOL   , 21*song290_mvl/mxv
	.byte	W03
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        31*song290_mvl/mxv
	.byte	W04
	.byte		        36*song290_mvl/mxv
	.byte	W02
	.byte		        42*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W04
	.byte		        65*song290_mvl/mxv
	.byte	W02
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W16
	.byte		        18*song290_mvl/mxv
	.byte		N48   , Dn4 
	.byte	W02
	.byte		VOL   , 21*song290_mvl/mxv
	.byte	W03
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        31*song290_mvl/mxv
	.byte	W04
	.byte		        36*song290_mvl/mxv
	.byte	W02
	.byte		        42*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W04
	.byte		        65*song290_mvl/mxv
	.byte	W02
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W16
	.byte		VOICE , 1
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*song290_mvl/mxv
	.byte		N96   , En4 , v124
	.byte	W96
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N21   , Gn4 
	.byte	W21
	.byte		N03   , Gs4 , v076
	.byte	W03
	.byte		N12   , Gn4 , v124
	.byte	W12
	.byte		N08
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N84   , Dn4 , v096
	.byte	W84
	.byte	W24
	.byte		N24   , Fn3 , v080
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N96   , Dn4 , v124
	.byte	W96
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N21   , Fn4 
	.byte	W21
	.byte		N03   , Fs4 , v080
	.byte	W03
	.byte		N12   , Fn4 , v124
	.byte	W12
	.byte		N08
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		N12   , En4 
	.byte	W12
	.byte		N84   , Gn4 
	.byte	W84
	.byte		VOICE , 48
	.byte		VOL   , 45*song290_mvl/mxv
	.byte	W24
	.byte		N24   , Cn4 , v112
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		VOL   , 24*song290_mvl/mxv
	.byte		N72   , An4 
	.byte	W02
	.byte		VOL   , 26*song290_mvl/mxv
	.byte	W03
	.byte		        29*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W04
	.byte		        39*song290_mvl/mxv
	.byte	W02
	.byte		        43*song290_mvl/mxv
	.byte	W01
	.byte		        45*song290_mvl/mxv
	.byte	W56
	.byte	W01
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N36   , Cn5 
	.byte	W36
	.byte		N09   , Bn4 
	.byte	W09
	.byte		N03   , Ds5 , v080
	.byte	W03
	.byte		N12   , Dn5 , v112
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W09
	.byte		N03   , As4 , v060
	.byte	W03
	.byte		N24   , An4 , v112
	.byte	W24
	.byte		VOL   , 26*song290_mvl/mxv
	.byte		N60   , Gn4 
	.byte	W02
	.byte		VOL   , 29*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        36*song290_mvl/mxv
	.byte	W04
	.byte		        39*song290_mvl/mxv
	.byte	W02
	.byte		        43*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W42
	.byte	W01
	.byte		N12   , En4 
	.byte	W12
	.byte		VOL   , 24*song290_mvl/mxv
	.byte		N72   , Gn4 
	.byte	W02
	.byte		VOL   , 27*song290_mvl/mxv
	.byte	W03
	.byte		        31*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W04
	.byte		        35*song290_mvl/mxv
	.byte	W02
	.byte		        39*song290_mvl/mxv
	.byte	W03
	.byte		        42*song290_mvl/mxv
	.byte	W03
	.byte		        47*song290_mvl/mxv
	.byte	W01
	.byte		        45*song290_mvl/mxv
	.byte	W48
	.byte	W03
	.byte		N24   , Fs4 
	.byte	W24
	.byte		VOL   , 22*song290_mvl/mxv
	.byte		N72   , Fn4 
	.byte	W02
	.byte		VOL   , 24*song290_mvl/mxv
	.byte	W03
	.byte		        27*song290_mvl/mxv
	.byte	W03
	.byte		        31*song290_mvl/mxv
	.byte	W04
	.byte		        32*song290_mvl/mxv
	.byte	W02
	.byte		        36*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W04
	.byte		        45*song290_mvl/mxv
	.byte	W48
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		VOL   , 22*song290_mvl/mxv
	.byte		N60   , En4 
	.byte	W02
	.byte		VOL   , 26*song290_mvl/mxv
	.byte	W06
	.byte		        31*song290_mvl/mxv
	.byte	W04
	.byte		        35*song290_mvl/mxv
	.byte	W02
	.byte		        39*song290_mvl/mxv
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W01
	.byte		        45*song290_mvl/mxv
	.byte	W42
	.byte		N12   , Fn4 
	.byte	W12
	.byte		VOL   , 14*song290_mvl/mxv
	.byte		TIE   , Gn4 
	.byte	W03
	.byte		VOL   , 17*song290_mvl/mxv
	.byte	W02
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        19*song290_mvl/mxv
	.byte	W09
	.byte		        22*song290_mvl/mxv
	.byte	W03
	.byte		        26*song290_mvl/mxv
	.byte	W04
	.byte		        29*song290_mvl/mxv
	.byte	W05
	.byte		        31*song290_mvl/mxv
	.byte	W03
	.byte		        32*song290_mvl/mxv
	.byte	W04
	.byte		        34*song290_mvl/mxv
	.byte	W05
	.byte		        36*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		        39*song290_mvl/mxv
	.byte	W03
	.byte		        42*song290_mvl/mxv
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W04
	.byte		        45*song290_mvl/mxv
	.byte	W36
	.byte	W42
	.byte		        45*song290_mvl/mxv
	.byte	W02
	.byte		        43*song290_mvl/mxv
	.byte	W04
	.byte		        42*song290_mvl/mxv
	.byte	W02
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        35*song290_mvl/mxv
	.byte	W03
	.byte		        32*song290_mvl/mxv
	.byte	W04
	.byte		        31*song290_mvl/mxv
	.byte	W02
	.byte		        29*song290_mvl/mxv
	.byte	W03
	.byte		        27*song290_mvl/mxv
	.byte	W03
	.byte		        24*song290_mvl/mxv
	.byte	W04
	.byte		        22*song290_mvl/mxv
	.byte	W02
	.byte		        21*song290_mvl/mxv
	.byte	W06
	.byte		        19*song290_mvl/mxv
	.byte	W04
	.byte		        18*song290_mvl/mxv
	.byte	W05
	.byte		        17*song290_mvl/mxv
	.byte	W03
	.byte		        15*song290_mvl/mxv
	.byte	W04
	.byte		EOT
	.byte		TIE   , An4 
	.byte	W05
	.byte		VOL   , 11*song290_mvl/mxv
	.byte	W03
	.byte		        12*song290_mvl/mxv
	.byte	W06
	.byte		        14*song290_mvl/mxv
	.byte	W10
	.byte		        15*song290_mvl/mxv
	.byte	W02
	.byte		        18*song290_mvl/mxv
	.byte	W06
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        24*song290_mvl/mxv
	.byte	W05
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        29*song290_mvl/mxv
	.byte	W06
	.byte		        31*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        35*song290_mvl/mxv
	.byte	W04
	.byte		        36*song290_mvl/mxv
	.byte	W02
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        39*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W04
	.byte		        42*song290_mvl/mxv
	.byte	W02
	.byte		        43*song290_mvl/mxv
	.byte	W22
	.byte	W36
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W11
	.byte		        41*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        35*song290_mvl/mxv
	.byte	W04
	.byte		        31*song290_mvl/mxv
	.byte	W02
	.byte		        27*song290_mvl/mxv
	.byte	W03
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W04
	.byte		        21*song290_mvl/mxv
	.byte	W02
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        17*song290_mvl/mxv
	.byte	W09
	.byte		        15*song290_mvl/mxv
	.byte	W07
	.byte		EOT
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		VOL   , 72*song290_mvl/mxv
	.byte		N24   , Gn4 , v028
	.byte	W24
	.byte		        Fs4 , v032
	.byte	W24
	.byte		        En4 , v036
	.byte	W24
	.byte		        Dn4 , v044
	.byte	W24
	.byte		VOL   , 18*song290_mvl/mxv
	.byte		PAN   , c_v-17
	.byte		N96   , Cs4 , v068
	.byte	W05
	.byte		VOL   , 21*song290_mvl/mxv
	.byte	W07
	.byte		        22*song290_mvl/mxv
	.byte	W02
	.byte		        27*song290_mvl/mxv
	.byte	W03
	.byte		        31*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W04
	.byte		        35*song290_mvl/mxv
	.byte	W02
	.byte		        39*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W03
	.byte		        43*song290_mvl/mxv
	.byte	W04
	.byte		        45*song290_mvl/mxv
	.byte	W02
	.byte		        50*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W04
	.byte		        58*song290_mvl/mxv
	.byte	W02
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        71*song290_mvl/mxv
	.byte	W02
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W30
	.byte	W01
	.byte		        14*song290_mvl/mxv
	.byte		N96   , An3 , v072
	.byte	W02
	.byte		VOL   , 17*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        22*song290_mvl/mxv
	.byte	W02
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        27*song290_mvl/mxv
	.byte	W03
	.byte		        29*song290_mvl/mxv
	.byte	W04
	.byte		        32*song290_mvl/mxv
	.byte	W02
	.byte		        35*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W04
	.byte		        43*song290_mvl/mxv
	.byte	W02
	.byte		        47*song290_mvl/mxv
	.byte	W03
	.byte		        52*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W04
	.byte		        56*song290_mvl/mxv
	.byte	W02
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        76*song290_mvl/mxv
	.byte	W32
	.byte	W02
	.byte		        24*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , En3 
	.byte	W02
	.byte		VOL   , 27*song290_mvl/mxv
	.byte	W06
	.byte		        31*song290_mvl/mxv
	.byte	W06
	.byte		        34*song290_mvl/mxv
	.byte	W12
	.byte		        36*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        42*song290_mvl/mxv
	.byte	W04
	.byte		        43*song290_mvl/mxv
	.byte	W02
	.byte		        48*song290_mvl/mxv
	.byte	W03
	.byte		        52*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W04
	.byte		        59*song290_mvl/mxv
	.byte	W02
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        71*song290_mvl/mxv
	.byte	W04
	.byte		        75*song290_mvl/mxv
	.byte	W36
	.byte		N48   , Dn3 
	.byte	W48
	.byte		VOL   , 47*song290_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W02
	.byte		VOL   , 53*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		        71*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W21
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N48   , En3 
	.byte	W48
	.byte		VOL   , 48*song290_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W02
	.byte		VOL   , 55*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W21
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N96   , En3 
	.byte	W96
	.byte		VOL   , 55*song290_mvl/mxv
	.byte		N96   , Dn3 
	.byte	W02
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W03
	.byte		        58*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        64*song290_mvl/mxv
	.byte	W02
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        71*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        84*song290_mvl/mxv
	.byte	W03
	.byte		        87*song290_mvl/mxv
	.byte	W66
	.byte	W01
	.byte		        71*song290_mvl/mxv
	.byte		N48   , Bn2 
	.byte	W02
	.byte		VOL   , 74*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        79*song290_mvl/mxv
	.byte	W04
	.byte		        84*song290_mvl/mxv
	.byte	W02
	.byte		        88*song290_mvl/mxv
	.byte	W03
	.byte		        90*song290_mvl/mxv
	.byte	W30
	.byte	W01
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N48   , En3 
	.byte	W48
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N96   , Cs4 
	.byte	W48
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W02
	.byte		        83*song290_mvl/mxv
	.byte	W03
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        69*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W04
	.byte		        65*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W07
	.byte		        90*song290_mvl/mxv
	.byte		N96   , Dn4 
	.byte	W36
	.byte	W03
	.byte		VOL   , 87*song290_mvl/mxv
	.byte	W02
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        85*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W08
	.byte		        78*song290_mvl/mxv
	.byte	W06
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        73*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		        65*song290_mvl/mxv
	.byte	W02
	.byte		        64*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N48   , Bn3 
	.byte	W24
	.byte		VOL   , 83*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W04
	.byte		        72*song290_mvl/mxv
	.byte	W02
	.byte		        69*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N36   , Dn4 
	.byte	W12
	.byte		VOL   , 87*song290_mvl/mxv
	.byte	W02
	.byte		        85*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        78*song290_mvl/mxv
	.byte	W04
	.byte		        75*song290_mvl/mxv
	.byte	W02
	.byte		        71*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W07
	.byte		        90*song290_mvl/mxv
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N72   , Cs4 
	.byte	W24
	.byte		VOL   , 84*song290_mvl/mxv
	.byte	W02
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        78*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        60*song290_mvl/mxv
	.byte	W02
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        54*song290_mvl/mxv
	.byte	W16
	.byte		        90*song290_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N96   , An3 , v096
	.byte	W24
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W02
	.byte		        84*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        81*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W06
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        60*song290_mvl/mxv
	.byte	W02
	.byte		        58*song290_mvl/mxv
	.byte	W03
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        54*song290_mvl/mxv
	.byte	W04
	.byte		        53*song290_mvl/mxv
	.byte	W02
	.byte		        53*song290_mvl/mxv
	.byte	W03
	.byte		        52*song290_mvl/mxv
	.byte	W07
	.byte		N72   , Fs3 , v100
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W02
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W04
	.byte		        63*song290_mvl/mxv
	.byte	W02
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W04
	.byte		        79*song290_mvl/mxv
	.byte	W02
	.byte		        84*song290_mvl/mxv
	.byte	W03
	.byte		        90*song290_mvl/mxv
	.byte	W30
	.byte	W01
	.byte		N24   , Gs3 
	.byte	W24
	.byte		VOL   , 64*song290_mvl/mxv
	.byte		N48   , An3 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        64*song290_mvl/mxv
	.byte		N48   , Fs3 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        59*song290_mvl/mxv
	.byte		N72   , Gs3 
	.byte	W02
	.byte		VOL   , 62*song290_mvl/mxv
	.byte	W03
	.byte		        64*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        78*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        85*song290_mvl/mxv
	.byte	W04
	.byte		        88*song290_mvl/mxv
	.byte	W02
	.byte		        90*song290_mvl/mxv
	.byte	W32
	.byte	W02
	.byte		N24   , An3 
	.byte	W24
	.byte		VOL   , 64*song290_mvl/mxv
	.byte		N48   , Bn3 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        64*song290_mvl/mxv
	.byte		N48   , Gs3 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        59*song290_mvl/mxv
	.byte		N72   , An3 
	.byte	W02
	.byte		VOL   , 62*song290_mvl/mxv
	.byte	W03
	.byte		        64*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        78*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        85*song290_mvl/mxv
	.byte	W04
	.byte		        88*song290_mvl/mxv
	.byte	W02
	.byte		        90*song290_mvl/mxv
	.byte	W32
	.byte	W02
	.byte		N24   , Bn3 
	.byte	W24
	.byte		VOL   , 64*song290_mvl/mxv
	.byte		N48   , Cn4 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        64*song290_mvl/mxv
	.byte		N48   , An3 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        59*song290_mvl/mxv
	.byte		N72   , Bn3 
	.byte	W02
	.byte		VOL   , 62*song290_mvl/mxv
	.byte	W03
	.byte		        64*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        78*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        85*song290_mvl/mxv
	.byte	W04
	.byte		        88*song290_mvl/mxv
	.byte	W02
	.byte		        90*song290_mvl/mxv
	.byte	W32
	.byte	W02
	.byte		N24   , Cn4 
	.byte	W24
	.byte		VOL   , 64*song290_mvl/mxv
	.byte		N48   , Dn4 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        64*song290_mvl/mxv
	.byte		N48   , Bn3 
	.byte	W02
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W04
	.byte		        76*song290_mvl/mxv
	.byte	W02
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W28
	.byte		        51*song290_mvl/mxv
	.byte		TIE   , Cs4 
	.byte	W02
	.byte		VOL   , 52*song290_mvl/mxv
	.byte	W03
	.byte		        54*song290_mvl/mxv
	.byte	W03
	.byte		        55*song290_mvl/mxv
	.byte	W04
	.byte		        55*song290_mvl/mxv
	.byte	W02
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        63*song290_mvl/mxv
	.byte	W02
	.byte		        64*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W04
	.byte		        77*song290_mvl/mxv
	.byte	W02
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        89*song290_mvl/mxv
	.byte	W03
	.byte		        90*song290_mvl/mxv
	.byte	W40
	.byte	W32
	.byte	W01
	.byte		        89*song290_mvl/mxv
	.byte	W03
	.byte		        88*song290_mvl/mxv
	.byte	W02
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        83*song290_mvl/mxv
	.byte	W03
	.byte		        81*song290_mvl/mxv
	.byte	W04
	.byte		        79*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W04
	.byte		        73*song290_mvl/mxv
	.byte	W02
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W06
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W07
	.byte		EOT
	.byte		TIE   , An3 
	.byte	W03
	.byte		VOL   , 65*song290_mvl/mxv
	.byte	W02
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        71*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        73*song290_mvl/mxv
	.byte	W02
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W06
	.byte		        78*song290_mvl/mxv
	.byte	W03
	.byte		        81*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W04
	.byte		        84*song290_mvl/mxv
	.byte	W02
	.byte		        87*song290_mvl/mxv
	.byte	W03
	.byte		        90*song290_mvl/mxv
	.byte	W30
	.byte	W01
	.byte	W36
	.byte	W03
	.byte		        87*song290_mvl/mxv
	.byte	W02
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        84*song290_mvl/mxv
	.byte	W04
	.byte		        82*song290_mvl/mxv
	.byte	W02
	.byte		        79*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W04
	.byte		        75*song290_mvl/mxv
	.byte	W02
	.byte		        73*song290_mvl/mxv
	.byte	W03
	.byte		        71*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W04
	.byte		        62*song290_mvl/mxv
	.byte	W02
	.byte		        58*song290_mvl/mxv
	.byte	W03
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        54*song290_mvl/mxv
	.byte	W04
	.byte		EOT
	.byte		VOICE , 48
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N48   , En4 
	.byte	W18
	.byte		VOL   , 87*song290_mvl/mxv
	.byte	W02
	.byte		        82*song290_mvl/mxv
	.byte	W04
	.byte		        81*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        64*song290_mvl/mxv
	.byte	W04
	.byte		VOICE , 60
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N48   , En3 
	.byte	W24
	.byte		VOL   , 82*song290_mvl/mxv
	.byte	W02
	.byte		        79*song290_mvl/mxv
	.byte	W03
	.byte		        74*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N24   , Cs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		VOICE , 56
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , Gn3 , v120
	.byte	W36
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 85*song290_mvl/mxv
	.byte	W06
	.byte		        79*song290_mvl/mxv
	.byte	W06
	.byte		        72*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W06
	.byte		        90*song290_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W06
	.byte		        79*song290_mvl/mxv
	.byte	W06
	.byte		        73*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W06
	.byte		        60*song290_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		TIE   , An4 
	.byte	W09
	.byte		VOL   , 51*song290_mvl/mxv
	.byte	W24
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W02
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W04
	.byte		        55*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        58*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        60*song290_mvl/mxv
	.byte	W02
	.byte		        62*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        64*song290_mvl/mxv
	.byte	W06
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        67*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		MOD   , 6
	.byte	W02
	.byte		VOL   , 69*song290_mvl/mxv
	.byte	W06
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        71*song290_mvl/mxv
	.byte	W02
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        73*song290_mvl/mxv
	.byte	W07
	.byte		        75*song290_mvl/mxv
	.byte	W02
	.byte		        76*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        78*song290_mvl/mxv
	.byte	W04
	.byte		        79*song290_mvl/mxv
	.byte	W02
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        84*song290_mvl/mxv
	.byte	W03
	.byte		        85*song290_mvl/mxv
	.byte	W04
	.byte		        86*song290_mvl/mxv
	.byte	W02
	.byte		        89*song290_mvl/mxv
	.byte	W03
	.byte		        90*song290_mvl/mxv
	.byte	W54
	.byte	W01
	.byte		EOT
	.byte		MOD   , 0
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 02 ****************************@

song290_2:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		VOL   , 56*song290_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-28
	.byte	W96
	.byte	W96
	.byte		TIE   , Bn2 , v092
	.byte	W96
	.byte		VOL   , 51*song290_mvl/mxv
	.byte	W12
	.byte		        45*song290_mvl/mxv
	.byte	W12
	.byte		        39*song290_mvl/mxv
	.byte	W12
	.byte		        34*song290_mvl/mxv
	.byte	W12
	.byte		        26*song290_mvl/mxv
	.byte	W12
	.byte		        22*song290_mvl/mxv
	.byte	W06
	.byte		        17*song290_mvl/mxv
	.byte	W06
	.byte		        11*song290_mvl/mxv
	.byte	W06
	.byte		        6*song290_mvl/mxv
	.byte	W06
	.byte		EOT
	.byte	W12
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		VOL   , 50*song290_mvl/mxv
	.byte		N08   , Cs4 , v064
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Fs3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		N03
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 , v048
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 , v032
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 , v020
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 , v008
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W24
	.byte	W03
	.byte	W96
	.byte		PAN   , c_v-33
	.byte		N92   , Bn3 , v088
	.byte	W96
	.byte		VOICE , 48
	.byte		VOL   , 70*song290_mvl/mxv
	.byte		N32   , Cs3 , v120
	.byte	W36
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		        Cs3 , v127
	.byte	W06
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N36   , Fs3 
	.byte	W36
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W96
	.byte	W72
	.byte		VOICE , 92
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song290_mvl/mxv
	.byte	W24
	.byte		BEND  , c_v+1
	.byte		N36   , Cs4 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N24   , Gn4 , v072
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte	PEND
	.byte		N36   , Cs4 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , An3 
	.byte	W12
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , En3 
	.byte	W12
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		N36
	.byte	W36
	.byte		MOD   , 0
	.byte		N06
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PATT
	 .word	song290_2 + 0x121
	.byte	PATT
	 .word	song290_2 + 0x12C
	.byte		MOD   , 0
	.byte		N36   , An3 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , En3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		N36   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		MOD   , 0
	.byte		N36   , Gn3 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N72   , Cs4 
	.byte	W15
	.byte		MOD   , 6
	.byte	W56
	.byte	W01
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N96   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W84
	.byte		        0
	.byte		N36   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte	PATT
	 .word	song290_2 + 0x18C
	.byte		MOD   , 0
	.byte		N80   , En4 , v072
	.byte	W12
	.byte		MOD   , 5
	.byte	W72
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N96   , An4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W84
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N66   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W60
	.byte		        0
	.byte	W24
	.byte		VOICE , 13
	.byte		PAN   , c_v+31
	.byte		VOL   , 50*song290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06   , Dn4 , v064
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	PEND
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	PEND
	.byte		N06   , En4 , v064
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song290_2 + 0x23B
	.byte	PATT
	 .word	song290_2 + 0x218
	.byte	PATT
	 .word	song290_2 + 0x23B
	.byte	PATT
	 .word	song290_2 + 0x25E
	.byte		VOICE , 46
	.byte		PAN   , c_v-32
	.byte		VOL   , 56*song290_mvl/mxv
	.byte		N04   , Gn2 , v092
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		PAN   , c_v-16
	.byte		N04   , Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte	W02
	.byte		N04   , Fs5 
	.byte	W04
	.byte		PAN   , c_v+32
	.byte		N04   , Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		PAN   , c_v-16
	.byte		N04   , Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W02
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		N04   , Gn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		PAN   , c_v-16
	.byte		N04   , Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte	W02
	.byte		N04   , Gs5 
	.byte	W04
	.byte		PAN   , c_v+32
	.byte		N04   , An5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		PAN   , c_v+16
	.byte		N04   , En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W02
	.byte		PAN   , c_v-16
	.byte	W02
	.byte		N04   , An2 
	.byte	W04
	.byte		PAN   , c_v-32
	.byte		N04   , Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		PAN   , c_v-16
	.byte		N04   , Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte	W02
	.byte		N04   , Fs5 
	.byte	W04
	.byte		PAN   , c_v+32
	.byte		N04   , Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		PAN   , c_v+16
	.byte		N04   , Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W02
	.byte		PAN   , c_v-16
	.byte	W02
	.byte		N04   , Gn2 
	.byte	W04
	.byte		PAN   , c_v-32
	.byte		N24   , An4 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gs4 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Fs4 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , En4 
	.byte	W24
	.byte		PAN   , c_v-44
	.byte		N03   , An2 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		PAN   , c_v-29
	.byte		N03   , En3 
	.byte	W03
	.byte		PAN   , c_v-19
	.byte		N03   , Fs3 
	.byte	W03
	.byte		PAN   , c_v+19
	.byte		N03   , Gs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		PAN   , c_v+34
	.byte		N03   , Bn3 
	.byte	W03
	.byte		PAN   , c_v+44
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		PAN   , c_v-48
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		VOICE , 60
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		N12   , En2 , v080
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En2 
	.byte	W12
	.byte		        Gs2 
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
	.byte		N06   , An3 
	.byte	W06
	.byte		N06
	.byte	W30
	.byte		        An2 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N06   , An3 
	.byte	W06
	.byte		N06
	.byte	W30
	.byte		        An2 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte	W36
	.byte		N06   , An2 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , En4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		VOICE , 1
	.byte		PAN   , c_v+26
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        Dn4 , v092
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N96   , Gn3 , v080
	.byte	W96
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N21   , Bn3 
	.byte	W21
	.byte		N03   , Cn4 , v060
	.byte	W03
	.byte		N12   , Bn3 , v080
	.byte	W12
	.byte		N08
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		N12   , An3 
	.byte	W12
	.byte		N84   , Fn3 
	.byte	W84
	.byte	W24
	.byte		N24   , An2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N96   , Fn3 
	.byte	W96
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N21   , An3 
	.byte	W21
	.byte		N03   , As3 , v056
	.byte	W03
	.byte		N12   , An3 , v080
	.byte	W12
	.byte		N08
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N72   , Cn4 
	.byte	W72
	.byte		N03   , Gn2 , v048
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Cn3 , v060
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		VOICE , 46
	.byte		PAN   , c_v+40
	.byte		VOL   , 60*song290_mvl/mxv
	.byte		N48   , En3 , v068
	.byte	W48
	.byte		N24   , Bn3 , v064
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
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
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N36   , Fn3 , v080
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N24   , Fn3 , v064
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N60   , Bn3 
	.byte	W60
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Cs3 , v052
	.byte	W03
	.byte		        En3 , v060
	.byte	W03
	.byte		        An3 , v064
	.byte	W03
	.byte		        Cs4 , v072
	.byte	W03
	.byte		N96   , En4 , v084
	.byte	W96
	.byte	W96
	.byte		VOICE , 46
	.byte		PAN   , c_v+26
	.byte		N24   , Gn3 , v080
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , An3 , v064
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		N03   , Cs4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn4 
	.byte	W03
	.byte		N24   , En4 , v080
	.byte	W48
	.byte		PAN   , c_v+29
	.byte		N24   , Dn4 , v064
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N24   , Cs4 
	.byte	W48
	.byte		PAN   , c_v+32
	.byte		N24   , Bn3 , v080
	.byte	W48
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		VOL   , 24*song290_mvl/mxv
	.byte		N08   , Cs3 , v056
	.byte	W05
	.byte		VOL   , 26*song290_mvl/mxv
	.byte	W03
	.byte		N08   , An2 
	.byte	W04
	.byte		VOL   , 27*song290_mvl/mxv
	.byte	W02
	.byte		        31*song290_mvl/mxv
	.byte	W02
	.byte		N08   , Cs3 
	.byte	W01
	.byte		VOL   , 32*song290_mvl/mxv
	.byte	W07
	.byte		        35*song290_mvl/mxv
	.byte		N08   , An2 
	.byte	W02
	.byte		VOL   , 38*song290_mvl/mxv
	.byte	W03
	.byte		        39*song290_mvl/mxv
	.byte	W03
	.byte		        42*song290_mvl/mxv
	.byte		N08   , Cs3 
	.byte	W04
	.byte		VOL   , 43*song290_mvl/mxv
	.byte	W02
	.byte		        48*song290_mvl/mxv
	.byte	W02
	.byte		N08   , An2 
	.byte	W01
	.byte		VOL   , 50*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W04
	.byte		        55*song290_mvl/mxv
	.byte		N08   , Cs3 
	.byte	W02
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		N08   , An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		N08   , Bn2 , v056
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Gn2 
	.byte	W08
	.byte	PEND
	.byte		N08   , Cs3 , v056
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	song290_2 + 0x626
	.byte	PATT
	 .word	song290_2 + 0x60B
	.byte	PATT
	 .word	song290_2 + 0x60B
	.byte	PATT
	 .word	song290_2 + 0x626
	.byte	PATT
	 .word	song290_2 + 0x626
	.byte	PATT
	 .word	song290_2 + 0x60B
	.byte	PATT
	 .word	song290_2 + 0x60B
	.byte	PATT
	 .word	song290_2 + 0x626
	.byte	PATT
	 .word	song290_2 + 0x626
	.byte		VOICE , 46
	.byte		N06   , Fs2 , v120
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v+44
	.byte		N06   , Dn5 
	.byte	W48
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N03   , Dn5 , v088
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		PAN   , c_v-36
	.byte		N03   , Cs5 , v088
	.byte	W03
	.byte		        Bn4 , v064
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Bn4 , v088
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , An4 , v088
	.byte	W03
	.byte		        Gn4 , v064
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W06
	.byte		PAN   , c_v-38
	.byte		N06   , Gs2 , v120
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , En4 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        En5 
	.byte	W48
	.byte		VOL   , 73*song290_mvl/mxv
	.byte		PAN   , c_v+38
	.byte		N03   , En5 , v088
	.byte	W03
	.byte		        Dn5 , v064
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		PAN   , c_v-38
	.byte		N03   , Dn5 , v088
	.byte	W03
	.byte		        Cs5 , v064
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cs5 , v088
	.byte	W03
	.byte		        Bn4 , v064
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		PAN   , c_v-33
	.byte		N03   , Bn4 , v088
	.byte	W03
	.byte		        An4 , v064
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cs4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn5 , v088
	.byte	W03
	.byte		        En5 , v064
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		PAN   , c_v-33
	.byte		N03   , En5 , v088
	.byte	W03
	.byte		        Dn5 , v064
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Dn5 , v088
	.byte	W03
	.byte		        Cn5 , v064
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte		N03   , Dn5 
	.byte	W03
	.byte		PAN   , c_v-33
	.byte		N03   , Cn5 , v088
	.byte	W03
	.byte		        Bn4 , v064
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		PAN   , c_v-38
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Fn5 , v092
	.byte	W06
	.byte		N48   , An5 , v088
	.byte	W48
	.byte		PAN   , c_v-33
	.byte		N03   , Gn3 , v120
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte		N03   , Cn5 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Dn5 
	.byte	W03
	.byte		PAN   , c_v+40
	.byte		N03   , En5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Bn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		N03   , Dn5 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Cn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		PAN   , c_v-40
	.byte		N03   , An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+15
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		PAN   , c_v+23
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N03   , En3 , v104
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        An4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N03   , An2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v+47
	.byte		N03   , En2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N03   , An2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N03   , En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        An4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N03   , An2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v+47
	.byte		N03   , En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        An4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N03   , Cs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 73
	.byte	W48
	.byte		N08   , En4 , v088
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		N04   , Gn4 
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        En4 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        Dn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		N72   , En4 
	.byte	W72
	.byte		VOICE , 81
	.byte		VOL   , 45*song290_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N36   , Dn4 , v064
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		N36
	.byte	W36
	.byte		MOD   , 0
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		TIE   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W84
	.byte	W96
	.byte		EOT
	.byte		MOD   , 0
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W48
	.byte	FINE

@**************** Track 03 ****************************@

song290_3:
	.byte	KEYSH , 0
	.byte		VOICE , 58
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		TIE   , En1 , v120
	.byte	W48
	.byte	W24
	.byte		VOL   , 76*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W09
	.byte		        58*song290_mvl/mxv
	.byte	W09
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        39*song290_mvl/mxv
	.byte	W06
	.byte		        34*song290_mvl/mxv
	.byte	W06
	.byte		        22*song290_mvl/mxv
	.byte	W06
	.byte		        21*song290_mvl/mxv
	.byte	W06
	.byte		        12*song290_mvl/mxv
	.byte	W06
	.byte		EOT
	.byte		VOL   , 5*song290_mvl/mxv
	.byte	W06
	.byte		        0*song290_mvl/mxv
	.byte	W06
	.byte	W48
	.byte		        90*song290_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		        90*song290_mvl/mxv
	.byte		PAN   , c_v-24
	.byte		TIE
	.byte	W24
	.byte	W24
	.byte		VOL   , 87*song290_mvl/mxv
	.byte	W02
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        79*song290_mvl/mxv
	.byte	W04
	.byte		        78*song290_mvl/mxv
	.byte	W02
	.byte		        75*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W04
	.byte		        69*song290_mvl/mxv
	.byte	W02
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W04
	.byte		        62*song290_mvl/mxv
	.byte	W02
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W04
	.byte		        58*song290_mvl/mxv
	.byte	W08
	.byte		        55*song290_mvl/mxv
	.byte	W06
	.byte		        53*song290_mvl/mxv
	.byte	W10
	.byte		EOT
	.byte		VOL   , 82*song290_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N36   , Fs1 
	.byte	W36
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N24   , Fs1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		N21   , An1 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N36   , En1 
	.byte	W36
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		VOICE , 60
	.byte		N36   , Cs3 , v056
	.byte	W36
	.byte		N06   , An2 
	.byte	W12
	.byte		N36   , En3 
	.byte	W36
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		VOICE , 58
	.byte		N36   , An1 , v127
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
	.byte		N48   , Cs1 
	.byte	W48
	.byte		VOICE , 60
	.byte		N36   , Cs3 , v056
	.byte	W36
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N24   , An3 
	.byte	W24
	.byte		VOICE , 58
	.byte		N36   , Gn1 , v127
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
	.byte		N48   , Dn2 
	.byte	W48
	.byte		N36   , Bn1 
	.byte	W36
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N48   , Dn2 
	.byte	W48
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N36   , Bn1 , v072
	.byte	W36
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Cs2 , v127
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte	W96
	.byte		VOICE , 81
	.byte		N12   , An1 , v076
	.byte	W60
	.byte		N12
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        Gn1 
	.byte	W60
	.byte		        Bn1 
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W60
	.byte		N12
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		        Cs2 
	.byte	W12
	.byte		N03   , En2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N03   , An2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N08   , An1 , v064
	.byte	W48
	.byte		N24   , Cs2 , v076
	.byte	W24
	.byte		N12   , En2 , v072
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		VOICE , 58
	.byte	W96
	.byte	W96
	.byte		        Cs4 
	.byte		N06   , Cs5 , v044
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		N12   , En5 
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        As4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        Fs4 
	.byte	W04
	.byte		        Fn4 
	.byte	W04
	.byte		N96   , En4 
	.byte	W36
	.byte		MOD   , 8
	.byte	W12
	.byte		VOL   , 81*song290_mvl/mxv
	.byte	W02
	.byte		        78*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        76*song290_mvl/mxv
	.byte	W04
	.byte		        75*song290_mvl/mxv
	.byte	W02
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        70*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        65*song290_mvl/mxv
	.byte	W06
	.byte		        63*song290_mvl/mxv
	.byte	W04
	.byte		        61*song290_mvl/mxv
	.byte	W02
	.byte		        60*song290_mvl/mxv
	.byte	W10
	.byte		        82*song290_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 81
	.byte		VOL   , 73*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Gn1 , v072
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N48   , An1 
	.byte	W48
	.byte		N06   , En1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W24
	.byte		VOL   , 73*song290_mvl/mxv
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N06   , Cn2 , v072
	.byte	W24
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N24   , Gs1 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	PATT
	 .word	song290_3 + 0x276
	.byte	W12
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , An1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Fn2 
	.byte	W12
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , An1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N24   , Fs2 
	.byte	W12
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , An1 
	.byte	W24
	.byte		N06
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 48
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		PAN   , c_v+15
	.byte		N24   , Cn1 , v056
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W60
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N24   , Cn1 , v056
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W60
	.byte	PEND
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N24   , Dn1 , v056
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W60
	.byte	PEND
	.byte	PATT
	 .word	song290_3 + 0x302
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N24   , Gn1 , v056
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W60
	.byte	PEND
	.byte	PATT
	 .word	song290_3 + 0x31B
	.byte	PATT
	 .word	song290_3 + 0x2EE
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N48   , Cn1 , v052
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N24   , Fn1 , v056
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W60
	.byte	PEND
	.byte	PATT
	 .word	song290_3 + 0x351
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N24   , En1 , v056
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W60
	.byte		        68*song290_mvl/mxv
	.byte		N24
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W15
	.byte		        68*song290_mvl/mxv
	.byte	W12
	.byte		        68*song290_mvl/mxv
	.byte		N24
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte		N24   , Ds1 
	.byte	W09
	.byte		VOL   , 63*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        22*song290_mvl/mxv
	.byte	W03
	.byte	PATT
	 .word	song290_3 + 0x302
	.byte	PATT
	 .word	song290_3 + 0x302
	.byte	PATT
	 .word	song290_3 + 0x2EE
	.byte	PATT
	 .word	song290_3 + 0x2EE
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
	.byte		VOICE , 81
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Gn1 , v080
	.byte	W48
	.byte		N24
	.byte	W48
	.byte		N24
	.byte	W48
	.byte		N24
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   , En1 
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N06   , An1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		VOICE , 81
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N96   , Dn1 
	.byte	W96
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N96   , En1 
	.byte	W96
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N09
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte	W03
	.byte		N21   , Fn2 
	.byte	W21
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N03   , Bn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N24   , An1 , v080
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	PEND
	.byte		        An1 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		N24   , An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N36   , Gn1 , v076
	.byte	W36
	.byte		N12   , Fs1 , v080
	.byte	W12
	.byte		N36   , Dn1 
	.byte	W36
	.byte		N06   , Dn2 , v076
	.byte	W12
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N12   , Dn1 , v080
	.byte	W12
	.byte		N36   , Bn1 
	.byte	W36
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PATT
	 .word	song290_3 + 0x493
	.byte		N24   , An1 , v080
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , En2 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N36   , Gn1 
	.byte	W36
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte	PATT
	 .word	song290_3 + 0x493
	.byte		N24   , An1 , v096
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		N12   , An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N06   , An1 , v092
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 04 ****************************@

song290_4:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		VOL   , 87*song290_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte	W96
	.byte	W96
	.byte		N03   , En3 , v052
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		PAN   , c_v+16
	.byte		N03   , En4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		PAN   , c_v+47
	.byte		N03   , En5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		PAN   , c_v-48
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		PAN   , c_v+47
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		N24   , Gs2 
	.byte	W03
	.byte		VOL   , 83*song290_mvl/mxv
	.byte	W02
	.byte		        65*song290_mvl/mxv
	.byte	W01
	.byte		        68*song290_mvl/mxv
	.byte	W02
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        52*song290_mvl/mxv
	.byte	W04
	.byte		        45*song290_mvl/mxv
	.byte	W02
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        27*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W76
	.byte		        90*song290_mvl/mxv
	.byte	W48
	.byte		VOICE , 9
	.byte		PAN   , c_v-16
	.byte		N36   , An5 , v040
	.byte	W12
	.byte		VOL   , 68*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        34*song290_mvl/mxv
	.byte	W06
	.byte		        90*song290_mvl/mxv
	.byte		N06   , En5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N36   , Gn5 
	.byte	W12
	.byte		VOL   , 68*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        34*song290_mvl/mxv
	.byte	W06
	.byte		        90*song290_mvl/mxv
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N36   , Fs5 
	.byte	W12
	.byte		VOL   , 68*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        34*song290_mvl/mxv
	.byte	W06
	.byte		        90*song290_mvl/mxv
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N48   , En5 
	.byte	W12
	.byte		VOL   , 68*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        34*song290_mvl/mxv
	.byte	W06
	.byte		        22*song290_mvl/mxv
	.byte	W06
	.byte		        10*song290_mvl/mxv
	.byte	W06
	.byte		        2*song290_mvl/mxv
	.byte	W96
	.byte		        90*song290_mvl/mxv
	.byte	W72
	.byte		VOICE , 46
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N03   , En4 , v108
	.byte	W03
	.byte		        Dn4 , v092
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Fs4 , v108
	.byte	W03
	.byte		        En4 , v092
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Gs4 , v108
	.byte	W03
	.byte		        Fs4 , v088
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Bn4 , v108
	.byte	W03
	.byte		        Gs4 , v088
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , En5 , v108
	.byte	W03
	.byte		        Dn5 , v092
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Dn5 , v108
	.byte	W03
	.byte		        Bn4 , v092
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Bn4 , v104
	.byte	W03
	.byte		        Gs4 , v088
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Gs4 , v104
	.byte	W03
	.byte		        Fs4 , v088
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte	W96
	.byte	W96
	.byte		VOICE , 56
	.byte		PAN   , c_v+12
	.byte		N12   , An5 , v080
	.byte	W12
	.byte		        An4 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		PAN   , c_v-32
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
	.byte		VOICE , 46
	.byte		N06   , En2 , v072
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , An4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		VOICE , 56
	.byte		PAN   , c_v-16
	.byte		VOL   , 71*song290_mvl/mxv
	.byte		N06   , An4 , v112
	.byte	W12
	.byte		N12   , An3 
	.byte	W48
	.byte		        En3 , v120
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N06   , Gn4 , v120
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W48
	.byte		        En4 
	.byte	W12
	.byte		N03   , An4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
	.byte		N06   , En4 , v120
	.byte	W12
	.byte		N12   , En3 
	.byte	W84
	.byte	PEND
	.byte		N06   , En4 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N03   , Cs5 
	.byte	W06
	.byte		        Cs5 , v116
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An4 , v112
	.byte	W12
	.byte		N12   , An3 
	.byte	W24
	.byte		        An3 , v120
	.byte	W24
	.byte		        En3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte	PATT
	 .word	song290_4 + 0x1ED
	.byte	PATT
	 .word	song290_4 + 0x201
	.byte		N08   , An3 , v120
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cs4 
	.byte	W08
	.byte		N36   , En4 
	.byte	W36
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		VOICE , 46
	.byte		PAN   , c_v+32
	.byte		VOL   , 64*song290_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W06
	.byte		N04   , Gn2 , v032
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W02
	.byte		PAN   , c_v-32
	.byte	W02
	.byte		N04   , Fs5 , v032
	.byte	W04
	.byte		        Gn5 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W02
	.byte	PEND
	.byte		PAN   , c_v+31
	.byte	W02
	.byte		N04   , Gn2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W02
	.byte		PAN   , c_v-33
	.byte	W02
	.byte		N04   , Gs5 
	.byte	W04
	.byte		        An5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        En5 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        Cs5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Cs3 
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N04   , An2 
	.byte	W04
	.byte		        Gn2 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Dn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Gn4 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		        Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W02
	.byte	PATT
	 .word	song290_4 + 0x290
	.byte		PAN   , c_v+32
	.byte	W02
	.byte		N04   , Gn2 , v032
	.byte	W04
	.byte		N24   , An4 
	.byte	W18
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N24   , Gs4 
	.byte	W18
	.byte		PAN   , c_v+31
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W18
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N24   , En4 
	.byte	W18
	.byte		PAN   , c_v+32
	.byte	W06
	.byte		N03   , An2 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , An3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N18   , An4 
	.byte	W18
	.byte		VOICE , 46
	.byte		PAN   , c_v-32
	.byte		VOL   , 65*song290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Bn4 , v088
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn4 , v072
	.byte	W12
	.byte		        Bn4 , v088
	.byte	W12
	.byte		        Dn4 , v072
	.byte	W12
	.byte		        Dn5 , v088
	.byte	W12
	.byte		        Dn4 , v072
	.byte	W12
	.byte		VOICE , 47
	.byte		PAN   , c_v+35
	.byte		N24   , An2 , v112
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v+36
	.byte		N24   , Fn2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		VOL   , 81*song290_mvl/mxv
	.byte		N06   , En2 , v100
	.byte	W06
	.byte		N05   , En2 , v108
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		        En2 , v127
	.byte	W06
	.byte		VOL   , 65*song290_mvl/mxv
	.byte	W96
	.byte	W96
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N03   , En3 , v052
	.byte	W06
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , En4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		N06   , En4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		N06   , Ds4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		N06   , Ds4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		N06   , Gn4 , v080
	.byte	W06
	.byte		N03   , Ds4 , v048
	.byte	W06
	.byte		N06   , Gn4 , v080
	.byte	W06
	.byte		N03   , Ds4 , v048
	.byte	W06
	.byte		N06   , Fs4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		N06   , Fs4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , Cn4 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , Cn4 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , En4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , En4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , Ds4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , Ds4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , Gs3 , v080
	.byte	W06
	.byte		N03   , Dn3 , v048
	.byte	W06
	.byte		N06   , Gs3 , v080
	.byte	W06
	.byte		N03   , Dn3 , v048
	.byte	W06
	.byte		N06   , Dn4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , Dn4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		VOL   , 71*song290_mvl/mxv
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		N03   , An3 , v048
	.byte	W06
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , An3 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		VOL   , 75*song290_mvl/mxv
	.byte		N06   , Bn3 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , Bn3 , v080
	.byte	W06
	.byte		N03   , En3 , v048
	.byte	W06
	.byte		N06   , Gs3 , v080
	.byte	W06
	.byte		N03   , Cn3 , v048
	.byte	W06
	.byte		N06   , Gs3 , v080
	.byte	W06
	.byte		N03   , Cn3 , v048
	.byte	W06
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N06   , An4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , An4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , En5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v048
	.byte	W06
	.byte		N06   , En5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v048
	.byte	W06
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v048
	.byte	W06
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v048
	.byte	W06
	.byte		N06   , Gn5 , v080
	.byte	W06
	.byte		N03   , Ds5 , v048
	.byte	W06
	.byte		N06   , Gn5 , v080
	.byte	W06
	.byte		N03   , Ds5 , v048
	.byte	W06
	.byte		N06   , Fs5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v044
	.byte	W06
	.byte		N06   , Fs5 , v080
	.byte	W06
	.byte		N03   , Cn5 , v044
	.byte	W06
	.byte		N06   , Cs5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , Cs5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , Cn5 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , Cn5 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , En5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , En5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , Ds5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , An4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , An4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , Gs4 , v080
	.byte	W06
	.byte		N03   , Dn4 , v048
	.byte	W06
	.byte		N06   , Gs4 , v080
	.byte	W06
	.byte		N03   , Dn4 , v048
	.byte	W06
	.byte		N06   , Dn5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , Dn5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		VOL   , 72*song290_mvl/mxv
	.byte		N06   , Cs5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , Cs5 , v080
	.byte	W06
	.byte		N03   , An4 , v048
	.byte	W06
	.byte		N06   , An4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , An4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		VOL   , 75*song290_mvl/mxv
	.byte		N06   , Bn4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , Bn4 , v080
	.byte	W06
	.byte		N03   , En4 , v048
	.byte	W06
	.byte		N06   , Gs4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		N06   , Gs4 , v080
	.byte	W06
	.byte		N03   , Cn4 , v048
	.byte	W06
	.byte		VOICE , 14
	.byte		VOL   , 65*song290_mvl/mxv
	.byte		N24   , An4 , v080
	.byte	W24
	.byte		        An4 , v040
	.byte	W24
	.byte		        An4 , v028
	.byte	W24
	.byte		        An4 , v016
	.byte	W24
	.byte		        An5 , v080
	.byte	W24
	.byte		        An5 , v040
	.byte	W24
	.byte		        An5 , v028
	.byte	W24
	.byte		        An5 , v016
	.byte	W24
	.byte		        An4 , v080
	.byte	W24
	.byte		        An4 , v040
	.byte	W24
	.byte		        An4 , v028
	.byte	W24
	.byte		        An4 , v016
	.byte	W24
	.byte		N12   , En5 , v072
	.byte	W12
	.byte		N24   , An5 , v080
	.byte	W24
	.byte		        Gs5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        En5 
	.byte	W12
	.byte	W12
	.byte		        Fn5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		VOICE , 1
	.byte		VOL   , 25*song290_mvl/mxv
	.byte	W12
	.byte		N36   , Cn4 , v020
	.byte	W48
	.byte		        Dn4 
	.byte	W36
	.byte		VOICE , 1
	.byte		PAN   , c_v-48
	.byte		VOL   , 28*song290_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N96   , En4 , v044
	.byte	W84
	.byte	W12
	.byte		PAN   , c_v+48
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N21   , Gn4 
	.byte	W21
	.byte		N03   , Gs4 
	.byte	W03
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N08
	.byte	W08
	.byte		        Fn4 
	.byte	W04
	.byte	W04
	.byte		        En4 
	.byte	W08
	.byte		N12   , Fn4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N84   , Dn4 
	.byte	W72
	.byte	W12
	.byte		PAN   , c_v+48
	.byte	W24
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        An3 
	.byte	W12
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N96   , Dn4 
	.byte	W84
	.byte	W12
	.byte		PAN   , c_v+48
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N21   , Fn4 
	.byte	W21
	.byte		N03   , Fs4 
	.byte	W03
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N08
	.byte	W08
	.byte		        En4 
	.byte	W04
	.byte		PAN   , c_v-37
	.byte	W04
	.byte		N08   , Dn4 
	.byte	W08
	.byte		N12   , En4 
	.byte	W12
	.byte		N72   , Gn4 
	.byte	W72
	.byte		VOICE , 46
	.byte		VOL   , 79*song290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W48
	.byte		N03   , Gn3 , v052
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		N03   , Cn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		PAN   , c_v+33
	.byte		N03   , Gn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , En4 
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte	W96
	.byte		VOL   , 90*song290_mvl/mxv
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
	.byte	W96
	.byte	W96
	.byte		        90*song290_mvl/mxv
	.byte		PAN   , c_v-37
	.byte	W72
	.byte		VOICE , 56
	.byte	W12
	.byte		N06   , En4 , v096
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N03   , An4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N09   , En4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W06
	.byte		N03   , Gs4 
	.byte	W06
	.byte		N06   , An4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N06   , An4 
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		        En4 
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		        Fs3 , v108
	.byte	W12
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W48
	.byte		VOICE , 60
	.byte		PAN   , c_v+22
	.byte		N36   , Dn3 , v072
	.byte	W36
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N12   , An2 
	.byte	W12
	.byte		VOICE , 56
	.byte		PAN   , c_v-33
	.byte		N06   , Gs3 , v116
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N08   , Bn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Bn3 
	.byte	W08
	.byte		N48   , En4 
	.byte	W48
	.byte		VOICE , 60
	.byte		PAN   , c_v+22
	.byte		N24   , En3 , v072
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		VOICE , 56
	.byte		PAN   , c_v-32
	.byte		N08   , An3 , v124
	.byte	W08
	.byte		        Fn3 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        An3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		N48   , Fn4 
	.byte	W48
	.byte		VOICE , 60
	.byte		PAN   , c_v+22
	.byte		N03   , Fn4 , v072
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        Gn4 
	.byte	W06
	.byte		N24   , An4 
	.byte	W24
	.byte		VOL   , 50*song290_mvl/mxv
	.byte		N60   , Gn4 
	.byte	W02
	.byte		VOL   , 52*song290_mvl/mxv
	.byte	W01
	.byte		        58*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W01
	.byte		        70*song290_mvl/mxv
	.byte	W02
	.byte		        58*song290_mvl/mxv
	.byte	W01
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        90*song290_mvl/mxv
	.byte	W48
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W36
	.byte		VOL   , 86*song290_mvl/mxv
	.byte	W02
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W04
	.byte		        90*song290_mvl/mxv
	.byte		N06   , Gn4 , v076
	.byte	W18
	.byte		        An4 
	.byte	W06
	.byte		N24   , Bn4 
	.byte	W24
	.byte		VOICE , 73
	.byte		PAN   , c_v+14
	.byte		N12   , En5 , v080
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
	.byte	W09
	.byte		MOD   , 8
	.byte		VOL   , 90*song290_mvl/mxv
	.byte	W02
	.byte		        86*song290_mvl/mxv
	.byte	W03
	.byte		        82*song290_mvl/mxv
	.byte	W03
	.byte		        77*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        58*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        Bn5 
	.byte	W03
	.byte		        Cs6 
	.byte	W03
	.byte		N06   , An5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Bn5 
	.byte	W06
	.byte		N72   , An5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 78*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        31*song290_mvl/mxv
	.byte	W03
	.byte		        24*song290_mvl/mxv
	.byte	W03
	.byte		        14*song290_mvl/mxv
	.byte	W03
	.byte		        7*song290_mvl/mxv
	.byte	W03
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		PAN   , c_v+34
	.byte		N03   , An3 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		PAN   , c_v+16
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 56
	.byte		N03   , En4 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W18
	.byte		        Fs4 
	.byte	W06
	.byte		N24   , Gn4 
	.byte	W24
	.byte	W96
	.byte	W96
	.byte		N03   , An4 , v096
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		PAN   , c_v+29
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		PAN   , c_v+40
	.byte		N03   , Cs4 , v076
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 05 ****************************@

song290_5:
	.byte	KEYSH , 0
	.byte		VOICE , 68
	.byte		PAN   , c_v+0
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N36   , An3 , v064
	.byte	W09
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        49*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N06   , En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N36   , Gn3 
	.byte	W09
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        49*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N36   , Fs3 
	.byte	W09
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        49*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N48   , En3 
	.byte	W09
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 56*song290_mvl/mxv
	.byte	W06
	.byte		        49*song290_mvl/mxv
	.byte	W06
	.byte		        45*song290_mvl/mxv
	.byte	W06
	.byte		        38*song290_mvl/mxv
	.byte	W06
	.byte		        31*song290_mvl/mxv
	.byte	W06
	.byte		        26*song290_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N03
	.byte	W03
	.byte		        Fs3 , v048
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v048
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v048
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v048
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v044
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fs3 , v040
	.byte	W03
	.byte		        En3 , v032
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 , v020
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W48
	.byte	W03
	.byte	W48
	.byte		VOICE , 73
	.byte		VOL   , 86*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , As4 , v064
	.byte	W03
	.byte		N32   , An4 
	.byte	W15
	.byte		VOL   , 79*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W06
	.byte		        86*song290_mvl/mxv
	.byte		N06   , En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		VOL   , 86*song290_mvl/mxv
	.byte		N36   , Gn4 
	.byte	W18
	.byte		VOL   , 79*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W06
	.byte		        56*song290_mvl/mxv
	.byte	W06
	.byte		        86*song290_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		VOL   , 86*song290_mvl/mxv
	.byte		N36   , Fs4 
	.byte	W18
	.byte		VOL   , 79*song290_mvl/mxv
	.byte	W06
	.byte		        68*song290_mvl/mxv
	.byte	W06
	.byte		        55*song290_mvl/mxv
	.byte	W06
	.byte		        86*song290_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		TIE   , Gs4 
	.byte	W48
	.byte	W84
	.byte		VOL   , 77*song290_mvl/mxv
	.byte	W12
	.byte		        68*song290_mvl/mxv
	.byte	W12
	.byte		        54*song290_mvl/mxv
	.byte	W12
	.byte		        45*song290_mvl/mxv
	.byte	W12
	.byte		        35*song290_mvl/mxv
	.byte	W12
	.byte		        22*song290_mvl/mxv
	.byte	W12
	.byte		        13*song290_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte		VOL   , 0*song290_mvl/mxv
	.byte	W24
	.byte		VOICE , 48
	.byte		VOL   , 89*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Bn2 , v072
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		N96   , En5 
	.byte	W96
	.byte		PAN   , c_v-42
	.byte		N36   , En4 , v064
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N36
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cs4 
	.byte	W12
	.byte		N03   , En3 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 74*song290_mvl/mxv
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Cs3 , v072
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N12   , En3 , v064
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N18   , An3 
	.byte	W18
	.byte		N03   , Gs3 , v072
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		N24   , Cs3 , v064
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , Gn3 , v072
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Fs3 , v072
	.byte	W06
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gs3 , v072
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 , v064
	.byte	W06
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N06   , Cs4 , v072
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W06
	.byte		        Bn3 , v072
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , Gn3 , v064
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 , v072
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N12   , An3 , v064
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N24   , Dn3 , v064
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
	.byte		N36   , En3 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte	PATT
	 .word	song290_5 + 0x2B4
	.byte		N36   , An3 , v064
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Bn3 , v064
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
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N48   , En3 
	.byte	W48
	.byte		VOICE , 48
	.byte		N12   , En3 , v068
	.byte	W18
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , En3 
	.byte	W18
	.byte		N06   , An3 
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N18   , En4 
	.byte	W18
	.byte		N03   , Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N03   , Fs3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N24   , En3 
	.byte	W24
	.byte		N36   , An3 , v068
	.byte	W36
	.byte		N06   , En3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte	PEND
	.byte		N36   , En3 , v072
	.byte	W36
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N48   , An3 
	.byte	W48
	.byte	PEND
	.byte		N06   , En3 , v068
	.byte	W06
	.byte		        Dn3 , v064
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 , v068
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		        En3 , v064
	.byte	W06
	.byte		        An3 , v068
	.byte	W06
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N18   , An3 
	.byte	W18
	.byte		N03   , Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		N24   , En3 
	.byte	W24
	.byte		N18   , Cs4 
	.byte	W18
	.byte		N03
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N24   , Bn3 
	.byte	W24
	.byte	PATT
	 .word	song290_5 + 0x36C
	.byte	PATT
	 .word	song290_5 + 0x37F
	.byte		VOICE , 48
	.byte		N36   , Bn3 , v064
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N36   , Bn2 , v052
	.byte	W36
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N48   , Dn3 
	.byte	W48
	.byte		VOICE , 73
	.byte	W96
	.byte		        Cn2 
	.byte		PAN   , c_v-51
	.byte		N06   , An4 , v036
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		VOICE , 48
	.byte		N36   , Gn3 , v032
	.byte	W32
	.byte	W01
	.byte		N15   , Dn3 
	.byte	W15
	.byte		N48   , Bn3 
	.byte	W24
	.byte		VOL   , 67*song290_mvl/mxv
	.byte	W02
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        64*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        60*song290_mvl/mxv
	.byte	W02
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W04
	.byte		        74*song290_mvl/mxv
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W24
	.byte		VOL   , 70*song290_mvl/mxv
	.byte	W02
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        60*song290_mvl/mxv
	.byte	W02
	.byte		        58*song290_mvl/mxv
	.byte	W03
	.byte		        54*song290_mvl/mxv
	.byte	W03
	.byte		        53*song290_mvl/mxv
	.byte	W04
	.byte		        74*song290_mvl/mxv
	.byte		N36   , An3 , v056
	.byte	W36
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W18
	.byte		N03   , As3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		N09   , Gs3 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N36   , Cs4 
	.byte	W36
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N24   , An3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	PATT
	 .word	song290_5 + 0x324
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		        Dn3 , v072
	.byte	W24
	.byte		        Cn3 , v064
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		PAN   , c_v+6
	.byte		N06   , En3 , v084
	.byte	W24
	.byte		N15   , Dn3 
	.byte	W24
	.byte		N06   , En3 
	.byte	W24
	.byte		N24   , Bn2 
	.byte	W24
	.byte	W12
	.byte		N06   , En3 , v084
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W24
	.byte		N06   , En3 
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
	.byte		N06   , En3 , v084
	.byte	W24
	.byte		N15   , Dn3 
	.byte	W24
	.byte		N06   , En3 
	.byte	W24
	.byte		N24   , Bn2 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song290_5 + 0x47C
	.byte	PATT
	 .word	song290_5 + 0x48B
	.byte	PATT
	 .word	song290_5 + 0x47C
	.byte	PATT
	 .word	song290_5 + 0x48B
	.byte	PATT
	 .word	song290_5 + 0x47C
	.byte	PATT
	 .word	song290_5 + 0x48B
	.byte	PATT
	 .word	song290_5 + 0x47C
	.byte		PAN   , c_v+21
	.byte		N12   , An4 , v112
	.byte	W72
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N12   , An4 , v104
	.byte	W72
	.byte		N06   , Dn4 , v112
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , An4 
	.byte	W72
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	W96
	.byte		PAN   , c_v+32
	.byte	W96
	.byte	W96
	.byte		        c_v-34
	.byte		N12   , Cn2 , v064
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn2 , v032
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v028
	.byte	W06
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		        Gn2 , v032
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn2 , v032
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		        Gn2 , v028
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        An2 , v032
	.byte	W06
	.byte		        Fn3 , v064
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , An2 , v064
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		        An2 , v032
	.byte	W06
	.byte		        Fn3 , v064
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , An2 , v064
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        An2 , v032
	.byte	W06
	.byte		        Fn3 , v064
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , An2 , v064
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        An2 , v032
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , An2 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Dn2 , v032
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Dn2 , v064
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        An2 , v032
	.byte	W06
	.byte		        Dn2 , v064
	.byte	W06
	.byte		        Dn2 , v032
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Dn2 , v064
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Dn2 , v032
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Dn2 , v064
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        An2 , v028
	.byte	W06
	.byte		        Dn2 , v064
	.byte	W06
	.byte		        Dn2 , v032
	.byte	W06
	.byte		        Bn2 , v064
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Dn2 , v064
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gn2 , v028
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		        Gn2 , v064
	.byte	W06
	.byte		        Gn2 , v032
	.byte	W06
	.byte		        En3 , v064
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		VOL   , 75*song290_mvl/mxv
	.byte		N48   , Cn2 
	.byte	W48
	.byte		N24   , Bn1 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N48   , En2 
	.byte	W48
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N48   , En2 
	.byte	W48
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		VOL   , 22*song290_mvl/mxv
	.byte		N96   , An3 
	.byte	W02
	.byte		VOL   , 24*song290_mvl/mxv
	.byte	W03
	.byte		        26*song290_mvl/mxv
	.byte	W03
	.byte		        29*song290_mvl/mxv
	.byte	W04
	.byte		        32*song290_mvl/mxv
	.byte	W02
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        36*song290_mvl/mxv
	.byte	W03
	.byte		        39*song290_mvl/mxv
	.byte	W04
	.byte		        41*song290_mvl/mxv
	.byte	W02
	.byte		        43*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        48*song290_mvl/mxv
	.byte	W04
	.byte		        50*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W06
	.byte		        60*song290_mvl/mxv
	.byte	W06
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        72*song290_mvl/mxv
	.byte	W40
	.byte		N12   , Bn3 , v036
	.byte	W12
	.byte		        An3 , v044
	.byte	W12
	.byte		        Gn3 , v048
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		VOL   , 35*song290_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		N48   , Gn3 , v052
	.byte	W02
	.byte		VOL   , 36*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W04
	.byte		        42*song290_mvl/mxv
	.byte	W05
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W04
	.byte		        52*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W12
	.byte		        35*song290_mvl/mxv
	.byte		N48   , Fs3 , v056
	.byte	W02
	.byte		VOL   , 36*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W04
	.byte		        42*song290_mvl/mxv
	.byte	W05
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W04
	.byte		        52*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W12
	.byte		        35*song290_mvl/mxv
	.byte		N48   , En3 , v048
	.byte	W02
	.byte		VOL   , 36*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W04
	.byte		        42*song290_mvl/mxv
	.byte	W05
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W04
	.byte		        52*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W12
	.byte		        35*song290_mvl/mxv
	.byte		N48   , Dn3 , v052
	.byte	W02
	.byte		VOL   , 36*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W04
	.byte		        42*song290_mvl/mxv
	.byte	W05
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W04
	.byte		        52*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W04
	.byte		        70*song290_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N96   , En3 , v064
	.byte	W03
	.byte		VOL   , 27*song290_mvl/mxv
	.byte	W02
	.byte		        29*song290_mvl/mxv
	.byte	W07
	.byte		        31*song290_mvl/mxv
	.byte	W08
	.byte		        32*song290_mvl/mxv
	.byte	W04
	.byte		        34*song290_mvl/mxv
	.byte	W02
	.byte		        35*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W03
	.byte		        39*song290_mvl/mxv
	.byte	W04
	.byte		        42*song290_mvl/mxv
	.byte	W02
	.byte		        45*song290_mvl/mxv
	.byte	W03
	.byte		        47*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W04
	.byte		        52*song290_mvl/mxv
	.byte	W02
	.byte		        55*song290_mvl/mxv
	.byte	W03
	.byte		        58*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W04
	.byte		        62*song290_mvl/mxv
	.byte	W02
	.byte		        63*song290_mvl/mxv
	.byte	W03
	.byte		        66*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W28
	.byte		        36*song290_mvl/mxv
	.byte		N48   , Dn3 
	.byte	W02
	.byte		VOL   , 45*song290_mvl/mxv
	.byte	W03
	.byte		        52*song290_mvl/mxv
	.byte	W03
	.byte		        56*song290_mvl/mxv
	.byte	W04
	.byte		        63*song290_mvl/mxv
	.byte	W02
	.byte		        68*song290_mvl/mxv
	.byte	W32
	.byte	W02
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		VOL   , 27*song290_mvl/mxv
	.byte		N48   , En3 
	.byte	W02
	.byte		VOL   , 29*song290_mvl/mxv
	.byte	W03
	.byte		        34*song290_mvl/mxv
	.byte	W03
	.byte		        38*song290_mvl/mxv
	.byte	W04
	.byte		        41*song290_mvl/mxv
	.byte	W02
	.byte		        43*song290_mvl/mxv
	.byte	W03
	.byte		        48*song290_mvl/mxv
	.byte	W03
	.byte		        50*song290_mvl/mxv
	.byte	W04
	.byte		        54*song290_mvl/mxv
	.byte	W02
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        61*song290_mvl/mxv
	.byte	W03
	.byte		        65*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-7
	.byte		N36
	.byte	W24
	.byte		PAN   , c_v-20
	.byte	W12
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		VOL   , 31*song290_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N96   , Cs3 
	.byte	W02
	.byte		VOL   , 38*song290_mvl/mxv
	.byte	W03
	.byte		        41*song290_mvl/mxv
	.byte	W03
	.byte		        45*song290_mvl/mxv
	.byte	W04
	.byte		        50*song290_mvl/mxv
	.byte	W02
	.byte		        54*song290_mvl/mxv
	.byte	W03
	.byte		        59*song290_mvl/mxv
	.byte	W03
	.byte		        63*song290_mvl/mxv
	.byte	W04
	.byte		        68*song290_mvl/mxv
	.byte	W72
	.byte		        43*song290_mvl/mxv
	.byte		N96   , Bn2 
	.byte	W02
	.byte		VOL   , 44*song290_mvl/mxv
	.byte	W03
	.byte		        47*song290_mvl/mxv
	.byte	W03
	.byte		        51*song290_mvl/mxv
	.byte	W04
	.byte		        51*song290_mvl/mxv
	.byte	W02
	.byte		        56*song290_mvl/mxv
	.byte	W03
	.byte		        60*song290_mvl/mxv
	.byte	W03
	.byte		        62*song290_mvl/mxv
	.byte	W04
	.byte		        64*song290_mvl/mxv
	.byte	W02
	.byte		        65*song290_mvl/mxv
	.byte	W03
	.byte		        68*song290_mvl/mxv
	.byte	W03
	.byte		        69*song290_mvl/mxv
	.byte	W64
	.byte		N48   , Gn2 
	.byte	W48
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N48   , Cs3 
	.byte	W48
	.byte		N36   , En3 
	.byte	W36
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N96   , An3 
	.byte	W96
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N48   , An3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte		        Cs3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte		        Cs3 
	.byte	W48
	.byte		        Bn2 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
	.byte		        Gn3 
	.byte	W48
	.byte		        Fn3 
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte		        Dn3 
	.byte	W48
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N36
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N48   , En3 
	.byte	W48
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N72   , En3 
	.byte	W72
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N96   , Cs3 
	.byte	W96
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N06   , Dn3 , v088
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N24   , En3 , v064
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        En3 
	.byte	W48
	.byte		VOICE , 60
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		VOL   , 45*song290_mvl/mxv
	.byte		TIE   , Cs4 , v072
	.byte	W24
	.byte		VOL   , 51*song290_mvl/mxv
	.byte	W24
	.byte		        56*song290_mvl/mxv
	.byte	W24
	.byte		        62*song290_mvl/mxv
	.byte	W24
	.byte		        68*song290_mvl/mxv
	.byte	W24
	.byte		        74*song290_mvl/mxv
	.byte	W24
	.byte		        79*song290_mvl/mxv
	.byte	W24
	.byte		        88*song290_mvl/mxv
	.byte	W24
	.byte		EOT
	.byte		VOL   , 88*song290_mvl/mxv
	.byte		N06   , An3 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 06 ****************************@

song290_6:
	.byte	KEYSH , 0
	.byte		VOICE , 2
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-64
	.byte		N03   , En3 , v012
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , En5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N03   , Gs4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 80
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N36   , An3 , v064
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		VOL   , 76*song290_mvl/mxv
	.byte		N12   , An4 
	.byte	W12
	.byte		        An3 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N12   , En2 , v064
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PATT
	 .word	song290_6 + 0x10F
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PATT
	 .word	song290_6 + 0x177
	.byte		N12   , Gn2 , v064
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , Bn2 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		VOICE , 80
	.byte		VOL   , 75*song290_mvl/mxv
	.byte		N06   , En2 , v072
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N06   , Gn2 , v072
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte	PEND
	.byte		N06   , En2 , v072
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte	PEND
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        An3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        An2 , v064
	.byte	W06
	.byte		        Cs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        En2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte	PATT
	 .word	song290_6 + 0x251
	.byte	PATT
	 .word	song290_6 + 0x270
	.byte		N08   , En2 , v072
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		N36   , En3 
	.byte	W36
	.byte		N06   , Dn3 , v052
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte	W96
	.byte		VOL   , 90*song290_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 82
	.byte		PAN   , c_v+63
	.byte		VOL   , 25*song290_mvl/mxv
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 36*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 43*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 49*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song290_6 + 0x345
	.byte	PATT
	 .word	song290_6 + 0x345
	.byte		VOL   , 56*song290_mvl/mxv
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 68*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 49*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte	PATT
	 .word	song290_6 + 0x345
	.byte		VOL   , 55*song290_mvl/mxv
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 63*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 67*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 75*song290_mvl/mxv
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		VOL   , 50*song290_mvl/mxv
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
	.byte	W92
	.byte	W01
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		VOL   , 28*song290_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W24
	.byte		N24   , Cn4 , v072
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		VOL   , 9*song290_mvl/mxv
	.byte		N72   , An4 
	.byte	W02
	.byte		VOL   , 14*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        24*song290_mvl/mxv
	.byte	W02
	.byte		        28*song290_mvl/mxv
	.byte	W56
	.byte	W02
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N36   , Cn5 
	.byte	W36
	.byte		N09   , Bn4 
	.byte	W09
	.byte		N03   , Ds5 
	.byte	W03
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N09   , An4 
	.byte	W09
	.byte		N03   , As4 
	.byte	W03
	.byte		N24   , An4 
	.byte	W24
	.byte		VOL   , 9*song290_mvl/mxv
	.byte		N60   , Gn4 
	.byte	W02
	.byte		VOL   , 14*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        24*song290_mvl/mxv
	.byte	W02
	.byte		        28*song290_mvl/mxv
	.byte	W44
	.byte	W02
	.byte		N12   , En4 
	.byte	W12
	.byte		VOL   , 9*song290_mvl/mxv
	.byte		N72   , Gn4 
	.byte	W02
	.byte		VOL   , 14*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        24*song290_mvl/mxv
	.byte	W02
	.byte		        28*song290_mvl/mxv
	.byte	W56
	.byte	W02
	.byte		N24   , Fs4 
	.byte	W24
	.byte		VOL   , 9*song290_mvl/mxv
	.byte		N72   , Fn4 
	.byte	W02
	.byte		VOL   , 14*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        24*song290_mvl/mxv
	.byte	W02
	.byte		        28*song290_mvl/mxv
	.byte	W56
	.byte	W02
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		VOL   , 9*song290_mvl/mxv
	.byte		N60   , En4 
	.byte	W02
	.byte		VOL   , 14*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        24*song290_mvl/mxv
	.byte	W02
	.byte		        28*song290_mvl/mxv
	.byte	W44
	.byte	W02
	.byte		N12   , Fn4 
	.byte	W12
	.byte		VOL   , 9*song290_mvl/mxv
	.byte		TIE   , Gn4 
	.byte	W05
	.byte		VOL   , 9*song290_mvl/mxv
	.byte	W03
	.byte		        10*song290_mvl/mxv
	.byte	W06
	.byte		        11*song290_mvl/mxv
	.byte	W03
	.byte		        13*song290_mvl/mxv
	.byte	W03
	.byte		        14*song290_mvl/mxv
	.byte	W04
	.byte		        14*song290_mvl/mxv
	.byte	W02
	.byte		        15*song290_mvl/mxv
	.byte	W03
	.byte		        17*song290_mvl/mxv
	.byte	W03
	.byte		        18*song290_mvl/mxv
	.byte	W04
	.byte		        19*song290_mvl/mxv
	.byte	W02
	.byte		        20*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        22*song290_mvl/mxv
	.byte	W05
	.byte		        24*song290_mvl/mxv
	.byte	W03
	.byte		        26*song290_mvl/mxv
	.byte	W04
	.byte		        28*song290_mvl/mxv
	.byte	W36
	.byte	W48
	.byte		        26*song290_mvl/mxv
	.byte	W02
	.byte		        24*song290_mvl/mxv
	.byte	W03
	.byte		        23*song290_mvl/mxv
	.byte	W03
	.byte		        21*song290_mvl/mxv
	.byte	W04
	.byte		        20*song290_mvl/mxv
	.byte	W02
	.byte		        19*song290_mvl/mxv
	.byte	W03
	.byte		        17*song290_mvl/mxv
	.byte	W03
	.byte		        17*song290_mvl/mxv
	.byte	W04
	.byte		        14*song290_mvl/mxv
	.byte	W02
	.byte		        11*song290_mvl/mxv
	.byte	W03
	.byte		        9*song290_mvl/mxv
	.byte	W03
	.byte		        9*song290_mvl/mxv
	.byte	W16
	.byte		EOT
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 49*song290_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-64
	.byte	W36
	.byte		        c_v+63
	.byte	W36
	.byte		        c_v-64
	.byte	W24
	.byte	PEND
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W36
	.byte		        c_v-64
	.byte	W36
	.byte		        c_v+63
	.byte	W12
	.byte	PEND
	.byte	W24
	.byte		PAN   , c_v-64
	.byte	W36
	.byte		        c_v+63
	.byte	W36
	.byte	PEND
	.byte		        c_v-64
	.byte		VOL   , 49*song290_mvl/mxv
	.byte	W36
	.byte		PAN   , c_v+63
	.byte	W36
	.byte		VOICE , 80
	.byte		PAN   , c_v-64
	.byte	W18
	.byte		N06   , Cs4 , v080
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N06
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , En4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N09   , Bn3 
	.byte	W12
	.byte		N06   , En4 
	.byte	W06
	.byte		N03   , Ds4 
	.byte	W06
	.byte		N06   , En4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N06   , En4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W36
	.byte		        Bn3 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		PAN   , c_v+63
	.byte	W12
	.byte	PATT
	 .word	song290_6 + 0x529
	.byte	PATT
	 .word	song290_6 + 0x518
	.byte	PATT
	 .word	song290_6 + 0x520
	.byte	PATT
	 .word	song290_6 + 0x529
	.byte	PATT
	 .word	song290_6 + 0x518
	.byte		N12   , Fn2 , v076
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N24   , En2 , v076
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , En2 
	.byte	W24
	.byte		        An2 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song290_6 + 0x5FB
	.byte		PAN   , c_v-64
	.byte		N12   , En2 , v076
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N03   , Gn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N48   , Bn3 
	.byte	W48
	.byte		N36   , Gn3 
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W03
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N48   , An3 
	.byte	W48
	.byte		N36   , Bn2 
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N48   , An2 
	.byte	W48
	.byte		PAN   , c_v-64
	.byte		N24   , Cs3 
	.byte	W24
	.byte	W03
	.byte		        En3 
	.byte	W21
	.byte		PAN   , c_v+63
	.byte		N36   , Bn2 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N03   , Dn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , An2 , v084
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N09
	.byte	W48
	.byte	FINE

@**************** Track 07 ****************************@

song290_7:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		VOL   , 56*song290_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v-64
	.byte		N36   , Cs4 , v064
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W54
	.byte	W96
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		N21   , An1 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , En1 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 58*song290_mvl/mxv
	.byte		N12   , An1 , v120
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N12   , Gn1 , v120
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte	PEND
	.byte		        An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N12   , An1 , v120
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
	.byte		N12   , An1 , v120
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song290_7 + 0x56
	.byte	PATT
	 .word	song290_7 + 0x75
	.byte	PATT
	 .word	song290_7 + 0x68
	.byte		N12   , Gn1 , v120
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	PEND
	.byte		        Gn1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte	PATT
	 .word	song290_7 + 0x68
	.byte	PATT
	 .word	song290_7 + 0x8F
	.byte		N12   , En1 , v120
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte	W96
	.byte		VOICE , 87
	.byte		PAN   , c_v-64
	.byte		VOL   , 42*song290_mvl/mxv
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , En3 
	.byte	W48
	.byte		        Cs3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N06   , Dn4 , v120
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W48
	.byte		        Bn3 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
	.byte		N06   , An3 , v120
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W84
	.byte	PEND
	.byte		N06   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , An4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En4 
	.byte	W12
	.byte		N12   , En3 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	PATT
	 .word	song290_7 + 0xF9
	.byte	PATT
	 .word	song290_7 + 0x10D
	.byte		N08   , Cs3 , v120
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		N36   , An3 
	.byte	W36
	.byte		N06   , Gs3 , v052
	.byte	W06
	.byte		        Gn3 
	.byte	W06
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
	.byte		VOICE , 87
	.byte		PAN   , c_v+0
	.byte	W96
	.byte		N24   , An3 , v084
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , En4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Cs4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , En4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , An3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Gs3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Cs4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , An3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Gs3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , An4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , En5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Ds5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Gn5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Fs5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Cs5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Cn5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , En5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Ds5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , An4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Gs4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Dn5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Cs5 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , An4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N24   , Gs4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
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
	.byte		PAN   , c_v-64
	.byte	W96
	.byte		VOICE , 87
	.byte		VOL   , 90*song290_mvl/mxv
	.byte		N03   , An3 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        Bn3 
	.byte	W06
	.byte		N24   , Dn4 
	.byte	W24
	.byte		BEND  , c_v+1
	.byte		N36   , Gn3 , v040
	.byte	W36
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N36   , Bn3 
	.byte	W36
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W48
	.byte		N96   , An4 
	.byte	W96
	.byte		BEND  , c_v+0
	.byte		N96   , An4 , v064
	.byte	W96
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	FINE

@**************** Track 08 ****************************@

song290_8:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 77*song290_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        79*song290_mvl/mxv
	.byte	W12
	.byte		N21   , Dn1 , v112
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v056
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
	.byte		N09   , Dn1 , v112
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v056
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
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte	PEND
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte	PEND
	.byte	PATT
	 .word	song290_8 + 0x51
	.byte	PATT
	 .word	song290_8 + 0x51
	.byte	PATT
	 .word	song290_8 + 0x51
	.byte	PATT
	 .word	song290_8 + 0x73
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte	PATT
	 .word	song290_8 + 0x51
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		N03   , Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte	W06
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte	PEND
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte	PEND
	.byte		        Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte		        Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte	W06
	.byte	PATT
	 .word	song290_8 + 0x111
	.byte	PATT
	 .word	song290_8 + 0x12B
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v116
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte		N48   , Cs2 , v120
	.byte	W48
	.byte		        An2 
	.byte	W48
	.byte		        En2 
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
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v060
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
	.byte		        Dn1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v104
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v096
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		N03   , Dn1 , v112
	.byte	W03
	.byte		        Dn1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		VOL   , 83*song290_mvl/mxv
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N03   , Dn1 , v096
	.byte	W03
	.byte		        Dn1 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v104
	.byte	W06
	.byte		        Dn1 , v040
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		N03   , Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v028
	.byte	W03
	.byte		        Dn1 , v072
	.byte	W03
	.byte		        Dn1 , v032
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		VOL   , 87*song290_mvl/mxv
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v108
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N03   , Dn1 , v100
	.byte	W03
	.byte		        Dn1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v100
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v032
	.byte	W03
	.byte		        Dn1 , v092
	.byte	W03
	.byte		        Dn1 , v032
	.byte	W03
	.byte		        Dn1 , v064
	.byte	W03
	.byte		        Dn1 , v068
	.byte	W03
	.byte		        Dn1 , v088
	.byte	W03
	.byte		        Dn1 , v092
	.byte	W03
	.byte		N12   , Dn1 , v108
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v108
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v104
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		N03   , Dn1 , v112
	.byte	W03
	.byte		        Dn1 , v048
	.byte	W03
	.byte		        Dn1 , v104
	.byte	W03
	.byte		        Dn1 , v048
	.byte	W03
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06   , Dn1 , v108
	.byte	W06
	.byte		        Dn1 , v104
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		N12   , Dn1 , v064
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v052
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte	PEND
	.byte		N12   , Dn1 , v104
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v088
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v100
	.byte	W12
	.byte		N03   , Dn1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 , v124
	.byte	W12
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte	PEND
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N06   , Dn1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		N03   , Dn1 , v112
	.byte	W03
	.byte		        Dn1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PATT
	 .word	song290_8 + 0x31F
	.byte	PATT
	 .word	song290_8 + 0x34B
	.byte		VOL   , 79*song290_mvl/mxv
	.byte		N48   , An2 , v120
	.byte	W96
	.byte		        En2 
	.byte	W96
	.byte		        Gn2 
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
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v076
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
	.byte		N06   , Dn1 , v108
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W24
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v104
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v076
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
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v104
	.byte	W03
	.byte		        Dn1 , v076
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
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v108
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W24
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v076
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
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Dn1 , v076
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N48   , An2 , v080
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N06   , Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W24
	.byte		N03   , Dn1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v104
	.byte	W03
	.byte		        Dn1 , v076
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
	.byte		N06   , Dn1 , v112
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		        Dn1 , v104
	.byte	W12
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v080
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W12
	.byte		N03   , Dn1 , v104
	.byte	W03
	.byte		        Dn1 , v076
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
	.byte		N48   , Cs2 , v120
	.byte	W96
	.byte		        An2 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        An2 , v080
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

song290:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song290_pri	@ Priority
	.byte	song290_rev	@ Reverb.

	.word	song290_grp

	.word	song290_0
	.word	song290_1
	.word	song290_2
	.word	song290_3
	.word	song290_4
	.word	song290_5
	.word	song290_6
	.word	song290_7
	.word	song290_8

	.end
