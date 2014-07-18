@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song303_grp, group_39
	.equ	song303_pri, 0
	.equ	song303_rev, 178
	.equ	song303_mvl, 127
	.equ	song303_key, 0
	.equ	song303_tbs, 1
	.equ	song303_exg, 1
	.equ	song303_cmp, 1

	.text
	.global	song303
	.align	2

@**************** Track 00 ****************************@

song303_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 58
	.byte		VOICE , 4
	.byte		PAN   , c_v-32
	.byte		VOL   , 33*song303_mvl/mxv
	.byte		N12   , An3 , v127
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte		N12   , Cn4 , v127
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	PEND
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W03
	.byte		        En4 , v120
	.byte	W03
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N12   , Cn4 , v127
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PATT
	 .word	song303_0 + 0x1C
	.byte	PATT
	 .word	song303_0 + 0x2F
	.byte		N12   , An3 , v127
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N48   , Cn4 
	.byte	W48
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	GOTO
	 .word	song303_0 + 0x2
	.byte	W96
	.byte	FINE

@**************** Track 01 ****************************@

song303_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , Fn5 , v096
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N24   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N24   , As5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , An5 
	.byte	W12
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte		N36   , En5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte	W48
	.byte	PEND
	.byte		N12   , En5 , v096
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		N24   , An5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , En5 
	.byte	W12
	.byte	PEND
	.byte		        Fn5 
	.byte	W12
	.byte		N36   , An5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte	W48
	.byte		N12   , Fn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N24   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N24   , As5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , An5 
	.byte	W12
	.byte	PATT
	 .word	song303_1 + 0x33
	.byte	PATT
	 .word	song303_1 + 0x49
	.byte		N48   , Fn5 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte	W24
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N48   , An5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N48   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , As5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		N03   , As5 
	.byte	W03
	.byte		        Cn6 
	.byte	W03
	.byte		N06   , As5 
	.byte	W06
	.byte		N12   , An5 
	.byte	W12
	.byte		N48   , Gn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N48   , En5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N48   , Gn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N48   , Fn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N48   , An5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N48   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		N48   , Dn6 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N24   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N48   , As5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte		N12   , An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N48   , Fn5 
	.byte	W15
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        60*song303_mvl/mxv
	.byte	W06
	.byte		        48*song303_mvl/mxv
	.byte	W06
	.byte	GOTO
	 .word	song303_1 + 0x2
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 84*song303_mvl/mxv
	.byte	W72
	.byte	FINE

@**************** Track 02 ****************************@

song303_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 30*song303_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Fn3 , v127
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+32
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PATT
	 .word	song303_2 + 0x29
	.byte	PATT
	 .word	song303_2 + 0x47
	.byte		PAN   , c_v+32
	.byte		N06   , Fn3 , v127
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		VOICE , 48
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	GOTO
	 .word	song303_2 + 0x2
	.byte	W96
	.byte	FINE

@**************** Track 03 ****************************@

song303_3:
	.byte	KEYSH , 0
	.byte		VOICE , 33
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N36   , Fn1 , v127
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N36   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Cn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte	W24
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N06   , En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N24   , Cn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Cn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Cn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N36   , Fn1 
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte		MOD   , 8
	.byte	W24
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N12   , As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N12   , En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N36   , Cn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte	W24
	.byte		N06   , En1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N36   , Cn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N36   , An1 
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte		MOD   , 8
	.byte	W24
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N36   , Fn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N30   , Fn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N06
	.byte	W48
	.byte		N12   , En1 
	.byte	W12
	.byte		N30   , Fn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W24
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , Fn2 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N30   , Fn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N06
	.byte	W24
	.byte		N24   , Cn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , En1 
	.byte	W12
	.byte		N30   , Fn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		VOL   , 72*song303_mvl/mxv
	.byte		N12   , Cn1 
	.byte	W12
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N30   , Fn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N06
	.byte	W48
	.byte		N12   , En1 
	.byte	W12
	.byte		N30   , Fn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*song303_mvl/mxv
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N24   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , As1 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W12
	.byte		        96*song303_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N48   , Fn1 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		VOL   , 72*song303_mvl/mxv
	.byte	W36
	.byte	GOTO
	 .word	song303_3 + 0x2
	.byte		MOD   , 0
	.byte	W96
	.byte	FINE

@**************** Track 04 ****************************@

song303_4:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+11
	.byte		VOL   , 36*song303_mvl/mxv
	.byte		N12   , An2 , v120
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N36   , Gn2 
	.byte	W36
	.byte		N18   , Cn3 , v127
	.byte	W18
	.byte		N03   , As2 , v076
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        As2 , v120
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		N24   , En3 
	.byte	W36
	.byte		N12   , An2 , v120
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        En3 
	.byte	W15
	.byte		N32   , Cn3 
	.byte	W32
	.byte	W01
	.byte		N18   , As2 , v127
	.byte	W18
	.byte		N03   , An2 , v080
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		N12   , Gn2 , v127
	.byte	W24
	.byte		        Gn2 , v120
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		N24   , Cn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N36   , An3 
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song303_4 + 0x2
	.byte	W96
	.byte	FINE

@**************** Track 05 ****************************@

song303_5:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 36*song303_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W96
	.byte	W48
	.byte		N18   , Cn5 , v127
	.byte	W18
	.byte		N03   , As4 , v064
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		N12   , Gn4 , v127
	.byte	W24
	.byte	W96
	.byte	W48
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N24   , En5 
	.byte	W36
	.byte	W96
	.byte	W48
	.byte		N18   , As4 , v127
	.byte	W18
	.byte		N03   , An4 , v068
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		N12   , Gn4 , v127
	.byte	W24
	.byte	W96
	.byte	W48
	.byte		        An4 , v120
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song303_5 + 0x2
	.byte	W96
	.byte	FINE

@**************** Track 06 ****************************@

song303_6:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 30*song303_mvl/mxv
	.byte		PAN   , c_v-60
	.byte		N06   , Fn2 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-60
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-60
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-60
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-60
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PATT
	 .word	song303_6 + 0x2C
	.byte	PATT
	 .word	song303_6 + 0x4A
	.byte		PAN   , c_v-60
	.byte		N06   , Fn2 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		VOICE , 80
	.byte		PAN   , c_v-62
	.byte		VOL   , 29*song303_mvl/mxv
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v048
	.byte	W12
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v048
	.byte	W12
	.byte		N09   , As3 , v120
	.byte	W12
	.byte		N03   , As3 , v048
	.byte	W12
	.byte		        As3 , v064
	.byte	W12
	.byte		N09   , As3 , v120
	.byte	W12
	.byte		N03   , As3 , v048
	.byte	W12
	.byte		        As3 , v064
	.byte	W12
	.byte		N09   , As3 , v120
	.byte	W12
	.byte		N03   , As3 , v048
	.byte	W12
	.byte	PEND
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        Cn4 , v048
	.byte	W12
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		        As3 , v064
	.byte	W12
	.byte		        As3 , v048
	.byte	W12
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte		        As3 , v064
	.byte	W12
	.byte		N09   , As3 , v120
	.byte	W12
	.byte		N03   , As3 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v048
	.byte	W12
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		        An3 , v048
	.byte	W12
	.byte	PATT
	 .word	song303_6 + 0xE9
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        Cn4 , v048
	.byte	W12
	.byte		N09   , As3 , v120
	.byte	W12
	.byte		N03   , As3 , v048
	.byte	W12
	.byte		        As3 , v064
	.byte	W12
	.byte		        As3 , v048
	.byte	W12
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte		        An3 , v064
	.byte	W12
	.byte		N09   , An3 , v120
	.byte	W12
	.byte		N03   , An3 , v048
	.byte	W12
	.byte	GOTO
	 .word	song303_6 + 0x2
	.byte	W96
	.byte	FINE

@**************** Track 07 ****************************@

song303_7:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 48*song303_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		        c_v+1
	.byte	W92
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 81
	.byte		PAN   , c_v+63
	.byte		VOL   , 28*song303_mvl/mxv
	.byte		N09   , Fn4 , v120
	.byte	W12
	.byte		N03   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v064
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		N09   , Fn4 , v120
	.byte	W12
	.byte		N03   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v064
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		N09   , Fn4 , v120
	.byte	W12
	.byte		N03   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v064
	.byte	W12
	.byte		N09   , Fn4 , v120
	.byte	W12
	.byte		N03   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v064
	.byte	W12
	.byte		N09   , Fn4 , v120
	.byte	W12
	.byte		N03   , Fn4 , v048
	.byte	W12
	.byte	PEND
	.byte		N09   , Fn4 , v120
	.byte	W12
	.byte		N03   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v064
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte		N09   , Fn4 , v120
	.byte	W12
	.byte		N03   , Fn4 , v048
	.byte	W12
	.byte		        Fn4 , v064
	.byte	W12
	.byte		        Fn4 , v048
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song303_7 + 0x40
	.byte	PATT
	 .word	song303_7 + 0x5F
	.byte	PATT
	 .word	song303_7 + 0x40
	.byte	PATT
	 .word	song303_7 + 0x5F
	.byte	PATT
	 .word	song303_7 + 0x40
	.byte	GOTO
	 .word	song303_7 + 0x2
	.byte	W96
	.byte	FINE

@**************** Track 08 ****************************@

song303_8:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 24*song303_mvl/mxv
	.byte		N03   , Fn5 , v072
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W24
	.byte		        As5 
	.byte	W24
	.byte		        An5 
	.byte	W12
	.byte		N03   , Gn5 , v072
	.byte	W12
	.byte		        En5 
	.byte	W84
	.byte	PEND
	.byte		N03   , En5 , v072
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        An5 
	.byte	W24
	.byte		        Gn5 
	.byte	W24
	.byte		        En5 
	.byte	W12
	.byte	PEND
	.byte		        Fn5 
	.byte	W12
	.byte		        An5 
	.byte	W84
	.byte		        Fn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W24
	.byte		        As5 
	.byte	W24
	.byte		        An5 
	.byte	W12
	.byte	PATT
	 .word	song303_8 + 0x1F
	.byte	PATT
	 .word	song303_8 + 0x26
	.byte		N03   , Fn5 , v072
	.byte	W72
	.byte		        Gn5 
	.byte	W24
	.byte		N03   , An5 , v072
	.byte	W48
	.byte		        Cn6 
	.byte	W48
	.byte	PEND
	.byte		        As5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        As5 
	.byte	W03
	.byte		        Cn6 
	.byte	W03
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W48
	.byte		        En5 
	.byte	W48
	.byte		        Gn5 
	.byte	W48
	.byte		N03   , An5 , v072
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	song303_8 + 0x55
	.byte		N03   , As5 , v072
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Dn6 
	.byte	W48
	.byte		        Cn6 
	.byte	W24
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        As5 
	.byte	W48
	.byte	PATT
	 .word	song303_8 + 0x6E
	.byte	GOTO
	 .word	song303_8 + 0x2
	.byte	W96
	.byte	FINE

@**************** Track 09 ****************************@

song303_9:
	.byte		VOL   , 96*song303_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
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
	.byte	W24
	.byte		N12   , As5 , v120
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song303_9 + 0x4
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

song303:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song303_pri	@ Priority
	.byte	song303_rev	@ Reverb.

	.word	song303_grp

	.word	song303_0
	.word	song303_1
	.word	song303_2
	.word	song303_3
	.word	song303_4
	.word	song303_5
	.word	song303_6
	.word	song303_7
	.word	song303_8
	.word	song303_9

	.end
