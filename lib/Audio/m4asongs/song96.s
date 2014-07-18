@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song96_grp, group_5
	.equ	song96_pri, 5
	.equ	song96_rev, 178
	.equ	song96_mvl, 127
	.equ	song96_key, 0
	.equ	song96_tbs, 1
	.equ	song96_exg, 1
	.equ	song96_cmp, 1

	.text
	.global	song96
	.align	2

@**************** Track 00 ****************************@

song96_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 55
	.byte		VOICE , 123
	.byte		BENDR , 12
	.byte		VOL   , 100*song96_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N60   , Gs2 , v052
	.byte	W06
	.byte	W06
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		        c_v+1
	.byte	W04
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+3
	.byte	W02
	.byte		        c_v+5
	.byte	W02
	.byte	W01
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+8
	.byte	W03
	.byte		        c_v+9
	.byte	W02
	.byte		        c_v+11
	.byte	W02
	.byte		        c_v+13
	.byte	W02
	.byte	W01
	.byte		        c_v+15
	.byte	W02
	.byte		        c_v+17
	.byte	W03
	.byte		        c_v+19
	.byte	W02
	.byte		        c_v+24
	.byte	W02
	.byte		        c_v+27
	.byte	W02
	.byte	W01
	.byte		        c_v+30
	.byte	W02
	.byte		        c_v+38
	.byte	W03
	.byte		        c_v+43
	.byte	W02
	.byte		        c_v+56
	.byte	W02
	.byte		        c_v+63
	.byte	W02
	.byte		        c_v+0
	.byte		N72   , Gs3 
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W02
	.byte	W01
	.byte		        c_v+1
	.byte	W03
	.byte		        c_v+2
	.byte	W02
	.byte	W01
	.byte		        c_v+3
	.byte	W02
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+6
	.byte	W02
	.byte		        c_v+8
	.byte	W02
	.byte		        c_v+9
	.byte	W02
	.byte		VOL   , 98*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		VOL   , 96*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 92*song96_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		VOL   , 92*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 85*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+19
	.byte	W02
	.byte		VOL   , 81*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+24
	.byte	W01
	.byte		VOL   , 74*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+27
	.byte	W01
	.byte		VOL   , 66*song96_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+30
	.byte	W01
	.byte		VOL   , 62*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 56*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+43
	.byte	W02
	.byte		VOL   , 50*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+56
	.byte	W01
	.byte		VOL   , 42*song96_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		VOL   , 34*song96_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		        29*song96_mvl/mxv
	.byte	W02
	.byte		        25*song96_mvl/mxv
	.byte	W03
	.byte		        23*song96_mvl/mxv
	.byte	W02
	.byte		        19*song96_mvl/mxv
	.byte	W02
	.byte		        14*song96_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		        11*song96_mvl/mxv
	.byte	W02
	.byte		        5*song96_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song96:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song96_pri	@ Priority
	.byte	song96_rev	@ Reverb.

	.word	song96_grp

	.word	song96_0

	.end
