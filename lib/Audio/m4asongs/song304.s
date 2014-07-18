@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song304_grp, group_40
	.equ	song304_pri, 0
	.equ	song304_rev, 178
	.equ	song304_mvl, 127
	.equ	song304_key, 0
	.equ	song304_tbs, 1
	.equ	song304_exg, 1
	.equ	song304_cmp, 1

	.text
	.global	song304
	.align	2

@**************** Track 00 ****************************@

song304_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 57
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 42*song304_mvl/mxv
	.byte	W72
	.byte		N12   , As2 , v127
	.byte	W12
	.byte		        Cn3 , v108
	.byte	W12
	.byte		N24   , Cs3 , v127
	.byte	W24
	.byte		        Fn2 , v112
	.byte	W24
	.byte		        Fs2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte	PEND
	.byte		N36   , As2 , v120
	.byte	W36
	.byte		N12   , Fn2 , v108
	.byte	W12
	.byte		N24   , Ds2 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte	PEND
	.byte		N36   , Cn3 , v120
	.byte	W36
	.byte		N12   , Gs2 , v112
	.byte	W12
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte	PEND
	.byte	W72
	.byte		N12   , As2 , v127
	.byte	W12
	.byte		        Cn3 , v112
	.byte	W12
	.byte		N24   , Cs3 , v127
	.byte	W24
	.byte		N12   , Fn3 , v112
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Cs3 , v120
	.byte	W24
	.byte		N12   , Fs3 , v112
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , As2 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N36   , Cn3 , v120
	.byte	W36
	.byte		N06   , As2 , v112
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N24   , Gs2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		VOL   , 45*song304_mvl/mxv
	.byte		N12   , Fn3 , v120
	.byte	W12
	.byte		N24   , Cs3 , v112
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Cs3 , v127
	.byte	W24
	.byte		N12   , Fn3 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N24   , As2 , v120
	.byte	W24
	.byte		N12   , Cs3 , v112
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte	PATT
	 .word	song304_0 + 0x30
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 24
	.byte		VOL   , 40*song304_mvl/mxv
	.byte		N01   , As3 , v120
	.byte	W06
	.byte		N03   , Cs3 
	.byte	W06
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N03   , Gs3 
	.byte	W06
	.byte		N01   , Cs3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N03   , Gs3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N01   , En4 , v092
	.byte	W06
	.byte		N12   , Gs3 , v120
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N01   , Cs3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N01   , Cs3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N03   , As2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N01   , Cs3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N03   , Fs2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N01   , An3 
	.byte	W06
	.byte		N05   , Cs3 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N01   , Gs3 , v092
	.byte	W06
	.byte		N04   , Cs3 , v120
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N01   , Fn3 , v092
	.byte	W06
	.byte		N12   , Gs2 , v112
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N01   , As2 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N01   , As3 , v080
	.byte	W06
	.byte		N03   , Cn3 , v112
	.byte	W06
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N06   , Cs3 , v124
	.byte	W06
	.byte		N03   , Cs3 , v120
	.byte	W06
	.byte		N06   , Ds3 , v112
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N01   , Cn4 , v088
	.byte	W06
	.byte		N06   , Gs3 , v096
	.byte	W06
	.byte		N12   , As3 , v112
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N05   , Cs4 , v096
	.byte	W06
	.byte		N12   , Cn4 , v080
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		N05   , Gs3 
	.byte	W06
	.byte		N01   , Cs4 
	.byte	W06
	.byte		N12   , Fn3 , v076
	.byte	W12
	.byte		VOICE , 1
	.byte		VOL   , 45*song304_mvl/mxv
	.byte		N12   , Gs3 , v120
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Ds4 , v064
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Ds4 , v032
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Ds4 , v016
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W72
	.byte		N12   , As2 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PATT
	 .word	song304_0 + 0x16
	.byte	PATT
	 .word	song304_0 + 0x22
	.byte	PATT
	 .word	song304_0 + 0x30
	.byte	GOTO
	 .word	song304_0 + 0x3E
	.byte	FINE

@**************** Track 01 ****************************@

song304_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 77*song304_mvl/mxv
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 , v064
	.byte	W12
	.byte		N24   , Fs4 , v112
	.byte	W24
	.byte		N08   , Fn4 , v127
	.byte	W08
	.byte		        Fs4 , v096
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N24   , Ds4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte	PEND
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As3 , v064
	.byte	W12
	.byte		N24   , Fs4 , v127
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
	.byte		N24   , Gs4 , v127
	.byte	W24
	.byte		N12   , Fs4 , v112
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , Ds4 , v127
	.byte	W24
	.byte		N12   , Fn4 , v112
	.byte	W12
	.byte		        Ds4 , v096
	.byte	W12
	.byte	PEND
	.byte		VOICE , 4
	.byte		VOL   , 65*song304_mvl/mxv
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Gs3 , v096
	.byte	W12
	.byte		N24   , Cs4 , v112
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fs4 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		MOD   , 0
	.byte		N08   , Fn4 , v127
	.byte	W08
	.byte		        Fs4 , v096
	.byte	W08
	.byte		        Fn4 
	.byte	W08
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N24   , Ds4 , v127
	.byte	W24
	.byte		        Cn4 , v108
	.byte	W24
	.byte	PEND
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Ds4 , v112
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As3 , v048
	.byte	W12
	.byte		N24   , Fs4 , v124
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Fn4 , v112
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte	PEND
	.byte		N12   , Gs4 , v127
	.byte	W12
	.byte		        Cn4 , v048
	.byte	W12
	.byte		        Fs4 , v127
	.byte	W12
	.byte		        Fn4 , v112
	.byte	W12
	.byte		N48   , Ds4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W36
	.byte	PEND
	.byte		VOICE , 5
	.byte		MOD   , 0
	.byte		VOL   , 51*song304_mvl/mxv
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Gs3 , v096
	.byte	W12
	.byte		N24   , Cs4 , v112
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fs4 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte	PATT
	 .word	song304_1 + 0x76
	.byte	PATT
	 .word	song304_1 + 0x8F
	.byte	PATT
	 .word	song304_1 + 0xAA
	.byte		VOICE , 73
	.byte		VOL   , 89*song304_mvl/mxv
	.byte		MOD   , 0
	.byte	W12
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		        Ds4 , v112
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fn4 , v127
	.byte	W12
	.byte		        Fs4 , v112
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N09   , Fs4 
	.byte	W09
	.byte		N03   , Gn4 , v080
	.byte	W03
	.byte		N12   , Gs4 , v127
	.byte	W12
	.byte		        Ds4 , v112
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 , v127
	.byte	W12
	.byte		        As3 , v112
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte	W09
	.byte		N03   , Dn4 , v064
	.byte	W03
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cs4 , v127
	.byte	W12
	.byte		        Ds4 , v112
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 , v127
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Gs3 , v127
	.byte	W12
	.byte		        As3 , v112
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12   , As3 , v127
	.byte	W12
	.byte		        Gs3 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As3 , v127
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 , v127
	.byte	W12
	.byte		        Gs3 , v112
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 , v127
	.byte	W12
	.byte		        Ds3 , v112
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte	W09
	.byte		N03   , Bn3 , v068
	.byte	W03
	.byte		N12   , As3 , v127
	.byte	W12
	.byte		        Gs3 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        As3 , v127
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N09   , Ds4 
	.byte	W09
	.byte		N03   , En4 , v076
	.byte	W03
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		        Fs4 , v112
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs4 , v127
	.byte	W12
	.byte		        Fs4 , v112
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		VOICE , 24
	.byte		VOL   , 74*song304_mvl/mxv
	.byte		MOD   , 0
	.byte		N01   , Fn4 , v092
	.byte	W06
	.byte		N03   , Gs3 
	.byte	W06
	.byte		N06   , Fn4 , v127
	.byte	W06
	.byte		N01   , Fn4 , v120
	.byte	W06
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		N03   , Fn4 
	.byte	W06
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		N06   , Fs4 , v112
	.byte	W06
	.byte		N03   , Fn4 , v120
	.byte	W12
	.byte		N06   , Fs4 , v112
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Gs4 , v127
	.byte	W06
	.byte		N01   , Cn5 , v092
	.byte	W06
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N06   , Gs3 , v127
	.byte	W06
	.byte		N01   , Fn3 , v120
	.byte	W06
	.byte		N12   , As3 , v112
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N01   , Gs3 , v120
	.byte	W06
	.byte		N12   , Ds4 , v112
	.byte	W12
	.byte		N03   , Fn3 , v080
	.byte	W03
	.byte		        Gs3 , v092
	.byte	W03
	.byte		        As3 , v096
	.byte	W03
	.byte		        Cn4 , v104
	.byte	W03
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cs4 , v127
	.byte	W12
	.byte		N06   , Ds4 , v112
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		N06   , Fn4 , v127
	.byte	W06
	.byte		N03   , Ds4 , v104
	.byte	W03
	.byte		        Cs4 , v120
	.byte	W03
	.byte		N12   , Cn4 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N01   , Gs3 
	.byte	W06
	.byte		N03   , Gs3 , v120
	.byte	W06
	.byte		N06   , Gs3 , v127
	.byte	W06
	.byte		N12   , As3 , v112
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N03   , Ds3 , v064
	.byte	W03
	.byte		        Fs3 , v076
	.byte	W03
	.byte		        Gs3 , v084
	.byte	W03
	.byte		        An3 , v096
	.byte	W03
	.byte		N12   , As3 , v127
	.byte	W12
	.byte		        Gs3 , v112
	.byte	W12
	.byte		N01   , Fs4 
	.byte	W06
	.byte		N05   , As3 , v120
	.byte	W06
	.byte		N12   , As3 , v127
	.byte	W12
	.byte		        Cn4 , v112
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Cs4 , v127
	.byte	W12
	.byte		N01   , Fn4 , v092
	.byte	W06
	.byte		N04   , Gs3 , v112
	.byte	W06
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Cs3 , v127
	.byte	W12
	.byte		N01   , Cs4 , v092
	.byte	W06
	.byte		N12   , En3 , v112
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N01   , Fs3 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , As3 , v127
	.byte	W12
	.byte		N01   , Fs4 , v080
	.byte	W06
	.byte		N03   , Gs3 , v112
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , As3 , v124
	.byte	W06
	.byte		N03   , As3 , v120
	.byte	W06
	.byte		N06   , Cn4 , v112
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N01   , Gs4 , v088
	.byte	W06
	.byte		N06   , Fn4 , v096
	.byte	W06
	.byte		N12   , Fs4 , v112
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N05   , Gs4 , v100
	.byte	W06
	.byte		N12   , Fs4 , v108
	.byte	W12
	.byte		N06   , Fn4 , v104
	.byte	W06
	.byte		N05   , Ds4 , v127
	.byte	W06
	.byte		N01   , Gs4 , v096
	.byte	W06
	.byte		N12   , Cn4 , v120
	.byte	W12
	.byte		VOICE , 1
	.byte		VOL   , 77*song304_mvl/mxv
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        Gs4 , v064
	.byte	W24
	.byte		        Gs4 , v032
	.byte	W24
	.byte		        Gs4 , v016
	.byte	W24
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Gs3 , v120
	.byte	W12
	.byte		N24   , Fs4 , v127
	.byte	W24
	.byte	PATT
	 .word	song304_1 + 0x1F
	.byte	PATT
	 .word	song304_1 + 0x34
	.byte	PATT
	 .word	song304_1 + 0x49
	.byte	GOTO
	 .word	song304_1 + 0x5F
	.byte	FINE

@**************** Track 02 ****************************@

song304_2:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 26*song304_mvl/mxv
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
	.byte	W24
	.byte		N12   , Gs3 , v120
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		VOICE , 92
	.byte		N48   , Fs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N84   , Fn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W72
	.byte		        0
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N72   , Ds3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W60
	.byte		        0
	.byte		N24   , Gs3 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N36   , Cs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N06   , Ds3 , v120
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		N24   , Fn3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cs3 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N36   , Ds3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N24   , Gs2 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , An2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N36   , As2 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W21
	.byte		N15   , Cn3 , v120
	.byte	W03
	.byte		MOD   , 0
	.byte	W12
	.byte		N36   , Cs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N06   , Cn3 , v120
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N36   , Cn3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N12   , Gs3 , v120
	.byte	W12
	.byte		N24   , Gs2 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fn3 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , As2 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cn3 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N48   , Ds3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , En3 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N84   , Gs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W72
	.byte		        0
	.byte		N12   , As3 , v120
	.byte	W12
	.byte		N36   , Cn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        As3 , v120
	.byte	W06
	.byte		N36   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N36   , Gs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		N06   , Fn3 , v120
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N36   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N24   , Gs3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Fn3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N36   , As2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N24   , As2 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cn3 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cs3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Ds3 , v120
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Fn3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 , v120
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , As3 , v127
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Ds3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 , v120
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Cn3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N48   , Cs3 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Ds3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		        0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song304_2 + 0x10
	.byte	FINE

@**************** Track 03 ****************************@

song304_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song304_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N48   , Cs2 , v120
	.byte	W48
	.byte		N24   , Cn2 
	.byte	W24
	.byte		        Ds2 
	.byte	W24
	.byte		N36   , As1 
	.byte	W36
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N36   , Fs1 
	.byte	W36
	.byte		N12   , As1 
	.byte	W12
	.byte		N24   , Ds1 
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N48   , Gs1 
	.byte	W48
	.byte		        Cn2 
	.byte	W48
	.byte		N36   , Cs2 
	.byte	W36
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N24   , Gs1 
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		N36   , Fs1 
	.byte	W36
	.byte		N06   , As1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N24   , Ds1 
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N30   , Fs1 
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As1 
	.byte	W06
	.byte		N18   , Ds2 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N30   , Fs1 
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N21   , Ds1 
	.byte	W24
	.byte		N03   , Cs2 
	.byte	W06
	.byte		        Ds1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N18   , Cs2 
	.byte	W18
	.byte		N12   , As1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Ds1 
	.byte	W12
	.byte		N03
	.byte	W18
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Ds1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N18   , Cn1 
	.byte	W24
	.byte		N06   , Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N03   , Cs2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W18
	.byte		        Ds1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N03   , Ds1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W30
	.byte		N06
	.byte	W12
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N06   , Cs1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Ds1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N03   , As1 
	.byte	W06
	.byte		N06   , Ds1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Cs1 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N03   , Cs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W18
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W12
	.byte		N24   , Gs1 
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	W96
	.byte		VOL   , 31*song304_mvl/mxv
	.byte	W48
	.byte		VOICE , 82
	.byte	W24
	.byte		MOD   , 5
	.byte	W06
	.byte		N06   , En1 
	.byte	W18
	.byte	W09
	.byte		TIE
	.byte	W84
	.byte	W03
	.byte	W96
	.byte	W12
	.byte		VOL   , 30*song304_mvl/mxv
	.byte	W06
	.byte		        25*song304_mvl/mxv
	.byte	W06
	.byte		        22*song304_mvl/mxv
	.byte	W06
	.byte		        19*song304_mvl/mxv
	.byte	W06
	.byte		        19*song304_mvl/mxv
	.byte	W06
	.byte		        16*song304_mvl/mxv
	.byte	W06
	.byte		        13*song304_mvl/mxv
	.byte	W06
	.byte		        11*song304_mvl/mxv
	.byte	W09
	.byte		        8*song304_mvl/mxv
	.byte	W09
	.byte		        6*song304_mvl/mxv
	.byte	W12
	.byte		        3*song304_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte		MOD   , 0
	.byte		VOL   , 0*song304_mvl/mxv
	.byte	W48
	.byte		VOICE , 81
	.byte	W24
	.byte		VOL   , 56*song304_mvl/mxv
	.byte	W24
	.byte	GOTO
	 .word	song304_3 + 0x10
	.byte	FINE

@**************** Track 04 ****************************@

song304_4:
	.byte	KEYSH , 0
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 50*song304_mvl/mxv
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
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N06   , Fs4 , v120
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W12
	.byte		        Cs5 , v056
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N06   , Fn5 , v044
	.byte	W06
	.byte		        Gs5 
	.byte	W12
	.byte		PAN   , c_v+31
	.byte	W09
	.byte		N06   , Ds6 , v120
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Ds5 
	.byte	W09
	.byte		PAN   , c_v+31
	.byte	W06
	.byte		N06   , Cn5 , v044
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte	W12
	.byte		N06   , Ds4 , v120
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        As5 
	.byte	W18
	.byte		        Fs5 , v056
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N06   , Fs5 , v044
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte	W09
	.byte		N06   , Cn6 , v120
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn5 , v056
	.byte	W06
	.byte		        Gs5 
	.byte	W09
	.byte		PAN   , c_v+32
	.byte	W06
	.byte		N06   , Fn5 , v044
	.byte	W06
	.byte		        Gs5 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N06   , Ds4 , v120
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gs5 
	.byte	W12
	.byte		        Cs5 , v056
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		PAN   , c_v-33
	.byte	W12
	.byte		N06   , Fs5 , v044
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte	W09
	.byte		N06   , Cn6 , v120
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn5 , v056
	.byte	W06
	.byte		        Gs5 
	.byte	W09
	.byte		PAN   , c_v+31
	.byte	W06
	.byte		N06   , Fn5 , v044
	.byte	W06
	.byte		        Gs5 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N06   , Ds4 , v120
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        As5 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N06   , Fs5 , v044
	.byte	W06
	.byte		        As5 
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
	.byte		PAN   , c_v-62
	.byte		VOL   , 56*song304_mvl/mxv
	.byte	W22
	.byte		VOICE , 58
	.byte	W56
	.byte		N06   , En2 , v120
	.byte	W18
	.byte		PAN   , c_v-62
	.byte	W09
	.byte		TIE
	.byte	W15
	.byte		PAN   , c_v-49
	.byte	W12
	.byte		        c_v-41
	.byte	W12
	.byte		        c_v-32
	.byte	W12
	.byte		        c_v-25
	.byte	W12
	.byte		        c_v-16
	.byte	W12
	.byte		        c_v-8
	.byte	W12
	.byte		        c_v+0
	.byte	W12
	.byte		        c_v+8
	.byte	W12
	.byte		        c_v+16
	.byte	W12
	.byte		        c_v+21
	.byte	W12
	.byte		        c_v+32
	.byte	W12
	.byte		        c_v+38
	.byte	W12
	.byte		        c_v+47
	.byte	W12
	.byte		        c_v+56
	.byte	W12
	.byte		        c_v+63
	.byte	W12
	.byte		VOL   , 42*song304_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		VOL   , 33*song304_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+41
	.byte		VOL   , 28*song304_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		VOL   , 22*song304_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+23
	.byte		VOL   , 17*song304_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		VOL   , 12*song304_mvl/mxv
	.byte	W15
	.byte		        6*song304_mvl/mxv
	.byte	W09
	.byte		EOT
	.byte		VOL   , 0*song304_mvl/mxv
	.byte	W48
	.byte		VOICE , 46
	.byte		VOL   , 48*song304_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W48
	.byte	GOTO
	 .word	song304_4 + 0xE
	.byte	FINE

@**************** Track 05 ****************************@

song304_5:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		VOL   , 41*song304_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+32
	.byte	W96
	.byte		VOL   , 34*song304_mvl/mxv
	.byte	W96
	.byte		VOICE , 48
	.byte	W96
	.byte		VOL   , 34*song304_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N12   , Cs2 , v120
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Gs2 , v120
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Ds3 , v096
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N06   , Gs2 , v120
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N12   , As1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Cs3 , v096
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Gs2 , v120
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , As2 , v096
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N06   , Gs2 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , As3 , v096
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Cs3 , v120
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Fs3 , v096
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N06   , As2 , v120
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		VOL   , 24*song304_mvl/mxv
	.byte		N84   , Gs4 
	.byte	W84
	.byte		N06   , As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N36   , Cn5 
	.byte	W36
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , An4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W36
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		N36   , Cn5 
	.byte	W36
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N36   , As4 
	.byte	W36
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N24   , As4 
	.byte	W24
	.byte		N30   , Cn5 
	.byte	W30
	.byte		N03   , Cs5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N30   , As4 
	.byte	W30
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N21   , Cn5 
	.byte	W21
	.byte		N15   , Cs5 
	.byte	W15
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N12   , Ds5 
	.byte	W12
	.byte		VOICE , 56
	.byte		PAN   , c_v+32
	.byte		VOL   , 36*song304_mvl/mxv
	.byte	W06
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N03   , As4 
	.byte	W06
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W12
	.byte		VOL   , 36*song304_mvl/mxv
	.byte		N06   , Fn5 
	.byte	W06
	.byte		N03   , En5 , v092
	.byte	W03
	.byte		        Ds5 
	.byte	W09
	.byte		        Gs4 , v120
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W24
	.byte		        Fn5 
	.byte	W12
	.byte	W54
	.byte		N03   , Cn5 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N06   , Cn5 
	.byte	W06
	.byte		N03   , As4 , v088
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		N06   , Ds5 
	.byte	W12
	.byte		        Fn5 , v120
	.byte	W18
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Gs4 
	.byte	W06
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Ds5 
	.byte	W36
	.byte		        Fn5 
	.byte	W06
	.byte		N03   , Ds5 , v088
	.byte	W03
	.byte		        Cs5 
	.byte	W09
	.byte		        Gs4 , v120
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03   , Fn4 
	.byte	W12
	.byte		N06   , Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W30
	.byte		        As4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		N03   , Gs4 , v092
	.byte	W03
	.byte		        Fs4 , v088
	.byte	W03
	.byte		N06   , Cn5 , v120
	.byte	W12
	.byte		        Cs5 
	.byte	W06
	.byte		N03   , Cn5 , v092
	.byte	W03
	.byte		        As4 
	.byte	W09
	.byte		        Gs4 , v120
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W06
	.byte		N03   , Cn5 , v092
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		N06   , Fs4 , v120
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W06
	.byte		N12   , Ds5 
	.byte	W12
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W18
	.byte		N06   , Fn5 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W06
	.byte		N06   , Fn5 
	.byte	W12
	.byte		N03   , Ds5 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N03   , Bn4 , v088
	.byte	W03
	.byte		        As4 
	.byte	W84
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song304_5 + 0x10
	.byte	FINE

@**************** Track 06 ****************************@

song304_6:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 36*song304_mvl/mxv
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
	.byte	W48
	.byte		VOICE , 80
	.byte	W06
	.byte		N06   , Fs4 , v120
	.byte	W12
	.byte		N03   , Fn4 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cs5 
	.byte	W06
	.byte		N03   , Bn4 , v092
	.byte	W03
	.byte		        As4 
	.byte	W09
	.byte		        Ds4 , v120
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W24
	.byte		        Cn5 
	.byte	W12
	.byte	W54
	.byte		N03   , Gs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N03   , Fs4 , v088
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N06   , Cn5 , v120
	.byte	W12
	.byte		        As4 
	.byte	W18
	.byte		N03   , Fs4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		N06   , Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N03   , Fs4 , v088
	.byte	W03
	.byte		        Fn4 
	.byte	W09
	.byte		        Cs4 , v120
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03   , Gs3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        As3 
	.byte	W30
	.byte		        Ds4 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N03   , Cs4 , v092
	.byte	W03
	.byte		        As3 , v088
	.byte	W03
	.byte		N06   , Fs4 , v120
	.byte	W12
	.byte		        Gs4 
	.byte	W06
	.byte		N03   , Fs4 , v092
	.byte	W03
	.byte		        Fn4 
	.byte	W09
	.byte		        Cs4 , v120
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N24   , As3 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W06
	.byte		N03   , Cs4 , v092
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		N06   , As3 , v120
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03   , As3 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N12   , As4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W12
	.byte		N03   , Fs4 
	.byte	W18
	.byte		N06   , Gs4 
	.byte	W12
	.byte		N03   , Ds4 
	.byte	W06
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N03   , Gs4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Gn4 , v088
	.byte	W03
	.byte		        Fs4 
	.byte	W84
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song304_6 + 0x15
	.byte	FINE

@**************** Track 07 ****************************@

song304_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v-8
	.byte		VOL   , 52*song304_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-8
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12   , Cn1 , v120
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N24   , Bn4 , v024
	.byte	W12
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N24   , Bn4 , v024
	.byte	W24
	.byte		N12   , Cn1 , v120
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		N24   , Bn4 , v024
	.byte	W24
	.byte		N12   , Cn1 , v120
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W24
	.byte		        Cs1 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		        Cs1 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W24
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W18
	.byte		N03
	.byte	W03
	.byte		N06
	.byte	W09
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N18   , Cs1 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N15   , Cn1 
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N15   , Cn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N12
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cn1 , v124
	.byte	W12
	.byte		N06   , Ds1 , v120
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W18
	.byte		N12
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N72   , An2 
	.byte	W96
	.byte		VOL   , 22*song304_mvl/mxv
	.byte		PAN   , c_v-48
	.byte		N96   , Cn3 , v064
	.byte	W06
	.byte		VOL   , 30*song304_mvl/mxv
	.byte		PAN   , c_v-43
	.byte	W06
	.byte		VOL   , 38*song304_mvl/mxv
	.byte		PAN   , c_v-40
	.byte	W06
	.byte		VOL   , 45*song304_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W06
	.byte		VOL   , 51*song304_mvl/mxv
	.byte		PAN   , c_v-16
	.byte	W06
	.byte		        c_v-9
	.byte	W06
	.byte		VOL   , 56*song304_mvl/mxv
	.byte		PAN   , c_v-6
	.byte	W09
	.byte		VOL   , 63*song304_mvl/mxv
	.byte	W03
	.byte		        68*song304_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		VOL   , 74*song304_mvl/mxv
	.byte	W06
	.byte		        79*song304_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W06
	.byte		VOL   , 87*song304_mvl/mxv
	.byte		PAN   , c_v+10
	.byte	W06
	.byte		VOL   , 90*song304_mvl/mxv
	.byte		PAN   , c_v+16
	.byte	W09
	.byte		        c_v+25
	.byte	W09
	.byte		        c_v+32
	.byte	W06
	.byte		        c_v+0
	.byte		VOL   , 49*song304_mvl/mxv
	.byte		N24   , Cs2 , v060
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cs2 , v024
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , Cs2 , v016
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cs2 , v008
	.byte	W24
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song304_7 + 0xE
	.byte	FINE

@**************** Track 08 ****************************@

song304_8:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 34*song304_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N02   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v036
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v036
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v036
	.byte	W24
	.byte		N02
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song304_8 + 0x19
	.byte		N02   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v036
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v036
	.byte	W24
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v036
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W24
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v036
	.byte	W12
	.byte		N01   , Cn5 , v100
	.byte	W03
	.byte		        Cn5 , v064
	.byte	W03
	.byte		N02   , Cn5 , v080
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N01   , Cn5 , v064
	.byte	W18
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		N02   , Cn5 , v120
	.byte	W24
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W18
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte	PEND
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W12
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song304_8 + 0xC1
	.byte	PATT
	 .word	song304_8 + 0xDA
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W18
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N01   , Cn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N01   , Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W18
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N01   , Cn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W18
	.byte		N01   , Cn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v068
	.byte	W18
	.byte		        Cn5 , v072
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v116
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W18
	.byte		N01   , Cn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N01   , Cn5 , v060
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N02   , Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W18
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v084
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W18
	.byte		        Cn5 , v112
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W18
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song304_8 + 0x15
	.byte	FINE

@**************** Track 09 ****************************@

song304_9:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 34*song304_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N12   , Gn5 , v080
	.byte	W24
	.byte	W72
	.byte		N12
	.byte	W24
	.byte	W48
	.byte		N12
	.byte	W48
	.byte	W12
	.byte		N12
	.byte	W84
	.byte		        Gn5 , v120
	.byte	W96
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W24
	.byte		        Gn5 , v080
	.byte	W24
	.byte		        Gn5 , v096
	.byte	W24
	.byte		        Gn5 , v088
	.byte	W12
	.byte	W24
	.byte		        Gn5 , v080
	.byte	W72
	.byte	W12
	.byte		N12   , Gn5 , v120
	.byte	W36
	.byte		N12
	.byte	W48
	.byte	PEND
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	PATT
	 .word	song304_9 + 0x36
	.byte	W84
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte	W36
	.byte		N06
	.byte	W60
	.byte	W30
	.byte		N12
	.byte	W66
	.byte	W24
	.byte		N12
	.byte	W48
	.byte		N12
	.byte	W24
	.byte	W12
	.byte		N12
	.byte	W84
	.byte	PATT
	 .word	song304_9 + 0x36
	.byte	W48
	.byte		N12   , Gn5 , v120
	.byte	W36
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W24
	.byte		        Gn5 , v076
	.byte	W24
	.byte		        Gn5 , v100
	.byte	W24
	.byte		        Gn5 , v112
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song304_9 + 0x10
	.byte	FINE

@******************************************************@
	.align	2

song304:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song304_pri	@ Priority
	.byte	song304_rev	@ Reverb.

	.word	song304_grp

	.word	song304_0
	.word	song304_1
	.word	song304_2
	.word	song304_3
	.word	song304_4
	.word	song304_5
	.word	song304_6
	.word	song304_7
	.word	song304_8
	.word	song304_9

	.end
