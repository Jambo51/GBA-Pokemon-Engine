@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song271_grp, group_0
	.equ	song271_pri, 5
	.equ	song271_rev, 178
	.equ	song271_mvl, 127
	.equ	song271_key, 0
	.equ	song271_tbs, 1
	.equ	song271_exg, 1
	.equ	song271_cmp, 1

	.text
	.global	song271
	.align	2

@**************** Track 00 ****************************@

song271_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 90
	.byte		VOL   , 90*song271_mvl/mxv
	.byte	W09
	.byte		VOICE , 73
	.byte		PAN   , c_v+1
	.byte		N06   , Dn3 , v088
	.byte	W06
	.byte		        Dn4 
	.byte	W09
	.byte		N03   , As4 
	.byte	W03
	.byte		N09   , Bn4 
	.byte	W09
	.byte		        Bn3 
	.byte	W12
	.byte		N03   , Gs4 
	.byte	W03
	.byte		N09   , An4 
	.byte	W09
	.byte		        An3 
	.byte	W12
	.byte		N03   , Fn4 
	.byte	W03
	.byte		N09   , Fs4 
	.byte	W09
	.byte		        Fs3 
	.byte	W12
	.byte		N03   , Cs4 
	.byte	W03
	.byte		N60   , Dn4 
	.byte	W09
	.byte		MOD   , 32
	.byte	W21
	.byte		VOL   , 85*song271_mvl/mxv
	.byte	W06
	.byte		        79*song271_mvl/mxv
	.byte	W06
	.byte		        73*song271_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        62*song271_mvl/mxv
	.byte	W03
	.byte		        45*song271_mvl/mxv
	.byte	W03
	.byte		        31*song271_mvl/mxv
	.byte	W03
	.byte		        14*song271_mvl/mxv
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song271_1:
	.byte	KEYSH , 0
	.byte		VOL   , 90*song271_mvl/mxv
	.byte	W09
	.byte		VOICE , 73
	.byte		PAN   , c_v+20
	.byte	W03
	.byte		N06   , An3 , v088
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	W03
	.byte		N09
	.byte	W09
	.byte		        An3 
	.byte	W12
	.byte	W03
	.byte		        Gn4 
	.byte	W09
	.byte		        Gn3 
	.byte	W15
	.byte		        En4 
	.byte	W09
	.byte		        En3 
	.byte	W12
	.byte		N60   , An3 
	.byte	W12
	.byte		MOD   , 32
	.byte	W21
	.byte		VOL   , 85*song271_mvl/mxv
	.byte	W06
	.byte		        79*song271_mvl/mxv
	.byte	W06
	.byte		        73*song271_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        62*song271_mvl/mxv
	.byte	W03
	.byte		        45*song271_mvl/mxv
	.byte	W03
	.byte		        31*song271_mvl/mxv
	.byte	W03
	.byte		        14*song271_mvl/mxv
	.byte	W12
	.byte	FINE

@**************** Track 02 ****************************@

song271_2:
	.byte	KEYSH , 0
	.byte	W24
	.byte		VOICE , 2
	.byte		VOL   , 90*song271_mvl/mxv
	.byte		N09   , Dn2 , v112
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N60   , Dn2 
	.byte	W32
	.byte	W01
	.byte		VOL   , 85*song271_mvl/mxv
	.byte	W06
	.byte		        79*song271_mvl/mxv
	.byte	W06
	.byte		        73*song271_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		        62*song271_mvl/mxv
	.byte	W03
	.byte		        45*song271_mvl/mxv
	.byte	W03
	.byte		        31*song271_mvl/mxv
	.byte	W03
	.byte		        14*song271_mvl/mxv
	.byte	W12
	.byte	FINE

@**************** Track 03 ****************************@

song271_3:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte	W24
	.byte		VOICE , 90
	.byte		VOL   , 90*song271_mvl/mxv
	.byte		PAN   , c_v-48
	.byte	W03
	.byte		N06   , Bn5 , v052
	.byte	W21
	.byte	W03
	.byte		        An5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        Dn5 
	.byte	W44
	.byte	W01
	.byte	W24
	.byte	FINE

@**************** Track 04 ****************************@

song271_4:
	.byte	KEYSH , 0
	.byte	W24
	.byte		VOICE , 0
	.byte		VOL   , 90*song271_mvl/mxv
	.byte	W03
	.byte		N03   , En3 , v064
	.byte	W21
	.byte	W03
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W21
	.byte		N03
	.byte	W03
	.byte		        Dn3 
	.byte	W44
	.byte	W01
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song271:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song271_pri	@ Priority
	.byte	song271_rev	@ Reverb.

	.word	song271_grp

	.word	song271_0
	.word	song271_1
	.word	song271_2
	.word	song271_3
	.word	song271_4

	.end
