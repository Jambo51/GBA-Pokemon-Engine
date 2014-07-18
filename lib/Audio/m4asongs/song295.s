@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song295_grp, group_31
	.equ	song295_pri, 0
	.equ	song295_rev, 178
	.equ	song295_mvl, 127
	.equ	song295_key, 0
	.equ	song295_tbs, 1
	.equ	song295_exg, 1
	.equ	song295_cmp, 1

	.text
	.global	song295
	.align	2

@**************** Track 00 ****************************@

song295_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 68
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 68*song295_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , En1 , v127
	.byte	W09
	.byte		MOD   , 14
	.byte	W15
	.byte		        0
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		N24   , An1 , v064
	.byte	W48
	.byte		        En2 
	.byte	W48
	.byte		N24
	.byte	W48
	.byte		N09
	.byte	W24
	.byte		VOL   , 68*song295_mvl/mxv
	.byte		N24   , Fn1 
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		VOICE , 87
	.byte		VOL   , 45*song295_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		N24   , An2 , v127
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte		VOL   , 45*song295_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte	PEND
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		N24   , As2 , v127
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PATT
	 .word	song295_0 + 0x72
	.byte	PATT
	 .word	song295_0 + 0x50
	.byte	PATT
	 .word	song295_0 + 0x72
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N15   , En2 , v032
	.byte	W18
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		N24   , Fn2 , v127
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PATT
	 .word	song295_0 + 0x72
	.byte	PATT
	 .word	song295_0 + 0x50
	.byte		VOICE , 92
	.byte		VOL   , 45*song295_mvl/mxv
	.byte		MOD   , 0
	.byte		TIE   , An2 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W84
	.byte	W72
	.byte		EOT
	.byte		MOD   , 0
	.byte		N24   , As2 , v127
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		TIE   , An2 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W84
	.byte	W72
	.byte		EOT
	.byte		MOD   , 0
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   , En3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		        0
	.byte		N48   , En2 
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		        0
	.byte		VOL   , 45*song295_mvl/mxv
	.byte		N48   , Cn3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		        0
	.byte		VOL   , 68*song295_mvl/mxv
	.byte		N48   , Fn2 
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte	GOTO
	 .word	song295_0 + 0x2A
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 01 ****************************@

song295_1:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 79*song295_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N22   , En2 , v080
	.byte	W24
	.byte		VOICE , 80
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N24   , An2 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		N21   , An2 , v020
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		N24   , An2 , v080
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		N21   , An2 , v020
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		N24   , An2 , v080
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		N21   , An2 , v020
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		N09   , An2 , v080
	.byte	W09
	.byte		N12   , An2 , v020
	.byte	W15
	.byte		N24   , As2 , v080
	.byte	W09
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 36*song295_mvl/mxv
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte	PEND
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N24   , En3 , v080
	.byte	W09
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song295_1 + 0x58
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N24   , Fn3 , v080
	.byte	W09
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song295_1 + 0x83
	.byte	PATT
	 .word	song295_1 + 0xE5
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N24   , Gs2 , v080
	.byte	W09
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte	PATT
	 .word	song295_1 + 0xE5
	.byte	PATT
	 .word	song295_1 + 0x83
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N06   , An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v092
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		N24   , Fn3 , v080
	.byte	W09
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N06   , An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v060
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v092
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		        Fn3 , v064
	.byte	W12
	.byte		N48   , En3 , v076
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte	W06
	.byte		        79*song295_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N48   , An2 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte	W06
	.byte		        79*song295_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N48   , Fn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte	W06
	.byte		        79*song295_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N48   , As2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte	W06
	.byte		        79*song295_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song295_1 + 0x58
	.byte		MOD   , 0
	.byte		VOL   , 34*song295_mvl/mxv
	.byte	FINE

@**************** Track 02 ****************************@

song295_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song295_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte	W24
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N24   , An2 , v127
	.byte	W12
	.byte		MOD   , 9
	.byte	W12
	.byte		N21   , An2 , v020
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		N24   , An2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		N21   , An2 , v020
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		N24   , An2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		N21   , An2 , v020
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		N09   , An2 , v096
	.byte	W09
	.byte		N12   , An2 , v020
	.byte	W15
	.byte		N24   , As2 , v092
	.byte	W09
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N06   , An2 , v127
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte	PEND
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N24   , En3 , v080
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		        68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song295_2 + 0x53
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W06
	.byte		MOD   , 0
	.byte	W12
	.byte		N24   , Fn3 , v080
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		        68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte	PATT
	 .word	song295_2 + 0x53
	.byte	PATT
	 .word	song295_2 + 0x78
	.byte	PATT
	 .word	song295_2 + 0x53
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N06   , An2 , v096
	.byte	W06
	.byte		N15   , An2 , v028
	.byte	W18
	.byte		N24   , Cs3 , v080
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		        68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte	PATT
	 .word	song295_2 + 0x53
	.byte	PATT
	 .word	song295_2 + 0x78
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N06   , An2 , v127
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v092
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		N24   , En3 , v080
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W03
	.byte		        56*song295_mvl/mxv
	.byte	W03
	.byte		        68*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N06   , An2 , v127
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v060
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v092
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v064
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        An2 , v096
	.byte	W12
	.byte		        An2 , v028
	.byte	W12
	.byte		        Gn3 , v060
	.byte	W12
	.byte		        Gs3 , v064
	.byte	W12
	.byte		N48   , An3 , v076
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 64*song295_mvl/mxv
	.byte	W06
	.byte		        73*song295_mvl/mxv
	.byte	W06
	.byte		        82*song295_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N48   , An2 , v072
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 64*song295_mvl/mxv
	.byte	W06
	.byte		        73*song295_mvl/mxv
	.byte	W06
	.byte		        82*song295_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N48   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 64*song295_mvl/mxv
	.byte	W06
	.byte		        73*song295_mvl/mxv
	.byte	W06
	.byte		        82*song295_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte		N48   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 64*song295_mvl/mxv
	.byte	W06
	.byte		        73*song295_mvl/mxv
	.byte	W06
	.byte		        82*song295_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song295_2 + 0x53
	.byte		MOD   , 0
	.byte		VOL   , 38*song295_mvl/mxv
	.byte	FINE

@**************** Track 03 ****************************@

song295_3:
	.byte	KEYSH , 0
	.byte		VOICE , 58
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N24   , En2 , v092
	.byte	W24
	.byte		        An1 , v096
	.byte	W06
	.byte		VOL   , 79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 67*song295_mvl/mxv
	.byte	W06
	.byte		        56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte	W18
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		N24   , An1 , v064
	.byte	W06
	.byte		VOL   , 79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W06
	.byte		        56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte	W18
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		N24
	.byte	W06
	.byte		VOL   , 79*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 8
	.byte		VOL   , 68*song295_mvl/mxv
	.byte	W06
	.byte		        56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte	W18
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		N09   , An1 , v096
	.byte	W24
	.byte		VOL   , 33*song295_mvl/mxv
	.byte		N24   , Fn1 
	.byte	W03
	.byte		VOL   , 38*song295_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte		VOL   , 50*song295_mvl/mxv
	.byte	W03
	.byte		        61*song295_mvl/mxv
	.byte	W03
	.byte		        67*song295_mvl/mxv
	.byte	W03
	.byte		        90*song295_mvl/mxv
	.byte	W09
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte	W72
	.byte		VOL   , 21*song295_mvl/mxv
	.byte	W06
	.byte		        27*song295_mvl/mxv
	.byte	W03
	.byte		        34*song295_mvl/mxv
	.byte	W03
	.byte		        45*song295_mvl/mxv
	.byte	W03
	.byte		        79*song295_mvl/mxv
	.byte	W03
	.byte		        90*song295_mvl/mxv
	.byte	W06
	.byte	PEND
	.byte		        90*song295_mvl/mxv
	.byte	W96
	.byte	PATT
	 .word	song295_3 + 0x68
	.byte		VOL   , 90*song295_mvl/mxv
	.byte	W96
	.byte	PATT
	 .word	song295_3 + 0x68
	.byte		VOL   , 90*song295_mvl/mxv
	.byte	W96
	.byte	PATT
	 .word	song295_3 + 0x68
	.byte		VOL   , 90*song295_mvl/mxv
	.byte	W96
	.byte	PATT
	 .word	song295_3 + 0x68
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song295_3 + 0x63
	.byte	FINE

@**************** Track 04 ****************************@

song295_4:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N24   , En3 , v120
	.byte	W24
	.byte		VOICE , 14
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		N96   , An3 , v120
	.byte	W24
	.byte		VOL   , 79*song295_mvl/mxv
	.byte	W12
	.byte		        68*song295_mvl/mxv
	.byte	W12
	.byte		        56*song295_mvl/mxv
	.byte	W12
	.byte		        45*song295_mvl/mxv
	.byte	W12
	.byte		        34*song295_mvl/mxv
	.byte	W12
	.byte		        22*song295_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte	W48
	.byte		        90*song295_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v-33
	.byte		N24   , As2 
	.byte	W24
	.byte	PATT
	 .word	song295_4 + 0x10
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		VOICE , 60
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W12
	.byte		N03   , Cn3 , v076
	.byte	W03
	.byte		        Cs3 , v084
	.byte	W03
	.byte		        Dn3 , v096
	.byte	W03
	.byte		        Ds3 , v104
	.byte	W03
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		TIE   , En3 , v120
	.byte	W12
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W06
	.byte		        38*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        27*song295_mvl/mxv
	.byte	W03
	.byte		        22*song295_mvl/mxv
	.byte	W60
	.byte	W03
	.byte	W48
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		        56*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte	W06
	.byte		EOT
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		N18   , Cn3 
	.byte	W18
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		N03   , Dn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		VOL   , 56*song295_mvl/mxv
	.byte		TIE   , Fn3 
	.byte	W12
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W06
	.byte		        38*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        27*song295_mvl/mxv
	.byte	W03
	.byte		        22*song295_mvl/mxv
	.byte	W60
	.byte	W03
	.byte	W48
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		        56*song295_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte		VOL   , 68*song295_mvl/mxv
	.byte		N06   , Gn4 , v064
	.byte	W12
	.byte		        Gs4 , v080
	.byte	W12
	.byte		VOICE , 14
	.byte		VOL   , 68*song295_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N12   , An4 , v096
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N48   , An4 
	.byte	W24
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        22*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N12   , Gn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , An3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N48   , As4 
	.byte	W24
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        22*song295_mvl/mxv
	.byte	W06
	.byte	GOTO
	 .word	song295_4 + 0x30
	.byte	FINE

@**************** Track 05 ****************************@

song295_5:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		PAN   , c_v-26
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		N18   , An1 , v120
	.byte	W96
	.byte	W72
	.byte		N15   , Fn1 
	.byte	W24
	.byte		N09   , An1 , v127
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        An1 , v096
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte	PEND
	.byte		        An1 , v127
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        An1 , v096
	.byte	W24
	.byte		        An1 , v064
	.byte	W12
	.byte		N03   , En1 , v112
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		N09   , An1 , v120
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        An1 , v096
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte	PEND
	.byte		N09   , An1 , v127
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        An1 , v096
	.byte	W24
	.byte		N03   , As1 , v084
	.byte	W03
	.byte		        As1 , v092
	.byte	W03
	.byte		        As1 , v100
	.byte	W03
	.byte		        As1 , v104
	.byte	W03
	.byte		        As1 , v108
	.byte	W03
	.byte		        As1 , v112
	.byte	W03
	.byte		        As1 , v116
	.byte	W03
	.byte		        As1 , v124
	.byte	W03
	.byte	PEND
	.byte		N09   , An1 , v127
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        An1 , v096
	.byte	W24
	.byte		        An1 , v064
	.byte	W12
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		N09   , An1 , v127
	.byte	W12
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N09   , An1 , v120
	.byte	W12
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		N09   , An1 , v096
	.byte	W24
	.byte		        An1 , v064
	.byte	W12
	.byte		N03   , En1 , v120
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte	PATT
	 .word	song295_5 + 0x39
	.byte	PATT
	 .word	song295_5 + 0x47
	.byte	PATT
	 .word	song295_5 + 0x18
	.byte		N09   , An1 , v127
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        An1 , v096
	.byte	W24
	.byte		        An1 , v064
	.byte	W12
	.byte		N03   , En1 , v120
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte	PATT
	 .word	song295_5 + 0x39
	.byte	PATT
	 .word	song295_5 + 0x47
	.byte	PATT
	 .word	song295_5 + 0x18
	.byte		N09   , An1 , v127
	.byte	W24
	.byte		        An1 , v064
	.byte	W24
	.byte		        An1 , v096
	.byte	W24
	.byte		        An1 , v064
	.byte	W12
	.byte		N03   , En1 , v120
	.byte		N06   , En2 
	.byte	W06
	.byte		N03   , En1 , v096
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N48   , An2 
	.byte	W12
	.byte		VOL   , 79*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte	W06
	.byte		        56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        22*song295_mvl/mxv
	.byte	W06
	.byte		        90*song295_mvl/mxv
	.byte		PAN   , c_v-44
	.byte		N48   , An1 , v127
	.byte	W48
	.byte		VOL   , 90*song295_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N48   , Fn2 , v120
	.byte	W12
	.byte		VOL   , 79*song295_mvl/mxv
	.byte	W06
	.byte		        68*song295_mvl/mxv
	.byte	W06
	.byte		        56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        22*song295_mvl/mxv
	.byte	W06
	.byte		        90*song295_mvl/mxv
	.byte		PAN   , c_v-42
	.byte		N24   , As1 , v127
	.byte	W24
	.byte		PAN   , c_v-26
	.byte		N03   , As1 , v112
	.byte	W03
	.byte		        As1 , v092
	.byte	W03
	.byte		        As1 , v100
	.byte	W03
	.byte		        As1 , v104
	.byte	W03
	.byte		        As1 , v108
	.byte	W03
	.byte		        As1 , v112
	.byte	W03
	.byte		        As1 , v116
	.byte	W03
	.byte		        As1 , v124
	.byte	W03
	.byte	GOTO
	 .word	song295_5 + 0x18
	.byte	FINE

@**************** Track 06 ****************************@

song295_6:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song295_mvl/mxv
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		        71*song295_mvl/mxv
	.byte		N24   , As2 , v112
	.byte	W24
	.byte		VOICE , 48
	.byte		MOD   , 1
	.byte		VOL   , 45*song295_mvl/mxv
	.byte		N09   , An3 , v104
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		N24   , En4 , v104
	.byte	W06
	.byte		VOL   , 51*song295_mvl/mxv
	.byte	W06
	.byte		        60*song295_mvl/mxv
	.byte	W06
	.byte		        71*song295_mvl/mxv
	.byte	W06
	.byte		        44*song295_mvl/mxv
	.byte		N09   , An3 , v108
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v060
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v092
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v060
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		N24   , Fn4 , v104
	.byte	W06
	.byte		VOL   , 51*song295_mvl/mxv
	.byte	W06
	.byte		        60*song295_mvl/mxv
	.byte	W06
	.byte		        71*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte		N09   , An3 
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		N24   , En4 , v104
	.byte	W06
	.byte		VOL   , 51*song295_mvl/mxv
	.byte	W06
	.byte		        60*song295_mvl/mxv
	.byte	W06
	.byte		        71*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte		N09   , An3 
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		N24   , Cs4 , v104
	.byte	W06
	.byte		VOL   , 51*song295_mvl/mxv
	.byte	W06
	.byte		        60*song295_mvl/mxv
	.byte	W06
	.byte		        71*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte		N09   , An3 
	.byte	W12
	.byte		        An3 , v032
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v028
	.byte	W12
	.byte		        An3 , v096
	.byte	W12
	.byte		        An3 , v024
	.byte	W12
	.byte		N12   , En4 , v096
	.byte	W12
	.byte		N03   , Cn3 , v064
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Dn3 , v068
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		VOL   , 45*song295_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , En3 , v064
	.byte	W12
	.byte		        En3 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Cn3 , v064
	.byte	W06
	.byte		VOL   , 51*song295_mvl/mxv
	.byte	W06
	.byte		        60*song295_mvl/mxv
	.byte	W06
	.byte		        71*song295_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		VOL   , 44*song295_mvl/mxv
	.byte		N09   , Fn3 , v068
	.byte	W12
	.byte		        Fn3 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N09   , Fn3 , v064
	.byte	W12
	.byte		        Fn3 , v052
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , Fn3 , v064
	.byte	W12
	.byte		        Fn3 , v052
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N09   , Fn3 , v064
	.byte	W12
	.byte		        Fn3 , v052
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , Fn3 , v064
	.byte	W12
	.byte		        Fn3 , v056
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N09   , Fn3 , v064
	.byte	W12
	.byte		        Fn3 , v052
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , Fn3 , v064
	.byte	W12
	.byte		        Fn3 , v060
	.byte	W12
	.byte		VOICE , 60
	.byte		VOL   , 60*song295_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Gn4 , v096
	.byte	W12
	.byte		        Gs4 , v104
	.byte	W12
	.byte		PAN   , c_v-14
	.byte		N48   , An4 , v112
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        44*song295_mvl/mxv
	.byte	W06
	.byte		        33*song295_mvl/mxv
	.byte	W06
	.byte		        22*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 62*song295_mvl/mxv
	.byte		N48   , An3 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        45*song295_mvl/mxv
	.byte	W06
	.byte		        35*song295_mvl/mxv
	.byte	W06
	.byte		        21*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 60*song295_mvl/mxv
	.byte		N48   , Gn4 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        44*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W06
	.byte		        21*song295_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 60*song295_mvl/mxv
	.byte		N48   , As4 , v112
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 56*song295_mvl/mxv
	.byte	W06
	.byte		        44*song295_mvl/mxv
	.byte	W06
	.byte		        34*song295_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song295_6 + 0x19
	.byte		VOL   , 22*song295_mvl/mxv
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 07 ****************************@

song295_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 59*song295_mvl/mxv
	.byte	W24
	.byte		N48   , An2 , v120
	.byte	W48
	.byte		        Fs1 , v100
	.byte	W48
	.byte		N48
	.byte	W48
	.byte		N24
	.byte	W24
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v032
	.byte	W03
	.byte		        Fs1 , v040
	.byte	W03
	.byte		        Fs1 , v052
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		        Fs1 , v088
	.byte	W03
	.byte		        Fs1 , v104
	.byte	W03
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v096
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		N03   , Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		N03   , Fs1 , v096
	.byte	W03
	.byte		        Fs1 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		        Fs1 , v104
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Fs1 , v112
	.byte	W06
	.byte		        Fs1 , v096
	.byte	W06
	.byte		N03   , Fs1 , v072
	.byte	W03
	.byte		        Fs1 , v028
	.byte	W03
	.byte		        Fs1 , v072
	.byte	W03
	.byte		        Fs1 , v032
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fs1 , v088
	.byte	W06
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		N03   , Fs1 , v100
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v100
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		        Fs1 , v096
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v120
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v112
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v032
	.byte	W03
	.byte		        Fs1 , v092
	.byte	W03
	.byte		        Fs1 , v032
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		        Fs1 , v088
	.byte	W03
	.byte		        Fs1 , v092
	.byte	W03
	.byte		N12   , Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v108
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v104
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		N03   , Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		        Fs1 , v104
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N12   , Fs1 , v112
	.byte		N24   , Cs2 , v064
	.byte	W12
	.byte		N06   , Fs1 , v108
	.byte	W06
	.byte		        Fs1 , v104
	.byte	W06
	.byte		        Fs1 , v048
	.byte		N21   , En2 , v064
	.byte	W06
	.byte		N06   , Fs1 , v108
	.byte	W06
	.byte		        Fs1 , v048
	.byte	W06
	.byte		        Fs1 , v108
	.byte	W06
	.byte		N12   , Fs1 , v064
	.byte		N24   , Bn2 , v120
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		        Fs1 , v052
	.byte	W06
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fs1 , v048
	.byte	W06
	.byte		N12   , Fs1 , v104
	.byte	W12
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v088
	.byte	W12
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v100
	.byte	W12
	.byte		N03   , Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v124
	.byte	W12
	.byte		N06   , Fs1 , v112
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v060
	.byte	W12
	.byte		N03   , Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v116
	.byte	W12
	.byte		N06   , Fs1 , v112
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v108
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		N06   , Fs1 , v080
	.byte	W06
	.byte		        Fs1 , v064
	.byte	W06
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v040
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v120
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		        Fs1 , v112
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		N03   , Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v032
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v108
	.byte	W03
	.byte		        Fs1 , v032
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v104
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		        Fs1 , v112
	.byte	W06
	.byte		        Fs1 , v044
	.byte	W06
	.byte		        Fs1 , v112
	.byte	W06
	.byte		N12   , Fs1 , v096
	.byte	W12
	.byte		N03   , Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v036
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v108
	.byte	W12
	.byte		N06   , Fs1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v096
	.byte	W12
	.byte		N03   , Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Fs1 , v116
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v112
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		        Fs1 , v104
	.byte	W12
	.byte		        Fs1 , v048
	.byte	W12
	.byte		N03   , Fs1 , v028
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v056
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		        Fs1 , v088
	.byte	W03
	.byte		        Fs1 , v092
	.byte	W03
	.byte		N36   , An2 , v120
	.byte	W36
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N48   , Cs2 
	.byte	W48
	.byte		N03   , Fs1 , v127
	.byte	W03
	.byte		        Fs1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v052
	.byte	W03
	.byte		        Fs1 , v056
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fs1 , v060
	.byte	W03
	.byte		        Fs1 , v064
	.byte	W03
	.byte		        Fs1 , v068
	.byte	W03
	.byte		        Fs1 , v072
	.byte	W03
	.byte		        Fs1 , v076
	.byte	W03
	.byte		        Fs1 , v080
	.byte	W03
	.byte		        Fs1 , v104
	.byte	W03
	.byte		        Fs1 , v112
	.byte	W03
	.byte		        Fs1 , v124
	.byte	W03
	.byte	GOTO
	 .word	song295_7 + 0x29
	.byte	FINE

@******************************************************@
	.align	2

song295:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song295_pri	@ Priority
	.byte	song295_rev	@ Reverb.

	.word	song295_grp

	.word	song295_0
	.word	song295_1
	.word	song295_2
	.word	song295_3
	.word	song295_4
	.word	song295_5
	.word	song295_6
	.word	song295_7

	.end
