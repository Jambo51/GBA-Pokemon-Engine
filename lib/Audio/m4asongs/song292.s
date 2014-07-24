@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song292_grp, group_28
	.equ	song292_pri, 0
	.equ	song292_rev, 178
	.equ	song292_mvl, 127
	.equ	song292_key, 0
	.equ	song292_tbs, 1
	.equ	song292_exg, 1
	.equ	song292_cmp, 1

	.section .rodata
	.global	song292
	.align	2

@**************** Track 00 ****************************@

song292_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 59
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte	W24
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 75*song292_mvl/mxv
	.byte		N36   , En3 , v127
	.byte	W24
	.byte		VOL   , 65*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        42*song292_mvl/mxv
	.byte	W03
	.byte		        31*song292_mvl/mxv
	.byte	W03
	.byte		        75*song292_mvl/mxv
	.byte		N03   , Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		MOD   , 0
	.byte		N30   , Fs3 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W18
	.byte		N03   , En3 
	.byte	W06
	.byte		N48   , Fs3 
	.byte	W24
	.byte	W03
	.byte		VOL   , 70*song292_mvl/mxv
	.byte	W03
	.byte		        65*song292_mvl/mxv
	.byte	W03
	.byte		        58*song292_mvl/mxv
	.byte	W03
	.byte		        52*song292_mvl/mxv
	.byte	W03
	.byte		        47*song292_mvl/mxv
	.byte	W03
	.byte		        39*song292_mvl/mxv
	.byte	W03
	.byte		        31*song292_mvl/mxv
	.byte	W03
	.byte		        75*song292_mvl/mxv
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N03   , An3 , v100
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N36   , En4 , v127
	.byte	W24
	.byte		VOL   , 65*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        42*song292_mvl/mxv
	.byte	W03
	.byte		        31*song292_mvl/mxv
	.byte	W03
	.byte		        75*song292_mvl/mxv
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N30   , Fs4 
	.byte	W36
	.byte		N12   , An4 
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W18
	.byte		N03   , En4 
	.byte	W06
	.byte		N48   , Bn4 
	.byte	W24
	.byte	W03
	.byte		VOL   , 70*song292_mvl/mxv
	.byte	W03
	.byte		        65*song292_mvl/mxv
	.byte	W03
	.byte		        58*song292_mvl/mxv
	.byte	W03
	.byte		        52*song292_mvl/mxv
	.byte	W03
	.byte		        47*song292_mvl/mxv
	.byte	W03
	.byte		        39*song292_mvl/mxv
	.byte	W03
	.byte		        31*song292_mvl/mxv
	.byte	W03
	.byte		        32*song292_mvl/mxv
	.byte		N18   , Gs3 
	.byte	W03
	.byte		VOL   , 43*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        65*song292_mvl/mxv
	.byte	W03
	.byte		        76*song292_mvl/mxv
	.byte	W06
	.byte		VOICE , 56
	.byte		VOL   , 83*song292_mvl/mxv
	.byte	W06
	.byte		VOICE , 56
	.byte		VOL   , 86*song292_mvl/mxv
	.byte		N36   , Cs5 , v116
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W03
	.byte		        64*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        42*song292_mvl/mxv
	.byte	W03
	.byte		        86*song292_mvl/mxv
	.byte		N03   , Bn4 , v108
	.byte	W04
	.byte		MOD   , 0
	.byte	W02
	.byte		N03   , An4 , v100
	.byte	W06
	.byte		N36   , Bn4 , v112
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W03
	.byte		        64*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        42*song292_mvl/mxv
	.byte	W03
	.byte		        86*song292_mvl/mxv
	.byte		N03   , An4 , v100
	.byte	W04
	.byte		MOD   , 0
	.byte	W02
	.byte		N03   , Gs4 
	.byte	W06
	.byte		N36   , An4 , v112
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W03
	.byte		        64*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        42*song292_mvl/mxv
	.byte	W03
	.byte		        86*song292_mvl/mxv
	.byte		N03   , Gs4 , v100
	.byte	W04
	.byte		MOD   , 0
	.byte	W02
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N24   , Gs4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N08   , Dn4 
	.byte	W16
	.byte		N04   , Dn4 , v100
	.byte	W04
	.byte		        En4 
	.byte	W04
	.byte		N48   , Fs4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W04
	.byte		        65*song292_mvl/mxv
	.byte	W04
	.byte		        54*song292_mvl/mxv
	.byte	W04
	.byte		        43*song292_mvl/mxv
	.byte	W04
	.byte		        32*song292_mvl/mxv
	.byte	W04
	.byte		        21*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 86*song292_mvl/mxv
	.byte		N24   , An4 
	.byte	W24
	.byte		N06   , Gs4 , v120
	.byte	W18
	.byte		        Fs4 
	.byte	W06
	.byte		N48   , En4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W04
	.byte		        65*song292_mvl/mxv
	.byte	W04
	.byte		        54*song292_mvl/mxv
	.byte	W04
	.byte		        43*song292_mvl/mxv
	.byte	W04
	.byte		        32*song292_mvl/mxv
	.byte	W04
	.byte		        21*song292_mvl/mxv
	.byte	W04
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 86*song292_mvl/mxv
	.byte		N12   , Fs4 , v100
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N08   , Dn4 , v127
	.byte	W12
	.byte		N06   , Dn4 , v100
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N08   , Fs4 , v127
	.byte	W12
	.byte		N06   , Fs4 , v100
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N24   , An4 , v127
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		N06   , Bn4 , v120
	.byte	W18
	.byte		        An4 
	.byte	W06
	.byte		N60   , Gs4 , v127
	.byte	W36
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W04
	.byte		        65*song292_mvl/mxv
	.byte	W04
	.byte		        54*song292_mvl/mxv
	.byte	W04
	.byte		        43*song292_mvl/mxv
	.byte	W04
	.byte		        32*song292_mvl/mxv
	.byte	W04
	.byte		        21*song292_mvl/mxv
	.byte	W04
	.byte		        12*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte	W02
	.byte		VOL   , 5*song292_mvl/mxv
	.byte	W06
	.byte	GOTO
	 .word	song292_0 + 0xE
	.byte	FINE

@**************** Track 01 ****************************@

song292_1:
	.byte	KEYSH , 0
	.byte		VOICE , 60
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte	W24
	.byte		VOL   , 56*song292_mvl/mxv
	.byte		PAN   , c_v-27
	.byte		N24   , Bn2 , v112
	.byte	W24
	.byte		N36   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 48*song292_mvl/mxv
	.byte	W04
	.byte		        41*song292_mvl/mxv
	.byte	W04
	.byte		        33*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 56*song292_mvl/mxv
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N36   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 48*song292_mvl/mxv
	.byte	W04
	.byte		        41*song292_mvl/mxv
	.byte	W04
	.byte		        33*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 56*song292_mvl/mxv
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		VOL   , 27*song292_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W03
	.byte		VOL   , 44*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        65*song292_mvl/mxv
	.byte	W03
	.byte		MOD   , 5
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W12
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		VOL   , 32*song292_mvl/mxv
	.byte		N04   , En4 , v127
	.byte	W08
	.byte		PAN   , c_v+31
	.byte		N04   , An3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , En4 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , En4 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , An3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , En4 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Ds4 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Gs3 , v100
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Ds4 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N08   , Ds4 , v127
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Gs3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Ds4 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Cs4 , v127
	.byte	W08
	.byte		PAN   , c_v+31
	.byte		N04   , Fs3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Cs4 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , Cs4 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Fs3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Cs4 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Bn3 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , En3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Bn3 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N08   , Bn3 , v127
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , En3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Gs3 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Fs3 , v127
	.byte	W08
	.byte		PAN   , c_v+31
	.byte		N04   , Gs3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , An3 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , An3 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Fs3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , An3 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Fs3 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Gs3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , An3 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N08   , An3 , v127
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Fs3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , An3 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Gs3 , v127
	.byte	W08
	.byte		PAN   , c_v+31
	.byte		N04   , En3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Bn3 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , Bn3 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , En3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Bn3 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Bn3 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , En3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Bn3 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N08   , Bn3 , v127
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , En3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Bn3 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , An3 , v127
	.byte	W08
	.byte		PAN   , c_v+31
	.byte		N04   , Bn3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , An3 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , Cs4 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Bn3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Cs4 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Dn4 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Bn3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Dn4 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N08   , Fs4 , v127
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , En4 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Ds4 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , En4 , v127
	.byte	W08
	.byte		PAN   , c_v+31
	.byte		N04   , Bn3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , En4 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N08   , En4 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Bn3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , En4 
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , En4 , v127
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , Bn3 , v096
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , En4 
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N08   , En4 , v127
	.byte	W08
	.byte		PAN   , c_v+32
	.byte		N04   , Bn3 , v096
	.byte	W08
	.byte		PAN   , c_v-32
	.byte		N04   , En4 
	.byte	W08
	.byte	GOTO
	 .word	song292_1 + 0x9
	.byte	FINE

@**************** Track 02 ****************************@

song292_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 67*song292_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N03   , Bn1 
	.byte	W06
	.byte		        Bn1 , v116
	.byte	W06
	.byte		N24   , Bn1 , v100
	.byte	W36
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W24
	.byte		N36   , Bn1 
	.byte	W36
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N03   , Bn1 , v100
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09   , Bn1 , v124
	.byte	W12
	.byte		N03   , Bn1 , v100
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W24
	.byte		N24   , Bn1 
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        En2 
	.byte	W16
	.byte		N04   , An2 , v064
	.byte	W08
	.byte		N12   , An1 , v127
	.byte	W24
	.byte		        Ds2 
	.byte	W16
	.byte		N04   , Fs2 , v064
	.byte	W08
	.byte		N12   , Gs1 , v127
	.byte	W24
	.byte		        Cs2 
	.byte	W16
	.byte		N04   , En2 , v064
	.byte	W08
	.byte		N12   , Fs1 , v127
	.byte	W24
	.byte		        Bn1 
	.byte	W16
	.byte		N04   , En2 , v064
	.byte	W08
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Fs1 
	.byte	W16
	.byte		N04   , Dn2 , v064
	.byte	W08
	.byte		N12   , An1 , v127
	.byte	W16
	.byte		N04   , Dn2 , v068
	.byte	W08
	.byte		N12   , Fs1 , v127
	.byte	W16
	.byte		N04   , Dn2 , v064
	.byte	W08
	.byte		N12   , An1 , v127
	.byte	W16
	.byte		N04   , Dn2 , v064
	.byte	W08
	.byte		N12   , Gs1 , v127
	.byte	W16
	.byte		N04   , En2 , v068
	.byte	W08
	.byte		N12   , Bn1 , v127
	.byte	W16
	.byte		N04   , En2 , v068
	.byte	W08
	.byte		N12   , Gs1 , v127
	.byte	W16
	.byte		N04   , En2 , v064
	.byte	W08
	.byte		N12   , Bn1 , v127
	.byte	W16
	.byte		N04   , En2 , v064
	.byte	W08
	.byte		N12   , Fs1 , v127
	.byte	W16
	.byte		N04   , Fs2 , v064
	.byte	W08
	.byte		N12   , An1 , v127
	.byte	W16
	.byte		N04   , Fs2 , v064
	.byte	W08
	.byte		N12   , Cs2 , v127
	.byte	W16
	.byte		N04   , Fs2 , v064
	.byte	W08
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn1 
	.byte	W16
	.byte		N04   , Ds2 , v064
	.byte	W08
	.byte		N12   , En2 , v127
	.byte	W16
	.byte		N04   , Fs2 , v064
	.byte	W08
	.byte		N12   , Gs2 , v127
	.byte	W16
	.byte		N04   , En2 , v064
	.byte	W08
	.byte		N12   , En2 , v127
	.byte	W24
	.byte	GOTO
	 .word	song292_2 + 0xF
	.byte	FINE

@**************** Track 03 ****************************@

song292_3:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 86*song292_mvl/mxv
	.byte	W12
	.byte		N12   , Bn1 , v104
	.byte	W12
	.byte		VOL   , 75*song292_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N12   , En2 , v104
	.byte	W12
	.byte		N03   , Bn2 , v100
	.byte	W06
	.byte		        Bn2 , v088
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N24   , Bn1 , v104
	.byte	W12
	.byte		VOL   , 65*song292_mvl/mxv
	.byte	W03
	.byte		        54*song292_mvl/mxv
	.byte	W03
	.byte		        43*song292_mvl/mxv
	.byte	W03
	.byte		        32*song292_mvl/mxv
	.byte	W24
	.byte	W03
	.byte		        75*song292_mvl/mxv
	.byte	W24
	.byte	W48
	.byte		PAN   , c_v+0
	.byte	W09
	.byte		        c_v-32
	.byte	W03
	.byte		N06   , Dn3 
	.byte	W06
	.byte		        Cs3 , v092
	.byte	W06
	.byte		        An2 , v104
	.byte	W09
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		N12   , Cs3 , v100
	.byte	W12
	.byte		VOL   , 75*song292_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N12   , En2 , v104
	.byte	W12
	.byte		N03   , Bn2 , v092
	.byte	W06
	.byte		        Bn2 , v088
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N12   , Bn1 , v092
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N03   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v080
	.byte	W06
	.byte		N12   , Bn2 , v084
	.byte	W24
	.byte		VOL   , 75*song292_mvl/mxv
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 48
	.byte		VOL   , 75*song292_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N08   , En5 , v052
	.byte	W16
	.byte		N04
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		N16   , Bn4 
	.byte	W16
	.byte		PAN   , c_v-32
	.byte		N04   , En5 , v040
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		N09   , Bn4 
	.byte	W16
	.byte		N04   , En5 , v032
	.byte	W04
	.byte		        Ds5 
	.byte	W04
	.byte		PAN   , c_v+48
	.byte		N09   , Bn4 
	.byte	W12
	.byte		VOICE , 47
	.byte		N12   , Bn1 , v100
	.byte	W12
	.byte	GOTO
	 .word	song292_3 + 0xF
	.byte	FINE

@**************** Track 04 ****************************@

song292_4:
	.byte	KEYSH , 0
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 54*song292_mvl/mxv
	.byte	W24
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N12   , Gs2 , v127
	.byte	W12
	.byte		N03   , Bn2 , v100
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N03   , En2 , v127
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		MOD   , 0
	.byte		N30   , Bn2 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 51*song292_mvl/mxv
	.byte	W03
	.byte		        46*song292_mvl/mxv
	.byte	W03
	.byte		        41*song292_mvl/mxv
	.byte	W03
	.byte		        36*song292_mvl/mxv
	.byte	W03
	.byte		        29*song292_mvl/mxv
	.byte	W03
	.byte		        25*song292_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		VOL   , 54*song292_mvl/mxv
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W18
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N48   , An2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 48*song292_mvl/mxv
	.byte	W03
	.byte		        43*song292_mvl/mxv
	.byte	W03
	.byte		        36*song292_mvl/mxv
	.byte	W03
	.byte		        32*song292_mvl/mxv
	.byte	W03
	.byte		        27*song292_mvl/mxv
	.byte	W03
	.byte		        23*song292_mvl/mxv
	.byte	W03
	.byte		        16*song292_mvl/mxv
	.byte	W03
	.byte		        12*song292_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N03   , Bn2 , v100
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		N12   , Gs3 , v127
	.byte	W12
	.byte		N03   , Bn3 , v100
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N03   , En3 , v127
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		N30   , Bn3 
	.byte	W06
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 51*song292_mvl/mxv
	.byte	W03
	.byte		        46*song292_mvl/mxv
	.byte	W03
	.byte		        41*song292_mvl/mxv
	.byte	W03
	.byte		        36*song292_mvl/mxv
	.byte	W03
	.byte		        29*song292_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 25*song292_mvl/mxv
	.byte	W06
	.byte		        54*song292_mvl/mxv
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W18
	.byte		N03   , Gs3 
	.byte	W06
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		VOL   , 37*song292_mvl/mxv
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		VOL   , 43*song292_mvl/mxv
	.byte		N12   , Fs3 , v124
	.byte	W06
	.byte		VOL   , 65*song292_mvl/mxv
	.byte	W06
	.byte		VOICE , 84
	.byte		N40   , En4 , v127
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 47*song292_mvl/mxv
	.byte	W04
	.byte		        39*song292_mvl/mxv
	.byte	W04
	.byte		        32*song292_mvl/mxv
	.byte	W04
	.byte		        25*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N04   , Ds4 , v100
	.byte	W04
	.byte		        Cs4 
	.byte	W04
	.byte		N40   , Ds4 , v127
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 47*song292_mvl/mxv
	.byte	W04
	.byte		        39*song292_mvl/mxv
	.byte	W04
	.byte		        32*song292_mvl/mxv
	.byte	W04
	.byte		        25*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N04   , Cs4 , v100
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		N40   , Cs4 , v127
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 47*song292_mvl/mxv
	.byte	W04
	.byte		        39*song292_mvl/mxv
	.byte	W04
	.byte		        32*song292_mvl/mxv
	.byte	W04
	.byte		        25*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N04   , Bn3 , v100
	.byte	W04
	.byte		        An3 
	.byte	W04
	.byte		N24   , Bn3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N08   , Fs3 
	.byte	W16
	.byte		N04   , Fs3 , v100
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		N48   , An3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 48*song292_mvl/mxv
	.byte	W04
	.byte		        42*song292_mvl/mxv
	.byte	W04
	.byte		        35*song292_mvl/mxv
	.byte	W04
	.byte		        29*song292_mvl/mxv
	.byte	W04
	.byte		        21*song292_mvl/mxv
	.byte	W04
	.byte		        14*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N06   , Bn3 , v120
	.byte	W18
	.byte		        An3 
	.byte	W06
	.byte		N48   , Gs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 48*song292_mvl/mxv
	.byte	W04
	.byte		        42*song292_mvl/mxv
	.byte	W04
	.byte		        35*song292_mvl/mxv
	.byte	W04
	.byte		        29*song292_mvl/mxv
	.byte	W04
	.byte		        21*song292_mvl/mxv
	.byte	W04
	.byte		        14*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 , v100
	.byte	W12
	.byte		N08   , Fs3 , v127
	.byte	W16
	.byte		N04   , Fs3 , v100
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		N08   , An3 , v127
	.byte	W16
	.byte		N04   , An3 , v100
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		N24   , Cs4 , v127
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N06   , Bn3 , v120
	.byte	W18
	.byte		        En4 
	.byte	W06
	.byte		N60   , Bn3 , v127
	.byte	W24
	.byte		VOL   , 50*song292_mvl/mxv
	.byte	W04
	.byte		        46*song292_mvl/mxv
	.byte	W04
	.byte		        42*song292_mvl/mxv
	.byte	W04
	.byte		        38*song292_mvl/mxv
	.byte	W04
	.byte		        33*song292_mvl/mxv
	.byte	W04
	.byte		        29*song292_mvl/mxv
	.byte	W04
	.byte		        23*song292_mvl/mxv
	.byte	W04
	.byte		        20*song292_mvl/mxv
	.byte	W04
	.byte		        16*song292_mvl/mxv
	.byte	W04
	.byte		        10*song292_mvl/mxv
	.byte	W04
	.byte		MOD   , 0
	.byte		VOL   , 54*song292_mvl/mxv
	.byte	W08
	.byte	GOTO
	 .word	song292_4 + 0xE
	.byte	FINE

@**************** Track 05 ****************************@

song292_5:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 78*song292_mvl/mxv
	.byte		N48   , Cn3 , v100
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		VOL   , 80*song292_mvl/mxv
	.byte	W24
	.byte		N48   , Cs2 , v100
	.byte	W24
	.byte		N03   , En1 
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte		N24   , Bn2 
	.byte	W03
	.byte		N03   , En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		N06
	.byte		N48   , Cs2 
	.byte	W24
	.byte		N03   , En1 
	.byte	W03
	.byte		        En1 , v048
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
	.byte	W36
	.byte	W03
	.byte		N24   , Cn3 , v100
	.byte	W24
	.byte		N48   , An2 
	.byte	W48
	.byte		N03   , En1 
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte		N24   , Bn2 
	.byte	W24
	.byte		N03   , En1 
	.byte		N48   , An2 
	.byte	W03
	.byte		N03   , En1 , v048
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
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , En1 , v064
	.byte		N24   , Cn3 , v108
	.byte	W03
	.byte		N03   , En1 , v080
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v116
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		N08   , En1 , v100
	.byte		N48   , Cs2 
	.byte	W16
	.byte		N08   , En1 , v084
	.byte	W08
	.byte		N03   , En1 , v100
	.byte	W03
	.byte		        En1 , v048
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
	.byte		N08   , En1 , v100
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
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
	.byte		N08   , En1 , v100
	.byte	W16
	.byte		        En1 , v084
	.byte	W08
	.byte		        En1 , v100
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W16
	.byte		        En1 , v084
	.byte	W08
	.byte		N03   , En1 , v100
	.byte	W03
	.byte		        En1 , v048
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
	.byte		N04   , En1 , v100
	.byte	W04
	.byte		        En1 , v048
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N08   , En1 , v100
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N08
	.byte	W16
	.byte		        En1 , v084
	.byte	W08
	.byte		N03   , En1 , v100
	.byte	W03
	.byte		        En1 , v048
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
	 .word	song292_5 + 0xD5
	.byte	PATT
	 .word	song292_5 + 0xFC
	.byte	W72
	.byte		N24   , Cn3 , v100
	.byte	W24
	.byte	GOTO
	 .word	song292_5 + 0xA
	.byte	FINE

@******************************************************@
	.align	2

song292:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song292_pri	@ Priority
	.byte	song292_rev	@ Reverb.

	.word	song292_grp

	.word	song292_0
	.word	song292_1
	.word	song292_2
	.word	song292_3
	.word	song292_4
	.word	song292_5

	.end
