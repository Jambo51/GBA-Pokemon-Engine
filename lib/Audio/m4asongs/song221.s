@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song221_grp, group_6
	.equ	song221_pri, 5
	.equ	song221_rev, 178
	.equ	song221_mvl, 127
	.equ	song221_key, 0
	.equ	song221_tbs, 1
	.equ	song221_exg, 1
	.equ	song221_cmp, 1

	.section .rodata
	.global	song221
	.align	2

@**************** Track 00 ****************************@

song221_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 46
	.byte		VOL   , 95*song221_mvl/mxv
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte	W03
	.byte		N06   , Ds6 , v112
	.byte	W03
	.byte	W03
	.byte		        En5 , v104
	.byte	W03
	.byte	W03
	.byte		        Ds6 , v096
	.byte	W03
	.byte	W03
	.byte		        En5 , v088
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		N06   , Ds6 , v080
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N06   , En5 , v072
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		N06   , Ds6 , v064
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N06   , En5 , v056
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		N06   , Ds6 , v044
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N06   , En5 , v036
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		N06   , Ds6 , v028
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N06   , En5 , v020
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song221_1:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		BENDR , 2
	.byte		VOL   , 43*song221_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte		N06   , Gs6 , v108
	.byte	W03
	.byte	W03
	.byte		        Bn5 
	.byte	W03
	.byte	W03
	.byte		        Gs6 , v100
	.byte	W03
	.byte	W03
	.byte		        Bn5 , v092
	.byte	W03
	.byte	W03
	.byte		        Gs6 , v084
	.byte	W03
	.byte	W03
	.byte		        Bn5 , v076
	.byte	W03
	.byte	W03
	.byte		        Gs6 , v068
	.byte	W03
	.byte	W03
	.byte		        Bn5 , v060
	.byte	W03
	.byte	W03
	.byte		        Gs6 , v052
	.byte	W03
	.byte	W03
	.byte		        Bn5 , v040
	.byte	W03
	.byte	W03
	.byte		        Gs6 , v032
	.byte	W03
	.byte	W03
	.byte		        Bn5 , v024
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song221:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song221_pri	@ Priority
	.byte	song221_rev	@ Reverb.

	.word	song221_grp

	.word	song221_0
	.word	song221_1

	.end
