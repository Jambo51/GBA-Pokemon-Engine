@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song223_grp, group_6
	.equ	song223_pri, 4
	.equ	song223_rev, 178
	.equ	song223_mvl, 127
	.equ	song223_key, 0
	.equ	song223_tbs, 1
	.equ	song223_exg, 1
	.equ	song223_cmp, 1

	.section .rodata
	.global	song223
	.align	2

@**************** Track 00 ****************************@

song223_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 64*song223_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N96   , En2 , v127
	.byte	W03
	.byte		VOL   , 79*song223_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W02
	.byte		        c_v+8
	.byte	W01
	.byte		VOL   , 84*song223_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W03
	.byte		VOL   , 91*song223_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 100*song223_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		VOL   , 110*song223_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-12
	.byte	W06
	.byte		        c_v-17
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		PAN   , c_v-3
	.byte	W03
	.byte		        c_v+6
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		PAN   , c_v+10
	.byte	W03
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W03
	.byte		BEND  , c_v+6
	.byte	W03
	.byte		PAN   , c_v+13
	.byte		BEND  , c_v+11
	.byte	W03
	.byte		        c_v+20
	.byte	W03
	.byte		PAN   , c_v+8
	.byte	W03
	.byte		        c_v+0
	.byte		BEND  , c_v+12
	.byte	W03
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+7
	.byte	W03
	.byte		PAN   , c_v-11
	.byte	W03
	.byte		        c_v-17
	.byte		VOL   , 98*song223_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 90*song223_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 80*song223_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 71*song223_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W02
	.byte		VOL   , 58*song223_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		PAN   , c_v+10
	.byte		VOL   , 45*song223_mvl/mxv
	.byte	W02
	.byte		        27*song223_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 11*song223_mvl/mxv
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song223_1:
	.byte	KEYSH , 0
	.byte		VOICE , 57
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song223_mvl/mxv
	.byte		N03   , Cn3 , v100
	.byte	W03
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W04
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W03
	.byte	W01
	.byte		        En3 , v080
	.byte	W03
	.byte		        Dn3 
	.byte	W04
	.byte		        Cn3 , v100
	.byte	W04
	.byte		        En3 , v080
	.byte	W03
	.byte		        Dn3 
	.byte	W04
	.byte		        Cn3 , v100
	.byte	W03
	.byte		        En3 , v080
	.byte	W02
	.byte	W02
	.byte		        Dn3 
	.byte	W04
	.byte		        Cn3 , v100
	.byte	W03
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v100
	.byte	W04
	.byte		        En3 , v080
	.byte	W04
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 , v092
	.byte	W04
	.byte		        En3 , v060
	.byte	W03
	.byte		        Dn3 , v052
	.byte	W04
	.byte		        Cn3 , v060
	.byte	W04
	.byte		        En3 , v032
	.byte	W03
	.byte		N02   , Dn3 , v020
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song223:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song223_pri	@ Priority
	.byte	song223_rev	@ Reverb.

	.word	song223_grp

	.word	song223_0
	.word	song223_1

	.end
