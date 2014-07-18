@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song256_grp, group_0
	.equ	song256_pri, 5
	.equ	song256_rev, 178
	.equ	song256_mvl, 127
	.equ	song256_key, 0
	.equ	song256_tbs, 1
	.equ	song256_exg, 1
	.equ	song256_cmp, 1

	.text
	.global	song256
	.align	2

@**************** Track 00 ****************************@

song256_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 66
	.byte		VOICE , 46
	.byte		VOL   , 90*song256_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Bn4 , v112
	.byte	W12
	.byte		N06   , Bn4 , v052
	.byte	W12
	.byte		N12   , Bn4 , v112
	.byte	W12
	.byte		N06   , Bn4 , v052
	.byte	W12
	.byte		N12   , Bn4 , v112
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N06   , En5 , v052
	.byte	W12
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song256_1:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		VOL   , 90*song256_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N06   , En4 , v080
	.byte	W12
	.byte		        En4 , v020
	.byte	W12
	.byte		        En4 , v080
	.byte	W12
	.byte		        En4 , v020
	.byte	W12
	.byte		        En4 , v080
	.byte	W12
	.byte		        En4 , v020
	.byte	W12
	.byte		        Bn4 , v080
	.byte	W12
	.byte		        Bn4 , v020
	.byte	W12
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song256_2:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		VOL   , 90*song256_mvl/mxv
	.byte		PAN   , c_v-47
	.byte	W12
	.byte		N06   , Gs3 , v080
	.byte	W12
	.byte		        Gs3 , v024
	.byte	W12
	.byte		        Gs3 , v080
	.byte	W12
	.byte		        Gs3 , v024
	.byte	W12
	.byte		        Gs3 , v080
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        En3 , v024
	.byte	W12
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song256_3:
	.byte		VOL   , 90*song256_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 100
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N03   , En5 , v080
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N03   , En5 , v024
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03   , En5 , v080
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N03   , En5 , v024
	.byte	W06
	.byte		VOICE , 101
	.byte		PAN   , c_v+0
	.byte		N03   , En4 , v080
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N03   , En4 , v024
	.byte	W30
	.byte		VOICE , 100
	.byte		PAN   , c_v+0
	.byte		N03   , En5 , v080
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N03   , En5 , v024
	.byte	W18
	.byte		PAN   , c_v+0
	.byte		N03   , En5 , v072
	.byte	W06
	.byte		        En5 , v028
	.byte	W18
	.byte	FINE

@******************************************************@
	.align	2

song256:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song256_pri	@ Priority
	.byte	song256_rev	@ Reverb.

	.word	song256_grp

	.word	song256_0
	.word	song256_1
	.word	song256_2
	.word	song256_3

	.end
