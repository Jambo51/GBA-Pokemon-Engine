@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song296_grp, group_32
	.equ	song296_pri, 0
	.equ	song296_rev, 178
	.equ	song296_mvl, 127
	.equ	song296_key, 0
	.equ	song296_tbs, 1
	.equ	song296_exg, 1
	.equ	song296_cmp, 1

	.section .rodata
	.global	song296
	.align	2

@**************** Track 00 ****************************@

song296_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 93
	.byte		VOICE , 17
	.byte		PAN   , c_v-30
	.byte		VOL   , 66*song296_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte	W36
	.byte		N06   , An3 , v127
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		VOICE , 47
	.byte		VOL   , 90*song296_mvl/mxv
	.byte	W48
	.byte		VOICE , 87
	.byte		MOD   , 8
	.byte		PAN   , c_v+63
	.byte		VOL   , 60*song296_mvl/mxv
	.byte		N06   , An3 , v127
	.byte	W96
	.byte		PAN   , c_v-64
	.byte		N06
	.byte	W48
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N24   , As3 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N06   , Dn3 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Dn3 , v120
	.byte	W72
	.byte		PAN   , c_v-64
	.byte		N06   , An3 , v127
	.byte	W48
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N36   , Gs3 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N06   , An3 
	.byte	W96
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W48
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N36   , As3 
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N06   , An3 
	.byte	W96
	.byte		PAN   , c_v-64
	.byte		N06
	.byte	W48
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N36   , Cn4 
	.byte	W36
	.byte		VOICE , 4
	.byte		PAN   , c_v+48
	.byte		VOL   , 49*song296_mvl/mxv
	.byte		N06   , An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+46
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+24
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+20
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-8
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-39
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-10
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+15
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+41
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , An2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-41
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-8
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+9
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+25
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+41
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+22
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+10
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-10
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-25
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-39
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Cn4 , v096
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , Gn3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Cn4 , v084
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Gn4 , v064
	.byte	W06
	.byte		VOICE , 62
	.byte		MOD   , 0
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N06   , Dn2 , v120
	.byte	W12
	.byte		        Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N18   , Fn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 61*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N18   , Gn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 61*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N18   , Fn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 61*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N06   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , En2 
	.byte	W06
	.byte		MOD   , 9
	.byte	W06
	.byte		        0
	.byte		PAN   , c_v-32
	.byte		N03   , Dn2 
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N18   , Fn2 , v127
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 61*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N18   , Gn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 61*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N18   , Fn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 61*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N09   , Cn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		VOL   , 70*song296_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		VOICE , 4
	.byte		PAN   , c_v+48
	.byte		VOL   , 46*song296_mvl/mxv
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+23
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+8
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-8
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-41
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		VOICE , 24
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+2
	.byte		N06   , Ds2 , v096
	.byte	W06
	.byte		        En2 , v100
	.byte	W06
	.byte		PAN   , c_v-36
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		PAN   , c_v-26
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+22
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		PAN   , c_v+8
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		BEND  , c_v+0
	.byte		N06   , An1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		VOICE , 4
	.byte		PAN   , c_v-48
	.byte		N06   , Ds3 , v127
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-40
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-25
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v-9
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+10
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+25
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+49
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , Ds3 , v120
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En3 , v104
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		        Gn3 , v088
	.byte	W06
	.byte		        Fs3 , v076
	.byte	W06
	.byte		PAN   , c_v-15
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		PAN   , c_v+44
	.byte		N06   , Ds3 , v088
	.byte	W06
	.byte		        Dn3 , v096
	.byte	W06
	.byte		        Cs3 , v108
	.byte	W06
	.byte		        Cn3 , v112
	.byte	W06
	.byte		VOICE , 5
	.byte		PAN   , c_v+32
	.byte		VOL   , 66*song296_mvl/mxv
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , En2 
	.byte	W24
	.byte		MOD   , 5
	.byte	W48
	.byte		        0
	.byte		PAN   , c_v-41
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , Cn3 
	.byte	W24
	.byte		MOD   , 5
	.byte	W48
	.byte		VOICE , 5
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 75*song296_mvl/mxv
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W12
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v+39
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , Cn3 
	.byte	W24
	.byte		MOD   , 5
	.byte	W48
	.byte		VOICE , 4
	.byte		PAN   , c_v+40
	.byte		MOD   , 0
	.byte		N06   , En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		PAN   , c_v+23
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		PAN   , c_v-40
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		PAN   , c_v-14
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W03
	.byte		PAN   , c_v+36
	.byte	W03
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v-36
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , En3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N24   , An3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N36   , En3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte	W96
	.byte	W48
	.byte		VOL   , 56*song296_mvl/mxv
	.byte	W12
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		MOD   , 0
	.byte		N24   , Fs3 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , En3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte	PEND
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Fs3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N36   , Dn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte	PATT
	 .word	song296_0 + 0x528
	.byte		MOD   , 0
	.byte		N24   , An3 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte	GOTO
	 .word	song296_0 + 0x3D
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 01 ****************************@

song296_1:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 53*song296_mvl/mxv
	.byte		N06   , Gs4 , v127
	.byte	W06
	.byte		        Gn4 , v096
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W24
	.byte	W12
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 , v100
	.byte	W06
	.byte		        En3 , v108
	.byte	W06
	.byte		        Fn3 , v116
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		VOICE , 29
	.byte		PAN   , c_v+0
	.byte		VOL   , 62*song296_mvl/mxv
	.byte		N06   , Dn4 , v127
	.byte	W24
	.byte		        Dn4 , v032
	.byte	W24
	.byte		        Dn4 , v016
	.byte	W24
	.byte		        Dn4 , v008
	.byte	W24
	.byte		        Dn4 , v127
	.byte	W24
	.byte		        Dn4 , v064
	.byte	W24
	.byte		        Dn4 , v048
	.byte	W12
	.byte		N24   , Ds4 , v127
	.byte	W24
	.byte		N06   , Fn4 , v120
	.byte	W06
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N06   , Dn4 , v127
	.byte	W24
	.byte		        Dn3 , v108
	.byte	W24
	.byte		        Dn4 , v016
	.byte	W24
	.byte		        Dn4 , v008
	.byte	W24
	.byte		        Dn4 , v127
	.byte	W24
	.byte		        Dn4 , v032
	.byte	W24
	.byte		        Dn4 , v016
	.byte	W12
	.byte		N36   , Cs4 , v127
	.byte	W36
	.byte		N06   , Dn4 , v127
	.byte	W24
	.byte		        Dn4 , v032
	.byte	W24
	.byte		        Dn4 , v016
	.byte	W24
	.byte		        Dn4 , v008
	.byte	W24
	.byte	PEND
	.byte		        Dn4 , v127
	.byte	W24
	.byte		        Dn4 , v032
	.byte	W24
	.byte		        Dn4 , v016
	.byte	W12
	.byte		N36   , Ds4 , v127
	.byte	W36
	.byte	PATT
	 .word	song296_1 + 0x8D
	.byte		N06   , Dn4 , v127
	.byte	W24
	.byte		        Dn4 , v032
	.byte	W24
	.byte		        Dn4 , v016
	.byte	W12
	.byte		N36   , En4 , v127
	.byte	W36
	.byte		VOICE , 48
	.byte		VOL   , 62*song296_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W15
	.byte		MOD   , 2
	.byte	W09
	.byte		N12   , Fs4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W36
	.byte		        0
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W36
	.byte		        0
	.byte		N60   , Gn4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W36
	.byte		        0
	.byte	W12
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N12   , Fn4 , v120
	.byte	W12
	.byte		VOICE , 24
	.byte		PAN   , c_v+0
	.byte		VOL   , 84*song296_mvl/mxv
	.byte		N18   , Fs5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W06
	.byte		N03   , Gn5 
	.byte	W03
	.byte		        Fs5 , v108
	.byte	W03
	.byte		MOD   , 0
	.byte		N21   , En5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W09
	.byte		N03   , Fn5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N24   , Fs5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N09   , Gn5 
	.byte	W09
	.byte		N03   , Gs5 
	.byte	W03
	.byte		N24   , An5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N09   , Dn5 
	.byte	W09
	.byte		N03   , Ds5 
	.byte	W03
	.byte		N09   , En5 
	.byte	W09
	.byte		N03   , Fn5 
	.byte	W03
	.byte		N12   , Fs5 
	.byte	W12
	.byte		N44   , En5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W24
	.byte		VOL   , 56*song296_mvl/mxv
	.byte	W09
	.byte		N03   , Ds5 
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 82*song296_mvl/mxv
	.byte		N44   , Dn5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W24
	.byte		VOL   , 56*song296_mvl/mxv
	.byte	W09
	.byte		N03   , Cs5 
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 82*song296_mvl/mxv
	.byte		N48   , Cn5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W24
	.byte		VOL   , 56*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*song296_mvl/mxv
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		N12
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 82*song296_mvl/mxv
	.byte		N12   , En5 
	.byte	W12
	.byte		VOICE , 17
	.byte		VOL   , 86*song296_mvl/mxv
	.byte		N06   , Dn3 , v127
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		        Fn4 , v127
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W30
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	W24
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W18
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W30
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W30
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		VOL   , 60*song296_mvl/mxv
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		VOICE , 24
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N96   , An3 
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		VOL   , 45*song296_mvl/mxv
	.byte	W48
	.byte		MOD   , 0
	.byte		VOL   , 59*song296_mvl/mxv
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        En3 , v100
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		VOICE , 30
	.byte		N06   , An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		N24   , Dn4 , v092
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N24   , Ds4 
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N96   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W84
	.byte		        0
	.byte		BEND  , c_v+0
	.byte		N96   , An4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		VOL   , 58*song296_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W06
	.byte		VOL   , 52*song296_mvl/mxv
	.byte	W06
	.byte		        45*song296_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W06
	.byte		VOL   , 36*song296_mvl/mxv
	.byte	W06
	.byte		        29*song296_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		VOL   , 23*song296_mvl/mxv
	.byte	W06
	.byte		        17*song296_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		VOL   , 9*song296_mvl/mxv
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 60*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N06   , Cn2 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , Cn4 
	.byte	W72
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , En4 
	.byte	W72
	.byte		N96   , Fs4 
	.byte	W96
	.byte		N96
	.byte	W96
	.byte		VOICE , 60
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , En4 
	.byte	W24
	.byte		MOD   , 5
	.byte	W24
	.byte		VOL   , 56*song296_mvl/mxv
	.byte	W12
	.byte		        45*song296_mvl/mxv
	.byte	W12
	.byte		        68*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N48   , Cn5 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 56*song296_mvl/mxv
	.byte	W12
	.byte		        68*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Gn4 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 55*song296_mvl/mxv
	.byte	W12
	.byte		        68*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		TIE   , Dn5 , v120
	.byte	W60
	.byte		MOD   , 5
	.byte	W36
	.byte	W48
	.byte		VOL   , 54*song296_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W06
	.byte		VOL   , 49*song296_mvl/mxv
	.byte	W06
	.byte		        44*song296_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W06
	.byte		VOL   , 41*song296_mvl/mxv
	.byte	W06
	.byte		        38*song296_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		VOL   , 33*song296_mvl/mxv
	.byte	W06
	.byte		        26*song296_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		VOL   , 21*song296_mvl/mxv
	.byte	W06
	.byte		EOT
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N24   , Fs3 , v127
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		N36   , Fs3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W36
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		N96   , Dn5 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 63*song296_mvl/mxv
	.byte	W12
	.byte		        56*song296_mvl/mxv
	.byte	W12
	.byte		        45*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        68*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , An4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 63*song296_mvl/mxv
	.byte	W12
	.byte		        56*song296_mvl/mxv
	.byte	W12
	.byte		        45*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        68*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Cn5 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 63*song296_mvl/mxv
	.byte	W12
	.byte		        56*song296_mvl/mxv
	.byte	W12
	.byte		        45*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        68*song296_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , En5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte	W12
	.byte		N36   , Cn5 
	.byte	W36
	.byte	GOTO
	 .word	song296_1 + 0x4A
	.byte	FINE

@**************** Track 02 ****************************@

song296_2:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-63
	.byte		VOL   , 56*song296_mvl/mxv
	.byte	W72
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		N12   , Dn1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		N36   , Ds1 
	.byte	W36
	.byte	PEND
	.byte	PATT
	 .word	song296_2 + 0x49
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		N36   , Gs1 
	.byte	W36
	.byte	PATT
	 .word	song296_2 + 0x49
	.byte	PATT
	 .word	song296_2 + 0x69
	.byte	PATT
	 .word	song296_2 + 0x49
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		N36   , En1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W24
	.byte	PATT
	 .word	song296_2 + 0x49
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Cn2 , v127
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song296_2 + 0xEE
	.byte		PAN   , c_v-63
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song296_2 + 0x111
	.byte	PATT
	 .word	song296_2 + 0xEE
	.byte	PATT
	 .word	song296_2 + 0xEE
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		BEND  , c_v+3
	.byte		N06   , Dn2 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N06   , Fn4 , v076
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W72
	.byte		N06   , Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W72
	.byte	PEND
	.byte	PATT
	 .word	song296_2 + 0x199
	.byte	PATT
	 .word	song296_2 + 0x199
	.byte	PATT
	 .word	song296_2 + 0x199
	.byte	PATT
	 .word	song296_2 + 0x199
	.byte	PATT
	 .word	song296_2 + 0x199
	.byte	PATT
	 .word	song296_2 + 0x199
	.byte		N06   , Cn3 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , En3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 39*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        28*song296_mvl/mxv
	.byte	W12
	.byte		        22*song296_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 39*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        28*song296_mvl/mxv
	.byte	W12
	.byte		        22*song296_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		N96   , Fs3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 39*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        28*song296_mvl/mxv
	.byte	W12
	.byte		        22*song296_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		N96   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		VOL   , 39*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        28*song296_mvl/mxv
	.byte	W12
	.byte		        22*song296_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , Gn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 39*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		        28*song296_mvl/mxv
	.byte	W12
	.byte		        22*song296_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		MOD   , 0
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		N48   , En3 
	.byte	W24
	.byte		MOD   , 7
	.byte		VOL   , 39*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		N48   , Gn3 
	.byte	W24
	.byte		MOD   , 7
	.byte		VOL   , 39*song296_mvl/mxv
	.byte	W12
	.byte		        34*song296_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte		VOL   , 45*song296_mvl/mxv
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N36   , Gn2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N36   , As2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N36   , Ds2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte	PATT
	 .word	song296_2 + 0x2A1
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N36   , An2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte	GOTO
	 .word	song296_2 + 0x49
	.byte		PAN   , c_v-64
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 03 ****************************@

song296_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W96
	.byte	W48
	.byte		N06   , Bn1 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		MOD   , 7
	.byte		N06   , Dn2 , v120
	.byte	W84
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09   , Dn2 
	.byte	W60
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N03   , En2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		N06   , Dn2 
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W60
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W60
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N24   , An1 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 , v060
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		        Dn2 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn1 , v064
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N36   , An1 
	.byte	W36
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N03   , An2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N18
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N12   , An2 
	.byte	W18
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		N03   , Cn2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , En2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W18
	.byte		N03   , En2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Fn1 
	.byte	W06
	.byte		MOD   , 16
	.byte	W18
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		N06   , Dn1 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn1 
	.byte	W06
	.byte		MOD   , 16
	.byte	W18
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Fn1 
	.byte	W06
	.byte		MOD   , 16
	.byte	W18
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		N06   , Dn1 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Fn1 
	.byte	W06
	.byte		MOD   , 16
	.byte	W18
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn1 
	.byte	W06
	.byte		MOD   , 16
	.byte	W18
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Fn1 
	.byte	W06
	.byte		MOD   , 16
	.byte	W18
	.byte		        0
	.byte		PAN   , c_v+0
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		VOICE , 81
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W78
	.byte		N03   , Cs1 
	.byte	W06
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W78
	.byte		N03   , Cs1 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song296_3 + 0x1EC
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W60
	.byte		N24   , Cs1 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song296_3 + 0x1FB
	.byte	PATT
	 .word	song296_3 + 0x1FB
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		N06
	.byte	W60
	.byte		N12   , An1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W84
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , Cn3 
	.byte	W24
	.byte		MOD   , 5
	.byte	W48
	.byte		        0
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , En3 
	.byte	W24
	.byte		MOD   , 5
	.byte	W48
	.byte		VOICE , 81
	.byte		PAN   , c_v-63
	.byte		MOD   , 0
	.byte		N06   , Fs5 , v064
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-63
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N72   , Gn2 
	.byte	W24
	.byte		MOD   , 5
	.byte	W48
	.byte		        0
	.byte		N48   , Cn2 
	.byte	W15
	.byte		MOD   , 8
	.byte	W32
	.byte	W01
	.byte		        0
	.byte		N48   , Gn1 
	.byte	W15
	.byte		MOD   , 8
	.byte	W32
	.byte	W01
	.byte		        0
	.byte		N24   , Dn1 
	.byte	W36
	.byte		N03   , Cs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		N03   , An1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W18
	.byte		        Cn2 
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03   , An1 
	.byte	W06
	.byte		N06   , Ds1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W15
	.byte		N06   , An1 
	.byte	W09
	.byte		        Dn1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N03   , As1 
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		        Ds1 
	.byte	W03
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	GOTO
	 .word	song296_3 + 0x22
	.byte	FINE

@**************** Track 04 ****************************@

song296_4:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 77*song296_mvl/mxv
	.byte	W72
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
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
	.byte		VOICE , 62
	.byte		PAN   , c_v+0
	.byte		VOL   , 62*song296_mvl/mxv
	.byte		N06   , Fn2 , v120
	.byte	W12
	.byte		        Fn2 , v127
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N09   , An2 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N09   , As2 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N12   , An2 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N06   , Fn2 
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N09   , Gn2 
	.byte	W12
	.byte		N03   , Fn2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		        Fn2 , v127
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N12   , An2 , v127
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N12   , As2 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N12   , An2 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N09   , Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N09   , En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		VOICE , 29
	.byte	W96
	.byte	W96
	.byte	W92
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , An2 , v076
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+63
	.byte		N72
	.byte	W03
	.byte		BEND  , c_v+59
	.byte	W03
	.byte		        c_v+53
	.byte	W03
	.byte		PAN   , c_v-25
	.byte		BEND  , c_v+45
	.byte	W03
	.byte		        c_v+37
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v+27
	.byte	W03
	.byte		        c_v+22
	.byte	W03
	.byte		        c_v+15
	.byte	W03
	.byte		PAN   , c_v+18
	.byte		BEND  , c_v+9
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+1
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		PAN   , c_v+47
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		        c_v-9
	.byte	W03
	.byte		        c_v-22
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		VOL   , 67*song296_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W03
	.byte		        c_v-41
	.byte	W03
	.byte		VOL   , 62*song296_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W06
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		        c_v-59
	.byte	W03
	.byte		VOL   , 49*song296_mvl/mxv
	.byte		BEND  , c_v-63
	.byte	W06
	.byte		VOL   , 72*song296_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 14
	.byte		PAN   , c_v-33
	.byte		BEND  , c_v+0
	.byte		N24   , Fs4 , v120
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N36   , An4 
	.byte	W12
	.byte	W24
	.byte		N24   , Dn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-32
	.byte	W48
	.byte		        c_v+32
	.byte	W48
	.byte		        c_v-32
	.byte		VOL   , 77*song296_mvl/mxv
	.byte		N24   , Dn5 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , Dn5 , v044
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , An4 , v120
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , An4 , v044
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cn5 , v120
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , Cn5 , v044
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gn4 , v120
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N24   , Gn4 , v044
	.byte	W24
	.byte		VOL   , 72*song296_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song296_4 + 0x37
	.byte	FINE

@**************** Track 05 ****************************@

song296_5:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 77*song296_mvl/mxv
	.byte	W96
	.byte	W48
	.byte		PAN   , c_v-64
	.byte		N06   , An2 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Dn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N06
	.byte	W06
	.byte		VOICE , 47
	.byte		VOL   , 79*song296_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N48   , Dn3 , v112
	.byte	W84
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N48   , Dn3 
	.byte	W60
	.byte		N12   , Ds3 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N48   , Dn2 
	.byte	W60
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	W60
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 90*song296_mvl/mxv
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N36
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N24   , Dn3 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Dn2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Dn3 
	.byte	W12
	.byte		PAN   , c_v+34
	.byte		N12   , An2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+34
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-33
	.byte		N12   , Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , An2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N12   , Dn2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N36   , En2 
	.byte	W36
	.byte		VOICE , 83
	.byte		PAN   , c_v+0
	.byte		VOL   , 58*song296_mvl/mxv
	.byte		N24   , Dn4 , v120
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W15
	.byte		MOD   , 2
	.byte	W09
	.byte		N12   , Dn4 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 2
	.byte	W24
	.byte		N06   , En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		MOD   , 0
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W24
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		MOD   , 0
	.byte		N60   , En4 
	.byte	W12
	.byte		MOD   , 2
	.byte	W36
	.byte		        0
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 2
	.byte	W12
	.byte		        0
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		VOL   , 43*song296_mvl/mxv
	.byte		N18   , An4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N21   , Gn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N21   , An4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N09   , Dn5 
	.byte	W09
	.byte		N03   , En5 
	.byte	W03
	.byte		N24   , Fs5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N12   , An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N09   , En4 
	.byte	W09
	.byte		N03   , Fn4 
	.byte	W03
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N44   , Dn5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W32
	.byte	W01
	.byte		N03   , Cs5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N36   , Cn5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W24
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		MOD   , 0
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 8
	.byte	W36
	.byte		        0
	.byte		N24   , En5 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		MOD   , 0
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N24   , An3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N96   , An3 
	.byte	W96
	.byte		N48   , Dn4 
	.byte	W48
	.byte		BEND  , c_v-3
	.byte		N48   , Fs4 
	.byte	W12
	.byte		VOL   , 34*song296_mvl/mxv
	.byte		BEND  , c_v-4
	.byte	W12
	.byte		VOL   , 21*song296_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W12
	.byte		VOL   , 10*song296_mvl/mxv
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	W09
	.byte		VOL   , 43*song296_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 47
	.byte		VOL   , 90*song296_mvl/mxv
	.byte		PAN   , c_v+26
	.byte		N06   , En3 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N60   , Gn1 
	.byte	W60
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N48
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N48   , Gn1 
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N06   , Dn2 
	.byte	W36
	.byte		        An1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W36
	.byte		        An1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		VOICE , 83
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N72   , An4 
	.byte	W72
	.byte		N06
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N32   , En4 
	.byte	W32
	.byte	W01
	.byte		N03   , Ds4 
	.byte	W03
	.byte		N24   , Dn4 
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N48   , An4 
	.byte	W48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N06   , As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N24   , Cn5 
	.byte	W36
	.byte		N36   , Gn4 
	.byte	W36
	.byte	GOTO
	 .word	song296_5 + 0x2D
	.byte	FINE

@**************** Track 06 ****************************@

song296_6:
	.byte	KEYSH , 0
	.byte		VOICE , 88
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 26*song296_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N06   , Gs5 , v127
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W24
	.byte	W12
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		BEND  , c_v+0
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
	.byte		VOICE , 89
	.byte		VOL   , 56*song296_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N03   , Dn2 , v120
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N03   , Dn2 , v127
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Fn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , En2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		N12   , Dn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		N12   , Cn2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		N12   , En2 
	.byte	W06
	.byte		MOD   , 12
	.byte	W06
	.byte		        0
	.byte		BEND  , c_v+0
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
	.byte		VOICE , 88
	.byte	W24
	.byte		N72   , Cn4 , v064
	.byte	W24
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N48   , Gn4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N24   , En4 
	.byte	W21
	.byte		        Cn4 
	.byte	W24
	.byte	W03
	.byte		TIE   , Fs4 
	.byte	W24
	.byte		MOD   , 7
	.byte	W72
	.byte	W48
	.byte		BEND  , c_v-3
	.byte	W12
	.byte		        c_v-4
	.byte	W12
	.byte		        c_v-6
	.byte	W15
	.byte		        c_v-8
	.byte	W09
	.byte		EOT
	.byte		VOICE , 88
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N48
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte		        En4 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song296_6 + 0x4C
	.byte	FINE

@**************** Track 07 ****************************@

song296_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 77*song296_mvl/mxv
	.byte	W96
	.byte	W96
	.byte		N06   , Cs1 , v120
	.byte		N48   , Cs2 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 , v120
	.byte		N48   , Bn2 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N36   , Gn2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        En1 , v120
	.byte		N24   , An2 
	.byte	W24
	.byte		N06   , Fn1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        En1 
	.byte		N24   , Gn2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        En1 , v120
	.byte		N48   , An2 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W24
	.byte		N06
	.byte	W03
	.byte		VOL   , 89*song296_mvl/mxv
	.byte	W21
	.byte		N06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , Fn1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W18
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		N06
	.byte		N48   , Cn3 
	.byte	W12
	.byte		N06   , Cn1 
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N48   , Cs2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song296_7 + 0xD1
	.byte		N06   , Cn1 , v120
	.byte		N06   , An4 , v036
	.byte	W12
	.byte		        Cs1 , v120
	.byte		N06   , An4 , v036
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N06   , An4 , v036
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , Gs4 , v036
	.byte	W06
	.byte		        Cs1 , v120
	.byte		N06   , An4 , v036
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N06   , An4 , v036
	.byte	W12
	.byte		        Cs1 , v120
	.byte		N06   , Gs4 , v036
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , An4 , v036
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N06   , Gs4 , v036
	.byte	W06
	.byte		        Cs1 , v120
	.byte		N06   , An4 , v036
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N48   , An2 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte	PATT
	 .word	song296_7 + 0xD1
	.byte	PATT
	 .word	song296_7 + 0xD1
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N48   , Cn3 
	.byte	W12
	.byte		N06   , Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn1 , v096
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte		N48   , Cs2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W78
	.byte		        Cn1 , v084
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W78
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PEND
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W60
	.byte		        Dn1 
	.byte		N24   , Gn2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte	PEND
	.byte		        En1 
	.byte		N48   , An2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N06   , En1 
	.byte		N48   , An2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W78
	.byte		        Cn1 , v084
	.byte	W06
	.byte	PATT
	 .word	song296_7 + 0x1FA
	.byte	PATT
	 .word	song296_7 + 0x204
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En1 
	.byte		N06   , Cs2 
	.byte	W48
	.byte		N03   , Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte		N06   , An2 
	.byte	W24
	.byte		N48   , Cn3 
	.byte	W48
	.byte		N06   , Fn2 , v068
	.byte	W24
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	W96
	.byte		        Cn1 , v120
	.byte	W42
	.byte		N03   , Cn1 , v068
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		        Gn1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N06
	.byte	W06
	.byte	GOTO
	 .word	song296_7 + 0xA
	.byte	FINE

@**************** Track 08 ****************************@

song296_8:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 68*song296_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W48
	.byte	PEND
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PATT
	 .word	song296_8 + 0x35
	.byte	PATT
	 .word	song296_8 + 0x13
	.byte	PATT
	 .word	song296_8 + 0x35
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PATT
	 .word	song296_8 + 0x35
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N03   , Cn5 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte	PATT
	 .word	song296_8 + 0x9F
	.byte	W96
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song296_8 + 0xE6
	.byte	W96
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song296_8 + 0x108
	.byte	PATT
	 .word	song296_8 + 0x108
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N03   , Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song296_8 + 0x149
	.byte	PATT
	 .word	song296_8 + 0x149
	.byte	PATT
	 .word	song296_8 + 0x149
	.byte	PATT
	 .word	song296_8 + 0x149
	.byte	PATT
	 .word	song296_8 + 0x149
	.byte	GOTO
	 .word	song296_8 + 0x13
	.byte	FINE

@**************** Track 09 ****************************@

song296_9:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song296_mvl/mxv
	.byte	W96
	.byte		BEND  , c_v-64
	.byte		N96   , Gn2 , v096
	.byte	W06
	.byte		BEND  , c_v-58
	.byte	W06
	.byte		        c_v-48
	.byte	W06
	.byte		        c_v-41
	.byte	W06
	.byte		        c_v-32
	.byte	W06
	.byte		        c_v-25
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-9
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+6
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+22
	.byte	W06
	.byte		        c_v+32
	.byte	W06
	.byte		        c_v+38
	.byte	W06
	.byte		        c_v+48
	.byte	W06
	.byte		        c_v+56
	.byte	W06
	.byte		BEND  , c_v+63
	.byte	W96
	.byte	W60
	.byte		N36   , Gn5 , v120
	.byte	W36
	.byte	W24
	.byte		N12
	.byte	W72
	.byte	W60
	.byte		N36
	.byte	W36
	.byte	W96
	.byte	W60
	.byte		N36
	.byte	W36
	.byte	W24
	.byte		N12
	.byte	W72
	.byte	W60
	.byte		N36
	.byte	W36
	.byte		N09   , Gn5 , v092
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		        Gn5 , v068
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song296_9 + 0x4A
	.byte	PATT
	 .word	song296_9 + 0x4A
	.byte	PATT
	 .word	song296_9 + 0x4A
	.byte	PATT
	 .word	song296_9 + 0x4A
	.byte	PATT
	 .word	song296_9 + 0x4A
	.byte	PATT
	 .word	song296_9 + 0x4A
	.byte	PATT
	 .word	song296_9 + 0x4A
	.byte		N09   , Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v092
	.byte	W36
	.byte		        Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v092
	.byte	W36
	.byte	PEND
	.byte		        Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v092
	.byte	W36
	.byte		        Gn5 , v120
	.byte	W36
	.byte		N09
	.byte	W12
	.byte	PATT
	 .word	song296_9 + 0x85
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N12   , Gn5 , v120
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N12   , Gn5 , v096
	.byte	W48
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song296_9 + 0xB8
	.byte	PATT
	 .word	song296_9 + 0xB8
	.byte	PATT
	 .word	song296_9 + 0xB8
	.byte	PATT
	 .word	song296_9 + 0xB8
	.byte	PATT
	 .word	song296_9 + 0xB8
	.byte	GOTO
	 .word	song296_9 + 0x32
	.byte	FINE

@******************************************************@
	.align	2

song296:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song296_pri	@ Priority
	.byte	song296_rev	@ Reverb.

	.word	song296_grp

	.word	song296_0
	.word	song296_1
	.word	song296_2
	.word	song296_3
	.word	song296_4
	.word	song296_5
	.word	song296_6
	.word	song296_7
	.word	song296_8
	.word	song296_9

	.end
