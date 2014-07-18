@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song253_grp, group_7
	.equ	song253_pri, 5
	.equ	song253_rev, 178
	.equ	song253_mvl, 127
	.equ	song253_key, 0
	.equ	song253_tbs, 1
	.equ	song253_exg, 1
	.equ	song253_cmp, 1

	.text
	.global	song253
	.align	2

@**************** Track 00 ****************************@

song253_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 131
	.byte		VOICE , 123
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*song253_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N02   , Cn2 , v120
	.byte	W08
	.byte		N04   , Cn5 
	.byte	W16
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song253_1:
	.byte	KEYSH , 0
	.byte		VOICE , 31
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 80*song253_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-64
	.byte		TIE   , En4 , v032
	.byte	W24
	.byte	W04
	.byte		BEND  , c_v-55
	.byte	W02
	.byte		        c_v-50
	.byte	W02
	.byte		        c_v-39
	.byte	W02
	.byte		        c_v-32
	.byte	W02
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-18
	.byte	W02
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-2
	.byte	W02
	.byte		        c_v+16
	.byte	W02
	.byte		        c_v+23
	.byte	W02
	.byte		        c_v+32
	.byte	W02
	.byte		        c_v+39
	.byte	W02
	.byte		        c_v+48
	.byte	W02
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+63
	.byte	W16
	.byte	W24
	.byte	W24
	.byte		VOL   , 70*song253_mvl/mxv
	.byte	W04
	.byte		        66*song253_mvl/mxv
	.byte	W06
	.byte		        60*song253_mvl/mxv
	.byte	W06
	.byte		        55*song253_mvl/mxv
	.byte	W08
	.byte		        49*song253_mvl/mxv
	.byte	W06
	.byte		        44*song253_mvl/mxv
	.byte	W06
	.byte		        40*song253_mvl/mxv
	.byte	W06
	.byte		        35*song253_mvl/mxv
	.byte	W06
	.byte		        30*song253_mvl/mxv
	.byte	W04
	.byte		        24*song253_mvl/mxv
	.byte	W02
	.byte		        20*song253_mvl/mxv
	.byte	W02
	.byte		        15*song253_mvl/mxv
	.byte	W04
	.byte		        10*song253_mvl/mxv
	.byte	W06
	.byte		        0*song253_mvl/mxv
	.byte	W06
	.byte		EOT
	.byte	FINE

@**************** Track 02 ****************************@

song253_2:
	.byte	KEYSH , 0
	.byte		VOICE , 50
	.byte		VOL   , 69*song253_mvl/mxv
	.byte		PAN   , c_v-64
	.byte	W24
	.byte		        c_v+63
	.byte		N01   , Fs4 , v064
	.byte	W06
	.byte		        Gs4 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W07
	.byte		N01   , En5 
	.byte	W05
	.byte		        Fs5 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte	W10
	.byte		N01   , Dn5 
	.byte	W03
	.byte		        Cn5 
	.byte	W07
	.byte		PAN   , c_v-64
	.byte	W04
	.byte		N01   , Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W09
	.byte		PAN   , c_v+63
	.byte	W04
	.byte		N01   , Bn4 
	.byte	W04
	.byte		        Dn5 
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W09
	.byte		N01   , Fs5 
	.byte	W09
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N01   , Cs4 , v036
	.byte	W02
	.byte		        As3 
	.byte	W08
	.byte		        Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W09
	.byte		PAN   , c_v-64
	.byte	W03
	.byte		N01   , Dn5 , v028
	.byte	W03
	.byte		        Cn5 
	.byte	W06
	.byte		        Fs4 
	.byte	W03
	.byte		        Cn4 
	.byte	W04
	.byte		        Gn3 
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N01   , Gn4 , v020
	.byte	W02
	.byte		        An4 
	.byte	W16
	.byte	FINE

@******************************************************@
	.align	2

song253:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song253_pri	@ Priority
	.byte	song253_rev	@ Reverb.

	.word	song253_grp

	.word	song253_0
	.word	song253_1
	.word	song253_2

	.end
