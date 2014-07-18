@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song269_grp, group_0
	.equ	song269_pri, 5
	.equ	song269_rev, 178
	.equ	song269_mvl, 127
	.equ	song269_key, 0
	.equ	song269_tbs, 1
	.equ	song269_exg, 1
	.equ	song269_cmp, 1

	.text
	.global	song269
	.align	2

@**************** Track 00 ****************************@

song269_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte	W09
	.byte		VOICE , 56
	.byte		VOL   , 100*song269_mvl/mxv
	.byte		PAN   , c_v+6
	.byte		N03   , Cs3 , v084
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		N06   , As3 , v112
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W03
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N06   , En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song269_1:
	.byte	KEYSH , 0
	.byte	W24
	.byte		VOICE , 60
	.byte		VOL   , 100*song269_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N24   , Fs2 , v080
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song269_2:
	.byte	KEYSH , 0
	.byte	W24
	.byte		VOICE , 47
	.byte		VOL   , 100*song269_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W48
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte		        Ds2 , v092
	.byte	W03
	.byte		        Ds2 , v096
	.byte	W03
	.byte		        Ds2 , v100
	.byte	W03
	.byte		N06   , Ds2 , v108
	.byte	W06
	.byte		        Ds2 , v116
	.byte	W06
	.byte		N24   , Fs2 , v120
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song269_3:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte	W24
	.byte		VOICE , 90
	.byte		VOL   , 100*song269_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Fs5 , v040
	.byte	W12
	.byte		        Cs5 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Fs5 
	.byte	W12
	.byte		        Cs5 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        En5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 04 ****************************@

song269_4:
	.byte	KEYSH , 0
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		BEND  , c_v+0
	.byte	W24
	.byte		VOICE , 83
	.byte		VOL   , 100*song269_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N06   , Fs3 , v052
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W03
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N12   , As4 
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 05 ****************************@

song269_5:
	.byte	KEYSH , 0
	.byte	W24
	.byte		VOICE , 88
	.byte		VOL   , 100*song269_mvl/mxv
	.byte		N12   , Fs1 , v080
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 06 ****************************@

song269_6:
	.byte	KEYSH , 0
	.byte	W24
	.byte		VOICE , 0
	.byte		VOL   , 100*song269_mvl/mxv
	.byte		N06   , En1 , v100
	.byte		N72   , Bn2 , v092
	.byte	W24
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En1 , v112
	.byte	W03
	.byte		        En1 , v080
	.byte	W03
	.byte		        En1 , v084
	.byte	W03
	.byte		        En1 , v092
	.byte	W03
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v108
	.byte	W06
	.byte		N09   , En1 , v100
	.byte		N24   , Bn2 , v092
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song269:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song269_pri	@ Priority
	.byte	song269_rev	@ Reverb.

	.word	song269_grp

	.word	song269_0
	.word	song269_1
	.word	song269_2
	.word	song269_3
	.word	song269_4
	.word	song269_5
	.word	song269_6

	.end
