; The source code found here assembles to main.o.

; If it starts to take a long time to build, it's a good idea
; to split your code and data up into new objects in the makefile.


include "constants.asm"

include "code/rst.asm"
include "code/header.asm"
include "wram.asm"

SelectRomBank_2100 equ $2100

label_4000 equ $4000
label_4001 equ $4001
label_4003 equ $4003
label_4006 equ $4006
label_4029 equ $4029
label_4062 equ $4062
label_406E equ $406E
label_40B3 equ $40B3
label_410D equ $410D
label_4146 equ $4146
label_41C2 equ $41C2
label_41D0 equ $41D0
UseOcarina equ $41FC
label_4200 equ $4200
label_4220 equ $4220
label_4254 equ $4254
label_4287 equ $4287
label_4303 equ $4303
label_434E equ $434E
label_4371 equ $4371
label_43B0 equ $43B0
label_4400 equ $4400
label_4496 equ $4496
label_44E0 equ $44E0
label_4518 equ $4518
label_4520 equ $4520
label_4561 equ $4561
label_4577 equ $4577
label_4581 equ $4581
label_4589 equ $4589
label_45A1 equ $45A1
label_45A9 equ $45A9
label_45C1 equ $45C1
label_45C9 equ $45C9
label_45CA equ $45CA
label_4600 equ $4600
label_4601 equ $4601
label_4616 equ $4616
label_4641 equ $4641
label_4657 equ $4657
label_46AA equ $46AA
label_4741 equ $4741
label_475A equ $475A
label_4760 equ $4760
label_47A0 equ $47A0
label_47C0 equ $47C0
label_47CE equ $47CE
label_47EC equ $47EC
label_47F7 equ $47F7
label_4800 equ $4800
label_482D equ $482D
label_4854 equ $4854
label_485B equ $485B
label_4874 equ $4874
label_4880 equ $4880
label_48B0 equ $48B0
label_48CA equ $48CA
label_48DD equ $48DD
label_48E0 equ $48E0
label_4900 equ $4900
label_4905 equ $4905
label_4910 equ $4910
label_4918 equ $4918
label_4928 equ $4928
label_4938 equ $4938
label_4940 equ $4940
label_4948 equ $4948
label_4950 equ $4950
label_4954 equ $4954
label_4958 equ $4958
label_4985 equ $4985
label_49A0 equ $49A0
label_49BA equ $49BA
label_49BD equ $49BD
label_49D0 equ $49D0
label_49D9 equ $49D9
label_49F1 equ $49F1
label_4A07 equ $4A07
label_4A2C equ $4A2C
label_4A4C equ $4A4C
label_4A76 equ $4A76
label_4A77 equ $4A77
label_4AA8 equ $4AA8
label_4AB3 equ $4AB3
label_4AB7 equ $4AB7
label_4ABC equ $4ABC
label_4AD4 equ $4AD4
label_4B1F equ $4B1F
label_4B4A equ $4B4A
label_4B81 equ $4B81
label_4BD4 equ $4BD4
label_4BE8 equ $4BE8
label_4BFF equ $4BFF
label_4C00 equ $4C00
label_4C0F equ $4C0F
label_4C40 equ $4C40
label_4C47 equ $4C47
label_4C4B equ $4C4B
label_4C98 equ $4C98
label_4CA3 equ $4CA3
label_4CFB equ $4CFB
label_4D00 equ $4D00
label_4D20 equ $4D20
label_4D73 equ $4D73
label_4DF1 equ $4DF1
label_4E3C equ $4E3C
label_4E41 equ $4E41
label_4E51 equ $4E51
label_4F00 equ $4F00
label_4F30 equ $4F30
label_4F68 equ $4F68
label_4F8C equ $4F8C
label_4F9B equ $4F9B
label_4FE8 equ $4FE8
label_5000 equ $5000
label_5021 equ $5021
label_5038 equ $5038
label_504B equ $504B
label_505F equ $505F
label_509A equ $509A
label_50A3 equ $50A3
label_50C3 equ $50C3
label_5118 equ $5118
label_5200 equ $5200
label_5218 equ $5218
label_5257 equ $5257
label_5267 equ $5267
label_5310 equ $5310
label_5347 equ $5347
label_538B equ $538B
label_53CF equ $53CF
label_53E4 equ $53E4
label_53F3 equ $53F3
label_5400 equ $5400
label_5407 equ $5407
label_5449 equ $5449
label_5487 equ $5487
label_54AC equ $54AC
label_54F5 equ $54F5
label_54F8 equ $54F8
label_5526 equ $5526
label_556B equ $556B
label_5570 equ $5570
label_55CA equ $55CA
label_55CF equ $55CF
label_5626 equ $5626
label_563B equ $563B
label_5690 equ $5690
label_5795 equ $5795
label_57E0 equ $57E0
label_5800 equ $5800
label_5838 equ $5838
label_5884 equ $5884
label_588B equ $588B
label_5897 equ $5897
label_5900 equ $5900
label_5904 equ $5904
label_593B equ $593B
label_59DE equ $59DE
label_59EE equ $59EE
label_59FE equ $59FE
label_5A0E equ $5A0E
label_5A1A equ $5A1A
label_5A1E equ $5A1E
label_5A2E equ $5A2E
label_5A59 equ $5A59
label_5C00 equ $5C00
label_5C1A equ $5C1A
label_5C2C equ $5C2C
label_5C63 equ $5C63
label_5C9C equ $5C9C
label_5D50 equ $5D50
label_5D6A equ $5D6A
label_5E67 equ $5E67
label_5EAB equ $5EAB
label_5F02 equ $5F02
label_5F2E equ $5F2E
label_5F4B equ $5F4B
label_5FB3 equ $5FB3
label_6000 equ $6000
label_6080 equ $6080
label_60E0 equ $60E0
label_6100 equ $6100
label_61AA equ $61AA
label_61EE equ $61EE
label_6200 equ $6200
label_6203 equ $6203
label_62CE equ $62CE
label_6302 equ $6302
label_6352 equ $6352
label_6414 equ $6414
label_6472 equ $6472
label_64CA equ $64CA
label_64CC equ $64CC
label_6500 equ $6500
label_6513 equ $6513
label_6524 equ $6524
label_6576 equ $6576
label_6600 equ $6600
label_6700 equ $6700
label_6709 equ $6709
label_6710 equ $6710
label_6749 equ $6749
label_67E5 equ $67E5
label_67EE equ $67EE
label_6800 equ $6800
label_680B equ $680B
label_6818 equ $6818
label_6827 equ $6827
label_6843 equ $6843
label_68E0 equ $68E0
label_6900 equ $6900
label_6930 equ $6930
label_6A22 equ $6A22
label_6A30 equ $6A30
label_6AC1 equ $6AC1
label_6AF8 equ $6AF8
label_6B1D equ $6B1D
label_6BA4 equ $6BA4
label_6BB5 equ $6BB5
label_6BDC equ $6BDC
label_6BDE equ $6BDE
label_6C00 equ $6C00
label_6C24 equ $6C24
label_6C4F equ $6C4F
label_6C6B equ $6C6B
label_6C75 equ $6C75
label_6C77 equ $6C77
label_6C7A equ $6C7A
label_6CA7 equ $6CA7
label_6CC6 equ $6CC6
label_6CCE equ $6CCE
label_6CE3 equ $6CE3
label_6D0E equ $6D0E
label_6D32 equ $6D32
label_6D4A equ $6D4A
label_6D4D equ $6D4D
label_6D52 equ $6D52
label_6DAF equ $6DAF
label_6DEA equ $6DEA
label_6E00 equ $6E00
label_6E10 equ $6E10
label_6E1D equ $6E1D
label_6E28 equ $6E28
label_6E2B equ $6E2B
label_6E50 equ $6E50
label_6E73 equ $6E73
label_6EB3 equ $6EB3
label_7000 equ $7000
label_703E equ $703E
label_705A equ $705A
label_70B3 equ $70B3
label_70D3 equ $70D3
label_70D6 equ $70D6
label_7161 equ $7161
label_725A equ $725A
label_72AB equ $72AB
label_72BA equ $72BA
label_73EB equ $73EB
label_73F3 equ $73F3
label_7405 equ $7405
label_7500 equ $7500
label_753A equ $753A
label_754F equ $754F
label_755B equ $755B
label_7578 equ $7578
label_75A2 equ $75A2
label_75F5 equ $75F5
label_7600 equ $7600
label_763B equ $763B
label_7830 equ $7830
label_783C equ $783C
label_7855 equ $7855
label_785A equ $785A
label_7893 equ $7893
label_78E8 equ $78E8
label_795D equ $795D
label_7964 equ $7964
label_7995 equ $7995
label_7A5F equ $7A5F
label_7A9A equ $7A9A
label_7B77 equ $7B77
label_7C00 equ $7C00
label_7C50 equ $7C50
label_7CAB equ $7CAB
label_7D00 equ $7D00
label_7D7C equ $7D7C
label_7DCC equ $7DCC
label_7DE6 equ $7DE6
label_7E00 equ $7E00
label_7E09 equ $7E09
label_7E45 equ $7E45
label_7EC7 equ $7EC7
label_7EFE equ $7EFE
label_7F00 equ $7F00
label_7F80 equ $7F80
label_7FC5 equ $7FC5
label_8000 equ $8000
label_8200 equ $8200
label_8400 equ $8400
label_8460 equ $8460
label_8480 equ $8480
label_8700 equ $8700
label_8800 equ $8800
label_88E0 equ $88E0
label_89A0 equ $89A0
label_89D0 equ $89D0
label_8C00 equ $8C00
label_8CA0 equ $8CA0
label_8D00 equ $8D00
label_8E00 equ $8E00
label_8F00 equ $8F00
label_9000 equ $9000
label_9040 equ $9040
label_9080 equ $9080
label_90C0 equ $90C0
label_9100 equ $9100
label_9140 equ $9140
label_9200 equ $9200
label_9500 equ $9500
label_9690 equ $9690
label_96C0 equ $96C0
label_9790 equ $9790
label_97F0 equ $97F0
label_9800 equ $9800
label_990E equ $990E
label_A161 equ $A161
label_F7F0 equ $F7F0
label_FAFA equ $FAFA
label_FF44 equ $FF44
label_FF90 equ $FF90
label_FF91 equ $FF91
label_FF92 equ $FF92
label_FF96 equ $FF96
label_FF97 equ $FF97
label_FF98 equ $FF98
label_FF9A equ $FF9A
label_FF9D equ $FF9D
label_FFA1 equ $FFA1
label_FFA2 equ $FFA2
label_FFB4 equ $FFB4
label_FFC0 equ $FFC0
label_FFD7 equ $FFD7
label_FFDA equ $FFDA
;label_FFE4 equ $FFE4
label_FFE7 equ $FFE7
label_FFED equ $FFED
label_FFEE equ $FFEE
label_FFF4 equ $FFF4
label_FFF6 equ $FFF6

section "Main", rom0

Start:
    cp   $11
    jr   nz, label_16E
    ld   a, [$FF4D]
    and  $80
    jr   nz, label_167
    ld   a, $30
    ld   [rJOYP], a
    ld   a, $01
    ld   [rKEY1], a
    xor  a
    ld   [rIE], a
    stop

label_167::
    xor  a

data_0168::
    ld   [rSVBK], a
    ld   a, $01
    jr   label_16F

label_16E::
    xor  a

label_16F::
    ld   [$FFFE], a
    call label_28CF
    ld   sp, $DFFF
    ld   a, $3C
    ld   [SelectRomBank_2100], a
    call label_6A22
    xor  a
    ld   [rBGP], a
    ld   [rOBP0], a
    ld   [rOBP1], a
    ld   hl, $8000
    ld   bc, $1800
    call ZeroMemory
    ld   a, $24
    ld   [SelectRomBank_2100], a
    call label_5C00
    call label_28F7
    call label_29D0
    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_6D32
    call label_FFC0
    call label_410D
    call label_2BCF
    ld   a, $44
    ld   [rSTAT], a
    ld   a, $4F
    ld   [rLYC], a
    ld   a, $01
    ld   [$DBAF], a
    ld   a, $01
    ld   [rIE], a
    call label_46AA
    ld   a, $1F
    ld   [SelectRomBank_2100], a
    call label_4000
    ld   a, $18
    ld   [$FFB5], a
    ei
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4854
    jp   label_35F

label_1DA::
    ld   a, $01
    ld   [$FFFD], a
    ld   a, [$C500]
    and  a
    jr   z, label_1F2
    ld   a, [$DB95]
    cp   $0B
    jr   nz, label_1F2
    ld   a, [$FFE7]
    rrca
    and  $80
    jr   label_1F8

label_1F2::
    ld   hl, $C156
    ld   a, [$FF97]
    add  a, [hl]

label_1F8::
    ld   [rSCY], a
    ld   a, [$FF96]
    ld   hl, $C155
    add  a, [hl]

label_200::
    ld   hl, $C1BF
    add  a, [hl]
    ld   [rSCX], a
    ld   a, [$D6FE]
    and  a
    jr   nz, label_213
    ld   a, [$D6FF]
    cp   $00
    jr   z, label_23D

label_213::
    ld   a, [$DB95]
    cp   $09
    jr   z, label_229
    cp   $06
    jr   c, label_229
    cp   $0B
    jr   nz, label_22F
    ld   a, [$DB96]
    cp   $07
    jr   nc, label_22F

label_229::
    call label_8A4
    call label_8A4

label_22F::
    di
    call label_419
    ei
    call label_8A4
    call label_8A4
    jp   label_35F

label_23D::
    ld   a, [$D6FD]
    and  $7F
    ld   e, a
    ld   a, [$FF40]
    and  $80
    or   e
    ld   [rLCDC], a
    ld   hl, $FFE7
    inc  [hl]
    ld   a, [$DB95]
    cp   $00
    jr   nz, label_264
    ld   a, [$DB96]
    cp   $08
    jr   c, label_264
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_5257

label_264::
    ld   a, [$C17F]
    and  a
    jp   z, label_2D5
    inc  a
    jr   nz, label_279

label_26E::
    ld   a, $17
    ld   [SelectRomBank_2100], a
    call label_48DD
    jp   label_2D5

label_279::
    inc  a
    jr   z, label_26E
    ld   a, $14
    ld   [SelectRomBank_2100], a
    ld   a, [$C180]
    inc  a
    ld   [$C180], a
    cp   $C0
    jr   nz, label_2A0
    ld   a, [$C17F]
    cp   $02
    jr   nz, label_296
    call label_4E51

label_296::
    xor  a
    ld   [$C17F], a
    ld   [$C3CA], a
    jp   label_2D5

label_2A0::
    push af
    cp   $60
    jr   c, label_2B7
    ld   a, [$FFFE]
    and  a
    jr   z, label_2B4
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6CA7
    jr   label_2B7

label_2B4::
    call label_4FE8

label_2B7::
    ld   a, $14
    ld   [SelectRomBank_2100], a
    pop  af
    call label_5038
    call label_8A4
    ld   a, [$DB97]
    ld   [rBGP], a
    ld   a, [$DB98]
    ld   [rOBP0], a
    ld   a, [$DB99]
    ld   [rOBP1], a
    jp   label_35F

label_2D5::
    ld   a, [$DB9A]
    ld   [rWY], a
    ld   a, [$DB97]
    ld   [rBGP], a
    ld   a, [$DB98]
    ld   [rOBP0], a
    ld   a, [$DB99]
    ld   [rOBP1], a
    call label_8A4
    call label_281E
    ld   a, [$FF90]
    ld   hl, $FF91
    or   [hl]
    ld   hl, $C10E
    or   [hl]
    jr   nz, label_35F
    ld   a, [$0003]
    and  a
    jr   z, label_32D
    ld   a, [$D6FC]
    and  a
    jr   nz, label_30D
    ld   a, [$FFCB]
    and  $0F
    jr   z, label_327

label_30D::
    ld   a, [$FFCC]
    and  $40
    jr   z, label_327
    ld   a, [$D6FC]
    xor  $01
    ld   [$D6FC], a
    jr   nz, label_35F
    ld   a, [$C17B]
    xor  $10
    ld   [$C17B], a
    jr   label_35F

label_327::
    ld   a, [$D6FC]
    and  a
    jr   nz, label_35F

label_32D::
    ld   a, [$DB95]
    cp   $0C
    jr   nz, label_33B
    ld   a, [$DB96]
    cp   $02
    jr   c, label_343

label_33B::
    ld   a, $01
    call label_80C
    call label_5F2E

label_343::
    call label_E34
    ld   a, [$FFFE]
    and  a
    jr   z, label_353
    ld   a, $21
    call label_80C
    call label_406E

label_353::
    xor  a
    ld   [$DDD2], a
    ld   a, $01
    call label_80C
    call label_5F4B

label_35F::
    ld   a, $1F
    call label_80C
    call label_7F80
    ld   a, $0C
    call label_B0B
    call label_80C
    xor  a
    ld   [$FFFD], a
    halt

label_374::
    ld   a, [$FFD1]
    and  a
    jr   z, label_374
    xor  a
    ld   [$FFD1], a
    jp   label_1DA

data_037F::
    db   $20, $30, $40, $60, 0

data_0384::
    db   $30, $56, $68, 0

func_0388::
    di
    push af
    push hl
    push de
    push bc
    ld   a, [$FF70]
    ld   c, a
    xor  a
    ld   [rSVBK], a
    ld   a, [$DB95]
    cp   $01
    jr   nz, label_3AD
    ld   a, [$DB96]
    cp   $05
    jr   nz, label_3A6
    ld   a, [$D000]
    jr   label_3A8

label_3A6::
    ld   a, [$FF97]

label_3A8::
    ld   [rSCY], a
    jp   label_3FF

label_3AD::
    cp   $00
    jr   nz, label_3FC

label_3B1::
    ld   a, [$C105]
    ld   e, a
    ld   d, $00
    ld   hl, $C100
    add  hl, de
    ld   a, [hl]
    ld   hl, $FF96
    add  a, [hl]
    ld   [rSCX], a
    ld   a, [$DB96]
    cp   $06
    jr   c, label_3D9
    ld   hl, data_0384
    add  hl, de
    ld   a, [hl]
    ld   [rLYC], a
    ld   a, e
    inc  a
    and  $03
    ld   [$C105], a
    jr   label_3FF

label_3D9::
    ld   hl, data_037F

label_3DC::
    add  hl, de
    ld   a, [hl]
    ld   [rLYC], a
    ld   a, e
    inc  a
    cp   $05
    jr   nz, label_3E7
    xor  a

label_3E7::
    ld   [$C105], a
    nop
    cp   $04
    jr   nz, label_3FF
    ld   a, [$C106]
    ld   [rSCY], a
    cpl
    inc  a
    add  a, $60
    ld   [rLYC], a
    jr   label_3FF

label_3FC::
    xor  a
    ld   [rSCX], a

label_3FF::
    ld   a, c

label_400::
    ld   [rSVBK], a

label_402::
    pop  bc
    pop  de
    pop  hl
    pop  af
    ei
    reti

func_0408::
    push af
    ld   a, $28
    ld   [SelectRomBank_2100], a
    call label_4601
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    pop  af
    reti

label_419::
    ld   a, [$D6FE]
    and  a
    jr   z, label_43A
    ld   [$DDD2], a
    cp   $23
    jr   z, label_42B
    push af
    call label_28CF
    pop  af

label_42B::
    call label_430
    jr   label_45D

label_430::
    ld   e, a
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4657
    jp   [hl]

label_43A::
    call label_28CF
    ld   a, $24
    ld   [SelectRomBank_2100], a
    call label_5C2C
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4577
    ld   a, $08
    ld   [SelectRomBank_2100], a
    call label_292D
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a

label_45D::
    xor  a
    ld   [$D6FF], a
    ld   [$D6FE], a
    ld   a, [$D6FD]
    ld   [rLCDC], a
    ret

data_046A::
    db   7, 9

func_046C::
    push af
    push bc
    push de
    push hl
    ld   a, [$FF70]
    and  $07
    ld   c, a
    xor  a
    ld   [rSVBK], a
    push bc
    di
    ld   a, [$DB95]
    cp   $0D
    jr   nz, label_48D
    ld   a, [$DB96]
    cp   $09
    jr   c, label_48D
    cp   $12
    jp  c, label_577

label_48D::
    ld   a, [$FFFD]
    and  a
    jp   nz, label_569
    ld   a, [$C19F]
    and  $7F
    jr   z, label_4CC
    cp   $01
    jr   z, label_4CC
    cp   $05
    jr   nc, label_4AC
    call label_23E4
    ld   hl, $C19F
    inc  [hl]
    jp   label_569

label_4AC::
    cp   $0A
    jr   nz, label_4B6
    call label_2719
    jp   label_569

label_4B6::
    cp   $0B
    jr   nz, label_4CC
    ld   a, [$C172]
    and  a
    jr   z, label_4C6
    dec  a
    ld   [$C172], a
    jr   label_4CC

label_4C6::
    call label_276D
    jp   label_569

label_4CC::
    ld   a, [$DB95]
    cp   $0E
    jr   c, label_4E4
    ld   a, [$DB96]
    cp   $06
    jr   c, label_52B
    ld   a, $38
    ld   [SelectRomBank_2100], a
    call label_785A
    jr   label_52B

label_4E4::
    ld   a, [$D6FE]
    and  a
    jr   nz, label_569
    ld   a, [$FF90]
    ld   [$FFE8], a
    ld   hl, $FF91
    or   [hl]
    ld   hl, $C10E
    or   [hl]
    jr   z, label_509
    call label_5BC
    ld   a, [$FFE8]
    cp   $08
    jr   nc, label_504

label_501::
    call label_1D2E

label_504::
    call label_FFC0
    jr   label_569

label_509::
    ld   a, [$FFBB]
    and  a
    jr   z, label_521
    dec  a
    ld   [$FFBB], a
    ld   e, a
    ld   d, $00
    ld   hl, data_046A
    add  hl, de
    ld   a, [hl]
    ld   [$D6F8], a
    call label_1ED7
    jr   label_501

label_521::
    ld   a, [$DB95]
    cp   $0D
    jr   z, label_52B
    call label_1B0D

label_52B::
    ld   a, [$FFFE]
    and  a
    jr   z, label_538
    ld   a, $24
    ld   [SelectRomBank_2100], a
    call label_5C1A

label_538::
    ld   de, $D601
    call label_2927
    xor  a
    ld   [$D600], a
    ld   [$D601], a
    ld   [$DC90], a
    ld   [$DC91], a
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_72BA
    call label_FFC0
    ld   a, [$FFFE]
    and  a
    jr   z, label_569
    ld   a, $21
    ld   [SelectRomBank_2100], a
    call label_4000
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a

label_569::
    ei

label_56A::
    pop  bc
    ld   a, c
    ld   [rSVBK], a
    pop  hl
    pop  de
    pop  bc
    ld   a, $01
    ld   [$FFD1], a
    pop  af
    reti

label_577::
    ld   a, [$DBAF]
    push af
    ld   a, [$FFFD]
    and  a
    jr   nz, label_5AB
    call label_FFC0
    ld   a, [$FFFE]
    and  a
    jr   z, label_598
    ld   a, $21
    call label_80C
    call label_4000
    ld   a, $24
    call label_80C
    call label_5C1A

label_598::
    ld   de, $D601
    call label_2927
    xor  a
    ld   [$D600], a
    ld   [$D601], a
    ld   [$DC90], a
    ld   [$DC91], a

label_5AB::
    ld   a, $28
    call label_80C
    call label_4616
    pop  af
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    jr   label_56A

label_5BC::
    ld   a, [$FF90]
    and  a
    jp   z, label_69E
    cp   $07
    jp   z, label_7B0
    cp   $03
    jp   z, $0062
    cp   $04
    jp   z, $006A
    cp   $05
    jp   z, $0072
    cp   $06
    jp   z, $007A
    cp   $08
    jp   nc, label_7D3
    ld   a, [$DBA5]
    and  a
    jp   z, label_656
    ld   a, [$FF90]
    cp   $02
    jp   z, label_826
    ld   a, $0D
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$FF92]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    ld   hl, $9000
    add  hl, bc
    ld   e, l
    ld   d, h
    ld   hl, $5000
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_62F
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4616
    ld   [SelectRomBank_2100], a
    jr   label_641

label_62F::
    ld   a, [$FF94]
    add  a, $50
    ld   h, a
    add  hl, bc
    ld   a, [$FFBB]
    and  a
    jr   z, label_641
    ld   a, [$FF92]
    dec  a
    cp   $02
    jr   c, label_647

label_641::
    ld   bc, $0040
    call CopyData

label_647::
    ld   a, [$FF92]
    inc  a
    ld   [$FF92], a
    cp   $04
    jr   nz, label_655
    xor  a
    ld   [$FF90], a
    ld   [$FF92], a

label_655::
    ret

label_656::
    ld   a, $0F
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$FF92]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    ld   hl, $9000
    add  hl, bc
    ld   e, l
    ld   d, h
    ld   a, [$FF94]
    add  a, $40
    ld   h, a
    ld   l, $00
    add  hl, bc
    ld   bc, $0040
    call CopyData
    ld   a, [$FF92]
    inc  a
    ld   [$FF92], a
    cp   $08
    jr   nz, label_69D
    xor  a
    ld   [$FF90], a
    ld   [$FF92], a

label_69D::
    ret

label_69E::
    ld   a, [$FFFE]
    and  a
    jr   z, label_6CB
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_6CB
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_475A
    xor  a
    ld   [$C10E], a
    ld   [$C10F], a
    ld   hl, $9000
    ld   bc, $0000
    call label_4616
    ld   c, $90
    ld   b, h
    ld   h, $00
    call label_A13
    jr   label_738

label_6CB::
    ld   a, [$FF91]
    and  a
    jp   z, label_73E
    ld   a, [$C197]
    ld   e, a
    ld   d, $00
    ld   hl, $C193
    add  hl, de
    ld   a, [hl]
    push af
    and  $3F
    ld   d, a
    ld   e, $00
    pop  af
    swap a
    rra
    rra
    and  $03
    ld   c, a
    ld   b, $00
    ld   hl, data_2E6F
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_6F7
    call label_B0B

label_6F7::
    ld   [SelectRomBank_2100], a
    ld   a, [$FF93]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    ld   hl, $4000
    add  hl, bc
    add  hl, de
    push hl
    ld   a, [$C197]
    ld   d, a
    ld   hl, $8400
    add  hl, bc
    add  hl, de
    ld   e, l
    ld   d, h
    pop  hl
    ld   bc, $0040
    call CopyData
    ld   a, [$FF93]
    inc  a
    ld   [$FF93], a
    cp   $04
    jr   nz, label_73D

label_738::
    xor  a
    ld   [$FF91], a
    ld   [$FF93], a

label_73D::
    ret

label_73E::
    ld   a, [$C10D]
    ld   e, a
    ld   d, $00
    ld   hl, $C193
    add  hl, de
    ld   a, [hl]
    push af
    and  $3F
    ld   d, a
    ld   e, $00
    pop  af
    swap a
    rra
    rra
    and  $03
    ld   c, a
    ld   b, $00
    ld   hl, data_2E6F
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_764
    call label_B0B

label_764::
    ld   [SelectRomBank_2100], a
    ld   a, [$C10F]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    ld   hl, $4000
    add  hl, bc
    add  hl, de
    push hl
    ld   a, [$C10D]
    ld   d, a
    ld   hl, $8400
    add  hl, bc
    add  hl, de
    ld   e, l
    ld   d, h
    pop  hl
    ld   bc, $0040
    call CopyData
    ld   a, [$C10F]
    inc  a
    ld   [$C10F], a
    cp   $04
    jr   nz, label_7AF
    xor  a
    ld   [$C10E], a
    ld   [$C10F], a

label_7AF::
    ret

label_7B0::
    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_6BB5
    jp   $008B

data_07BB::
    db   $60, $69, $A0, $69, $C0, $69, 0, $42, $40, $42, $60, $42

data_07C7::
    db   0, $82, $40, $82, $60, $82, 0, $82, $40, $82, $60, $82

label_7D3::
    sub  a, $08
    sla  a
    ld   e, a
    ld   d, $00
    ld   hl, data_07BB
    add  hl, de
    push hl
    ld   hl, data_07C7
    add  hl, de
    ld   e, [hl]
    inc  hl
    ld   d, [hl]
    pop  hl
    ld   a, [hli]
    ld   h, [hl]
    ld   l, a
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   bc, $0040
    call CopyData
    ld   a, [$FF90]
    cp   $0A
    jr   z, label_808
    cp   $0D

label_800::
    jr   z, label_808

label_802::
    ld   a, [$FF90]
    inc  a

label_805::
    ld   [$FF90], a
    ret

label_808::
    xor  a
    ld   [$FF90], a
    ret

label_80C::
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    ret

label_813::
    call label_B0B

label_816::
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    ret

label_81D::
    push af
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    pop  af
    ret

label_826::
    ld   a, $12
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$FF92]
    cp   $08
    jr   c, label_873
    jr   nz, label_843
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_6843

label_83E::
    ld   hl, $FF92
    inc  [hl]
    ret

label_843::
    cp   $09
    jr   nz, label_854
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_6827
    ld   hl, $FF92
    inc  [hl]
    ret

label_854::
    cp   $0A
    jr   nz, label_865
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_680B
    ld   hl, $FF92
    inc  [hl]
    ret

label_865::
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_67E5
    xor  a
    ld   [$FF90], a
    ld   [$FF92], a
    ret

label_873::
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    ld   hl, $8D00
    add  hl, bc
    ld   e, l
    ld   d, h
    ld   hl, $7E00
    add  hl, bc
    ld   bc, $0040
    call CopyData
    ld   a, [$FF92]
    inc  a
    ld   [$FF92], a
    ret

label_8A4::
    ld   a, $1F
    call label_80C
    call label_4006
    ld   a, [$FFF3]
    and  a
    jr   nz, label_8D6
    ld   a, [$C10B]
    and  a
    jr   z, label_8C6
    cp   $02
    jr   nz, label_8C3
    ld   a, [$FFE7]
    and  $01
    jr   nz, label_8D6
    jr   label_8C6

label_8C3::
    call label_8C6

label_8C6::
    ld   a, $1B
    call label_80C
    call label_4006
    ld   a, $1E
    call label_80C
    call label_4006

label_8D6::
    ret
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6A30

label_8DF::
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6AC1
    jr   label_8DF
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6BA4
    jr   label_8DF
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6BDC
    jr   label_973
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6C00
    jr   label_917
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6C24

label_917::
    ld   a, $01
    ld   [SelectRomBank_2100], a
    ret
    push af
    ld   b, $00
    ld   a, [$DDD8]
    sla  a
    rl   b
    sla  a
    rl   b
    ld   c, a
    jr   label_92F
    push af

label_92F::
    ld   a, $1A
    ld   [SelectRomBank_2100], a
    call label_6576
    ld   a, [$FFDF]
    ld   [SelectRomBank_2100], a
    ld   hl, $DC91
    ld   a, [$DC90]
    ld   e, a
    add  a, $0A
    ld   [$DC90], a
    ld   d, $00
    add  hl, de
    ld   a, [$FFE0]
    ld   d, a
    ld   a, [$FFE1]
    ld   e, a
    ld   a, [$FFCF]
    ldi  [hl], a
    ld   a, [$FFD0]
    ldi  [hl], a
    ld   a, $81
    ldi  [hl], a
    ld   a, [de]
    ldi  [hl], a
    inc  de
    inc  de
    ld   a, [de]
    ldi  [hl], a
    dec  de
    ld   a, [$FFCF]
    ldi  [hl], a
    ld   a, [$FFD0]
    inc  a
    ldi  [hl], a
    ld   a, $81
    ldi  [hl], a
    ld   a, [de]
    ldi  [hl], a
    inc  de
    inc  de
    ld   a, [de]
    ldi  [hl], a
    xor  a
    ldi  [hl], a

label_973::
    pop  af
    ld   [SelectRomBank_2100], a
    ret
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6D0E
    jr   label_973

label_983::
    ld   a, $1A
    ld   [SelectRomBank_2100], a
    call label_6710
    ld   a, [$FFDF]
    ld   [SelectRomBank_2100], a
    ld   a, [$FFE0]
    ld   h, a
    ld   a, [$FFE1]
    ld   l, a
    ld   a, [hl]
    inc  de
    ret
    push af
    push bc
    call label_983
    ld   [$FFD7], a
    pop  bc
    call label_983
    ld   [$FFD8], a
    ld   a, [$DC90]
    ld   c, a
    ld   b, $00
    add  a, $05
    ld   [$DC90], a
    ld   hl, $DC91
    add  hl, bc
    ld   a, [$FFCF]
    ldi  [hl], a
    ld   a, [$FFD0]
    ldi  [hl], a
    ld   a, $01
    ldi  [hl], a
    ld   a, [$FFD7]
    ldi  [hl], a
    ld   a, [$FFD8]
    ldi  [hl], a
    xor  a
    ldi  [hl], a
    jr   label_973
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4985
    jr   label_973
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4518
    jr   label_973
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4874
    jr   label_973
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4954
    jp   label_973
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_482D
    jp   label_973

label_A01::
    push hl
    ld   l, $00
    ld   e, l
    ld   h, b
    ld   a, c
    add  a, $80
    ld   d, a
    ld   bc, $0100
    call CopyData
    pop  hl
    jr   label_A2D

label_A13::
    ld   [SelectRomBank_2100], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_A01
    ld   a, b
    ld   [rHDMA1], a
    ld   a, $00
    ld   [rHDMA2], a
    ld   a, c
    ld   [rHDMA3], a
    ld   a, $00
    ld   [rHDMA4], a
    ld   a, $0F
    ld   [rHDMA5], a

label_A2D::
    ld   a, h
    ld   [SelectRomBank_2100], a
    ret

label_A32::
    push af
    ld   a, $35
    ld   [SelectRomBank_2100], a
    ld   hl, $4F00
    ld   de, $DCC0
    ld   bc, $0020
    call CopyData
    jp   label_973

label_A47::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_505F
    jp   label_973

label_A53::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_4F9B
    jp   label_973

label_A5F::
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_3CE6
    jp   label_973

label_A6B::
    push af
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_5A2E
    jp   label_973

label_A77::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_4F68
    jp   label_973

label_A83::
    push af
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6D52
    jp   label_973

label_A8F::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_4BE8
    jp   label_973

label_A9B::
    push af
    ld   a, $0F
    call label_80C
    call label_2321
    jp   label_973

label_AA7::
    push af
    ld   a, $36
    call label_80C
    call label_705A

label_AB0::
    pop  af
    call label_80C
    ret

label_AB5::
    push af
    ld   a, $24
    ld   [SelectRomBank_2100], a
    call label_5C1A
    ld   de, $D601
    call label_2927
    jr   label_AB0

label_AC6::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_703E
    jp   label_973

label_AD2::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_70D6
    jp   label_973

label_ADE::
    push af
    ld   a, $36
    call label_80C
    call label_4A77
    jp   label_973

label_AEA::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_4A4C
    jp   label_973

label_AF6::
    push af
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_7161
    jp   label_973

label_B02::
    ld   a, $3D
    ld   [SelectRomBank_2100], a
    call label_4029
    ret

label_B0B::
    push bc
    ld   b, a
    ld   a, [$FFFE]
    and  a
    jr   z, label_B17
    ld   a, b
    or   $20
    pop  bc
    ret

label_B17::
    ld   a, b
    pop  bc
    ret
    ld   a, [$FFD7]
    ld   [SelectRomBank_2100], a
    ld   a, $02
    ld   [rSVBK], a
    call CopyData
    xor  a
    ld   [rSVBK], a
    ld   a, $20
    ld   [SelectRomBank_2100], a
    ret

label_B2F::
    ld   [$FFD9], a
    ld   a, [$FFFE]
    and  a
    ret  z
    ld   a, [$DBA5]
    and  a
    ret  nz
    push bc
    ld   a, [$FFD9]
    and  $80
    jr   nz, label_B4B
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6E50
    jr   c, label_B54

label_B4B::
    ld   b, [hl]
    ld   a, $02
    ld   [rSVBK], a
    ld   [hl], b
    xor  a
    ld   [rSVBK], a

label_B54::
    ld   a, [$FFD9]
    and  $7F
    ld   [SelectRomBank_2100], a
    pop  bc
    ret
    ld   [SelectRomBank_2100], a
    call CopyData
    ld   a, $28
    ld   [SelectRomBank_2100], a
    ret
    push hl
    ld   [SelectRomBank_2100], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_B80
    ld   de, data_0168
    add  hl, de
    ld   a, $01
    ld   [rVBK], a
    call label_B96
    xor  a
    ld   [rVBK], a

label_B80::
    pop  hl
    push hl
    call label_B96
    pop  hl
    ld   a, [$DB95]
    cp   $0D
    jr   nz, label_B90
    call label_BB5

label_B90::
    ld   a, [$FFE6]
    ld   [SelectRomBank_2100], a
    ret

label_B96::
    ld   de, $9800

label_B99::
    ld   a, [hli]
    ld   [de], a
    inc  e
    ld   a, e
    and  $1F
    cp   $14
    jr   nz, label_B99
    ld   a, e
    add  a, $0C
    ld   e, a
    ld   a, d
    adc  a, $00
    ld   d, a
    cp   $9A
    jr   nz, label_B99
    ld   a, e
    cp   $40
    jr   nz, label_B99
    ret

label_BB5::
    ld   bc, data_0168
    ld   de, $D000
    jp   CopyData
    push af
    call label_2BCF
    jp   label_973
    ld   a, [$D16A]
    ld   [SelectRomBank_2100], a

label_BCB::
    ld   a, [hli]
    ld   [de], a
    inc  de
    dec  b
    jr   nz, label_BCB
    ld   a, $28
    ld   [SelectRomBank_2100], a
    ret
    ld   a, [$DE01]
    ld   [SelectRomBank_2100], a
    call label_BE7
    ld   a, [$DE04]
    ld   [SelectRomBank_2100], a
    ret

label_BE7::
    ld   a, [$DE02]
    ld   h, a
    ld   a, [$DE03]
    ld   l, a
    jp   [hl]
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_1A50
    jp   label_81D

label_BFB::
    ld   hl, $C450
    jr   label_C08

label_C00::
    ld   hl, $C2F0
    jr   label_C08

label_C05::
    ld   hl, $C2E0

label_C08::
    add  hl, bc
    ld   a, [hl]
    and  a
    ret
    ld   a, $AF
    call label_3B86
    ld   a, [$FF98]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$FF99]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ret

label_C20::
    ld   a, $1D
    ld   [$FFF2], a
    ret
    ld   hl, $4641
    jr   label_C2D
    ld   hl, $4741

label_C2D::
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    add  hl, bc
    ld   a, [hl]
    ld   hl, SelectRomBank_2100
    ld   [hl], $01
    ret

label_C3A::
    ld   a, $0C
    ld   [SelectRomBank_2100], a
    ld   bc, $0040
    call CopyData
    ld   a, $01
    ld   [SelectRomBank_2100], a
    ret

label_C4B::
    ld   hl, $FFF4
    ld   [hl], $0C

label_C50::
    ld   hl, $C502
    ld   [hl], $04
    ret

label_C56::
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_C5F
    dec  [hl]

label_C5F::
    ret

label_C60::
    push af
    ld   a, [$C18F]
    and  a
    jr   nz, label_C7B
    ld   [$C1CF], a
    inc  a
    ld   [$C18F], a
    ld   [$C5A6], a
    ld   a, [$C19D]
    and  a
    jr   nz, label_C7B
    ld   a, $02
    ld   [$FFF2], a

label_C7B::
    pop  af
    ret

label_C7D::
    ld   a, $30
    ld   [$FFA8], a
    jr   label_C9A
    ld   a, $30
    ld   [$FFA8], a
    jr   label_C9E
    ld   a, [$D401]
    cp   $01
    jr   nz, label_C7D
    ld   a, [$DBA5]
    and  a
    jr   z, label_C7D
    ld   a, $01
    ld   [$FFBC], a

label_C9A::
    ld   a, $06
    ld   [$FFF4], a

label_C9E::
    ld   a, $03
    ld   [$C11C], a
    xor  a
    ld   [$C16B], a
    ld   [$C16C], a
    ld   [$D478], a
    and  a
    ret

label_CAF::
    xor  a
    ld   [WR0_IsUsingSpinAttack], a
    ld   [$C122], a

label_CB6::
    xor  a
    ld   [$C14B], a
    ld   [$C14A], a
    ret

label_CBE::
    ld   a, [$FF9F]
    ld   [$FF98], a
    ld   a, [$FFA0]
    ld   [$FF99], a
    ret

label_CC7::
    push af
    ld   e, $0F
    ld   d, $00

label_CCC::
    ld   hl, $C510
    add  hl, de
    ld   a, [hl]
    and  a
    jr   z, label_CEC
    dec  e
    ld   a, e
    cp   $FF
    jr   nz, label_CCC
    ld   hl, $C5C0
    dec  [hl]
    ld   a, [hl]
    cp   $FF
    jr   nz, label_CE8
    ld   a, $0F
    ld   [$C5C0], a

label_CE8::
    ld   a, [$C5C0]
    ld   e, a

label_CEC::
    pop  af
    ld   hl, $C510
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C540
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD7]
    ld   hl, $C530
    add  hl, de
    ld   [hl], a
    ld   hl, $C520
    add  hl, de
    ld   [hl], $0F
    ret

label_D07::
    ld   a, [$C140]
    sub  a, $08
    ld   [$FFD7], a
    ld   a, [$C142]
    sub  a, $08
    ld   [$FFD8], a

label_D15::
    ld   a, $07
    ld   [$FFF2], a
    ld   a, $05
    jp   label_CC7
    ld   a, $20
    ld   [SelectRomBank_2100], a
    ld   a, [$DBA5]
    and  a
    jr   z, label_D59
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    ld   hl, $6EB3
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_D3C
    ld   hl, $70B3
    jr   label_D45

label_D3C::
    cp   $1A
    jr   nc, label_D45
    cp   $06
    jr   c, label_D45
    inc  h

label_D45::
    add  hl, de
    ld   a, [$FF94]
    ld   e, a
    ld   a, [hl]
    cp   e
    jr   z, label_D57
    ld   [$FF94], a
    cp   $FF
    jr   z, label_D57
    ld   a, $01
    ld   [$FF90], a

label_D57::
    jr   label_D91

label_D59::
    ld   a, [$FFF6]
    cp   $07
    jr   nz, label_D60
    inc  a

label_D60::
    ld   d, a
    srl  a
    srl  a
    and  $F8
    ld   e, a
    ld   a, d
    srl  a
    and  $07
    or   e
    ld   e, a
    ld   d, $00
    ld   hl, $6E73
    add  hl, de
    ld   a, [$FF94]
    ld   e, a
    ld   a, [hl]
    cp   e
    jr   z, label_D91
    cp   $0F
    jr   z, label_D91
    cp   $1A
    jr   nz, label_D8B
    ld   a, [$FFF6]
    cp   $37
    jr   nz, label_D91
    ld   a, [hl]

label_D8B::
    ld   [$FF94], a
    ld   a, $01
    ld   [$FF90], a

label_D91::
    xor  a
    ld   [$FFD7], a
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    ld   hl, $70D3
    ld   a, [$DBA5]
    ld   d, a
    ld   a, [$FFF7]
    cp   $1A
    jr   nc, label_DAB
    cp   $06
    jr   c, label_DAB
    inc  d

label_DAB::
    add  hl, de
    ld   e, [hl]
    ld   a, d
    and  a
    jr   z, label_DC1
    ld   a, [$FFF7]
    cp   $10
    jr   nz, label_DDB
    ld   a, [$FFF6]
    cp   $B5
    jr   nz, label_DDB
    ld   e, $3D
    jr   label_DDB

label_DC1::
    ld   a, e
    cp   $23
    jr   nz, label_DCE
    ld   a, [$D8C9]
    and  $20
    jr   z, label_DCE
    inc  e

label_DCE::
    ld   a, e
    cp   $21
    jr   nz, label_DDB
    ld   a, [$D8FD]
    and  $20
    jr   z, label_DDB
    inc  e

label_DDB::
    ld   d, $00
    sla  e
    rl   d
    sla  e
    rl   d
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_DF1
    ld   a, $01
    ld   [$FF91], a
    jr   label_E31

label_DF1::
    ld   hl, $73F3
    ld   a, [$DBA5]
    and  a
    jr   z, label_DFD
    ld   hl, $763B

label_DFD::
    add  hl, de
    ld   d, $00
    ld   bc, $C193

label_E03::
    ld   e, [hl]
    ld   a, [bc]
    cp   e
    jr   z, label_E29
    ld   a, e
    cp   $FF
    jr   z, label_E29
    ld   [bc], a
    ld   a, [$FFD7]
    and  a
    jr   z, label_E1E
    ld   a, d
    ld   [$C10D], a
    ld   a, $01
    ld   [$C10E], a
    jr   label_E29

label_E1E::
    inc  a
    ld   [$FFD7], a
    ld   a, d
    ld   [$C197], a
    ld   a, $01
    ld   [$FF91], a

label_E29::
    inc  hl
    inc  bc
    inc  d
    ld   a, d
    cp   $04
    jr   nz, label_E03

label_E31::
    jp   label_81D

label_E34::
    ld   a, [$DB95]
    cp   $07
    jr   c, label_E85
    cp   $0B
    jr   nz, label_E46
    ld   a, [$DB96]
    cp   $07
    jr   nz, label_E85

label_E46::
    ld   a, [$C16B]
    cp   $04
    jr   nz, label_E85
    ld   a, [$C19F]
    ld   hl, $C167
    or   [hl]
    ld   hl, $C124
    or   [hl]
    jr   nz, label_E85
    ld   a, [$DB95]
    cp   $0C
    jr   nc, label_E85
    ld   a, [$FFCB]
    cp   $F0
    jr   nz, label_E85
    ld   a, [$D474]
    and  a
    jr   nz, label_E85
    ld   a, [$D464]
    and  a
    jr   nz, label_E85
    xor  a
    ld   [$C16B], a
    ld   [$C16C], a
    ld   [$C19F], a
    ld   [$DB96], a
    ld   a, $06
    ld   [$DB95], a

label_E85::
    ld   a, [$DB95]
    rst  0

label_E89::
    db   $DF ; ¯
    db    $E
    db   $E2 ; G
    db    $E
    db    $E
    db    $F
    db   $11
    db    $F
    db   $14
    db    $F
    db   $17
    db    $F
    db   $D7 ; +
    db    $E
    db   $D1 ; -
    db    $E
    db   $C5 ; +
    db    $E
    db   $CB ; -
    db    $E
    db   $BF ; +
    db    $E
    db   $1A
    db    $F
    db   $2D ; -
    db    $F
    db   $35 ; 5
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $40 ; @
    db    $F
    db   $CD ; -
    db   $F8 ; °
    db   $6A ; j
    db   $C3 ; +
    db   $1A
    db   $10
    db   $CD ; -
    db   $EE ; e
    db   $67 ; g
    db   $C3 ; +
    db   $1A
    db   $10
    db   $CD ; -
    db     3
    db   $62 ; b
    db   $C3 ; +
    db   $1A
    db   $10
    db   $CD ; -
    db   $26 ; &
    db   $56 ; V
    db   $C3 ; +
    db   $1A
    db   $10
    db   $3E ; >
    db     1
    db   $CD ; -
    db    $C
    db     8
    db   $C3 ; +
    db     0
    db   $40 ; @
    db   $C3 ; +
    db   $1D
    db   $6E ; n
    db   $3E ; >
    db   $17
    db   $CD ; -
    db    $C
    db     8
    db   $CD ; -
    db   $B7 ; +
    db   $4A ; J
    db   $C3 ; +
    db   $1A
    db   $10
    db   $3E ; >
    db     3
    db   $EA ; O
    db     0
    db   $21 ; !
    db   $3E ; >
    db   $17
    db   $F5 ; )
    db   $CD ; -
    db   $8D ; ì
    db   $39 ; 9
    db   $F1 ; ±
    db   $C3 ; +
    db    $C
    db     8
    db   $3E ; >
    db     3
    db   $EA ; O
    db     0
    db   $21 ; !
    db   $3E ; >
    db     1
    db   $18
    db   $EF ; n
    db   $3E ; >
    db     3
    db   $EA ; O
    db     0
    db   $21 ; !
    db   $3E ; >
    db     2
    db   $18
    db   $E6 ; µ
    db   $C3 ; +
    db   $CE ; +
    db   $47 ; G
    db   $C3 ; +
    db     7
    db   $4A ; J
    db   $C3 ; +
    db   $FB ; v
    db   $4C ; L
    db   $C3 ; +
    db   $8C ; î
    db   $4F ; O
    db   $3E ; >
    db   $14
    db   $EA ; O
    db     0
    db   $21 ; !
    db   $CD ; -
    db   $4B ; K
    db   $4C ; L
    db   $CD ; -
    db   $BC ; +
    db   $4A ; J
    db   $3E ; >
    db     1
    db   $CD ; -
    db    $C
    db     8
    db   $C3 ; +
    db   $71 ; q
    db   $43 ; C
    db   $3E ; >
    db   $20
    db   $CD ; -
    db    $C
    db     8
    db   $C3 ; +
    db     4
    db   $59 ; Y
    db   $3E ; >
    db   $28 ; (
    db   $CD ; -
    db    $C
    db     8
    db   $CD ; -
    db     0
    db   $40 ; @
    db   $C3 ; +
    db   $1A
    db   $10
    db   $3E ; >
    db   $37 ; 7
    db   $CD ; -
    db    $C
    db     8
    db   $C3 ; +
    db     0
    db   $40 ; @
    db   $3E ; >
    db     2
    db   $CD ; -
    db    $C
    db     8
    db   $FA ; ·
    db   $9F ; ƒ
    db   $C1 ; -
    db   $A7 ; º
    db   $20
    db   $3C ; <
    db   $21 ; !
    db   $B4 ; ¦
    db   $FF
    db   $7E ; ~
    db   $A7 ; º
    db   $28 ; (
    db   $1B
    db   $FA ; ·
    db   $9A ; Ü
    db   $DB ; ¦
    db   $FE ; ¦
    db   $80 ; Ç
    db   $20
    db   $14
    db   $FA ; ·
    db   $4F ; O
    db   $C1 ; -
    db   $A7 ; º
    db   $20
    db    $E
    db   $35 ; 5
    db   $20
    db    $B
    db   $3E ; >
    db     1
    db   $EA ; O
    db     0
    db   $21 ; !
    db   $CD ; -
    db   $EE ; e
    db   $61 ; a
    db   $CD ; -
    db   $1D
    db     8
    db   $FA ; ·
    db   $9F ; ƒ
    db   $C1 ; -
    db   $A7 ; º
    db   $20
    db   $14
    db   $FA ; ·
    db   $BC ; +
    db   $C1 ; -
    db   $A7 ; º
    db   $28 ; (
    db    $E
    db   $21 ; !
    db   $A1 ; í
    db   $FF
    db   $36 ; 6
    db     2
    db   $3D ; =
    db   $EA ; O
    db   $BC ; +
    db   $C1 ; -
    db   $20
    db     3
    db   $C3 ; +
    db   $7D ; }
    db    $C
    db   $21 ; !
    db   $C7 ; ¦
    db   $DB ; ¦
    db   $7E ; ~
    db   $A7 ; º
    db   $28 ; (
    db     1
    db   $35 ; 5
    db   $F0 ; =
    db   $98 ; ÿ
    db   $E0 ; a
    db   $9F ; ƒ
    db   $F0 ; =
    db   $99 ; Ö
    db   $E0 ; a
    db   $A0 ; á
    db   $21 ; !
    db   $A2 ; ó
    db   $FF
    db   $96 ; û
    db   $E0 ; a
    db   $B3 ; ¦
    db   $CD ; -
    db   $E0 ; a
    db   $60 ; `
    db   $AF ; »
    db   $EA ; O
    db   $40 ; @
    db   $C1 ; -
    db   $EA ; O
    db   $3C ; <
    db   $C1 ; -
    db   $EA ; O
    db   $3B ; ;
    db   $C1 ; -
    db   $21 ; !
    db   $1D
    db   $C1 ; -
    db   $CB ; -
    db   $BE ; +
    db   $21 ; !
    db   $1E
    db   $C1 ; -
    db   $CB ; -
    db   $BE ; +
    db   $CD ; -
    db   $3B ; ;
    db   $59 ; Y
    db   $3E ; >
    db     2
    db   $CD ; -
    db    $C
    db     8
    db   $CD ; -
    db   $E8 ; F
    db   $78 ; x
    db   $CD ; -
    db   $33 ; 3
    db   $10
    db   $FA ; ·
    db   $5C ; \
    db   $C1 ; -
    db   $EA ; O
    db   $CF ; -
    db   $C3 ; +
    db   $3E ; >
    db   $20
    db   $EA ; O
    db     0
    db   $21 ; !
    db   $CD ; -
    db   $1F
    db   $4B ; K
    db   $3E ; >
    db   $19
    db   $CD ; -
    db    $C
    db     8
    db   $CD ; -
    db   $9A ; Ü
    db   $7A ; z
    db   $CD ; -
    db   $8D ; ì
    db   $39 ; 9
    db   $3E ; >
    db     2
    db   $CD ; -
    db    $C
    db     8
    db   $CD ; -
    db   $87 ; ç
    db   $54 ; T
    db   $21 ; !
    db     1
    db   $D6 ; +
    db   $F0 ; =
    db   $E7 ; t
    db   $E6 ; µ
    db     3
    db   $B6 ; ¦
    db   $20
    db   $1D
    db   $FA ; ·
    db   $1C
    db   $C1 ; -
    db   $FE ; ¦
    db     2
    db   $30 ; 0
    db   $16
    db    $E
    db     1
    db     6
    db     0
    db   $1E
    db     0
    db   $F0 ; =
    db   $E7 ; t
    db   $E6 ; µ
    db     4
    db   $28 ; (
    db     2
    db    $D
    db   $1D
    db   $3E ; >
    db   $20
    db   $EA ; O
    db     0
    db   $21 ; !
    db   $CD ; -
    db   $9C ; £
    db   $5C ; \
    db   $3E ; >
    db   $14
    db   $CD ; -
    db    $C
    db     8
    db   $CD ; -
    db   $F8 ; °
    db   $54 ; T
    db   $3E ; >
    db    $F
    db   $CD ; -
    db    $C
    db     8
    db   $CD ; -
    db   $21 ; !
    db   $23 ; #
    db   $F0 ; =
    db   $FE ; ¦
    db   $A7 ; º
    db   $C8 ; +
    db   $3E ; >
    db   $24 ; $
    db   $CD ; -
    db    $C
    db     8
    db   $C3 ; +
    db     5

data_102D::
    db   $74 ; t
    db     8
    db    $E
    db   $99 ; Ö
    db   $28 ; (
    db   $EC ; 8

label_1033::
    ld   a, [$FF99]
    ld   hl, $FFA2
    sub  a, [hl]
    ld   [$C145], a
    ld   a, [$C1A9]
    and  a
    jr   z, label_107F
    ld   a, [$C19F]
    and  a
    jr   nz, label_106D
    ld   hl, $C1AA
    dec  [hl]
    ld   a, [hl]
    cp   $02
    jr   nz, label_1061
    ld   a, [$C1A9]
    ld   e, a
    ld   d, $00
    ld   hl, data_102D
    add  hl, de
    ld   a, [hl]
    call label_2385
    ld   a, $01

label_1061::
    and  a
    jr   nz, label_106D
    xor  a
    ld   [$C1A9], a
    ld   [$C1A8], a
    jr   label_107F

label_106D::
    ld   a, [$C1A9]
    ld   [$C1A8], a
    dec  a
    rst  0
    cp   h
    ld   d, c
    rst  0
    ld   d, c
    rst  0
    ld   d, c
    rst  0
    ld   d, c
    cp   h
    ld   d, c

label_107F::
    ld   a, [$FFCB]
    and  $B0
    jr   nz, label_10DB
    ld   a, [$FFCB]
    and  $40
    jr   z, label_10DB
    ld   a, [$D45F]
    inc  a
    ld   [$D45F], a
    cp   $04
    jr   c, label_10DF
    ld   a, [$FFA1]
    cp   $02
    jr   z, label_10DB
    ld   a, [$FF9D]
    cp   $FF
    jr   z, label_10DB
    ld   a, [$C11C]
    cp   $02
    jr   nc, label_10DB
    ld   a, [$C19F]
    ld   hl, $C167
    or   [hl]
    ld   hl, $C124
    or   [hl]
    jr   nz, label_10DB
    ld   a, [$D464]
    and  a
    jr   nz, label_10DB
    xor  a
    ld   [$C16B], a
    ld   [$C16C], a
    ld   [$DB96], a
    ld   a, $07
    ld   [$DB95], a
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_755B
    call label_1D2E
    call label_398D
    pop  af
    ret

label_10DB::
    xor  a
    ld   [$D45F], a

label_10DF::
    ld   a, [$FFB7]
    and  a
    jr   z, label_10E7
    dec  a
    ld   [$FFB7], a

label_10E7::
    ld   a, [$FFB6]
    and  a
    jr   z, label_10EF
    dec  a
    ld   [$FFB6], a

label_10EF::
    ld   a, [$C19F]
    and  a
    jp   nz, label_1794
    ld   a, [$C124]
    and  a
    jp   nz, label_114F
    ld   a, [$C11C]
    cp   $07
    jr   z, label_1138
    ld   a, [$DB5A]
    ld   hl, $C50A
    or   [hl]
    ld   hl, $C14F
    or   [hl]
    jr   nz, label_1135
    ld   a, $07
    ld   [$C11C], a
    ld   a, $BF
    ld   [$FFB7], a
    ld   a, $10
    ld   [$C3CC], a
    xor  a

label_1120::
    ld   [$DBC7], a
    ld   [$FF9C], a
    ld   [$DDD6], a
    ld   [$DDD7], a
    ld   [$D464], a
    call label_27F2
    ld   a, $08
    ld   [$FFF3], a

label_1135::
    ld   a, [$C11C]

label_1138::
    rst  0
    ld   h, l
    ld   de, $4F30
    ld   h, b
    ld   c, c
    scf
    jr   label_1120
    add  hl, de
    ld   l, l
    ld   c, [hl]
    call nc, label_5D50
    ld   de, $5267
    ld   d, l
    ld   de, $50A3

label_114F::
    call label_1794
    jp   label_1D2E
    ld   a, $19
    call label_80C
    jp   $5D6A
    ld   a, $01
    call label_80C
    jp   $41C2
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_725A
    and  a
    ret  z
    ld   a, $02
    call label_80C
    jp   $4287
    ld   a, [$C50A]
    ld   hl, $C167
    or   [hl]
    ld   hl, $C1A4
    or   [hl]
    ret  nz
    ld   a, [$C14A]
    and  a
    jr   z, label_11BC
    ld   a, [WR1_BButtonSlot]
    cp   $01
    jr   z, label_11AA
    ld   a, [WR1_AButtonSlot]
    cp   $01
    jr   z, label_11AA
    ld   a, [WR1_BButtonSlot]
    cp   $04
    jr   z, label_11A5
    ld   a, [WR1_AButtonSlot]
    cp   $04
    jr   nz, label_11BA

label_11A5::
    call label_1340
    jr   label_11BA

label_11AA::
    ld   a, [$C137]
    dec  a
    cp   $04
    jr   c, label_11BA
    ld   a, $05
    ld   [$C137], a
    ld   [$C16A], a

label_11BA::
    jr   label_11C3

label_11BC::
    xor  a
    ld   [WR0_IsUsingShield], a
    ld   [WR0_ShieldLevel], a

label_11C3::
    ld   a, [$C117]
    and  a
    jp   nz, label_12ED
    ld   a, [$C15C]
    and  a
    jp   nz, label_12ED
    ld   a, [$C137]
    and  a
    jr   z, label_11E2
    cp   $03
    jr   nz, label_11E2
    ld   a, [$C138]
    cp   $03
    jr   nc, label_11E8

label_11E2::
    ld   a, [$FFA1]
    and  a
    jp   nz, label_12ED

label_11E8::
    ld   a, [WR1_AButtonSlot]
    cp   $08
    jr   nz, label_11FE
    ld   a, [$FFCB]
    and  $20
    jr   z, label_11FA
    call label_1705
    jr   label_11FE

label_11FA::
    xor  a
    ld   [$C14B], a

label_11FE::
    ld   a, [WR1_BButtonSlot]
    cp   $08
    jr   nz, label_1214
    ld   a, [$FFCB]
    and  $10
    jr   z, label_1210
    call label_1705

label_120E::
    jr   label_1214

label_1210::
    xor  a
    ld   [$C14B], a

label_1214::
    ld   a, [WR1_BButtonSlot]
    cp   $04
    jr   nz, label_1235
    ld   a, [WR1_ShieldLevel]
    ld   [WR0_ShieldLevel], a
    ld   a, [$FFCB]
    and  $10
    jr   z, label_1235
    ld   a, [$C1AD]
    cp   $01
    jr   z, label_1235
    cp   $02
    jr   z, label_1235
    call label_1340

label_1235::
    ld   a, [WR1_AButtonSlot]
    cp   $04
    jr   nz, label_124B
    ld   a, [WR1_ShieldLevel]
    ld   [WR0_ShieldLevel], a
    ld   a, [$FFCB]
    and  $20
    jr   z, label_124B
    call label_1340

label_124B::
    ld   a, [$FFCC]
    and  $20
    jr   z, label_125E
    ld   a, [$C1AD]
    cp   $02
    jr   z, label_125E
    ld   a, [WR1_AButtonSlot]
    call ItemFunction

label_125E::
    ld   a, [$FFCC]
    and  $10
    jr   z, label_1275
    ld   a, [$C1AD]
    cp   $01
    jr   z, label_1275
    cp   $02
    jr   z, label_1275
    ld   a, [WR1_BButtonSlot]
    call ItemFunction

label_1275::
    ld   a, [$FFCB]
    and  $20
    jr   z, label_1281
    ld   a, [WR1_AButtonSlot]
    call label_1321

label_1281::
    ld   a, [$FFCB]
    and  $10
    jr   z, label_128D
    ld   a, [WR1_BButtonSlot]
    call label_1321

label_128D::
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_48CA
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret

ItemFunction::
    ld   c, a
    cp   $01
    jp   z, UseSword
    cp   $04
    jp   z, UseShield
    cp   $02
    jp   z, PlaceBomb
    cp   $03
    jp   z, UsePowerBracelet
    cp   $05
    jp   z, ShootArrow
    cp   $0D
    jp   z, UseBoomerang
    cp   $06
    jp   z, UseHookshot
    cp   $0A
    jp   z, UseRocksFeather
    cp   $09
    jp   z, UseOcarina
    cp   $0C
    jp   z, UseMagicPowder
    cp   $0B
    jp   z, UseShovel
    cp   $07 ; Magic wand
    jr   nz, label_12ED
    ld   hl, $C137
    ld   a, [$C19B]
    or   [hl]
    jr   nz, label_12ED
    ld   a, [WR0_ProjectileCount]
    cp   $02
    jr   nc, label_12ED
    ld   a, $8E
    ld   [$C19B], a

label_12ED::
    ret

UseShield::
    ld   a, [$C144]
    and  a
    ret  nz
    ld   a, $16
    ld   [$FFF4], a
    ret

UseShovel::
    ld   a, [$C1C7]
    ld   hl, $C146
    or   [hl]
    ret  nz

label_1300::
    call label_4D20
    jr   nc, label_130B
    ld   a, $07
    ld   [$FFF2], a
    jr   label_130F

label_130B::
    ld   a, $0E
    ld   [$FFF4], a

label_130F::
    ld   a, $01
    ld   [$C1C7], a
    xor  a
    ld   [$C1C8], a
    ret

UseHookshot::
    ld   a, [$C1A4]
    and  a
    ret  nz
    jp   $4254

label_1321::
    cp   $01
    ret  nz
    ld   hl, $C137
    ld   a, [$C1AD]
    and  $03
    or   [hl]
    ret  nz
    ld   a, [$C160]
    and  a
    ret  nz
    xor  a
    ld   [$C1AC], a
    ld   a, $05
    ld   [$C137], a
    ld   [$C5B0], a
    ret

label_1340::
    ld   a, $01
    ld   [WR0_IsUsingShield], a
    ld   a, [WR1_ShieldLevel]
    ld   [WR0_ShieldLevel], a
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4B4A
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret

PlaceBomb::
    ld   a, [WR0_HasPlacedBomb]
    cp   $01
    ret  nc
    ld   a, [WR1_BombCount]
    and  a
    jp   z, label_C20
    sub  a, $01
    daa
    ld   [WR1_BombCount], a
    ld   a, $02
    call label_142F
    ret  c
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4B81
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret

UsePowerBracelet::
    ret

UseBoomerang::
    ld   a, [WR0_ProjectileCount]
    and  a

label_1387::
    ret  nz
    ld   a, $01
    call label_142F
    ret  c
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4BFF
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret

data_139D::
    db   0, 0, 0, 0

data_13A1::
    db   0, 0, 0, 0

data_13A5::
    db   $20, $E0, 0, 0

data_13A9::
    db   0, 0, $E0, $20

data_13AD::
    db   $30, $D0, 0, 0, $40, $C0, 0, 0

data_13B5::
    db   0, 0, $D0, $30, 0, 0, $C0, $40

ShootArrow::
    ld   a, [WR0_IsShootingArrow]
    and  a
    ret  nz
    ld   a, [WR0_ProjectileCount]
    cp   $02
    jr   nc, label_142E
    ld   a, $10
    ld   [WR0_IsShootingArrow], a
    ld   a, [WR1_ArrowCount]
    and  a
    jp   z, label_C20
    sub  a, $01
    daa
    ld   [WR1_ArrowCount], a
    call label_157C
    ld   a, $00
    call label_142F
    ret  c
    ld   a, e
    ld   [$C1C2], a
    ld   a, [$C1C0]
    and  a
    jr   z, label_1401
    ld   a, [$C1C1]
    ld   c, a
    ld   b, d
    ld   hl, $C280
    add  hl, bc
    ld   [hl], b
    ld   hl, $C290
    add  hl, de
    ld   [hl], $01
    xor  a
    jr   label_1407

label_1401::
    ld   a, $0A
    ld   [$FFF4], a
    ld   a, $06

label_1407::
    ld   [$C1C0], a
    ld   a, [$FF9E]
    ld   c, a
    ld   b, $00

label_140F::
    ld   a, [$D47C]
    cp   $01
    jr   nz, label_141A
    ld   a, c
    add  a, $04
    ld   c, a

label_141A::
    ld   hl, data_13AD
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C240
    add  hl, de
    ld   [hl], a
    ld   hl, data_13B5
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C250
    add  hl, de
    ld   [hl], a

label_142E::
    ret

label_142F::
    call label_3B86
    ret  c
    ld   a, $0C
    ld   [$C19B], a
    push bc
    ld   a, [$FF9E]
    ld   c, a
    ld   b, $00
    ld   hl, data_139D
    add  hl, bc
    ld   a, [$FF98]
    add  a, [hl]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   hl, data_13A1
    add  hl, bc
    ld   a, [$FF99]
    add  a, [hl]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   a, [$FFA2]
    inc  a
    ld   hl, $C310
    add  hl, de
    ld   [hl], a
    ld   hl, data_13A5
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C240
    add  hl, de
    ld   [hl], a
    ld   hl, data_13A9
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C250
    add  hl, de
    ld   [hl], a
    ld   a, [$FF9E]
    ld   hl, $C3B0
    add  hl, de
    ld   [hl], a
    ld   hl, $C380
    add  hl, de
    ld   [hl], a
    ld   hl, $C5D0
    add  hl, de
    ld   [hl], a
    ld   hl, $C4F0
    add  hl, de
    ld   [hl], $01
    pop  bc
    scf
    ccf
    ret

UseMagicPowder::
    ld   a, [$C19B]
    and  a
    ret  nz
    ld   a, [$DB4B]
    and  a
    jr   z, label_14A7
    ld   a, [$FFA2]
    and  a
    ret  nz
    ld   a, $02
    ld   [$C1A9], a
    ld   a, $2A
    ld   [$C1AA], a
    ret

label_14A7::
    ld   a, [$DB4C]
    and  a
    jp   z, label_C20
    ld   a, $08
    call label_3B86
    ret  c
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4C47
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret

data_14C3::
    db $1C, $E4, 0, 0

data_14C7::
    db 0, 0, $E4, $1C

UseRocksFeather::
    ld   a, [$C130]
    cp   $07
    ret  z
    ld   a, [$C146]
    and  a
    ret  nz
    ld   a, $01
    ld   [$C146], a
    xor  a
    ld   [$C152], a
    ld   [$C153], a
    ld   a, $0D
    ld   [$FFF2], a
    ld   a, [$FFF9]
    and  a
    jr   z, label_1508
    call label_1508
    ld   a, [$FFCB]
    and  $03
    ld   a, $EA
    jr   z, label_14F8
    ld   a, $E8

label_14F8::
    ld   [$FF9B], a
    xor  a
    ld   [$FFA3], a
    call label_21A8
    ld   a, $02
    call label_80C
    jp   $6C75

label_1508::
    ld   a, $20
    ld   [$FFA3], a
    ld   a, [$C14A]
    and  a
    ret  z
    ld   a, [$FF9E]
    ld   e, a
    ld   d, b
    ld   hl, data_14C3
    add  hl, de
    ld   a, [hl]
    ld   [$FF9A], a
    ld   hl, data_14C7
    add  hl, de
    ld   a, [hl]
    ld   [$FF9B], a

label_1523::
    ret

data_1524::
    db   2, $14, $15, $18

UseSword::
    ld   a, [$C16D]
    ld   hl, WR0_IsUsingSpinAttack
    or   [hl]
    ret  nz
    ld   a, $03
    ld   [$C138], a

label_1535::
    ld   a, $01
    ld   [$C137], a
    ld   [$C5B0], a
    xor  a
    ld   [$C160], a
    ld   [$C1AC], a
    call label_280D
    and  $03
    ld   e, a
    ld   d, $00
    ld   hl, data_1524
    add  hl, de
    ld   a, [hl]
    ld   [$FFF4], a
    call label_157C
    ld   a, [$C146]
    and  a
    jr   nz, label_1562
    call label_CAF
    call label_178E

label_1562::
    ld   a, [WR0_ProjectileCount]
    and  a
    ret  nz
    ld   a, [$C5A9]
    and  a
    ret  z
    ld   a, [$DB4E]
    cp   $02
    ret  nz
    ld   a, $DF
    call label_142F
    xor  a
    ld   [$C19B], a
    ret

label_157C::
    ld   a, [$FFCB]
    and  $0F
    ld   e, a
    ld   d, $00
    ld   hl, $4905
    add  hl, de
    ld   a, [hl]
    cp   $0F
    jr   z, label_158E
    ld   [$FF9E], a

label_158E::
    ret

label_158F::
    ld   d, $FA
    ld   [label_1608], sp
    ld   d, $08
    ld   a, [$FAFA]
    ld   [label_816], sp
    ld   [label_16FA], sp
    ld   [label_1616], sp
    ld   d, $08
    ld   a, [$FAFA]
    call label_15AF
    ld   a, $02
    jp   label_80C

label_15AF::
    ld   a, [$C1C4]
    and  a
    ret  nz
    ld   a, [$C14A]
    and  a
    jr   nz, label_15C0
    ld   a, [$C16A]
    cp   $05
    ret  z

label_15C0::
    ld   a, [WR0_IsUsingSpinAttack]
    and  a
    jr   z, label_15CD
    ld   a, [$C136]
    add  a, $04
    jr   label_15CF

label_15CD::
    ld   a, [$FF9E]

label_15CF::
    ld   e, a
    ld   d, $00
    ld   hl, $158F ; TODO: Check this
    add  hl, de
    ld   a, [$FF98]
    add  a, [hl]
    sub  a, $08
    and  $F0
    ld   [$FFCE], a
    swap a
    ld   c, a
    ld   hl, $159B ; TODO: Check this
    add  hl, de
    ld   a, [$FF99]
    add  a, [hl]
    sub  a, $10
    and  $F0
    ld   [$FFCD], a
    or   c
    ld   e, a
    ld   hl, WR1_TileMap
    add  hl, de
    ld   a, h
    cp   $D7
    ret  nz
    push de
    ld   a, [hl]
    ld   [$FFAF], a
    ld   e, a
    ld   a, [$DBA5]
    ld   d, a
    call label_2A26
    pop  de
    cp   $D0

label_1608::
    db   $DA ; +
    db   $10
    db   $16
    db   $FE ; ¦
    db   $D4 ; +
    db   $DA ; +
    db   $C2 ; -
    db   $16
    db   $FE ; ¦
    db   $90 ; É
    db   $D2 ; -
    db   $C2 ; -
    db   $16
    db   $FE ; ¦

label_1616::
    ld   bc, $C2CA
    ld   d, $E
    nop
    ld   a, [$DBA5]
    and  a
    ld   a, [$FFAF]
    jr   z, label_1629
    cp   $DD
    jr   z, label_1637
    ret

label_1629::
    inc  c
    cp   $D3
    jr   z, label_1637
    cp   $5C
    jr   z, label_1637
    cp   $0A
    ret  nz
    ld   c, $FF

label_1637::
    ld   a, c
    ld   [$FFF1], a
    call label_2178
    ld   a, [$C14A]
    and  a
    jr   nz, label_1653
    ld   a, [$C16A]
    cp   $05
    jr   nz, label_1653
    xor  a
    ld   [$C122], a
    ld   a, $0C
    ld   [$C16D], a

label_1653::
    ld   a, $05
    call label_142F
    jr   c, label_167C
    xor  a
    ld   [$C19B], a
    ld   hl, $C200
    add  hl, de
    ld   a, [$FFCE]
    add  a, $08
    ld   [hl], a
    ld   hl, $C210
    add  hl, de
    ld   a, [$FFCD]
    add  a, $10
    ld   [hl], a
    ld   hl, $C3B0
    add  hl, de
    ld   a, [$FFF1]
    ld   [hl], a
    ld   c, e
    ld   b, d
    call label_3942

label_167C::
    call label_280D
    and  $07
    ret  nz
    ld   a, [$FFAF]
    cp   $D3
    ret  z
    call label_280D
    rra
    ld   a, $2E
    jr   nc, label_1691
    ld   a, $2D

label_1691::
    call label_3B86
    ret  c
    ld   hl, $C200
    add  hl, de
    ld   a, [$FFCE]
    add  a, $08
    ld   [hl], a
    ld   hl, $C210
    add  hl, de
    ld   a, [$FFCD]
    add  a, $10
    ld   [hl], a
    ld   hl, $C450
    add  hl, de
    ld   [hl], $80
    ld   hl, $C2F0
    add  hl, de
    ld   [hl], $18
    ld   hl, $C320
    add  hl, de
    ld   [hl], $10
    ret

data_16BA::
    db $12, $EE, $FC, 4

data_16BE::
    db 4, 4, $EE, $12

label_16C2::
    ld   c, a
    ld   a, [$C16D]
    and  a
    ret  z
    ld   a, [$FF9E]
    ld   e, a
    ld   d, $00
    ld   hl, data_16BA
    add  hl, de
    ld   a, [$FF98]
    add  a, [hl]
    ld   [$FFD7], a
    ld   hl, data_16BE
    add  hl, de
    ld   a, [$FF99]
    add  a, [hl]
    ld   [$FFD8], a

label_16DF::
    ld   a, $04
    ld   [$C502], a
    call label_D15
    ld   a, $10
    ld   [$C1C4], a
    ld   a, c
    and  $F0
    cp   $90
    jr   z, label_16F8
    ld   a, $07
    ld   [$FFF2], a
    ret

label_16F8::
    ld   a, $17

label_16FA::
    ld   [$FFF4], a
    ret

data_16FD::
    db   $20, $E0, 0, 0

data_1701::
    db   0, 0, $E0, $20

label_1705::
    ld   a, [$FFF9]
    and  a
    jr   z, label_1713
    ld   a, [$FF9C]
    and  a
    ret  nz
    ld   a, [$FF9E]
    and  $02
    ret  nz

label_1713::
    ld   a, [$C14A]
    and  a
    ret  nz
    ld   a, [$FFA2]
    ld   hl, $C146
    or   [hl]
    ret  nz
    ld   a, [$C120]
    add  a, $02
    ld   [$C120], a
    call label_1756
    ld   a, [$C14B]
    inc  a
    ld   [$C14B], a
    cp   $20
    ret  nz
    ld   [$C14A], a
    xor  a
    ld   [WR0_IsUsingSpinAttack], a
    ld   [$C122], a
    ld   a, [$FF9E]
    ld   e, a
    ld   d, $00
    ld   hl, data_16FD
    add  hl, de
    ld   a, [hl]
    ld   [$FF9A], a
    ld   hl, data_1701
    add  hl, de
    ld   a, [hl]
    ld   [$FF9B], a
    xor  a
    ld   [$C1AC], a
    ret

label_1756::
    ld   a, [$FFE7]
    and  $07
    ld   hl, $FFA2
    or   [hl]
    ld   hl, $FFA1
    or   [hl]
    ld   hl, $C146
    or   [hl]
    ret  nz
    ld   a, [$FF98]
    ld   [$FFD7], a
    ld   a, [$C181]
    cp   $05
    jr   z, label_1781
    ld   a, $07
    ld   [$FFF4], a
    ld   a, [$FF99]
    add  a, $06
    ld   [$FFD8], a
    ld   a, $0B
    jp   label_CC7

label_1781::
    ld   a, [$FF99]
    ld   [$FFD8], a
    ld   a, $0E
    ld   [$FFF2], a
    ld   a, $0C
    jp   label_CC7

label_178E::
    xor  a
    ld   [$FF9A], a
    ld   [$FF9B], a
    ret

label_1794::
    call label_753A
    ld   a, [$C11C]
    cp   $01
    ret  z
    ld   a, [$C16A]
    and  a
    jr   z, label_17DB
    ld   bc, $C010
    ld   a, [$C145]
    ld   hl, $C13B
    add  a, [hl]
    ld   [$FFD7], a
    ld   a, [$FF98]
    ld   [$FFD8], a
    ld   hl, $FFDA
    ld   [hl], $00
    ld   a, [$C122]
    cp   $28
    jr   c, label_17C6
    ld   a, [$FFE7]
    rla
    rla
    and  $10
    ld   [hl], a

label_17C6::
    ld   a, [$C139]
    ld   h, a
    ld   a, [$C13A]
    ld   l, a
    ld   a, [$C136]
    ld   [$FFD9], a
    ld   a, [$FF99]
    cp   $88
    ret  nc
    jp   label_1819

label_17DB::
    ld   a, [$C19B]
    push af
    bit  7, a
    jp   z, label_1814
    ld   a, $02
    call label_80C
    call label_5310
    ld   a, [$C19B]
    and  $7F
    cp   $0C
    jr   nz, label_1814
    ld   hl, $C19F
    ld   a, [$C124]
    or   [hl]
    jr   nz, label_1814
    call label_157C
    ld   a, $04
    call label_142F
    jr   c, label_1814
    ld   a, $0D
    ld   [$FFF4], a
    ld   a, $02
    call label_80C
    call label_538B

label_1814::
    pop  af
    ld   [$C19B], a
    ret

label_1819::
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4AB3
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_49BA
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret
    call label_754F
    ld   a, [$C3C9]
    and  a
    jr   z, label_1847
    xor  a
    ld   [$C3C9], a
    jp   label_C7D

label_1847::
    call label_1A22
    xor  a
    ld   [$C157], a
    inc  a
    ld   [$C1A8], a
    ld   a, [$C16B]
    cp   $04
    jp   nz, label_19D9
    xor  a
    ld   [$FF96], a
    ld   [$FF97], a
    ld   [$FFB4], a
    ld   [$DDD6], a
    ld   [$DDD7], a
    ld   e, $10
    ld   hl, $C280

label_186C::
    ldi  [hl], a
    dec  e
    jr   nz, label_186C
    ld   a, [$C509]
    and  a
    jr   z, label_1898
    push af
    ld   a, $04
    call label_80C
    pop  af
    call label_7A5F
    ld   hl, $DB6E
    inc  [hl]
    ld   hl, $DB46
    inc  [hl]
    ld   a, [$DC0C]
    or   $40
    ld   [$DC0C], a
    ld   a, $01
    ld   [$D47E], a
    xor  a
    ld   [$FF9D], a

label_1898::
    ld   a, [$FFF9]
    ld   [$FFE4], a
    ld   a, $0B
    ld   [$DB95], a
    xor  a
    ld   [$DB96], a
    ld   [$C3CB], a
    ld   [$FFF9], a
    ld   hl, $D401
    ld   a, [$DBA5]
    ld   [$FFE6], a
    and  a
    jr   nz, label_18DF
    ld   hl, $D416
    ld   c, $00

label_18BA::
    ld   a, [$FF98]
    swap a
    and  $0F
    ld   e, a
    ld   a, [$FF99]
    sub  a, $08
    and  $F0
    or   e
    cp   [hl]
    jr   z, label_18D2
    inc  hl
    inc  c
    ld   a, c
    cp   $04
    jr   nz, label_18BA

label_18D2::
    ld   a, c
    sla  a
    sla  a
    add  a, c
    ld   e, a
    ld   d, $00
    ld   hl, $D401
    add  hl, de

label_18DF::
    push hl
    ld   a, [hli]
    ld   [$DBA5], a
    cp   $02
    jr   nz, label_18F2
    ld   [$FFF9], a
    dec  a
    ld   [$DBA5], a
    ld   a, $01
    ld   [$FF9C], a

label_18F2::
    ld   a, [hli]
    ld   [$FFF7], a
    ld   a, [$DBA5]
    and  a
    ld   a, [hli]
    ld   [$FFF6], a
    jr   nz, label_1909
    ld   a, [$FFE6]
    and  a
    jr   z, label_1907
    xor  a
    ld   [$D47C], a

label_1907::
    jr   label_196F

label_1909::
    ld   c, a
    ld   a, $14
    call label_80C
    push hl
    ld   a, [$FFF7]
    swap a
    ld   e, a
    ld   d, $00
    sla  e
    rl   d
    sla  e
    rl   d
    ld   hl, $4220
    add  hl, de
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_192E
    ld   hl, $44E0
    jr   label_193C

label_192E::
    cp   $06
    jr   nz, label_193C
    ld   a, [$DB6B]
    and  $04
    jr   z, label_193C
    ld   hl, $4520

label_193C::
    ld   e, $00

label_193E::
    ld   a, [hli]
    cp   c
    jr   z, label_1948
    inc  e
    ld   a, e
    cp   $40
    jr   nz, label_193E

label_1948::
    ld   a, e
    ld   [$DBAE], a
    ld   a, [$FFE6]
    and  a
    jr   nz, label_196E
    xor  a
    ld   [$D47C], a
    ld   a, [$FFF7]
    cp   $0A
    jr   nc, label_196E
    ld   a, $02
    call label_80C
    call label_6709
    ld   a, $30
    ld   [$FFB4], a
    xor  a
    ld   [$D6FB], a
    ld   [$D6F8], a

label_196E::
    pop  hl

label_196F::
    ld   a, [hli]
    ld   [$DB9D], a
    ld   a, [hl]
    ld   [$DB9E], a
    pop  hl
    ld   a, [$FFF9]
    and  a
    jr   nz, label_19DA
    ld   a, [$FFE4]
    and  a
    jr   nz, label_19D9
    ld   a, [$DBA5]
    and  a
    jr   z, label_19C2
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_1993
    ld   hl, $4E3C
    jr   label_19A4

label_1993::
    cp   $0A
    jr   nc, label_19C2
    ld   e, a
    sla  a
    sla  a
    add  a, e
    ld   e, a
    ld   d, $00
    ld   hl, $4DF1
    add  hl, de

label_19A4::
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_19C2
    push de
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_19B7
    ld   a, $3A
    jr   label_19BF

label_19B7::
    ld   e, a
    ld   d, $00
    ld   hl, $4E41
    add  hl, de
    ld   a, [hl]

label_19BF::
    pop  de
    ld   [de], a
    ret

label_19C2::
    ld   a, $00
    ld   [$FFD7], a
    ld   de, $DB5F

label_19C9::
    ld   a, [hli]
    ld   [de], a
    inc  de
    ld   a, [$FFD7]
    inc  a
    ld   [$FFD7], a
    cp   $05
    jr   nz, label_19C9
    ld   a, [$DBAE]
    ld   [de], a

label_19D9::
    ret

label_19DA::
    xor  a
    ld   [$FF9E], a
    ret
    call label_754F
    ld   a, [$D474]
    and  a
    jr   z, label_19FC
    xor  a
    ld   [$D474], a
    ld   a, $30
    ld   [$C180], a
    ld   a, $03
    ld   [$C17F], a
    ld   a, $04
    ld   [$C16B], a
    jr   label_1A06

label_19FC::
    call label_1A39
    ld   a, [$C16B]
    cp   $04
    jr   nz, label_1A21

label_1A06::
    ld   a, [$D463]
    cp   $01
    jr   z, label_1A0F
    ld   a, $00

label_1A0F::
    ld   [$C11C], a
    ld   a, [$D47E]
    and  a
    jr   z, label_1A21
    xor  a
    ld   [$D47E], a
    ld   a, $36
    jp   label_2385

label_1A21::
    ret

label_1A22::
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6C4F
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_55CA
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret

label_1A39::
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6C7A
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_563B
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret

label_1A50::
    ld   a, [$C120]
    sra  a
    sra  a
    sra  a
    and  $01
    ld   d, a
    ld   a, [$FF9E]
    sla  a
    or   d
    ld   c, a
    ld   b, $00
    ld   hl, $4948
    ld   a, [$C11C]
    cp   $01
    jr   nz, label_1A78
    ld   a, [$FF9C]
    and  a
    jr   z, label_1A76
    ld   hl, $4950

label_1A76::
    jr   label_1AC7

label_1A78::
    ld   a, [$FFF9]
    and  a
    jr   z, label_1A88
    ld   a, [$FF9C]
    cp   $02
    jr   nz, label_1A88
    ld   hl, $4958
    jr   label_1AC7

label_1A88::
    ld   a, [$C15C]
    cp   $01
    jr   z, label_1AC4
    ld   a, [$FFB2]
    and  a
    jr   nz, label_1A9A
    ld   a, [$C144]
    and  a
    jr   nz, label_1ABF

label_1A9A::
    ld   a, [WR0_ShieldLevel]
    and  a
    jr   nz, label_1AA5
    ld   hl, $4910
    jr   label_1AC7

label_1AA5::
    ld   hl, $4918
    cp   $02
    jr   nz, label_1AAF
    ld   hl, $4928

label_1AAF::
    ld   a, [WR0_IsUsingShield]
    and  a
    jr   z, label_1ABD
    ld   a, l
    add  a, $08
    ld   l, a
    ld   a, h
    adc  a, $00
    ld   h, a

label_1ABD::
    jr   label_1AC7

label_1ABF::
    ld   hl, $4938
    jr   label_1AC7

label_1AC4::
    ld   hl, $4940

label_1AC7::
    add  hl, bc
    ld   a, [hl]
    ld   [$FF9D], a
    ret

label_1ACC::
    ld   a, [$D601]
    and  a
    ret  nz
    ld   a, $10
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $6500
    ld   de, $9500
    ld   a, [$FFE7]
    and  $0F
    jr   z, label_1AEB
    cp   $08
    ret  nz
    ld   l, $40
    ld   e, l

label_1AEB::
    ld   a, [$FFE7]
    and  $30
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    sla  c
    rl   b
    add  hl, bc
    ld   bc, $0040
    jp   CopyData
    jr   nz, label_1B67
    and  b
    ld   [$FFE0], a
    ld   [$FFA0], a
    ld   h, b

label_1B0D::
    ld   a, [$DB95]
    cp   $09
    jr   z, label_1ACC
    cp   $00
    jr   nz, label_1B46
    ld   a, [$D601]
    and  a
    jp   nz, label_1B45
    ld   a, [$FFE7]
    and  $0F
    cp   $04
    jr   c, label_1B45
    ld   a, $10
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$D006]
    ld   l, a
    ld   a, [$D007]
    ld   h, a
    ld   a, [$D008]
    ld   e, a
    ld   a, [$D009]
    ld   d, a
    ld   bc, $0020
    jp   CopyData

label_1B45::
    ret

label_1B46::
    ld   a, [$DB95]
    cp   $01
    jr   nz, label_1B53
    ld   a, [$FFA5]
    and  a
    jr   nz, label_1B82
    ret

label_1B53::
    cp   $0B
    jp  c, label_1DE8
    ld   a, [$DB9A]
    cp   $80
    jp   nz, label_1DE8
    ld   a, [$C14F]
    and  a
    jp   nz, label_1D2E

label_1B67::
    ld   hl, $C124
    ld   a, [$D601]
    or   [hl]
    jp   nz, label_1D2E
    ld   a, [$D6F8]
    and  a
    jr   z, label_1B7D
    call label_1ED7
    jp   label_1D2E

label_1B7D::
    ld   a, [$FFA5]
    and  a
    jr   z, label_1BCD

label_1B82::
    cp   $01
    jp   z, label_3F93
    cp   $02
    jp   z, label_3FA9
    cp   $03
    jp   z, label_1EB5
    cp   $04
    jp   z, label_1EBC
    cp   $08
    jp   z, label_1E69
    cp   $09
    jp   z, label_1EA1
    cp   $0A
    jp   z, label_1E2B
    cp   $0B
    jp   z, label_1E8D
    cp   $0C
    jp   z, label_1E33
    cp   $0D
    jp   z, label_1E01
    cp   $0E
    jr   z, label_1BC5
    cp   $0F
    jp   z, label_1DF0
    cp   $10
    jp   z, label_1DE9
    jp   label_1D2E

label_1BC5::
    ld   a, $17
    ld   [SelectRomBank_2100], a
    jp   $4062

label_1BCD::
    ld   a, [$FFA6]
    inc  a
    ld   [$FFA6], a

label_1BD2::
    ld   a, [$FFA4]
    rst  0
    ld   e, $1D
    ld   sp, hl
    dec  de
    ld   d, $1C
    ld   a, [de]
    inc  e
    add  hl, sp
    inc  e
    adc  a, d
    inc  e
    adc  a, [hl]
    inc  e
    xor  c
    inc  e
    add  a, $1C
    push de
    inc  e
    db   $E4 ; Undefined instruction
    inc  e
    ldi  [hl], a
    inc  e
    ld   e, $1C
    rst  $28
    inc  e
    ei
    inc  e
    di
    inc  e
    rst  $30
    inc  e
    rst  $38
    inc  e
    ld   a, [$FFA6]
    and  $07
    jp   nz, label_1D1E
    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_61AA
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    jp   label_1D2E

label_1C13::
    ld   l, a
    jr   label_1C51
    ld   h, $6B
    jr   label_1C24
    ld   h, $6C
    jr   label_1C24
    ld   h, $73
    jr   label_1C24
    ld   h, $6A

label_1C24::
    ld   a, [$FFA6]
    and  $0F
    jp   nz, label_1D1E
    call label_1CE8
    jp   label_1C13

data_1C31::
    db 0, $40, $80, $C0, $C0, $C0, $80, $40

label_1C39::
    ld   a, [$FFA6]
    and  $07
    jp   nz, label_1D1E
    ld   a, [$FFA6]
    rra
    rra
    rra
    and  $07
    ld   e, a
    ld   d, $00
    ld   hl, data_1C31
    add  hl, de
    ld   l, [hl]
    ld   h, $6D

label_1C51::
    ld   de, $96C0

label_1C54::
    ld   bc, $0040
    call CopyData
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_1C87
    ld   a, $20
    ld   [SelectRomBank_2100], a
    ld   b, $01
    call label_47F7
    jr   z, label_1C72
    ld   [SelectRomBank_2100], a
    call CopyData

label_1C72::
    ld   a, $20
    ld   [SelectRomBank_2100], a
    ld   b, $00
    call label_47F7
    jr   z, label_1C87
    ld   [SelectRomBank_2100], a
    ld   de, $96C0
    call CopyData

label_1C87::
    jp   label_1D2E
    ld   h, $6E
    jr   label_1C24
    ld   a, [$FFA6]
    and  $07
    jp   nz, label_1D1E
    ld   a, [$FFA6]
    rra
    rra
    rra
    and  $07
    ld   e, a
    ld   d, $00
    ld   hl, data_1C31
    add  hl, de
    ld   l, [hl]
    ld   h, $6F
    jp   label_1C51
    ld   hl, $DCC0
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_1CB8
    ld   de, $8400
    jp   label_1C54

label_1CB8::
    ld   a, [$FFA6]
    inc  a
    and  $03
    jp   nz, label_1C39
    ld   de, $90C0
    jp   label_1C54
    ld   h, $70

label_1CC8::
    ld   a, [$FFA6]
    and  $07
    jp   nz, label_1D1E
    call label_1CE8
    jp   label_1C13
    ld   h, $71

label_1CD7::
    ld   a, [$FFA6]
    and  $03
    jp   nz, label_1D1E
    call label_1CE8
    jp   label_1C13
    ld   h, $72
    jr   label_1CD7

label_1CE8::
    ld   a, [$FFA7]
    add  a, $40
    ld   [$FFA7], a
    ret
    ld   h, $75
    jr   label_1CD7
    ld   h, $74
    jr   label_1CC8
    ld   h, $77
    jr   label_1CC8
    ld   h, $76
    jr   label_1CC8
    ld   a, $38
    ld   [SelectRomBank_2100], a
    call label_7830
    jp   label_1D2E
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a

label_1D12::
    ld   a, [bc]
    inc  bc
    ldi  [hl], a
    dec  d
    jr   nz, label_1D12
    ld   a, $20
    ld   [SelectRomBank_2100], a
    ret

label_1D1E::
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_54F5
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a

label_1D2E::
    ld   a, [$FF9D]
    inc  a
    ret  z
    ld   a, [$FFFE]
    and  a
    jr   z, label_1D42
    ld   a, [$DBC7]
    and  $04
    jr   z, label_1D49
    ld   a, $04
    jr   label_1D49

label_1D42::
    ld   a, [$DBC7]
    rla
    rla
    and  $10

label_1D49::
    ld   [$C135], a
    ld   hl, $C008
    ld   a, [$C13B]
    ld   c, a
    ld   a, [$C145]
    add  a, c
    cp   $88
    ret  nc
    push af
    ldi  [hl], a
    ld   a, [$C13C]
    ld   c, a
    ld   a, [$FF98]
    add  a, c
    ldi  [hl], a
    ld   a, $00
    ldi  [hl], a
    ld   a, [$C135]
    ld   d, a
    ld   a, [$C11D]
    or   d
    ld   [hl], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_1DA1
    ld   a, [$DBC7]
    and  $04
    jr   nz, label_1DA1
    ld   a, [$FF9D]
    cp   $50
    jr   c, label_1D8C
    cp   $55
    jr   nc, label_1D8C
    ld   a, [hl]
    or   $07
    ld   [hl], a
    jr   label_1DA1

label_1D8C::
    ld   a, [$DC0F]
    and  a
    jr   z, label_1D95
    inc  a
    or   [hl]
    ld   [hl], a

label_1D95::
    ld   a, [$FF9D]
    cp   $4E
    jr   z, label_1D9F
    cp   $4F
    jr   nz, label_1DA1

label_1D9F::
    ld   [hl], $03

label_1DA1::
    inc  hl
    pop  af
    ldi  [hl], a
    ld   a, [$FF98]
    add  a, c
    add  a, $08
    ldi  [hl], a
    ld   a, $02
    ldi  [hl], a
    ld   a, [$C135]
    ld   d, a
    ld   a, [$C11E]
    or   d
    ld   [hl], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_1DE7
    ld   a, [$DBC7]
    and  $04
    jr   nz, label_1DE7
    ld   a, [$FF9D]
    cp   $50
    jr   c, label_1DD2
    cp   $55
    jr   nc, label_1DD2
    ld   a, [hl]
    or   $07
    ld   [hl], a
    jr   label_1DE7

label_1DD2::
    ld   a, [$DC0F]
    and  a
    jr   z, label_1DDB
    inc  a
    or   [hl]
    ld   [hl], a

label_1DDB::
    ld   a, [$FF9D]
    cp   $4E
    jr   z, label_1DE5
    cp   $4F
    jr   nz, label_1DE7

label_1DE5::
    ld   [hl], $23

label_1DE7::
    inc  hl

label_1DE8::
    ret

label_1DE9::
    ld   hl, $4F00
    ld   a, $0E
    jr   label_1DF5

label_1DF0::
    ld   a, $12
    ld   hl, $6080

label_1DF5::
    ld   [SelectRomBank_2100], a
    ld   de, $8400
    ld   bc, $0040
    jp   label_1F3B

label_1E01::
    ld   a, [$DB0E]
    cp   $02
    jp  c, label_1F3E
    sub  a, $02
    ld   d, a
    ld   e, $00
    sra  d
    rr   e
    sra  d
    rr   e
    ld   hl, $4400
    add  hl, de
    ld   de, $89A0
    ld   bc, $0040
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    jp   label_1F3B

label_1E2B::
    ld   hl, $68C0
    ld   de, $88E0
    jr   label_1EA7

label_1E33::
    ld   a, $11
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$D000]
    swap a
    and  $F0
    ld   e, a
    ld   d, $00
    sla  e
    rl   d
    sla  e
    rl   d
    ld   hl, $8D00
    add  hl, de
    push hl
    ld   hl, $5000

label_1E55::
    add  hl, de
    pop  de
    ld   bc, $0040
    call CopyData
    xor  a
    ld   [$FFA5], a
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ret

label_1E69::
    ld   a, $13
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$D000]
    swap a
    and  $F0
    ld   e, a
    ld   d, $00
    sla  e
    rl   d
    sla  e
    rl   d
    ld   hl, $8D00
    add  hl, de
    push hl
    ld   hl, $4D00
    jr   label_1E55

label_1E8D::
    ld   hl, $48E0
    ld   de, $88E0
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   bc, $0020
    jp   label_1F3B

label_1EA1::
    ld   hl, $68E0
    ld   de, $8CA0

label_1EA7::
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   bc, $0020
    jp   label_1F3B

label_1EB5::
    ld   hl, $7F00
    ld   a, $12
    jr   label_1EC1

label_1EBC::
    ld   hl, $4C40
    ld   a, $0D

label_1EC1::
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   de, $9140
    jp   label_1F38

data_1ECD::
    db $40, $68, $40, $68

data_1ED1::
    db 0, $68

data_1ED3::
    db $80, $68, 0, $68

label_1ED7::
    push af
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    pop  af
    ld   hl, $FFA1
    ld   [hl], $01
    ld   hl, $D6FB
    ld   e, [hl]
    ld   d, $00
    inc  a
    cp   $03
    jr   nz, label_1EFB
    push af
    ld   a, [$D6FB]
    xor  $02
    ld   [$D6FB], a
    pop  af

label_1EFB::
    ld   [$D6F8], a
    cp   $04

label_1F00::
    jr   nz, label_1F07
    ld   hl, data_1ECD
    jr   label_1F0E

label_1F07::
    cp   $08
    jr   nz, label_1F14
    ld   hl, data_1ED1

label_1F0E::
    add  hl, de
    ld   de, $9040
    jr   label_1F2C

label_1F14::
    cp   $06
    jr   nz, label_1F1D
    ld   hl, data_1ECD
    jr   label_1F28

label_1F1D::
    cp   $0A
    jr   nz, label_1F35
    xor  a
    ld   [$D6F8], a
    ld   hl, data_1ED3

label_1F28::
    add  hl, de
    ld   de, $9080

label_1F2C::
    ld   bc, $0040
    ld   a, [hli]
    ld   h, [hl]
    ld   l, a
    jp   CopyData

label_1F35::
    jp   label_1D2E

label_1F38::
    ld   bc, $0040

label_1F3B::
    call CopyData

label_1F3E::
    xor  a
    ld   [$FFA5], a
    ld   a, $0C
    ld   [SelectRomBank_2100], a
    jp   label_1D2E

data_1F49::
    db   $C, 3, 8, 8
    
data_1F4D::
    db   $A, $A, 5, $10

data_1F51::
    db   $36, $38, $3A, $3C

data_1F55::
    db   2, 1, 8, 4

data_1F59::
    db   $FC, 4, 0, 0

data_1F5D::
    db   0, 0, 4, 0

label_1F61::
    call label_1F69
    ld   a, 2
    jp   label_80C

label_1F69::
    ld   hl, $C14A
    ld   a, [$C15C]
    or   [hl]
    ld   hl, $FFA2
    or   [hl]
    ld   hl, $C11C
    or   [hl]
    jp   nz, label_2177
    ld   a, [$FF9E]
    ld   e, a
    ld   d, $00
    ld   hl, data_1F49
    add  hl, de
    ld   a, [$FF98]
    add  a, [hl]
    sub  a, $08
    and  $F0
    ld   [$FFCE], a
    swap a
    ld   c, a
    ld   hl, data_1F4D
    add  hl, de
    ld   a, [$FF99]
    add  a, [hl]
    sub  a, $10
    and  $F0
    ld   [$FFCD], a
    or   c
    ld   e, a
    ld   [$FFD8], a
    ld   hl, WR1_TileMap
    add  hl, de
    ld   a, h
    cp   $D7
    jp   nz, label_214E
    ld   a, [hl]
    ld   [$FFD7], a
    ld   e, a
    ld   a, [$DBA5]
    ld   d, a
    call label_2A26
    ld   [$FFDC], a
    ld   a, [$FFD7]
    cp   $9A
    jr   z, label_1FFE
    ld   a, [$FFDC]
    cp   $00
    jp   z, label_214E
    cp   $01
    jr   z, label_1FE6
    cp   $50
    jp   z, label_214E
    cp   $51
    jp   z, label_214E
    cp   $11
    jp  c, label_214E
    cp   $D4
    jp   nc, label_214E
    cp   $D0
    jr   nc, label_1FE6
    cp   $7C
    jp   nc, label_214E

label_1FE6::
    ld   a, [$FFD7]
    ld   e, a
    cp   $6F
    jr   z, label_1FF6
    cp   $5E
    jr   z, label_1FF6
    cp   $D4
    jp   nz, label_2098

label_1FF6::
    ld   a, [$DBA5]
    and  a
    ld   a, e
    jp   nz, label_2098

label_1FFE::
    ld   e, a
    ld   a, [$FF9E]
    cp   $02
    jp   nz, label_20CF
    ld   a, $02
    ld   [$C1AD], a
    ld   a, [$FFCC]
    and  $30
    jp   z, label_20CF
    ld   a, e
    cp   $5E
    ld   a, $8E
    jr   z, label_2088
    ld   a, e
    cp   $6F
    jr   z, label_2049
    cp   $D4
    jr   z, label_2049
    ld   a, [$DB73]
    and  a
    jr   z, label_2030
    ld   a, $78
    call label_237C
    jp   label_20CF

label_2030::
    ld   a, [$DB4E]
    and  a
    ld   a, [$FFF6]
    jr   nz, label_203E
    ld   e, $FF
    cp   $A3
    jr   z, label_2046

label_203E::
    ld   e, $FC
    cp   $FA
    jr   z, label_2046
    ld   e, $FD

label_2046::
    ld   a, e
    jr   label_208E

label_2049::
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    ld   a, $14
    ld   [SelectRomBank_2100], a
    ld   hl, $5118
    add  hl, de
    ld   a, [$DB49]
    ld   e, a
    ld   a, [hl]
    cp   $A9
    jr   nz, label_2066
    bit  0, e
    jr   z, label_2066
    ld   a, $AF

label_2066::
    cp   $AF
    jr   nz, label_2080
    bit  0, e
    jr   nz, label_2080
    ld   a, [$FFCE]
    swap a
    and  $0F
    ld   e, a
    ld   a, [$FFCD]
    and  $F0
    or   e
    ld   [$D473], a
    jp   label_20CF

label_2080::
    cp   $83
    jr   z, label_208E
    cp   $2D
    jr   z, label_2093

label_2088::
    call label_2373
    jp   label_20CF

label_208E::
    call label_2385
    jr   label_20CF

label_2093::
    call label_237C
    jr   label_20CF

label_2098::
    cp   $A0
    jr   nz, label_20CF
    ld   a, [$C18E]
    and  $1F
    cp   $0D
    jr   z, label_20CF
    ld   a, [$FF9E]
    cp   $02
    jr   nz, label_20CF
    ld   [$C1AD], a
    ld   a, [$FFCC]
    and  $30
    jr   z, label_20CF
    ld   a, [$FFF9]
    and  a
    jr   nz, label_20BF
    ld   a, [$FF9E]
    cp   $02
    jr   nz, label_20CF

label_20BF::
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_5900
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_41D0

label_20CF::
    ld   a, [WR1_AButtonSlot]
    cp   $03
    jr   nz, label_20DD
    ld   a, [$FFCB]
    and  $20
    jr   nz, label_20EC
    ret

label_20DD::
    ld   a, [WR1_BButtonSlot]
    cp   $03
    jp   nz, label_2177
    ld   a, [$FFCB]
    and  $10
    jp   z, label_2177

label_20EC::
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_48B0
    ld   a, $01
    ld   [$FFA1], a
    ld   a, [$FF9E]
    ld   e, a
    ld   d, $00
    ld   hl, data_1F51

    add  hl, de
    ld   a, [hl]
    ld   [$FF9D], a
    ld   hl, data_1F55
    add  hl, de
    ld   a, [$FFCB]
    and  [hl]
    jr   z, label_214E
    ld   hl, data_1F59
    add  hl, de
    ld   a, [hl]
    ld   [$C13C], a
    ld   hl, data_1F5D
    add  hl, de
    ld   a, [hl]
    ld   [$C13B], a
    ld   hl, $FF9D
    inc  [hl]
    ld   e, $08
    ld   a, [$D47C]
    cp   $01
    jr   nz, label_212C
    ld   e, $03

label_212C::
    ld   hl, $C15F
    inc  [hl]
    ld   a, [hl]
    cp   e
    jr   c, label_214D
    xor  a
    ld   [$FFE5], a
    ld   a, [$FFD7]
    cp   $8E
    jr   z, label_2153
    cp   $20
    jr   z, label_2153
    ld   a, [$DBA5]
    and  a
    jr   nz, label_214D
    ld   a, [$FFD7]
    cp   $5C
    jr   z, label_2161

label_214D::
    ret

label_214E::
    xor  a
    ld   [$C15F], a
    ret

label_2153::
    call label_2165
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_50C3
    jp   label_81D

label_2161::
    ld   a, $01
    ld   [$FFE5], a

label_2165::
    ld   a, [$FFD8]
    ld   e, a
    ld   a, [$FFD7]
    ld   [$FFAF], a
    call label_2178
    ld   a, [$FF9E]
    ld   [$C15D], a
    jp   label_2183

label_2177::
    ret

label_2178::
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_5526
    jp   label_81D

label_2183::
    ld   a, $05
    call label_142F
    jr   c, label_21A7
    ld   a, $02
    ld   [$FFF3], a
    ld   hl, $C280
    add  hl, de
    ld   [hl], $07
    ld   hl, $C3B0
    add  hl, de
    ld   a, [$FFE5]
    ld   [hl], a
    ld   c, e
    ld   b, d
    ld   e, $01
    ld   a, $03
    call label_80C
    jp   $5795

label_21A7::
    ret

label_21A8::
    ld   a, [$C14F]
    and  a
    ret  nz
    ld   c, $01
    call label_21B6
    ld   c, $00
    ld   [$FFD7], a

label_21B6::
    ld   b, $00
    ld   hl, $FF9A
    add  hl, bc
    ld   a, [hl]
    push af
    swap a
    and  $F0
    ld   hl, $C11A
    add  hl, bc
    add  a, [hl]
    ld   [hl], a
    rl   d
    ld   hl, $FF98
    add  hl, bc
    pop  af
    ld   e, $00
    bit  7, a
    jr   z, label_21D7
    ld   e, $F0

label_21D7::
    swap a
    and  $0F
    or   e
    rr   d
    adc  a, [hl]
    ld   [hl], a
    ret
    ld   a, [$FFA3]
    push af
    swap a
    and  $F0
    ld   hl, $C149
    add  a, [hl]
    ld   [hl], a
    rl   d
    ld   hl, $FFA2
    pop  af
    ld   e, $00
    bit  7, a
    jr   z, label_21FB
    ld   e, $F0

label_21FB::
    swap a
    and  $0F
    or   e
    rr   d
    adc  a, [hl]
    ld   [hl], a
    ret

data_2205::
    db   $10, $10, 1, 1, $3E, 8, $EA, 0, $21, $CD, $34, $22, $C3, $1D, 8

label_2214::
    ld   a, [$C127]
    and  $20
    jr   z, label_221D
    inc  hl
    inc  hl

label_221D::
    ld   a, [hli]
    ld   [bc], a
    inc  bc
    ld   a, [hl]
    ld   [bc], a
    inc  bc
    ret

label_2224::
    ld   a, [$C127]
    and  $01
    jr   z, label_222C
    inc  hl

label_222C::
    ld   a, [hli]
    ld   [bc], a
    inc  hl
    inc  bc
    ld   a, [hl]
    ld   [bc], a
    inc  bc
    ret
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4A76
    ld   a, $08
    ld   [SelectRomBank_2100], a

label_2241::
    push bc
    push de
    ld   a, [$FFD9]
    ld   c, a
    ld   b, $00
    ld   hl, WR1_TileMap
    add  hl, bc
    ld   b, $00
    ld   c, [hl]
    ld   a, [$FFFE]
    and  a
    jr   z, label_2262
    ld   a, [$DBA5]
    and  a
    jr   nz, label_2262
    ld   a, $02
    ld   [rSVBK], a
    ld   c, [hl]
    xor  a
    ld   [rSVBK], a

label_2262::
    sla  c
    rl   b
    sla  c
    rl   b
    ld   a, [$DBA5]
    and  a
    jr   z, label_2286
    ld   hl, $4000
    ld   a, [$FFFE]
    and  a
    jr   z, label_2299
    ld   hl, $43B0
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_2291
    ld   hl, $4760
    jr   label_2291

label_2286::
    ld   hl, $6749
    ld   a, [$FFFE]
    and  a
    jr   z, label_2299
    ld   hl, $6B1D

label_2291::
    ld   a, $1A
    ld   [SelectRomBank_2100], a
    call label_6576

label_2299::
    call label_3905
    add  hl, bc
    pop  de
    pop  bc
    ld   a, [$C125]
    and  $02
    jr   z, label_22D3
    call label_2214
    ld   a, [$FFFE]
    and  a
    jr   z, label_22D1
    push bc
    push de
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_49D9
    ld   a, [$FFDF]
    ld   [SelectRomBank_2100], a
    call label_2214
    ld   a, b
    ld   [$FFE2], a
    ld   a, c
    ld   [$FFE3], a
    ld   a, d
    ld   [$FFE4], a
    ld   a, e
    ld   [$FFE5], a
    call label_3905
    pop  de
    pop  bc

label_22D1::
    jr   label_22FE

label_22D3::
    call label_2224
    ld   a, [$FFFE]
    and  a
    jr   z, label_22FE
    push bc
    push de
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_49D9
    ld   a, [$FFDF]
    ld   [SelectRomBank_2100], a
    call label_2224
    ld   a, b
    ld   [$FFE2], a
    ld   a, c
    ld   [$FFE3], a
    ld   a, d
    ld   [$FFE4], a
    ld   a, e
    ld   [$FFE5], a
    call label_3905
    pop  de
    pop  bc

label_22FE::
    push bc
    ld   a, [$C125]
    ld   c, a
    ld   b, $00
    ld   hl, data_2205
    add  hl, bc
    ld   a, [$FFD9]
    add  a, [hl]
    ld   [$FFD9], a
    pop  bc
    ld   a, [$C128]
    dec  a
    ld   [$C128], a
    jp   nz, label_2241
    ld   a, $20
    ld   [SelectRomBank_2100], a
    jp   $5570

label_2321::
    ld   a, [$C19F]
    and  a
    ret  z
    ld   e, a
    ld   a, [$DB95]
    cp   $01
    ld   a, $7E
    jr   nz, label_2332
    ld   a, $7F

label_2332::
    ld   [$FFE8], a
    ld   a, [$C164]
    and  a
    ld   a, [$C170]
    jr   nz, label_2341
    cp   $20
    jr   c, label_2345

label_2341::
    and  $0F
    or   $10

label_2345::
    ld   [$C171], a
    ld   a, e
    and  $7F
    dec  a
    rst  0
    ld   l, e
    inc  hl
    or   b
    inc  hl
    or   b
    inc  hl
    or   b
    inc  hl
    ld   a, l
    inc  h
    or   a
    inc  h
    call label_2924
    dec  h
    sub  a, l
    ld   h, $14
    daa
    ld   l, b
    daa
    adc  a, d
    inc  h
    sub  a, e
    daa
    xor  a
    inc  h
    or   c
    inc  hl
    ld   a, $14
    ld   [SelectRomBank_2100], a
    jp   $5449

label_2373::
    call label_2385
    ld   a, $01
    ld   [$C112], a
    ret

label_237C::
    call label_2385
    ld   a, $02
    ld   [$C112], a
    ret

label_2385::
    push af
    xor  a
    ld   [$C177], a
    pop  af
    ld   [$C173], a
    xor  a
    ld   [$C16F], a
    ld   [$C170], a
    ld   [$C164], a
    ld   [$C108], a
    ld   [$C112], a
    ld   a, $0F
    ld   [$C5AB], a
    ld   a, [$FF99]
    cp   $48
    rra
    and  $80
    or   $01
    ld   [$C19F], a
    ret

data_23B0::
    db   $C9, $AF, $EA, $9F, $C1, $3E, $18, $EA, $34, $C1, $F0, $FE, $A7, $C8, $FA, $95
    db   $DB, $FE, $B, $C0, $FA, $CC, $C3, $FE, 8, $D8, $3E, $21, $EA, 0, $21, $C3

data_23D0::
    db   $CF, $53, 0, $24, $48, 0

data_23D6::
    db   $24, $48, $98, $98, $98, $99

data_23DC::
    db   $99, $99, $21, $61, $A1, $41, $81, $C1

label_23E4::
    ld   a, [$C19F]
    bit  7, a
    jr   z, label_23EF
    and  $7F
    add  a, $03

label_23EF::
    ld   e, a
    ld   d, $00
    ld   hl, data_23D0
    add  hl, de
    ld   a, [hl]
    add  a, $00
    ld   c, a
    ld   a, $D5
    adc  a, $00
    ld   b, a
    ld   hl, data_23DC
    add  hl, de
    ld   a, [$C12F]
    add  a, [hl]
    ld   l, a
    ld   [$FFD7], a
    ld   hl, data_23D6
    add  hl, de
    ld   a, [$C12E]
    add  a, [hl]
    ld   h, a
    ld   a, [$FFD7]
    ld   l, a
    xor  a
    ld   e, a
    ld   d, a
    ld   a, [$FFFE]
    and  a
    jr   nz, label_2444

label_241E::
    ld   a, [hli]
    ld   [bc], a
    inc  bc
    ld   a, l
    and  $1F
    jr   nz, label_242B
    ld   a, l
    dec  a
    and  $E0
    ld   l, a

label_242B::
    inc  e
    ld   a, e
    cp   $12
    jr   nz, label_241E
    ld   e, $00
    ld   a, [$FFD7]
    add  a, $20
    ld   [$FFD7], a
    jr   nc, label_243C
    inc  h

label_243C::
    ld   l, a
    inc  d
    ld   a, d
    cp   $02
    jr   nz, label_241E
    ret

label_2444::
    ld   a, [hl]
    ld   [bc], a
    ld   a, $01
    ld   [rVBK], a
    ld   a, $02
    ld   [rSVBK], a
    ld   a, [hl]
    ld   [bc], a
    xor  a
    ld   [rVBK], a
    ld   [rSVBK], a
    inc  bc
    ld   a, l
    add  a, $01
    and  $1F
    jr   nz, label_2463
    ld   a, l
    and  $E0
    ld   l, a
    jr   label_2464

label_2463::
    inc  l

label_2464::
    inc  e
    ld   a, e
    cp   $12
    jr   nz, label_2444
    ld   e, $00
    ld   a, [$FFD7]
    add  a, $20
    ld   [$FFD7], a
    jr   nc, label_2475
    inc  h

label_2475::
    ld   l, a
    inc  d
    ld   a, d
    cp   $02
    jr   nz, label_2444
    ret
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    jp   $4A2C

label_2485::
    ld   hl, $C19F
    inc  [hl]
    ret
    ld   a, [$C1AB]
    and  a
    jr   nz, label_24AE
    ld   a, [$FFCC]
    and  $30
    jr   z, label_24AE

label_2496::
    xor  a
    ld   [$C16F], a
    ld   a, [$DB95]
    cp   $0D
    jr   nz, label_24A4
    xor  a
    jr   label_24AB

label_24A4::
    ld   a, [$C19F]
    and  $F0
    or   $0E

label_24AB::
    ld   [$C19F], a

label_24AE::
    ret
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    jp   $4AA8
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    ld   a, [$C172]
    and  a
    jr   z, label_24C7
    dec  a
    ld   [$C172], a
    ret

label_24C7::
    call label_49F1
    jp   label_2485
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    ld   a, [$C19F]
    ld   c, a
    ld   a, [$C171]
    bit  7, c
    jr   z, label_24DF
    add  a, $20

label_24DF::
    ld   c, a
    ld   b, $00
    ld   e, $01
    ld   d, $00
    ld   a, [$C12E]
    ld   hl, $45C1
    add  hl, bc
    add  a, [hl]
    ld   hl, $D600
    add  hl, de
    ldi  [hl], a
    ld   [$C175], a
    push hl
    ld   hl, $4601
    add  hl, bc
    ld   a, [hl]
    and  $E0
    add  a, $20
    ld   e, a
    ld   a, [$C12F]
    add  a, [hl]
    ld   d, a
    cp   e
    jr   c, label_250D
    ld   a, d
    sub  a, $20
    ld   d, a

label_250D::
    ld   a, d
    ld   [$C176], a
    pop  hl
    ldi  [hl], a
    xor  a
    ldi  [hl], a
    push hl
    ld   a, [$C170]
    and  $1F
    ld   c, a
    ld   hl, $45A1
    add  hl, bc
    ld   a, [hl]
    pop  hl
    ldi  [hl], a
    call label_2485
    jp   label_2529

label_2529::
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    ld   a, [$C170]
    and  $1F
    ld   c, a
    ld   b, $00
    ld   e, $05
    ld   d, $00
    ld   hl, $4581
    add  hl, bc
    ld   a, [hl]
    ld   hl, $D600
    add  hl, de
    ldi  [hl], a
    push hl
    ld   hl, $4561
    add  hl, bc
    ld   a, [hl]
    pop  hl
    ldi  [hl], a
    ld   a, $0F
    ldi  [hl], a
    push hl
    ld   a, [$C112]
    ld   d, a
    ld   a, [$C173]
    ld   e, a
    sla  e
    rl   d
    ld   hl, $4001
    add  hl, de
    ld   a, [hli]
    ld   e, a
    ld   d, [hl]
    push de
    ld   a, [$C173]
    ld   e, a
    ld   a, [$C112]
    ld   d, a
    ld   hl, $4741
    add  hl, de
    ld   a, [hl]
    and  $3F
    ld   [SelectRomBank_2100], a
    pop  hl
    ld   a, [$C170]
    ld   e, a
    ld   a, [$C164]
    ld   d, a
    add  hl, de
    ld   a, [hli]
    ld   e, a
    ld   a, [hl]
    ld   [$C3C3], a
    call label_81D
    ld   a, e
    ld   [$FFD7], a
    cp   $FE
    jr   nz, label_25A4
    pop  hl
    xor  a
    ld   [$D601], a

label_2595::
    ld   a, [$C19F]
    and  $F0
    or   $0D
    ld   [$C19F], a

label_259F::
    ld   a, $15
    ld   [$FFF2], a
    ret

label_25A4::
    cp   $FF
    jr   nz, label_25BD
    pop  hl
    xor  a
    ld   [$D601], a

label_25AD::
    ld   a, [$C19F]
    and  $F0
    or   $0C
    ld   [$C19F], a
    ret

data_25B8::
    db $55, $49, $4A, $46, $47

label_25BD::
    cp   $20
    jr   z, label_25E0
    push af
    ld   a, [$C5AB]
    ld   d, a
    ld   e, $01
    cp   $0F
    jr   z, label_25D4
    ld   e, $07
    cp   $19
    jr   z, label_25D4
    ld   e, $03

label_25D4::
    ld   a, [$C170]
    add  a, $04
    and  e
    jr   nz, label_25DF
    ld   a, d
    ld   [$FFF3], a

label_25DF::
    pop  af

label_25E0::
    ld   d, $00
    cp   $23
    jr   nz, label_2608
    ld   a, [$C108]
    ld   e, a
    inc  a
    cp   $05
    jr   nz, label_25F0
    xor  a

label_25F0::
    ld   [$C108], a
    ld   hl, $DB4F
    ld   a, [$DB6E]
    and  a
    jr   z, label_25FF
    ld   hl, data_25B8

label_25FF::
    add  hl, de
    ld   a, [hl]
    dec  a
    cp   $FF
    jr   nz, label_2608
    ld   a, $20

label_2608::
    ld   [$FFD8], a
    ld   e, a
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    ld   hl, $4641
    add  hl, de
    ld   e, [hl]
    ld   d, $00
    sla  e
    rl   d
    sla  e
    rl   d
    sla  e
    rl   d
    sla  e
    rl   d
    call label_81D
    ld   hl, $5000
    add  hl, de
    ld   c, l
    ld   b, h
    pop  hl
    ld   e, $10

label_2633::
    ld   a, [bc]
    ldi  [hl], a
    inc  bc
    dec  e
    jr   nz, label_2633
    ld   [hl], $00
    push hl
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    ld   a, [$FFD8]
    ld   e, a
    ld   d, $00
    xor  a
    pop  hl
    and  a
    jr   z, label_2663
    ld   e, a
    ld   a, [$C175]
    ldi  [hl], a
    ld   a, [$C176]
    sub  a, $20
    ldi  [hl], a
    ld   a, $00
    ldi  [hl], a
    ld   a, $C9
    rr   e
    jr   c, label_2660
    dec  a

label_2660::
    ldi  [hl], a
    ld   [hl], $00

label_2663::
    ld   a, [$C170]
    add  a, $01
    ld   [$C170], a
    ld   a, [$C164]
    adc  a, $00
    ld   [$C164], a
    xor  a
    ld   [$C1CC], a
    ld   a, [$C171]
    cp   $1F
    jr   z, label_268E

label_267E::
    ld   a, [$C19F]
    and  $F0
    or   $06
    ld   [$C19F], a
    ld   a, $00
    ld   [$C172], a
    ret

label_268E::
    jp   label_2485

data_2691::
    db $22, $42

data_2693::
    db $98, $99

label_2695::
    ld   a, [$C170]
    and  $1F
    jr   nz, label_26E1
    ld   a, [$C3C3]
    cp   $FF
    jp   z, label_25AD
    cp   $FE
    jp   z, label_2595
    ld   a, [$C1CC]
    and  a
    jr   nz, label_26B6
    inc  a
    ld   [$C1CC], a
    call label_259F

label_26B6::
    call label_27BB
    ld   a, [$FFCC]
    bit  4, a
    jr   nz, label_26E1
    bit  5, a
    jr   z, label_2714
    ld   a, $1C
    ld   [SelectRomBank_2100], a
    ld   a, [$DB95]
    cp   $07
    jp   z, label_278B
    ld   a, [$C173]
    ld   e, a
    ld   a, [$C112]
    ld   d, a
    ld   hl, $4741
    add  hl, de
    ld   a, [hl]
    and  a
    jp   z, label_278B

label_26E1::
    ld   e, $00
    ld   a, [$C19F]
    and  $80
    jr   z, label_26EB
    inc  e

label_26EB::
    ld   d, $00
    ld   hl, data_2693
    add  hl, de
    ld   a, [$C12E]
    add  a, [hl]
    ld   [$D601], a
    ld   hl, data_2691
    add  hl, de
    ld   a, [$C12F]
    add  a, [hl]
    ld   [$D602], a
    ld   a, $4F
    ld   [$D603], a
    ld   a, [$FFE8]
    ld   [$D604], a
    xor  a
    ld   [$D605], a
    call label_2485

label_2714::
    ret

data_2715::
    db $62, $82

data_2717::
    db $98, $99

label_2719::
    ld   e, $00
    ld   a, [$C19F]
    and  $80
    jr   z, label_2723
    inc  e

label_2723::
    ld   d, $00
    ld   hl, data_2717
    add  hl, de
    ld   a, [$C12E]
    add  a, [hl]
    ld   b, a
    ld   hl, data_2715

label_2731::
    add  hl, de
    ld   a, [$C12F]
    add  a, [hl]
    ld   c, a
    ld   e, $10

label_2739::
    ld   a, c
    sub  a, $20
    ld   l, a
    ld   h, b
    ld   a, [bc]
    ld   [hl], a
    push bc
    ld   a, c
    add  a, $20
    ld   c, a
    ld   a, l
    add  a, $20
    ld   l, a
    ld   a, [bc]
    ld   [hl], a
    ld   a, l
    add  a, $20
    ld   l, a
    ld   a, [$FFE8]
    ld   [hl], a
    pop  bc
    inc  bc
    ld   a, c
    and  $1F
    jr   nz, label_275D
    ld   a, c
    sub  a, $20
    ld   c, a

label_275D::
    dec  e
    jr   nz, label_2739
    ld   a, $08
    ld   [$C172], a
    jp   label_2485
    ret

data_2769::
    db $42, $62

data_276B::
    db $98, $99

label_276D::
    ld   e, 0
    ld   a, [$C0FB+$A4]
    and  $80 ; 'Ç'
    jr   z, label_2777
    inc  e

label_2777::
    ld   d, $00
    ld   hl, data_276B
    add  hl, de
    ld   a, [$C12E]
    add  a, [hl]
    ld   b, a
    ld   hl, data_2769
    call label_2731
    jp   label_267E

label_278B::
    ld   a, $02
    ld   [$C177], a
    jp   label_2496
    ld   a, [$FFCC]
    bit  4, a
    jp   nz, label_27B7
    and  $03
    jr   z, label_27AA
    ld   hl, $C177
    ld   a, [hl]
    inc  a
    and  $01
    ld   [hl], a
    ld   a, $0A
    ld   [$FFF2], a

label_27AA::
    ld   a, [$FFE7]
    and  $10
    ret  z
    ld   a, $17
    ld   [SelectRomBank_2100], a
    jp   $7DCC

label_27B7::
    call label_2496
    ret

label_27BB::
    ld   a, $17
    ld   [SelectRomBank_2100], a
    jp   $7D7C
    ld   [$D368], a
    ld   [$FFBF], a
    ld   a, $38
    ld   [$FFAB], a
    xor  a
    ld   [$FFA8], a
    ret
    push hl
    ld   hl, $4000
    ld   [hl], $00
    ld   hl, $0000
    ld   [hl], $0A
    pop  hl
    ret
    ld   a, $02
    ld   [SelectRomBank_2100], a
    push bc
    call label_4146
    pop  bc
    jp   label_81D
    ld   a, $38
    ld   [$FFA8], a
    xor  a
    ld   [$FFAB], a
    ret

label_27F2::
    ld   a, [$FFBC]
    and  a
    jr   nz, label_27FF
    ld   a, $1F
    ld   [SelectRomBank_2100], a
    call label_4003

label_27FF::
    jp   label_81D

label_2802::
    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_5E67
    jp   label_81D

label_280D::
    push hl
    ld   a, [$FFE7]
    ld   hl, $C13D
    add  a, [hl]
    ld   hl, rLY
    add  a, [hl]
    rrca
    ld   [$C13D], a
    pop  hl
    ret

label_281E::
    ld   a, [$C124]
    and  a
    jr   nz, label_2886
    ld   a, [$DB95]
    cp   $0B
    jr   nz, label_2852
    ld   a, [$DB96]
    cp   $07
    jr   nz, label_284C
    ld   a, [$C11C]
    cp   $07
    jr   nz, label_283F
    ld   a, [$FF9C]
    cp   $04
    jr   z, label_2852

label_283F::
    ld   a, [$C16B]
    cp   $04
    jr   nz, label_284C
    ld   a, [$DDD5]
    and  a
    jr   z, label_2852

label_284C::
    xor  a
    ld   [$FFCB], a
    ld   [$FFCC], a
    ret

label_2852::
    ld   a, $20
    ld   [rJOYP], a
    ld   a, [$FF00]
    ld   a, [$FF00]
    cpl
    and  $0F
    ld   b, a
    ld   a, $10
    ld   [rJOYP], a
    ld   a, [$FF00]
    ld   a, [$FF00]
    ld   a, [$FF00]
    ld   a, [$FF00]
    ld   a, [$FF00]
    ld   a, [$FF00]
    ld   a, [$FF00]
    ld   a, [$FF00]
    swap a
    cpl
    and  $F0
    or   b
    ld   c, a
    ld   a, [$FFCB]
    xor  c
    and  c
    ld   [$FFCC], a
    ld   a, c
    ld   [$FFCB], a
    ld   a, $30
    ld   [rJOYP], a

label_2886::
    ret
    push bc
    ld   a, [$FFCD]
    ld   hl, $FF97
    add  a, [hl]
    and  $F8
    srl  a
    srl  a
    srl  a
    ld   de, $0000
    ld   e, a
    ld   hl, $9800
    ld   b, $20

label_289F::
    add  hl, de
    dec  b
    jr   nz, label_289F
    push hl
    ld   a, [$FFCE]
    ld   hl, $FF96
    add  a, [hl]
    pop  hl
    and  $F8
    srl  a
    srl  a
    srl  a
    ld   de, $0000
    ld   e, a
    add  hl, de
    ld   a, h
    ld   [$FFCF], a
    ld   a, l
    ld   [$FFD0], a
    pop  bc
    ret

func_28C0::
    ld   e, a
    ld   d, $00
    sla  e
    rl   d
    pop  hl
    add  hl, de
    ld   e, [hl]
    inc  hl
    ld   d, [hl]
    ld   l, e
    ld   h, d
    jp   [hl]

label_28CF::
    ld   a, [$FFFF]
    ld   [$FFD2], a
    res  0, a
    ld   [rIE], a

label_28D7::
    ld   a, [$FF44]
    cp   $91
    jr   nz, label_28D7
    ld   a, [$FF40]
    and  $7F
    ld   [rLCDC], a
    ld   a, [$FFD2]
    ld   [rIE], a
    ret
    ld   a, $01
    call label_80C
    jp   $6CE3
    ld   a, $7E
    ld   bc, $0400
    jr   label_28FC

label_28F7::
    ld   a, $7F
    ld   bc, $0800

label_28FC::
    ld   d, a
    ld   hl, $9800

label_2900::
    ld   a, d
    ldi  [hl], a
    dec  bc
    ld   a, b
    or   c
    jr   nz, label_2900
    ret
    ld   [SelectRomBank_2100], a
    call CopyData
    ld   a, $01
    ld   [SelectRomBank_2100], a
    ret

include "CopyData.asm"

label_291D::
    inc  de
    ld   h, a
    ld   a, [de]
    ld   l, a
    inc  de
    ld   a, [de]
    inc  de

label_2924::
    call label_2941

label_2927::
    ld   a, [$C124]
    and  a
    jr   nz, label_293C

label_292D::
    ld   a, [de]
    and  a
    jr   nz, label_291D
    ret

label_2932::
    inc  de
    ld   h, a
    ld   a, [de]
    ld   l, a
    inc  de
    ld   a, [de]
    inc  de
    call label_2991

label_293C::
    ld   a, [de]
    and  a
    jr   nz, label_2932
    ret

label_2941::
    push af
    and  $3F
    ld   b, a
    inc  b
    pop  af
    rlca
    rlca
    and  $03
    jr   z, label_2955
    dec  a
    jr   z, label_2966
    dec  a
    jr   z, label_2977
    jr   label_2984

label_2955::
    ld   a, [de]
    ldi  [hl], a
    ld   a, l
    and  $1F
    jr   nz, label_2961
    dec  hl
    ld   a, l
    and  $E0
    ld   l, a

label_2961::
    inc  de
    dec  b
    jr   nz, label_2955
    ret

label_2966::
    ld   a, [de]
    ldi  [hl], a
    ld   a, l
    and  $1F
    jr   nz, label_2972
    dec  hl
    ld   a, l
    and  $E0
    ld   l, a

label_2972::
    dec  b
    jr   nz, label_2966
    inc  de
    ret

label_2977::
    ld   a, [de]
    ld   [hl], a
    inc  de
    ld   a, b
    ld   bc, $0020
    add  hl, bc
    ld   b, a
    dec  b
    jr   nz, label_2977
    ret

label_2984::
    ld   a, [de]
    ld   [hl], a
    ld   a, b
    ld   bc, $0020
    add  hl, bc
    ld   b, a
    dec  b
    jr   nz, label_2984
    inc  de
    ret

label_2991::
    push af
    and  $3F
    ld   b, a
    inc  b
    pop  af
    and  $80
    jr   nz, label_29B0

label_299B::
    ld   a, [de]
    cp   $EE
    jr   z, label_29AB
    ldi  [hl], a
    ld   a, l
    and  $1F
    jr   nz, label_29AB
    dec  hl
    ld   a, l
    and  $E0
    ld   l, a

label_29AB::
    inc  de
    dec  b
    jr   nz, label_299B
    ret

label_29B0::
    ld   a, [de]
    cp   $EE
    jr   z, label_29B6
    ld   [hl], a

label_29B6::
    inc  de
    ld   a, b
    ld   bc, $0020
    add  hl, bc
    ld   b, a
    dec  b
    jr   nz, label_29B0
    ret
    ld   bc, $1600
    jr   label_29DC
    ld   bc, $1300
    jr   label_29DC
    ld   bc, $002F
    jr   label_29D3

label_29D0::
    ld   bc, $006D

label_29D3::
    ld   hl, $FF90
    call ZeroMemory
    ld   bc, $1F00

label_29DC::
    ld   hl, $C000

ZeroMemory::
    ld   a, [$FFFE]
    push af

label_29E2::
    xor  a
    ldi  [hl], a
    dec  bc
    ld   a, b
    or   c
    jr   nz, label_29E2
    pop  af
    ld   [$FFFE], a
    ret
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_5884
    jp   label_81D
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4C98
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ret
    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_5A59
    jp   label_81D

label_2A12::
    ld   a, $08
    ld   [SelectRomBank_2100], a
    ld   hl, $4AD4
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_2A23
    ld   hl, $4BD4

label_2A23::
    add  hl, de
    ld   a, [hl]
    ret

label_2A26::
    call label_2A12
    jp   label_81D
    call label_2A12
    push af

label_2A2C::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    pop  af
    ret

label_2A37::
    ld   a, $13
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $6800
    ld   de, $9000
    ld   bc, $0800
    call CopyData
    ld   hl, $7000
    ld   de, $8800
    ld   bc, $0800
    jp   CopyData

label_2A57::
    call label_2A66
    ld   de, $8400
    ld   hl, $7600
    ld   bc, $0100
    jp   CopyData

label_2A66::
    ld   a, $13
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $4000
    ld   de, $8000
    ld   bc, $1800
    call CopyData
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $57E0
    ld   de, $97F0
    ld   bc, $0010
    call CopyData
    ld   a, $12
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $7500
    ld   de, $8000
    ld   bc, $0040
    call CopyData
    ld   de, $8D00
    ld   hl, $7500
    ld   bc, $0200
    jp   CopyData
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $5000
    ld   de, $9000
    ld   bc, $0800
    call CopyData
    ld   a, $12
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $6000
    ld   de, $8000
    ld   bc, $0800
    call CopyData
    ld   a, $0F
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $6000
    ld   de, $8800
    ld   bc, $0800
    jp   CopyData
    ld   hl, $4000
    ld   a, [$FFFE]
    and  a
    jr   z, label_2B01
    ld   hl, $6800
    ld   a, $35
    jr   label_2B06
    ld   hl, $4800
    jr   label_2B01
    ld   hl, $6000

label_2B01::
    ld   a, $13
    call label_B0B

label_2B06::
    ld   [SelectRomBank_2100], a
    ld   de, $8000
    ld   bc, $0800
    call CopyData
    ld   a, $13
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $5800
    ld   de, $8800
    ld   bc, $1000
    jp   CopyData
    call label_8A4
    ld   hl, $6800
    ld   a, $10
    call label_2B92
    call label_8A4
    ld   a, $12
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $6600
    ld   de, $8000
    ld   bc, $0080
    call CopyData
    call label_8A4
    ld   a, [$FFFE]
    and  a
    jr   nz, label_2B61
    ld   a, $10
    ld   [SelectRomBank_2100], a
    ld   hl, $6900
    ld   de, $8100
    ld   bc, $0700
    jp   CopyData

label_2B61::
    ld   a, $38
    ld   [SelectRomBank_2100], a
    ld   hl, $5000
    ld   de, $8000
    ld   bc, $0800
    jp   CopyData
    ld   hl, $7800
    ld   a, [$FFFE]
    and  a
    jr   z, label_2B90
    ld   hl, $7800
    ld   a, $35
    jr   label_2B95
    ld   hl, $4800
    ld   a, [$FFFE]
    and  a
    jr   z, label_2B90
    ld   hl, $7000
    ld   a, $35
    jr   label_2B95

label_2B90::
    ld   a, $13

label_2B92::
    call label_B0B

label_2B95::
    ld   [SelectRomBank_2100], a
    ld   de, $8000
    ld   bc, $0800
    call CopyData
    ld   a, $13
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $7000
    ld   de, $8800
    ld   bc, $0800
    call CopyData
    ld   hl, $6800
    ld   de, $9000
    ld   bc, $0800
    jp   CopyData

label_2BC1::
    push bc
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_5838
    call label_81D
    pop  bc
    ret

label_2BCF::
    ld   a, $0C
    call label_813
    ld   hl, data_bank_c_0000
    ld   de, $8000
    ld   bc, data_bank_c_0400-data_bank_c_0000
    call CopyData
    ld   a, $0C
    call label_813
    ld   hl, data_bank_c_0800
    ld   de, $8800
    ld   bc, data_bank_c_1800-data_bank_c_0800
    call CopyData
    ld   hl, data_bank_c_07A0
    ld   de, $8E00
    ld   bc, data_bank_c_07C0-data_bank_c_07A0
    call CopyData
    ld   a, $01
    call label_80C
    ret

    call label_2BCF
    ld   a, $0F
    call label_813
    ld   hl, $4000
    ld   de, $8800
    ld   bc, $0400
    call CopyData
    ld   a, $0F
    call label_813
    ld   hl, $5000
    ld   de, $9000
    ld   bc, $0800
    jp   CopyData
    ld   a, $20
    call label_80C
    ld   hl, $4589
    ld   a, [$FFF7]
    ld   e, a
    ld   d, $00
    cp   $FF
    jr   nz, label_2C53
    ld   a, $35
    ld   [SelectRomBank_2100], a
    ld   hl, $6200
    ld   de, $9000
    ld   bc, $0100
    call CopyData
    ld   e, $00
    ld   d, e
    ld   hl, $6000
    push de
    jr   label_2C5D

label_2C53::
    push de
    add  hl, de
    ld   h, [hl]
    ld   l, $00
    ld   a, $0D
    call label_813

label_2C5D::
    ld   de, $9100
    ld   bc, $0100
    call CopyData
    ld   a, $0D
    call label_813
    ld   hl, $4000
    ld   de, $9200
    ld   bc, $0600
    call CopyData
    ld   a, $20
    ld   [SelectRomBank_2100], a
    pop  de
    push de
    ld   hl, $45A9
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_2C8A
    ld   hl, $45C9

label_2C8A::
    add  hl, de
    ld   h, [hl]
    ld   l, $00
    call label_81D
    ld   de, $9200
    ld   bc, $0200
    call CopyData
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $47C0
    ld   de, $DCC0
    ld   bc, $0040
    call CopyData
    call label_2D50
    ld   a, $20
    ld   [SelectRomBank_2100], a
    pop  de
    ld   hl, $45CA
    add  hl, de
    ld   h, [hl]
    ld   l, $00
    ld   a, $12
    call label_813
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_2CD1
    ld   hl, $6100
    ld   a, $35
    ld   [SelectRomBank_2100], a

label_2CD1::
    ld   de, $8F00
    ld   bc, $0100
    call CopyData
    ld   a, [$DBAF]
    ld   [SelectRomBank_2100], a
    ld   hl, $7D00
    ld   a, [$FFF7]
    cp   $FF
    jr   z, label_2CF5
    cp   $0A
    jr   c, label_2CF5
    ld   a, $0C
    call label_813
    ld   hl, $4C00

label_2CF5::
    ld   de, $8C00
    ld   bc, $0300
    call CopyData

label_2CFE::
    ld   a, [$DB4B]
    and  a
    jr   z, label_2D07
    call label_1E2B

label_2D07::
    ld   a, [$DBA5]
    and  a
    jr   z, label_2D17
    ld   a, [$FFF7]
    cp   $FF
    jr   z, label_2D21
    cp   $0A
    jr   c, label_2D21

label_2D17::
    ld   a, [$DB15]
    cp   $06
    jr   c, label_2D21
    call label_1EA1

label_2D21::
    ld   a, [$DB0E]
    cp   $02
    jr   c, label_2D2C
    ld   a, $0D
    ld   [$FFA5], a

label_2D2C::
    ret
    ld   a, $0C
    call label_813
    ld   hl, $5200
    ld   de, $9200
    ld   bc, $0600
    call CopyData
    ld   hl, $4C00
    ld   de, $8C00
    ld   bc, $0400
    call CopyData
    call label_2D50
    jp   label_2CFE

label_2D50::
    xor  a
    ld   [$FFA6], a
    ld   [$FFA7], a
    call label_1BD2
    ld   a, $0C
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $4800
    ld   de, $8800
    ld   bc, $0800
    call CopyData
    ld   hl, $4200
    ld   de, $8200
    ld   bc, $0100
    call CopyData
    ret
    ld   a, $01
    call label_80C
    ld   hl, $6D4A
    ld   de, $8700
    ld   bc, $0080
    call CopyData
    ld   a, $10
    call label_813
    ld   hl, $5400
    ld   de, $8000
    ld   bc, $0600
    call CopyData
    ld   hl, $4000
    ld   de, $8800
    ld   bc, $1000
    jp   CopyData
    ld   a, $0F
    call label_813
    ld   hl, $4900
    ld   de, $8800
    ld   bc, $0700
    call CopyData
    ld   a, $38
    call label_80C
    ld   a, [$FFFE]
    and  a
    jr   nz, label_2DC7
    ld   hl, $5C00
    jr   label_2DCA

label_2DC7::
    ld   hl, $5800

label_2DCA::
    ld   de, $8400
    ld   bc, $0400
    call CopyData
    ld   a, [$FFFE]
    and  a
    jr   nz, label_2DDD
    ld   hl, $6600
    jr   label_2DE0

label_2DDD::
    ld   hl, $6500

label_2DE0::
    ld   de, $8200
    ld   bc, $0100
    jp   CopyData
    ld   a, $0C
    call label_813
    ld   hl, $7800
    ld   de, $8F00
    ld   bc, $0800
    call CopyData
    ld   hl, $5000
    ld   de, $8200
    ld   bc, $0100
    jp   CopyData
    ld   hl, $7000
    jr   label_2E13
    ld   hl, $7800
    jr   label_2E13
    ld   hl, $5800

label_2E13::
    ld   a, $10
    call label_813
    ld   de, $9000
    ld   bc, $0800
    jp   CopyData
    ld   a, $13
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   hl, $7C00
    ld   de, $8C00
    ld   bc, $0400
    call CopyData
    ld   hl, $6800
    ld   de, $9000
    ld   bc, $0400
    jp   CopyData
    ld   a, $10
    call label_813
    ld   hl, $6700
    ld   de, $8400
    ld   bc, $0400
    call CopyData
    ld   hl, $6000
    ld   de, $9000
    ld   bc, $0600
    jp   CopyData
    ld   a, $0F
    call label_80C
    ld   hl, $4400
    ld   de, $8800
    ld   bc, $0500
    jp   CopyData

data_2E6F::
    db 0

label_2E70::
    ld   de, $120E
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_2E84
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_475A
    jp   label_2F12

label_2E84::
    xor  a

label_2E85::
    ld   [$FFD7], a
    ld   hl, $C193
    ld   e, a
    ld   d, $00
    add  hl, de
    and  a
    jr   nz, label_2ED3
    ld   a, [$DBA5]
    and  a
    jr   z, label_2EB0
    ld   a, [$FFF9]
    and  a
    jr   nz, label_2ED3
    ld   a, [$FFF7]
    cp   $14
    jr   z, label_2ED3
    cp   $0A
    jr   c, label_2ED3
    ld   a, [$FFF6]
    cp   $FD
    jr   z, label_2ED3
    cp   $B1
    jr   z, label_2ED3

label_2EB0::
    ld   a, [$DB56]
    cp   $01
    ld   a, $A4
    jr   z, label_2ED1
    ld   a, [$DB79]
    and  a
    ld   a, $D8
    jr   nz, label_2ED1
    ld   a, [$DB7B]
    and  a
    ld   a, $DD
    jr   nz, label_2ED1
    ld   a, [$DB73]
    and  a
    jr   z, label_2ED3
    ld   a, $8F

label_2ED1::
    jr   label_2ED4

label_2ED3::
    ld   a, [hl]

label_2ED4::
    and  a
    jr   z, label_2F0A
    push af
    and  $3F
    ld   b, a
    ld   c, $00
    pop  af
    swap a
    rra
    rra
    and  $03
    ld   e, a
    ld   d, $00
    ld   hl, data_2E6F
    add  hl, de
    ld   a, [hl]
    and  a
    jr   z, label_2EF2
    call label_B0B

label_2EF2::
    ld   [SelectRomBank_2100], a
    ld   a, [$FFD7]
    ld   d, a
    ld   e, $00
    ld   hl, $8400
    add  hl, de
    ld   e, l
    ld   d, h
    ld   hl, $4000
    add  hl, bc
    ld   bc, $0100
    call CopyData

label_2F0A::
    ld   a, [$FFD7]
    inc  a
    cp   $04
    jp   nz, label_2E85

label_2F12::
    ld   de, $9000
    ld   a, [$DBA5]
    and  a
    jp   z, label_2FAD
    ld   a, $0D
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$FFF9]
    and  a
    jr   z, label_2F4B
    ld   hl, $7000
    ld   a, [$FFF7]
    cp   $06
    jr   z, label_2F41
    cp   $0A
    jr   nc, label_2F3B

label_2F36::
    ld   hl, $7800
    jr   label_2F41

label_2F3B::
    ld   a, [$FFF6]
    cp   $E9
    jr   z, label_2F36

label_2F41::
    ld   de, $9000
    ld   bc, $0800
    call CopyData
    ret

label_2F4B::
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_2F57
    ld   a, [$FFF6]
    cp   $12
    jr   nz, label_2F69

label_2F57::
    ld   hl, $5000
    ld   a, [$FF94]
    cp   $FF
    jr   z, label_2F69
    add  a, $50
    ld   h, a
    ld   bc, $0100
    call CopyData

label_2F69::
    ld   a, [$FFF7]
    cp   $10
    jr   nz, label_2F87
    ld   a, [$FFF6]
    cp   $B5
    jr   nz, label_2F87
    ld   a, $35
    ld   [SelectRomBank_2100], a
    ld   hl, $6600
    ld   de, $8F00
    ld   bc, $0200
    call CopyData
    ret

label_2F87::
    ld   a, [$FFFE]
    and  a
    ret  z
    ld   a, [$FFF7]
    and  a
    ret  nz
    ld   a, $35
    ld   [SelectRomBank_2100], a
    ld   hl, $6E00
    ld   de, $9690
    ld   bc, $0010
    call CopyData
    ld   hl, $6E10
    ld   de, $9790
    ld   bc, $0010
    call CopyData
    ret

label_2FAD::
    ld   a, $0F
    call label_B0B
    ld   [SelectRomBank_2100], a
    ld   a, [$FF94]
    cp   $0F
    jr   z, label_2FC6
    add  a, $40
    ld   h, a
    ld   l, $00
    ld   bc, $0200
    call CopyData

label_2FC6::
    ret

label_2FC7::
    ld   a, [hli]
    ld   [de], a
    inc  de
    ld   a, [hli]
    ld   [de], a
    ret

label_2FCD::
    ld   a, [hl]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    ld   hl, $6749
    ld   a, [$FFF7]
    cp   $FF
    jr   z, label_2FEC
    cp   $10
    jr   nz, label_2FF1
    ld   a, [$FFF6]
    cp   $B5
    jr   nz, label_2FF1

label_2FEC::
    ld   hl, $4760
    jr   label_2FFA

label_2FF1::
    ld   a, [$DBA5]
    and  a
    jr   z, label_2FFA
    ld   hl, $4000

label_2FFA::
    add  hl, bc
    ld   a, [hli]
    ld   [de], a
    inc  de
    ld   a, [hli]
    ld   [de], a
    ld   a, e
    add  a, $1F
    ld   e, a
    ld   a, d
    adc  a, $00
    ld   d, a
    ld   a, [hli]
    ld   [de], a
    inc  de
    ld   a, [hl]
    ld   [de], a
    ret

label_300E::
    ld   a, $02
    ld   [rSVBK], a
    ld   c, [hl]
    xor  a
    ld   [rSVBK], a
    jr   label_3019

label_3018::
    ld   c, [hl]

label_3019::
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    ld   a, $1A
    ld   [SelectRomBank_2100], a
    call label_6576
    call label_3905
    ld   a, [$DBA5]
    and  a
    jr   z, label_304C
    ld   hl, $43B0
    ld   a, [$FFF7]
    cp   $FF
    jr   z, label_3047
    cp   $10
    jr   nz, label_304F
    ld   a, [$FFF6]
    cp   $B5
    jr   nz, label_304F

label_3047::
    ld   hl, $4760
    jr   label_304F

label_304C::
    ld   hl, $6B1D

label_304F::
    push de
    add  hl, bc
    call label_2FC7
    pop  de
    push hl
    ld   a, [$FFDF]
    ld   [SelectRomBank_2100], a
    ld   a, [$FFE0]
    ld   h, a
    ld   a, [$FFE1]
    ld   l, a
    ld   a, $01
    ld   [rVBK], a
    call label_2FC7
    xor  a
    ld   [rVBK], a
    call label_3905
    ld   a, h
    ld   [$FFE0], a
    ld   a, l
    ld   [$FFE1], a
    pop  hl
    ld   a, e
    add  a, $1F
    ld   e, a
    ld   a, d
    adc  a, $00
    ld   d, a
    push de
    call label_2FC7
    pop  de
    ld   a, [$FFDF]
    ld   [SelectRomBank_2100], a
    ld   a, [$FFE0]
    ld   h, a
    ld   a, [$FFE1]
    ld   l, a
    ld   a, $01
    ld   [rVBK], a
    call label_2FC7
    xor  a
    ld   [rVBK], a
    call label_3905
    ret
    call label_3905
    call label_80C
    ld   de, $9800
    ld   hl, WR1_TileMap
    ld   c, $80

label_30A9::
    push de
    push hl
    push bc
    ld   a, [$FFFE]
    and  a
    jr   nz, label_30B6
    call label_2FCD
    jr   label_30C4

label_30B6::
    ld   a, [$DBA5]
    and  a
    jr   z, label_30C1
    call label_3018
    jr   label_30C4

label_30C1::
    call label_300E

label_30C4::
    pop  bc
    pop  hl
    pop  de
    inc  hl
    ld   a, l
    and  $0F
    cp   $0B
    jr   nz, label_30D5
    ld   a, l
    and  $F0
    add  a, $11
    ld   l, a

label_30D5::
    ld   a, e
    add  a, $02
    ld   e, a
    and  $1F
    cp   $14
    jr   nz, label_30E9
    ld   a, e
    and  $E0
    add  a, $40
    ld   e, a
    ld   a, d
    adc  a, $00
    ld   d, a

label_30E9::
    dec  c
    jr   nz, label_30A9
    ld   a, $01
    ld   [SelectRomBank_2100], a
    jp   $6DEA
    ld   a, $01
    ld   [rIE], a
    ld   hl, $D47F
    inc  [hl]
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4CA3
    ld   a, [$FFFE]
    and  a
    jr   z, label_3119
    ld   a, $21
    ld   [SelectRomBank_2100], a
    call label_40B3
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_6DAF

label_3119::
    ld   a, $09
    ld   [SelectRomBank_2100], a
    ld   a, [$DBA5]
    and  a
    jr   z, label_313A
    ld   a, $14
    ld   [SelectRomBank_2100], a
    ld   [$FFE8], a
    call label_5897
    ld   e, a
    ld   hl, WR1_KillCount2

label_3132::
    xor  a
    ldi  [hl], a
    inc  e
    ld   a, e
    cp   $11
    jr   nz, label_3132

label_313A::
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    ld   hl, $D800
    ld   a, [$DBA5]
    and  a
    jr   z, label_3161
    ld   hl, $D900
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_3156
    ld   hl, $DDE0
    jr   label_3161

label_3156::
    cp   $1A
    jr   nc, label_3161
    cp   $06
    jr   c, label_3161
    ld   hl, $DA00

label_3161::
    add  hl, de
    ld   a, [$FFF9]
    and  a
    ld   a, [hl]
    jr   nz, label_316B
    or   $80
    ld   [hl], a

label_316B::
    ld   [$FFF8], a
    ld   a, [$FFF6]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    ld   a, [$DBA5]
    and  a
    jr   z, label_31BF
    ld   a, $0A
    ld   [SelectRomBank_2100], a
    ld   [$FFE8], a
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_318F
    ld   hl, $7B77
    jp   label_3224

label_318F::
    cp   $1F
    jr   nz, label_31A6
    ld   a, [$FFF6]
    cp   $F5
    jr   nz, label_31A6
    ld   a, [$DB0E]
    cp   $0E
    jr   nz, label_31A6
    ld   bc, $7855
    jp   label_323A

label_31A6::
    ld   hl, $4000
    ld   a, [$FFF7]
    cp   $1A
    jr   nc, label_3224
    cp   $06
    jr   c, label_3224
    ld   a, $0B
    ld   [SelectRomBank_2100], a
    ld   [$FFE8], a
    ld   hl, $4000
    jr   label_3224

label_31BF::
    ld   a, [$FFF6]
    cp   $0E
    jr   nz, label_31D1
    ld   a, [$D80E]
    and  $10
    jr   z, label_3221
    ld   bc, $47EC
    jr   label_322F

label_31D1::
    cp   $8C
    jr   nz, label_31E1
    ld   a, [$D88C]
    and  $10
    jr   z, label_3221
    ld   bc, $434E
    jr   label_322F

label_31E1::
    cp   $79
    jr   nz, label_31F1
    ld   a, [$D879]
    and  $10
    jr   z, label_3221
    ld   bc, $6513
    jr   label_322F

label_31F1::
    cp   $06
    jr   nz, label_3201
    ld   a, [$D806]
    and  $10
    jr   z, label_3221
    ld   bc, $4496
    jr   label_322F

label_3201::
    cp   $1B
    jr   nz, label_3211
    ld   a, [$D82B]
    and  $10
    jr   z, label_3221
    ld   bc, $4C0F
    jr   label_322F

label_3211::
    cp   $2B
    jr   nz, label_3221
    ld   a, [$D82B]
    and  $10
    jr   z, label_3221
    ld   bc, $509A
    jr   label_322F

label_3221::
    ld   hl, $4000

label_3224::
    add  hl, bc
    ld   a, [hli]
    ld   c, a
    ld   a, [hl]
    ld   b, a
    ld   a, [$DBA5]
    and  a
    jr   nz, label_323A

label_322F::
    ld   a, [$FFF6]
    cp   $80
    jr   c, label_323A
    ld   a, $1A
    ld   [SelectRomBank_2100], a

label_323A::
    ld   a, [bc]
    cp   $FE
    jr   z, label_328E
    ld   [$FFA4], a
    inc  bc
    ld   a, [$DBA5]
    and  a
    jr   z, label_3258
    ld   a, [bc]
    and  $0F
    call FillTileMapWith
    ld   a, [bc]
    swap a
    and  $0F
    call label_38EA
    jr   label_325C

label_3258::
    ld   a, [bc]
    call FillTileMapWith

label_325C::
    inc  bc
    ld   a, [bc]
    and  $FC
    cp   $E0
    jr   nz, label_3284
    ld   a, [$FFE6]
    ld   e, a
    ld   d, $00
    ld   hl, $D401
    add  hl, de
    ld   a, [bc]
    and  $03
    ldi  [hl], a
    inc  bc
    ld   a, [bc]
    ldi  [hl], a
    inc  bc
    ld   a, [bc]
    ldi  [hl], a
    inc  bc
    ld   a, [bc]
    ldi  [hl], a
    inc  bc
    ld   a, [bc]
    ldi  [hl], a
    ld   a, e
    add  a, $05
    ld   [$FFE6], a
    jr   label_325C

label_3284::
    ld   a, [bc]
    cp   $FE
    jr   z, label_328E
    call label_32A9
    jr   label_325C

label_328E::
    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_6CCE
    ld   a, $36
    ld   [SelectRomBank_2100], a
    call label_6D4D
    ld   a, $21
    ld   [SelectRomBank_2100], a
    call label_53F3
    jp   label_81D

label_32A9::
    xor  a
    ld   [$FFD7], a
    ld   a, [bc]
    bit  7, a
    jr   z, label_32B8
    bit  4, a
    jr   nz, label_32B8
    ld   [$FFD7], a
    inc  bc

label_32B8::
    inc  bc
    ld   a, [$FFF8]
    ld   e, a
    ld   a, [$DBA5]
    and  a
    jr   nz, label_32D9
    ld   a, [bc]
    sub  a, $F5
    jr   c, label_3304
    ld   a, [bc]
    ld   d, a
    dec  bc
    ld   a, [bc]
    ld   e, a
    inc  bc
    ld   a, $24
    ld   [SelectRomBank_2100], a
    call label_7578
    call label_353B
    ret

label_32D9::
    ld   a, [bc]
    sub  a, $EC
    jp  c, label_33CB
    rst  0
    ld   a, [label_1535]
    ld   [hl], $30
    ld   [hl], $4B
    ld   [hl], $64
    ld   [hl], $77
    ld   [hl], $8A
    ld   [hl], $9D
    ld   [hl], $B2
    ld   [hl], $EA
    ld   [hl], $FE
    ld   [hl], $12
    scf
    ld   h, $37
    ld   e, [hl]
    scf
    ld   l, l
    scf
    ld   a, h
    scf
    and  d
    scf
    or   [hl]
    scf

label_3304::
    add  a, $F5
    push af
    ld   d, a
    cp   $E9
    jr   nz, label_330F
    ld   [$C50E], a

label_330F::
    cp   $5E
    jr   nz, label_3317
    bit  5, e
    jr   nz, label_337C

label_3317::
    cp   $91
    jr   nz, label_3324
    bit  5, e
    jr   z, label_3324
    pop  af
    ld   a, $5E
    ld   d, a
    push af

label_3324::
    cp   $DC
    jr   nz, label_3331
    bit  5, e
    jr   z, label_3331
    pop  af
    ld   a, $91
    ld   d, a
    push af

label_3331::
    cp   $D8
    jr   z, label_333D
    cp   $D9
    jr   z, label_333D
    cp   $DA
    jr   nz, label_3346

label_333D::
    bit  4, e
    jr   z, label_3346
    pop  af
    ld   a, $DB
    ld   d, a
    push af

label_3346::
    cp   $C2
    jr   nz, label_3353
    bit  4, e
    jr   z, label_3353
    pop  af
    ld   a, $E3
    ld   d, a
    push af

label_3353::
    ld   a, d
    cp   $BA
    jr   nz, label_3361
    bit  2, e
    jr   z, label_3361
    pop  af
    ld   a, $E1
    ld   d, a
    push af

label_3361::
    ld   a, d
    cp   $D3
    jr   nz, label_3381
    bit  4, e
    jr   z, label_3381
    ld   a, [$FFF6]
    cp   $75
    jr   z, label_337C
    cp   $07
    jr   z, label_337C
    cp   $AA
    jr   z, label_337C
    cp   $4A
    jr   nz, label_3381

label_337C::
    pop  af
    ld   a, $C6
    ld   d, a
    push af

label_3381::
    ld   a, d
    ld   [$FFE0], a
    cp   $C2
    jr   z, label_33A8
    cp   $E1
    jr   z, label_33A8
    cp   $CB
    jr   z, label_33A8
    cp   $BA
    jr   z, label_33A8
    cp   $61
    jr   z, label_33A8
    cp   $C6
    jr   z, label_33A8
    cp   $C5
    jr   z, label_33A8
    cp   $E2
    jr   z, label_33A8
    cp   $E3
    jr   nz, label_33BC

label_33A8::
    ld   a, [$C19C]
    ld   e, a
    inc  a
    and  $03
    ld   [$C19C], a
    ld   d, $00
    ld   hl, $D416
    add  hl, de
    dec  bc
    ld   a, [bc]
    ld   [hl], a
    inc  bc

label_33BC::
    ld   a, [$FFE0]
    cp   $C5
    jp   z, label_347D
    cp   $C6
    jp   z, label_347D
    jp   label_34CE

label_33CB::
    add  a, $EC
    ld   [$FFE0], a
    push af
    cp   $CF
    jr   c, label_33DC
    cp   $D3
    jr   nc, label_33DC
    ld   hl, $C1A5
    inc  [hl]

label_33DC::
    cp   $AB
    jr   nz, label_3407
    xor  a
    ld   [$C3CB], a
    ld   a, [$FFF6]
    cp   $C4
    ld   a, [$FFE0]
    jr   z, label_3407
    ld   hl, $DBC9
    inc  [hl]
    ld   [$C3CB], a
    push af
    ld   a, [$C3CD]
    add  a, $04
    ld   [$C3CD], a
    ld   a, [$FFFE]
    and  a
    jr   nz, label_3406
    ld   a, $04
    ld   [$C16B], a

label_3406::
    pop  af

label_3407::
    cp   $8E
    jr   z, label_341E
    cp   $AA
    jr   z, label_341E
    cp   $DC
    jr   z, label_3417
    cp   $DB
    jr   nz, label_3423

label_3417::
    ld   hl, $D6FA
    ld   [hl], $02
    jr   label_3423

label_341E::
    ld   hl, $D6FA
    ld   [hl], $01

label_3423::
    cp   $3F
    jr   z, label_342B
    cp   $47
    jr   nz, label_342F

label_342B::
    bit  2, e
    jr   nz, label_343B

label_342F::
    cp   $40
    jr   z, label_3437
    cp   $48
    jr   nz, label_343F

label_3437::
    bit  3, e
    jr   z, label_343F

label_343B::
    pop  af
    ld   a, $3D
    push af

label_343F::
    cp   $41
    jr   z, label_3447
    cp   $49
    jr   nz, label_344B

label_3447::
    bit  1, e
    jr   nz, label_3457

label_344B::
    cp   $42
    jr   z, label_3453
    cp   $4A
    jr   nz, label_345B

label_3453::
    bit  0, e
    jr   z, label_345B

label_3457::
    pop  af
    ld   a, $3E
    push af

label_345B::
    cp   $A1
    jr   nz, label_3467
    bit  4, e
    jr   nz, label_3467
    pop  af
    ld   a, [$FFE9]
    push af

label_3467::
    cp   $BF
    jr   nz, label_3471
    bit  4, e
    jr   nz, label_3471
    pop  af
    ret

label_3471::
    cp   $BE
    jr   z, label_347D
    cp   $BF
    jr   z, label_347D
    cp   $CB
    jr   nz, label_3496

label_347D::
    dec  bc
    ld   a, $01
    ld   [$FFAC], a
    ld   a, [bc]
    and  $F0
    add  a, $10
    ld   [$FFAE], a
    ld   a, [bc]
    swap a
    and  $F0
    add  a, $08
    ld   [$FFAD], a
    inc  bc
    jp   label_34CE

label_3496::
    cp   $D6
    jr   z, label_349E
    cp   $D5
    jr   nz, label_34A6

label_349E::
    bit  4, e
    jr   nz, label_34A6
    pop  af
    ld   a, $21
    push af

label_34A6::
    cp   $D7
    jr   z, label_34AE
    cp   $D8
    jr   nz, label_34B6

label_34AE::
    bit  4, e
    jr   nz, label_34B6
    pop  af
    ld   a, $22
    push af

label_34B6::
    ld   a, [$FFF7]
    cp   $0A
    ld   a, [$FFE0]
    jr   c, label_34C2
    cp   $A9
    jr   z, label_34C6

label_34C2::
    cp   $DE
    jr   nz, label_34CE

label_34C6::
    bit  6, e
    jr   z, label_34CE
    pop  af
    ld   a, $0D

label_34CD::
    push af

label_34CE::
    cp   $A0
    jr   nz, label_34DA
    bit  4, e
    jr   z, label_34DA
    pop  af
    ld   a, $A1
    push af

label_34DA::
    ld   d, $00
    ld   a, [$FFD7]
    and  a
    jr   z, label_352D
    dec  bc
    ld   a, [bc]
    ld   e, a
    ld   hl, WR1_TileMap
    add  hl, de
    ld   a, [$FFD7]
    and  $0F
    ld   e, a
    pop  af
    ld   d, a

label_34EF::
    ld   a, d
    ldi  [hl], a
    ld   a, [$FFD7]
    and  $40
    jr   z, label_34FB
    ld   a, l
    add  a, $0F
    ld   l, a

label_34FB::
    dec  e
    jr   nz, label_34EF
    inc  bc
    ret

label_3500::
    cp   $04
    ret  z
    cp   $09
    jr   nz, label_350E
    ld   a, [$FFF6]
    cp   $97
    ret  nz
    jr   label_3527

label_350E::
    cp   $E1
    jr   nz, label_351D
    ld   a, [$FFF6]
    cp   $0E
    ret  z
    cp   $0C
    ret  z
    cp   $1B
    ret  z

label_351D::
    ld   a, [$FFF6]
    cp   $80
    jr   nc, label_3527
    ld   a, $09
    jr   label_3529

label_3527::
    ld   a, $1A

label_3529::
    call label_B2F
    ret

label_352D::
    dec  bc
    ld   a, [bc]
    ld   e, a
    ld   hl, WR1_TileMap
    add  hl, de
    pop  af
    ld   [hl], a
    call label_3500
    inc  bc
    ret

label_353B::
    ld   a, [$FFF6]
    cp   $80
    jr   nc, label_3545
    ld   a, $09
    jr   label_3547

label_3545::
    ld   a, $1A

label_3547::
    ld   [SelectRomBank_2100], a
    ret

label_354B::
    push hl
    push de
    ld   a, [bc]
    ld   e, a
    ld   d, $00
    add  hl, de
    pop  de
    ld   a, [de]
    cp   $E1
    jr   z, label_3560
    cp   $E2
    jr   z, label_3560
    cp   $E3
    jr   nz, label_357C

label_3560::
    push af
    push hl
    push de
    ld   a, l
    sub  a, $11
    push af
    ld   a, [$C19C]
    ld   e, a
    inc  a
    and  $03
    ld   [$C19C], a
    ld   d, $00
    ld   hl, $D416
    add  hl, de
    pop  af
    ld   [hl], a
    pop  de
    pop  hl
    pop  af

label_357C::
    ld   [hl], a
    call label_3500
    inc  de
    inc  bc
    pop  hl
    ld   a, [bc]
    and  a
    cp   $FF
    jr   nz, label_354B
    pop  bc
    ret

label_358B::
    push hl
    push de
    ld   a, [bc]
    ld   e, a
    ld   d, $00
    add  hl, de
    pop  de
    ld   a, [de]
    cp   $E1
    jr   z, label_35A0
    cp   $E2
    jr   z, label_35A0
    cp   $E3
    jr   nz, label_35BC

label_35A0::
    push af
    push hl
    push de
    ld   a, l
    sub  a, $11
    push af
    ld   a, [$C19C]
    ld   e, a
    inc  a
    and  $03
    ld   [$C19C], a
    ld   d, $00
    ld   hl, $D416
    add  hl, de
    pop  af
    ld   [hl], a
    pop  de
    pop  hl
    pop  af

label_35BC::
    ld   [hl], a
    call label_35CB
    inc  de
    inc  bc
    pop  hl
    ld   a, [bc]
    and  a
    cp   $FF
    jr   nz, label_358B
    pop  bc
    ret

label_35CB::
    cp   $04
    ret  z
    cp   $09
    jr   nz, label_35D9
    ld   a, [$FFF6]
    cp   $97
    ret  nz
    jr   label_35E8

label_35D9::
    cp   $E1
    jr   nz, label_35E8
    ld   a, [$FFF6]
    cp   $0E
    ret  z
    cp   $0C
    ret  z
    cp   $1B
    ret  z

label_35E8::
    ld   a, $24
    call label_B2F
    ret

label_35EE::
    dec  bc
    ld   a, [bc]
    ld   e, a
    ld   d, $00
    ld   hl, WR1_TileMap
    add  hl, de
    ret

data_35F8::
    db $2D, $2E

label_35FA::
    ld   e, 0
    call label_373F
    ld   a, [$FFF8]
    and  $04
    jp   nz, label_36B2
    push bc
    call label_35EE
    ld   bc, data_37E1
    ld   de, data_35F8
    jp   label_354B

data_3613::
    db   $2F, $30, $1E, 1, $CD, $3F, $37, $F0, $F8, $E6, 8, $C2, $EA, $36, $C5, $CD
    db   $EE, $35, 1, $E1, $37, $11, $13, $36, $C3, $4B, $35

data_362E::
    db   $31, $32, $1E, 2, $CD, $3F, $37, $F0, $F8, $E6, 2, $C2, $FE, $36, $C5, $CD
    db   $EE, $35, 1, $E4, $37, $11, $2E, $36, $C3, $4B, $35

data_3649::
    db   $33, $34, $1E, 3, $CD, $3F, $37, $F0, $F8, $E6, 1, $C2, $12, $37, $C5, $CD
    db   $EE, $35, 1, $E4, $37, $11, $49, $36, $C3, $4B, $35, $1E, 4, $CD, $3F, $37
    db   $FA, $8A, $C1, $F6, 1, $EA, $8A, $C1, $EA, $8B, $C1, $C3, $B2, $36

data_3677::
    db   $1E, 5, $CD, $3F, $37, $FA, $8A, $C1, $F6, 2, $EA, $8A, $C1, $EA, $8B, $C1
    db   $C3, $EA, $36, $1E, 6, $CD, $3F, $37, $FA, $8A, $C1, $F6, 4, $EA, $8A, $C1
    db   $EA, $8B, $C1, $C3, $FE, $36, $1E, 7, $CD, $3F, $37, $FA, $8A, $C1, $F6, 8
    db   $EA, $8A, $C1, $EA, $8B, $C1, $C3, $12, $37

data_36B0::
    db   $43, $44

label_36B2::
    ld   a, $04
    call label_36C4
    push bc
    call label_35EE
    ld   bc, data_37E1
    ld   de, data_36B0
    jp   label_354B

label_36C4::
    push af
    ld   hl, $D900
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_36D8
    ld   hl, $DDE0
    jr   label_36E1

label_36D8::
    cp   $1A
    jr   nc, label_36E1
    cp   $06
    jr   c, label_36E1
    inc  d

label_36E1::
    add  hl, de
    pop  af
    or   [hl]
    ld   [hl], a
    ld   [$FFF8], a
    ret

data_36E8::
    db $8C, 8

label_36EA::
    call label_36C4
    push bc
    call label_35EE
    ld   bc, data_37E1
    ld   de, data_36E8
    jp   label_354B

data_36FC::
    db 9, $A

label_36FE::
    ld   a, $02
    call label_36C4
    push bc
    call label_35EE
    ld   bc, data_37E4
    ld   de, data_36FC
    jp   label_354B

data_3710::
    db $B, $C

label_3712::
    ld   a, $01
    call label_36C4
    push bc
    call label_35EE
    ld   bc, data_37E4
    ld   de, data_3710
    jp   label_354B

data_3724::
    db $A4, $A5

label_3726::
    ld   e, $08
    call label_373F
    ld   a, [$FFF8]
    and  $04
    jp   nz, label_36B2
    push bc
    call label_35EE
    ld   bc, data_37E1
    ld   de, data_3724
    jp   label_354B

label_373F::
    ld   d, $00
    ld   hl, $C1F0
    add  hl, de
    dec  bc
    ld   a, [bc]
    ld   [hl], a
    push af
    and  $F0
    ld   hl, $C1E0
    add  hl, de
    ld   [hl], a
    pop  af
    swap a
    and  $F0
    ld   hl, $C1D0
    add  hl, de
    ld   [hl], a
    inc  bc
    ret

data_375C::
    db   $AF, $B0, $C5, $CD, $EE, $35, 1, $E4, $37, $11, $5C, $37, $C3, $4B, $35

data_376B::
    db   $B1, $B2, $C5, $CD, $EE, $35, 1, $E1, $37, $11, $6B, $37, $C3, $4B, $35

data_377A::
    db   $45, $46, $C5, $CD, $EE, $35, 1, $E1, $37, $11, $7A, $37, $C3, $4B, $35

data_3789::
    db   0, 1, 2, 3, $10, $11, $12, $13, $20, $21, $22, $23, $FF

data_3796::
    db   $B3, $B4, $B4, $B5, $B6, $B7, $B8, $B9, $BA, $BB, $BC, $BD, $3E, 8, $CD, $C4
    db   $36, $C5, $CD, $EE, $35, 1, $89, $37, $11, $96, $37, $C3, $4B, $35

data_37B4::
    db   $C1, $C2, $F0, $F7, $FE, $1A, $30, $13, $FE, 6, $38, $F, $F0, $F6, $FE, $D3
    db   $20, 9, $FA, $46, $DB, $A7, $28, 3, $C3, $77, $36

data_37CF::
    db   $3E, 1, $CD, $C4, $36, $C5, $CD, $EE, $35, 1, $E1, $37, $11, $B4, $37, $C3
    db   $4B, $35

data_37E1::
    db   0, 1, $FF

data_37E4::
    db   0, $10, $FF

; Fill the tile map with whatever is in register a
FillTileMapWith::
    ld   [$FFE9], a
    ld   d, $80
    ld   hl, WR1_TileMap
    ld   e, a

.fill_loop
    ld   a, l
    and  $0F
    jr   z, .dont_fill
    cp   $0B
    jr   nc, .dont_fill
    ld   [hl], e

.dont_fill
    inc  hl
    dec  d
    jr   nz, .fill_loop
    ret

    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_5F02
    ld   a, $16
    ld   [SelectRomBank_2100], a
    xor  a
    ld   [$FFE4], a
    ld   a, [$FFF6]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    ld   hl, $4000
    ld   a, [$DBA5]
    and  a
    jr   z, label_3868
    ld   a, [$FFF7]
    cp   $06
    jr   nz, label_3850
    ld   a, [$DB6F]
    ld   hl, $FFF6
    cp   [hl]
    jr   nz, label_3850
    ld   a, $A8
    call label_3B86
    ld   a, [$DB70]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$DB71]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    call label_38D4
    ld   hl, $C460
    add  hl, de
    ld   [hl], $FF
    xor  a
    ld   [$FFE4], a

label_3850::
    ld   hl, $4200
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_385E
    ld   hl, $4600
    jr   label_3868

label_385E::
    cp   $1A
    jr   nc, label_3868
    cp   $06
    jr   c, label_3868
    inc  h
    inc  h

label_3868::
    add  hl, bc
    ld   a, [hli]
    ld   c, a
    ld   a, [hl]
    ld   b, a

label_386D::
    ld   a, [bc]
    cp   $FF
    jr   z, label_3877
    call label_3883
    jr   label_386D

label_3877::
    call label_81D
    ret

data_387B::
    db 1, 2, 4, 8, $10, $20, $40, $80

label_3883::
    ld   a, [$FFE4]
    cp   $08
    jr   nc, label_389B
    ld   e, a
    ld   d, $00
    ld   hl, data_387B
    add  hl, de
    ld   a, [$FFF6]
    ld   e, a
    ld   a, [hl]
    ld   hl, $CF00
    add  hl, de
    and  [hl]
    jr   nz, label_38AD

label_389B::
    ld   e, $00
    ld   d, e

label_389E::
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    cp   $00
    jr   z, label_38B4
    inc  e
    ld   a, e
    cp   $10
    jr   nz, label_389E

label_38AD::
    ld   hl, $FFE4
    inc  [hl]
    inc  bc
    inc  bc
    ret

label_38B4::
    ld   [hl], $04
    ld   a, [bc]
    and  $F0
    ld   hl, $C210
    add  hl, de
    add  a, $10
    ld   [hl], a
    ld   a, [bc]
    inc  bc
    swap a
    and  $F0
    ld   hl, $C200
    add  hl, de
    add  a, $08
    ld   [hl], a
    ld   hl, $C3A0
    add  hl, de
    ld   a, [bc]
    inc  bc
    ld   [hl], a

label_38D4::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_6524
    ld   a, $01
    ld   [SelectRomBank_2100], a
    call label_5EAB
    ld   a, $16
    ld   [SelectRomBank_2100], a
    ret

label_38EA::
    ld   e, a
    ld   a, $14
    ld   [SelectRomBank_2100], a
    ld   a, e
    push bc
    call label_4880
    pop  bc
    ld   a, [$FFE8]
    ld   [SelectRomBank_2100], a
    ret
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_588B
    ret

label_3905::
    ld   a, [$DBA5]
    and  a
    jr   nz, label_390F
    ld   a, $1A
    jr   label_3911

label_390F::
    ld   a, $08

label_3911::
    ld   [SelectRomBank_2100], a
    ret
    ld   a, $27
    ld   [SelectRomBank_2100], a
    jp   $7FC5
    ld   a, $20
    ld   [SelectRomBank_2100], a
    jp   $7DE6
    ld   a, $14
    ld   [SelectRomBank_2100], a
    ld   hl, $5218
    add  hl, de
    ld   a, [hl]
    ld   hl, SelectRomBank_2100
    ld   [hl], $05
    ret
    ld   a, $19
    call label_80C
    call label_7C50
    ld   a, $03
    jp   label_80C

label_3942::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_53E4
    jp   label_81D
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_54AC
    jp   label_81D
    ld   a, $01
    call label_80C
    call label_5FB3
    ld   a, $02
    jp   label_80C
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_485B
    jp   label_81D
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_7EFE
    jp   label_81D
    ld   a, $14
    ld   [SelectRomBank_2100], a
    call label_5347
    ld   a, $03
    ld   [SelectRomBank_2100], a
    ret

data_3989::
    db   0, 8, $10, $18

label_398D::
    ld   hl, $C5A7
    ld   a, [hl]
    and  a
    jr   z, label_399B
    dec  [hl]
    jr   nz, label_399B
    ld   a, $10
    ld   [$FFF3], a

label_399B::
    ld   a, [$C19F]
    and  a
    jr   nz, label_39AE
    ld   a, [$C111]
    ld   [$C1A8], a
    and  a
    jr   z, label_39AE
    dec  a
    ld   [$C111], a

label_39AE::
    ld   a, [$C11C]
    cp   $07
    ret  z
    xor  a
    ld   [$C3C1], a
    ld   a, [$FFF7]
    cp   $0A
    ld   a, [$FFE7]
    jr   c, label_39C1
    xor  a

label_39C1::
    and  $03
    ld   e, a
    ld   d, $00
    ld   hl, data_3989
    add  hl, de
    ld   a, [hl]
    ld   [$C3C0], a
    ld   a, $20
    ld   [SelectRomBank_2100], a
    call label_4303
    xor  a
    ld   [SelectRomBank_2100], a
    ld   a, [$C19F]
    and  a
    jr   nz, label_39E3
    ld   [$C1AD], a

label_39E3::
    ld   a, $20
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    call label_6352
    ld   b, $00
    ld   c, $0F

label_39F2::
    ld   a, c
    ld   [$C123], a
    ld   hl, $C280
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_3A03
    ld   [$FFEA], a
    call label_3A18

label_3A03::
    dec  c
    ld   a, c
    cp   $FF
    jr   nz, label_39F2
    ret
    ld   a, $15
    ld   [SelectRomBank_2100], a
    call label_4000
    ld   a, $03
    ld   [SelectRomBank_2100], a
    ret

label_3A18::
    ld   hl, $C3A0
    add  hl, bc
    ld   a, [hl]
    ld   [$FFEB], a
    ld   hl, $C290
    add  hl, bc
    ld   a, [hl]
    ld   [$FFF0], a
    ld   hl, $C3B0
    add  hl, bc
    ld   a, [hl]
    ld   [$FFF1], a
    ld   a, $19
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    ld   a, [$FFEB]
    cp   $6A
    jr   nz, label_3A40
    ld   a, [$FFB2]
    and  a
    jr   nz, label_3A46

label_3A40::
    ld   a, [$FFEA]
    cp   $07
    jr   nz, label_3A4E

label_3A46::
    call label_7964
    call label_3D8A
    jr   label_3A54

label_3A4E::
    call label_3D8A
    call label_7964

label_3A54::
    ld   a, $14
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    call label_4D73
    ld   a, $03
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    ld   a, [$FFEA]
    cp   $05
    jp   z, label_3A8D
    rst  0
    add  hl, bc
    db   $3A ; ldd  a, [hl]
    jr   label_3AC8
    or   [hl]
    ld   c, h
    ld   c, h
    ld   c, h
    or   l
    ld   c, b
    adc  a, l
    db   $3A ; ldd  a, [hl]
    rlca
    ld   c, [hl]
    ldd  [hl], a
    ld   d, a
    sub  a, h
    ld   c, l
    call label_3A8D
    ld   a, $03
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    ret

label_3A8D::
    ld   a, $20
    ld   [SelectRomBank_2100], a
    ld   a, [$FFEB]
    ld   e, a
    ld   d, b
    ld   hl, $4000
    add  hl, de
    add  hl, de
    add  hl, de
    ld   e, [hl]
    inc  hl
    ld   d, [hl]
    inc  hl
    ld   a, [hl]
    ld   l, e
    ld   h, d
    ld   [$DBAF], a
    ld   [SelectRomBank_2100], a
    jp   [hl]

label_3AAA::
    db   8, 5, 8, 5, 8, $A, 8, $A, 8, $A, 8, $A, 8, $10, 4, $A
    db   8, 2, 8, 2, 8, $13, 8, $13, 8, 6, 6, 8, 8, 7

label_3AC8::
    db   6, $A, 8, 6, $10, $30, 8, 7, 4, $A, $C, 7, $FC, 4, $10

label_3AD7::
    db   $10, $C, $12, 8, 8, 2, 8, $10, $C, 8, $10, 8, 7, $C, 8, 8
    db   8, 2, 8, $21, $50, $C3, 9, $7E, $E6, $7C, $5F, $50, $21, $AA, $3A, $19
    db   $5D, $54, $C5, $CB, $21, $CB, $21, $21, $80, $D5, 9, $E, 4

label_3B04::
    ld   a, [de]
    inc  de
    ldi  [hl], a
    dec  c
    jr   nz, label_3B04
    pop  bc
    ret

label_3B0C::
    ld   hl, $C3B0
    add  hl, bc
    ld   [hl], a
    ret

label_3B12::
    ld   hl, $C290
    add  hl, bc
    inc  [hl]
    ret

label_3B18::
    ld   a, $02
    ld   [SelectRomBank_2100], a
    call label_75F5
    jp   label_81D

label_3B23::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_7893
    jp   label_81D

label_3B2E::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_7CAB
    jp   label_81D

label_3B39::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_6E28
    jp   label_81D

label_3B44::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_6C6B
    jp   label_81D

label_3B4F::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_6BDE
    jp   label_81D

label_3B5A::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_6C77
    jp   label_81D

label_3B65::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_73EB
    jp   label_81D

label_3B70::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_6E2B
    jp   label_81D

label_3B7B::
    ld   a, $03
    ld   [SelectRomBank_2100], a
    call label_75A2
    jp   label_81D

label_3B86::
    push af
    ld   a, $03
    ld   [SelectRomBank_2100], a
    pop  af
    call label_64CA
    rr   l
    call label_81D
    rl   l
    ret

label_3B98::
    push af
    ld   a, $03
    ld   [SelectRomBank_2100], a
    pop  af
    call label_64CC
    rr   l
    call label_81D
    rl   l
    ret

label_3BAA::
    ld   hl, SelectRomBank_2100
    ld   [hl], $03
    call label_7EC7
    jp   label_81D

label_3BB5::
    ld   hl, SelectRomBank_2100
    ld   [hl], $03
    call label_7E45
    jp   label_81D

label_3BC0::
    ld   a, [$FFF1]
    inc  a
    ret  z
    call label_3D57
    push de
    ld   a, [$C3C0]
    ld   e, a
    ld   d, b
    ld   hl, $C030
    add  hl, de
    ld   e, l
    ld   d, h
    ld   a, [$FFEC]
    ld   [de], a
    inc  de
    ld   a, [$C155]
    ld   c, a
    ld   a, [$FFED]
    and  $20
    rra
    rra
    ld   hl, $FFEE
    add  a, [hl]
    sub  a, c
    ld   [de], a
    inc  de
    ld   a, [$FFF1]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    sla  c
    rl   b
    pop  hl
    add  hl, bc
    ld   a, [$FFF5]
    ld   c, a
    ld   a, [hli]
    add  a, c
    ld   [de], a
    and  $0F
    cp   $0F
    jr   nz, label_3C08
    dec  de
    ld   a, $F0
    ld   [de], a
    inc  de

label_3C08::
    inc  de
    ld   a, [hli]
    push hl
    ld   hl, $FFED
    xor  [hl]
    ld   [de], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_3C21
    ld   a, [$FFED]
    and  $10
    jr   z, label_3C21
    ld   a, [de]
    and  $F8
    or   $04
    ld   [de], a

label_3C21::
    inc  de
    ld   a, [$FFEC]
    ld   [de], a
    inc  de
    ld   a, [$C155]
    ld   c, a
    ld   a, [$FFED]
    and  $20
    xor  $20
    rra
    rra
    ld   hl, $FFEE
    sub  a, c
    add  a, [hl]
    ld   [de], a
    inc  de
    pop  hl
    ld   a, [$FFF5]
    ld   c, a
    ld   a, [hli]
    add  a, c
    ld   [de], a
    and  $0F
    cp   $0F
    jr   nz, label_3C4B
    dec  de
    ld   a, $F0
    ld   [de], a
    inc  de

label_3C4B::
    inc  de
    ld   a, [hl]
    ld   hl, $FFED
    xor  [hl]
    ld   [de], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_3C63
    ld   a, [$FFED]
    and  $10
    jr   z, label_3C63
    ld   a, [de]
    and  $F8
    or   $04
    ld   [de], a

label_3C63::
    ld   a, [$C123]
    ld   c, a
    ld   b, $00
    ld   a, $15
    ld   [SelectRomBank_2100], a
    call label_795D

label_3C71::
    call label_7995
    jp   label_81D

label_3C77::
    ld   a, [$FFF1]
    inc  a
    ret  z
    call label_3D57
    push de
    ld   a, [$C3C0]
    ld   l, a
    ld   h, $00
    ld   bc, $C030
    add  hl, bc
    ld   e, l
    ld   d, h
    ld   a, [$C123]
    ld   c, a
    ld   b, $00
    ld   a, [$FFF9]
    and  a
    ld   a, [$FFEC]
    jr   z, label_3C9C
    sub  a, $04
    ld   [$FFEC], a

label_3C9C::
    ld   [de], a
    inc  de
    ld   a, [$C155]
    ld   h, a
    ld   a, [$FFEE]
    add  a, $04
    sub  a, h
    ld   [de], a
    inc  de
    ld   a, [$FFF1]
    ld   c, a
    ld   b, $00
    sla  c
    rl   b
    pop  hl
    add  hl, bc
    ld   a, [hli]
    ld   [de], a
    inc  de
    ld   a, [$FFFE]
    and  a
    jr   z, label_3CD0
    ld   a, [$DB95]
    cp   $01
    jr   z, label_3CD0
    ld   a, [$FFED]
    and  a
    jr   z, label_3CD0
    ld   a, [hl]
    and  $F8
    or   $04
    ld   [de], a
    jr   label_3CD6

label_3CD0::
    ld   a, [hli]
    ld   hl, $FFED
    xor  [hl]
    ld   [de], a

label_3CD6::
    inc  de
    jr   label_3C63
    ld   a, $15
    ld   [SelectRomBank_2100], a
    jr   label_3C71
    push hl
    ld   hl, $C000
    jr   label_3CF6

label_3CE6::
    ld   a, [$FFF1]
    inc  a
    jr   z, label_3D52
    push hl
    ld   a, [$C3C0]
    ld   e, a
    ld   d, $00
    ld   hl, $C030
    add  hl, de

label_3CF6::
    ld   e, l
    ld   d, h
    pop  hl
    ld   a, c
    ld   [$FFD7], a
    ld   a, [$C123]
    ld   c, a
    call label_3D57
    ld   a, [$FFD7]
    ld   c, a

label_3D06::
    ld   a, [$FFEC]
    add  a, [hl]
    ld   [de], a
    inc  hl
    inc  de
    push bc
    ld   a, [$C155]
    ld   c, a
    ld   a, [$FFEE]
    add  a, [hl]
    sub  a, c
    ld   [de], a
    inc  hl
    inc  de
    ld   a, [$FFF5]
    ld   c, a
    ld   a, [hli]
    push af
    add  a, c
    ld   [de], a
    pop  af
    cp   $FF
    jr   nz, label_3D28
    dec  de
    xor  a
    ld   [de], a
    inc  de

label_3D28::
    pop  bc
    inc  de
    ld   a, [$FFED]
    xor  [hl]
    ld   [de], a
    inc  hl
    ld   a, [$FFFE]
    and  a
    jr   z, label_3D3F
    ld   a, [$FFED]
    and  a
    jr   z, label_3D3F
    ld   a, [de]
    and  $F8
    or   $04
    ld   [de], a

label_3D3F::
    inc  de
    dec  c
    jr   nz, label_3D06
    ld   a, [$C123]
    ld   c, a
    ld   a, $15
    ld   [SelectRomBank_2100], a
    call label_795D
    jp   label_81D

label_3D52::
    ld   a, [$C123]
    ld   c, a
    ret

label_3D57::
    push hl
    ld   a, [$C124]
    and  a
    jr   z, label_3D7D
    ld   a, [$FFEE]
    dec  a
    cp   $C0
    jr   nc, label_3D7C
    ld   a, [$FFEC]
    dec  a
    cp   $88
    jr   nc, label_3D7C
    ld   hl, $C220
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_3D7C
    ld   hl, $C230
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_3D7D

label_3D7C::
    pop  af

label_3D7D::
    pop  hl
    ret

label_3D7F::
    ld   hl, $C240
    add  hl, bc
    ld   [hl], b
    ld   hl, $C250
    add  hl, bc
    ld   [hl], b
    ret

label_3D8A::
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    ld   [$FFEE], a
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    ld   [$FFEF], a
    ld   hl, $C310
    add  hl, bc
    sub  a, [hl]
    ld   [$FFEC], a
    ret
    ld   hl, SelectRomBank_2100
    ld   [hl], $15
    call label_7964
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $04
    call label_5A1A
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $04
    call label_5690
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $04
    call label_504B
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $04
    call label_49BD
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $36
    call label_72AB
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $05
    call label_6CC6
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $05
    call label_6818
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $05
    call label_6302
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $05
    call label_5A1E
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $05
    call label_556B
    jp   label_81D
    ld   a, [$DBAF]
    push af
    ld   a, $02
    call label_80C
    call label_6C75
    pop  af
    jp   label_80C
    ld   hl, SelectRomBank_2100
    ld   [hl], $04
    call label_5C63
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $03
    call label_5407
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $02
    call label_62CE
    call label_6414
    jp   label_81D
    ld   a, $02
    call label_80C
    call label_41D0
    ld   a, $03
    jp   label_80C
    ld   hl, SelectRomBank_2100
    ld   [hl], $20
    ld   c, $01
    ld   b, $00
    ld   e, $FF
    call label_5C9C
    jp   label_81D
    ld   hl, SelectRomBank_2100
    ld   [hl], $03
    call label_6472
    jp   label_81D
    ld   a, $06
    call label_80C
    call label_783C
    ld   a, $03
    jp   label_80C
    ld   e, $10
    ld   hl, $C280

label_3E88::
    xor  a
    ldi  [hl], a
    dec  e
    jr   nz, label_3E88
    ret

label_3E8E::
    ld   hl, $C4A0
    add  hl, bc
    ld   a, [hl]
    and  a
    ret  z
    ld   a, [$FFE7]
    xor  c
    and  $03
    ret  nz
    ld   a, [$FFEE]
    ld   [$FFD7], a
    ld   a, [$FFEC]
    ld   [$FFD8], a
    ld   a, $08
    call label_CC7
    ld   hl, $C520
    add  hl, de
    ld   [hl], $0F
    ret

label_3EAF::
    ld   hl, $C3F0
    add  hl, bc
    ld   a, [hl]
    bit  7, a
    jr   z, label_3EBA
    cpl
    inc  a

label_3EBA::
    ld   [$FFD7], a
    ld   hl, $C400
    add  hl, bc
    ld   a, [hl]
    bit  7, a
    jr   z, label_3EC7
    cpl
    inc  a

label_3EC7::
    ld   e, $03
    ld   hl, $FFD7
    cp   [hl]
    jr   c, label_3ED1
    ld   e, $0C

label_3ED1::
    ld   a, e
    ld   hl, $C2A0
    add  hl, bc
    and  [hl]
    jr   z, label_3EDE
    ld   hl, $C410
    add  hl, bc
    ld   [hl], b

label_3EDE::
    ret

data_3EDF::
    db $B0, $B4, $B1, $B2, $B3, $B6, $BA, $BC, $B8

label_3EE8::
    ld   hl, $C14F
    ld   a, [$C124]
    or   [hl]
    ret  nz
    ld   a, [$C165]
    and  a
    jr   z, label_3EFB
    dec  a
    ld   [$C165], a
    ret

label_3EFB::
    ld   a, [$C1BD]
    and  a
    ret  nz
    inc  a
    ld   [$C1BD], a
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $04
    ld   a, $19
    jr   z, label_3F11
    ld   a, $50

label_3F11::
    ld   [$D368], a
    ld   [$FFBD], a
    ld   a, [$C16B]
    cp   $04
    ret  nz
    ld   a, [$FFEB]
    cp   $87
    jr   nz, label_3F26
    ld   a, $DA
    jr   label_3F45

label_3F26::
    cp   $BC
    jr   nz, label_3F2E
    ld   a, $26
    jr   label_3F45

label_3F2E::
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $04
    ret  nz
    ld   a, [$FFF7]
    cp   $FF
    ret  z
    cp   $05
    ret  z
    ld   e, a
    ld   d, b
    ld   hl, data_3EDF
    add  hl, de
    ld   a, [hl]

label_3F45::
    jp   label_2385

data_3F48::
    db 1, 2, 4, 8, $10, $20, $40, $80

label_3F50::
    ld   a, $03
    ld   [$C113], a
    ld   [SelectRomBank_2100], a
    call label_55CF
    call label_81D
    ld   hl, $C460
    add  hl, bc
    ld   a, [hl]
    cp   $FF
    jr   z, label_3F8D
    push af
    ld   a, [WR1_KillCount2]
    ld   e, a
    ld   d, b
    inc  a
    ld   [WR1_KillCount2], a
    ld   a, [hl]
    ld   hl, $DBB6
    add  hl, de
    ld   [hl], a
    pop  af

label_3F78::
    cp   $08
    jr   nc, label_3F8D
    ld   e, a
    ld   d, b
    ld   hl, data_3F48
    add  hl, de
    ld   a, [$FFF6]
    ld   e, a
    ld   d, b
    ld   a, [hl]
    ld   hl, $CF00
    add  hl, de
    or   [hl]
    ld   [hl], a

label_3F8D::
    ld   hl, $C280
    add  hl, bc
    ld   [hl], b
    ret

label_3F93::
    ld   a, $05
    ld   [SelectRomBank_2100], a
    ld   hl, $59DE
    ld   de, $8460
    ld   bc, $0010
    call CopyData
    ld   hl, $59EE
    jr   label_3FBD

label_3FA9::
    ld   a, $05
    ld   [SelectRomBank_2100], a
    ld   hl, $59FE
    ld   de, $8460
    ld   bc, $0010
    call CopyData
    ld   hl, $5A0E

label_3FBD::
    ld   de, $8480
    ld   bc, $0010
    call CopyData
    xor  a
    ld   [$FFA5], a
    ld   a, $0C
    ld   [SelectRomBank_2100], a
    jp   label_1D2E
    ld   b, $34
    ld   a, [$FFFE]
    and  a
    jr   z, label_3FD9
    inc  b

label_3FD9::
    ld   a, b
    ld   [SelectRomBank_2100], a
    ld   hl, $4000
    ld   de, $8400
    ld   bc, $0400
    call CopyData
    ld   a, $20
    ld   [SelectRomBank_2100], a
    ret

section "bank1",romx,bank[$01]
    db   0

section "bank2",romx,bank[$02]
    db   0

section "bank3",romx,bank[$03]
data_C000::
    db $42, $C2, $D2, $C2, $C2, $D2, $C2, $C2, $C3, $12, $42, $12, $42, $12, $12, $92
    db $12, $18, $12, $11, $12, 2, 2, 2, $12, 2, $12, $12, $11, 2, $12, $12
    db $12, 2, $42, $92, $12, $E2, $E2, 2, $12, 2, 2, $41, $12, $B1, $B1, $B1
    db $B1, $B1, $B2, $B2, $B1, $B2, $B2, $B2, $B1, $92, $B2, $B1, $B2, $B1, $82, $92
    db $84, $92, $82, $C0, $C0, $C2, $82, $82, $82, $82, $F2, $82, $41, $82, $82, $82
    db $12, 2, $42, $42, $C2, 2, 2, 2, $42, 8, $48, 0, $91, 2, 0, 0
    db 2, $C2, 8, 2, $C0, 0, $82, 2, $C0, $C2, $92, $82, $92, $12, $C1, $92
    db $92, $92, $92, $92, $93, $92, $92, $92, $92, $92, $52, $92, 0, $42, 2, $82
    db $92, 0, $42, $C2, $D1, $D2, $D1, $12, $84, $C, $C2, $C2, $92, $92, 8, $12
    db $12, $13, $14, $12, $80, $92, $92, $C0, $D2, $12, $C0, $D2, $12, $94, $C0, $12
    db $12, $12, $14, $C4, $C4, $C4, $C2, $8A, $D2, 2, $12, $12, $12, $92, $12, $B2
    db 2, $82, $C0, $82, $92, $82, $92, $94, $95, $12, $13, $12, $12, $13, $16, $52
    db $C0, $D2, $D2, $94, $98, $12, $12, $D0, $D2, $C1, $88, 2, $52, $85, $84, $C2
    db $82, $82, $82, $D2, $D2, $D2, $82, 2, $C2, $C8, $42, $48, $C4, $C2, $C2, $C2
    db $D3, $D2, $42, $12, $13, $D2, $50, $C0, 0, $13, $13, $13, $74, $74, $74, $82
    db $82, $82, $94, $94, $C, $C2, $82, $82, 6, $C, $83

data_C0FB::      db 0, 0, 1, 1, 1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, $80
                 db 0, 8, 0, 1, 0, 0, 3, 3, 0, 0, 0, 0, $10, 2, 0, 0
                 db 0, 0, 0, 0, 0, $80, $80, $82, 0, 0, $80, 0, $80, $1D, $1D, $1D
                 db $1D, $1D, 1, $1D, $1D, $1D, $1D, $1D, $1D, $9D, $1D, $1D, $1D, $1D, $98, $98
                 db $98, $98, $98, $98, $98, 0, $84, $84, $84, $84, $80, $98, 0, $98, $98, $98
                 db 0, 0, 0, 0, $80, 0, 0, 0, 0, $88, 8, 0, $80, $80, $80, $A8
                 db $80, 0, 0, 0, 0, 0, 0, $80, 0, 0, $80, $98, 0, $80, 0, 0
                 db $98, $98, $98, $98, $98, $98, $98, $98, $80, $98, 0, $98, 8, $10, 0, $80
                 db $98, 0, $20, 0, 0, 0, $38, 0, $88, 8, 4, 4, $84, $84, $88, 0
                 db 0, 0, $80, 0, 0, $80, $80, 0, 0, 0, 0, 0, 0, $A4, 0, 0
                 db 0, 0, 0, $2C, $2C, $2C, $30, $A4, $80, 0, 0, 0, 0, $80, 0, $1D
                 db 0, $98, 0, $98, $98, $B4, $98, $98, $98, 0, 0, 0, 0, 0, $80, 0
                 db 0, $18, $18, $B4, $B4, 6, 0, $34, $98, 0, $80, 0, 0, $98, $98, 0
                 db $98, $98, $98, $98, 0, $18, $BD, $80, $2D, $2D, 0, $A, 0, 0, 0, 0
                 db 0, 0, 0, 0, $84, $38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 8, 0, 0, 0, 8, 8, $98

data_C1F6::      db 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, $D, 1, $D, 1, 1, 8
                 db $13, $13, $13, 0, 1, 6, $2C, $2C, $C, 0, $2A, 0, 0, 0, $2A, $2F
                 db $B, $C, $E, 1, 1, 6, 6, 9, 4, 1, 0, $E, 1, 0, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $E, 0, 0, 0
                 db $20, $13, 0, 0, 0, $B, $B, $30, $E, $18, $1D, $1A, $19, $1C, $10, $11
                 db $12, 0, $1F, $1E, 0, $1B, $22, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $21, 0, $29, 0, $29, 0
                 db 0, $13, 0, 0, 0, 0, 0, $13, $15, $14, 1, 1, 1, 1, $13, $24
                 db $2D, $2E, $13, $25, $23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 2, 0, 0, 0, 0, 0, 0, 0, 0, $F, $2B, 0, 0, 0, $13, 0
                 db 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, $28, 0, $13, 0, $26, 0, 0, $31, $31, $31, 0, 0, 0, $22
                 db $22, $22, $2B, 0, $14, 0, $22, $22, $33, $14, 0

data_C2F1::      db $12, $12, $A, $12, $12, $A, 2, 2, 2, 8, $12, 8, $12, 8, 0, $40
                 db $11, $11, $11, 0, 8, $12, $12, $12, 8, $11, 8, 8, 8, $10, 8, 8
                 db 8, 8, $12, 8, 8, 8, 8, $52, 8, 8, $A, $12, 8, $A, $A, $13
                 db $A, $A, $A, $A, $A, $A, 8, $A, $A, 8, $A, $A, $1B, $1A, 2, 2
                 db 2, 2, 2, 2, 2, $42, 2, 2, 2, 2, $42, 2, $12, 0, 2, 2
                 db $30, 8, 2, 2, 2, 8, 8, 8, $12, $D0, $90, $90, $D0, $90, $D4

data_C350::      db $84, $D4, 2, $D0, $90, 2, $80, 2, $42, $12, 2, 2, 2, 2, $43, 0

data_C360::      db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, $20, 0, 2, 2, 2
                 db $40, 0, $84, $40, 0, 0, 0, 2, $84, $C4, $94, 0, 0, 0, 0, $84
                 db 0, 0, 0, $C4, $10, 0, 0, 0, 0, 0, $10, 0, 0, 0, $42, 2
                 db 0, 0, 0, 0, 2, 2, 2, 2, $42, $42, 0, $10, $10, 8, $18, 0

data_C3A0::      db $13, 0, $12, 0, 2, 2, 2, 2, 2, 2, 0, 1, 0, $84, $11, $84
                 db 0, 0, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
                 db 2, 0, 0, 0, 0, 0, 3, 2, $42, $42, 2, 2, 2, 2, 2, 2
                 db $12, 2, 2, 2, 2, 0, 2, 0, 2, 2, 0, 0, 0, 0, 0, 0

data_C3E0::     db 0, 0, 0, 4, 4, $94, $42, 0, 0, $94, $90, $12

data_C3EC::     db 1, 1, 1, 0, 0, 1, 2, 1, 2, 3, 3, 2, 0, 0, 0, 0
                db 1, 1, 1, 0, 0, 2, 2, 2, 2, 3, 3, 2, 0, 0, 0, 0
                db 1, 1, 1, 0, 0, 2, 2, 2, 2, 1, 3, 2, 0, 0, 0, 0
                db 1, 1, 1, 0, 0, 2, 1, 2, 1, 1, 3, 2, 0, 0, 0, 0
                db 0, 3, 3, 0

data_C430::      db 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 3, 0
                 db 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

data_C460::      db 0, 1, 3, 1, 2, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 3, 1, 2, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0

data_C480::     db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 0, 1, 1, 1, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0
data_C4A0::     db 0, 0, 1, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 1, 1, 3, 1, 1, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0
                db 0, 0, 0

data_C4C3::      db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 1
                 db 2, 2, 2, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2
                 db 2, 4, 0, 1, 2, 0, 0, 0, 0, 1, 2, 2, 0, 0, 0, 0
                 db 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2
                 db 2, 2, 0, 2, 2, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2
                 db 2, 4, 0, 2, 2, 0, 0, 0, 0, 0, 1, 1, 1, 2, 1, 0
                 db 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0
                 db 2, 0, 0, 2, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0
                 db 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0
                 db 2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0
                 db 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0
                 db 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2
                 db 2, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0
                 db 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0
                 db 0, 0, 0, 2, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2
                 db 1, 2, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2
                 db 1, 2, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1
                 db 2, 1, 0, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1
                 db 0, 0, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2
                 db 1, 2, 0, 1, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2
                 db 1, 2, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 2
                 db 0, 2, 0, 3, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 2, 2
                 db 2, 2, 0, 0, 2, 0, 0, 0, 0, 1, 1, 1, 0, 0, 2, 0
                 db 0, 5, 2, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 0, 5, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2
                 db 1, 4, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
                 db 2, 4, 0, 2, 2, 0

data_C6D9::      db 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 4, 0, 3, 2, 0
                 db 0, 0, 0, 1, 1, 1

data_C6EF::     db 1, 1, 2, 2, 1, 1, 0, 3, 2, 0, 0, 0, 0, 6, 6, 6
                db 6, 6, 6, 6, 6, 6, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0
                db 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1, 1, 1
                db 1, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1, 1, 1
                db 1, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0

data_C73C::     db 0, 1, 2, $40, 0, 0, $FF, 0, 0, 2, 1, $40, 0, 0, $FF, 0
                db 0, 4, 2, $40, 0, 0, $FF, 0, 0, 8, 4, $40, 0, 0, $FF, 0
                db 0, $10, 8, $40, 0, 0, $FF, 0, 0, 1, 4, $40, 0, 0, $FF, 0
                db 0, $FF, 2, $40, 0, 0, $FF, 0, 0, 1, 4, $40, 0, 0, $FF, 0
                db 0, $FF, $18, $FE, 2, $FD, $FF, 0, 0, $FF, $FD, $FE, 0, 0, 2, 0
                db 0, 1, 4, $FE, 0, 0, $FF, 0, 0, $FF, 2, $40, 0, 0, $FF, 0
                db 0, 1, 2, $40, 0, 0, $FF, 0, 0, 1, 2, $40, 0, 0, $FF, 0
                db 0, 1, 2, $40, 0, 0, $FF, 0, 0, 1, 2, $40, 0, 0, $FF, 0

data_C7BC::     db 1, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
                db $C, $3F, 8, 8, 8, $C, 0, 0, 4, 6, 8, $A, 4, $14, $A, $18
                db 4, 2, 8, 8, 2, 4, $FF, 0, 2, 4, 2, 3, 1, 1, 8, 6
                db 2, $A, 1, 8, 8

data_C7F1::     db 4, 4, 8, 8, $18, 8, 4, 8, $10, 8, $10, 8, 8, 4, 8, 8
                db 8, 8, 8, 8, 8, $C, 0, 0, 8, 8, 8, $C, $C, $14, $10, $20
                db 8, 8, 4, 4, 4, 4, 4, 0, $14, 8, 4, 8, 4, 4, 8, 8
                db 4, 4, 4, 8, 8, 2, 6, 1, 3, 3, 3, $D, 8, $A, 2, 7
                db $B, 0, 4, 0, 8, 4, $E, $E, $E, $E, $E, 0, 3, 3, 3, 3
                db 3, 3, 3, 3, 3, 3, 2, 0, 0, 2, 0, 0, 0, 0, 6, 6
                db $D, $E, 0, 9, 3, 6, 0, 2, $E, $E

label_C85B::
    call label_3A0A
    ld   a, [$FFF6]
    ld   hl, data_C3E0
    add  hl, bc
    ld   [hl], a
    ld   hl, data_C460
    add  hl, bc
    ld   [hl], $FF

label_C86B::
    ld   hl, data_C3A0
    add  hl, bc
    ld   e, [hl]
    ld   d, b
    ld   hl, data_C000
    add  hl, de
    ld   a, [hl]
    ld   hl, data_C340
    add  hl, bc
    ld   [hl], a
    ld   hl, data_C0FB
    add  hl, de
    ld   a, [hl]
    ld   hl, data_C350
    add  hl, bc
    ld   [hl], a
    call label_C895
    ld   hl, data_C2F1
    add  hl, de
    ld   a, [hl]
    ld   hl, data_C430
    add  hl, bc
    ld   [hl], a
    jp   label_3AEA

label_C895::
    push de
    ld   hl, data_C1F6
    add  hl, de
    ld   e, [hl]
    ld   hl, data_C4D0
    add  hl, bc
    ld   [hl], e
    ld   d, b
    ld   hl, data_C7BC
    add  hl, de
    ld   a, [hl]
    ld   hl, data_C360
    add  hl, bc
    ld   [hl], a
    pop  de
    ret

label_C8AD::
    ld   a, $01
    ld   [$C18F], a
    jp   label_3F8D
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $80
    jr   z, label_C918
    ld   a, [$FFF8]
    and  $30
    jr   z, label_C8C7
    jp   label_3F8D

label_C8C7::
    ld   a, [$FFEB]
    cp   $5F
    jr   nz, label_C8F0
    ld   a, [$FFF6]
    cp   $95
    jr   z, label_C8F0
    cp   $92
    jr   z, label_C8F0
    cp   $84
    jr   z, label_C8E2
    ld   a, [$D984]
    and  $30
    jr   z, label_C8AD

label_C8E2::
    ld   a, [$D992]
    and  $30
    jr   z, label_C8AD
    ld   a, [$D995]
    and  $30
    jr   z, label_C8AD

label_C8F0::
    ld   a, [$DBA5]
    and  a
    jr   z, label_C908
    ld   a, [$D478]
    and  a
    jr   nz, label_C90B
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $04
    jr   z, label_C908
    ld   [$C1CF], a

label_C908::
    call label_27F2

label_C90B::
    xor  a
    ld   [$C1BD], a
    inc  a
    ld   [$C1BE], a
    ld   a, $20
    ld   [$C165], a

label_C918::
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $05
    ld   a, $03
    call label_9D3
    jp   [hl]

label_C924::
    ld   bc, data_2104
    ld   h, b
    call nz, label_DE09
    ld   d, b
    ld   hl, data_C924
    add  hl, de
    ld   a, [hl]
    jp   label_3B0C
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    sub  a, $03
    ld   [hl], a
    ret
    call label_C00
    ld   [hl], $30
    ret
    ld   a, [$FFF6]
    cp   $65
    ret  nz
    ld   a, [$FFEC]
    cp   $50
    ret  c
    ld   hl, $C2B0
    add  hl, bc
    inc  [hl]
    ret
    ld   hl, $C360
    add  hl, bc
    ld   [hl], $02
    ret
    ld   hl, $DB74
    ld   a, [$DB73]
    or   [hl]
    jp   nz, label_3F8D
    ret
    ld   hl, $C310
    add  hl, bc
    ld   [hl], $10
    call label_280D
    ld   hl, $C3D0
    add  hl, bc
    ld   [hl], a
    ret
    call label_CF83
    ld   a, $02
    jp   label_3B0C
    ld   a, $33
    jr   label_C995
    ld   a, [$DB15]
    cp   $06
    jr   c, label_C993
    ld   hl, $C200
    add  hl, bc
    ld   [hl], $58
    ld   hl, $C380
    add  hl, bc
    ld   [hl], $03

label_C993::
    ld   a, $40

label_C995::
    ld   e, a
    ld   a, [$DB4E]
    and  a
    ret  z
    ld   a, e

label_C99C::
    ld   [$D368], a
    ld   [$FFB0], a
    ld   [$FFBD], a
    ld   [$FFBF], a
    ret
    xor  a
    ld   [$D219], a
    jp   label_27F2
    ld   a, $24
    jr   label_C99C
    ld   a, $3A
    jr   label_C99C
    xor  a
    ld   [$C168], a
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    sub  a, $04
    ld   [hl], a
    ret
    call label_280D
    jp   label_3B0C
    call label_BFB
    call label_280D
    and  $3F
    add  a, $10
    ld   [hl], a
    ret
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    add  a, $0A
    ld   [hl], a
    ld   hl, $C2C0
    add  hl, bc
    ld   [hl], a
    ret
    xor  a
    ld   [$FFB0], a
    ret
    call label_CA12
    ld   a, [$FFEE]
    swap a
    and  $01
    add  a, $04
    jp   label_3B0C
    ld   a, [$FFEE]
    swap a
    and  $01
    ld   e, a
    ld   a, [$FFEF]
    swap a
    inc  a
    rla
    and  $02
    or   e
    call label_3B0C
    cp   $01
    jr   nz, label_CA12
    ld   a, [$DB4B]
    and  a
    jp   nz, label_3F8D

label_CA12::
    ld   hl, $C310
    add  hl, bc
    ld   [hl], $13
    ret
    ld   hl, $C380
    add  hl, bc
    ld   [hl], $02
    call label_3B12
    call label_C05
    ld   [hl], $20
    ret
    ld   a, [$FFF6]
    cp   $D9
    ld   a, $32
    jr   nz, label_CA32
    ld   a, $37

label_CA32::
    jr   label_CA4F
    ld   hl, $C310
    add  hl, bc
    ld   [hl], $10
    ld   a, [$DBA5]
    and  a
    jr   z, label_CA46
    ld   a, [$FFF7]
    cp   $FF
    jr   z, label_CA4D

label_CA46::
    ld   a, [$C5A9]
    and  a
    jp   nz, label_3F8D

label_CA4D::
    ld   a, $0C

label_CA4F::
    call label_C995
    ld   de, $C220
    ld   hl, $C200
    jp   label_CF92
    ld   a, [$FFF6]
    cp   $E2
    jr   nz, label_CA6B
    ld   a, [$DB56]
    cp   $80
    jr   z, label_CA72
    jp   label_3F8D

label_CA6B::
    ld   a, [$DB56]
    and  a
    jp   nz, label_3F8D

label_CA72::
    ret
    ld   a, [$FFF8]
    rra
    jr   label_CA7A
    ld   a, [$FFF8]

label_CA7A::
    and  $10
    jp   nz, label_3F8D
    ret
    ld   a, [$FFF6]
    cp   $C0
    jr   c, label_CAA3
    ld   a, [$DB74]
    and  a
    jp   z, label_3F8D
    ld   a, [$DB73]
    and  a
    jp   nz, label_3F8D
    inc  a
    ld   [$C3C8], a
    ld   a, $2F
    ld   [$FFB1], a
    ld   [$FFB0], a
    ld   [$FFBD], a
    call label_27EA

label_CAA3::
    ld   a, [$0003]
    and  a
    jp   z, label_CB2F
    ld   a, [$DB4F]
    and  a
    jr   nz, label_CB2F
    ld   a, [$DB50]
    and  a
    jr   nz, label_CABF
    ld   [$DB96], a
    ld   a, $01
    ld   [$DB95], a
    ret

label_CABF::
    ld   hl, $C3A0
    add  hl, bc
    ld   [hl], $6B
    ret

label_CAC6::
    rst  $38
    ld   a, a
    cp   [hl]
    rrca
    inc  de
    ld   [bc], a
    nop
    nop
    ld   a, [$FFFE]
    and  a
    jr   z, label_CB2F
    ld   a, [$DBA5]
    and  a
    jr   z, label_CB2F
    ld   a, [$DB73]
    and  a
    jr   nz, label_CB2F
    ld   a, [$DB67]
    and  $02
    jr   nz, label_CB2F
    ld   a, [$DB0E]
    cp   $04
    jr   nc, label_CB2F
    ld   a, [$DB48]
    and  a
    jr   z, label_CB2F
    cp   $01
    jr   z, label_CB2F
    ld   a, $02
    ld   [rSVBK], a
    ld   hl, $DC88
    ld   de, data_CAC6

label_CB01::
    ld   a, [de]
    ldi  [hl], a
    inc  de
    ld   a, l
    and  $07
    jr   nz, label_CB01
    xor  a
    ld   [rSVBK], a
    jr   label_CB2F
    ld   a, [$DB56]
    cp   $80
    jr   nz, label_CB1A
    ld   a, $0E
    ld   [$D368], a

label_CB1A::
    ret
    ld   a, [$DBA5]
    and  a
    jr   nz, label_CB2F
    ld   a, [$D477]
    and  a
    ret  nz
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    sub  a, $10
    ld   [hl], a
    ret

label_CB2F::
    ld   hl, $C380
    add  hl, bc
    ld   [hl], $03
    ld   a, [$DB44]
    and  a
    jr   nz, label_CB40
    ld   a, $1C
    call label_C99C

label_CB40::
    jr   label_CB48
    ret
    ld   a, $07
    call label_C995

label_CB48::
    ld   a, $01
    jr   label_CB51
    call label_280D
    and  $03

label_CB51::
    ld   hl, $C380
    add  hl, bc
    ld   [hl], a

label_CB56::
    ret
    ld   a, $03
    ld   [rIE], a
    ret
    ld   a, $FF
    jp   label_3B0C
    ld   a, [$DBA5]
    and  a
    jr   z, label_CB56
    ld   a, [$FFF6]
    cp   $DA
    jr   nz, label_CB56
    ld   a, [$DB0E]
    cp   $0E
    jp   nz, label_3F8D
    ld   a, [$DC0D]
    and  $01
    jr   z, label_CB56
    ld   a, $03
    jp   label_3B0C
    xor  a
    jr   label_CB51

label_CB84::
    ld   hl, $DDE0
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    add  hl, de
    ld   a, [hl]
    ret
    call label_CB84
    and  $10
    jr   nz, label_CBAD
    xor  a
    jp   label_3B0C
    call label_CB84
    and  $10
    jr   nz, label_CBAD
    ld   a, $04
    jp   label_3B0C
    call label_CB84
    and  $10
    jr   z, label_CBB3

label_CBAD::
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $80

label_CBB3::
    ld   a, $08
    jp   label_3B0C
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $03
    jr   label_CBC2
    ld   a, $04

label_CBC2::
    ld   hl, $C310
    add  hl, bc
    ld   [hl], $10
    jp   label_3B0C
    ld   hl, $C360
    add  hl, bc
    ld   [hl], $10
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    sub  a, $08
    ld   [hl], a
    jp   label_CB56
    ld   hl, $C200
    add  hl, bc
    ld   [hl], $50
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], $00
    jp   label_CB56
    ld   a, [$FFFE]
    and  a
    jp   z, label_CB56
    call label_CB84
    and  $10
    jp   z, label_CB56
    ld   hl, $C200
    add  hl, bc
    ld   a, $3C
    jr   label_CC15
    ld   a, [$FFFE]
    and  a
    jp   z, label_CB56
    call label_CB84
    and  $10
    jp   z, label_CB56
    ld   hl, $C200
    add  hl, bc
    ld   a, $63

label_CC15::
    ld   [hl], a
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $04
    jp   label_CB56
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    add  a, $02
    ld   [hl], a
    ld   hl, $C310
    add  hl, bc
    ld   [hl], $04
    ld   hl, $C360
    add  hl, bc
    ld   [hl], $0C
    xor  a
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], a
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    add  a, $08
    ld   [hl], a
    jp   label_CB56

label_CC44::
    inc  [hl]
    ld   [bc], a
    inc  [hl]
    ldi  [hl], a
    inc  [hl]
    inc  d
    inc  [hl]
    inc  [hl]
    call label_C05
    jr   z, label_CC77
    ld   a, [$FFE7]
    rra
    rra
    rra
    and  $01
    ld   [$FFF1], a
    ld   de, data_CC44
    call label_3BC0
    ld   hl, $C3B0
    add  hl, bc
    ld   a, [hl]
    ld   [$FFF1], a
    call label_3A81
    call label_FF7E
    call label_FFA9
    call label_E0B3
    call label_3D7F
    ret

label_CC77::
    ld   a, [$FFEB]
    cp   $1F
    jr   nz, label_CC8C
    ld   hl, $C3A0
    add  hl, bc
    ld   [hl], $1E
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $05
    jp   label_C86B

label_CC8C::
    ld   hl, $C480
    add  hl, bc
    ld   [hl], $1F
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $01
    ld   hl, $C340
    add  hl, bc
    ld   [hl], $04
    ld   hl, $FFF4
    ld   [hl], $13
    ret

label_CCA4::
    nop
    nop
    inc  b
    nop

label_CCA8::
    nop
    ld   bc, data_603

label_CCAC::
    inc  h
    ld   bc, $0124
    ld   a, $01

label_CCB2::
    ld   e, $01
    ld   e, $61
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_CCDC
    ld   hl, $C3A0
    add  hl, bc
    ld   a, [hl]
    cp   $E9
    jr   z, label_CCCD
    cp   $EA
    jr   z, label_CCCD
    cp   $EB
    jr   nz, label_CCDC

label_CCCD::
    ld   hl, $C280
    add  hl, bc
    ld   a, $05
    ld   [hl], a
    ld   hl, $C290
    add  hl, bc
    ld   a, $06
    ld   [hl], a
    ret

label_CCDC::
    call label_C05
    jr   nz, label_CD07
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $02
    jr   nz, label_CCEF
    ld   hl, $D460
    ld   [hl], $01

label_CCEF::
    ld   a, [$FFEB]
    cp   $A8
    jr   nz, label_CD04
    ld   a, $16
    ld   [$DB6F], a
    ld   a, $50
    ld   [$DB70], a
    ld   a, $27
    ld   [$DB71], a

label_CD04::
    jp   label_3F8D

label_CD07::
    cp   $40
    jr   c, label_CD29
    ld   a, [$FFEB]
    cp   $09
    jr   z, label_CD19
    cp   $0B
    jr   z, label_CD19
    cp   $14
    jr   nz, label_CD22

label_CD19::
    call label_D8FC
    call label_D8FC
    call label_D8FC

label_CD22::
    call label_3A81
    call label_FF7E
    ret

label_CD29::
    rra
    rra
    rra
    rra
    and  $03
    ld   hl, $C3B0
    add  hl, bc
    ld   [hl], a
    ld   [$FFF1], a
    ld   e, a
    ld   d, b
    ld   hl, data_CCA4
    add  hl, de
    ld   a, [$FFEC]
    add  a, [hl]
    ld   [$FFEC], a
    ld   a, e
    cp   $03
    jr   nz, label_CD51
    xor  a
    ld   [$FFF1], a
    ld   de, data_CCB2
    call label_3BC0
    jr   label_CD57

label_CD51::
    ld   de, data_CCAC
    call label_3C77

label_CD57::
    call label_FF7E
    call label_C05
    cp   $3F
    jr   nz, label_CD66
    ld   hl, $FFF2
    ld   [hl], $18

label_CD66::
    rra
    rra
    rra
    rra
    and  $03
    ld   e, a
    ld   d, b
    ld   hl, data_CCA8
    add  hl, de
    ld   e, [hl]
    ld   a, [$FF98]
    push af
    ld   hl, $C4B0
    add  hl, bc
    ld   a, [hl]
    ld   [$FF98], a
    ld   a, [$FF99]
    push af
    ld   hl, $C4C0
    add  hl, bc
    ld   a, [hl]
    ld   [$FF99], a
    ld   a, e
    call label_FEC7
    pop  af
    ld   [$FF99], a
    pop  af
    ld   [$FF98], a
    jp   label_FF25
    call label_3A81
    call label_FF7E
    ld   hl, $C410
    add  hl, bc
    ld   [hl], $02
    call label_E0B3
    ld   hl, $C410
    add  hl, bc
    ld   [hl], b
    call label_E6FA
    call label_D438
    ld   a, [$FFEB]
    cp   $5C
    jr   nz, label_CDD2
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_CDD2
    ld   hl, $C420
    add  hl, bc
    ld   [hl], $20
    ld   hl, $FFF3
    ld   [hl], $07
    ld   hl, $C440
    add  hl, bc
    ld   a, [hl]
    inc  a
    ld   [hl], a
    cp   $03
    jr   z, label_CDEF

label_CDD2::
    ld   a, $0B
    ld   [$C19E], a
    call label_F5A2
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    or   [hl]
    jr   nz, label_CE04
    call label_F267
    ld   a, [$FFEB]
    cp   $5C
    jr   nz, label_CE04

label_CDEF::
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $05
    call label_3B12
    ld   [hl], $01
    call label_C05
    ld   [hl], $80
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], b

label_CE04::
    ret

label_CE05::
    db   $10 ; Undefined instruction
    call label_3A81
    call label_FF7E
    call label_FFA9
    call label_E0B3
    call label_3D7F
    call label_EE2B
    ld   a, [$DB00]
    cp   $03
    jr   nz, label_CE28
    ld   a, [$FFCC]
    and  $20
    jr   nz, label_CE35
    jr   label_CE72

label_CE28::
    ld   a, [$DB01]
    cp   $03
    jr   nz, label_CE72
    ld   a, [$FFCC]
    and  $10
    jr   z, label_CE72

label_CE35::
    ld   a, [$C3CF]
    and  a
    jr   nz, label_CE72
    ld   hl, $C340
    add  hl, bc
    ld   a, [hl]
    push hl
    push af
    or   $80
    ld   [hl], a
    call label_EC72
    rl   e
    pop  af
    pop  hl
    ld   [hl], a
    rr   e
    jr   nc, label_CE72
    ld   a, $01
    ld   [$C3CF], a
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $07
    ld   a, $02
    ld   [$FFF3], a
    ld   hl, $C490
    add  hl, bc
    ld   [hl], b
    call label_C05
    ld   [hl], $02
    ld   a, [$FF9E]
    ld   [$C15D], a
    jp   label_D732

label_CE72::
    ld   hl, $C300
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_CE85
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $05
    ld   hl, $C320
    add  hl, bc
    ld   [hl], b

label_CE85::
    cp   $38
    ret  nc
    srl  a
    srl  a
    and  $01
    ld   e, a
    ld   d, b
    ld   hl, data_CE05
    add  hl, de
    ld   a, [hl]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    call label_FF32
    jp   label_3D7F

label_CEA0::
    inc  c
    inc  c
    db   $F4 ; Undefined instruction
    db   $F4 ; Undefined instruction

label_CEA4::
    inc  c
    db   $F4 ; Undefined instruction
    inc  c
    db   $F4 ; Undefined instruction
    call label_280D
    and  $03
    ld   e, a
    ld   d, b
    ld   hl, data_CEA0
    add  hl, de
    ld   a, [hl]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   hl, data_CEA4
    add  hl, de
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    ret
    ld   hl, $C2C0
    add  hl, bc
    ld   [hl], $04
    ld   a, $03
    jr   label_CED0
    ld   a, $FD

label_CED0::
    ld   hl, $C210
    add  hl, bc
    add  a, [hl]
    ld   [hl], a
    ret
    call label_C05
    ld   [hl], $80
    ld   hl, $C3B0
    add  hl, bc
    dec  [hl]
    ret
    ld   a, [$FFEE]
    and  $10
    ld   a, $00
    jr   nz, label_CEEC
    ld   a, $03

label_CEEC::
    ld   hl, $C380
    add  hl, bc
    ld   [hl], a
    push hl
    call label_D8FC
    pop  hl
    ld   a, [hl]
    xor  $01
    ld   [hl], a
    ret
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], $02
    ld   a, [$FFF6]
    cp   $A4
    jr   z, label_CF0B
    cp   $D2
    jr   nz, label_CF0F

label_CF0B::
    dec  [hl]
    call label_CF83

label_CF0F::
    jp   label_CF24

label_CF12::
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], $01
    ld   a, [$DBA5]
    and  a
    jr   z, label_CF24
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], $02

label_CF24::
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    or   $11
    ld   [hl], a
    ret
    ld   a, [$FFF6]
    cp   $F8
    jr   nz, label_CF44
    ld   a, [$FFF8]
    bit  4, a
    jp   nz, label_3F8D
    bit  5, a
    jp   z, label_3F8D
    ld   a, $02
    jp   label_3B0C

label_CF44::
    cp   $7A
    jr   nz, label_CF54
    ld   a, [$FFF8]
    and  $10
    jp   nz, label_3F8D
    ld   a, $04
    jp   label_3B0C

label_CF54::
    cp   $7C
    jr   nz, label_CF67
    ld   a, [$D969]
    and  $10
    jp   z, label_3F8D
    ld   a, [$FFF8]
    and  $10
    jp   nz, label_3F8D

label_CF67::
    ret
    ld   a, [$DB0E]
    cp   $0E
    jr   z, label_CF83
    ret
    ld   a, [$DBA5]
    and  a
    ret  z
    call label_3B12
    jr   label_CF83
    call label_CF12
    ld   a, [$DBA5]
    and  a
    jr   nz, label_CFA9

label_CF83::
    ld   de, $C220
    ld   hl, $C200
    call label_CF92
    ld   de, $C230
    ld   hl, $C210

label_CF92::
    add  hl, bc
    ld   a, [hl]
    add  a, $08
    ld   [hl], a
    rla
    ld   l, e
    ld   h, d
    add  hl, bc
    rra
    ld   a, [hl]
    adc  a, $00
    ld   [hl], a
    ret
    ld   de, $C220
    ld   hl, $C200
    jr   label_CF92

label_CFA9::
    call label_BFB
    ld   [hl], $80
    ret
    call label_C00
    ld   [hl], $A0
    ret
    ld   a, [$FFEB]
    cp   $12
    jr   nz, label_CFC8
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], $01
    ld   hl, $C310
    add  hl, bc
    ld   [hl], $10
    ret

label_CFC8::
    jp   label_3B12

label_CFCB::
    ld   h, b
    ld   [bc], a
    ld   h, d
    ld   [bc], a
    ld   h, d
    ldi  [hl], a
    ld   h, b
    ldi  [hl], a
    ld   h, h
    ld   [bc], a
    ld   h, [hl]
    ld   [bc], a
    ld   h, [hl]
    ldi  [hl], a
    ld   h, h
    ldi  [hl], a
    ld   l, b
    ld   [bc], a
    ld   l, d
    ld   [bc], a
    ld   l, h
    ld   [bc], a
    ld   l, [hl]
    ld   [bc], a
    ld   l, d
    ldi  [hl], a
    ld   l, b
    ldi  [hl], a
    ld   l, [hl]
    ldi  [hl], a
    ld   l, h
    ldi  [hl], a

label_CFEB::
    ld   [hl], b
    ld   [bc], a
    ld   [hl], d
    ld   [bc], a
    ld   [hl], d
    ldi  [hl], a
    ld   [hl], b
    ldi  [hl], a

label_CFF3::
    inc  c
    db   $F4 ; Undefined instruction
    nop
    nop

label_CFF7::
    nop
    nop
    db   $F4 ; Undefined instruction
    inc  c
    ld   hl, $C2C0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_D048
    ld   de, data_CFEB
    call label_3BC0
    call label_FF78
    call label_FFA9
    call label_EE28
    call label_FF25
    call label_F893
    call label_C05
    jr   nz, label_D03D
    call label_280D
    and  $1F
    add  a, $20
    ld   [hl], a
    and  $03
    ld   e, a
    ld   d, b
    ld   hl, data_CFF3
    add  hl, de
    ld   a, [hl]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   hl, data_CFF7
    add  hl, de
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a

label_D03D::
    ld   a, [$FFE7]
    rra
    rra
    rra
    rra
    and  $01
    jp   label_3B0C

label_D048::
    ld   de, data_CFCB
    call label_D83C
    ret

label_D04F::
    ld   h, d
    ld   [hl], b
    ld   h, e
    ld   [hl], c

label_D053::
    ld   h, d
    ld   [hl], b
    ld   h, d
    ld   [hl], b

label_D057::
    inc  bc
    inc  b
    dec  b
    ld   b, $07
    ld   [label_A09], sp
    dec  bc
    inc  c
    ld   [bc], a
    ld   bc, $0000
    nop
    nop
    ld   bc, data_1432
    ld   h, h
    ret  z
    db   $F4 ; Undefined instruction
    ld   a, $2A
    ld   [$C111], a
    ld   a, $04
    ld   [$FFF4], a
    ld   de, data_D04F
    ld   a, [$FFFE]
    and  a
    jr   z, label_D081
    ld   de, data_D053

label_D081::
    ld   b, $A1
    call label_D1C9
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    sub  a, $08
    ld   [hl], a
    ld   hl, $C250
    add  hl, bc
    ld   [hl], $FC
    ld   hl, $C3B0
    add  hl, bc
    ld   a, [hl]
    ld   [$FFE8], a
    ld   d, b
    cp   $11
    jr   nz, label_D0AC
    push af
    ld   a, [$C501]
    ld   e, a
    ld   hl, $C2F0
    add  hl, de
    ld   [hl], $38
    pop  af

label_D0AC::
    ld   e, a
    cp   $21
    jp   nc, label_D12A
    cp   $20
    jr   nz, label_D0B9
    jp   label_E36D

label_D0B9::
    cp   $1B
    jr   c, label_D0D8
    cp   $20
    jr   nc, label_D0D8
    ld   hl, data_D04D
    add  hl, de
    ld   a, [hl]
    ld   [$DB90], a
    ld   hl, data_D048
    add  hl, de
    ld   a, [hl]
    ld   [$DB8F], a
    ld   a, $18
    ld   [$C3CE], a
    jr   label_D12A

label_D0D8::
    cp   $16
    jr   c, label_D0EF
    cp   $1B
    jr   nc, label_D0EF
    sub  a, $16
    ld   e, a
    ld   d, $00
    ld   hl, $DBCC
    add  hl, de
    inc  [hl]
    call label_2802
    jr   label_D12A

label_D0EF::
    cp   $0C
    jr   nc, label_D125
    ld   a, [$FFE8]
    cp   $01
    jr   nz, label_D0FD
    ld   hl, $DB44
    inc  [hl]

label_D0FD::
    cp   $00
    jr   nz, label_D10C
    ld   a, [$DB43]
    cp   $02
    jr   z, label_D10C
    ld   hl, $DB43
    inc  [hl]

label_D10C::
    ld   a, [$FFE8]
    cp   $0A
    jr   nz, label_D11A
    ld   hl, $DB4D
    ld   a, [hl]
    add  a, $01
    daa
    ld   [hl], a

label_D11A::
    ld   d, b
    ld   hl, data_D057
    add  hl, de
    ld   d, [hl]
    call label_E472
    jr   label_D12A

label_D125::
    ld   hl, $DB00
    add  hl, de
    inc  [hl]

label_D12A::
    call label_D134
    ld   a, [hl]
    or   $10
    ld   [hl], a
    ld   [$FFF8], a
    ret

label_D134::
    ld   a, [$DBA5]
    ld   d, a
    ld   hl, $D800
    ld   a, [$FFF6]
    ld   e, a
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_D14B
    ld   d, $00
    ld   hl, $DDE0
    jr   label_D154

label_D14B::
    cp   $1A
    jr   nc, label_D154
    cp   $06
    jr   c, label_D154
    inc  d

label_D154::
    add  hl, de
    ret

label_D156::
    ld   l, d
    ld   a, d
    ld   l, e
    ld   a, e

label_D15A::
    db   $10 ; Undefined instruction
    ld   de, $F813
    ld   sp, hl
    ld   a, [label_EFB]
    ld   e, $0F
    rra

label_D166::
    ld   l, b
    ld   [hl], a
    ld   l, c
    ld   c, e

label_D16A::
    halt
    halt
    call label_FEFE
    ld   d, $00
    ld   hl, data_D23D
    add  hl, de
    ld   a, [hl]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   hl, data_D241
    add  hl, de
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    call label_D249
    call label_F893
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_D198
    jp   label_3F8D

label_D198::
    ld   a, $11
    ld   [$FFF4], a
    ld   de, data_D166
    ld   b, $C6
    ld   a, [$FFF6]
    cp   $77
    jr   nz, label_D1B3
    ld   a, [$DDD9]
    cp   $80
    jr   z, label_D1B3
    ld   de, data_D16A
    ld   b, $03

label_D1B3::
    ld   a, [$DBA5]
    and  a
    jr   z, label_D1C9
    ld   de, data_D15A
    ld   b, $0D
    ld   a, [$FFF6]
    cp   $C7
    jr   nz, label_D1C9
    ld   de, data_D156
    ld   b, $BE

label_D1C9::
    push de
    ld   a, b
    push af
    ld   b, $00
    ld   a, [$FFEF]
    sub  a, $0F
    ld   [$FFCD], a
    ld   a, [$FFEE]
    sub  a, $07
    ld   [$FFCE], a
    swap a
    and  $0F
    ld   e, a
    ld   a, [$FFCD]
    and  $F0
    or   e
    ld   e, a
    ld   d, $00
    ld   hl, $D711
    add  hl, de
    pop  af
    ld   [hl], a
    ld   [$DDD8], a
    ld   a, $03
    call label_B2F

label_D1F5::
    call label_2887
    ld   a, [$D600]
    ld   e, a
    ld   d, $00
    ld   hl, $D601
    add  hl, de
    add  a, $0A
    ld   [$D600], a
    pop  de
    ld   a, [$FFCF]
    ldi  [hl], a
    ld   a, [$FFD0]
    ldi  [hl], a
    ld   a, $81
    ldi  [hl], a
    ld   a, [de]
    inc  de
    ldi  [hl], a
    ld   a, [de]
    inc  de
    ldi  [hl], a
    ld   a, [$FFCF]
    ldi  [hl], a
    ld   a, [$FFD0]
    inc  a
    ldi  [hl], a
    ld   a, $81
    ldi  [hl], a
    ld   a, [de]
    inc  de
    ldi  [hl], a
    ld   a, [de]
    ldi  [hl], a
    xor  a
    ld   [hl], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_D234
    push bc
    ld   a, $03
    call label_91D
    pop  bc

label_D234::
    ret

label_D235::
    ld   l, [hl]
    rlca
    ld   l, [hl]
    daa
    ld    hl, sp+$17
    ld   a, [$F817]
    ld   [$0000], sp

label_D241::
    nop
    nop
    ld   [label_FEF8], sp
    rlca
    ld   a, [hl]
    daa

label_D249::
    ld   a, [$DBA5]
    ld   [$FFF1], a
    ld   de, data_D235
    and  a
    jr   nz, label_D25D
    ld   a, [$FFF6]
    cp   $77
    jr   nz, label_D25D
    ld   de, data_D245

label_D25D::
    call label_3BC0
    call label_FF78
    call label_FF25
    call label_D2D4
    call label_EC77
    jr   nc, label_D276
    call label_CBE
    ld   a, $03
    ld   [$C144], a

label_D276::
    ld   a, [$FFF6]
    cp   $C7
    jr   z, label_D282
    ld   a, [$DBA5]
    and  a
    jr   nz, label_D286

label_D282::
    ld   a, $02
    ld   [$FFA1], a

label_D286::
    ld   hl, $C3D0
    add  hl, bc
    ld   a, [hl]
    inc  a
    ld   [hl], a
    cp   $21
    ret  nz
    ld   hl, $C410
    add  hl, bc
    ld   [hl], a
    call label_F893
    ld   hl, $C280
    add  hl, bc
    ld   a, [hl]
    and  a
    ret  z
    cp   $02
    ret  z
    call label_3F8D
    ld   de, data_D162
    ld   b, $C4
    ld   a, [$DBA5]
    and  a
    jr   z, label_D2B5
    ld   de, data_D15E
    ld   b, $A6

label_D2B5::
    call label_D1C9
    ld   a, [$C18E]
    and  $1F
    cp   $02
    jr   z, label_D2D1
    cp   $07
    ret  nz
    call label_F893
    ld   a, [$C503]
    cp   $A7
    jr   z, label_D2D1
    cp   $A6
    ret  nz

label_D2D1::
    jp   label_C60

label_D2D4::
    ld   e, $0F
    ld   d, b

label_D2D7::
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    cp   $05
    jr   c, label_D31E
    ld   hl, $C340
    add  hl, de
    ld   a, [hl]
    and  $40
    jr   nz, label_D31E
    ld   hl, $C200
    add  hl, de
    ld   a, [$FFEE]
    sub  a, [hl]
    add  a, $0C
    cp   $18
    jr   nc, label_D31E
    ld   hl, $C210
    add  hl, de
    ld   a, [hl]
    ld   hl, $C310
    add  hl, de
    sub  a, [hl]
    ld   hl, $FFEC
    sub  a, [hl]
    add  a, $0C
    cp   $18
    jr   nc, label_D31E
    ld   hl, $C340
    add  hl, de
    ld   a, [hl]
    and  $20
    jr   nz, label_D31E
    push bc
    ld   c, e
    ld   b, d
    push de
    ld   a, $08
    call label_EFCC
    pop  de
    pop  bc

label_D31E::
    dec  e
    ld   a, e
    cp   $FF
    jp   nz, label_D2D7
    ret
    ld   d, $03
    ld   a, c
    ld   [$C50C], a
    call label_C00
    ld   [$FFD7], a
    jp   z, label_D3A8
    cp   $01
    jr   nz, label_D395
    ld   hl, $C390
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_D369
    call label_280D
    and  $03
    jr   nz, label_D369
    ld   a, $2F
    call label_E4CA
    jr   c, label_D369
    ld   a, [$FFD7]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   a, [$FFDA]
    ld   hl, $C310
    add  hl, de
    ld   [hl], a
    ld   hl, $C450
    add  hl, de
    ld   [hl], $80

label_D369::
    ld   a, [$FFF1]
    and  a
    jr   nz, label_D392
    ld   a, [$FFF7]
    cp   $1E
    jr   z, label_D378
    cp   $10
    jr   nz, label_D392

label_D378::
    ld   a, [$DB73]
    and  a
    jr   z, label_D392
    call label_280D
    and  $3F
    jr   nz, label_D38D
    ld   a, $28
    call label_2385
    jp   label_3F8D

label_D38D::
    ld   a, $99
    call label_2373

label_D392::
    jp   label_3F8D

label_D395::
    jp   label_3935

label_D398::
    ld   a, [$FF17]
    db   $F2 ; Undefined instruction
    rla
    db   $F4 ; Undefined instruction
    ld   d, $F6
    ld   d, $F0
    ld   d, $F2
    ld   d, $F4
    ld   d, $F6
    ld   d, $FA
    and  l
    db   $DB
    and  a
    jr   z, label_D3B3
    ld   de, data_D3A0
    jr   label_D3B6

label_D3B3::
    ld   de, data_D398

label_D3B6::
    call label_3BC0
    call label_FF78
    ld   a, $0B
    ld   [$C19E], a
    call label_F5A2
    call label_E0B3
    ld   hl, $C280
    add  hl, bc
    ld   a, [hl]
    cp   $02
    jp   z, label_D406
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_D3E4
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_D406
    call label_D438

label_D3E4::
    ld   hl, $FFF4
    ld   [hl], $05
    ld   e, $1F
    ld   a, [$FFF1]
    cp   $FF
    jr   z, label_D3F9
    cp   $01
    jr   z, label_D3F9
    ld   [hl], $09
    ld   e, $0F

label_D3F9::
    ld   hl, $C2F0
    add  hl, bc
    ld   [hl], e
    ld   hl, $C340
    add  hl, bc
    ld   a, [hl]
    add  a, $02
    ld   [hl], a

label_D406::
    ret
    ld   a, $05
    call label_E4CA
    ret  c
    ld   a, [$FFD7]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $FFDA
    sub  a, [hl]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   hl, $C3B0
    add  hl, de
    ld   [hl], $00
    ld   hl, $C2F0
    add  hl, de
    ld   [hl], $0F
    ld   hl, $C340
    add  hl, de
    ld   [hl], $C4
    ld   a, $09
    ld   [$FFF4], a
    jp   label_3F8D

label_D438::
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  a
    ret  z
    ld   a, [$C18E]
    and  $1F
    cp   $0D
    jr   nz, label_D467
    ld   a, [$C503]
    cp   $A0
    jr   z, label_D455
    ld   a, [$C50D]
    cp   $A0
    ret  nz

label_D455::
    ld   a, $30
    ld   [$FFCE], a
    ld   a, $20
    ld   [$FFCD], a
    ld   a, $19
    ld   [$FFDF], a
    call label_3E4D
    jp   label_C60

label_D467::
    cp   $0B
    ret  nz
    ld   a, [$C50D]
    cp   $35
    ret  c
    cp   $3D
    jr   c, label_D47D
    ld   a, [$C503]
    cp   $35
    ret  c
    cp   $3D
    ret  nc

label_D47D::
    jp   label_C60
    ldd  [hl], a
    ld   bc, data_E132

data_D484::
    db $30, 1, $30, $61

label_D488::
    db 0, 0, $3C, 1, 0, 8, $3C, $21, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db 0, 0, $3A, 1, 0, 8, $3A, $21, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $FA, $FA, $3A, 1, $FA, 2, $3A, $21, 6, 6, $3A, 1, 6, $E, $3A, $21
    db 4, $FC, $30, 1, 4, 4, $30, $21, $FC, 4, $30, 1, $FC, $C, $30, $21

label_D4C8::
    db 0, 0, $3A, 1, 0, 8, $3A, $21, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    db $F8, $F8, $3A, 1, $F8, 0, $3A, $21, 8, 8, $3A, 1, 8, $10, $3A, $21
    db 8, $F8, $3A, 1, 8, 0, $3A, $21, $F8, 8, $3A, 1, $F8, $10, $3A, $21
    db $F8, $F8, $10, 2, $F8, 0, $12, 2, $F8, 8, $12, $22, $F8, $10, $10, $22
    db 8, $F8, $10, $42, 8, 0, $12, $42, 8, 8, $12, $62, 8, $10, $10, $62
    db $21, $30, $C4, 9, $7E, $E6, $80, $28, 3, $C3, $8D, $3A

label_D524::
    ld   hl, data_C480
    add  hl, bc
    ld   a, [hl]
    and  a
    jp   z, label_3F50
    push af
    ld   hl, data_C4A0
    add  hl, bc
    ld   a, [hl]
    ld   hl, data_D488
    and  a
    jr   z, label_D53C
    ld   hl, data_D4C8

label_D53C::
    pop  af
    cp   $20
    jr   nc, label_D56F
    rla
    and  $30
    ld   e, a
    ld   d, b
    add  hl, de
    cp   $30
    jr   nz, label_D555
    push hl
    ld   hl, $C4A0
    add  hl, bc
    ld   a, [hl]
    pop  hl
    and  a
    jr   nz, label_D55C

label_D555::
    ld   c, $04
    call label_3CE6
    jr   label_D568

label_D55C::
    ld   c, $08
    call label_3CE6
    ld   a, $04
    call label_3DA0
    jr   label_D568

label_D568::
    call label_FF78
    call label_FFA9
    ret

label_D56F::
    call label_3A81
    call label_FF7E
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_D599
    ld   hl, $C480
    add  hl, bc
    ld   [hl], $1F
    ld   a, [$DC0F]
    and  a
    jr   nz, label_D594
    ld   a, [$D47C]
    cp   $01
    jr   nz, label_D594
    ld   a, $12
    ld   [$FFF3], a

label_D594::
    ld   hl, $FFF4
    ld   [hl], $13

label_D599::
    call label_FFA9

data_D59C::     db $C9, $2E, $2E, $2D, $2D, $37, $2D, $FF, $FF, $2F, $37, $38, $2E, $2F

data_D5AA::     db $2F, 3, 1, 1, 0, 3, 3, 3, 3, 1, 0, 0, 0, 3

data_D5B8::     db 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, $2E
                db $2D, $38, $2F, $2E, $2D, $38, $37

label_DC5F::
    ld   a, [$FFEB]
    cp   $23
    jr   nz, label_D5E2
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_D5E2
    ld   a, $31
    jp   label_D670

label_D5E2::
    ld   hl, $C4E0
    add  hl, bc
    ld   a, [hl]
    cp   $FF
    ret  z
    and  a
    jp   nz, label_D670
    ld   a, [$D471]
    inc  a
    ld   [$D471], a
    cp   $0C
    jr   c, label_D60F
    xor  a

label_D5FA::
    ld   [$D471], a
    ld   a, [$C1BE]
    ld   hl, $D47C
    or   [hl]
    ld   hl, $FFF9
    or   [hl]
    jr   nz, label_D60F
    ld   a, $34
    jp   label_D670

label_D60F::
    ld   hl, $C4D0
    add  hl, bc
    ld   d, b
    ld   e, [hl]
    ld   hl, data_C826
    add  hl, de
    ld   a, [hl]
    and  a
    ret  z
    ld   e, a
    ld   d, $1E
    ld   a, [$DB5B]
    cp   $07
    jr   c, label_D62E
    ld   d, $23
    cp   $0B
    jr   c, label_D62E
    ld   d, $28

label_D62E::
    ld   hl, data_D415
    inc  [hl]
    ld   a, [hl]
    cp   d
    jr   c, label_D648
    ld   [hl], b
    ld   a, [$C1BE]
    ld   hl, $FFF9
    or   [hl]
    ld   hl, data_D47C
    or   [hl]
    jr   nz, label_D648
    ld   a, $33
    jr   label_D670

label_D648::
    ld   d, b
    ld   hl, data_D5AA
    ld   a, [$C163]
    and  a
    jr   z, label_D655
    ld   hl, data_D5B8

label_D655::
    add  hl, de
    call label_280D
    and  [hl]
    ret  nz
    ld   hl, data_D59C
    add  hl, de
    ld   a, [hl]
    cp   $FF
    jr   nz, label_D670
    call label_280D
    and  $07
    ld   e, a
    ld   d, b
    ld   hl, data_D5C7
    add  hl, de
    ld   a, [hl]

label_D670::
    call label_E4CA
    ret  c
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C2B0
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD7]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   hl, $C450
    add  hl, de
    ld   [hl], $80
    ld   hl, $C2F0
    add  hl, de
    ld   [hl], $18
    ld   hl, $C480
    add  hl, de
    ld   [hl], $03
    ld   a, [$FFF9]
    and  a
    jr   nz, label_D6D9
    ld   hl, $C3A0
    add  hl, de
    ld   a, [hl]
    cp   $30
    jr   nz, label_D6B8
    ld   a, [$FFEB]
    cp   $88
    jr   nz, label_D6B8
    ld   hl, $C3B0
    add  hl, de
    ld   [hl], $03

label_D6B8::
    cp   $3C
    jr   nz, label_D6D1
    ld   a, [$FFF6]
    cp   $58
    jr   z, label_D6C6
    cp   $5A
    jr   nz, label_D6D1

label_D6C6::
    push bc
    push de
    ld   c, e
    ld   b, d
    ld   a, $10
    call label_FEC7
    pop  de
    pop  bc

label_D6D1::
    ld   hl, $C320
    add  hl, de
    ld   [hl], $18
    jr   label_D6DF

label_D6D9::
    ld   hl, $C250
    add  hl, de
    ld   [hl], $EC

label_D6DF::
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C310
    add  hl, de
    ld   [hl], a
    ret

label_D6EA::
    ld   bc, data_808
    db   $10 ; Undefined instruction
    inc  b
    inc  b

label_D6F1::
    ld   a, [bc]
    scf
    scf
    scf
    ld   bc, data_3939
    add  hl, sp
    ld   bc, data_3B3B
    dec  sp
    ld   bc, data_3D3D
    dec  a

label_D701::
    ld   bc, data_1010
    ld   [$F000], sp
    ld   a, [$FFF8]
    nop
    nop
    nop
    nop
    nop
    rst  $38
    rst  $38
    rst  $38

label_D711::
    rst  $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld   [$0000], sp
    nop
    ld   [$000E], sp
    nop
    ld   [$000E], sp
    nop
    ld   [$000E], sp
    nop
    nop
    ld   c, $F0
    db   $EB ; Undefined instruction
    ld   [$C5A8], a
    cp   $02
    jr   nz, label_D745
    ld   hl, $C420
    add  hl, bc
    ld   [hl], b
    call label_E711
    jr   label_D748

label_D745::
    call label_3A81

label_D748::
    ld   hl, $C490
    add  hl, bc
    ld   a, [hl]
    ld   e, a
    ld   d, b
    cp   $04
    jr   z, label_D789
    ld   a, [$C15D]
    ld   [$FF9E], a
    push hl
    call label_C05
    pop  hl
    and  a
    jr   nz, label_D789
    inc  [hl]
    ld   hl, data_D6EA
    ld   a, [$FFEB]
    cp   $02
    jr   z, label_D77F
    ld   a, [$DB43]
    cp   $02
    jr   nc, label_D77F
    ld   a, [$DC0F]
    and  $01
    jr   nz, label_D77F
    ld   a, [$D47C]
    cp   $01
    jr   nz, label_D782

label_D77F::
    ld   hl, data_D6EE

label_D782::
    add  hl, de
    ld   a, [hl]
    ld   hl, $C2E0
    add  hl, bc
    ld   [hl], a

label_D789::
    ld   a, e
    cp   $00
    jr   nz, label_D78F
    inc  e

label_D78F::
    call label_D795
    jp   label_D7E6

label_D795::
    ld   a, [$FF9E]
    sla  a
    sla  a
    add  a, e
    ld   e, a
    ld   d, $00
    ld   hl, data_D6F1
    add  hl, de
    ld   a, [hl]
    ld   [$C15C], a
    ld   hl, data_D701
    add  hl, de
    ld   a, [hl]
    ld   hl, $FF98
    add  a, [hl]
    ld   hl, $C200
    add  hl, bc
    ld   [hl], a
    ld   hl, data_D711
    add  hl, de
    ld   a, [hl]
    ld   hl, $FF99
    add  a, [hl]
    ld   hl, $C13B
    add  a, [hl]
    ld   hl, $C210
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFF9]
    and  a
    jr   z, label_D7D7
    push hl
    ld   hl, data_D721
    add  hl, de
    ld   e, [hl]
    pop  hl
    ld   a, [hl]
    sub  a, e
    ld   [hl], a
    ret

label_D7D7::
    ld   hl, data_D721
    add  hl, de
    ld   a, [hl]
    ld   hl, $FFA2
    add  a, [hl]
    ld   hl, $C310
    add  hl, bc
    ld   [hl], a
    ret

label_D7E6::
    jp   label_397B

label_D7E9::
    ld   de, data_D7FB
    ld   a, [$DB95]
    cp   $01
    jr   z, label_D7F7
    ld   a, $30
    ld   [$FFF5], a

label_D7F7::
    call label_D83C
    ret

data_D7FB::
    jr   nc, label_D7FF
    jr   nc, label_D821

label_D7FF::
    ldd  [hl], a
    ld   [bc], a
    ldd  [hl], a
    ldi  [hl], a
    ;jr   nc, label_D847
    ;jr   nc, label_D869
    ldd  [hl], a
    ld   b, d
    ldd  [hl], a
    ld   h, d
    inc  [hl]
    ld   [bc], a
    ld   [hl], $02
    ;jr   c, label_D813
    db   $3A ; ldd  a, [hl]
    ld   [bc], a

label_D813::
    ld   [hl], $22
    inc  [hl]
    ldi  [hl], a
    db   $3A ; ldd  a, [hl]
    ldi  [hl], a
    ;jr   c, label_D83D

label_D81B::
    ld   [$00F8], sp
    nop

label_D81F::
    nop
    nop

label_D821::
    ld    hl, sp+$08

label_D823::
    ld   b, $04
    ld   [bc], a
    nop
    ld   a, [$FFF7]
    cp   $15
    jr   nz, label_D835
    ld   a, [$DB56]
    cp   $80
    jp   nz, label_3F8D

label_D835::
    ld   a, c
    ld   [$D153], a
    ld   de, data_D917

label_D83C::
    call label_3BC0
    call label_FF78
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]

label_D847::
    and  a
    jr   z, label_D858
    ld   hl, $C290
    add  hl, bc
    ld   a, $01
    ld   [hl], a
    ld   [$FFF0], a
    call label_C05
    ld   [hl], $40

label_D858::
    call label_FFA9
    call label_EE28
    ld   a, [$FFF0]
    and  a
    jr   z, label_D8D7
    call label_C05
    jr   z, label_D896
    cp   $0A
    jr   nz, label_D889
    call label_C00
    jr   nz, label_D889
    call label_FEFE
    ld   hl, $C380
    add  hl, bc
    ld   a, e
    cp   [hl]
    jr   nz, label_D889
    ld   a, [$FFEB]
    cp   $24
    jr   z, label_D889
    cp   $09
    jr   z, label_D88D
    call label_D947

label_D889::
    call label_F893
    ret

label_D88D::
    ld   a, [$DB95]
    cp   $01
    ret  z
    jp   label_D998

label_D896::
    call label_280D
    and  $1F
    or   $20
    ld   [hl], a
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $00
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    inc  a
    and  $03
    ld   [hl], a
    cp   $00
    jr   nz, label_D8B6
    call label_FEFE
    jr   label_D8B9

label_D8B6::
    call label_280D

label_D8B9::
    and  $03
    ld   hl, $C380
    add  hl, bc
    ld   [hl], a
    ld   e, a
    ld   d, b
    ld   hl, data_D81B
    add  hl, de
    ld   a, [hl]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   hl, data_D81F
    add  hl, de
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    ret

label_D8D7::
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  $0F
    jr   nz, label_D8E5
    call label_C05
    jr   nz, label_D8F6

label_D8E5::
    call label_280D
    and  $0F
    or   $10
    ld   [hl], a
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $01
    call label_3D7F

label_D8F6::
    call label_FF25
    call label_F893

label_D8FC::
    ld   hl, $C380
    add  hl, bc
    ld   e, [hl]
    ld   d, b
    ld   hl, data_D823
    add  hl, de
    push hl
    ld   hl, $C3D0
    add  hl, bc
    inc  [hl]
    ld   a, [hl]
    rra
    rra
    rra
    pop  hl
    and  $01
    or   [hl]
    jp   label_3B0C

label_D917::
    ld   h, b
    inc  bc
    ld   h, d
    inc  bc
    ld   h, d
    inc  hl
    ld   h, b
    inc  hl
    ld   h, h
    inc  bc

label_D921::
    ld   h, [hl]
    inc  bc
    ld   h, [hl]
    inc  hl
    ld   h, h
    inc  hl
    ld   l, b
    inc  bc
    ld   l, d
    inc  bc
    ld   l, h
    inc  bc
    ld   l, [hl]
    inc  bc
    ld   l, d
    inc  hl
    ld   l, b
    inc  hl
    ld   l, [hl]
    inc  hl
    ld   l, h
    inc  hl

label_D937::
    ld   [label_4F8], sp
    db   $FC ; Undefined instruction

label_D93B::
    db   $FC ; Undefined instruction
    db   $FC ; Undefined instruction
    ld    hl, sp+$00

label_D93F::
    jr   nz, label_D921
    nop
    nop

label_D943::
    nop
    nop
    ld   [rNR41], a

label_D947::
    ld   a, $0C
    call label_E4CA
    jr   c, label_D98B
    push bc
    ld   a, [$FFD9]
    ld   c, a
    ld   hl, data_D937
    add  hl, bc
    ld   a, [$FFD7]
    add  a, [hl]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   hl, data_D93B
    add  hl, bc
    ld   a, [$FFD8]
    add  a, [hl]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   hl, data_D93F
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C240
    add  hl, de
    ld   [hl], a

label_D974::
    ld   hl, data_D943
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C250
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD9]
    ld   hl, $C3B0
    add  hl, de
    ld   [hl], a
    ld   hl, $C380
    add  hl, de
    ld   [hl], a
    pop  bc

label_D98B::
    ret

label_D98C::
    ld   [$00F8], sp
    nop
    ld    hl, sp+$08

label_D992::
    jr   nz, label_D974

label_D994::
    nop
    nop
    ld   [rNR41], a

label_D998::
    ld   a, $0A
    call label_E4CA
    jr   c, label_D9D6
    push bc
    ld   a, [$FFD9]
    ld   hl, $C380
    add  hl, de
    ld   [hl], a
    ld   c, a
    ld   hl, data_D98C
    add  hl, bc
    ld   a, [$FFD7]
    add  a, [hl]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   hl, data_D98E
    add  hl, bc
    ld   a, [$FFD8]
    add  a, [hl]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   hl, data_D992
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C240
    add  hl, de
    ld   [hl], a
    ld   hl, data_D994
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C250
    add  hl, de
    ld   [hl], a
    pop  bc
    and  a

label_D9D6::
    ret
    ret

label_D9D8::
    xor  d
    inc  d
    xor  d
    inc  [hl]
    ld   de, data_D9D8
    call label_3BC0
    call label_C05
    jp   z, label_E0AA
    dec  a
    jr   nz, label_DA17
    ld   a, $18
    ld   [$D368], a
    ld   hl, $DB5B
    inc  [hl]
    ld   hl, $DB93
    ld   [hl], $FF
    call label_D134
    ld   a, [hl]
    or   $20
    ld   [hl], a
    ld   [$FFF8], a
    ld   a, [$FFF7]
    ld   hl, $DA2E
    cp   $06
    jr   z, label_DA12
    cp   $03
    jr   nz, label_DA14
    ld   hl, $D966

label_DA12::
    set  5, [hl]

label_DA14::
    jp   label_3F8D

label_DA17::
    ld   a, [$FF98]
    ld   hl, $C200
    add  hl, bc
    ld   [hl], a
    ld   a, [$FF99]
    ld   hl, $C210
    add  hl, bc
    sub  a, $0C
    ld   [hl], a
    ld   a, [$FFA2]
    ld   hl, $C310
    add  hl, bc
    ld   [hl], a
    ld   a, $6C
    ld   [$FF9D], a
    ld   a, $03
    ld   [$FF9E], a
    xor  a
    ld   [$C137], a
    ld   [$C16A], a
    ld   [$C122], a
    ld   [$C121], a
    ld   hl, $C470
    add  hl, bc
    ld   [hl], a
    ld   a, $02
    ld   [$FFA1], a
    ret

label_DA4D::
    xor  h
    ld   [bc], a
    xor  h
    ldi  [hl], a
    ld   a, [$FFF8]
    and  $10
    jp   nz, label_3F8D
    ld   a, [$FFF0]
    rst  0
    ld   d, d
    ld   e, e
    ld   l, l
    ld   e, d
    ld   a, h
    ld   e, d
    add  a, e
    ld   e, d
    adc  a, d
    ld   e, d
    sbc  a, b
    ld   e, d
    cp   e
    ld   e, d
    ld   a, [$FF5A]
    dec  b
    ld   e, e
    call label_DA17
    call label_C05
    ret  nz
    ld   a, $01
    ld   [$C167], a
    jp   label_3B12
    ld   a, $03
    ld   [$FF90], a
    jp   label_3B12
    ld   a, $04
    ld   [$FF90], a
    jp   label_3B12
    ld   a, $4F
    call label_2385
    call label_3B12
    ld   a, $01
    ld   [$C1AB], a
    ret
    call label_DA17
    ld   de, data_DA4D
    call label_3BC0
    call label_DB2B
    ld   hl, $C3D0
    add  hl, bc
    inc  [hl]
    ld   a, [hl]
    cp   $A8
    jp   z, label_3B12
    cp   $38
    jr   nz, label_DABA
    ld   a, [$DB5C]
    inc  a
    ld   [$DB5C], a

label_DABA::
    ret
    call label_DA17
    ld   de, data_DA4D
    call label_3BC0
    xor  a
    ld   [$C1AB], a
    call label_DB2B
    ld   a, [$C19F]
    and  a
    ret  nz
    ld   a, [$DB5C]
    cp   $04
    jr   nz, label_DAED
    ld   a, $19
    ld   [$FFF2], a
    xor  a
    ld   [$DB5C], a
    ld   hl, $DB93
    ld   [hl], $40
    ld   hl, $DB5B
    inc  [hl]
    ld   a, $50
    call label_2385

label_DAED::
    jp   label_3B12
    call label_DA17
    ld   de, data_DA4D
    call label_3BC0
    ld   a, [$C19F]
    and  a
    ret  nz
    ld   a, $05
    ld   [$FF90], a
    jp   label_3B12
    ld   a, $06
    ld   [$FF90], a
    call label_3F8D
    ld   a, $0D
    ld   [$FFA5], a
    xor  a
    ld   [$C167], a
    jp   label_D12A

label_DB17::
    sbc  a, d
    ld   [bc], a
    sbc  a, d
    ldi  [hl], a
    sbc  a, h
    ld   [bc], a
    sbc  a, d
    ldi  [hl], a
    sbc  a, [hl]
    ld   [bc], a
    sbc  a, d
    ldi  [hl], a
    sbc  a, [hl]
    ld   [bc], a
    sbc  a, h
    ldi  [hl], a
    sbc  a, [hl]
    ld   [bc], a
    sbc  a, [hl]
    ldi  [hl], a

label_DB2B::
    ld   a, [$C19F]
    and  a
    ret  z
    ld   a, [$C170]
    cp   $21
    ret  nc
    ld   a, [$C19F]
    and  $80
    ld   a, $23
    jr   z, label_DB41
    ld   a, $6B

label_DB41::
    ld   [$FFEC], a
    ld   a, [$DB5C]
    ld   [$FFF1], a
    ld   a, $8E
    ld   [$FFEE], a
    ld   de, data_DB17
    jp   label_3BC0
    ld   de, data_DA4D
    call label_3BC0
    jp   label_E0AA

label_DB5B::
    xor  [hl]
    inc  d
    ld   de, data_DB5B
    call label_3C77
    ;jr   label_DB7D

label_DB65::
    inc  d
    ld   [bc], a
    inc  d
    ldi  [hl], a
    inc  d
    inc  d
    inc  d
    inc  [hl]
    ld   de, data_DB65
    call label_3BC0
    ld   a, [$FFE7]
    rra
    rra
    rra
    and  $01
    call label_3B0C
    jp   label_E0AA
    
data_DB80::
    db $74, 0, $76, 0, $76, $20, $74, $20, $11, $80, $5B, $CD, $C0, $3B, $CD, $78
    db $7F, $CD, $AF, $62, $C9
    
data_DB95::
    db $86, $17, 
    
data_DB97::
    db $84, $17

label_DB99::
    ld   de, data_DB95
    ld   a, [$DB4E]
    and  a
    jr   nz, label_DBAC
    ld   a, [$FFF8]
    and  $10
    jp   nz, label_3F8D
    ld   de, data_DB97

label_DBAC::
    call label_3C77
    ld   a, [$FFF0]
    rst  0

label_DBB2::
    db $BA, $5B, $E4, $5B, 1, $5C, $F, $5C

label_DBBA::
    call label_C05
    jp   z, label_E0AA
    cp   $10
    jr   nz, label_DBCB
    dec  [hl]
    ld   a, $9B
    call label_2385
    xor  a

label_DBCB::
    dec  a
    jr   nz, label_DBE1
    ld   a, $31
    ld   [$D368], a
    ld   a, $05
    ld   [$FFB0], a
    ld   [$FFBF], a
    call label_BFB
    ld   [hl], $52
    call label_3B12

label_DBE1::
    jp   label_DA17
    call label_DA17
    call label_BFB
    ret  nz
    ld   a, $FF
    call label_3B0C
    call label_C05
    ld   [hl], $20
    ld   a, $20
    ld   [$C121], a
    ld   a, $03
    ld   [$FFF4], a
    jp   label_3B12
    call label_C05
    ret  nz
    ld   [hl], $20
    ld   a, $00
    call label_3B0C
    jp   label_3B12
    call label_DA17
    ld   a, $6B
    ld   [$FF9D], a
    ld   hl, $C200
    add  hl, bc
    ld   a, [$FF98]
    sub  a, $04
    ld   [hl], a
    call label_C05
    jr   nz, label_DC37
    ld   [$C167], a
    ld   d, $01
    call label_E472
    ld   a, $01
    ld   [$DB4E], a
    call label_D12A
    jp   label_3F8D

label_DC37::
    cp   $1A
    jr   nz, label_DC46
    ld   a, [$FFEF]
    sub  a, $0C
    call label_EC36
    ld   a, $07
    ld   [$FFF2], a

label_DC46::
    ret

label_DC47::
    adc  a, d
    inc  d

label_DC49::
    ld   a, [$FFF8]
    and  $10
    jp   nz, label_3F8D
    ld   de, data_DC47
    call label_3C77
    call label_C05
    jp   z, label_E0AA
    cp   $10
    jr   nz, label_DC67
    dec  [hl]
    ld   a, $93
    call label_2385
    xor  a

label_DC67::
    dec  a
    jr   nz, label_DC75
    ld   d, $06
    call label_E472
    call label_D12A
    jp   label_3F8D

label_DC75::
    jp   label_DA17

label_DC78::
    jp   z, label_C017
    rla
    jp   nz, label_C414
    rla
    add  a, $14
    jp   z, label_17
    and  e
    and  h
    and  l
    nop
    call label_DCEA
    jr   nc, label_DC99
    ld   hl, $D8CE
    set  4, [hl]
    ld   hl, $D9F8
    set  5, [hl]
    ret

label_DC99::
    ld   a, [$FFF6]
    cp   $80
    jp   z, label_DC49
    ld   de, data_DC78
    call label_3C77
    call label_C05
    jp   z, label_DCD6
    cp   $10
    jr   nz, label_DCCD
    dec  [hl]
    ld   a, [$FFF1]
    dec  a
    ld   e, a
    ld   d, b
    ld   hl, data_DC84
    add  hl, de
    ld   a, [hl]
    call label_2385
    ld   a, [$FFF1]
    dec  a
    ld   e, a
    ld   d, b
    ld   hl, $DB11
    add  hl, de
    ld   [hl], $01
    call label_D12A
    xor  a

label_DCCD::
    dec  a
    jr   nz, label_DCD3
    jp   label_3F8D

label_DCD3::
    jp   label_DA17

label_DCD6::
    call label_FF78
    call label_E2AF
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_DCE7
    call label_E2EB

label_DCE7::
    jp   label_E0B3

label_DCEA::
    ld   a, [$DBA5]
    and  a
    jr   nz, label_DD34
    ld   a, [$FFF6]
    cp   $CE
    jr   nz, label_DD34
    ld   a, [$FFEF]
    sub  a, $48
    add  a, $03
    cp   $06
    jr   nc, label_DD34
    ld   a, [$FFEE]
    sub  a, $50
    add  a, $03
    cp   $06
    jr   nc, label_DD34
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_DD34
    ld   hl, $C280
    add  hl, bc
    ld   a, [hl]
    cp   $05
    jr   nz, label_DD34
    ld   [hl], $02
    ld   hl, $C4B0
    add  hl, bc
    ld   [hl], $50
    ld   hl, $C4C0
    add  hl, bc
    ld   [hl], $48
    call label_C05
    ld   [hl], $2F
    ld   a, $18
    ld   [$FFF2], a
    scf
    ret

label_DD34::
    and  a
    ret

label_DD36::
    xor  b
    inc  d
    call label_E1DE
    call label_E08C
    ld   de, data_DD36
    call label_3C77
    jp   label_E0AA

label_DD47::
    ld   e, [hl]
    ld   [bc], a
    ld   e, [hl]
    ldi  [hl], a
    ld   hl, $DB4B
    ld   a, [$DB4C]
    or   [hl]
    jp   nz, label_3F8D
    ld   de, data_DD47
    call label_3BC0
    call label_C05
    jp   z, label_E0AA
    cp   $10
    jr   nz, label_DD6C
    dec  [hl]
    ld   a, $0F
    call label_2385
    xor  a

label_DD6C::
    dec  a
    jr   nz, label_DD80
    ld   a, $0A
    ld   [$FFA5], a
    ld   d, $0C
    call label_E472
    ld   a, $01
    ld   [$DB4B], a
    jp   label_3F8D

label_DD80::
    jp   label_DA17

label_DD83::
    ld   [hl], b
    ld   bc, data_172
    ld   [hl], h
    ld   bc, data_176
    ld   a, b
    ld   bc, data_17A
    ld   a, h
    ld   bc, data_17E
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    rst  0
    and  e
    ld   e, [hl]
    sub  a, e
    ld   e, [hl]
    reti
    ld   e, l

label_DD9F::
    db   $E4 ; Undefined instruction
    db   $E4 ; Undefined instruction
    db   $E4 ; Undefined instruction
    db   $E4 ; Undefined instruction
    sub  a, b
    sub  a, b
    sub  a, b
    sub  a, b
    ld   b, b
    ld   b, b
    ld   b, b
    ld   b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

label_DDBC::
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    inc  e
    ld   [label_808], sp
    ld   [label_404], sp
    inc  b
    inc  b
    nop
    nop
    nop
    nop
    nop
    call label_3E76
    ld   a, $01
    ld   [$C167], a
    call label_BFB
    jr   nz, label_DE29
    call label_3F8D
    xor  a
    ld   [$FF9D], a
    ld   a, [$D201]
    ld   e, a
    ld   d, b
    ld   hl, $C290
    add  hl, de
    inc  [hl]
    call label_C9E
    ld   a, [$FFF7]
    rst  0
    inc  c
    ld   e, [hl]
    ld   [de], a
    ld   e, [hl]
    ;jr   label_DE60
    add  hl, de
    ld   e, [hl]
    ld   e, $5E
    rra
    ld   e, [hl]
    inc  h

label_DE09::
    ld   e, [hl]
    ld   e, $5E
    ld   a, $80
    ld   [$DB56], a
    ret
    ld   a, $02
    ld   [$DB48], a
    ret
    ret
    ld   a, $02
    ld   [$DB79], a
    ret
    xor  a
    ld   [$DB74], a
    ret
    xor  a
    ld   [$DB7B], a
    ret

label_DE29::
    cp   $50
    jr   nc, label_DE8A
    ld   hl, $C2C0
    add  hl, bc
    ld   a, [hl]
    cp   $19
    jr   nc, label_DE8A
    ld   a, [$FFE7]
    and  $07
    jr   nz, label_DE5B
    ld   a, [hl]
    and  a
    jr   nz, label_DE45
    ld   a, $2C
    ld   [$FFF4], a
    xor  a

label_DE45::
    inc  [hl]
    cp   $18
    jr   nz, label_DE5B
    ld   a, $9F
    call label_E4CA
    ld   hl, $C2B0
    add  hl, de
    ld   [hl], $01
    ld   hl, $C2E0
    add  hl, de
    ld   [hl], $60

label_DE5B::
    ld   a, [$FFE7]
    and  $03
    ld   hl, $C2C0
    add  hl, bc
    add  a, [hl]
    ld   e, a
    ld   d, b
    ld   a, [$FFFE]
    and  a
    jr   z, label_DE76
    push bc
    push de
    ld   a, $03
    call label_978
    pop  de
    pop  bc
    jr   label_DE8A

label_DE76::
    ld   hl, data_DD9F
    add  hl, de
    ld   a, [hl]
    ld   [$DB97], a
    ld   hl, data_DDBC
    add  hl, de
    ld   a, [hl]
    ld   [$DB98], a
    xor  a
    ld   [$DB99], a

label_DE8A::
    ret

label_DE8B::
    ld   l, h
    nop
    rst  $38
    rst  $38
    ld   l, h
    nop
    ld   l, [hl]
    nop
    ld   de, data_DE8B
    call label_3BC0
    call label_FF25
    call label_C05
    jp   z, label_3F8D
    ret
    ld   a, [$FFF0]
    cp   $03
    jr   nc, label_DEAE
    ld   a, $03
    call label_AD2

label_DEAE::
    ld   a, c
    ld   [$D201], a
    ld   a, [$FFF8]
    and  $10
    jp   nz, label_3F8D
    ld   a, [$FFF7]
    and  $03
    ld   [$FFF1], a
    call label_394D
    ld   de, data_DD83
    call label_3BC0
    ld   a, [$FFF0]
    rst  0
    push de
    ld   e, [hl]
    inc  c
    ld   e, a
    inc  sp
    ld   e, a
    cp   h
    ld   e, a
    cp   a
    ld   e, a
    call label_C05
    jp   z, label_E0AA
    cp   $10
    jr   nz, label_DEFE
    dec  [hl]
    call label_3B12
    ld   a, [$FFF7]
    add  a, $00
    call label_2373
    ld   a, [$FFF7]
    ld   e, a
    ld   d, b
    ld   hl, $DB65
    add  hl, de
    ld   a, [hl]
    or   $02
    ld   [hl], a
    call label_D134
    ld   a, [hl]
    or   $10
    ld   [hl], a
    xor  a

label_DEFE::
    dec  a
    jr   nz, label_DF01

label_DF01::
    jp   label_DA17

label_DF04::
    ;jr   nz, label_DF2E
    add  hl, hl
    ld   a, [hli]
    dec  hl
    inc  l
    dec  l
    ld   l, $FA
    ld   l, c
    db   $D3 ; Undefined instruction
    and  a
    jr   nz, label_DF2C
    ld   a, [$C19F]
    and  a
    jr   nz, label_DF2C
    ld   a, [$FFF7]
    ld   e, a
    ld   d, b
    ld   hl, data_DF04
    add  hl, de
    ld   a, [hl]
    ld   [$D368], a
    call label_3B12
    call label_C05
    ld   [hl], $FF

label_DF2C::
    jp   label_DA17

label_DF2F::
    ld   a, [bc]
    ld   a, [$FC04]
    call label_C05
    jr   nz, label_DF5F
    ld   a, $2B
    ld   [$FFF2], a
    ld   a, $39
    call label_E4CA
    ld   a, [$FFD7]
    dec  a
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   hl, $C2B0
    add  hl, de
    ld   [hl], $02
    ld   hl, $C450
    add  hl, de
    ld   [hl], $80
    jp   label_3B12

label_DF5F::
    ld   hl, $C2D0
    add  hl, bc
    dec  [hl]
    ld   a, [hl]
    cp   $FF
    jr   nz, label_DFB9
    ld   [hl], $17
    ld   hl, $C440
    add  hl, bc
    inc  [hl]
    ld   a, [hl]
    and  $01
    ld   [$FFE8], a
    ld   a, $39
    call label_E4CA
    push bc
    ld   hl, $C2B0
    add  hl, de
    inc  [hl]
    ld   a, [$FFE8]
    ld   c, a
    ld   hl, data_DF2F
    add  hl, bc
    ld   a, [$FFD7]
    add  a, [hl]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   hl, data_DF31
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C240
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C210
    add  hl, de
    add  a, $F8
    ld   [hl], a
    ld   hl, $C250
    add  hl, de
    ld   [hl], $FD
    ld   hl, $C2E0
    add  hl, de
    ld   [hl], $38
    call label_280D
    and  $01
    ld   hl, $C3B0
    add  hl, de
    ld   [hl], a
    pop  bc

label_DFB9::
    jp   label_DA17
    jp   label_DA17
    ret

data_DFC0::
    db $80, $15

label_DFC2::
    call label_E1DE
    call label_E08C
    ld   de, data_DFC0
    call label_3C77
    jp   label_E0AA

data_DFD1::
    db $9E, $14, $FA, $4E, $DB, $FE, 2, $D2, $8D, $3F, $F0, $F8, $E6, $10, $C2, $8D
    db $3F, $F0, $F6, $FE, $E3, $20, 7, $F0, $F8, $E6, $40, $CA, $8D, $3F

label_DFEF::
    call label_E1DE
    ld   de, data_DFD1
    call label_3C77
    jp   label_E0AA

data_DFFB::
    db $CA, $14, $F0, $F8, $E6, $10

label_E001::
    jp   label_3F8D
    call label_E1DE
    ld   de, data_DFFB
    call label_3C77
    call label_C05
    jp   z, label_E0AA
    cp   $10
    jr   nz, label_E04C
    dec  [hl]
    ld   a, [$DBA5]
    and  a
    jr   nz, label_E029
    ld   a, [$FFF6]
    cp   $C6
    jr   nz, label_E029
    ld   a, $05
    ld   [$DB15], a

label_E029::
    ld   hl, $DB15
    call label_E373
    call label_D12A
    ld   hl, $FFF8
    res  4, [hl]
    ld   e, $A2
    ld   a, [$DB15]
    cp   $06
    jr   z, label_E047
    ld   e, $E8
    cp   $05
    jr   nz, label_E047
    inc  e

label_E047::
    ld   a, e
    call label_2385
    xor  a

label_E04C::
    dec  a
    jr   nz, label_E052
    jp   label_3F8D

label_E052::
    jp   label_DA17

label_E055::
    adc  a, [hl]
    ld   d, $FA
    and  l
    db   $DB
    and  a
    jr   z, label_E063
    ld   a, [$FFF7]
    cp   $FF
    jr   z, label_E06A

label_E063::
    ld   a, [$DB4B]
    and  a
    jp   nz, label_3F8D

label_E06A::
    call label_E1DE
    call label_E08C
    ld   de, label_E055
    call label_3C77
    jp   label_E0AA

label_E079::
    ld   a, [hli]
    ld   b, c
    ld   a, [hli]
    ld   h, c
    call label_E1DE
    call label_E08C
    ld   de, label_E079
    call label_3BC0
    jp   label_E0AA

label_E08C::
    call label_BFB
    cp   $1C
    ret  nc
    and  a
    jp   z, label_3F8D
    and  $01
    dec  a
    jp   label_3B0C

label_E09C::
    and  [hl]
    dec  d
    call label_E1DE
    call label_E08C
    ld   de, label_E09C
    call label_3C77

label_E0AA::
    call label_FF78
    call label_E2AF
    call label_E2EB

label_E0B3::
    call label_FF25
    call label_EB7B
    call label_F893
    ld   a, [$FFF9]
    and  a
    jr   z, label_E0E3
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  $08
    jp   z, label_E156
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    and  $F0
    add  a, $05
    ld   [hl], a
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    cpl
    sra  a
    cp   $F8
    jr   c, label_E112
    jr   label_E103

label_E0E3::
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    and  $80
    jr   z, label_E156
    xor  a
    ld   [hl], a
    ld   hl, $C470
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C320
    add  hl, bc
    cp   $02
    jr   z, label_E103
    ld   a, [hl]
    sra  a
    cpl
    cp   $07
    jr   nc, label_E112

label_E103::
    xor  a
    push hl
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    pop  hl
    jr   label_E136

label_E112::
    push af
    push hl
    ld   a, [$FFEB]
    cp   $30
    jr   nz, label_E120
    ld   a, $17
    ld   [$FFF4], a
    jr   label_E134

label_E120::
    cp   $02
    jr   nz, label_E134
    ld   hl, $C280
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_E134
    cp   $02
    jr   z, label_E134
    ld   a, $09

label_E132::
    ld   [$FFF2], a

label_E134::
    pop  hl
    pop  af

label_E136::
    ld   [hl], a
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    sra  a
    cp   $FF
    jr   nz, label_E143
    xor  a

label_E143::
    ld   [hl], a
    ld   a, [$FFF9]
    and  a
    jr   nz, label_E156
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    sra  a
    cp   $FF
    jr   nz, label_E155
    xor  a

label_E155::
    ld   [hl], a

label_E156::
    ret

label_E157::
    db $20, $21, $20, 1, $CD, $DE, $61, $CD, $8C, $60, $11, $57, $61, $CD, $77, $3C
    db $CD, $78, $7F, $CD, $AF, $62, $CD, $EB, $62, $21, $40, $C2, 9, $7E, 7, $E6
    db 1, $CD, $C, $3B, $CD, $25, $7F, $CD, $C0, $61, $CD, $93, $78, $CD, $D9, $7E
    db $7A, $CB, $7F, $28, 0

label_E18C::
    cp   $20
    jr   c, label_E19C
    call label_FEE9
    ld   a, d
    bit  7, a
    jr   z, label_E198

label_E198::
    cp   $20
    jr   nc, label_E1BB

label_E19C::
    call label_C05
    ret  nz
    ld   [hl], $30
    call label_280D
    and  $0F
    sub  a, $08
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    call label_280D
    and  $0F
    sub  a, $08
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    ret

label_E1BB::
    ld   a, $09
    jp   label_FEC7

label_E1C0::
    ld   a, [$FFE7]
    and  $03
    jr   nz, label_E1DD
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    cp   $10
    jr   z, label_E1DD
    bit  7, a
    jr   z, label_E1D6
    inc  [hl]
    jr   label_E1DD

label_E1D6::
    cp   $10
    jr   nc, label_E1DC
    inc  [hl]
    ret

label_E1DC::
    dec  [hl]

label_E1DD::
    ret

label_E1DE::
    ld   hl, $C2D0
    add  hl, bc
    ld   a, [hl]
    and  a
    jp   z, label_E29D
    ld   a, [$C124]
    and  a
    jp   nz, label_E29C
    ld   a, [hl]
    cp   $02
    jr   nz, label_E243
    ld   a, [$FFEB]
    cp   $3D
    jr   z, label_E200
    ld   a, [$DBA5]
    and  a
    jp   nz, label_E29C

label_E200::
    call label_FE0E
    ld   a, [$FFEB]
    cp   $2D
    jr   z, label_E227
    cp   $3D
    jr   nz, label_E22F
    ld   a, [$FFF6]
    cp   $DA
    jr   z, label_E22F
    cp   $A5
    jr   z, label_E22F
    cp   $74
    jr   z, label_E22F
    cp   $3A
    jr   z, label_E22F
    cp   $A8
    jr   z, label_E22F
    cp   $B2
    jr   z, label_E22F

label_E227::
    ld   a, [$FFAF]
    cp   $04
    jr   z, label_E23B
    jr   label_E235

label_E22F::
    ld   hl, $C440
    add  hl, bc
    ld   [hl], $01

label_E235::
    ld   a, [$FFAF]
    cp   $CC
    jr   nz, label_E29C

label_E23B::
    ld   hl, $C430
    add  hl, bc
    ld   [hl], $0A
    jr   label_E26B

label_E243::
    ld   a, [$C157]
    and  a
    jr   z, label_E29C
    ld   a, [$C178]
    and  a
    jr   z, label_E29C
    ld   a, [$FFEE]
    add  a, $08
    ld   hl, $C179
    sub  a, [hl]
    add  a, $10
    cp   $20
    jr   nc, label_E29C
    ld   a, [$FFEF]
    add  a, $08
    ld   hl, $C17A
    sub  a, [hl]
    add  a, $10
    cp   $20
    jr   nc, label_E29C

label_E26B::
    ld   hl, $C2D0
    add  hl, bc
    ld   [hl], b
    ld   hl, $C440
    add  hl, bc
    ld   [hl], b
    call label_C00
    ld   [hl], $18
    ld   a, $0C
    call label_FE45
    ld   a, [$FFD8]
    cpl
    inc  a
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFD7]
    cpl
    inc  a
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    ld   hl, $C320
    add  hl, bc
    ld   [hl], $20
    call label_BFB
    ld   [hl], $80

label_E29C::
    pop  af

label_E29D::
    ret

data_E29E::
    db 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0
    db 0

label_E2AF::
    ld   hl, $C390
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_E2EA
    pop  de
    dec  a
    ld   e, a
    ld   d, b
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    and  a
    jr   z, label_E311
    ld   hl, $C3A0
    add  hl, de
    ld   a, [hl]
    cp   $01
    jr   z, label_E2D0
    cp   $03
    jr   nz, label_E311

label_E2D0::
    ld   hl, $C200
    add  hl, de
    ld   a, [hl]
    ld   hl, $C200
    add  hl, bc
    ld   [hl], a
    ld   hl, $C210
    add  hl, de
    ld   a, [hl]
    ld   hl, $C210
    add  hl, bc
    ld   [hl], a
    xor  a
    ld   hl, $C310
    add  hl, bc
    ld   [hl], a

label_E2EA::
    ret

label_E2EB::
    call label_C00
    jr   nz, label_E2EA
    ld   a, [$FFEB]
    sub  a, $2D
    ld   e, a
    ld   d, b
    ld   hl, data_E29E
    add  hl, de
    ld   a, [hl]
    and  a
    jr   z, label_E30C
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    push af
    push hl
    ld   [hl], b
    call label_EE2B
    pop  hl
    pop  af
    ld   [hl], a

label_E30C::
    call label_EC6B
    jr   nc, label_E2EA

label_E311::
    ld   hl, $C460
    add  hl, bc
    ld   a, [hl]
    call label_3F78
    ld   a, [$FFEB]
    sub  a, $2D
    cp   $02
    jr   nc, label_E328
    ld   hl, $FFF2
    ld   [hl], $14
    jr   label_E32D

label_E328::
    ld   hl, $FFF3
    ld   [hl], $01

label_E32D::
    rst  0
    or   a
    ld   h, h
    cp   a
    ld   h, h
    add  a, $64
    adc  a, a
    ld   h, h
    ld   c, l
    ld   h, h
    ld   c, h
    ld   h, h
    db   $FC ; Undefined instruction
    ld   h, e
    or   $63
    db   $E4 ; Undefined instruction
    ld   h, e
    or   b
    ld   h, e
    ld   a, l
    ld   h, e
    add  a, l
    ld   h, e
    sub  a, d
    ld   h, e
    rst  0
    ld   h, e
    ld   d, b
    ld   h, e
    rst  0
    ld   h, e
    ld   l, b
    ld   h, e
    ld   a, $0B
    ld   [$FFA5], a
    ld   d, $0C
    call label_E472
    ld   hl, $DB76
    ld   de, $DB4C

label_E35F::
    ld   a, [de]
    cp   [hl]
    jr   nc, label_E367
    add  a, $01
    daa
    ld   [de], a

label_E367::
    ret
    ld   a, $EF
    call label_2385

label_E36D::
    call label_D12A
    ld   hl, $DB0F

label_E373::
    ld   a, [hl]
    cp   $99
    jr   z, label_E37C
    add  a, $01
    daa
    ld   [hl], a

label_E37C::
    ret
    ld   hl, $DB78
    ld   de, $DB45
    jr   label_E35F
    ld   d, $02
    call label_E472
    ld   hl, $DB77
    ld   de, $DB4D
    jr   label_E35F
    xor  a
    ld   [$D46C], a
    ld   [$C3CB], a
    ld   a, $1B
    ld   [$D368], a
    ld   [$C167], a

label_E3A1::
    ld   a, [$FF98]
    push af
    add  a, $04
    ld   [$FF98], a
    call label_E41E
    pop  af
    ld   [$FF98], a
    jr   label_E3D2
    xor  a
    ld   [$D47C], a
    ld   a, $25
    ld   [$D368], a
    ld   [$D46C], a
    call label_C05
    ld   a, $70
    ld   [hl], a
    ld   [$C111], a
    jr   label_E3DB
    ld   a, $10
    ld   [$D368], a
    jr   label_E3D2
    ld   a, $01
    ld   [$FFF2], a

label_E3D2::
    call label_C05
    ld   a, $68
    ld   [hl], a
    ld   [$C111], a

label_E3DB::
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $05
    jp   label_CAF
    ld   a, $10
    ld   [$D368], a
    call label_3B12
    jr   label_E3DB

data_E3EE::
    db $E4, $14, $E4, $14

data_E3F2::
    db $D4, $D4, 4, 4, $3E, 2, $1E, 5, $18, 4, $3E, 1, $1E, 1, $EA, $7C
    db $D4, $7B, $EA, $A9, $C1, $3E, $30, $EA, $AA, $C1, $EA, $11, $C1, $AF, $EA, $7A
    db $D4, $3E, $27, $EA, $68, $D3, $3E, $49, $E0, $BD, $E0, $BF

label_E41E::
    ld   e, $03
    ld   d, $00

label_E422::
    push de
    ld   hl, data_E3EE
    add  hl, de
    ld   a, [$FF98]
    add  a, [hl]
    ld   [$FFD7], a
    ld   hl, data_E3F2
    add  hl, de
    ld   a, [$FF99]
    add  a, [hl]
    ld   [$FFD8], a
    ld   a, $07
    call label_CC7
    ld   hl, $C520
    add  hl, de
    ld   [hl], $22
    ld   hl, $C590
    add  hl, de
    pop  de
    ld   [hl], e
    dec  e
    ld   a, e
    cp   $FF
    jr   nz, label_E422
    ret
    ld   a, [$DB4E]
    and  a
    jr   nz, label_E468
    ld   a, $0F
    ld   [$D368], a
    ld   [$C167], a
    call label_E3A1
    call label_C05
    ld   [hl], $A0
    ld   a, $FF
    ld   [$FFBF], a
    ret

label_E468::
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    ld   [$DB44], a
    ld   d, $04

label_E472::
    ld   hl, $DB00
    ld   e, $0C

label_E477::
    ld   a, [hli]
    cp   d
    jr   z, label_E48E
    dec  e
    jr   nz, label_E477
    ld   hl, $DB00

label_E481::
    ld   a, [hl]
    and  a
    jr   nz, label_E487
    ld   [hl], d
    ret

label_E487::
    inc  hl
    inc  e
    ld   a, e
    cp   $0C
    jr   nz, label_E481

label_E48E::
    ret
    ld   a, [$FFF6]
    cp   $80
    jr   z, label_E4A5
    ld   a, [$FFF6]
    cp   $7C
    jr   nz, label_E4A0
    ld   hl, $D969
    set  4, [hl]

label_E4A0::
    ld   a, [$FFF1]
    and  a
    jr   z, label_E4AD

label_E4A5::
    ld   a, $10
    ld   [$D368], a
    jp   label_E3D2

label_E4AD::
    call label_D12A
    ld   hl, $DBD0
    inc  [hl]
    jp   label_2802
    ld   a, $08

label_E4B9::
    ld   hl, $DB93

label_E4BC::
    add  a, [hl]
    ld   [hl], a
    ret
    ld   a, $01
    ld   hl, $DB90
    jr   label_E4BC
    ld   a, $30
    jr   label_E4B9

label_E4CA::
    ld   e, $0F
    push af
    ld   d, $00

label_E4CF::
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    and  a
    jr   z, label_E4E0
    dec  e
    ld   a, e
    cp   $FF
    jr   nz, label_E4CF
    pop  af
    scf
    ret

label_E4E0::
    ld   [hl], $05
    pop  af
    ld   hl, $C3A0
    add  hl, de
    ld   [hl], a
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    ld   [$FFD7], a
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    ld   [$FFD8], a
    ld   hl, $C380
    add  hl, bc
    ld   a, [hl]
    ld   [$FFD9], a
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    ld   [$FFDA], a
    call label_E524
    ld   hl, $C410
    add  hl, de
    ld   [hl], $01
    ld   hl, $C220
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C220
    add  hl, de
    ld   [hl], a
    ld   hl, $C230
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C230
    add  hl, de
    ld   [hl], a
    scf
    ccf
    ret

label_E524::
    push bc
    push de
    ld   c, e
    ld   b, d
    call label_C85B
    pop  de
    pop  bc
    ret

data_E52E::
    db $80, $15

data_E530::
    db $F8, $F8, $32, 1, $F8, 0, $32, $21, $F8, 8, $32, 1, $F8, $10, $32, $21
    db 8, $F8, $32, 1, 8, 0, $32, $21, 8, 8, $32, 1, 8, $10, $32, $21
    db $F8, $F8, $10, 2, $F8, 0, $12, 2, $F8, 8, $12, $22, $F8, $10, $10, $22
    db 8, $F8, $10, $42, 8, 0, $12, $42, 8, 8, $12, $62, 8, $10, $10, $62
    db $FC, $FC, $30, $11, $FC, 4, $30, $31, $FC, 4, $30, $11, $FC, $C, $30, $31
    db 4, $FC, $30, $11, 4

data_E585::
    db 4, $30, $31, 4, 4, $30, $11, 4

data_E58D::
    db $C, $30, $31, $FC, $FC, $30, 1, $FC

data_E595::
    db 4, $30, $21, $FC, 4, $30, 1, $FC

data_E59D::
    db $C, $30, $21, 4, $FC, $30, 1, 4

data_E5A5::
    db 4, $30, $21, 4

data_E5A9::
    db 4, $30, 1, 4

data_E5AD::
    db $C, $30, $21

label_E5B0::
    ld   hl, $C3B0
    add  hl, bc
    ld   a, [hl]
    sla  a
    sla  a
    sla  a
    sla  a
    sla  a
    ld   e, a
    ld   d, b
    ld   hl, $6530
    add  hl, de
    ld   c, 8
    jp   label_3CE6

data_E5CA::
    db 0, 0, 0, 0, 0, 0, 0

data_E5D1::
    db 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3
    db 3

label_E5E2::
    call label_E650
    call label_FF78
    call label_C05
    and  a
    jp   nz, label_E5F2
    jp   label_3F8D

label_E5F2::
    ld   e, a
    ld   hl, $C440
    add  hl, bc
    ld   a, [hl]
    cp   $4C
    ld   a, e
    jp   z, label_E64F
    cp   $0E
    jr   c, label_E614
    cp   $17
    jr   nc, label_E614
    push af
    sub  a, $0E
    ld   e, a
    ld   d, b
    push de
    call label_E8F8
    pop  de
    call label_E771
    pop  af

label_E614::
    cp   $12
    jr   nz, label_E64F
    ld   hl, $C440
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_E625
    call label_F7D9
    jr   label_E64A

label_E625::
    ld   a, [$FFEE]
    ld   hl, $FF98
    sub  a, [hl]
    add  a, $18
    cp   $30
    jr   nc, label_E64A
    ld   a, [$FFEF]
    ld   hl, $FF99
    sub  a, [hl]
    add  a, $18
    cp   $30
    jr   nc, label_E64A
    call label_ECD5
    ld   hl, $FF9A
    sla  [hl]
    ld   hl, $FF9B
    sla  [hl]

label_E64A::
    ld   a, $04
    ld   [$C502], a

label_E64F::
    ret

label_E650::
    call label_C05
    ld   e, a
    ld   d, b
    ld   hl, data_E5CA
    add  hl, de
    ld   a, [hl]
    call label_3B0C
    ld   hl, $C340
    add  hl, bc
    ld   a, [hl]
    and  $F0
    or   $08
    ld   [hl], a
    call label_E5B0
    ld   a, [$DBA5]
    and  a
    jr   z, label_E68B
    ld   a, [$C16B]
    cp   $04
    ret  nz
    ld   e, $E4
    ld   a, [$C124]
    and  a
    jr   nz, label_E687
    call label_C05
    and  $04
    jr   z, label_E687
    ld   e, $84

label_E687::
    ld   hl, $DB97
    ld   [hl], e

label_E68B::
    ret

label_E68C::
    ld   de, data_D484
    call label_3BC0
    call label_FF78
    ret
    ld   a, [$FFEC]
    add  a, $10
    cp   $A0
    jp   nc, label_3F8D
    call label_C05
    cp   $18
    jp  c, label_E5E2
    jr   nz, label_E6AD
    dec  [hl]
    call label_C4B

label_E6AD::
    ld   hl, $C14E
    inc  [hl]
    cp   $22
    jr   c, label_E68C
    cp   $48
    jr   nz, label_E6BF
    ld   hl, $C420
    add  hl, bc
    ld   [hl], $30

label_E6BF::
    call label_E711
    call label_DCEA
    call label_FF78
    call label_E0B3
    ld   hl, $C300
    add  hl, bc
    ld   [hl], $FF
    call label_C00
    ld   hl, $C440
    add  hl, bc
    or   [hl]
    jr   nz, label_E6FA
    ld   a, [$DB00]
    cp   $02
    jr   nz, label_E6EA
    ld   a, [$FFCC]
    and  $20
    jr   nz, label_E6F7
    jr   label_E6FA

label_E6EA::
    ld   a, [$DB01]
    cp   $02
    jr   nz, label_E6FA
    ld   a, [$FFCC]
    and  $10
    jr   z, label_E6FA

label_E6F7::
    call label_CE35

label_E6FA::
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  $03
    jr   z, label_E706
    call label_EB34

label_E706::
    ld   a, [$FFF9]
    and  a
    ret  nz
    ld   a, [hl]
    and  $0C
    ret  z
    jp   label_EB43

label_E711::
    ld   hl, $FFEC
    inc  [hl]
    inc  [hl]
    ld   de, data_E52E
    call label_3C77
    jp   label_3D8A

data_E71F::
    db $F8, 8, $18, $F8, 8, $18, $F8, 8, $18

data_E728::
    db $F8, $F8, $F8, 8, 8, 8, $18, $18, $18, $48, $48, 0, $90, 0, $70, $38
    db $38

data_E739::
    db $3D, $3D, $3E, $3E

data_E73D::
    db $72, $72, $73, $73, 4, 4, 4, 4, $69, $79, $6

data_E748::
    db $79, 4, 4, 4, 4

data_E74D::
    db $64, $66, $65, $67

data_E751::
    db $64, $66, $64, $66

data_E755::
    db 4, 8, 2, 1

data_E759::
    db 8, 4, 1, 2

data_E75D::
    db $F8, 8, $FF, 1
    
data_E761::
    db $72, $73, $73, $72, 0, 0, 0, 0

data_E769::
    db 0, $10, $F0, $10
    
data_E76D::
    db 0, 0, $10, 0

label_E771::
    ld   a, [$FFF9]
    and  a
    jp   nz, label_E8E5
    push bc
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    sub  a, $08
    ld   hl, data_E71F
    add  hl, de
    add  a, [hl]
    and  $F0
    ld   [$FFCE], a
    swap a
    ld   hl, $C210
    add  hl, bc
    ld   c, a
    ld   a, [hl]
    sub  a, $10
    ld   hl, data_E728
    add  hl, de
    add  a, [hl]
    and  $F0
    ld   [$FFCD], a
    or   c
    ld   c, a
    ld   b, $00
    ld   hl, $D711
    ld   a, h
    add  hl, bc
    ld   h, a
    ld   a, c
    ld   [$FFE9], a
    ld   a, [hl]
    ld   [$FFAF], a
    ld   e, a
    cp   $BB
    jr   c, label_E828
    cp   $BF
    jr   nc, label_E828
    ld   a, [$DBA5]
    and  a
    jr   nz, label_E828
    ld   a, $02
    ld   [$FFF2], a
    ld   a, [$FFCD]
    and  $E0
    ld   [$FFCD], a
    ld   a, [$FFCE]
    and  $E0
    ld   [$FFCE], a
    ld   a, $03
    call label_AA7
    ld   a, c
    and  $EE
    ld   c, a
    ld   hl, $D711
    add  hl, bc
    ld   a, $09
    ldi  [hl], a
    ldd  [hl], a
    ld   a, $83
    call label_B2F
    inc  hl
    ld   a, $83
    call label_B2F
    dec  hl
    ld   a, l
    add  a, $10
    ld   l, a
    ld   a, $09
    ldi  [hl], a
    ld   [hl], a
    ld   [$DDD8], a
    ld   a, $83
    call label_B2F
    dec  hl
    ld   a, $83
    call label_B2F
    inc  hl
    ld   c, $03
    ld   b, $00

label_E802::
    call label_E822
    ld   hl, data_E769
    add  hl, bc
    ld   a, [hl]
    ld   hl, $FFCE
    add  a, [hl]
    ld   [hl], a
    ld   hl, data_E76D
    add  hl, bc
    ld   a, [hl]
    ld   hl, $FFCD
    add  a, [hl]
    ld   [hl], a
    dec  c
    ld   a, c
    cp   $FF
    jr   nz, label_E802
    jp   label_E8E4

label_E822::
    ld   de, data_E761
    jp   label_E865

label_E828::
    ld   a, [$DBA5]
    ld   d, a
    call label_2A26
    sub  a, $99
    jp  c, label_E8E4
    cp   $04
    jp   nc, label_E8E4
    ld   c, a
    ld   a, $02
    ld   [$FFF2], a
    ld   a, [$DBA5]
    and  a
    jr   nz, label_E878
    pop  bc
    ld   a, [$FFE9]
    ld   e, a
    ld   d, b
    ld   hl, $D711
    add  hl, de
    ld   a, $E1
    ld   [hl], a
    ld   [$DDD8], a
    ld   a, $83
    call label_B2F
    ld   a, [$FFFE]
    and  a
    jr   z, label_E862
    ld   de, data_E751
    jr   label_E865

label_E862::
    ld   de, data_E74D

label_E865::
    push de
    ld   hl, $D800
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    add  hl, de
    ld   a, [hl]
    or   $04
    ld   [hl], a
    ld   [$FFF8], a
    jp   label_D1F5

label_E878::
    ld   hl, $D900
    ld   a, [$FFF6]
    ld   e, a
    ld   d, $00
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_E88B
    ld   hl, $DDE0
    jr   label_E894

label_E88B::
    cp   $1A
    jr   nc, label_E894
    cp   $06
    jr   c, label_E894
    inc  d

label_E894::
    add  hl, de
    ld   e, l
    ld   d, h
    ld   hl, data_E755
    add  hl, bc
    ld   a, [de]
    or   [hl]
    ld   [de], a
    ld   [$FFF8], a
    ld   hl, data_E75D
    add  hl, bc
    ld   a, [$DBAE]
    add  a, [hl]
    ld   e, a
    ld   d, $00
    call label_2BC1
    ld   e, l
    ld   d, h
    ld   hl, data_E759
    add  hl, bc
    ld   a, [de]
    or   [hl]
    ld   [de], a
    ld   a, [$FFCE]
    swap a
    and  $0F
    ld   e, a

label_E8BE::
    ld   a, [$FFCD]
    and  $F0
    or   e
    ld   e, a
    ld   d, $00
    ld   hl, $D711
    add  hl, de
    ld   e, l
    ld   d, h
    ld   hl, data_E739
    add  hl, bc
    ld   a, [hl]
    ld   [de], a
    ld   [$DDD8], a
    ld   a, c
    and  $02
    rla
    rla
    ld   c, a
    ld   hl, data_E73D
    add  hl, bc
    pop  bc
    push hl
    jp   label_D1F5

label_E8E4::
    pop  bc

label_E8E5::
    ret

data_E8E6::
    db $F8, 8, $18, $F8, 8, $18, $F8, 8, $1

data_E8EF::
    db $F8, $F8, $F8, 8, 8, 8, $18, $18, $18

label_E8F8::
    push bc
    ld   hl, data_E8E6
    add  hl, de
    ld   a, [$FFEE]
    add  a, [hl]
    sub  a, $08
    and  $F0
    ld   [$FFCE], a
    swap a
    ld   c, a
    ld   hl, data_E8EF
    add  hl, de
    ld   a, [$FFEC]

label_E90F::
    add  a, [hl]
    sub  a, $10
    and  $F0
    ld   [$FFCD], a
    or   c
    ld   e, a
    ld   hl, $D711
    add  hl, de
    ld   a, h
    cp   $D7
    jp   nz, label_E9A0
    ld   a, [$DBA5]
    and  a
    ld   a, [hl]
    ld   [$FFAF], a
    jr   nz, label_E93C
    ld   [$FFE9], a
    cp   $0A
    jr   z, label_E964
    cp   $D3
    jr   z, label_E964
    cp   $5C
    jr   z, label_E964
    jp   label_E9A0

label_E93C::
    cp   $A9
    jp   nz, label_E9A0
    ld   hl, $D900
    ld   a, [$FFF6]
    ld   c, a
    ld   b, $00
    ld   a, [$FFF7]
    cp   $FF
    jr   nz, label_E954
    ld   hl, $DDE0
    jr   label_E95D

label_E954::
    cp   $1A
    jr   nc, label_E95D
    cp   $06
    jr   c, label_E95D
    inc  b

label_E95D::
    add  hl, bc
    ld   a, [hl]
    or   $40
    ld   [hl], a
    ld   [$FFF8], a

label_E964::
    call label_2178
    ld   a, $05
    call label_E4CA
    jr   c, label_E9A0
    xor  a
    ld   [$C19B], a
    ld   hl, $C200
    add  hl, de
    ld   a, [$FFCE]
    add  a, $08
    ld   [hl], a
    ld   hl, $C210
    add  hl, de
    ld   a, [$FFCD]
    add  a, $10
    ld   [hl], a
    ld   hl, $C3B0
    add  hl, de
    ld   a, [$DBA5]
    xor  $01
    ld   [hl], a
    ld   [$FFF1], a
    ld   a, [$FFE9]
    cp   $0A
    jr   nz, label_E99B
    ld   a, $FF
    ld   [hl], a
    ld   [$FFF1], a

label_E99B::
    ld   c, e
    ld   b, d
    call label_D3E4

label_E9A0::
    pop  bc
    ret

data_E9A2::
    db $6C, $74, $6D, $75 ; ltmu -> mult as in multiply?
    db 0, 0, 0, 0

data_E9AA::
    ; 6.6"6.62!M-4>.OP
    ; --óu=t...µ.!¦+.w
    ; -..(.=-.?.DL++
    db $36, 2, $36, $22, $36, $12, $36, $32, $21, $4D, $C1, $34, $3E, $A, $EA, $9E
    db $C1, $CD, $A2, $75, $F0, $E7, $1F, $1F, $1F, $E6, 1, $21, $B0, $C3, 9, $77
    db $CD, 0, $C, $28, $A, $3D, $CA, $8D, $3F, $11, $44, $4C, $C3, $C0, $3B

label_E9D9::
    ld   de, data_E9AA
    call label_EAD7
    call label_FF78
    ld   a, [$DBA5]
    and  a
    ld   a, [$FFAF]
    jr   z, label_E9F0
    cp   $8A
    jr   z, label_E9F8
    jr   label_EA1D

label_E9F0::
    cp   $D3
    jr   z, label_E9F8
    cp   $5C
    jr   nz, label_EA1D

label_E9F8::
    ld   hl, $C2A0
    add  hl, bc
    ld   [hl], b
    call label_C00
    ld   [hl], b
    ld   a, [$FFE9]
    ld   e, a
    ld   d, b
    call label_2178
    ld   a, [$FFCE]
    add  a, $08
    ld   [$FFD7], a
    ld   a, [$FFCD]
    add  a, $10
    ld   [$FFD8], a
    ld   a, $08
    call label_CC7
    ld   a, $13
    ld   [$FFF4], a

label_EA1D::
    ret

data_EA1E::
    db $6C, 1, $6C, $21, $5C, 1, $5C, $21, $CD, 5, $C, $20, 3, $CD, $DE, $6B

label_EA2E::
    ld   de, data_EA1E
    jp   label_EAD7
    ld   hl, $C14D
    inc  [hl]
    ld   a, [$FFF0]
    and  a
    ;jr   nz, label_EA70
    call label_C05
    jp   nz, label_EAD4
    ld   a, $05
    ld   [$C19E], a
    call label_F5A2
    call label_EAD4
    ld   a, [$FFF1]
    cp   $02
    ret  nz
    ld   a, [$C18E]
    and  $1F
    cp   $0F
    ret  nz
    ld   a, [$FFAF]
    cp   $C0
    ret  nz
    call label_C60
    jp   label_3F8D

data_EA66::
    db $80, $15

data_EA68::
    db 4, $FC, 0, 0

data_EA6C::
    db $FE, $FE, $FA
    inc  b
    call label_C05
    jr   z, label_EA96
    ld   a, $02
    call label_E4CA
    jr   c, label_EA93
    ld   a, [$FFD7]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   hl, $C2E0
    add  hl, de
    ld   [hl], $17
    call label_C4B

label_EA93::
    jp   label_3F8D

label_EA96::
    ld   a, [$FFF1]
    push af
    ld   e, a
    ld   d, b
    xor  a
    ld   [$FFF1], a
    ld   hl, data_EA68
    add  hl, de
    ld   a, [$FFEE]
    add  a, [hl]
    ld   [$FFEE], a
    ld   hl, data_EA6C
    add  hl, de
    ld   a, [$FFEC]
    add  a, [hl]
    ld   [$FFEC], a
    ld   de, data_EA66
    call label_3C77
    call label_3D8A
    pop  af
    ld   [$FFF1], a
    ld   de, data_EBC6
    call label_3BC0
    ld   a, $0C
    ld   [$C19E], a
    call label_F5A2
    jr   label_EADA
    call label_C05
    jr   nz, label_EAD4
    call label_EBDE

label_EAD4::
    ld   de, data_EBC6

label_EAD7::
    call label_3BC0

label_EADA::
    call label_FF78
    call label_C05
    ;jr   nz, label_EB4C
    call label_FF25
    call label_FCAB
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_EB42
    call label_C05
    ld   a, [$FFEB]
    cp   $04
    jr   nz, label_EAFF
    call label_C00
    ld   [hl], $30
    ret

label_EAFF::
    ld   [hl], $18
    ld   hl, $C320
    add  hl, bc
    ld   [hl], $10
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    inc  a
    jr   z, label_EB13
    ld   a, $07
    ld   [$FFF2], a

label_EB13::
    call label_C50
    ld   a, [$FFEB]
    cp   $00
    jr   nz, label_EB31
    call label_EB2C
    ld   hl, $C240

label_EB22::
    add  hl, bc
    ld   a, [hl]
    cpl
    inc  a
    sra  a
    sra  a
    ld   [hl], a
    ret

label_EB2C::
    ld   hl, $C250
    jr   label_EB22

label_EB31::
    call label_EB43

label_EB34::
    ld   hl, $C240

label_EB37::
    add  hl, bc
    ld   a, [hl]
    cpl
    inc  a
    sra  a
    sra  a
    sra  a
    ld   [hl], a

label_EB42::
    ret

label_EB43::
    ld   hl, $C250
    jr   label_EB37

data_EB48::
    db 0, 3, 1, 2

label_EB4C::
    cp   1
    jr   nz, label_EB53
    jp   label_3F8D

label_EB53::
    ld   a, [$FFEB]
    cp   $0A
    jr   z, label_EB6E
    call label_C05
    srl  a
    srl  a
    srl  a
    and  $03
    ld   e, a
    ld   d, b
    ld   hl, data_EB48
    add  hl, de
    ld   a, [hl]
    call label_3B0C

label_EB6E::
    call label_FF25
    jr   label_EB7B

data_EB73::
    db 2, 1, 2, 2

data_EB77::
    db $40, 8, $40, $40

label_EB7B::
    ld   a, [$FFF9]
    and  a
    jr   nz, label_EB8C
    call label_FF5E
    ld   hl, $C320
    add  hl, bc
    ld   a, [hl]
    sub  a, $02
    ld   [hl], a
    ret

label_EB8C::
    ld   hl, $C470
    add  hl, bc
    ld   a, [hl]
    ld   e, a
    ld   d, b
    and  a
    jr   z, label_EBAB
    ld   a, [$FFE7]
    and  $07
    jr   nz, label_EBAB
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_EBAB
    and  $80
    jr   z, label_EBAA
    inc  [hl]
    inc  [hl]

label_EBAA::
    dec  [hl]

label_EBAB::
    ld   hl, data_EB73
    add  hl, de
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    add  a, [hl]
    ld   [hl], a
    ld   hl, data_EB77
    add  hl, de
    sub  a, [hl]
    and  $80
    jr   nz, label_EBC5
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a

label_EBC5::
    ret

data_EBC6::
    db $2E, $21, $2C, $21, $2C, 1, $2E, 1, $2A, $41, $2A, $61, $2A, 1, $2A, $21

data_EBD6::
    db 1, 0, 3, 2

data_EBDA::
    db 2, $A, $E, 6

label_EBDE::
    ld   a, [$C11C]
    cp   $02
    jr   nc, label_EC5A
    ld   a, [$FFA2]
    and  a
    jr   nz, label_EC5A
    ld   hl, $FFEE
    ld   a, [$FF98]
    sub  a, [hl]
    add  a, $06
    cp   $0C
    jr   nc, label_EC5A
    ld   hl, $FFEC
    ld   a, [$FF99]
    sub  a, [hl]
    add  a, $06
    cp   $0C
    jr   nc, label_EC5A
    ld   a, [$C15B]
    and  a
    jr   z, label_EC5B
    ld   a, [$FFEB]
    cp   $2B
    jr   nz, label_EC41
    ld   a, [$DB44]
    cp   $02
    jr   c, label_EC5B
    ld   a, [$FF9E]
    ld   e, a
    ld   d, b
    ld   hl, data_EBDA
    add  hl, de
    ld   e, [hl]
    ld   hl, $C380
    add  hl, bc
    ld   a, [hl]
    sub  a, e
    and  $0F
    cp   $05
    jr   nc, label_EC5B
    ld   hl, $C2A0
    add  hl, bc
    ld   [hl], $02
    ld   a, $07
    ld   [$FFF2], a
    ld   a, [$FFEF]

label_EC36::
    ld   [$FFD8], a
    ld   a, [$FFEE]
    ld   [$FFD7], a
    ld   a, $05
    jp   label_CC7

label_EC41::
    ld   hl, $C380
    add  hl, bc
    ld   e, [hl]
    ld   d, b
    ld   hl, data_EBD6
    add  hl, de
    ld   a, [$FF9E]
    cp   [hl]
    jr   nz, label_EC5B
    ld   a, $16
    ld   [$FFF2], a

label_EC54::
    ld   hl, $C2A0
    add  hl, bc
    ld   [hl], $FF

label_EC5A::
    ret

label_EC5B::
    call label_ECC0
    ld   a, [$FFEB]
    cp   $2B
    jr   z, label_EC68
    cp   $0C
    jr   nz, label_EC54

label_EC68::
    jp   label_3F8D

label_EC6B::
    ld   a, [$FFE7]
    xor  c
    rra
    jp   nc, label_ECCB

label_EC72::
    ld   a, [$FFA2]
    and  a
    jr   nz, label_EC5A

label_EC77::
    ld   a, [$C11C]
    cp   $02
    jr   nc, label_EC5A
    push bc
    sla  c
    sla  c
    ld   hl, $D580
    add  hl, bc
    pop  bc
    ld   a, [$FFEE]
    add  a, [hl]
    push hl
    ld   hl, $FF98
    sub  a, [hl]
    sub  a, $08
    cp   $80
    jr   c, label_EC98
    cpl
    inc  a

label_EC98::
    pop  hl
    push af
    inc  hl
    ld   a, $04
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jp   nc, label_ECCB
    inc  hl
    ld   a, [$FFEC]
    add  a, [hl]
    push hl
    ld   hl, $FF99
    sub  a, [hl]
    sub  a, $08
    cp   $80
    jr   c, label_ECB5
    cpl
    inc  a

label_ECB5::
    pop  hl
    push af
    inc  hl
    ld   a, $04
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jr   nc, label_ECCB

label_ECC0::
    ld   hl, $C340
    add  hl, bc
    ld   a, [hl]
    and  $80
    jr   z, label_ECCD

label_ECC9::
    scf
    ret

label_ECCB::
    and  a
    ret

label_ECCD::
    ld   a, [$FF9D]
    sub  a, $4E
    cp   $02
    jr   c, label_ECC9

label_ECD5::
    ld   a, [$FFEB]
    cp   $AC
    jr   nz, label_ECF9
    call label_FEE9
    ld   a, e
    cp   $02
    jr   nz, label_ED3D
    call label_3B12
    ld   [hl], $05
    ld   a, $02
    ld   [$C146], a
    ld   a, $F0
    ld   [$FF9B], a
    call label_3D7F
    ld   a, $0E
    ld   [$FFF3], a
    ret

label_ECF9::
    ld   a, [$FFEB]
    cp   $9F
    jr   nz, label_ED3D
    ld   a, [$C146]
    and  a
    jr   z, label_ED3D
    ld   a, [$FFB7]
    and  a
    jr   nz, label_ED1B
    ld   a, [$FFF9]
    and  a
    jr   nz, label_ED15
    ld   a, [$FFA3]
    xor  $80
    jr   label_ED17

label_ED15::
    ld   a, [$FF9B]

label_ED17::
    and  $80
    jr   nz, label_ED3D

label_ED1B::
    ld   a, $02
    ld   [$FFB7], a
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $02
    call label_C05
    ld   [hl], $30
    ld   a, $0E
    ld   [$FFF3], a
    ld   a, [$FFF9]
    and  a
    jr   nz, label_ED38
    ld   a, $10
    ld   [$FFA3], a
    ret

label_ED38::
    ld   a, $F0
    ld   [$FF9B], a
    ret

label_ED3D::
    ld   a, [$FFEB]
    cp   $1C
    jr   nz, label_ED4E
    call label_C05
    ld   [hl], $80
    call label_3B12
    ld   [hl], $04
    ret

label_ED4E::
    cp   $8E
    jr   z, label_ED5D
    cp   $82
    jr   z, label_ED5D
    ld   a, [$C13E]
    and  a
    jp   nz, label_EE0A

label_ED5D::
    ld   a, [$FFEB]
    cp   $E4
    jr   nz, label_ED73
    ld   a, [$FFF0]
    cp   $04
    jr   nz, label_ED73
    call label_3B12
    ld   [hl], $08
    ld   a, $03
    ld   [$FFF3], a
    ret

label_ED73::
    ld   a, [$DBC7]
    ld   hl, $C1C6
    or   [hl]
    ld   hl, $C166
    or   [hl]
    ld   hl, $C1A9
    or   [hl]
    jp   nz, label_EE0A
    ld   a, $03
    ld   [$FFF3], a
    ld   hl, $C4D0
    add  hl, bc
    ld   d, b
    ld   e, [hl]
    ld   hl, data_C7F1
    add  hl, de
    ld   e, [hl]
    ld   a, [$DC0F]
    cp   $02
    jr   z, label_EDA9
    ld   a, [$D47C]
    cp   $02
    jr   nz, label_EDAB
    ld   a, e
    cp   $04
    jr   nz, label_EDA9
    ld   e, $00

label_EDA9::
    srl  e

label_EDAB::
    ld   a, [$DB94]
    add  a, e
    ld   [$DB94], a
    ld   a, $50
    ld   [$DBC7], a
    xor  a
    ld   [$D471], a
    ld   a, [$D47C]
    and  a
    jr   z, label_EDDF
    ld   hl, $D47A
    inc  [hl]
    ld   a, [hl]
    cp   $03
    jr   c, label_EDDF
    xor  a
    ld   [$D47C], a
    ld   a, [$C1BE]
    and  a
    jr   nz, label_EDDF
    ld   a, [$FFB0]
    cp   $22
    jr   z, label_EDDD
    ld   [$D368], a

label_EDDD::
    ld   [$FFBF], a

label_EDDF::
    call label_CB6
    ld   a, $10
    ld   [$C13E], a
    ld   a, [$FFEB]
    ld   e, $18
    cp   $82
    jp   z, label_EFA7
    cp   $5A
    jr   nz, label_EDFA
    ld   hl, $C2A0
    add  hl, bc
    ld   [hl], $01

label_EDFA::
    cp   $59
    ld   a, $14
    jr   nz, label_EE02
    ld   a, $18

label_EE02::
    call label_F565
    ld   a, [$FFF9]
    and  a
    jr   nz, label_EE0E

label_EE0A::
    scf
    ret

data_EE0C::
    db $C, $F4

label_EE0E::
    ld   a, [$FF9C]
    cp   $02
    jr   z, label_EE0A
    call label_FED9
    ld   d, b
    ld   hl, data_EE0C
    add  hl, de
    ld   a, [hl]
    ld   [$FF9A], a
    ld   a, $F4
    ld   [$FF9B], a
    xor  a
    ld   [$FF9C], a
    scf
    ret

label_EE28::
    call label_EC6B

label_EE2B::
    ld   a, [$C140]
    cp   $00
    jp   z, label_F3E6
    ld   hl, $C420
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_EE40
    cp   $18
    jp  c, label_F3E6

label_EE40::
    ld   a, [$C1AC]
    and  a
    jr   z, label_EE4B
    dec  a
    cp   c
    jp   z, label_F3E6

label_EE4B::
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    and  a
    jp   nz, label_F3E6
    ld   de, $FFEE
    push bc
    sla  c
    sla  c
    ld   hl, $D580
    add  hl, bc
    pop  bc
    ld   a, [de]
    add  a, [hl]
    push hl
    ld   hl, $C140
    sub  a, [hl]
    cp   $80
    jr   c, label_EE6E
    cpl
    inc  a

label_EE6E::
    pop  hl
    push af
    inc  hl
    ld   a, [$C141]
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jp   nc, label_F3E6
    inc  hl
    push hl
    ld   de, $FFEC
    pop  hl
    ld   a, [de]
    add  a, [hl]
    push hl
    ld   hl, $C142
    sub  a, [hl]
    cp   $80
    jr   c, label_EE8E
    cpl
    inc  a

label_EE8E::
    pop  hl
    push af
    inc  hl
    ld   a, [$C143]
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jp   nc, label_F3E6
    ld   hl, $C340
    add  hl, bc
    ld   a, [hl]
    and  $20
    jp   nz, label_E311
    ld   a, [$C5B0]
    and  a
    jp   nz, label_EFE8
    ld   a, [$C14A]
    ld   [$FFE9], a
    call label_CB6
    ld   a, [$FFEB]
    cp   $E2
    jr   nz, label_EED1
    ld   a, [$DB44]
    cp   $02
    ret  nz
    ld   a, [$FF9E]
    cp   $02
    ret  nz
    ld   a, $04
    ld   [$FF9B], a
    ld   a, $08
    ld   [$C13E], a
    jp   label_3B12

label_EED1::
    cp   $55
    jr   nz, label_EEF7
    ld   a, [$FFF0]
    cp   $02
    jp   nz, label_EF93
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    cpl
    inc  a
    ld   [hl], a
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    cpl
    inc  a
    ld   [hl], a
    call label_C05
    ld   [hl], $40
    call label_C00
    ld   [hl], $08
    ret

label_EEF7::
    cp   $51
    jr   nz, label_EF20
    ld   hl, $C430
    add  hl, bc
    and  $40
    jp   z, label_EF93

label_EF04::
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    cpl
    inc  a
    ld   [hl], a
    call label_EF5C
    call label_C00
    ld   [hl], $0C
    ld   a, $01
    ld   [$C160], a
    xor  a
    ld   [$C122], a
    jp   label_F13B

label_EF20::
    cp   $58
    jr   nz, label_EF2A

label_EF24::
    call label_EF93
    jp   label_EC54

label_EF2A::
    cp   $2C
    jr   nz, label_EF6D
    ld   hl, $C290
    add  hl, bc
    ld   a, [hl]
    cp   $03
    jr   z, label_EF5C
    ld   [hl], $03
    ld   hl, $C320
    add  hl, bc
    ld   [hl], $20
    call label_C05
    ld   [hl], $FF
    ld   a, [$FF9E]
    ld   e, a
    ld   d, b
    ld   hl, data_EF65
    add  hl, de
    ld   a, [hl]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   hl, data_EF69
    add  hl, de
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a

label_EF5C::
    call label_EF93
    ld   hl, $C410
    add  hl, bc
    ld   [hl], b
    ret

data_EF65::
    db $10, $F0

data_EF67::
    db, 0, 0

data_EF69::
    db 0, 0
    
label_EF6B::
    ld   a, [$FF10]

label_EF6D::
    cp   $9C
    jr   z, label_EF75
    cp   $15
    jr   nz, label_EF8E

label_EF75::
    ld   a, [$FF9E]
    and  $02
    jr   nz, label_EF81
    ld   hl, $C240
    add  hl, bc
    jr   label_EF85

label_EF81::
    ld   hl, $C250
    add  hl, bc

label_EF85::
    ld   a, [hl]
    cpl
    inc  a
    ld   [hl], a
    call label_EF93
    ld   [hl], b
    ret

label_EF8E::
    cp   $5A
    jp   z, label_EF24

label_EF93::
    ld   a, $09
    ld   [$FFF2], a
    call label_CB6
    ld   a, $0C
    ld   [$C13E], a
    ld   a, [$FFEB]
    cp   $82
    jr   nz, label_EFB9
    ld   e, $10

label_EFA7::
    push de
    call label_FED9
    ld   a, e
    and  a
    pop  de
    ld   a, e
    jr   z, label_EFB3
    cpl
    inc  a

label_EFB3::
    ld   [$FF9A], a
    xor  a
    ld   [$FF9B], a
    ret

label_EFB9::
    ld   a, $12
    call label_F565
    ld   hl, $FFE9
    ld   a, [$FFCB]
    and  $0F
    ld   a, $08
    or   [hl]
    jr   z, label_EFCC
    ld   a, $20

label_EFCC::
    call label_FE45
    ld   a, [$FFD7]
    cpl
    inc  a
    ld   hl, $C400
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFD8]
    cpl
    inc  a
    ld   hl, $C3F0
    add  hl, bc
    ld   [hl], a
    jp   label_F3DB

data_EFE4::
    db 0, 1, 2, 3

label_EFE8::
    ld   a, [$FFEB]
    cp   $E2
    ret  z
    cp   $E6
    jr   nz, label_F018
    ld   a, [$D219]
    rst  0
    ld   d, [hl]
    ld   c, e
    ld   bc, $770
    ld   [hl], b
    ld   d, $70
    ld   d, $70
    ld   b, d
    ld   [hl], b
    call label_3B12
    ld   [hl], $06
    ret

label_F007::
    ld   a, [$C121]
    and  a
    jr   nz, label_F013
    ld   a, [$C16A]
    cp   $04
    ret  nc

label_F013::
    jp   label_3B12
    ld   a, [$FFEB]

label_F018::
    cp   $B9
    jr   nz, label_F042
    ld   a, [$FFEA]
    cp   $05
    jr   nz, label_F042
    call label_3B12
    ld   [hl], $01
    call label_C05
    ld   [hl], $40
    ld   a, $40
    ld   [$D464], a
    xor  a
    ld   [$C137], a
    ld   [$C16A], a
    ld   [$C121], a
    ld   a, $1C
    ld   [$FFF4], a
    jp   label_ECD5

label_F042::
    ld   a, [$FFEB]
    cp   $55
    jr   nz, label_F06F
    ld   a, $30
    call label_FE45
    ld   a, [$FFD7]
    cpl
    inc  a
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFD8]
    cpl
    inc  a
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    call label_3B12
    ld   [hl], $02
    call label_C05
    ld   [hl], $40
    call label_C00
    ld   [hl], $08
    ret

label_F06F::
    cp   $65
    jr   nz, label_F07D
    call label_EDDF
    ld   a, $08
    ld   [$C13E], a
    jr   label_F0B9

label_F07D::
    cp   $5B
    jr   nz, label_F0B9
    ld   a, [$FFE8]
    and  a
    jr   nz, label_F0A9
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    cp   $04
    jp   nz, label_F09D
    ld   a, [$C14A]
    and  a
    jr   z, label_F102
    ld   hl, $C300
    add  hl, bc
    ld   [hl], $0C
    ret

label_F09D::
    ld   a, [$C14A]
    and  a
    jr   z, label_F0AC
    call label_EDDF
    jp   label_F102

label_F0A9::
    jp   label_EDDF

label_F0AC::
    ld   a, $04
    ld   [$C13E], a
    ld   a, $10
    call label_F565
    jp   label_F102

label_F0B9::
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $40
    jr   z, label_F102
    ld   a, [$FFEB]
    cp   $51
    jp   z, label_EF04
    cp   $5C
    jr   nz, label_F0E7
    ld   a, [$DC0F]
    cp   $01
    jr   z, label_F0DD
    ld   a, [$D47C]
    cp   $01
    ld   a, $20
    jr   nz, label_F0DF

label_F0DD::
    ld   a, $30

label_F0DF::
    call label_EFCC
    ld   hl, $C420
    add  hl, bc
    ld   [hl], b

label_F0E7::
    ld   a, c
    inc  a
    ld   [$C1AC], a
    call label_D07
    ld   hl, $C410
    add  hl, bc
    ld   [hl], $10
    ld   hl, $C3F0
    add  hl, bc
    ld   [hl], b
    ld   hl, $C400
    add  hl, bc
    ld   [hl], b
    jp   label_EDDF

label_F102::
    ld   a, [$FFEB]
    cp   $8E
    jr   nz, label_F10D
    call label_CB6
    jr   label_F14D

label_F10D::
    cp   $24
    jr   nz, label_F146
    ld   hl, $C2C0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_F146
    ld   a, [$FF9E]
    ld   e, a
    ld   d, b
    ld   hl, data_EFE4
    add  hl, de
    ld   a, [hl]
    ld   hl, $C380
    add  hl, bc
    cp   [hl]
    jr   z, label_F14D
    call label_CB6
    ld   a, $10
    ld   [$C13E], a
    ld   a, $10
    call label_F565
    ld   a, $10
    call label_EFCC

label_F13B::
    ld   a, [$FFEE]
    ld   [$FFD7], a
    ld   a, [$FFEC]
    ld   [$FFD8], a
    jp   label_D15

label_F146::
    ld   a, [$FFEB]
    cp   $15
    jp   z, label_F3E6

label_F14D::
    ld   a, $01
    ld   [$C160], a
    ld   a, [$C16A]
    cp   $05
    jr   nz, label_F15E
    ld   a, $0C
    ld   [$C16D], a

label_F15E::
    xor  a
    ld   [$C122], a
    ld   a, $30
    call label_EFCC
    ld   hl, $FFF2
    ld   [hl], $09
    ld   a, [$DC0F]
    cp   $01
    jr   z, label_F17A
    ld   a, [$D47C]
    cp   $01
    jr   nz, label_F19D

label_F17A::
    call label_F19D
    ld   hl, $C410
    add  hl, bc
    ld   [hl], $20
    ld   hl, $C4A0
    add  hl, bc
    ld   [hl], $01
    ld   a, $11
    ld   [$FFF3], a
    ld   hl, $C280
    add  hl, bc
    ld   a, [hl]
    cp   $01
    jr   nz, label_F19C
    ld   hl, $C480
    add  hl, bc
    ld   [hl], $40

label_F19C::
    ret

label_F19D::
    ld   a, c
    inc  a
    ld   [$C1AC], a
    ld   a, [$DC0F]
    and  $01
    jr   nz, label_F1AE
    ld   a, [$D47C]
    and  $01

label_F1AE::
    ld   hl, $C121
    or   [hl]
    ld   hl, $C14A
    or   [hl]
    ld   a, [$DB4E]
    jr   z, label_F1BC
    inc  a

label_F1BC::
    dec  a
    ld   [$C19E], a

label_F1C0::
    ld   hl, $C4D0
    add  hl, bc
    ld   e, [hl]
    ld   d, b
    sla  e
    rl   d
    sla  e
    rl   d
    sla  e
    rl   d
    sla  e
    rl   d
    ld   hl, data_C3EC
    add  hl, de
    ld   a, [$C19E]
    ld   e, a
    ld   d, b
    add  hl, de
    ld   e, [hl]
    push de
    ld   a, [$C19E]
    rla
    rla
    rla
    and  $F8
    ld   e, a
    ld   hl, data_C73C
    add  hl, de
    pop  de
    add  hl, de
    ld   a, [hl]
    and  a
    ret  z
    push af
    ld   a, [$FFEB]
    cp   $E6
    jr   nz, label_F215
    ld   a, [$D219]
    cp   $04
    jr   nz, label_F215
    ld   a, [$C14A]
    push af
    call label_EDDF
    pop  af
    and  a
    jr   nz, label_F215
    ld   a, [$C121]
    and  a
    jr   nz, label_F215
    pop  af
    ret

label_F215::
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    ld   hl, $FFF2
    ld   [hl], $03
    and  $80
    jr   z, label_F228
    ld   hl, $FFF3
    ld   [hl], $07

label_F228::
    ld   hl, $C3A0
    add  hl, bc
    ld   a, [hl]
    cp   $6C
    jr   nz, label_F235
    ld   a, $13
    ld   [$FFF3], a

label_F235::
    pop  af
    cp   $F0
    jr   c, label_F2B5
    cp   $FE
    jr   nz, label_F260
    ld   hl, $FFF4
    ld   [hl], $12
    call label_F3DB
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $03
    call label_C05
    ld   [hl], $60
    ld   hl, $C340
    add  hl, bc
    inc  [hl]
    inc  [hl]
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $C2
    ld   [hl], a
    ret

label_F260::
    cp   $FF
    jr   nz, label_F279
    call label_F3DB

label_F267::
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $06
    ld   hl, $C300
    add  hl, bc
    ld   [hl], $FF
    ld   hl, $C320
    add  hl, bc
    ld   [hl], b
    ret

label_F279::
    cp   $FD
    ret  nz
    ld   hl, $C3A0
    add  hl, bc
    ld   a, [hl]
    cp   $F8
    jr   z, label_F289
    cp   $B9
    jr   nz, label_F293

label_F289::
    ld   hl, $C2B0
    add  hl, bc
    ld   a, [hl]
    and  a
    ret  nz
    inc  [hl]
    jr   label_F29D

label_F293::
    ld   [hl], $2F
    call label_C85B
    call label_BFB
    ld   [hl], $80

label_F29D::
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    ld   [$FFD7], a
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C310
    add  hl, bc
    sub  a, [hl]
    ld   [$FFD8], a
    ld   a, $02
    jp   label_CC7

label_F2B5::
    ld   e, a
    ld   hl, $C360
    add  hl, bc
    ld   a, [hl]
    sub  a, e
    ld   [hl], a
    jr   c, label_F2C2
    jp   nz, label_F3B6

label_F2C2::
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $01
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    bit  7, a
    jr   z, label_F33E
    bit  2, a
    jr   nz, label_F304
    ld   e, $0F
    ld   d, b

label_F2D8::
    ld   a, e
    cp   c
    jr   z, label_F2EE
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    cp   $05
    jr   nz, label_F2EE
    ld   hl, $C430
    add  hl, de
    ld   a, [hl]
    and  $80
    jr   nz, label_F304

label_F2EE::
    dec  e
    ld   a, e
    cp   $FF
    jr   nz, label_F2D8
    ld   a, [$DBAF]
    push af
    ld   a, $03
    call label_80C
    call label_27F2
    pop  af
    ld   [$DBAF], a

label_F304::
    ld   a, $03
    ld   [$C5A7], a
    ld   hl, $C2C0
    add  hl, bc
    ld   [hl], b
    ld   hl, $C3A0
    add  hl, bc
    ld   a, [hl]
    ld   e, $B7
    cp   $5A
    jr   z, label_F325
    ld   e, $B9
    cp   $63
    jr   z, label_F330
    ld   e, $BD
    cp   $62
    jr   nz, label_F33E

label_F325::
    ld   a, e
    call label_2385
    ld   a, $5E
    ld   [$D368], a
    jr   label_F33E

label_F330::
    ld   a, [$FF99]
    push af
    ld   a, $10
    ld   [$FF99], a
    ld   a, e
    call label_2385
    pop  af
    ld   [$FF99], a

label_F33E::
    call label_3B12
    ld   [hl], b
    ld   hl, $C480
    add  hl, bc
    ld   [hl], $2F
    ld   hl, $C420
    add  hl, bc
    xor  a
    ld   [hl], a
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $80
    jr   nz, label_F361
    ld   hl, $C340
    add  hl, bc
    ld   a, [hl]
    and  $F0
    or   $04
    ld   [hl], a

label_F361::
    ld   hl, $C3A0
    add  hl, bc
    ld   a, [hl]
    cp   $12
    jr   nz, label_F3B6
    ld   e, $0F
    ld   d, b

label_F36D::
    ld   a, e
    cp   c
    jr   z, label_F3AA
    ld   hl, $C3A0
    add  hl, de
    ld   a, [hl]
    cp   $10
    jr   z, label_F37E
    cp   $11
    jr   nz, label_F3AA

label_F37E::
    ld   hl, $C290
    add  hl, de
    ld   a, [hl]
    and  a
    jr   nz, label_F3AA
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    and  a
    jr   z, label_F3AA
    ld   [hl], $01
    ld   hl, $C480
    add  hl, de
    ld   [hl], $1F
    call label_280D
    and  $03
    push bc
    ld   c, a
    ld   b, $00
    ld   hl, label_F3E7
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C4E0
    add  hl, de
    ld   [hl], a
    pop  bc

label_F3AA::
    dec  e
    ld   a, e
    cp   $FF
    jr   nz, label_F36D
    ld   hl, $C4E0
    add  hl, bc
    ld   [hl], $2E

label_F3B6::
    ld   hl, $C3A0
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C420
    add  hl, bc
    cp   $E6
    jr   nz, label_F3CC
    ld   a, [$D219]
    cp   $03
    jr   z, label_F3D0
    jr   label_F3D9

label_F3CC::
    cp   $59
    jr   nz, label_F3D9

label_F3D0::
    ld   [hl], $28
    ld   hl, $C300
    add  hl, bc
    ld   [hl], $C8
    ret

label_F3D9::
    ld   [hl], $18

label_F3DB::
    ld   hl, $C4A0
    add  hl, bc
    ld   [hl], b
    ld   hl, $C410
    add  hl, bc
    ld   [hl], $0A

label_F3E6::
    ret

label_F3E7::
    dec  l
    ld   l, $38
    scf
    ld   hl, $C1AC
    ld   a, [$C13E]
    or   [hl]
    ld   hl, $FFB6
    or   [hl]
    ld   hl, $C121
    or   [hl]
    jp   nz, label_F4E1
    ld   a, [$C140]
    cp   $00
    jp   z, label_F4E1
    ld   hl, $C380
    add  hl, bc
    ld   a, [$FF9E]
    cp   [hl]
    jp   z, label_F4E1
    ld   de, $FFEE
    ld   hl, $D5C0
    ld   a, [de]
    add  a, [hl]
    push hl
    ld   hl, $C140
    sub  a, [hl]
    cp   $80
    jr   c, label_F422
    cpl
    inc  a

label_F422::
    pop  hl
    push af
    inc  hl
    ld   a, [$C141]
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jp   nc, label_F4E1
    inc  hl
    ld   de, $FFEC
    ld   a, [de]
    add  a, [hl]
    push hl
    ld   hl, $C142
    sub  a, [hl]
    cp   $80
    jr   c, label_F440
    cpl
    inc  a

label_F440::
    pop  hl
    push af
    inc  hl
    ld   a, [$C143]
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jp   nc, label_F4E1
    call label_CB6
    ld   a, $08
    ld   [$C13E], a
    ld   a, $12
    call label_F565
    ld   a, $18
    call label_FE45
    ld   a, [$FFD7]
    cpl
    inc  a
    ld   hl, $C400
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFD8]
    cpl
    inc  a
    ld   hl, $C3F0
    add  hl, bc
    ld   [hl], a
    call label_F3DB
    ld   [hl], $08
    xor  a
    ld   [$C122], a
    call label_C50
    ld   hl, $C121
    ld   a, [$C16A]
    or   [hl]
    jr   z, label_F48B
    ld   a, $0C
    ld   [$C16D], a

label_F48B::
    ld   a, [$FFEB]
    cp   $BE
    jr   nz, label_F4C1
    ld   a, $09
    ld   [$FFF2], a
    ld   a, [$D205]
    cp   $00
    jr   z, label_F4BF
    cp   $01
    jr   z, label_F4B5
    cp   $04
    jr   z, label_F4B5
    cp   $03
    jp   z, label_F571
    ld   a, $20
    ld   [$C13E], a
    ld   a, $20
    call label_F565
    jr   label_F4DC

label_F4B5::
    ld   a, $10
    ld   [$C13E], a
    ld   a, $20
    call label_F565

label_F4BF::
    jr   label_F4DC

label_F4C1::
    ld   a, [$FF9E]
    ld   e, a
    ld   d, b
    ld   hl, data_F4E4
    add  hl, de
    ld   a, [$C140]
    add  a, [hl]
    ld   [$FFD7], a
    ld   hl, data_F4E8
    add  hl, de
    ld   a, [$C142]
    add  a, [hl]
    ld   [$FFD8], a
    call label_D15

label_F4DC::
    ld   a, $0C
    ld   [$FFB6], a
    ret

label_F4E1::
    jp   label_F4EC

data_F4E4::
    db 0, $F0, $F8, $FC

data_F4E8::
    db $FC, $FC, $F0, 0

label_F4EC::
    ld   a, [$FFE7]
    xor  c
    rra
    jr   nc, label_F570
    ld   a, [$FF98]
    add  a, $08
    ld   [$FFD7], a
    ld   a, [$FF99]
    add  a, $08
    ld   [$FFD9], a
    ld   de, $FFEE
    ld   hl, $D5C0
    ld   a, [de]
    add  a, [hl]
    push hl
    ld   hl, $FFD7
    sub  a, [hl]
    cp   $80
    jr   c, label_F511
    cpl
    inc  a

label_F511::
    pop  hl
    push af
    inc  hl
    ld   a, $04
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jr   nc, label_F570
    inc  hl
    ld   de, $FFEC
    ld   a, [de]
    add  a, [hl]
    push hl
    ld   hl, $FFD9
    sub  a, [hl]
    cp   $80
    jr   c, label_F52D
    cpl
    inc  a

label_F52D::
    pop  hl
    push af
    inc  hl
    ld   a, $05
    add  a, [hl]
    ld   e, a
    pop  af
    cp   e
    jr   nc, label_F570
    ld   a, [$DBC7]
    and  a
    jr   nz, label_F570
    call label_ECD5
    ld   a, [$FFEB]
    cp   $BE
    jr   nz, label_F570
    ld   a, [$D205]
    and  a
    jr   z, label_F570
    cp   $01
    jr   z, label_F570
    cp   $04
    jr   z, label_F570
    cp   $02
    jr   nz, label_F571
    call label_C00
    ld   [hl], $A0
    ld   a, $20
    ld   [$C13E], a
    ld   a, $30

label_F565::
    call label_FE45
    ld   a, [$FFD7]
    ld   [$FF9B], a
    ld   a, [$FFD8]
    ld   [$FF9A], a

label_F570::
    ret

label_F571::
    ld   hl, $C3D0
    add  hl, bc
    ld   a, [hl]
    cp   $22
    jr   c, label_F570
    ld   a, $0A
    ld   [$C11C], a
    ld   hl, $C380
    add  hl, bc
    ld   a, [hl]
    and  a
    ld   a, $30
    jr   z, label_F58B
    ld   a, $D0

label_F58B::
    ld   [$FF9A], a
    xor  a
    ld   [$FF9B], a
    ld   a, $30
    ld   [$FFA3], a
    ld   a, $0B
    ld   [$FFF2], a
    ret
    ld   a, $20
    ld   [$C13E], a
    ld   a, $20
    jr   label_F565

label_F5A2::
    ld   e, $0F
    ld   d, $00

label_F5A6::
    ld   a, e
    cp   c
    jp   z, label_F79F
    ld   a, [$FFE7]
    xor  e
    and  $01
    jp   nz, label_F79F
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    cp   $05
    jp  c, label_F79F
    ld   hl, $C340
    add  hl, de
    ld   a, [hl]
    and  $40
    jp   nz, label_F79F
    ld   hl, $C200
    add  hl, de
    ld   a, [$FFEE]
    sub  a, [hl]
    add  a, $0C
    cp   $18
    jp   nc, label_F79F
    ld   hl, $C210
    add  hl, de
    ld   a, [hl]
    ld   hl, $C310
    add  hl, de
    sub  a, [hl]
    ld   hl, $FFEC
    sub  a, [hl]
    add  a, $0C
    cp   $18
    jp   nc, label_F79F
    ld   hl, $C3B0
    add  hl, de
    ld   a, [hl]
    cp   $FF
    jp   z, label_F79F
    ld   a, [$FFEB]
    cp   $55
    jr   nz, label_F5FE
    call label_C05
    ld   [hl], b

label_F5FE::
    ld   hl, $C3A0
    add  hl, de
    ld   a, [hl]
    cp   $55
    jr   nz, label_F630
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C240
    add  hl, de
    ld   [hl], a
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C250
    add  hl, de
    ld   [hl], a
    ld   hl, $C2E0
    add  hl, de
    ld   [hl], $40
    ld   hl, $C290
    add  hl, de
    ld   [hl], $02
    ld   hl, $C2F0
    add  hl, de
    ld   [hl], $08
    jp   label_F79F

label_F630::
    ld   hl, $C340
    add  hl, de
    ld   a, [hl]
    and  $20
    jp   nz, label_F715
    ld   a, [$FFEB]
    cp   $08
    jr   z, label_F668
    ld   hl, $C3A0
    add  hl, de
    ld   a, [hl]
    cp   $E6
    jr   nz, label_F656
    ld   a, [$D219]
    cp   $05
    jr   nz, label_F656
    ld   a, [$FFF1]
    cp   $02
    jr   nz, label_F65F

label_F656::
    ld   hl, $C350
    add  hl, de
    ld   a, [hl]
    and  $80
    jr   z, label_F668

label_F65F::
    ld   hl, $C2A0
    add  hl, bc
    ld   [hl], $01
    jp   label_F737

label_F668::
    ld   a, [$FFEB]
    cp   $08
    jr   nz, label_F6AC
    ld   hl, $C3A0
    add  hl, de
    ld   a, [hl]
    cp   $CA
    jr   nz, label_F680
    ld   hl, $C290
    add  hl, de
    ld   a, [hl]
    and  a
    jr   nz, label_F6AC
    inc  [hl]

label_F680::
    cp   $3F
    jr   nz, label_F6AC
    ld   a, [$DBA5]
    and  a
    jr   nz, label_F6AC
    ld   hl, $C290
    add  hl, de
    ld   a, [hl]
    and  a
    jr   nz, label_F6AC
    inc  [hl]
    ld   hl, $C450
    add  hl, de
    ld   [hl], $7F
    ld   hl, $C420
    add  hl, de
    ld   [hl], $10
    ld   a, $03
    ld   [$DBAF], a
    call label_27F2
    ld   a, $18
    ld   [$DBAF], a

label_F6AC::
    ld   hl, $C350
    add  hl, de
    ld   a, [hl]
    and  $80
    jp   nz, label_F79F
    ld   hl, $C410
    add  hl, de
    ld   a, [hl]
    and  a
    jp   nz, label_F79F
    ld   hl, $C3A0
    add  hl, de
    ld   a, [hl]
    cp   $24
    jr   nz, label_F710
    ld   hl, $C380
    add  hl, de
    ld   a, [hl]
    xor  $01
    ld   hl, $C380
    add  hl, bc
    cp   [hl]
    jr   nz, label_F710
    ld   hl, $C2C0
    add  hl, de
    ld   a, [hl]
    and  a
    jr   nz, label_F710
    ld   a, [$FFEB]
    cp   $03
    jp   nz, label_F65F
    ld   [hl], $01
    push de
    ld   a, $32
    call label_E4CA
    jr   c, label_F70D
    ld   a, [$FFD7]
    ld   hl, $C200
    add  hl, de
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C210
    add  hl, de
    ld   [hl], a
    ld   hl, $C390
    add  hl, de
    ld   a, c
    inc  a
    ld   [hl], a
    ld   a, [$FFD9]
    and  $01
    ld   hl, $C3B0
    add  hl, de
    ld   [hl], a

label_F70D::
    pop  de
    jr   label_F737

label_F710::
    call label_F7A7
    jr   label_F737

label_F715::
    ld   a, [$FFEB]
    cp   $01
    jr   z, label_F71F
    cp   $03
    jr   nz, label_F734

label_F71F::
    call label_C05
    xor  a
    ld   [hl], a
    ld   hl, $C340
    add  hl, de
    ld   a, [hl]
    and  $20
    jr   z, label_F737
    ld   a, c
    inc  a
    ld   hl, $C390
    add  hl, de
    ld   [hl], a

label_F734::
    jp   label_F79F

label_F737::
    ld   a, [$FFEB]
    cp   $A8
    jr   z, label_F75A
    cp   $01
    jr   z, label_F79A
    cp   $03
    jr   z, label_F79A
    cp   $05
    jr   nz, label_F751
    push de
    call label_D3E4
    pop  de
    jp   label_F79F

label_F751::
    ld   hl, $C280
    add  hl, bc
    ld   a, [hl]
    cp   $08
    jr   nz, label_F782

label_F75A::
    ld   hl, $C480
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_F79F
    ld   [hl], $0C
    ld   hl, $C240
    add  hl, bc
    sra  [hl]
    sra  [hl]
    ld   a, [hl]
    cpl
    ld   [hl], a
    ld   hl, $C250
    add  hl, bc
    sra  [hl]
    sra  [hl]
    ld   a, [hl]
    cpl
    ld   [hl], a
    ld   hl, $C5D0
    add  hl, bc
    ld   [hl], $FF
    jr   label_F79A

label_F782::
    ld   hl, $C2A0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_F79A
    ld   a, [$FFEB]
    cp   $00
    jr   nz, label_F795
    ld   a, [$FFF0]
    and  a
    jr   nz, label_F798

label_F795::
    call label_3F8D

label_F798::
    jr   label_F79F

label_F79A::
    call label_C05
    xor  a
    ld   [hl], a

label_F79F::
    dec  e
    ld   a, e
    cp   $FF
    jp   nz, label_F5A6
    ret

label_F7A7::
    ld   a, [$FFEB]
    cp   $00
    jr   nz, label_F7B8
    ld   a, [$FFF0]
    and  a
    jr   z, label_F7B8
    call label_C05
    ld   [hl], $03
    ret

label_F7B8::
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C3F0
    add  hl, de
    ld   [hl], a
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C400
    add  hl, de
    ld   [hl], a
    push bc
    ld   c, e
    ld   b, d
    push de
    call label_F7D6
    pop  de
    pop  bc
    ret

label_F7D6::
    jp   label_F1C0

label_F7D9::
    ld   e, $0F
    ld   d, $00

label_F7DD::
    ld   hl, $C280
    add  hl, de
    ld   a, [hl]
    cp   $05
    jr   c, label_F834
    ld   hl, $C340
    add  hl, de
    ld   a, [hl]
    and  $60
    jr   nz, label_F834
    ld   hl, $C350
    add  hl, de
    ld   a, [hl]
    and  $80
    jr   nz, label_F834
    ld   hl, $C200
    add  hl, de
    ld   a, [$FFEE]
    sub  a, [hl]
    add  a, $18
    cp   $30
    jr   nc, label_F834
    ld   hl, $C210
    add  hl, de
    ld   a, [hl]
    ld   hl, $C310
    add  hl, de
    sub  a, [hl]
    ld   hl, $FFEC
    sub  a, [hl]
    add  a, $18
    cp   $30
    jr   nc, label_F834
    ld   a, $07
    ld   [$C19E], a
    call label_F7A7
    ld   a, $30
    call label_F83B
    ld   hl, $C400
    add  hl, de
    ld   a, [$FFD7]
    ld   [hl], a
    ld   hl, $C3F0
    add  hl, de
    ld   a, [$FFD8]
    ld   [hl], a

label_F834::
    dec  e
    ld   a, e
    cp   $FF
    jr   nz, label_F7DD
    ret

label_F83B::
    ld   [$FFD7], a
    ld   a, [$FF98]
    push af
    ld   hl, $C200
    add  hl, de
    ld   a, [hl]
    ld   [$FF98], a
    ld   a, [$FF99]
    push af
    ld   hl, $C210
    add  hl, de
    ld   a, [hl]
    ld   [$FF99], a
    push de
    ld   a, [$FFD7]
    call label_FE45
    pop  de
    pop  af
    ld   [$FF99], a
    pop  af
    ld   [$FF98], a
    ret

data_F85F::
    db $D, 2, 8, 8, $A, 6, 8, 8, $10, $FF, 8, 8, $D, 2, 8, 8

data_F86F::
    db 8, 8, 2, $D, 8, 8, 6, $A, 8, 8, $FF, $10, 8, 8, 2, $D

data_F87F::
    db 1, 2, 4, 8

data_F883::
    db 0, 0, $FF, 1, 1, $FF, 1, $FF

data_F88B::
    db 1, $FF, 0, 0, 1, 1, $FF, $FF

label_F893::
    ld   hl, $C470
    add  hl, bc
    ld   a, [hl]
    ld   [$FFD7], a
    xor  a
    ld   [hl], a
    ld   [$FFD8], a
    ld   [$C503], a
    ld   [$C50D], a
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    bit  7, a
    jr   nz, label_F8B1
    and  a
    jp   nz, label_FA18

label_F8B1::
    ld   hl, $C4F0
    add  hl, bc
    ld   [hl], b
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    bit  4, a
    jp   nz, label_FA18
    call label_FE0E
    jr   label_F8E3

label_F8C5::
    ld   e, $02
    ld   a, [$FFEB]
    cp   $CC
    jr   z, label_F907
    cp   $A0
    jr   z, label_F907
    cp   $D5
    jr   z, label_F907
    cp   $6D
    jr   z, label_F907
    cp   $C1
    jr   z, label_F907
    call label_3F8D
    jp   label_F95C

label_F8E3::
    ld   e, $01
    ld   a, [$FFAF]
    cp   $67
    jr   z, label_F907
    ld   a, [$FFDA]
    and  a
    jp   z, label_FA18
    cp   $0B
    jr   z, label_F8C5
    cp   $07
    jr   z, label_F8C5
    cp   $B0
    jr   z, label_F907
    inc  e
    cp   $05
    jr   z, label_F907
    cp   $06
    jr   nz, label_F90C
    inc  e

label_F907::
    ld   hl, $C470
    add  hl, bc
    ld   [hl], e

label_F90C::
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $08
    jr   z, label_F973
    ld   hl, $C470
    add  hl, bc
    ld   a, [$FFD7]
    cp   [hl]
    jr   z, label_F973
    ld   a, [hl]
    cp   $03
    jr   z, label_F973
    ld   a, [$FFD7]
    cp   $03
    jr   z, label_F973
    ld   a, [$FFF9]
    and  a
    jr   nz, label_F93D
    ld   hl, $C320
    add  hl, bc
    ld   a, [hl]
    bit  7, a
    jr   z, label_F973
    cp   $E7
    jr   nc, label_F973
    jr   label_F954

label_F93D::
    ld   a, [$FFEB]
    cp   $AC
    jr   z, label_F954
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    bit  7, a
    jr   nz, label_F954
    ld   [hl], $00
    ld   hl, $C240
    add  hl, bc
    sra  [hl]

label_F954::
    ld   hl, $C480
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_F973

label_F95C::
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    ld   [$FFD7], a
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    ld   [$FFD8], a
    ld   a, $0E
    ld   [$FFF2], a
    ld   a, $01
    call label_CC7

label_F973::
    ld   a, [$FFDA]
    inc  a
    cp   $F1
    jr   c, label_F99C
    sub  a, $F1
    ld   e, a
    ld   d, b
    ld   a, [$FFE7]
    and  $03
    jr   nz, label_F99A
    ld   hl, data_F883
    add  hl, de
    ld   a, [hl]
    ld   hl, $C200
    add  hl, bc
    add  a, [hl]
    ld   [hl], a
    ld   hl, data_F88B
    add  hl, de
    ld   a, [hl]
    ld   hl, $C210
    add  hl, bc
    add  a, [hl]
    ld   [hl], a

label_F99A::
    jr   label_FA18

label_F99C::
    ld   a, [$FFAF]
    cp   $61
    jr   z, label_F9AC
    ld   a, [$FFDA]
    cp   $50
    jr   z, label_F9AC
    cp   $51
    jr   nz, label_FA18

label_F9AC::
    ld   a, [$FFEB]
    cp   $6D
    jr   z, label_FA18
    cp   $D5
    jr   z, label_FA18
    cp   $36
    jr   z, label_FA18
    cp   $C1
    jr   nz, label_F9CB
    ld   a, [$C11C]
    cp   $06
    jr   nz, label_FA18
    ld   a, [$FFAF]
    cp   $61
    jr   nz, label_FA18

label_F9CB::
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_FA18
    dec  [hl]
    ld   hl, $C420
    add  hl, bc
    ld   [hl], $00
    ld   hl, $C280
    add  hl, bc
    ld   [hl], $02
    ld   a, [$FFCE]
    add  a, $08
    ld   hl, $C4B0
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFCD]
    add  a, $10
    ld   hl, $C4C0
    add  hl, bc
    ld   [hl], a
    call label_C05
    ld   [hl], $6F
    ld   a, [$FFEB]
    cp   $14
    jr   z, label_FA18
    cp   $0B
    jr   z, label_FA18
    cp   $09
    jr   z, label_FA18
    ld   [hl], $48
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   nz, label_FA18
    call label_C05
    ld   [hl], $2F
    ld   a, $18
    ld   [$FFF2], a

label_FA18::
    ld   a, [$FFEB]
    cp   $6D
    jp   z, label_FA84
    xor  a
    ld   [$C503], a
    ld   hl, $C350
    add  hl, bc
    ld   a, [hl]
    and  $03
    sla  a
    sla  a
    ld   [$FFD7], a
    ld   hl, $C2A0
    add  hl, bc
    xor  a
    ld   [hl], a
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    cp   $00
    jr   z, label_FA5D
    ld   de, $0000
    and  $80
    jr   z, label_FA47
    inc  e

label_FA47::
    call label_FACD
    jr   c, label_FA5D
    ld   a, [$FFAF]
    ld   [$C503], a
    ld   a, [$FFBE]
    and  a
    jr   nz, label_FA5D
    ld   hl, $C200
    add  hl, bc
    ld   a, [$FFEE]
    ld   [hl], a

label_FA5D::
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    cp   $00
    jr   z, label_FA84
    ld   de, $0002
    and  $80
    jr   nz, label_FA6E
    inc  e

label_FA6E::
    call label_FACD
    jr   c, label_FA84
    ld   a, [$FFAF]
    ld   [$C50D], a
    ld   a, [$FFBE]
    and  a
    jr   nz, label_FA84
    ld   hl, $C210
    add  hl, bc
    ld   a, [$FFEF]
    ld   [hl], a

label_FA84::
    ret

data_FA85::
    db 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1
    db 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1
    db 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0
    db 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1
    db 0, 1, 1, 0, 1, 0, 0, 1

label_FACD::
    push bc
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    sub  a, $08
    push af
    ld   a, [$FFD7]
    ld   c, a
    pop  af
    ld   hl, data_F85F
    add  hl, bc
    add  hl, de
    add  a, [hl]
    ld   [$FFDB], a
    swap a
    and  $0F
    ld   [$FFD8], a
    pop  bc
    push bc
    ld   a, e
    cp   $03
    jr   nz, label_FB0E
    ld   a, [$FFEB]
    cp   $A8
    jr   z, label_FAF9
    cp   $05
    jr   nz, label_FB0E

label_FAF9::
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C310
    add  hl, bc
    ld   c, [hl]
    bit  7, c
    jr   z, label_FB09
    ld   c, $00

label_FB09::
    srl  c
    sub  a, c
    jr   label_FB13

label_FB0E::
    ld   hl, $C210
    add  hl, bc
    ld   a, [hl]

label_FB13::
    sub  a, $10
    push af
    ld   a, [$FFD7]
    ld   c, a
    pop  af
    ld   hl, data_F86F
    add  hl, bc
    add  hl, de
    add  a, [hl]
    ld   [$FFDC], a
    and  $F0
    ld   hl, $FFD8
    or   [hl]
    ld   c, a
    ld   hl, $D711
    ld   a, h
    add  hl, bc
    ld   h, a
    pop  bc
    ld   a, [hl]
    ld   [$FFAF], a
    cp   $20
    jp   z, label_FC7B
    push de
    ld   e, a
    ld   a, [$DBA5]
    ld   d, a
    call label_2A2C
    pop  de
    ld   [$FFDA], a
    ld   a, [$FFEB]
    cp   $CC
    jr   z, label_FB4E
    cp   $99
    jr   nz, label_FB5D

label_FB4E::
    ld   a, [$FFDA]
    cp   $05
    jp   z, label_FCA7
    cp   $07
    jp   z, label_FCA7
    jp   label_FC75

label_FB5D::
    ld   a, [$FFDA]
    and  a
    jp   z, label_FCA7
    cp   $0B
    jr   z, label_FB6F
    cp   $50
    jr   z, label_FB6F
    cp   $51
    jr   nz, label_FB8B

label_FB6F::
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    and  a
    jp   nz, label_FCA7
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    and  a
    jp   z, label_FC75
    ld   a, [$FFEB]
    cp   $59
    jp   z, label_FC75
    jp   label_FCA7

label_FB8B::
    cp   $7C
    jp  c, label_FBE4
    cp   $90
    jp   nc, label_FBE4
    cp   $80
    ld   a, [$FFEB]
    jr   c, label_FBA7
    cp   $A8
    jp   z, label_FCA7
    cp   $02
    jp   z, label_FCA7
    jr   label_FBBB

label_FBA7::
    cp   $16
    jp   z, label_FC9A
    cp   $17
    jp   z, label_FC9A
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $80
    jp   nz, label_FC9A

label_FBBB::
    push de
    ld   a, [$FFDA]
    sub  a, $7C
    sla  a
    sla  a
    ld   e, a
    ld   d, $00
    ld   hl, data_FA85
    add  hl, de
    ld   a, [$FFDB]
    rra
    rra
    rra
    and  $01
    ld   e, a
    ld   a, [$FFDC]
    rra
    rra
    and  $02
    or   e
    ld   e, a
    ld   d, $00
    add  hl, de
    ld   a, [hl]
    pop  de
    and  a
    jp   z, label_FCA7

label_FBE4::
    ld   a, [$FFDA]
    cp   $D0
    jr   c, label_FC2B
    cp   $D4
    jr   nc, label_FC2B
    sub  a, $D0
    ld   hl, $C5D0
    add  hl, bc
    cp   [hl]
    jr   z, label_FC1A
    ld   a, [$FFEB]
    cp   $A8
    jr   z, label_FC75
    ld   hl, $C4F0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_FC75
    ld   a, [$FFE7]
    and  $03
    jr   z, label_FC28
    ld   a, [$DBA5]
    and  a
    jr   nz, label_FC17
    ld   a, [$FFE7]
    and  $01
    jr   z, label_FC28

label_FC17::
    dec  [hl]
    jr   label_FC28

label_FC1A::
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    and  a
    jp   z, label_FC75
    ld   hl, $C4F0
    add  hl, bc
    inc  [hl]

label_FC28::
    jp   label_FCA7

label_FC2B::
    cp   $FF
    jr   z, label_FC9A
    cp   $A0
    jr   nc, label_FCA7
    cp   $10
    jr   nc, label_FC75
    cp   $01
    jr   z, label_FC91
    cp   $03
    jr   z, label_FC91
    cp   $04
    jr   nz, label_FCA7
    ld   a, [$FFEB]
    cp   $A8
    jp   z, label_FCA7
    cp   $02
    jp   z, label_FCA7
    cp   $03
    jr   nz, label_FC5A
    ld   a, [$D6F9]
    and  a
    jp   nz, label_FCA7

label_FC5A::
    ld   a, [$FFAF]
    cp   $DB
    jr   c, label_FC9A
    cp   $DD
    jr   nc, label_FC9A
    push de
    sub  a, $DB
    ld   e, a
    ld   d, $00
    ld   hl, data_FCA9
    add  hl, de
    pop  de
    ld   a, [$D6FB]
    xor  [hl]
    jr   z, label_FCA7

label_FC75::
    ld   a, [$FFDA]
    cp   $60
    jr   nz, label_FC91

label_FC7B::
    ld   a, [$FFEB]
    cp   $03
    jr   nz, label_FC91
    call label_C05
    cp   $26
    jr   c, label_FC8B
    call label_3F8D

label_FC8B::
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $01

label_FC91::
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $01
    jr   nz, label_FCA7

label_FC9A::
    ld   hl, data_F87F
    add  hl, de
    ld   a, [hl]
    ld   hl, $C2A0
    add  hl, bc
    or   [hl]
    ld   [hl], a
    and  a
    ret

label_FCA7::
    scf
    ret

data_FCA9::
    db 0, 2

label_FCAB::
    ld   de, $0000
    push bc
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    ld   [$FFDB], a
    and  $F0
    ld   [$FFCE], a
    swap a
    ld   hl, $C210
    add  hl, bc
    ld   c, a
    ld   a, [hl]
    sub  a, $08
    ld   [$FFDC], a
    and  $F0
    ld   [$FFCD], a
    or   c
    ld   c, a
    ld   [$FFE9], a
    ld   b, $00
    ld   hl, $D711
    ld   a, h
    add  hl, bc
    ld   h, a
    pop  bc
    ld   a, [hl]
    ld   [$FFAF], a
    cp   $AC
    jp   z, label_FE03
    cp   $AB
    jp   nz, label_FD6B
    ld   a, [$FFFE]
    and  a
    jr   z, label_FCFD
    ld   a, [$C11C]
    cp   $05
    ret  z
    ld   a, [$DDD6]
    and  a
    jp   nz, label_FE03
    ld   a, [$C124]
    and  a
    jp   nz, label_FE03

label_FCFD::
    ld   a, [$FFEB]
    cp   $04
    jr   nz, label_FD6B
    ld   a, [$DBA5]
    and  a
    jr   z, label_FD6B
    push hl
    ld   a, $12
    ld   [$FFF4], a
    ld   a, $08
    call label_E4CA
    jr   c, label_FD6A
    pop  hl
    ld   a, $AC
    ld   [hl], a
    ld   [$DDD8], a
    push bc
    ld   c, e
    ld   b, d
    ld   d, h
    ld   e, l
    ld   hl, $C2B0
    add  hl, bc
    ld   [hl], d
    ld   hl, $C2C0
    add  hl, bc
    ld   [hl], e
    ld   a, [$FFCE]
    ld   hl, $C200
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFCD]
    ld   hl, $C210
    add  hl, bc
    ld   [hl], a
    ld   hl, $C290
    add  hl, bc
    ld   [hl], $01
    call label_BFB
    ld   [hl], $80
    pop  bc
    ld   hl, $C1A2
    inc  [hl]
    ld   a, [$C3CD]
    and  a
    jr   z, label_FD63
    sub  a, $04
    ld   [$C3CD], a
    ld   a, [$FFFE]
    and  a
    jr   z, label_FD63
    ld   a, $40
    ld   [$DDD6], a
    ld   a, $0B
    ld   [$DDD7], a

label_FD63::
    ld   de, data_E9A2
    push de
    jp   label_D1F5

label_FD6A::
    pop  hl

label_FD6B::
    ld   a, [hl]
    ld   e, a
    ld   a, [$DBA5]
    ld   d, a
    call label_2A2C
    ld   [$FFD8], a
    and  a
    jp   z, label_FE03
    ld   [$FFDA], a
    cp   $FF
    jp   z, label_FE05
    cp   $D0
    jr   c, label_FDC0
    cp   $D4
    jr   nc, label_FDC0
    sub  a, $D0
    ld   hl, $C5D0
    add  hl, bc
    cp   [hl]
    jr   z, label_FDB0
    ld   hl, $C4F0
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_FDE3
    ld   a, [$FFE7]
    and  $03
    jr   z, label_FE03
    ld   a, [$DBA5]
    and  a
    jr   nz, label_FDAC
    ld   a, [$FFE7]
    and  $01
    jr   z, label_FE03

label_FDAC::
    dec  [hl]
    jp   label_FE03

label_FDB0::
    ld   hl, $C310
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_FDE3
    ld   hl, $C4F0
    add  hl, bc
    inc  [hl]
    jp   label_FE03

label_FDC0::
    cp   $7C
    jp  c, label_FDCD
    cp   $90
    jp   nc, label_FDCD
    jp   label_FE03

label_FDCD::
    ld   a, [$FFDA]
    cp   $A0
    jr   nc, label_FE03
    cp   $50
    jr   z, label_FE03
    cp   $51
    jr   z, label_FE03
    cp   $10
    jr   nc, label_FDE3
    cp   $01
    jr   nz, label_FE03

label_FDE3::
    ld   hl, $C2A0
    add  hl, bc
    ld   [hl], $01
    ld   a, [$FFEB]
    cp   $01
    jr   nz, label_FDF3
    call label_C05
    ret  z

label_FDF3::
    ld   hl, $C200
    add  hl, bc
    ld   a, [$FFEE]
    ld   [hl], a
    ld   hl, $C210
    add  hl, bc
    ld   a, [$FFEF]
    ld   [hl], a
    scf
    ret

label_FE03::
    and  a
    ret

label_FE05::
    ld   a, [$FFEB]
    cp   $01

label_FE09::
    jr   z, label_FDE3
    jp   label_3F8D

label_FE0E::
    push bc
    ld   hl, $C200
    add  hl, bc
    ld   a, [hl]
    sub  a, $01
    ld   [$FFDB], a
    and  $F0
    ld   [$FFCE], a
    swap a
    ld   hl, $C210
    add  hl, bc
    ld   c, a
    ld   a, [hl]
    sub  a, $07
    ld   [$FFDC], a
    and  $F0
    ld   [$FFCD], a
    or   c
    ld   c, a
    ld   b, $00
    ld   hl, $D711
    ld   a, h
    add  hl, bc
    ld   h, a
    pop  bc
    ld   a, [hl]
    ld   [$FFAF], a
    ld   e, a
    ld   a, [$DBA5]
    ld   d, a
    call label_2A2C
    ld   [$FFDA], a
    ret

label_FE45::
    ld   [$FFD8], a
    and  a
    jp   z, label_FEC3
    call label_FEE9
    dec  e
    dec  e
    ld   a, e
    ld   [$FFD9], a
    ld   a, d
    bit  7, a
    jr   z, label_FE5A
    cpl
    inc  a

label_FE5A::
    ld   [$FFE3], a
    call label_FED9
    ld   a, e
    ld   [$FFDA], a
    ld   a, d
    bit  7, a
    jr   z, label_FE69
    cpl
    inc  a

label_FE69::
    ld   [$FFE4], a
    ld   e, $00
    ld   hl, $FFE3
    ld   a, [$FFE4]
    cp   [hl]
    jr   nc, label_FE7E
    inc  e
    push af
    ld   a, [$FFE3]
    ld   [$FFE4], a
    pop  af
    ld   [$FFE3], a

label_FE7E::
    xor  a
    ld   [$FFE2], a
    ld   [$FFD7], a
    ld   a, [$FFD8]
    ld   d, a

label_FE86::
    ld   a, [$FFE2]
    ld   hl, $FFE3
    add  a, [hl]
    jr   c, label_FE94
    ld   hl, $FFE4
    cp   [hl]
    jr   c, label_FE99

label_FE94::
    sub  a, [hl]
    ld   hl, $FFD7
    inc  [hl]

label_FE99::
    ld   [$FFE2], a
    dec  d
    jr   nz, label_FE86
    ld   a, e
    and  a
    jr   z, label_FEAC
    ld   a, [$FFD7]
    push af
    ld   a, [$FFD8]
    ld   [$FFD7], a
    pop  af
    ld   [$FFD8], a

label_FEAC::
    ld   a, [$FFD9]
    and  a
    ld   a, [$FFD7]
    jr   nz, label_FEB7
    cpl
    inc  a
    ld   [$FFD7], a

label_FEB7::
    ld   a, [$FFDA]
    and  a
    ld   a, [$FFD8]
    jr   z, label_FEC2
    cpl
    inc  a
    ld   [$FFD8], a

label_FEC2::
    ret

label_FEC3::
    xor  a
    ld   [$FFD7], a
    ret

label_FEC7::
    call label_FE45
    ld   a, [$FFD7]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    ld   a, [$FFD8]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ret

label_FED9::
    ld   e, $00
    ld   a, [$FF98]
    ld   hl, $C200
    add  hl, bc
    sub  a, [hl]
    bit  7, a
    jr   z, label_FEE7
    inc  e

label_FEE7::
    ld   d, a
    ret

label_FEE9::
    ld   e, $02
    ld   a, [$FF99]
    ld   hl, $C210
    add  hl, bc
    sub  a, [hl]
    ld   hl, $C310
    add  hl, bc
    add  a, [hl]
    bit  7, a
    jr   nz, label_FEFC
    inc  e

label_FEFC::
    ld   d, a
    ret

label_FEFE::
    call label_FED9
    ld   a, e
    ld   [$FFD7], a
    ld   a, d
    bit  7, a
    jr   z, label_FF0B
    cpl
    inc  a

label_FF0B::
    push af
    call label_FEE9
    ld   a, e
    ld   [$FFD8], a
    ld   a, d
    bit  7, a
    jr   z, label_FF19
    cpl
    inc  a

label_FF19::
    pop  de
    cp   d
    jr   nc, label_FF21
    ld   a, [$FFD7]
    jr   label_FF23

label_FF21::
    ld   a, [$FFD8]

label_FF23::
    ld   e, a
    ret

label_FF25::
    call label_FF32
    push bc
    ld   a, c
    add  a, $10
    ld   c, a
    call label_FF32
    pop  bc
    ret

label_FF32::
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_FF5D
    push af
    swap a
    and  $F0
    ld   hl, $C260
    add  hl, bc
    add  a, [hl]
    ld   [hl], a
    rl   d
    ld   hl, $C200

label_FF4A::
    add  hl, bc
    pop  af
    ld   e, $00
    bit  7, a
    jr   z, label_FF54
    ld   e, $F0

label_FF54::
    swap a
    and  $0F
    or   e
    rr   d
    adc  a, [hl]
    ld   [hl], a

label_FF5D::
    ret

label_FF5E::
    ld   hl, $C320
    add  hl, bc
    ld   a, [hl]
    and  a
    jr   z, label_FF5D
    push af
    swap a
    and  $F0
    ld   hl, $C330
    add  hl, bc
    add  a, [hl]
    ld   [hl], a
    rl   d
    ld   hl, $C310
    jr   label_FF4A

label_FF78::
    ld   a, [$FFEA]
    cp   $05
    jr   nz, label_FFA7

label_FF7E::
    ld   a, [$DB95]
    cp   $07
    jr   z, label_FFA7
    cp   $01
    jr   z, label_FF94
    cp   $0B
    jr   nz, label_FFA7
    ld   a, [$C16B]
    cp   $04
    jr   nz, label_FFA7

label_FF94::
    ld   a, [$C19F]
    ld   hl, $C1A8
    or   [hl]
    ld   hl, $C14F
    or   [hl]
    jr   nz, label_FFA7
    ld   a, [$C124]
    and  a
    jr   z, label_FFA8

label_FFA7::
    pop  af

label_FFA8::
    ret

label_FFA9::
    ld   hl, $C410
    add  hl, bc
    ld   a, [hl]
    and  a
    ret  z
    dec  a
    ld   [hl], a
    call label_3E8E
    ld   hl, $C240
    add  hl, bc
    ld   a, [hl]
    push af
    ld   hl, $C250
    add  hl, bc
    ld   a, [hl]
    push af
    ld   hl, $C3F0
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C240
    add  hl, bc
    ld   [hl], a
    ld   hl, $C400
    add  hl, bc
    ld   a, [hl]
    ld   hl, $C250
    add  hl, bc
    ld   [hl], a
    call label_FF25
    ld   hl, $C430
    add  hl, bc
    ld   a, [hl]
    and  $20
    jr   nz, label_FFE4
    call label_F893

label_FFE4::
    ld   hl, $C250
    add  hl, bc
    pop  af
    ld   [hl], a
    ld   hl, $C240
    add  hl, bc
    pop  af
    ld   [hl], a
    pop  af
    call label_3EAF
    ret

section "bank4",romx,bank[$04]
    db   0

section "bank5",romx,bank[$05]
    db   0

section "bank6",romx,bank[$06]
    db   0

section "bank7",romx,bank[$07]
    db   0

section "bank8",romx,bank[$08]
    db   0

section "bank9",romx,bank[$09]
    db   0

section "bank10",romx,bank[$0A]
    db   0

section "bank11",romx,bank[$0B]
    db   0

section "bank12",romx,bank[$0C]

data_bank_c_0000:: incbin "data/Bank_0xC_0x0000"
data_bank_c_0400:: incbin "data/Bank_0xC_0x0400"
data_bank_c_07A0:: incbin "data/Bank_0xC_0x07A0"
data_bank_c_07C0:: incbin "data/Bank_0xC_0x07C0"
data_bank_c_0800:: incbin "data/Bank_0xC_0x0800"
data_bank_c_1800::

section "bank13",romx,bank[$0D]
    db   0

section "bank14",romx,bank[$0E]
    db   0

section "bank15",romx,bank[$0F]
    db   0

section "bank16",romx,bank[$10]
    db   0

section "bank17",romx,bank[$11]
    db   0

section "bank18",romx,bank[$12]
    db   0

section "bank19",romx,bank[$13]
    db   0

section "bank20",romx,bank[$14]
    db   0

section "bank21",romx,bank[$15]
    db   0

section "bank22",romx,bank[$16]
    db   0

section "bank23",romx,bank[$17]
    db   0

section "bank24",romx,bank[$18]
    db   0

section "bank25",romx,bank[$19]
    db   0

section "bank26",romx,bank[$1A]
    db   0

section "bank27",romx,bank[$1B]
    db   0

section "bank28",romx,bank[$1C]
    db   0

section "bank29",romx,bank[$1D]
    db   0

section "bank30",romx,bank[$1E]
    db   0

section "bank31",romx,bank[$1F]
    db   0

section "bank32",romx,bank[$20]
    db   0

section "bank33",romx,bank[$21]
    db   0

section "bank34",romx,bank[$22]
    db   0

section "bank35",romx,bank[$23]
    db   0

section "bank36",romx,bank[$24]
    db   0

section "bank37",romx,bank[$25]
    db   0

section "bank38",romx,bank[$26]
    db   0

section "bank39",romx,bank[$27]
    db   0

section "bank40",romx,bank[$28]
    db   0

section "bank41",romx,bank[$29]
    db   0

section "bank42",romx,bank[$2A]
    db   0

section "bank43",romx,bank[$2B]
    db   0

section "bank44",romx,bank[$2C]
    db   0

section "bank45",romx,bank[$2D]
    db   0

section "bank46",romx,bank[$2E]
    db   0

section "bank47",romx,bank[$2F]
    db   0

section "bank48",romx,bank[$30]
    db   0

section "bank49",romx,bank[$31]
    db   0

section "bank50",romx,bank[$32]
    db   0

section "bank51",romx,bank[$33]
    db   0

section "bank52",romx,bank[$34]
    db   0

section "bank53",romx,bank[$35]
    db   0

section "bank54",romx,bank[$36]
    db   0

section "bank55",romx,bank[$37]
    db   0

section "bank56",romx,bank[$38]
    db   0

section "bank57",romx,bank[$39]
    db   0

section "bank58",romx,bank[$3A]
    db   0

section "bank59",romx,bank[$3B]
    db   0

section "bank60",romx,bank[$3C]
    db   0

