@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song289_grp, group_25
	.equ	song289_pri, 0
	.equ	song289_rev, 178
	.equ	song289_mvl, 127
	.equ	song289_key, 0
	.equ	song289_tbs, 1
	.equ	song289_exg, 1
	.equ	song289_cmp, 1

	.section .rodata
	.global	song289
	.align	2

@**************** Track 00 ****************************@

song289_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 66
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 28*song289_mvl/mxv
	.byte		N03   , Fn5 , v064
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Fn5 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cs4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn4 
	.byte	W06
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W18
	.byte		PAN   , c_v-1
	.byte		N03   , Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Fn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W12
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 , v076
	.byte	W18
	.byte		PAN   , c_v+0
	.byte		N03   , Fn5 , v064
	.byte	W06
	.byte		VOL   , 42*song289_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Cs4 
	.byte	W06
	.byte		VOL   , 34*song289_mvl/mxv
	.byte	W06
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		VOL   , 28*song289_mvl/mxv
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn6 
	.byte	W18
	.byte		PAN   , c_v-1
	.byte		N03   , Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		N06   , Cn6 
	.byte	W06
	.byte	W06
	.byte		        Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v032
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		VOL   , 42*song289_mvl/mxv
	.byte		N03   , Cn5 , v032
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn6 
	.byte	W06
	.byte	W12
	.byte		        Fn5 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cs4 
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W06
	.byte		VOL   , 34*song289_mvl/mxv
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		VOL   , 28*song289_mvl/mxv
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cn6 
	.byte	W12
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v052
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cn6 
	.byte	W78
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		VOL   , 56*song289_mvl/mxv
	.byte	W06
	.byte		N03   , Cs4 , v072
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N06   , Cn6 , v064
	.byte	W06
	.byte		N18   , Cn6 , v120
	.byte	W18
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N03   , Fn5 , v064
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N03   , Cs4 , v064
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		VOL   , 28*song289_mvl/mxv
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W12
	.byte		PAN   , c_v-1
	.byte	W06
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N03   , Cs4 
	.byte	W06
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N03   , Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W18
	.byte		PAN   , c_v+0
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Fn4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W18
	.byte		PAN   , c_v-1
	.byte		N03   , Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W06
	.byte		VOL   , 42*song289_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N03   , Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Cn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		VOL   , 34*song289_mvl/mxv
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W12
	.byte		PAN   , c_v+0
	.byte	W06
	.byte		N06   , Cn6 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W06
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N06   , Cn6 , v064
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Cs4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn4 
	.byte	W12
	.byte		VOL   , 28*song289_mvl/mxv
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        Cn6 
	.byte	W18
	.byte		PAN   , c_v-1
	.byte		N03   , Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cs4 , v064
	.byte	W18
	.byte		N06   , Cn6 
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N06   , Fn5 
	.byte	W12
	.byte		        Cs4 
	.byte	W06
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W06
	.byte		PAN   , c_v-1
	.byte		N03   , Cn6 
	.byte	W18
	.byte		        Fn5 
	.byte	W06
	.byte		        Fn5 , v048
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cs4 , v064
	.byte	W18
	.byte		PAN   , c_v-1
	.byte		VOL   , 41*song289_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , Gn3 
	.byte	W24
	.byte		PAN   , c_v-1
	.byte		N24   , Ds4 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24   , Dn4 
	.byte	W24
	.byte		PAN   , c_v-1
	.byte		N24   , Bn3 
	.byte	W18
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W06
	.byte		PAN   , c_v-1
	.byte	W18
	.byte		N24   , Dn4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		VOL   , 41*song289_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W06
	.byte		PAN   , c_v-1
	.byte	W18
	.byte		N24   , Ds4 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , Dn4 
	.byte	W24
	.byte		PAN   , c_v-1
	.byte		N24   , Bn3 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Dn4 , v120
	.byte	W06
	.byte		PAN   , c_v-1
	.byte	W18
	.byte		        c_v+63
	.byte		N24   , Fn4 , v064
	.byte	W24
	.byte	GOTO
	 .word	song289_0 + 0x122
	.byte		VOL   , 34*song289_mvl/mxv
	.byte	FINE

@**************** Track 01 ****************************@

song289_1:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , As3 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , As3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn3 , v032
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-1
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn3 , v032
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-1
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte	W12
	.byte		        c_v-64
	.byte	W12
	.byte		        c_v-1
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn3 , v032
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0x44
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0xA6
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0x44
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0xA6
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0xA6
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte		PAN   , c_v-1
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v-1
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0x44
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0xA6
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0x44
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0xA6
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0x44
	.byte	PATT
	 .word	song289_1 + 0x75
	.byte	PATT
	 .word	song289_1 + 0xA6
	.byte	GOTO
	 .word	song289_1 + 0x16
	.byte		PAN   , c_v-1
	.byte	FINE

@**************** Track 02 ****************************@

song289_2:
	.byte	KEYSH , 0
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 63*song289_mvl/mxv
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte	PEND
	.byte		N12   , Cs1 , v092
	.byte	W12
	.byte		        Cs1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte	PEND
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte	PEND
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte	PEND
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		N24   , Fn1 , v092
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , Cs1 , v092
	.byte	W12
	.byte		        Cs1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte	PEND
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		N24   , En1 , v092
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		VOL   , 63*song289_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte	PATT
	 .word	song289_2 + 0x25
	.byte	PATT
	 .word	song289_2 + 0x3F
	.byte	PATT
	 .word	song289_2 + 0x59
	.byte	PATT
	 .word	song289_2 + 0x73
	.byte	PATT
	 .word	song289_2 + 0x8D
	.byte	PATT
	 .word	song289_2 + 0xB3
	.byte	PATT
	 .word	song289_2 + 0xD1
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song289_2 + 0x25
	.byte	PATT
	 .word	song289_2 + 0x3F
	.byte	PATT
	 .word	song289_2 + 0x59
	.byte	PATT
	 .word	song289_2 + 0x73
	.byte	PATT
	 .word	song289_2 + 0x8D
	.byte	PATT
	 .word	song289_2 + 0xB3
	.byte	PATT
	 .word	song289_2 + 0xD1
	.byte	PATT
	 .word	song289_2 + 0x139
	.byte	PATT
	 .word	song289_2 + 0x25
	.byte	PATT
	 .word	song289_2 + 0x3F
	.byte	PATT
	 .word	song289_2 + 0x59
	.byte	PATT
	 .word	song289_2 + 0x73
	.byte	PATT
	 .word	song289_2 + 0x8D
	.byte	PATT
	 .word	song289_2 + 0xB3
	.byte	PATT
	 .word	song289_2 + 0xD1
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N96   , Fn1 , v092
	.byte	W48
	.byte		VOL   , 79*song289_mvl/mxv
	.byte	W48
	.byte		        63*song289_mvl/mxv
	.byte		N96   , En1 
	.byte	W48
	.byte		VOL   , 79*song289_mvl/mxv
	.byte	W48
	.byte		        64*song289_mvl/mxv
	.byte		N96   , Gs1 
	.byte	W48
	.byte		VOL   , 79*song289_mvl/mxv
	.byte	W48
	.byte		        63*song289_mvl/mxv
	.byte		N48   , An1 
	.byte	W48
	.byte		VOL   , 79*song289_mvl/mxv
	.byte		N48   , En1 
	.byte	W12
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-29
	.byte	W03
	.byte		        c_v-33
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-43
	.byte	W03
	.byte		        c_v-46
	.byte	W03
	.byte		        c_v-48
	.byte	W03
	.byte		        c_v-53
	.byte	W03
	.byte	GOTO
	 .word	song289_2 + 0xF7
	.byte	FINE

@**************** Track 03 ****************************@

song289_3:
	.byte	KEYSH , 0
	.byte		VOICE , 39
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Cs1 , v092
	.byte	W12
	.byte		        Cs1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N24   , Fn1 , v092
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , Cs1 , v092
	.byte	W12
	.byte		        Cs1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		VOL   , 67*song289_mvl/mxv
	.byte		N12   , En1 , v020
	.byte	W12
	.byte	PEND
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N24   , En1 , v092
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte	PEND
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		VOL   , 67*song289_mvl/mxv
	.byte		N12   , Fn1 , v020
	.byte	W12
	.byte	PEND
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N12   , Fn1 , v020
	.byte	W12
	.byte	PEND
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Cs1 , v092
	.byte	W12
	.byte		        Cs1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		VOL   , 67*song289_mvl/mxv
	.byte		N12   , En1 , v020
	.byte	W12
	.byte	PEND
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		        En1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , En1 , v092
	.byte	W12
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N12   , En1 , v020
	.byte	W12
	.byte	PEND
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		VOL   , 67*song289_mvl/mxv
	.byte		N12   , Fn1 , v020
	.byte	W12
	.byte	PEND
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		        Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 50*song289_mvl/mxv
	.byte		N12   , Fn1 , v092
	.byte	W12
	.byte		        Fn1 , v020
	.byte	W12
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N24   , Fn1 , v092
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song289_3 + 0xDB
	.byte	PATT
	 .word	song289_3 + 0x104
	.byte	PATT
	 .word	song289_3 + 0x134
	.byte	PATT
	 .word	song289_3 + 0x15D
	.byte	PATT
	 .word	song289_3 + 0x182
	.byte	PATT
	 .word	song289_3 + 0x1A7
	.byte	PATT
	 .word	song289_3 + 0x1CC
	.byte	PATT
	 .word	song289_3 + 0x1F1
	.byte	PATT
	 .word	song289_3 + 0xDB
	.byte	PATT
	 .word	song289_3 + 0x104
	.byte	PATT
	 .word	song289_3 + 0x134
	.byte	PATT
	 .word	song289_3 + 0x15D
	.byte	PATT
	 .word	song289_3 + 0x182
	.byte	PATT
	 .word	song289_3 + 0x1A7
	.byte	PATT
	 .word	song289_3 + 0x1CC
	.byte	PATT
	 .word	song289_3 + 0x1F1
	.byte	PATT
	 .word	song289_3 + 0xDB
	.byte	PATT
	 .word	song289_3 + 0x104
	.byte		MOD   , 0
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N96   , Fn1 , v092
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		VOL   , 68*song289_mvl/mxv
	.byte	W24
	.byte		        79*song289_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N96   , En1 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		VOL   , 68*song289_mvl/mxv
	.byte	W24
	.byte		        79*song289_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 65*song289_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N96   , Gs1 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		VOL   , 72*song289_mvl/mxv
	.byte	W24
	.byte		        82*song289_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , An1 , v104
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		VOL   , 77*song289_mvl/mxv
	.byte		N48   , Fn1 , v108
	.byte	W12
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		VOL   , 90*song289_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W03
	.byte		        c_v-29
	.byte	W03
	.byte		        c_v-33
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-43
	.byte	W03
	.byte		        c_v-46
	.byte	W03
	.byte		        c_v-48
	.byte	W03
	.byte		        c_v-53
	.byte	W03
	.byte	GOTO
	 .word	song289_3 + 0x134
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 04 ****************************@

song289_4:
	.byte	KEYSH , 0
	.byte		VOICE , 13
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 28*song289_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 13
	.byte		PAN   , c_v-32
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        En3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		        Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N12   , As3 , v096
	.byte	W12
	.byte		        As3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        En3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		        Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W24
	.byte		        c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        En3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		        Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song289_4 + 0x3C
	.byte	PATT
	 .word	song289_4 + 0x65
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W24
	.byte		        c_v+32
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N12   , Bn3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_4 + 0xAA
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , As3 , v096
	.byte	W12
	.byte		        As3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_4 + 0xAA
	.byte		PAN   , c_v-32
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W24
	.byte		        c_v+32
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        En3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		        Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W24
	.byte		        c_v+32
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_4 + 0x65
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        En3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_4 + 0xAA
	.byte	PATT
	 .word	song289_4 + 0x3C
	.byte	PATT
	 .word	song289_4 + 0x65
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W24
	.byte		        c_v+32
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_4 + 0x65
	.byte	PATT
	 .word	song289_4 + 0x3C
	.byte		PAN   , c_v-32
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        En3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		        Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_4 + 0x8C
	.byte		VOICE , 14
	.byte		PAN   , c_v-32
	.byte		N12   , Fn3 , v096
	.byte	W12
	.byte		        Fn3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En3 , v096
	.byte	W12
	.byte		        En3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cn4 , v096
	.byte	W12
	.byte		        Cn4 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		VOL   , 48*song289_mvl/mxv
	.byte		N12   , As3 , v096
	.byte	W12
	.byte		        As3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		VOL   , 60*song289_mvl/mxv
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte	PATT
	 .word	song289_4 + 0xAA
	.byte		PAN   , c_v-32
	.byte		N12   , Gs3 , v096
	.byte	W12
	.byte		        Gs3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Bn3 , v096
	.byte	W12
	.byte		        Bn3 , v032
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn4 , v104
	.byte	W12
	.byte		        Dn4 , v044
	.byte	W12
	.byte	GOTO
	 .word	song289_4 + 0x14
	.byte	FINE

@**************** Track 05 ****************************@

song289_5:
	.byte	KEYSH , 0
	.byte		VOICE , 58
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		MOD   , 1
	.byte		VOL   , 22*song289_mvl/mxv
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
	.byte		PAN   , c_v+16
	.byte		VOL   , 41*song289_mvl/mxv
	.byte		N24   , Fn4 , v096
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N24   , En4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 38*song289_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 31*song289_mvl/mxv
	.byte		N24   , Bn4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 19*song289_mvl/mxv
	.byte		N24   , Gs4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 25*song289_mvl/mxv
	.byte		N24   , An4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 32*song289_mvl/mxv
	.byte		N24   , As4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 42*song289_mvl/mxv
	.byte		N24   , Bn4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 38*song289_mvl/mxv
	.byte		N24   , Fn4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 33*song289_mvl/mxv
	.byte		N24   , En4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 37*song289_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 7
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 31*song289_mvl/mxv
	.byte		N24   , Bn4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 7
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 37*song289_mvl/mxv
	.byte		N24   , Gs4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 8
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		MOD   , 0
	.byte		VOL   , 37*song289_mvl/mxv
	.byte		N24   , An4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 7
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N24   , Bn4 , v120
	.byte	W12
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		        c_v+16
	.byte		MOD   , 0
	.byte		N24   , Dn5 , v064
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		MOD   , 7
	.byte	W12
	.byte	GOTO
	 .word	song289_5 + 0x16
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 06 ****************************@

song289_6:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 19*song289_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03   , Fn4 , v120
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 , v064
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte		N03   , Fn4 , v080
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 , v088
	.byte	W06
	.byte		        Fn4 , v096
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 , v100
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 , v104
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 , v108
	.byte	W06
	.byte		        Fn4 , v112
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 , v116
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 , v120
	.byte	W06
	.byte		        Gs4 , v124
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Gn4 , v127
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Fs4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Fn4 
	.byte	W06
	.byte	PEND
	.byte		N03   , En4 , v120
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , En4 , v064
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte		N03   , En4 , v080
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , En4 , v088
	.byte	W06
	.byte		        En4 , v096
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , En4 , v100
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , En4 , v104
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , En4 , v108
	.byte	W06
	.byte		        En4 , v112
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , En4 , v116
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , En4 , v120
	.byte	W06
	.byte		        Cs4 , v124
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Dn4 , v127
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Ds4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , En4 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song289_6 + 0x19
	.byte	PATT
	 .word	song289_6 + 0x56
	.byte	PATT
	 .word	song289_6 + 0xA4
	.byte	PATT
	 .word	song289_6 + 0xE1
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
	.byte	PATT
	 .word	song289_6 + 0x19
	.byte	PATT
	 .word	song289_6 + 0x56
	.byte	PATT
	 .word	song289_6 + 0xA4
	.byte	PATT
	 .word	song289_6 + 0xE1
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song289_6 + 0x19
	.byte	FINE

@**************** Track 07 ****************************@

song289_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , En3 , v080
	.byte	W12
	.byte		        Dn3 , v048
	.byte	W12
	.byte		        Dn3 , v064
	.byte	W36
	.byte		        En3 , v080
	.byte	W12
	.byte		        Dn3 , v048
	.byte	W12
	.byte		        Dn3 , v068
	.byte	W12
	.byte	W96
	.byte		        En3 , v084
	.byte	W12
	.byte		        Dn3 , v052
	.byte	W12
	.byte		        Dn3 , v068
	.byte	W36
	.byte		        En3 , v080
	.byte	W12
	.byte		        Dn3 , v048
	.byte	W12
	.byte		        Dn3 , v068
	.byte	W12
	.byte		N24   , Cn1 , v032
	.byte	W24
	.byte		        Cn1 , v060
	.byte	W24
	.byte		        Cn1 , v096
	.byte	W24
	.byte		N12   , Dn1 , v076
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N24   , Cn1 , v032
	.byte	W24
	.byte		        Cn1 , v064
	.byte	W24
	.byte		        Cn1 , v096
	.byte	W24
	.byte		N12   , Dn1 , v080
	.byte	W24
	.byte	PEND
	.byte		VOL   , 56*song289_mvl/mxv
	.byte		N12   , En3 , v080
	.byte	W12
	.byte		        Dn3 , v048
	.byte	W12
	.byte		        Dn3 , v068
	.byte	W36
	.byte		        En3 , v080
	.byte	W12
	.byte		        Dn3 , v048
	.byte	W12
	.byte		        Dn3 , v068
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
	.byte	PATT
	 .word	song289_7 + 0x3F
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	song289_7 + 0x3F
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 68*song289_mvl/mxv
	.byte		N42   , An2 , v120
	.byte	W42
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		N36   , Cn1 , v120
	.byte	W36
	.byte		N12
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        Dn1 , v044
	.byte	W12
	.byte		        Dn1 , v028
	.byte	W12
	.byte		N36   , Cs2 , v120
	.byte	W36
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        Dn1 , v048
	.byte	W12
	.byte		        Dn1 , v032
	.byte	W12
	.byte		N24   , Cn1 , v120
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 , v092
	.byte	W12
	.byte		        Dn1 , v124
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		        Dn1 , v040
	.byte	W12
	.byte	GOTO
	 .word	song289_7 + 0x4E
	.byte	FINE

@**************** Track 08 ****************************@

song289_8:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song289_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N06   , Cn4 , v127
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06   , Cn4 , v127
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N06
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song289_8 + 0x21
	.byte	FINE

@**************** Track 09 ****************************@

song289_9:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 28*song289_mvl/mxv
	.byte	W96
	.byte	W96
	.byte		VOL   , 22*song289_mvl/mxv
	.byte		N01   , Gn5 , v127
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		VOL   , 28*song289_mvl/mxv
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N03
	.byte	W12
	.byte	PEND
	.byte		N01   , Gn5 , v127
	.byte	W06
	.byte		N01
	.byte	W90
	.byte	PEND
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte		VOL   , 22*song289_mvl/mxv
	.byte	W48
	.byte		        28*song289_mvl/mxv
	.byte	W24
	.byte		        34*song289_mvl/mxv
	.byte	W24
	.byte	W96
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte	PATT
	 .word	song289_9 + 0xC
	.byte	PATT
	 .word	song289_9 + 0x2D
	.byte		N01   , Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		VOL   , 39*song289_mvl/mxv
	.byte		N01   , Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N24   , Gn5 , v112
	.byte	W24
	.byte		VOL   , 34*song289_mvl/mxv
	.byte		N01   , Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v060
	.byte	W12
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v096
	.byte	W06
	.byte		        Gn5 , v092
	.byte	W06
	.byte		        Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		VOL   , 38*song289_mvl/mxv
	.byte		N01   , Gn5 , v127
	.byte	W12
	.byte		        Gn5 , v096
	.byte	W12
	.byte		VOL   , 45*song289_mvl/mxv
	.byte		N24   , Gn5 , v112
	.byte	W24
	.byte	GOTO
	 .word	song289_9 + 0x48
	.byte	FINE

@******************************************************@
	.align	2

song289:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song289_pri	@ Priority
	.byte	song289_rev	@ Reverb.

	.word	song289_grp

	.word	song289_0
	.word	song289_1
	.word	song289_2
	.word	song289_3
	.word	song289_4
	.word	song289_5
	.word	song289_6
	.word	song289_7
	.word	song289_8
	.word	song289_9

	.end
