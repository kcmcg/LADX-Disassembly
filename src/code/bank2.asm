; Disassembly of "game.gbc"
; This file was created with mgbdis v1.0.1 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

include "code/audio/music.asm"

label_002_41D0::
    push bc                                       ; $41D0: $C5
    ld   a, $07                                   ; $41D1: $3E $07
    call label_3B86                               ; $41D3: $CD $86 $3B
    jr   c, jr_002_41FA                           ; $41D6: $38 $22

    ld   hl, wEntitiesTypeTable                   ; $41D8: $21 $80 $C2
    add  hl, de                                   ; $41DB: $19
    dec  [hl]                                     ; $41DC: $35
    ldh  a, [$FFCE]                               ; $41DD: $F0 $CE
    and  $F0                                      ; $41DF: $E6 $F0
    add  $08                                      ; $41E1: $C6 $08
    ld   hl, wEntity0PosX                         ; $41E3: $21 $00 $C2
    add  hl, de                                   ; $41E6: $19
    ld   [hl], a                                  ; $41E7: $77
    ldh  a, [$FFCD]                               ; $41E8: $F0 $CD
    and  $F0                                      ; $41EA: $E6 $F0
    add  $10                                      ; $41EC: $C6 $10
    ld   hl, wEntitiesPosYTable                   ; $41EE: $21 $10 $C2
    add  hl, de                                   ; $41F1: $19
    ld   [hl], a                                  ; $41F2: $77
    ld   hl, $C3B0                                ; $41F3: $21 $B0 $C3
    add  hl, de                                   ; $41F6: $19
    ldh  a, [$FFDF]                               ; $41F7: $F0 $DF
    ld   [hl], a                                  ; $41F9: $77

jr_002_41FA:
    pop  bc                                       ; $41FA: $C1
    ret                                           ; $41FB: $C9

    ld   hl, $C146                                ; $41FC: $21 $46 $C1
    ld   a, [wC166]                               ; $41FF: $FA $66 $C1
    or   [hl]                                     ; $4202: $B6
    ld   hl, $C1A4                                ; $4203: $21 $A4 $C1
    or   [hl]                                     ; $4206: $B6
    ret  nz                                       ; $4207: $C0

    ld   [$C5A4], a                               ; $4208: $EA $A4 $C5
    ld   [$C5A5], a                               ; $420B: $EA $A5 $C5
    call label_CBE                                ; $420E: $CD $BE $0C
    ld   a, [$DB49]                               ; $4211: $FA $49 $DB
    and  $07                                      ; $4214: $E6 $07
    jr   z, jr_002_4241                           ; $4216: $28 $29

    ld   a, [$DB4A]                               ; $4218: $FA $4A $DB
    cp   $01                                      ; $421B: $FE $01
    jr   z, jr_002_422D                           ; $421D: $28 $0E

    cp   $02                                      ; $421F: $FE $02
    jr   z, jr_002_4237                           ; $4221: $28 $14

    ld   a, $DC                                   ; $4223: $3E $DC
    ld   [wC166], a                               ; $4225: $EA $66 $C1
    ld   a, $09                                   ; $4228: $3E $09
    ldh  [hSFX], a                                ; $422A: $E0 $F3
    ret                                           ; $422C: $C9

jr_002_422D:
    ld   a, $D0                                   ; $422D: $3E $D0
    ld   [wC166], a                               ; $422F: $EA $66 $C1
    ld   a, $0B                                   ; $4232: $3E $0B
    ldh  [hSFX], a                                ; $4234: $E0 $F3
    ret                                           ; $4236: $C9

jr_002_4237:
    ld   a, $BB                                   ; $4237: $3E $BB
    ld   [wC166], a                               ; $4239: $EA $66 $C1
    ld   a, $0A                                   ; $423C: $3E $0A
    ldh  [hSFX], a                                ; $423E: $E0 $F3
    ret                                           ; $4240: $C9

jr_002_4241:
    ld   a, $D0                                   ; $4241: $3E $D0
    ld   [wC166], a                               ; $4243: $EA $66 $C1
    ld   a, $15                                   ; $4246: $3E $15
    ldh  [hSFX], a                                ; $4248: $E0 $F3
    ret                                           ; $424A: $C9

    ret                                           ; $424B: $C9

    jr   nc, @-$2E                                ; $424C: $30 $D0

    nop                                           ; $424E: $00

jr_002_424F:
    nop                                           ; $424F: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    ret  nc                                       ; $4252: $D0

    jr   nc, jr_002_424F                          ; $4253: $30 $FA

    ld   b, [hl]                                  ; $4255: $46
    pop  bc                                       ; $4256: $C1
    and  a                                        ; $4257: $A7
    jr   nz, jr_002_4286                          ; $4258: $20 $2C

    ld   a, $03                                   ; $425A: $3E $03
    call label_142F                               ; $425C: $CD $2F $14
    jr   c, jr_002_4286                           ; $425F: $38 $25

    ld   hl, wEntitiesFrameCounterTable           ; $4261: $21 $E0 $C2
    add  hl, de                                   ; $4264: $19
    ld   [hl], $2A                                ; $4265: $36 $2A
    ld   hl, $C3B0                                ; $4267: $21 $B0 $C3
    add  hl, de                                   ; $426A: $19
    xor  a                                        ; $426B: $AF
    ld   [hl], a                                  ; $426C: $77
    ldh  a, [hFF9E]                               ; $426D: $F0 $9E
    ld   c, a                                     ; $426F: $4F
    ld   b, $00                                   ; $4270: $06 $00
    ld   hl, $424C                                ; $4272: $21 $4C $42
    add  hl, bc                                   ; $4275: $09
    ld   a, [hl]                                  ; $4276: $7E
    ld   hl, $C240                                ; $4277: $21 $40 $C2
    add  hl, de                                   ; $427A: $19
    ld   [hl], a                                  ; $427B: $77
    ld   hl, $4250                                ; $427C: $21 $50 $42
    add  hl, bc                                   ; $427F: $09
    ld   a, [hl]                                  ; $4280: $7E
    ld   hl, $C250                                ; $4281: $21 $50 $C2
    add  hl, de                                   ; $4284: $19
    ld   [hl], a                                  ; $4285: $77

jr_002_4286:
    ret                                           ; $4286: $C9

label_002_4287::
    ld   a, [wIsShootingArrow]                    ; $4287: $FA $4C $C1
    and  a                                        ; $428A: $A7
    jr   z, jr_002_4291                           ; $428B: $28 $04

    dec  a                                        ; $428D: $3D
    ld   [wIsShootingArrow], a                    ; $428E: $EA $4C $C1

jr_002_4291:
    ld   a, [$C1C4]                               ; $4291: $FA $C4 $C1
    and  a                                        ; $4294: $A7
    jr   z, jr_002_429B                           ; $4295: $28 $04

    dec  a                                        ; $4297: $3D
    ld   [$C1C4], a                               ; $4298: $EA $C4 $C1

jr_002_429B:
    ld   a, [$C1C0]                               ; $429B: $FA $C0 $C1
    and  a                                        ; $429E: $A7
    jr   z, jr_002_42A5                           ; $429F: $28 $04

    dec  a                                        ; $42A1: $3D
    ld   [$C1C0], a                               ; $42A2: $EA $C0 $C1

jr_002_42A5:
    call func_002_436C                            ; $42A5: $CD $6C $43
    ld   a, [wC16E]                               ; $42A8: $FA $6E $C1
    and  a                                        ; $42AB: $A7
    jr   z, jr_002_42B2                           ; $42AC: $28 $04

    dec  a                                        ; $42AE: $3D
    ld   [wC16E], a                               ; $42AF: $EA $6E $C1

jr_002_42B2:
    ldh  a, [$FFA1]                               ; $42B2: $F0 $A1
    cp   $02                                      ; $42B4: $FE $02
    jr   nz, jr_002_42C7                          ; $42B6: $20 $0F

    xor  a                                        ; $42B8: $AF
    ldh  [$FFA1], a                               ; $42B9: $E0 $A1
    ldh  [hFF9A], a                               ; $42BB: $E0 $9A
    ldh  [$FF9B], a                               ; $42BD: $E0 $9B
    ldh  [$FFA3], a                               ; $42BF: $E0 $A3
    call func_002_4A16                            ; $42C1: $CD $16 $4A
    jp   func_002_753A                            ; $42C4: $C3 $3A $75

jr_002_42C7:
    call label_1A50                               ; $42C7: $CD $50 $1A
    xor  a                                        ; $42CA: $AF
    ldh  [$FFA1], a                               ; $42CB: $E0 $A1
    call label_1F61                               ; $42CD: $CD $61 $1F
    call $1177                                    ; $42D0: $CD $77 $11
    call $44ED                                    ; $42D3: $CD $ED $44
    call $434A                                    ; $42D6: $CD $4A $43
    call func_002_478C                            ; $42D9: $CD $8C $47
    call func_002_4B49                            ; $42DC: $CD $49 $4B
    call label_1794                               ; $42DF: $CD $94 $17
    call func_002_4338                            ; $42E2: $CD $38 $43
    call func_002_4A16                            ; $42E5: $CD $16 $4A
    ld   a, [wMapSlideTransitionState]            ; $42E8: $FA $24 $C1
    and  a                                        ; $42EB: $A7
    jr   nz, jr_002_4315                          ; $42EC: $20 $27

    ld   a, [$C137]                               ; $42EE: $FA $37 $C1
    ld   [wC16A], a                               ; $42F1: $EA $6A $C1
    cp   $05                                      ; $42F4: $FE $05
    jr   nz, jr_002_4316                          ; $42F6: $20 $1E

    ld   a, [$C14A]                               ; $42F8: $FA $4A $C1
    and  a                                        ; $42FB: $A7
    jr   nz, jr_002_4333                          ; $42FC: $20 $35

    xor  a                                        ; $42FE: $AF
    ld   [$C137], a                               ; $42FF: $EA $37 $C1
    ld   a, [$C122]                               ; $4302: $FA $22 $C1
    cp   $28                                      ; $4305: $FE $28
    jr   z, jr_002_4315                           ; $4307: $28 $0C

    inc  a                                        ; $4309: $3C
    ld   [$C122], a                               ; $430A: $EA $22 $C1
    cp   $28                                      ; $430D: $FE $28
    jr   nz, jr_002_4315                          ; $430F: $20 $04

    ld   a, $04                                   ; $4311: $3E $04
    ldh  [$FFF2], a                               ; $4313: $E0 $F2

jr_002_4315:
    ret                                           ; $4315: $C9

jr_002_4316:
    ld   a, [$C1AD]                               ; $4316: $FA $AD $C1
    cp   $01                                      ; $4319: $FE $01
    jr   z, jr_002_4333                           ; $431B: $28 $16

    ld   a, [$C122]                               ; $431D: $FA $22 $C1
    cp   $28                                      ; $4320: $FE $28
    jr   nz, jr_002_4333                          ; $4322: $20 $0F

    ld   a, [wC16E]                               ; $4324: $FA $6E $C1
    and  a                                        ; $4327: $A7
    jr   nz, jr_002_4337                          ; $4328: $20 $0D

    ld   a, $20                                   ; $432A: $3E $20
    ld   [wIsUsingSpinAttack], a                  ; $432C: $EA $21 $C1
    ld   a, $03                                   ; $432F: $3E $03
    ldh  [hFFF4], a                               ; $4331: $E0 $F4

jr_002_4333:
    xor  a                                        ; $4333: $AF
    ld   [$C122], a                               ; $4334: $EA $22 $C1

jr_002_4337:
    ret                                           ; $4337: $C9

func_002_4338::
    ld   a, [wC15C]                               ; $4338: $FA $5C $C1
    cp   $02                                      ; $433B: $FE $02
    jr   c, jr_002_4345                           ; $433D: $38 $06

    ldh  [hLinkAnimationState], a                 ; $433F: $E0 $9D
    ld   a, $01                                   ; $4341: $3E $01
    ldh  [$FFA1], a                               ; $4343: $E0 $A1

jr_002_4345:
    ret                                           ; $4345: $C9

    ld   de, $0F10                                ; $4346: $11 $10 $0F
    ld   c, $FA                                   ; $4349: $0E $FA
    sbc  e                                        ; $434B: $9B
    pop  bc                                       ; $434C: $C1
    and  $7F                                      ; $434D: $E6 $7F
    jr   z, jr_002_4367                           ; $434F: $28 $16

    ld   a, [$C19B]                               ; $4351: $FA $9B $C1
    dec  a                                        ; $4354: $3D
    ld   [$C19B], a                               ; $4355: $EA $9B $C1
    and  $7F                                      ; $4358: $E6 $7F
    ldh  a, [hFF9E]                               ; $435A: $F0 $9E
    ld   e, a                                     ; $435C: $5F
    ld   d, $00                                   ; $435D: $16 $00
    ld   hl, $4346                                ; $435F: $21 $46 $43
    add  hl, de                                   ; $4362: $19
    ld   a, [hl]                                  ; $4363: $7E
    ldh  [hLinkAnimationState], a                 ; $4364: $E0 $9D
    ret                                           ; $4366: $C9

jr_002_4367:
    xor  a                                        ; $4367: $AF
    ld   [$C19B], a                               ; $4368: $EA $9B $C1
    ret                                           ; $436B: $C9

func_002_436C::
    ldh  a, [$FFF9]                               ; $436C: $F0 $F9
    and  a                                        ; $436E: $A7
    jr   z, jr_002_43BA                           ; $436F: $28 $49

    ld   a, [wFreeMovementMode]                   ; $4371: $FA $7B $C1
    and  a                                        ; $4374: $A7
    jr   nz, jr_002_43BA                          ; $4375: $20 $43

    jp   $68B7                                    ; $4377: $C3 $B7 $68

func_002_437A::
    ldh  a, [hPressedButtonsMask]                 ; $437A: $F0 $CB
    and  $0F                                      ; $437C: $E6 $0F
    or   e                                        ; $437E: $B3
    ld   e, a                                     ; $437F: $5F
    ld   hl, Data_002_48C5                        ; $4380: $21 $C5 $48
    add  hl, de                                   ; $4383: $19
    ld   a, [hl]                                  ; $4384: $7E
    ldh  [hFF9A], a                               ; $4385: $E0 $9A
    ld   hl, $48E5                                ; $4387: $21 $E5 $48
    add  hl, de                                   ; $438A: $19
    ld   a, [hl]                                  ; $438B: $7E
    ldh  [$FF9B], a                               ; $438C: $E0 $9B
    ret                                           ; $438E: $C9

func_002_438F::
    ldh  a, [hPressedButtonsMask]                 ; $438F: $F0 $CB
    and  $0F                                      ; $4391: $E6 $0F
    or   e                                        ; $4393: $B3
    ld   e, a                                     ; $4394: $5F
    ld   hl, Data_002_48C5                        ; $4395: $21 $C5 $48
    add  hl, de                                   ; $4398: $19
    ld   a, [hl]                                  ; $4399: $7E
    ld   hl, hFF9A                                ; $439A: $21 $9A $FF
    sub  [hl]                                     ; $439D: $96
    jr   z, jr_002_43A7                           ; $439E: $28 $07

    inc  [hl]                                     ; $43A0: $34
    bit  7, a                                     ; $43A1: $CB $7F
    jr   z, jr_002_43A7                           ; $43A3: $28 $02

    dec  [hl]                                     ; $43A5: $35
    dec  [hl]                                     ; $43A6: $35

jr_002_43A7:
    ld   hl, $48E5                                ; $43A7: $21 $E5 $48
    add  hl, de                                   ; $43AA: $19
    ld   a, [hl]                                  ; $43AB: $7E
    ld   hl, $FF9B                                ; $43AC: $21 $9B $FF
    sub  [hl]                                     ; $43AF: $96
    jr   z, jr_002_43B9                           ; $43B0: $28 $07

    inc  [hl]                                     ; $43B2: $34
    bit  7, a                                     ; $43B3: $CB $7F
    jr   z, jr_002_43B9                           ; $43B5: $28 $02

    dec  [hl]                                     ; $43B7: $35
    dec  [hl]                                     ; $43B8: $35

jr_002_43B9:
    ret                                           ; $43B9: $C9

jr_002_43BA:
    ld   a, [$DBAE]                               ; $43BA: $FA $AE $DB
    ld   [$D46B], a                               ; $43BD: $EA $6B $D4
    call func_002_44C2                            ; $43C0: $CD $C2 $44
    ldh  a, [$FFA2]                               ; $43C3: $F0 $A2
    and  a                                        ; $43C5: $A7
    jr   nz, jr_002_43CE                          ; $43C6: $20 $06

    ldh  a, [$FFA1]                               ; $43C8: $F0 $A1
    and  a                                        ; $43CA: $A7
    jp   nz, label_002_44B5                       ; $43CB: $C2 $B5 $44

jr_002_43CE:
    ld   a, [$C14A]                               ; $43CE: $FA $4A $C1
    and  a                                        ; $43D1: $A7
    jr   z, jr_002_4402                           ; $43D2: $28 $2E

    ldh  a, [hFFCC]                               ; $43D4: $F0 $CC
    and  $0F                                      ; $43D6: $E6 $0F
    jr   z, jr_002_43E6                           ; $43D8: $28 $0C

    ld   e, a                                     ; $43DA: $5F
    ld   d, $00                                   ; $43DB: $16 $00
    ld   hl, $4905                                ; $43DD: $21 $05 $49
    add  hl, de                                   ; $43E0: $19
    ldh  a, [hFF9E]                               ; $43E1: $F0 $9E
    cp   [hl]                                     ; $43E3: $BE
    jr   nz, jr_002_43F4                          ; $43E4: $20 $0E

jr_002_43E6:
    ld   a, [wC120]                               ; $43E6: $FA $20 $C1
    add  $02                                      ; $43E9: $C6 $02
    ld   [wC120], a                               ; $43EB: $EA $20 $C1
    call label_1756                               ; $43EE: $CD $56 $17
    jp   label_002_4464                           ; $43F1: $C3 $64 $44

jr_002_43F4:
    ld   [$C19A], a                               ; $43F4: $EA $9A $C1
    ld   a, [$C199]                               ; $43F7: $FA $99 $C1
    add  $0C                                      ; $43FA: $C6 $0C
    ld   [$C199], a                               ; $43FC: $EA $99 $C1
    call label_CAF                                ; $43FF: $CD $AF $0C

jr_002_4402:
    ld   a, [$C146]                               ; $4402: $FA $46 $C1
    and  a                                        ; $4405: $A7
    jp   nz, label_002_4464                       ; $4406: $C2 $64 $44

    ld   e, $00                                   ; $4409: $1E $00
    ld   d, $00                                   ; $440B: $16 $00
    ld   a, [wActivePowerUp]                      ; $440D: $FA $7C $D4
    cp   $01                                      ; $4410: $FE $01
    jr   nz, jr_002_4416                          ; $4412: $20 $02

    ld   e, $10                                   ; $4414: $1E $10

jr_002_4416:
    ld   a, [wFreeMovementMode]                   ; $4416: $FA $7B $C1
    and  a                                        ; $4419: $A7
    jr   jr_002_4427                              ; $441A: $18 $0B

    ldh  a, [hMapTileset]                         ; $441C: $F0 $F7
    cp   $FF                                      ; $441E: $FE $FF
    jr   nz, jr_002_4427                          ; $4420: $20 $05

    call func_002_438F                            ; $4422: $CD $8F $43
    jr   jr_002_442A                              ; $4425: $18 $03

jr_002_4427:
    call func_002_437A                            ; $4427: $CD $7A $43

jr_002_442A:
    ld   a, [wFreeMovementMode]                   ; $442A: $FA $7B $C1
    and  a                                        ; $442D: $A7
    jr   z, jr_002_443A                           ; $442E: $28 $0A

    ld   hl, hFF9A                                ; $4430: $21 $9A $FF
    sla  [hl]                                     ; $4433: $CB $26
    ld   hl, $FF9B                                ; $4435: $21 $9B $FF
    sla  [hl]                                     ; $4438: $CB $26

jr_002_443A:
    ld   a, e                                     ; $443A: $7B
    and  $0F                                      ; $443B: $E6 $0F
    ld   e, a                                     ; $443D: $5F
    jr   z, jr_002_4459                           ; $443E: $28 $19

    ld   hl, wC120                                ; $4440: $21 $20 $C1
    inc  [hl]                                     ; $4443: $34
    ld   hl, $4905                                ; $4444: $21 $05 $49
    add  hl, de                                   ; $4447: $19
    ld   a, [hl]                                  ; $4448: $7E
    cp   $0F                                      ; $4449: $FE $0F
    jr   z, label_002_4464                        ; $444B: $28 $17

    ld   e, a                                     ; $444D: $5F
    ld   a, [wC16E]                               ; $444E: $FA $6E $C1
    and  a                                        ; $4451: $A7
    ld   a, e                                     ; $4452: $7B
    jr   nz, jr_002_4457                          ; $4453: $20 $02

    ldh  [hFF9E], a                               ; $4455: $E0 $9E

jr_002_4457:
    jr   label_002_4464                           ; $4457: $18 $0B

jr_002_4459:
    ld   a, [$C14B]                               ; $4459: $FA $4B $C1
    and  a                                        ; $445C: $A7
    jr   nz, label_002_4464                       ; $445D: $20 $05

    ld   a, $07                                   ; $445F: $3E $07
    ld   [wC120], a                               ; $4461: $EA $20 $C1

label_002_4464::
    ld   e, $03                                   ; $4464: $1E $03
    ld   a, [wC117]                               ; $4466: $FA $17 $C1
    and  a                                        ; $4469: $A7
    jr   nz, jr_002_44A2                          ; $446A: $20 $36

    ld   e, $01                                   ; $446C: $1E $01
    ld   a, [wC15C]                               ; $446E: $FA $5C $C1
    and  a                                        ; $4471: $A7
    jr   z, jr_002_4481                           ; $4472: $28 $0D

    ld   a, [$C5A8]                               ; $4474: $FA $A8 $C5
    cp   $D5                                      ; $4477: $FE $D5
    jr   nz, jr_002_4481                          ; $4479: $20 $06

    ld   a, [$C146]                               ; $447B: $FA $46 $C1
    and  a                                        ; $447E: $A7
    jr   nz, jr_002_44A2                          ; $447F: $20 $21

jr_002_4481:
    ldh  a, [$FFB2]                               ; $4481: $F0 $B2
    and  a                                        ; $4483: $A7
    jr   nz, jr_002_44A2                          ; $4484: $20 $1C

    ld   hl, wC11F                                ; $4486: $21 $1F $C1
    ld   a, [hl]                                  ; $4489: $7E
    and  a                                        ; $448A: $A7
    jr   z, func_002_44AD                         ; $448B: $28 $20

    cp   $07                                      ; $448D: $FE $07
    jr   nz, jr_002_44A9                          ; $448F: $20 $18

    ld   a, [wFreeMovementMode]                   ; $4491: $FA $7B $C1
    and  a                                        ; $4494: $A7
    jr   nz, func_002_44AD                        ; $4495: $20 $16

    ld   e, $01                                   ; $4497: $1E $01
    ld   a, [$C1BB]                               ; $4499: $FA $BB $C1
    cp   $18                                      ; $449C: $FE $18
    jr   c, jr_002_44A2                           ; $449E: $38 $02

    ld   e, $07                                   ; $44A0: $1E $07

jr_002_44A2:
    ldh  a, [hFrameCounter]                       ; $44A2: $F0 $E7
    and  e                                        ; $44A4: $A3
    jr   nz, label_002_44B5                       ; $44A5: $20 $0E

    jr   func_002_44AD                            ; $44A7: $18 $04

jr_002_44A9:
    ldh  a, [hFrameCounter]                       ; $44A9: $F0 $E7
    and  [hl]                                     ; $44AB: $A6
    ret  z                                        ; $44AC: $C8

func_002_44AD::
    ld   a, [wInventoryAppearing]                 ; $44AD: $FA $4F $C1
    and  a                                        ; $44B0: $A7
    ret  nz                                       ; $44B1: $C0

    call label_21A8                               ; $44B2: $CD $A8 $21

label_002_44B5::
    ld   a, [wC11F]                               ; $44B5: $FA $1F $C1
    ld   [$C130], a                               ; $44B8: $EA $30 $C1
    xor  a                                        ; $44BB: $AF
    ld   [wC11F], a                               ; $44BC: $EA $1F $C1
    jp   func_002_6C75                            ; $44BF: $C3 $75 $6C

func_002_44C2::
    ld   a, [$C13E]                               ; $44C2: $FA $3E $C1
    and  a                                        ; $44C5: $A7
    ret  z                                        ; $44C6: $C8

    dec  a                                        ; $44C7: $3D
    ld   [$C13E], a                               ; $44C8: $EA $3E $C1
    call label_21A8                               ; $44CB: $CD $A8 $21
    call func_002_6C75                            ; $44CE: $CD $75 $6C
    ld   a, [$C133]                               ; $44D1: $FA $33 $C1
    and  a                                        ; $44D4: $A7
    jr   z, jr_002_44E3                           ; $44D5: $28 $0C

    and  $03                                      ; $44D7: $E6 $03
    jr   z, jr_002_44E0                           ; $44D9: $28 $05

    xor  a                                        ; $44DB: $AF
    ldh  [$FF9B], a                               ; $44DC: $E0 $9B
    jr   jr_002_44E3                              ; $44DE: $18 $03

jr_002_44E0:
    xor  a                                        ; $44E0: $AF
    ldh  [hFF9A], a                               ; $44E1: $E0 $9A

jr_002_44E3:
    pop  af                                       ; $44E3: $F1
    jp   label_1794                               ; $44E4: $C3 $94 $17

    nop                                           ; $44E7: $00
    ld   a, [rNR10]                               ; $44E8: $F0 $10
    nop                                           ; $44EA: $00
    rst  $38                                      ; $44EB: $FF
    ld   bc, $46FA                                ; $44EC: $01 $FA $46
    pop  bc                                       ; $44EF: $C1
    and  a                                        ; $44F0: $A7
    jp   z, label_002_45AC                        ; $44F1: $CA $AC $45

    ldh  a, [$FFF9]                               ; $44F4: $F0 $F9
    and  a                                        ; $44F6: $A7
    jp   nz, label_002_45AC                       ; $44F7: $C2 $AC $45

func_002_44FA::
    call $21E1                                    ; $44FA: $CD $E1 $21
    ldh  a, [$FFA3]                               ; $44FD: $F0 $A3
    sub  $02                                      ; $44FF: $D6 $02
    ldh  [$FFA3], a                               ; $4501: $E0 $A3
    ld   a, $FF                                   ; $4503: $3E $FF
    ld   [wC120], a                               ; $4505: $EA $20 $C1
    ld   a, [wC10a]                               ; $4508: $FA $0A $C1
    ld   hl, $C14A                                ; $450B: $21 $4A $C1
    or   [hl]                                     ; $450E: $B6
    jr   nz, jr_002_4563                          ; $450F: $20 $52

    ld   a, [$D475]                               ; $4511: $FA $75 $D4
    and  a                                        ; $4514: $A7
    jr   nz, jr_002_451E                          ; $4515: $20 $07

    ld   a, [$C1AD]                               ; $4517: $FA $AD $C1
    cp   $80                                      ; $451A: $FE $80
    jr   nz, jr_002_4523                          ; $451C: $20 $05

jr_002_451E:
    call label_178E                               ; $451E: $CD $8E $17
    jr   jr_002_4563                              ; $4521: $18 $40

jr_002_4523:
    ldh  a, [hPressedButtonsMask]                 ; $4523: $F0 $CB
    and  $03                                      ; $4525: $E6 $03
    jr   z, jr_002_4542                           ; $4527: $28 $19

    ld   e, a                                     ; $4529: $5F
    ld   d, $00                                   ; $452A: $16 $00
    ld   hl, $68B1                                ; $452C: $21 $B1 $68
    add  hl, de                                   ; $452F: $19
    ldh  a, [hFF9A]                               ; $4530: $F0 $9A
    sub  [hl]                                     ; $4532: $96
    jr   z, jr_002_4542                           ; $4533: $28 $0D

    ld   e, $01                                   ; $4535: $1E $01
    bit  7, a                                     ; $4537: $CB $7F
    jr   nz, jr_002_453D                          ; $4539: $20 $02

    ld   e, $FF                                   ; $453B: $1E $FF

jr_002_453D:
    ldh  a, [hFF9A]                               ; $453D: $F0 $9A
    add  e                                        ; $453F: $83
    ldh  [hFF9A], a                               ; $4540: $E0 $9A

jr_002_4542:
    ldh  a, [hPressedButtonsMask]                 ; $4542: $F0 $CB
    rra                                           ; $4544: $1F
    rra                                           ; $4545: $1F
    and  $03                                      ; $4546: $E6 $03
    jr   z, jr_002_4563                           ; $4548: $28 $19

    ld   e, a                                     ; $454A: $5F
    ld   d, $00                                   ; $454B: $16 $00
    ld   hl, $44E7                                ; $454D: $21 $E7 $44
    add  hl, de                                   ; $4550: $19
    ldh  a, [$FF9B]                               ; $4551: $F0 $9B
    sub  [hl]                                     ; $4553: $96
    jr   z, jr_002_4563                           ; $4554: $28 $0D

    ld   e, $01                                   ; $4556: $1E $01
    bit  7, a                                     ; $4558: $CB $7F
    jr   nz, jr_002_455E                          ; $455A: $20 $02

    ld   e, $FF                                   ; $455C: $1E $FF

jr_002_455E:
    ldh  a, [$FF9B]                               ; $455E: $F0 $9B
    add  e                                        ; $4560: $83
    ldh  [$FF9B], a                               ; $4561: $E0 $9B

jr_002_4563:
    ldh  a, [$FFA2]                               ; $4563: $F0 $A2
    and  a                                        ; $4565: $A7
    jr   z, jr_002_456C                           ; $4566: $28 $04

    and  $80                                      ; $4568: $E6 $80
    jr   z, label_002_45AC                        ; $456A: $28 $40

jr_002_456C:
    call label_CB6                                ; $456C: $CD $B6 $0C
    ldh  [$FFA2], a                               ; $456F: $E0 $A2
    ld   [$C149], a                               ; $4571: $EA $49 $C1
    ldh  [$FFA3], a                               ; $4574: $E0 $A3
    ld   [$C146], a                               ; $4576: $EA $46 $C1
    ld   [$C152], a                               ; $4579: $EA $52 $C1
    ld   [$C153], a                               ; $457C: $EA $53 $C1
    ld   [wC10a], a                               ; $457F: $EA $0A $C1
    ldh  a, [hLinkPositionY]                      ; $4582: $F0 $99
    cp   $88                                      ; $4584: $FE $88
    jr   nc, label_002_45AC                       ; $4586: $30 $24

    call func_002_75BD                            ; $4588: $CD $BD $75
    ldh  a, [$FFB8]                               ; $458B: $F0 $B8
    cp   $61                                      ; $458D: $FE $61
    jr   z, label_002_45AC                        ; $458F: $28 $1B

    ld   a, [$C181]                               ; $4591: $FA $81 $C1
    cp   $05                                      ; $4594: $FE $05
    jr   z, jr_002_45AD                           ; $4596: $28 $15

    cp   $07                                      ; $4598: $FE $07
    jr   z, label_002_45AC                        ; $459A: $28 $10

    cp   $0B                                      ; $459C: $FE $0B
    jr   z, label_002_45AC                        ; $459E: $28 $0C

    cp   $50                                      ; $45A0: $FE $50
    jr   z, label_002_45AC                        ; $45A2: $28 $08

    cp   $51                                      ; $45A4: $FE $51
    jr   z, label_002_45AC                        ; $45A6: $28 $04

    ld   a, $07                                   ; $45A8: $3E $07
    ldh  [hFFF4], a                               ; $45AA: $E0 $F4

label_002_45AC::
    ret                                           ; $45AC: $C9

jr_002_45AD:
    ldh  a, [hLinkPositionY]                      ; $45AD: $F0 $99
    ldh  [$FFD8], a                               ; $45AF: $E0 $D8
    ldh  a, [hLinkPositionX]                      ; $45B1: $F0 $98
    ldh  [$FFD7], a                               ; $45B3: $E0 $D7
    ld   a, $0E                                   ; $45B5: $3E $0E
    ldh  [$FFF2], a                               ; $45B7: $E0 $F2
    ld   a, $0C                                   ; $45B9: $3E $0C
    jp   label_CC7                                ; $45BB: $C3 $C7 $0C

Data_002_45BE::
    db   $00, $00, $08, $06, $00, $06, $00, $00, $08, $0A, $00, $0A, $00, $00, $08, $10
    db   $00, $10, $00, $00, $08, $08, $00, $08, $00, $00, $05, $0A, $00, $0A, $00, $00
    db   $05, $0A, $00, $0A, $00, $00, $05, $08, $00, $08, $00, $00, $05, $08, $00, $08
    db   $00, $00, $08, $08, $00, $08, $00, $00, $08, $08, $00, $08, $00, $00, $08, $08
    db   $00, $08, $00, $00, $08, $08, $00, $08, $00, $00, $05, $08, $00, $08, $00, $00
    db   $05, $08, $00, $08, $00, $00, $05, $08, $00, $08, $00, $00, $05, $08, $00, $08
    db   $00, $06, $07, $00, $01, $00, $00, $06, $05, $04, $03, $04, $00, $00, $07, $06
    db   $05, $06, $00, $04, $03, $02, $01, $02, $00, $18, $19, $11, $11, $FF, $00, $16
    db   $17, $10, $10, $FF, $00, $14, $15, $0F, $0F, $FF, $00, $12, $13, $0E, $0E, $FF
    db   $00, $00, $0D, $13, $10, $0B, $00, $F8, $F3, $ED, $F0, $F5, $00, $10, $0D, $F8
    db   $F5, $F8, $00, $F0, $F3, $00, $0C, $00, $00, $F0, $F3, $00, $0C, $00, $00, $F0
    db   $F3, $00, $0C, $00, $00, $F8, $F3, $F0, $F3, $F5, $00, $00, $0D, $10, $0D, $0D
    db   $00, $00, $00, $03, $03, $00, $00, $00, $00, $FD, $FD, $00, $00, $00, $00, $00
    db   $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db   $00, $00, $00, $00, $00, $00, $00, $FD, $FD, $00, $00, $00, $00, $03, $03, $00
    db   $03, $03, $08, $01, $01, $01, $01, $61, $62, $63, $00, $5E, $5F, $60, $00, $67
    db   $68, $69, $00, $64, $65, $66, $00, $00, $03, $01, $02, $03, $02, $03, $02, $03
    db   $02, $03, $04, $03, $04, $03, $02, $03, $04, $03, $04, $03, $02, $03, $04, $03
    db   $04, $03, $04, $03, $04, $03, $04, $03, $02, $03, $04, $00, $02, $02, $01, $01
    db   $03, $03, $00, $01, $02, $02, $00, $00, $03, $03, $01, $02, $00, $00, $03, $03
    db   $01, $01, $02, $03, $01, $01, $02, $02, $00, $00, $03

label_002_4709::
    dec  a                                        ; $4709: $3D
    ld   [wIsUsingSpinAttack], a                  ; $470A: $EA $21 $C1
    ld   hl, $FFA1                                ; $470D: $21 $A1 $FF
    ld   [hl], $01                                ; $4710: $36 $01
    srl  a                                        ; $4712: $CB $3F
    srl  a                                        ; $4714: $CB $3F
    ld   e, a                                     ; $4716: $5F
    ld   d, $00                                   ; $4717: $16 $00
    ldh  a, [hFF9E]                               ; $4719: $F0 $9E
    sla  a                                        ; $471B: $CB $27
    sla  a                                        ; $471D: $CB $27
    sla  a                                        ; $471F: $CB $27
    add  e                                        ; $4721: $83
    ld   e, a                                     ; $4722: $5F
    ld   hl, $46C9                                ; $4723: $21 $C9 $46
    add  hl, de                                   ; $4726: $19
    ld   a, [hl]                                  ; $4727: $7E
    ld   [$C137], a                               ; $4728: $EA $37 $C1
    ld   hl, $46E9                                ; $472B: $21 $E9 $46
    add  hl, de                                   ; $472E: $19
    ldh  a, [hFF9E]                               ; $472F: $F0 $9E
    push af                                       ; $4731: $F5
    ld   a, [hl]                                  ; $4732: $7E
    ldh  [hFF9E], a                               ; $4733: $E0 $9E
    call label_002_4827                           ; $4735: $CD $27 $48
    pop  af                                       ; $4738: $F1
    ldh  [hFF9E], a                               ; $4739: $E0 $9E
    ldh  a, [hFrameCounter]                       ; $473B: $F0 $E7
    and  $03                                      ; $473D: $E6 $03
    jr   nz, jr_002_4745                          ; $473F: $20 $04

    ld   hl, wIsUsingSpinAttack                   ; $4741: $21 $21 $C1
    dec  [hl]                                     ; $4744: $35

jr_002_4745:
    ld   a, [wIsUsingSpinAttack]                  ; $4745: $FA $21 $C1
    and  a                                        ; $4748: $A7
    jp   z, label_002_48B0                        ; $4749: $CA $B0 $48

    rla                                           ; $474C: $17
    jp   c, label_002_48B0                        ; $474D: $DA $B0 $48

    ldh  a, [hLinkPositionX]                      ; $4750: $F0 $98
    add  $08                                      ; $4752: $C6 $08
    ld   [$C140], a                               ; $4754: $EA $40 $C1
    ld   a, $18                                   ; $4757: $3E $18
    ld   [$C141], a                               ; $4759: $EA $41 $C1
    ld   [$C143], a                               ; $475C: $EA $43 $C1
    ld   a, [$C145]                               ; $475F: $FA $45 $C1
    add  $08                                      ; $4762: $C6 $08
    ld   [$C142], a                               ; $4764: $EA $42 $C1
    ld   [$C5B0], a                               ; $4767: $EA $B0 $C5
    ret                                           ; $476A: $C9

label_002_476B::
    dec  a                                        ; $476B: $3D
    ld   [wC16D], a                               ; $476C: $EA $6D $C1
    jp   z, label_002_48B0                        ; $476F: $CA $B0 $48

    ld   hl, wC16E                                ; $4772: $21 $6E $C1
    ld   [hl], $04                                ; $4775: $36 $04
    ld   a, [$C14A]                               ; $4777: $FA $4A $C1
    and  a                                        ; $477A: $A7
    jr   nz, jr_002_4781                          ; $477B: $20 $04

    ld   a, $01                                   ; $477D: $3E $01
    ldh  [$FFA1], a                               ; $477F: $E0 $A1

jr_002_4781:
    ld   a, $03                                   ; $4781: $3E $03
    ld   [$C137], a                               ; $4783: $EA $37 $C1
    jp   label_002_4827                           ; $4786: $C3 $27 $48

jr_002_4789:
    jp   label_002_4827                           ; $4789: $C3 $27 $48

func_002_478C::
    ld   a, [$D475]                               ; $478C: $FA $75 $D4
    and  a                                        ; $478F: $A7
    jr   z, jr_002_47A3                           ; $4790: $28 $11

    ldh  a, [hFrameCounter]                       ; $4792: $F0 $E7
    rra                                           ; $4794: $1F
    rra                                           ; $4795: $1F
    and  $03                                      ; $4796: $E6 $03
    ld   e, a                                     ; $4798: $5F
    ld   d, $00                                   ; $4799: $16 $00
    ld   hl, $46C5                                ; $479B: $21 $C5 $46
    add  hl, de                                   ; $479E: $19
    ld   a, [hl]                                  ; $479F: $7E
    ldh  [hFF9E], a                               ; $47A0: $E0 $9E
    ret                                           ; $47A2: $C9

jr_002_47A3:
    ld   a, [$C146]                               ; $47A3: $FA $46 $C1
    cp   $01                                      ; $47A6: $FE $01
    jr   nz, jr_002_47E0                          ; $47A8: $20 $36

    ld   a, [$C3CF]                               ; $47AA: $FA $CF $C3
    ld   hl, $C137                                ; $47AD: $21 $37 $C1
    or   [hl]                                     ; $47B0: $B6
    jr   nz, jr_002_47E0                          ; $47B1: $20 $2D

    ldh  a, [hFF9E]                               ; $47B3: $F0 $9E
    rla                                           ; $47B5: $17
    rla                                           ; $47B6: $17
    and  $0C                                      ; $47B7: $E6 $0C
    ld   c, a                                     ; $47B9: $4F
    ld   b, $00                                   ; $47BA: $06 $00
    ld   a, [$C152]                               ; $47BC: $FA $52 $C1
    cp   $03                                      ; $47BF: $FE $03
    jr   nc, jr_002_47E0                          ; $47C1: $30 $1D

    ld   e, a                                     ; $47C3: $5F
    ld   d, $00                                   ; $47C4: $16 $00
    ld   hl, $46B5                                ; $47C6: $21 $B5 $46
    add  hl, de                                   ; $47C9: $19
    add  hl, bc                                   ; $47CA: $09
    ld   a, [hl]                                  ; $47CB: $7E
    ldh  [hLinkAnimationState], a                 ; $47CC: $E0 $9D
    ld   a, [$C153]                               ; $47CE: $FA $53 $C1
    inc  a                                        ; $47D1: $3C
    ld   [$C153], a                               ; $47D2: $EA $53 $C1
    and  $07                                      ; $47D5: $E6 $07
    jr   nz, jr_002_47E0                          ; $47D7: $20 $07

    ld   a, [$C152]                               ; $47D9: $FA $52 $C1
    inc  a                                        ; $47DC: $3C
    ld   [$C152], a                               ; $47DD: $EA $52 $C1

jr_002_47E0:
    ld   a, [wIsUsingSpinAttack]                  ; $47E0: $FA $21 $C1
    and  a                                        ; $47E3: $A7
    jp   nz, label_002_4709                       ; $47E4: $C2 $09 $47

    ld   a, [wC16D]                               ; $47E7: $FA $6D $C1
    and  a                                        ; $47EA: $A7
    jp   nz, label_002_476B                       ; $47EB: $C2 $6B $47

    ld   a, [$C137]                               ; $47EE: $FA $37 $C1
    and  a                                        ; $47F1: $A7
    ret  z                                        ; $47F2: $C8

    ld   hl, wC16E                                ; $47F3: $21 $6E $C1
    ld   [hl], $04                                ; $47F6: $36 $04
    ld   a, [$C137]                               ; $47F8: $FA $37 $C1
    cp   $05                                      ; $47FB: $FE $05
    jr   nc, jr_002_4789                          ; $47FD: $30 $8A

    ld   a, [$C14A]                               ; $47FF: $FA $4A $C1
    and  a                                        ; $4802: $A7
    jr   nz, jr_002_4809                          ; $4803: $20 $04

    ld   a, $01                                   ; $4805: $3E $01
    ldh  [$FFA1], a                               ; $4807: $E0 $A1

jr_002_4809:
    ld   a, [$C138]                               ; $4809: $FA $38 $C1
    and  a                                        ; $480C: $A7
    jr   nz, jr_002_4823                          ; $480D: $20 $14

    ld   a, [$C137]                               ; $480F: $FA $37 $C1
    inc  a                                        ; $4812: $3C
    ld   [$C137], a                               ; $4813: $EA $37 $C1
    cp   $04                                      ; $4816: $FE $04
    jp   z, label_002_48B0                        ; $4818: $CA $B0 $48

    ld   c, a                                     ; $481B: $4F
    ld   b, $00                                   ; $481C: $06 $00
    ld   hl, $46AD                                ; $481E: $21 $AD $46
    add  hl, bc                                   ; $4821: $09
    ld   a, [hl]                                  ; $4822: $7E

jr_002_4823:
    dec  a                                        ; $4823: $3D
    ld   [$C138], a                               ; $4824: $EA $38 $C1

label_002_4827::
    ld   hl, $C137                                ; $4827: $21 $37 $C1
    ldh  a, [hFF9E]                               ; $482A: $F0 $9E
    ld   e, a                                     ; $482C: $5F
    sla  a                                        ; $482D: $CB $27
    sla  a                                        ; $482F: $CB $27
    add  e                                        ; $4831: $83
    add  e                                        ; $4832: $83
    add  [hl]                                     ; $4833: $86
    ld   c, a                                     ; $4834: $4F
    ld   b, $00                                   ; $4835: $06 $00
    ld   hl, $461E                                ; $4837: $21 $1E $46
    add  hl, bc                                   ; $483A: $09
    ld   a, [hl]                                  ; $483B: $7E
    ld   [$C136], a                               ; $483C: $EA $36 $C1
    ld   hl, $4636                                ; $483F: $21 $36 $46
    add  hl, bc                                   ; $4842: $09
    ld   a, [hl]                                  ; $4843: $7E
    cp   $FF                                      ; $4844: $FE $FF
    jr   z, jr_002_484A                           ; $4846: $28 $02

    ldh  [hLinkAnimationState], a                 ; $4848: $E0 $9D

jr_002_484A:
    ld   hl, $464E                                ; $484A: $21 $4E $46
    add  hl, bc                                   ; $484D: $09
    ld   a, [hl]                                  ; $484E: $7E
    ld   [$C13A], a                               ; $484F: $EA $3A $C1
    ld   hl, $4666                                ; $4852: $21 $66 $46
    add  hl, bc                                   ; $4855: $09
    ld   a, [hl]                                  ; $4856: $7E
    ld   [$C139], a                               ; $4857: $EA $39 $C1
    ld   hl, $467E                                ; $485A: $21 $7E $46
    add  hl, bc                                   ; $485D: $09
    ld   a, [hl]                                  ; $485E: $7E
    ld   [$C13C], a                               ; $485F: $EA $3C $C1
    ld   hl, $4696                                ; $4862: $21 $96 $46
    add  hl, bc                                   ; $4865: $09
    ld   a, [hl]                                  ; $4866: $7E
    ld   [$C13B], a                               ; $4867: $EA $3B $C1
    ld   hl, Data_002_45BE                        ; $486A: $21 $BE $45
    add  hl, bc                                   ; $486D: $09
    ld   a, [hl]                                  ; $486E: $7E
    and  a                                        ; $486F: $A7
    jr   z, jr_002_48AD                           ; $4870: $28 $3B

    ld   a, [wIsUsingShield]                      ; $4872: $FA $5B $C1
    and  a                                        ; $4875: $A7
    jr   z, jr_002_487E                           ; $4876: $28 $06

    ldh  a, [hFrameCounter]                       ; $4878: $F0 $E7
    and  $01                                      ; $487A: $E6 $01
    jr   nz, jr_002_48AD                          ; $487C: $20 $2F

jr_002_487E:
    ld   a, [$C13A]                               ; $487E: $FA $3A $C1
    add  [hl]                                     ; $4881: $86
    ld   hl, hLinkPositionX                       ; $4882: $21 $98 $FF
    add  [hl]                                     ; $4885: $86
    ld   [$C140], a                               ; $4886: $EA $40 $C1
    ld   hl, $45D6                                ; $4889: $21 $D6 $45
    add  hl, bc                                   ; $488C: $09
    ld   a, [hl]                                  ; $488D: $7E
    ld   [$C141], a                               ; $488E: $EA $41 $C1
    ld   a, [$C139]                               ; $4891: $FA $39 $C1
    ld   hl, $45EE                                ; $4894: $21 $EE $45
    add  hl, bc                                   ; $4897: $09
    add  [hl]                                     ; $4898: $86
    ld   hl, $C145                                ; $4899: $21 $45 $C1
    add  [hl]                                     ; $489C: $86
    ld   [$C142], a                               ; $489D: $EA $42 $C1
    ld   hl, $4606                                ; $48A0: $21 $06 $46
    add  hl, bc                                   ; $48A3: $09
    ld   a, [hl]                                  ; $48A4: $7E
    ld   [$C143], a                               ; $48A5: $EA $43 $C1
    ld   a, $01                                   ; $48A8: $3E $01
    ld   [$C5B0], a                               ; $48AA: $EA $B0 $C5

jr_002_48AD:
    jp   $15A7                                    ; $48AD: $C3 $A7 $15

label_002_48B0::
    xor  a                                        ; $48B0: $AF
    ld   [$C1AC], a                               ; $48B1: $EA $AC $C1
    ld   a, [$C14A]                               ; $48B4: $FA $4A $C1
    and  a                                        ; $48B7: $A7
    jr   nz, jr_002_48C4                          ; $48B8: $20 $0A

    xor  a                                        ; $48BA: $AF
    ld   [$C137], a                               ; $48BB: $EA $37 $C1
    ld   [wC16A], a                               ; $48BE: $EA $6A $C1
    ld   [wIsUsingSpinAttack], a                  ; $48C1: $EA $21 $C1

jr_002_48C4:
    ret                                           ; $48C4: $C9

Data_002_48C5::
    db   $00, $10, $F0, $00, $00, $0C, $F4, $00, $00, $0C, $F4, $00, $00, $00, $00, $00
    db   $00, $14, $EC, $00, $00, $0F, $F1, $00, $00, $0F, $F1, $00, $00, $00, $00, $00
    db   $00, $00, $00, $00, $F0, $F4, $F4, $00, $10, $0C, $0C, $00, $00, $00, $00, $00
    db   $00, $00, $00, $00, $EC, $F1, $F1, $00, $14, $0F, $0F, $00, $00, $00, $00, $00
    db   $0F, $00, $01, $0F, $02, $0F, $0F, $0F, $03, $0F, $0F, $0A, $0B, $06, $07, $04
    db   $05, $00, $01, $2C, $2D, $06, $07, $34, $35, $22, $23, $2A, $2B, $28, $29, $30
    db   $31, $24, $25, $2E, $2F, $06, $07, $34, $35, $22, $23, $2A, $2B, $28, $29, $32
    db   $33, $26, $27, $20, $21, $1E, $1F, $1C, $1D, $1A, $1B, $3E, $3F, $40, $41, $42
    db   $43, $44, $45, $46, $47, $48, $49, $4A, $4B, $4C, $4D, $4E, $4F, $4E, $4F, $4E
    db   $4F, $4E, $4F, $5B, $5C, $58, $59, $5B, $5C, $58, $59

    ld   a, $02                                   ; $4960: $3E $02
    ld   [$C1C4], a                               ; $4962: $EA $C4 $C1
    ldh  a, [$FF9C]                               ; $4965: $F0 $9C
    and  a                                        ; $4967: $A7
    jr   nz, jr_002_49AA                          ; $4968: $20 $40

    ldh  a, [hLinkPositionY]                      ; $496A: $F0 $99
    add  $10                                      ; $496C: $C6 $10
    ldh  [hLinkPositionY], a                      ; $496E: $E0 $99
    ldh  [$FFA0], a                               ; $4970: $E0 $A0
    ldh  a, [$FFA2]                               ; $4972: $F0 $A2
    add  $10                                      ; $4974: $C6 $10
    ldh  [$FFA2], a                               ; $4976: $E0 $A2

jr_002_4978:
    ld   a, $FF                                   ; $4978: $3E $FF
    ldh  [$FF9B], a                               ; $497A: $E0 $9B
    xor  a                                        ; $497C: $AF
    ldh  [hFF9A], a                               ; $497D: $E0 $9A
    ldh  a, [hLinkPositionY]                      ; $497F: $F0 $99
    add  $08                                      ; $4981: $C6 $08
    ldh  [hLinkPositionY], a                      ; $4983: $E0 $99
    ldh  [$FFA0], a                               ; $4985: $E0 $A0
    ldh  a, [$FFA2]                               ; $4987: $F0 $A2
    add  $08                                      ; $4989: $C6 $08
    ldh  [$FFA2], a                               ; $498B: $E0 $A2
    call label_002_6E45                           ; $498D: $CD $45 $6E
    ldh  a, [$FFAF]                               ; $4990: $F0 $AF
    cp   $E1                                      ; $4992: $FE $E1
    jr   z, jr_002_4978                           ; $4994: $28 $E2

    cp   $61                                      ; $4996: $FE $61
    jr   z, jr_002_49A0                           ; $4998: $28 $06

    ld   a, [$C133]                               ; $499A: $FA $33 $C1
    and  a                                        ; $499D: $A7
    jr   nz, jr_002_4978                          ; $499E: $20 $D8

jr_002_49A0:
    ld   a, $01                                   ; $49A0: $3E $01
    ldh  [$FF9C], a                               ; $49A2: $E0 $9C
    ldh  a, [hLinkPositionY]                      ; $49A4: $F0 $99
    sub  $03                                      ; $49A6: $D6 $03
    ldh  [hLinkPositionY], a                      ; $49A8: $E0 $99

jr_002_49AA:
    call func_002_44FA                            ; $49AA: $CD $FA $44
    ldh  a, [$FFA2]                               ; $49AD: $F0 $A2
    and  a                                        ; $49AF: $A7
    jr   nz, jr_002_49B6                          ; $49B0: $20 $04

    xor  a                                        ; $49B2: $AF
    ld   [wLinkMotionState], a                    ; $49B3: $EA $1C $C1

jr_002_49B6:
    ld   a, $01                                   ; $49B6: $3E $01
    ld   [$C146], a                               ; $49B8: $EA $46 $C1
    call $1177                                    ; $49BB: $CD $77 $11
    call func_002_478C                            ; $49BE: $CD $8C $47
    ld   a, [$C137]                               ; $49C1: $FA $37 $C1
    ld   [wC16A], a                               ; $49C4: $EA $6A $C1
    jp   label_1794                               ; $49C7: $C3 $94 $17

    ld   bc, $0100                                ; $49CA: $01 $00 $01
    nop                                           ; $49CD: $00
    nop                                           ; $49CE: $00
    ld   bc, $0100                                ; $49CF: $01 $00 $01
    ld   bc, $0001                                ; $49D2: $01 $01 $00
    nop                                           ; $49D5: $00
    nop                                           ; $49D6: $00
    nop                                           ; $49D7: $00
    ld   bc, $0101                                ; $49D8: $01 $01 $01
    nop                                           ; $49DB: $00
    ld   bc, $0000                                ; $49DC: $01 $00 $00
    ld   bc, $0100                                ; $49DF: $01 $00 $01
    ld   bc, $0001                                ; $49E2: $01 $01 $00
    nop                                           ; $49E5: $00
    nop                                           ; $49E6: $00
    nop                                           ; $49E7: $00
    ld   bc, $0001                                ; $49E8: $01 $01 $00
    ld   bc, $0101                                ; $49EB: $01 $01 $01
    ld   bc, $0100                                ; $49EE: $01 $00 $01
    ld   bc, $0101                                ; $49F1: $01 $01 $01
    nop                                           ; $49F4: $00
    ld   bc, $0101                                ; $49F5: $01 $01 $01
    ld   bc, $0100                                ; $49F8: $01 $00 $01
    nop                                           ; $49FB: $00
    nop                                           ; $49FC: $00
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    ld   bc, $0000                                ; $49FF: $01 $00 $00
    nop                                           ; $4A02: $00
    nop                                           ; $4A03: $00
    ld   bc, $0000                                ; $4A04: $01 $00 $00
    nop                                           ; $4A07: $00
    nop                                           ; $4A08: $00
    ld   bc, $0100                                ; $4A09: $01 $00 $01
    ld   bc, $0100                                ; $4A0C: $01 $00 $01
    nop                                           ; $4A0F: $00
    nop                                           ; $4A10: $00
    ld   bc, $F808                                ; $4A11: $01 $08 $F8
    ld   b, $01                                   ; $4A14: $06 $01

func_002_4A16::
    ld   a, [wC166]                               ; $4A16: $FA $66 $C1
    and  a                                        ; $4A19: $A7
    ret  z                                        ; $4A1A: $C8

    ld   hl, $FFA1                                ; $4A1B: $21 $A1 $FF
    ld   [hl], $02                                ; $4A1E: $36 $02
    cp   $FF                                      ; $4A20: $FE $FF
    jr   nz, jr_002_4A7C                          ; $4A22: $20 $58

    ld   a, [$D210]                               ; $4A24: $FA $10 $D2
    add  $01                                      ; $4A27: $C6 $01
    ld   [$D210], a                               ; $4A29: $EA $10 $D2
    ld   a, [$D211]                               ; $4A2C: $FA $11 $D2
    adc  $00                                      ; $4A2F: $CE $00
    ld   [$D211], a                               ; $4A31: $EA $11 $D2
    cp   $08                                      ; $4A34: $FE $08
    jr   nz, jr_002_4A53                          ; $4A36: $20 $1B

    ld   a, [$D210]                               ; $4A38: $FA $10 $D2
    cp   $D0                                      ; $4A3B: $FE $D0
    jr   nz, jr_002_4A53                          ; $4A3D: $20 $14

    xor  a                                        ; $4A3F: $AF
    ld   [wC166], a                               ; $4A40: $EA $66 $C1
    ld   [wC167], a                               ; $4A43: $EA $67 $C1
    ld   a, $03                                   ; $4A46: $3E $03
    ld   [$C5A3], a                               ; $4A48: $EA $A3 $C5
    ld   a, [$D465]                               ; $4A4B: $FA $65 $D4
    cp   $47                                      ; $4A4E: $FE $47
    ret  z                                        ; $4A50: $C8

    jr   jr_002_4A6C                              ; $4A51: $18 $19

jr_002_4A53:
    ld   a, [$D465]                               ; $4A53: $FA $65 $D4
    cp   $47                                      ; $4A56: $FE $47
    jr   z, jr_002_4A7A                           ; $4A58: $28 $20

    ldh  a, [hFFCC]                               ; $4A5A: $F0 $CC
    and  $30                                      ; $4A5C: $E6 $30
    jr   z, jr_002_4A7A                           ; $4A5E: $28 $1A

    xor  a                                        ; $4A60: $AF
    ld   [wC166], a                               ; $4A61: $EA $66 $C1
    ld   [wC167], a                               ; $4A64: $EA $67 $C1
    ld   a, $03                                   ; $4A67: $3E $03
    ld   [$C5A3], a                               ; $4A69: $EA $A3 $C5

jr_002_4A6C:
    ld   a, [$D461]                               ; $4A6C: $FA $61 $D4
    ld   e, a                                     ; $4A6F: $5F
    ld   d, b                                     ; $4A70: $50
    ld   hl, wEntitiesWalkingTable                ; $4A71: $21 $90 $C2
    add  hl, de                                   ; $4A74: $19
    ld   [hl], $00                                ; $4A75: $36 $00
    jp   label_27DD                               ; $4A77: $C3 $DD $27

jr_002_4A7A:
    jr   jr_002_4AD1                              ; $4A7A: $18 $55

jr_002_4A7C:
    call label_178E                               ; $4A7C: $CD $8E $17
    call label_CAF                                ; $4A7F: $CD $AF $0C
    ld   hl, wC166                                ; $4A82: $21 $66 $C1
    dec  [hl]                                     ; $4A85: $35
    jr   nz, jr_002_4AD1                          ; $4A86: $20 $49

    ld   a, [wIsMarinFollowingLink]               ; $4A88: $FA $73 $DB
    and  a                                        ; $4A8B: $A7
    jr   z, jr_002_4AA2                           ; $4A8C: $28 $14

    ld   a, [$DB4A]                               ; $4A8E: $FA $4A $DB
    cp   $01                                      ; $4A91: $FE $01
    jr   z, jr_002_4AB2                           ; $4A93: $28 $1D

    ld   a, [wActiveRoom]                         ; $4A95: $FA $A5 $DB
    and  a                                        ; $4A98: $A7
    jr   nz, jr_002_4AB2                          ; $4A99: $20 $17

    ld   a, $77                                   ; $4A9B: $3E $77
    call label_237C                               ; $4A9D: $CD $7C $23
    jr   jr_002_4AB2                              ; $4AA0: $18 $10

jr_002_4AA2:
    ld   a, [$DB49]                               ; $4AA2: $FA $49 $DB
    and  a                                        ; $4AA5: $A7
    jr   nz, jr_002_4AB2                          ; $4AA6: $20 $0A

    ld   a, $8E                                   ; $4AA8: $3E $8E
    call label_2385                               ; $4AAA: $CD $85 $23
    xor  a                                        ; $4AAD: $AF
    ld   [wC167], a                               ; $4AAE: $EA $67 $C1
    ret                                           ; $4AB1: $C9

jr_002_4AB2:
    xor  a                                        ; $4AB2: $AF
    ld   [wC167], a                               ; $4AB3: $EA $67 $C1
    ld   a, [$DB4A]                               ; $4AB6: $FA $4A $DB
    cp   $01                                      ; $4AB9: $FE $01
    jr   nz, jr_002_4AD0                          ; $4ABB: $20 $13

    ld   a, $02                                   ; $4ABD: $3E $02
    ld   [wTransitionSfx], a                      ; $4ABF: $EA $7F $C1
    xor  a                                        ; $4AC2: $AF
    ld   [wTransitionSfxFrameCount], a            ; $4AC3: $EA $80 $C1
    ld   [wTransitionSequenceCounter], a          ; $4AC6: $EA $6B $C1
    ld   [wC16C], a                               ; $4AC9: $EA $6C $C1
    ld   a, $2C                                   ; $4ACC: $3E $2C
    ldh  [$FFF2], a                               ; $4ACE: $E0 $F2

jr_002_4AD0:
    ret                                           ; $4AD0: $C9

jr_002_4AD1:
    ld   a, [$C5A4]                               ; $4AD1: $FA $A4 $C5
    inc  a                                        ; $4AD4: $3C
    ld   [$C5A4], a                               ; $4AD5: $EA $A4 $C5
    cp   $38                                      ; $4AD8: $FE $38
    jr   c, jr_002_4AE8                           ; $4ADA: $38 $0C

    xor  a                                        ; $4ADC: $AF
    ld   [$C5A4], a                               ; $4ADD: $EA $A4 $C5
    ld   a, [$C5A5]                               ; $4AE0: $FA $A5 $C5
    xor  $01                                      ; $4AE3: $EE $01
    ld   [$C5A5], a                               ; $4AE5: $EA $A5 $C5

jr_002_4AE8:
    ld   a, [$C5A5]                               ; $4AE8: $FA $A5 $C5
    ld   e, $75                                   ; $4AEB: $1E $75
    and  a                                        ; $4AED: $A7
    jr   nz, jr_002_4AF1                          ; $4AEE: $20 $01

    inc  e                                        ; $4AF0: $1C

jr_002_4AF1:
    ld   a, e                                     ; $4AF1: $7B
    ldh  [hLinkAnimationState], a                 ; $4AF2: $E0 $9D
    ld   a, $02                                   ; $4AF4: $3E $02
    ld   [wC167], a                               ; $4AF6: $EA $67 $C1
    ld   [wC111], a                               ; $4AF9: $EA $11 $C1
    ld   a, [wC166]                               ; $4AFC: $FA $66 $C1
    cp   $10                                      ; $4AFF: $FE $10
    ret  c                                        ; $4B01: $D8

    ld   a, [$C5A4]                               ; $4B02: $FA $A4 $C5
    cp   $14                                      ; $4B05: $FE $14
    jr   nz, jr_002_4B40                          ; $4B07: $20 $37

    ld   a, $C9                                   ; $4B09: $3E $C9
    call label_3B86                               ; $4B0B: $CD $86 $3B
    jr   c, jr_002_4B40                           ; $4B0E: $38 $30

    ldh  a, [hLinkPositionY]                      ; $4B10: $F0 $99
    ld   hl, wEntitiesPosYTable                   ; $4B12: $21 $10 $C2
    add  hl, de                                   ; $4B15: $19
    sub  $08                                      ; $4B16: $D6 $08
    ld   [hl], a                                  ; $4B18: $77
    ld   a, [$C5A5]                               ; $4B19: $FA $A5 $C5
    ld   c, a                                     ; $4B1C: $4F
    ld   b, d                                     ; $4B1D: $42
    ld   hl, $4A12                                ; $4B1E: $21 $12 $4A
    add  hl, bc                                   ; $4B21: $09
    ldh  a, [hLinkPositionX]                      ; $4B22: $F0 $98
    add  [hl]                                     ; $4B24: $86
    ld   hl, wEntity0PosX                         ; $4B25: $21 $00 $C2
    add  hl, de                                   ; $4B28: $19
    ld   [hl], a                                  ; $4B29: $77
    ld   hl, $4A14                                ; $4B2A: $21 $14 $4A
    add  hl, bc                                   ; $4B2D: $09
    ld   a, [hl]                                  ; $4B2E: $7E
    ld   hl, $C240                                ; $4B2F: $21 $40 $C2
    add  hl, de                                   ; $4B32: $19
    ld   [hl], a                                  ; $4B33: $77
    ld   hl, $C250                                ; $4B34: $21 $50 $C2
    add  hl, de                                   ; $4B37: $19
    ld   [hl], $FC                                ; $4B38: $36 $FC
    ld   hl, $C3D0                                ; $4B3A: $21 $D0 $C3
    add  hl, de                                   ; $4B3D: $19
    ld   [hl], $40                                ; $4B3E: $36 $40

jr_002_4B40:
    ret                                           ; $4B40: $C9

    ld   [hl], c                                  ; $4B41: $71
    ld   [hl], d                                  ; $4B42: $72
    ld   l, a                                     ; $4B43: $6F
    ld   [hl], b                                  ; $4B44: $70
    ld   [hl], e                                  ; $4B45: $73
    ld   [hl], h                                  ; $4B46: $74
    ld   l, l                                     ; $4B47: $6D
    ld   l, [hl]                                  ; $4B48: $6E

func_002_4B49::
    ld   a, [$C1C7]                               ; $4B49: $FA $C7 $C1
    and  a                                        ; $4B4C: $A7
    jr   z, jr_002_4BBF                           ; $4B4D: $28 $70

    ldh  a, [hMapTileset]                         ; $4B4F: $F0 $F7
    cp   $08                                      ; $4B51: $FE $08
    jr   nz, jr_002_4B64                          ; $4B53: $20 $0F

    ld   a, [$D219]                               ; $4B55: $FA $19 $D2
    cp   $02                                      ; $4B58: $FE $02
    jr   nz, jr_002_4B64                          ; $4B5A: $20 $08

    call $134B                                    ; $4B5C: $CD $4B $13
    ld   a, $01                                   ; $4B5F: $3E $01
    ld   [$C5B0], a                               ; $4B61: $EA $B0 $C5

jr_002_4B64:
    ld   hl, $FFA1                                ; $4B64: $21 $A1 $FF
    ld   [hl], $01                                ; $4B67: $36 $01
    call label_178E                               ; $4B69: $CD $8E $17
    ld   [$C137], a                               ; $4B6C: $EA $37 $C1
    ld   [wIsUsingSpinAttack], a                  ; $4B6F: $EA $21 $C1
    ld   [$C122], a                               ; $4B72: $EA $22 $C1
    ld   a, [$C1C8]                               ; $4B75: $FA $C8 $C1
    inc  a                                        ; $4B78: $3C
    ld   [$C1C8], a                               ; $4B79: $EA $C8 $C1
    cp   $10                                      ; $4B7C: $FE $10
    jr   nz, jr_002_4B85                          ; $4B7E: $20 $05

    push af                                       ; $4B80: $F5
    call func_002_4BC8                            ; $4B81: $CD $C8 $4B
    pop  af                                       ; $4B84: $F1

jr_002_4B85:
    cp   $18                                      ; $4B85: $FE $18
    jr   nz, jr_002_4BA9                          ; $4B87: $20 $20

    ld   a, [$C1C7]                               ; $4B89: $FA $C7 $C1
    cp   $02                                      ; $4B8C: $FE $02
    jr   nz, jr_002_4BA1                          ; $4B8E: $20 $11

    ld   a, [wIsMarinFollowingLink]               ; $4B90: $FA $73 $DB
    and  a                                        ; $4B93: $A7
    jr   z, jr_002_4BA1                           ; $4B94: $28 $0B

    ld   a, [wDialogState]                        ; $4B96: $FA $9F $C1
    and  a                                        ; $4B99: $A7
    jr   nz, jr_002_4BA1                          ; $4B9A: $20 $05

    ld   a, $79                                   ; $4B9C: $3E $79
    call label_237C                               ; $4B9E: $CD $7C $23

jr_002_4BA1:
    xor  a                                        ; $4BA1: $AF
    ld   [$C1C7], a                               ; $4BA2: $EA $C7 $C1
    ld   [$C1AC], a                               ; $4BA5: $EA $AC $C1
    ret                                           ; $4BA8: $C9

jr_002_4BA9:
    rra                                           ; $4BA9: $1F
    rra                                           ; $4BAA: $1F
    rra                                           ; $4BAB: $1F
    rra                                           ; $4BAC: $1F
    and  $01                                      ; $4BAD: $E6 $01
    ld   e, a                                     ; $4BAF: $5F
    ldh  a, [hFF9E]                               ; $4BB0: $F0 $9E
    sla  a                                        ; $4BB2: $CB $27
    add  e                                        ; $4BB4: $83
    ld   e, a                                     ; $4BB5: $5F
    ld   d, $00                                   ; $4BB6: $16 $00
    ld   hl, $4B41                                ; $4BB8: $21 $41 $4B
    add  hl, de                                   ; $4BBB: $19
    ld   a, [hl]                                  ; $4BBC: $7E
    ldh  [hLinkAnimationState], a                 ; $4BBD: $E0 $9D

jr_002_4BBF:
    ret                                           ; $4BBF: $C9

    inc  d                                        ; $4BC0: $14
    db   $fc                                      ; $4BC1: $FC
    ld   [$0A08], sp                              ; $4BC2: $08 $08 $0A
    ld   a, [bc]                                  ; $4BC5: $0A
    db   $fc                                      ; $4BC6: $FC
    inc  d                                        ; $4BC7: $14

func_002_4BC8::
    call func_002_4D20                            ; $4BC8: $CD $20 $4D
    ret  c                                        ; $4BCB: $D8

    ld   a, $02                                   ; $4BCC: $3E $02
    ld   [$C1C7], a                               ; $4BCE: $EA $C7 $C1
    jp   label_002_4C92                           ; $4BD1: $C3 $92 $4C

func_002_4BD4::
    ldh  a, [$FFCF]                               ; $4BD4: $F0 $CF
    ld   [hl+], a                                 ; $4BD6: $22
    ldh  a, [$FFD0]                               ; $4BD7: $F0 $D0
    ld   [hl+], a                                 ; $4BD9: $22
    ld   a, $81                                   ; $4BDA: $3E $81
    ld   [hl+], a                                 ; $4BDC: $22
    ld   a, [wActiveRoom]                         ; $4BDD: $FA $A5 $DB
    and  a                                        ; $4BE0: $A7
    jr   z, jr_002_4BFA                           ; $4BE1: $28 $17

    ld   a, $04                                   ; $4BE3: $3E $04
    ld   [hl+], a                                 ; $4BE5: $22
    ld   a, $06                                   ; $4BE6: $3E $06
    ld   [hl+], a                                 ; $4BE8: $22
    ldh  a, [$FFCF]                               ; $4BE9: $F0 $CF
    ld   [hl+], a                                 ; $4BEB: $22
    ldh  a, [$FFD0]                               ; $4BEC: $F0 $D0
    inc  a                                        ; $4BEE: $3C
    ld   [hl+], a                                 ; $4BEF: $22
    ld   a, $81                                   ; $4BF0: $3E $81
    ld   [hl+], a                                 ; $4BF2: $22
    ld   a, $05                                   ; $4BF3: $3E $05
    ld   [hl+], a                                 ; $4BF5: $22
    ld   a, $07                                   ; $4BF6: $3E $07
    jr   jr_002_4C0F                              ; $4BF8: $18 $15

jr_002_4BFA:
    ld   a, $6A                                   ; $4BFA: $3E $6A
    ld   [hl+], a                                 ; $4BFC: $22
    ld   a, $7A                                   ; $4BFD: $3E $7A
    ld   [hl+], a                                 ; $4BFF: $22
    ldh  a, [$FFCF]                               ; $4C00: $F0 $CF
    ld   [hl+], a                                 ; $4C02: $22
    ldh  a, [$FFD0]                               ; $4C03: $F0 $D0
    inc  a                                        ; $4C05: $3C
    ld   [hl+], a                                 ; $4C06: $22
    ld   a, $81                                   ; $4C07: $3E $81
    ld   [hl+], a                                 ; $4C09: $22
    ld   a, $6B                                   ; $4C0A: $3E $6B
    ld   [hl+], a                                 ; $4C0C: $22
    ld   a, $7B                                   ; $4C0D: $3E $7B

jr_002_4C0F:
    ld   [hl+], a                                 ; $4C0F: $22
    ld   a, $00                                   ; $4C10: $3E $00
    ld   [hl+], a                                 ; $4C12: $22
    ret                                           ; $4C13: $C9

func_002_4C14::
    push de                                       ; $4C14: $D5
    push hl                                       ; $4C15: $E5
    ld   hl, $DC91                                ; $4C16: $21 $91 $DC
    ld   a, [$DC90]                               ; $4C19: $FA $90 $DC
    ld   e, a                                     ; $4C1C: $5F
    add  $0A                                      ; $4C1D: $C6 $0A
    ld   [$DC90], a                               ; $4C1F: $EA $90 $DC
    add  hl, de                                   ; $4C22: $19
    ld   e, l                                     ; $4C23: $5D
    ld   d, h                                     ; $4C24: $54
    pop  hl                                       ; $4C25: $E1
    ldh  a, [$FFCF]                               ; $4C26: $F0 $CF
    ld   [hl+], a                                 ; $4C28: $22
    ld   [de], a                                  ; $4C29: $12
    inc  de                                       ; $4C2A: $13
    ldh  a, [$FFD0]                               ; $4C2B: $F0 $D0
    ld   [hl+], a                                 ; $4C2D: $22
    ld   [de], a                                  ; $4C2E: $12
    inc  de                                       ; $4C2F: $13
    ld   a, $81                                   ; $4C30: $3E $81
    ld   [hl+], a                                 ; $4C32: $22
    ld   [de], a                                  ; $4C33: $12
    inc  de                                       ; $4C34: $13
    ld   a, [wActiveRoom]                         ; $4C35: $FA $A5 $DB
    and  a                                        ; $4C38: $A7
    jr   z, jr_002_4C64                           ; $4C39: $28 $29

    ld   a, $04                                   ; $4C3B: $3E $04
    ld   [hl+], a                                 ; $4C3D: $22
    ld   a, $06                                   ; $4C3E: $3E $06
    ld   [hl+], a                                 ; $4C40: $22
    ld   a, $05                                   ; $4C41: $3E $05
    ld   [de], a                                  ; $4C43: $12
    inc  de                                       ; $4C44: $13
    ld   [de], a                                  ; $4C45: $12
    inc  de                                       ; $4C46: $13
    ldh  a, [$FFCF]                               ; $4C47: $F0 $CF
    ld   [hl+], a                                 ; $4C49: $22
    ld   [de], a                                  ; $4C4A: $12
    inc  de                                       ; $4C4B: $13
    ldh  a, [$FFD0]                               ; $4C4C: $F0 $D0
    inc  a                                        ; $4C4E: $3C
    ld   [hl+], a                                 ; $4C4F: $22
    ld   [de], a                                  ; $4C50: $12
    inc  de                                       ; $4C51: $13
    ld   a, $81                                   ; $4C52: $3E $81
    ld   [hl+], a                                 ; $4C54: $22
    ld   [de], a                                  ; $4C55: $12
    inc  de                                       ; $4C56: $13
    ld   a, $05                                   ; $4C57: $3E $05
    ld   [hl+], a                                 ; $4C59: $22
    ld   a, $05                                   ; $4C5A: $3E $05
    ld   [de], a                                  ; $4C5C: $12
    inc  de                                       ; $4C5D: $13
    ld   [de], a                                  ; $4C5E: $12
    inc  de                                       ; $4C5F: $13
    ld   a, $07                                   ; $4C60: $3E $07
    jr   jr_002_4C8B                              ; $4C62: $18 $27

jr_002_4C64:
    ld   a, $6A                                   ; $4C64: $3E $6A
    ld   [hl+], a                                 ; $4C66: $22
    ld   a, $7A                                   ; $4C67: $3E $7A
    ld   [hl+], a                                 ; $4C69: $22
    ld   a, $03                                   ; $4C6A: $3E $03
    ld   [de], a                                  ; $4C6C: $12
    inc  de                                       ; $4C6D: $13
    ld   [de], a                                  ; $4C6E: $12
    inc  de                                       ; $4C6F: $13
    ldh  a, [$FFCF]                               ; $4C70: $F0 $CF
    ld   [hl+], a                                 ; $4C72: $22
    ld   [de], a                                  ; $4C73: $12
    inc  de                                       ; $4C74: $13
    ldh  a, [$FFD0]                               ; $4C75: $F0 $D0
    inc  a                                        ; $4C77: $3C
    ld   [hl+], a                                 ; $4C78: $22
    ld   [de], a                                  ; $4C79: $12
    inc  de                                       ; $4C7A: $13
    ld   a, $81                                   ; $4C7B: $3E $81
    ld   [hl+], a                                 ; $4C7D: $22
    ld   [de], a                                  ; $4C7E: $12
    inc  de                                       ; $4C7F: $13
    ld   a, $6B                                   ; $4C80: $3E $6B
    ld   [hl+], a                                 ; $4C82: $22
    ld   a, $03                                   ; $4C83: $3E $03
    ld   [de], a                                  ; $4C85: $12
    inc  de                                       ; $4C86: $13
    ld   [de], a                                  ; $4C87: $12
    inc  de                                       ; $4C88: $13
    ld   a, $7B                                   ; $4C89: $3E $7B

jr_002_4C8B:
    ld   [hl+], a                                 ; $4C8B: $22
    ld   a, $00                                   ; $4C8C: $3E $00
    ld   [hl+], a                                 ; $4C8E: $22
    ld   [de], a                                  ; $4C8F: $12
    pop  de                                       ; $4C90: $D1
    ret                                           ; $4C91: $C9

label_002_4C92::
    ldh  a, [$FFD8]                               ; $4C92: $F0 $D8
    ld   e, a                                     ; $4C94: $5F
    ld   d, $00                                   ; $4C95: $16 $00
    ld   hl, wTileMap                             ; $4C97: $21 $11 $D7
    add  hl, de                                   ; $4C9A: $19
    ld   [hl], $CC                                ; $4C9B: $36 $CC
    ld   a, $82                                   ; $4C9D: $3E $82
    call label_B2F                                ; $4C9F: $CD $2F $0B
    call label_2887                               ; $4CA2: $CD $87 $28
    ld   hl, wRequestDestinationHigh              ; $4CA5: $21 $01 $D6
    ld   a, [wRequests]                           ; $4CA8: $FA $00 $D6
    ld   e, a                                     ; $4CAB: $5F
    add  $0A                                      ; $4CAC: $C6 $0A
    ld   [wRequests], a                           ; $4CAE: $EA $00 $D6
    ld   d, $00                                   ; $4CB1: $16 $00
    add  hl, de                                   ; $4CB3: $19
    ldh  a, [hIsGBC]                              ; $4CB4: $F0 $FE
    and  a                                        ; $4CB6: $A7
    jr   nz, jr_002_4CBE                          ; $4CB7: $20 $05

    call func_002_4BD4                            ; $4CB9: $CD $D4 $4B
    jr   jr_002_4CC1                              ; $4CBC: $18 $03

jr_002_4CBE:
    call func_002_4C14                            ; $4CBE: $CD $14 $4C

jr_002_4CC1:
    call GetRandomByte                            ; $4CC1: $CD $0D $28
    and  $07                                      ; $4CC4: $E6 $07
    jr   nz, jr_002_4D1F                          ; $4CC6: $20 $57

    ld   a, [wActiveRoom]                         ; $4CC8: $FA $A5 $DB
    and  a                                        ; $4CCB: $A7
    jr   nz, jr_002_4CD3                          ; $4CCC: $20 $05

    ldh  a, [hMapIndex]                           ; $4CCE: $F0 $F6
    cp   $0E                                      ; $4CD0: $FE $0E
    ret  z                                        ; $4CD2: $C8

jr_002_4CD3:
    call GetRandomByte                            ; $4CD3: $CD $0D $28
    rra                                           ; $4CD6: $1F
    ld   a, $2E                                   ; $4CD7: $3E $2E
    jr   nc, jr_002_4CDD                          ; $4CD9: $30 $02

    ld   a, $2D                                   ; $4CDB: $3E $2D

jr_002_4CDD:
    call label_3B86                               ; $4CDD: $CD $86 $3B
    jr   c, jr_002_4D1F                           ; $4CE0: $38 $3D

    ld   hl, wEntity0PosX                         ; $4CE2: $21 $00 $C2
    add  hl, de                                   ; $4CE5: $19
    ldh  a, [$FFCE]                               ; $4CE6: $F0 $CE
    add  $08                                      ; $4CE8: $C6 $08
    ld   [hl], a                                  ; $4CEA: $77
    ld   hl, wEntitiesPosYTable                   ; $4CEB: $21 $10 $C2
    add  hl, de                                   ; $4CEE: $19
    ldh  a, [$FFCD]                               ; $4CEF: $F0 $CD
    add  $10                                      ; $4CF1: $C6 $10
    ld   [hl], a                                  ; $4CF3: $77
    ld   hl, $C450                                ; $4CF4: $21 $50 $C4
    add  hl, de                                   ; $4CF7: $19
    ld   [hl], $80                                ; $4CF8: $36 $80
    ld   hl, wEntitiesUnknowTableF                ; $4CFA: $21 $F0 $C2
    add  hl, de                                   ; $4CFD: $19
    ld   [hl], $18                                ; $4CFE: $36 $18
    ld   hl, $C320                                ; $4D00: $21 $20 $C3
    add  hl, de                                   ; $4D03: $19
    ld   [hl], $20                                ; $4D04: $36 $20
    ld   c, e                                     ; $4D06: $4B
    ld   b, d                                     ; $4D07: $42
    ld   a, $0C                                   ; $4D08: $3E $0C
    call label_3BAA                               ; $4D0A: $CD $AA $3B
    ldh  a, [$FFD7]                               ; $4D0D: $F0 $D7
    cpl                                           ; $4D0F: $2F
    inc  a                                        ; $4D10: $3C
    ld   hl, $C250                                ; $4D11: $21 $50 $C2
    add  hl, bc                                   ; $4D14: $09
    ld   [hl], a                                  ; $4D15: $77
    ldh  a, [$FFD8]                               ; $4D16: $F0 $D8
    cpl                                           ; $4D18: $2F
    inc  a                                        ; $4D19: $3C
    ld   hl, $C240                                ; $4D1A: $21 $40 $C2
    add  hl, bc                                   ; $4D1D: $09
    ld   [hl], a                                  ; $4D1E: $77

jr_002_4D1F:
    ret                                           ; $4D1F: $C9

func_002_4D20::
    ld   a, [wC15C]                               ; $4D20: $FA $5C $C1
    ld   hl, $FFA2                                ; $4D23: $21 $A2 $FF
    or   [hl]                                     ; $4D26: $B6
    ld   hl, wLinkMotionState                     ; $4D27: $21 $1C $C1
    or   [hl]                                     ; $4D2A: $B6
    ld   hl, $FFF9                                ; $4D2B: $21 $F9 $FF
    or   [hl]                                     ; $4D2E: $B6
    jp   nz, label_002_4D95                       ; $4D2F: $C2 $95 $4D

    ldh  a, [hFF9E]                               ; $4D32: $F0 $9E
    ld   e, a                                     ; $4D34: $5F
    ld   d, $00                                   ; $4D35: $16 $00
    ld   hl, $4BC0                                ; $4D37: $21 $C0 $4B
    add  hl, de                                   ; $4D3A: $19
    ldh  a, [hLinkPositionX]                      ; $4D3B: $F0 $98
    add  [hl]                                     ; $4D3D: $86
    sub  $08                                      ; $4D3E: $D6 $08
    and  $F0                                      ; $4D40: $E6 $F0
    ldh  [$FFCE], a                               ; $4D42: $E0 $CE
    swap a                                        ; $4D44: $CB $37
    ld   c, a                                     ; $4D46: $4F
    ld   hl, $4BC4                                ; $4D47: $21 $C4 $4B
    add  hl, de                                   ; $4D4A: $19
    ldh  a, [hLinkPositionY]                      ; $4D4B: $F0 $99
    add  [hl]                                     ; $4D4D: $86
    sub  $10                                      ; $4D4E: $D6 $10
    and  $F0                                      ; $4D50: $E6 $F0
    ldh  [$FFCD], a                               ; $4D52: $E0 $CD
    or   c                                        ; $4D54: $B1
    ld   e, a                                     ; $4D55: $5F
    ldh  [$FFD8], a                               ; $4D56: $E0 $D8
    ld   hl, wTileMap                             ; $4D58: $21 $11 $D7
    add  hl, de                                   ; $4D5B: $19
    ld   a, h                                     ; $4D5C: $7C
    cp   $D7                                      ; $4D5D: $FE $D7
    jp   nz, label_002_4D95                       ; $4D5F: $C2 $95 $4D

    ld   a, [hl]                                  ; $4D62: $7E
    ldh  [$FFD7], a                               ; $4D63: $E0 $D7
    ld   e, a                                     ; $4D65: $5F
    ld   a, [wActiveRoom]                         ; $4D66: $FA $A5 $DB
    ld   d, a                                     ; $4D69: $57
    call label_2A26                               ; $4D6A: $CD $26 $2A
    cp   $00                                      ; $4D6D: $FE $00
    jr   nz, label_002_4D95                       ; $4D6F: $20 $24

    ld   a, d                                     ; $4D71: $7A
    and  a                                        ; $4D72: $A7
    jr   nz, jr_002_4D8D                          ; $4D73: $20 $18

    ldh  a, [$FFD7]                               ; $4D75: $F0 $D7
    cp   $0C                                      ; $4D77: $FE $0C
    jr   z, label_002_4D95                        ; $4D79: $28 $1A

    cp   $0D                                      ; $4D7B: $FE $0D
    jr   z, label_002_4D95                        ; $4D7D: $28 $16

    cp   $0C                                      ; $4D7F: $FE $0C
    jr   z, label_002_4D95                        ; $4D81: $28 $12

    cp   $0D                                      ; $4D83: $FE $0D
    jr   z, label_002_4D95                        ; $4D85: $28 $0E

    cp   $B9                                      ; $4D87: $FE $B9
    jr   z, label_002_4D95                        ; $4D89: $28 $0A

    jr   jr_002_4D93                              ; $4D8B: $18 $06

jr_002_4D8D:
    ldh  a, [$FFD7]                               ; $4D8D: $F0 $D7
    cp   $05                                      ; $4D8F: $FE $05
    jr   nz, label_002_4D95                       ; $4D91: $20 $02

jr_002_4D93:
    and  a                                        ; $4D93: $A7
    ret                                           ; $4D94: $C9

label_002_4D95::
    scf                                           ; $4D95: $37
    ret                                           ; $4D96: $C9

label_002_4D97::
    ldh  a, [$FFD7]                               ; $4D97: $F0 $D7
    ldh  [$FFCE], a                               ; $4D99: $E0 $CE
    swap a                                        ; $4D9B: $CB $37
    and  $0F                                      ; $4D9D: $E6 $0F
    ld   e, a                                     ; $4D9F: $5F
    ldh  a, [$FFD8]                               ; $4DA0: $F0 $D8
    ldh  [$FFCD], a                               ; $4DA2: $E0 $CD
    and  $F0                                      ; $4DA4: $E6 $F0
    or   e                                        ; $4DA6: $B3
    ld   e, a                                     ; $4DA7: $5F
    ld   d, $00                                   ; $4DA8: $16 $00
    ld   hl, wTileMap                             ; $4DAA: $21 $11 $D7
    add  hl, de                                   ; $4DAD: $19
    ld   [hl], $AE                                ; $4DAE: $36 $AE
    call label_2887                               ; $4DB0: $CD $87 $28
    ldh  a, [hIsGBC]                              ; $4DB3: $F0 $FE
    and  a                                        ; $4DB5: $A7
    jr   z, jr_002_4DCB                           ; $4DB6: $28 $13

    push bc                                       ; $4DB8: $C5
    ld   c, $AE                                   ; $4DB9: $0E $AE
    ld   b, $00                                   ; $4DBB: $06 $00
    sla  c                                        ; $4DBD: $CB $21
    rl   b                                        ; $4DBF: $CB $10
    sla  c                                        ; $4DC1: $CB $21
    rl   b                                        ; $4DC3: $CB $10
    ld   a, $02                                   ; $4DC5: $3E $02
    call $092E                                    ; $4DC7: $CD $2E $09
    pop  bc                                       ; $4DCA: $C1

jr_002_4DCB:
    ld   hl, wRequestDestinationHigh              ; $4DCB: $21 $01 $D6
    ld   a, [wRequests]                           ; $4DCE: $FA $00 $D6
    ld   e, a                                     ; $4DD1: $5F
    add  $0A                                      ; $4DD2: $C6 $0A
    ld   [wRequests], a                           ; $4DD4: $EA $00 $D6
    ld   d, $00                                   ; $4DD7: $16 $00
    add  hl, de                                   ; $4DD9: $19
    ldh  a, [$FFCF]                               ; $4DDA: $F0 $CF
    ld   [hl+], a                                 ; $4DDC: $22
    ldh  a, [$FFD0]                               ; $4DDD: $F0 $D0
    ld   [hl+], a                                 ; $4DDF: $22
    ld   a, $81                                   ; $4DE0: $3E $81
    ld   [hl+], a                                 ; $4DE2: $22
    ld   a, $76                                   ; $4DE3: $3E $76
    ld   [hl+], a                                 ; $4DE5: $22
    ld   a, $77                                   ; $4DE6: $3E $77
    ld   [hl+], a                                 ; $4DE8: $22
    ldh  a, [$FFCF]                               ; $4DE9: $F0 $CF
    ld   [hl+], a                                 ; $4DEB: $22
    ldh  a, [$FFD0]                               ; $4DEC: $F0 $D0
    inc  a                                        ; $4DEE: $3C
    ld   [hl+], a                                 ; $4DEF: $22
    ld   a, $81                                   ; $4DF0: $3E $81
    ld   [hl+], a                                 ; $4DF2: $22
    ld   a, $76                                   ; $4DF3: $3E $76
    ld   [hl+], a                                 ; $4DF5: $22
    ld   a, $77                                   ; $4DF6: $3E $77
    ld   [hl+], a                                 ; $4DF8: $22
    ld   [hl], $00                                ; $4DF9: $36 $00
    ret                                           ; $4DFB: $C9

func_002_4DFC::
    push bc                                       ; $4DFC: $C5
    push de                                       ; $4DFD: $D5
    ld   hl, $DC50                                ; $4DFE: $21 $50 $DC
    ld   c, $00                                   ; $4E01: $0E $00
    di                                            ; $4E03: $F3

jr_002_4E04:
    xor  a                                        ; $4E04: $AF
    ld   [rSVBK], a                               ; $4E05: $E0 $70
    ld   b, [hl]                                  ; $4E07: $46
    ld   a, $02                                   ; $4E08: $3E $02
    ld   [rSVBK], a                               ; $4E0A: $E0 $70
    ld   a, b                                     ; $4E0C: $78
    ld   [hl], a                                  ; $4E0D: $77
    inc  hl                                       ; $4E0E: $23
    inc  c                                        ; $4E0F: $0C
    ld   a, c                                     ; $4E10: $79
    cp   $08                                      ; $4E11: $FE $08
    jr   c, jr_002_4E04                           ; $4E13: $38 $EF

    xor  a                                        ; $4E15: $AF
    ld   [rSVBK], a                               ; $4E16: $E0 $70
    ei                                            ; $4E18: $FB
    pop  de                                       ; $4E19: $D1
    pop  bc                                       ; $4E1A: $C1
    ret                                           ; $4E1B: $C9

    rst  $38                                      ; $4E1C: $FF
    ld   b, a                                     ; $4E1D: $47
    nop                                           ; $4E1E: $00
    nop                                           ; $4E1F: $00
    inc  c                                        ; $4E20: $0C
    add  hl, sp                                   ; $4E21: $39
    db   $76                                      ; $4E22: $76
    ld   e, [hl]                                  ; $4E23: $5E
    rst  $38                                      ; $4E24: $FF
    ld   b, a                                     ; $4E25: $47
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    ld   h, a                                     ; $4E28: $67
    jr   z, jr_002_4EA1                           ; $4E29: $28 $76

    ld   e, [hl]                                  ; $4E2B: $5E

func_002_4E2C::
    push bc                                       ; $4E2C: $C5
    di                                            ; $4E2D: $F3
    ld   hl, $4E1C                                ; $4E2E: $21 $1C $4E
    add  hl, de                                   ; $4E31: $19
    ld   de, $DC88                                ; $4E32: $11 $88 $DC
    ld   c, $00                                   ; $4E35: $0E $00

jr_002_4E37:
    ld   a, [hl+]                                 ; $4E37: $2A
    ld   [de], a                                  ; $4E38: $12
    inc  de                                       ; $4E39: $13
    inc  c                                        ; $4E3A: $0C
    ld   a, c                                     ; $4E3B: $79
    cp   $08                                      ; $4E3C: $FE $08
    jr   c, jr_002_4E37                           ; $4E3E: $38 $F7

    ei                                            ; $4E40: $FB
    ld   a, $02                                   ; $4E41: $3E $02
    ld   [$DDD1], a                               ; $4E43: $EA $D1 $DD
    pop  bc                                       ; $4E46: $C1
    ret                                           ; $4E47: $C9

func_002_4E48::
    di                                            ; $4E48: $F3
    ld   hl, $DC88                                ; $4E49: $21 $88 $DC
    ld   e, $00                                   ; $4E4C: $1E $00

jr_002_4E4E:
    ld   a, $02                                   ; $4E4E: $3E $02
    ld   [rSVBK], a                               ; $4E50: $E0 $70
    ld   b, [hl]                                  ; $4E52: $46
    xor  a                                        ; $4E53: $AF
    ld   [rSVBK], a                               ; $4E54: $E0 $70
    ld   a, b                                     ; $4E56: $78
    ld   [hl], a                                  ; $4E57: $77
    inc  hl                                       ; $4E58: $23
    inc  e                                        ; $4E59: $1C
    ld   a, e                                     ; $4E5A: $7B
    cp   $08                                      ; $4E5B: $FE $08
    jr   c, jr_002_4E4E                           ; $4E5D: $38 $EF

    ei                                            ; $4E5F: $FB
    ld   a, $02                                   ; $4E60: $3E $02
    ld   [$DDD1], a                               ; $4E62: $EA $D1 $DD
    ret                                           ; $4E65: $C9

    ld   d, b                                     ; $4E66: $50
    ld   d, c                                     ; $4E67: $51
    ld   d, d                                     ; $4E68: $52
    ld   d, e                                     ; $4E69: $53
    ld   d, e                                     ; $4E6A: $53
    ld   d, h                                     ; $4E6B: $54
    ld   d, d                                     ; $4E6C: $52
    ld   a, $10                                   ; $4E6D: $3E $10
    ldh  [hLinkPositionY], a                      ; $4E6F: $E0 $99
    ld   a, $50                                   ; $4E71: $3E $50
    ldh  [hLinkPositionX], a                      ; $4E73: $E0 $98
    ld   [wC167], a                               ; $4E75: $EA $67 $C1
    ld   a, [$C198]                               ; $4E78: $FA $98 $C1
    push af                                       ; $4E7B: $F5
    ld   d, $00                                   ; $4E7C: $16 $00
    ld   e, $08                                   ; $4E7E: $1E $08
    cp   $18                                      ; $4E80: $FE $18
    jr   z, jr_002_4E95                           ; $4E82: $28 $11

    ld   e, $00                                   ; $4E84: $1E $00
    cp   $28                                      ; $4E86: $FE $28
    jr   z, jr_002_4E95                           ; $4E88: $28 $0B

    and  a                                        ; $4E8A: $A7
    jr   nz, jr_002_4E9D                          ; $4E8B: $20 $10

    ldh  a, [hIsGBC]                              ; $4E8D: $F0 $FE
    and  a                                        ; $4E8F: $A7
    jr   z, jr_002_4E9D                           ; $4E90: $28 $0B

    call func_002_4DFC                            ; $4E92: $CD $FC $4D

jr_002_4E95:
    ldh  a, [hIsGBC]                              ; $4E95: $F0 $FE
    and  a                                        ; $4E97: $A7
    jr   z, jr_002_4E9D                           ; $4E98: $28 $03

    call func_002_4E2C                            ; $4E9A: $CD $2C $4E

jr_002_4E9D:
    pop  af                                       ; $4E9D: $F1
    rra                                           ; $4E9E: $1F
    rra                                           ; $4E9F: $1F
    rra                                           ; $4EA0: $1F

jr_002_4EA1:
    and  $07                                      ; $4EA1: $E6 $07
    ld   e, a                                     ; $4EA3: $5F
    ld   d, $00                                   ; $4EA4: $16 $00
    ld   hl, $4E66                                ; $4EA6: $21 $66 $4E
    add  hl, de                                   ; $4EA9: $19
    ld   a, [hl]                                  ; $4EAA: $7E
    ldh  [hLinkAnimationState], a                 ; $4EAB: $E0 $9D
    ld   a, [$C198]                               ; $4EAD: $FA $98 $C1
    inc  a                                        ; $4EB0: $3C
    ld   [$C198], a                               ; $4EB1: $EA $98 $C1
    cp   $38                                      ; $4EB4: $FE $38
    jr   c, jr_002_4EC4                           ; $4EB6: $38 $0C

    ld   a, $FB                                   ; $4EB8: $3E $FB
    ldh  [hLinkPositionY], a                      ; $4EBA: $E0 $99
    ld   a, $02                                   ; $4EBC: $3E $02
    ldh  [hFF9E], a                               ; $4EBE: $E0 $9E
    ld   a, $04                                   ; $4EC0: $3E $04
    ldh  [hLinkAnimationState], a                 ; $4EC2: $E0 $9D

jr_002_4EC4:
    ld   a, [$C198]                               ; $4EC4: $FA $98 $C1
    cp   $48                                      ; $4EC7: $FE $48
    jr   nz, jr_002_4EEF                          ; $4EC9: $20 $24

    ldh  a, [hIsGBC]                              ; $4ECB: $F0 $FE
    and  a                                        ; $4ECD: $A7
    jr   z, jr_002_4ED3                           ; $4ECE: $28 $03

    call func_002_4E48                            ; $4ED0: $CD $48 $4E

jr_002_4ED3:
    ld   a, $02                                   ; $4ED3: $3E $02
    ld   [$C125], a                               ; $4ED5: $EA $25 $C1
    ld   a, $01                                   ; $4ED8: $3E $01
    ld   [wMapSlideTransitionState], a            ; $4EDA: $EA $24 $C1

func_002_4EDD::
    xor  a                                        ; $4EDD: $AF
    ld   [$C198], a                               ; $4EDE: $EA $98 $C1
    ld   [wC167], a                               ; $4EE1: $EA $67 $C1
    ld   [$DDD6], a                               ; $4EE4: $EA $D6 $DD
    ld   [$DDD7], a                               ; $4EE7: $EA $D7 $DD
    ld   a, $00                                   ; $4EEA: $3E $00
    ld   [wLinkMotionState], a                    ; $4EEC: $EA $1C $C1

jr_002_4EEF:
    ret                                           ; $4EEF: $C9

    nop                                           ; $4EF0: $00
    ld   [$00F8], sp                              ; $4EF1: $08 $F8 $00
    nop                                           ; $4EF4: $00
    ld   b, $FA                                   ; $4EF5: $06 $FA
    nop                                           ; $4EF7: $00
    nop                                           ; $4EF8: $00
    ld   b, $FA                                   ; $4EF9: $06 $FA
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    nop                                           ; $4F00: $00
    db   $10                                      ; $4F01: $10
    ld   a, [rP1]                                 ; $4F02: $F0 $00
    nop                                           ; $4F04: $00
    inc  c                                        ; $4F05: $0C
    db   $f4                                      ; $4F06: $F4
    nop                                           ; $4F07: $00
    nop                                           ; $4F08: $00
    inc  c                                        ; $4F09: $0C
    db   $f4                                      ; $4F0A: $F4
    nop                                           ; $4F0B: $00
    nop                                           ; $4F0C: $00
    nop                                           ; $4F0D: $00
    nop                                           ; $4F0E: $00
    nop                                           ; $4F0F: $00
    nop                                           ; $4F10: $00
    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    nop                                           ; $4F13: $00
    ld   hl, sp-$06                               ; $4F14: $F8 $FA
    ld   a, [label_800]                           ; $4F16: $FA $00 $08
    ld   b, $06                                   ; $4F19: $06 $06
    nop                                           ; $4F1B: $00
    nop                                           ; $4F1C: $00
    nop                                           ; $4F1D: $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    nop                                           ; $4F20: $00
    nop                                           ; $4F21: $00
    nop                                           ; $4F22: $00
    nop                                           ; $4F23: $00
    ldh  a, [hFFF4]                               ; $4F24: $F0 $F4
    db   $f4                                      ; $4F26: $F4
    nop                                           ; $4F27: $00
    db   $10                                      ; $4F28: $10
    inc  c                                        ; $4F29: $0C
    inc  c                                        ; $4F2A: $0C
    nop                                           ; $4F2B: $00
    nop                                           ; $4F2C: $00
    nop                                           ; $4F2D: $00
    nop                                           ; $4F2E: $00
    nop                                           ; $4F2F: $00
    ld   a, [wFreeMovementMode]                   ; $4F30: $FA $7B $C1
    and  a                                        ; $4F33: $A7
    jr   z, jr_002_4F3C                           ; $4F34: $28 $06

    ld   a, $00                                   ; $4F36: $3E $00
    ld   [wLinkMotionState], a                    ; $4F38: $EA $1C $C1
    ret                                           ; $4F3B: $C9

jr_002_4F3C:
    call label_CAF                                ; $4F3C: $CD $AF $0C
    ldh  [$FFA2], a                               ; $4F3F: $E0 $A2
    ld   [$C146], a                               ; $4F41: $EA $46 $C1
    ld   [$C19B], a                               ; $4F44: $EA $9B $C1
    ld   [$C137], a                               ; $4F47: $EA $37 $C1
    ld   [wC16A], a                               ; $4F4A: $EA $6A $C1
    ld   [wC16D], a                               ; $4F4D: $EA $6D $C1
    ld   a, [$DBAE]                               ; $4F50: $FA $AE $DB
    ld   [$D46B], a                               ; $4F53: $EA $6B $D4
    ld   hl, wDialogState                         ; $4F56: $21 $9F $C1
    ldh  a, [$FFA1]                               ; $4F59: $F0 $A1
    or   [hl]                                     ; $4F5B: $B6
    jp   z, label_002_4F6D                        ; $4F5C: $CA $6D $4F

    call label_178E                               ; $4F5F: $CD $8E $17
    ldh  a, [$FFA1]                               ; $4F62: $F0 $A1
    and  a                                        ; $4F64: $A7
    jr   z, jr_002_4F6A                           ; $4F65: $28 $03

    xor  a                                        ; $4F67: $AF
    ldh  [$FFA1], a                               ; $4F68: $E0 $A1

jr_002_4F6A:
    jp   label_1A50                               ; $4F6A: $C3 $50 $1A

label_002_4F6D::
    ldh  a, [hFFCC]                               ; $4F6D: $F0 $CC
    and  $20                                      ; $4F6F: $E6 $20
    jr   z, jr_002_4F86                           ; $4F71: $28 $13

    ldh  a, [$FF9C]                               ; $4F73: $F0 $9C
    xor  $01                                      ; $4F75: $EE $01
    ldh  [$FF9C], a                               ; $4F77: $E0 $9C
    jr   z, jr_002_4F86                           ; $4F79: $28 $0B

    ld   a, $A0                                   ; $4F7B: $3E $A0
    ldh  [$FFB7], a                               ; $4F7D: $E0 $B7
    ldh  a, [hLinkPositionY]                      ; $4F7F: $F0 $99
    sub  $03                                      ; $4F81: $D6 $03
    call func_002_5928                            ; $4F83: $CD $28 $59

jr_002_4F86:
    ld   a, [$C183]                               ; $4F86: $FA $83 $C1
    and  a                                        ; $4F89: $A7
    jr   z, jr_002_4F92                           ; $4F8A: $28 $06

    dec  a                                        ; $4F8C: $3D
    ld   [$C183], a                               ; $4F8D: $EA $83 $C1
    jr   jr_002_4FA1                              ; $4F90: $18 $0F

jr_002_4F92:
    ldh  a, [hFFCC]                               ; $4F92: $F0 $CC
    and  $10                                      ; $4F94: $E6 $10
    jr   z, jr_002_4FA1                           ; $4F96: $28 $09

    ld   a, $0F                                   ; $4F98: $3E $0F
    ldh  [$FFF2], a                               ; $4F9A: $E0 $F2
    ld   a, $20                                   ; $4F9C: $3E $20
    ld   [$C183], a                               ; $4F9E: $EA $83 $C1

jr_002_4FA1:
    ldh  a, [hFrameCounter]                       ; $4FA1: $F0 $E7
    and  $01                                      ; $4FA3: $E6 $01
    jr   nz, jr_002_5005                          ; $4FA5: $20 $5E

    ldh  a, [hPressedButtonsMask]                 ; $4FA7: $F0 $CB
    and  $0F                                      ; $4FA9: $E6 $0F
    ld   e, a                                     ; $4FAB: $5F
    ld   d, $00                                   ; $4FAC: $16 $00
    ld   hl, $4EF0                                ; $4FAE: $21 $F0 $4E
    ld   a, [$C183]                               ; $4FB1: $FA $83 $C1
    cp   $10                                      ; $4FB4: $FE $10
    jr   c, jr_002_4FBB                           ; $4FB6: $38 $03

    ld   hl, $4F00                                ; $4FB8: $21 $00 $4F

jr_002_4FBB:
    add  hl, de                                   ; $4FBB: $19
    ld   a, [hl]                                  ; $4FBC: $7E
    ld   hl, hFF9A                                ; $4FBD: $21 $9A $FF
    sub  [hl]                                     ; $4FC0: $96
    jr   z, jr_002_4FCA                           ; $4FC1: $28 $07

    inc  [hl]                                     ; $4FC3: $34
    bit  7, a                                     ; $4FC4: $CB $7F
    jr   z, jr_002_4FCA                           ; $4FC6: $28 $02

    dec  [hl]                                     ; $4FC8: $35
    dec  [hl]                                     ; $4FC9: $35

jr_002_4FCA:
    ld   hl, $4F10                                ; $4FCA: $21 $10 $4F
    ld   a, [$C183]                               ; $4FCD: $FA $83 $C1
    cp   $10                                      ; $4FD0: $FE $10
    jr   c, jr_002_4FD7                           ; $4FD2: $38 $03

    ld   hl, $4F20                                ; $4FD4: $21 $20 $4F

jr_002_4FD7:
    add  hl, de                                   ; $4FD7: $19
    ld   a, [hl]                                  ; $4FD8: $7E
    ld   hl, $FF9B                                ; $4FD9: $21 $9B $FF
    sub  [hl]                                     ; $4FDC: $96
    jr   z, jr_002_4FE6                           ; $4FDD: $28 $07

    inc  [hl]                                     ; $4FDF: $34
    bit  7, a                                     ; $4FE0: $CB $7F
    jr   z, jr_002_4FE6                           ; $4FE2: $28 $02

    dec  [hl]                                     ; $4FE4: $35
    dec  [hl]                                     ; $4FE5: $35

jr_002_4FE6:
    ldh  a, [hFF9A]                               ; $4FE6: $F0 $9A
    or   [hl]                                     ; $4FE8: $B6
    ld   hl, $FF9C                                ; $4FE9: $21 $9C $FF
    or   [hl]                                     ; $4FEC: $B6
    jr   z, jr_002_4FF5                           ; $4FED: $28 $06

    ld   hl, wC120                                ; $4FEF: $21 $20 $C1
    inc  [hl]                                     ; $4FF2: $34
    jr   jr_002_4FFA                              ; $4FF3: $18 $05

jr_002_4FF5:
    ld   a, $03                                   ; $4FF5: $3E $03
    ld   [wC120], a                               ; $4FF7: $EA $20 $C1

jr_002_4FFA:
    ld   hl, $4905                                ; $4FFA: $21 $05 $49
    add  hl, de                                   ; $4FFD: $19
    ld   a, [hl]                                  ; $4FFE: $7E
    cp   $0F                                      ; $4FFF: $FE $0F
    jr   z, jr_002_5005                           ; $5001: $28 $02

    ldh  [hFF9E], a                               ; $5003: $E0 $9E

jr_002_5005:
    call label_1A50                               ; $5005: $CD $50 $1A
    ldh  a, [$FFA1]                               ; $5008: $F0 $A1
    and  a                                        ; $500A: $A7
    jr   z, jr_002_5012                           ; $500B: $28 $05

    xor  a                                        ; $500D: $AF
    ldh  [$FFA1], a                               ; $500E: $E0 $A1
    jr   jr_002_5015                              ; $5010: $18 $03

jr_002_5012:
    call func_002_44AD                            ; $5012: $CD $AD $44

jr_002_5015:
    call func_002_753A                            ; $5015: $CD $3A $75
    ldh  a, [$FF9C]                               ; $5018: $F0 $9C
    and  a                                        ; $501A: $A7
    jr   z, jr_002_5079                           ; $501B: $28 $5C

    ldh  a, [$FFB7]                               ; $501D: $F0 $B7
    and  a                                        ; $501F: $A7
    jr   nz, jr_002_5024                          ; $5020: $20 $02

    ldh  [$FF9C], a                               ; $5022: $E0 $9C

jr_002_5024:
    ldh  a, [hMapTileset]                         ; $5024: $F0 $F7
    and  a                                        ; $5026: $A7
    jr   z, jr_002_5035                           ; $5027: $28 $0C

    cp   $1F                                      ; $5029: $FE $1F
    jr   nz, jr_002_507A                          ; $502B: $20 $4D

    ldh  a, [hMapIndex]                           ; $502D: $F0 $F6
    cp   $F2                                      ; $502F: $FE $F2
    jr   nz, jr_002_5079                          ; $5031: $20 $46

    jr   jr_002_503B                              ; $5033: $18 $06

jr_002_5035:
    ldh  a, [hMapIndex]                           ; $5035: $F0 $F6
    cp   $78                                      ; $5037: $FE $78
    jr   nz, jr_002_5079                          ; $5039: $20 $3E

jr_002_503B:
    ldh  a, [hLinkPositionY]                      ; $503B: $F0 $99
    sub  $50                                      ; $503D: $D6 $50
    add  $08                                      ; $503F: $C6 $08
    cp   $10                                      ; $5041: $FE $10
    jr   nc, jr_002_50A2                          ; $5043: $30 $5D

    ldh  a, [hLinkPositionX]                      ; $5045: $F0 $98
    sub  $58                                      ; $5047: $D6 $58
    add  $08                                      ; $5049: $C6 $08
    cp   $10                                      ; $504B: $FE $10
    jr   nc, jr_002_50A2                          ; $504D: $30 $53

    ld   hl, hFFF8                                ; $504F: $21 $F8 $FF
    bit  5, [hl]                                  ; $5052: $CB $6E
    jr   nz, jr_002_5079                          ; $5054: $20 $23

    set  5, [hl]                                  ; $5056: $CB $EE
    ld   a, $35                                   ; $5058: $3E $35
    call label_3B86                               ; $505A: $CD $86 $3B
    jr   c, jr_002_5079                           ; $505D: $38 $1A

    ldh  a, [hLinkPositionX]                      ; $505F: $F0 $98
    ld   hl, wEntity0PosX                         ; $5061: $21 $00 $C2
    add  hl, de                                   ; $5064: $19
    ld   [hl], a                                  ; $5065: $77
    ldh  a, [hLinkPositionY]                      ; $5066: $F0 $99
    ld   hl, wEntitiesPosYTable                   ; $5068: $21 $10 $C2
    add  hl, de                                   ; $506B: $19
    ld   [hl], a                                  ; $506C: $77
    ld   hl, $C310                                ; $506D: $21 $10 $C3
    add  hl, de                                   ; $5070: $19
    ld   [hl], $03                                ; $5071: $36 $03
    ld   hl, $C340                                ; $5073: $21 $40 $C3
    add  hl, de                                   ; $5076: $19
    res  4, [hl]                                  ; $5077: $CB $A6

jr_002_5079:
    ret                                           ; $5079: $C9

jr_002_507A:
    ldh  a, [hMapIndex]                           ; $507A: $F0 $F6
    cp   $8D                                      ; $507C: $FE $8D
    jr   nz, jr_002_50A2                          ; $507E: $20 $22

    ldh  a, [hLinkPositionY]                      ; $5080: $F0 $99
    sub  $50                                      ; $5082: $D6 $50
    add  $08                                      ; $5084: $C6 $08
    cp   $10                                      ; $5086: $FE $10
    jr   nc, jr_002_50A2                          ; $5088: $30 $18

    ldh  a, [hLinkPositionX]                      ; $508A: $F0 $98
    sub  $58                                      ; $508C: $D6 $58
    add  $08                                      ; $508E: $C6 $08
    cp   $10                                      ; $5090: $FE $10
    jr   nc, jr_002_50A2                          ; $5092: $30 $0E

    ldh  a, [hLinkPositionX]                      ; $5094: $F0 $98
    ld   [$D404], a                               ; $5096: $EA $04 $D4
    ld   a, [wLinkMotionState]                    ; $5099: $FA $1C $C1
    ld   [$D463], a                               ; $509C: $EA $63 $D4
    jp   label_C7D                                ; $509F: $C3 $7D $0C

jr_002_50A2:
    ret                                           ; $50A2: $C9

    ld   a, $01                                   ; $50A3: $3E $01
    ldh  [$FFA1], a                               ; $50A5: $E0 $A1
    call label_21A8                               ; $50A7: $CD $A8 $21
    call $21E1                                    ; $50AA: $CD $E1 $21
    ldh  a, [hLinkPositionX]                      ; $50AD: $F0 $98
    and  $F0                                      ; $50AF: $E6 $F0
    cp   $E0                                      ; $50B1: $FE $E0
    jr   z, jr_002_50BA                           ; $50B3: $28 $05

    ldh  a, [$FFA2]                               ; $50B5: $F0 $A2
    cp   $78                                      ; $50B7: $FE $78
    ret  c                                        ; $50B9: $D8

jr_002_50BA:
    call $0C83                                    ; $50BA: $CD $83 $0C
    call label_178E                               ; $50BD: $CD $8E $17
    ldh  [$FFA2], a                               ; $50C0: $E0 $A2
    ldh  [$FFA3], a                               ; $50C2: $E0 $A3
    ld   a, $70                                   ; $50C4: $3E $70
    ld   [$DBC8], a                               ; $50C6: $EA $C8 $DB
    ret                                           ; $50C9: $C9

    ld   d, l                                     ; $50CA: $55
    ld   d, [hl]                                  ; $50CB: $56
    ld   d, a                                     ; $50CC: $57
    ld   d, a                                     ; $50CD: $57
    rst  $38                                      ; $50CE: $FF
    rst  $38                                      ; $50CF: $FF
    rst  $38                                      ; $50D0: $FF
    rst  $38                                      ; $50D1: $FF
    rst  $38                                      ; $50D2: $FF
    rst  $38                                      ; $50D3: $FF
    ld   a, $01                                   ; $50D4: $3E $01
    ld   [wC167], a                               ; $50D6: $EA $67 $C1
    ld   a, [$C198]                               ; $50D9: $FA $98 $C1
    inc  a                                        ; $50DC: $3C
    ld   [$C198], a                               ; $50DD: $EA $98 $C1
    rra                                           ; $50E0: $1F
    rra                                           ; $50E1: $1F
    rra                                           ; $50E2: $1F
    rra                                           ; $50E3: $1F
    nop                                           ; $50E4: $00
    and  $0F                                      ; $50E5: $E6 $0F
    cp   $06                                      ; $50E7: $FE $06
    jr   z, jr_002_50F6                           ; $50E9: $28 $0B

    ld   e, a                                     ; $50EB: $5F
    ld   d, $00                                   ; $50EC: $16 $00
    ld   hl, $50CA                                ; $50EE: $21 $CA $50
    add  hl, de                                   ; $50F1: $19
    ld   a, [hl]                                  ; $50F2: $7E
    ldh  [hLinkAnimationState], a                 ; $50F3: $E0 $9D
    ret                                           ; $50F5: $C9

jr_002_50F6:
    xor  a                                        ; $50F6: $AF
    ld   [$C13E], a                               ; $50F7: $EA $3E $C1
    ld   [wIsUsingSpinAttack], a                  ; $50FA: $EA $21 $C1
    ld   [$C122], a                               ; $50FD: $EA $22 $C1
    call func_002_52D6                            ; $5100: $CD $D6 $52
    ld   a, [wActiveRoom]                         ; $5103: $FA $A5 $DB
    and  a                                        ; $5106: $A7
    jr   nz, jr_002_512B                          ; $5107: $20 $22

    ldh  a, [hMapIndex]                           ; $5109: $F0 $F6
    cp   $01                                      ; $510B: $FE $01
    jr   z, jr_002_511B                           ; $510D: $28 $0C

    cp   $95                                      ; $510F: $FE $95
    jr   z, jr_002_511B                           ; $5111: $28 $08

    cp   $2C                                      ; $5113: $FE $2C
    jr   z, jr_002_511B                           ; $5115: $28 $04

    cp   $EC                                      ; $5117: $FE $EC
    jr   nz, jr_002_512B                          ; $5119: $20 $10

jr_002_511B:
    ld   a, $09                                   ; $511B: $3E $09
    ld   [wLinkMotionState], a                    ; $511D: $EA $1C $C1
    ld   a, $40                                   ; $5120: $3E $40
    ldh  [$FFB7], a                               ; $5122: $E0 $B7
    xor  a                                        ; $5124: $AF
    ldh  [$FF9C], a                               ; $5125: $E0 $9C
    dec  a                                        ; $5127: $3D
    ldh  [hLinkAnimationState], a                 ; $5128: $E0 $9D
    ret                                           ; $512A: $C9

jr_002_512B:
    ld   a, [$DBCB]                               ; $512B: $FA $CB $DB
    cp   $50                                      ; $512E: $FE $50
    jr   z, jr_002_516A                           ; $5130: $28 $38

    cp   $FF                                      ; $5132: $FE $FF
    jr   z, jr_002_5155                           ; $5134: $28 $1F

    ld   a, [$D401]                               ; $5136: $FA $01 $D4
    cp   $02                                      ; $5139: $FE $02
    jr   nz, jr_002_5145                          ; $513B: $20 $08

    ldh  a, [hLinkPositionY]                      ; $513D: $F0 $99
    ld   [$D404], a                               ; $513F: $EA $04 $D4
    xor  a                                        ; $5142: $AF
    jr   jr_002_515C                              ; $5143: $18 $17

jr_002_5145:
    ldh  a, [hLinkPositionX]                      ; $5145: $F0 $98
    and  $F0                                      ; $5147: $E6 $F0
    add  $08                                      ; $5149: $C6 $08
    ld   [$D404], a                               ; $514B: $EA $04 $D4
    ldh  a, [hLinkPositionY]                      ; $514E: $F0 $99
    and  $F0                                      ; $5150: $E6 $F0
    ld   [$D405], a                               ; $5152: $EA $05 $D4

jr_002_5155:
    ld   a, $01                                   ; $5155: $3E $01
    ld   [$D475], a                               ; $5157: $EA $75 $D4
    ld   a, $70                                   ; $515A: $3E $70

jr_002_515C:
    ld   [$DBC8], a                               ; $515C: $EA $C8 $DB
    call label_178E                               ; $515F: $CD $8E $17
    ldh  [$FFA3], a                               ; $5162: $E0 $A3
    ld   [$C146], a                               ; $5164: $EA $46 $C1
    jp   $0C83                                    ; $5167: $C3 $83 $0C

jr_002_516A:
    ld   a, [wActiveRoom]                         ; $516A: $FA $A5 $DB
    and  a                                        ; $516D: $A7
    jr   nz, jr_002_5176                          ; $516E: $20 $06

    ldh  a, [hMapIndex]                           ; $5170: $F0 $F6
    cp   $1E                                      ; $5172: $FE $1E
    jr   z, jr_002_5155                           ; $5174: $28 $DF

jr_002_5176:
    ldh  a, [hMapTileset]                         ; $5176: $F0 $F7
    cp   $0A                                      ; $5178: $FE $0A
    jr   nz, jr_002_51AC                          ; $517A: $20 $30

    ldh  a, [hMapIndex]                           ; $517C: $F0 $F6
    cp   $7A                                      ; $517E: $FE $7A
    jr   z, jr_002_518E                           ; $5180: $28 $0C

    cp   $7B                                      ; $5182: $FE $7B
    jr   z, jr_002_518E                           ; $5184: $28 $08

    cp   $7C                                      ; $5186: $FE $7C
    jr   z, jr_002_518E                           ; $5188: $28 $04

    cp   $7D                                      ; $518A: $FE $7D
    jr   nz, jr_002_51AC                          ; $518C: $20 $1E

jr_002_518E:
    ld   a, $00                                   ; $518E: $3E $00
    ld   hl, $D401                                ; $5190: $21 $01 $D4
    ld   [hl+], a                                 ; $5193: $22
    ld   a, $00                                   ; $5194: $3E $00
    ld   [hl+], a                                 ; $5196: $22
    ld   a, $1A                                   ; $5197: $3E $1A
    ld   [hl+], a                                 ; $5199: $22
    ld   a, $68                                   ; $519A: $3E $68
    ld   [hl+], a                                 ; $519C: $22
    ld   a, $56                                   ; $519D: $3E $56
    ld   [hl+], a                                 ; $519F: $22
    ld   a, $24                                   ; $51A0: $3E $24
    ld   [$DBC8], a                               ; $51A2: $EA $C8 $DB
    ld   a, $03                                   ; $51A5: $3E $03
    ldh  [hFF9E], a                               ; $51A7: $E0 $9E
    jp   $0C83                                    ; $51A9: $C3 $83 $0C

jr_002_51AC:
    call label_002_52B9                           ; $51AC: $CD $B9 $52
    ld   a, [wDB94]                               ; $51AF: $FA $94 $DB
    add  $04                                      ; $51B2: $C6 $04
    ld   [wDB94], a                               ; $51B4: $EA $94 $DB
    xor  a                                        ; $51B7: $AF
    ld   [wC167], a                               ; $51B8: $EA $67 $C1
    ret                                           ; $51BB: $C9

    ld   a, [$C1AA]                               ; $51BC: $FA $AA $C1
    cp   $2E                                      ; $51BF: $FE $2E
    jr   nz, jr_002_51C7                          ; $51C1: $20 $04

    ld   a, $17                                   ; $51C3: $3E $17
    ldh  [$FFF2], a                               ; $51C5: $E0 $F2

jr_002_51C7:
    call label_CAF                                ; $51C7: $CD $AF $0C
    ld   [wC16A], a                               ; $51CA: $EA $6A $C1
    ld   [$C137], a                               ; $51CD: $EA $37 $C1
    ld   [$C13E], a                               ; $51D0: $EA $3E $C1
    call label_1794                               ; $51D3: $CD $94 $17
    call $21E1                                    ; $51D6: $CD $E1 $21
    ldh  a, [$FFA3]                               ; $51D9: $F0 $A3
    sub  $02                                      ; $51DB: $D6 $02
    ldh  [$FFA3], a                               ; $51DD: $E0 $A3
    ldh  a, [$FFA2]                               ; $51DF: $F0 $A2
    and  $80                                      ; $51E1: $E6 $80
    jr   z, jr_002_51ED                           ; $51E3: $28 $08

    xor  a                                        ; $51E5: $AF
    ldh  [$FFA2], a                               ; $51E6: $E0 $A2
    ld   [$C149], a                               ; $51E8: $EA $49 $C1
    ldh  [$FFA3], a                               ; $51EB: $E0 $A3

jr_002_51ED:
    ld   a, $6B                                   ; $51ED: $3E $6B
    ldh  [hLinkAnimationState], a                 ; $51EF: $E0 $9D
    ld   bc, $C010                                ; $51F1: $01 $10 $C0
    ldh  a, [hLinkPositionY]                      ; $51F4: $F0 $99
    ld   hl, $FFA2                                ; $51F6: $21 $A2 $FF
    sub  [hl]                                     ; $51F9: $96
    ld   hl, $C13B                                ; $51FA: $21 $3B $C1
    add  [hl]                                     ; $51FD: $86
    sub  $10                                      ; $51FE: $D6 $10
    ldh  [$FFD7], a                               ; $5200: $E0 $D7
    ld   a, [$C1A9]                               ; $5202: $FA $A9 $C1
    cp   $01                                      ; $5205: $FE $01
    jr   z, jr_002_524F                           ; $5207: $28 $46

    ldh  a, [$FFD7]                               ; $5209: $F0 $D7
    add  $02                                      ; $520B: $C6 $02
    ld   [bc], a                                  ; $520D: $02
    inc  bc                                       ; $520E: $03
    ldh  a, [hLinkPositionX]                      ; $520F: $F0 $98
    add  $00                                      ; $5211: $C6 $00
    ld   [bc], a                                  ; $5213: $02
    inc  bc                                       ; $5214: $03
    ld   a, [$C1A9]                               ; $5215: $FA $A9 $C1
    ld   e, $AE                                   ; $5218: $1E $AE
    cp   $05                                      ; $521A: $FE $05
    jr   z, jr_002_522F                           ; $521C: $28 $11

    ld   e, $8E                                   ; $521E: $1E $8E
    cp   $03                                      ; $5220: $FE $03
    jr   z, jr_002_5244                           ; $5222: $28 $20

    cp   $04                                      ; $5224: $FE $04
    jr   nz, jr_002_5234                          ; $5226: $20 $0C

    ld   e, $8C                                   ; $5228: $1E $8C
    call func_002_524A                            ; $522A: $CD $4A $52
    jr   jr_002_5237                              ; $522D: $18 $08

jr_002_522F:
    call func_002_523A                            ; $522F: $CD $3A $52
    jr   jr_002_5237                              ; $5232: $18 $03

jr_002_5234:
    call func_002_523F                            ; $5234: $CD $3F $52

jr_002_5237:
    inc  bc                                       ; $5237: $03
    ld   [bc], a                                  ; $5238: $02
    ret                                           ; $5239: $C9

func_002_523A::
    ld   a, e                                     ; $523A: $7B
    ld   [bc], a                                  ; $523B: $02
    ld   a, $14                                   ; $523C: $3E $14
    ret                                           ; $523E: $C9

func_002_523F::
    ld   a, e                                     ; $523F: $7B
    ld   [bc], a                                  ; $5240: $02
    ld   a, $14                                   ; $5241: $3E $14
    ret                                           ; $5243: $C9

jr_002_5244:
    ld   a, e                                     ; $5244: $7B
    ld   [bc], a                                  ; $5245: $02
    ld   a, $16                                   ; $5246: $3E $16
    jr   jr_002_5237                              ; $5248: $18 $ED

func_002_524A::
    ld   a, e                                     ; $524A: $7B
    ld   [bc], a                                  ; $524B: $02
    ld   a, $10                                   ; $524C: $3E $10
    ret                                           ; $524E: $C9

jr_002_524F:
    ldh  a, [hLinkPositionX]                      ; $524F: $F0 $98
    sub  $08                                      ; $5251: $D6 $08
    ldh  [$FFD8], a                               ; $5253: $E0 $D8
    ldh  a, [hFrameCounter]                       ; $5255: $F0 $E7
    rla                                           ; $5257: $17
    rla                                           ; $5258: $17
    and  $10                                      ; $5259: $E6 $10
    ldh  [$FFDA], a                               ; $525B: $E0 $DA
    xor  a                                        ; $525D: $AF
    ld   h, a                                     ; $525E: $67
    ld   l, a                                     ; $525F: $6F
    ld   a, $06                                   ; $5260: $3E $06
    ldh  [$FFD9], a                               ; $5262: $E0 $D9
    jp   label_1819                               ; $5264: $C3 $19 $18

    call label_CAF                                ; $5267: $CD $AF $0C
    call label_178E                               ; $526A: $CD $8E $17
    ldh  a, [$FFB7]                               ; $526D: $F0 $B7
    and  a                                        ; $526F: $A7
    jr   nz, jr_002_529F                          ; $5270: $20 $2D

    ld   [wC167], a                               ; $5272: $EA $67 $C1
    ldh  a, [$FF9C]                               ; $5275: $F0 $9C
    cp   $06                                      ; $5277: $FE $06
    jr   nz, jr_002_5283                          ; $5279: $20 $08

    ld   a, [wDB94]                               ; $527B: $FA $94 $DB
    add  $04                                      ; $527E: $C6 $04
    ld   [wDB94], a                               ; $5280: $EA $94 $DB

jr_002_5283:
    xor  a                                        ; $5283: $AF
    ldh  [$FF9C], a                               ; $5284: $E0 $9C
    ld   a, [wActiveRoom]                         ; $5286: $FA $A5 $DB
    and  a                                        ; $5289: $A7
    jr   nz, jr_002_529C                          ; $528A: $20 $10

    ldh  a, [hMapIndex]                           ; $528C: $F0 $F6
    cp   $2B                                      ; $528E: $FE $2B
    jr   nz, jr_002_529C                          ; $5290: $20 $0A

    ld   a, $48                                   ; $5292: $3E $48
    ld   [$DBB1], a                               ; $5294: $EA $B1 $DB
    ld   a, $30                                   ; $5297: $3E $30
    ld   [$DBB2], a                               ; $5299: $EA $B2 $DB

jr_002_529C:
    jp   label_002_52B9                           ; $529C: $C3 $B9 $52

jr_002_529F:
    ld   e, $FF                                   ; $529F: $1E $FF
    ldh  a, [$FFB7]                               ; $52A1: $F0 $B7
    cp   $30                                      ; $52A3: $FE $30
    jr   c, jr_002_52B5                           ; $52A5: $38 $0E

    ld   e, $4E                                   ; $52A7: $1E $4E
    cp   $40                                      ; $52A9: $FE $40
    jr   c, jr_002_52B5                           ; $52AB: $38 $08

    jr   nz, jr_002_52B3                          ; $52AD: $20 $04

    ld   a, $03                                   ; $52AF: $3E $03
    ldh  [hSFX], a                                ; $52B1: $E0 $F3

jr_002_52B3:
    ld   e, $4C                                   ; $52B3: $1E $4C

jr_002_52B5:
    ld   a, e                                     ; $52B5: $7B
    ldh  [hLinkAnimationState], a                 ; $52B6: $E0 $9D
    ret                                           ; $52B8: $C9

label_002_52B9::
    ld   a, $40                                   ; $52B9: $3E $40
    ld   [$DBC7], a                               ; $52BB: $EA $C7 $DB
    ld   a, [$DBB1]                               ; $52BE: $FA $B1 $DB
    ldh  [hLinkPositionX], a                      ; $52C1: $E0 $98
    ldh  [$FF9F], a                               ; $52C3: $E0 $9F
    ld   a, [$DBB2]                               ; $52C5: $FA $B2 $DB
    ldh  [hLinkPositionY], a                      ; $52C8: $E0 $99
    ldh  [$FFA0], a                               ; $52CA: $E0 $A0
    ld   hl, $FFA2                                ; $52CC: $21 $A2 $FF
    sub  [hl]                                     ; $52CF: $96
    ld   [$C145], a                               ; $52D0: $EA $45 $C1
    call func_002_4EDD                            ; $52D3: $CD $DD $4E

func_002_52D6::
    ldh  a, [$FFAC]                               ; $52D6: $F0 $AC
    and  a                                        ; $52D8: $A7
    jr   z, jr_002_52DF                           ; $52D9: $28 $04

    ld   a, $01                                   ; $52DB: $3E $01
    ldh  [$FFAC], a                               ; $52DD: $E0 $AC

jr_002_52DF:
    ret                                           ; $52DF: $C9

    dec  c                                        ; $52E0: $0D
    di                                            ; $52E1: $F3
    nop                                           ; $52E2: $00
    rst  $38                                      ; $52E3: $FF
    ld   [$0CF8], sp                              ; $52E4: $08 $F8 $0C
    push af                                       ; $52E7: $F5
    nop                                           ; $52E8: $00
    nop                                           ; $52E9: $00
    di                                            ; $52EA: $F3
    ld   c, $F3                                   ; $52EB: $0E $F3
    di                                            ; $52ED: $F3
    db   $fc                                      ; $52EE: $FC
    nop                                           ; $52EF: $00
    ld   b, $08                                   ; $52F0: $06 $08
    ld   [$0406], sp                              ; $52F2: $08 $06 $04
    rst  $38                                      ; $52F5: $FF
    rst  $38                                      ; $52F6: $FF
    inc  b                                        ; $52F7: $04
    inc  b                                        ; $52F8: $04
    rst  $38                                      ; $52F9: $FF
    rst  $38                                      ; $52FA: $FF
    inc  b                                        ; $52FB: $04
    ld   b, $08                                   ; $52FC: $06 $08
    ld   [RenderLoop.RenderLoop_loadNewMap], sp   ; $52FE: $08 $06 $02
    ld   [bc], a                                  ; $5301: $02
    ld   [hl+], a                                 ; $5302: $22
    ld   [hl+], a                                 ; $5303: $22
    ld   [hl+], a                                 ; $5304: $22
    ld   [bc], a                                  ; $5305: $02
    ld   [bc], a                                  ; $5306: $02
    ld   b, d                                     ; $5307: $42
    ld   [hl+], a                                 ; $5308: $22
    ld   [bc], a                                  ; $5309: $02
    ld   [bc], a                                  ; $530A: $02
    ld   [hl+], a                                 ; $530B: $22
    ld   [bc], a                                  ; $530C: $02
    ld   [bc], a                                  ; $530D: $02
    ld   [hl+], a                                 ; $530E: $22
    ld   [hl+], a                                 ; $530F: $22

label_002_5310::
    ld   a, [$C19B]                               ; $5310: $FA $9B $C1
    and  $7F                                      ; $5313: $E6 $7F
    cp   $08                                      ; $5315: $FE $08
    ldh  a, [hFF9E]                               ; $5317: $F0 $9E
    jr   c, jr_002_531D                           ; $5319: $38 $02

    add  $04                                      ; $531B: $C6 $04

jr_002_531D:
    ld   e, a                                     ; $531D: $5F
    ld   d, $00                                   ; $531E: $16 $00
    ld   hl, $52E8                                ; $5320: $21 $E8 $52
    add  hl, de                                   ; $5323: $19
    ld   a, [hl]                                  ; $5324: $7E
    ldh  [$FFD7], a                               ; $5325: $E0 $D7
    ld   hl, $52E0                                ; $5327: $21 $E0 $52
    add  hl, de                                   ; $532A: $19
    ld   a, [hl]                                  ; $532B: $7E
    ldh  [$FFD8], a                               ; $532C: $E0 $D8
    sla  e                                        ; $532E: $CB $23
    ld   hl, $52F0                                ; $5330: $21 $F0 $52
    add  hl, de                                   ; $5333: $19
    ld   a, [hl+]                                 ; $5334: $2A
    ldh  [$FFD9], a                               ; $5335: $E0 $D9
    ld   a, [hl]                                  ; $5337: $7E
    ldh  [$FFDA], a                               ; $5338: $E0 $DA
    ld   hl, $5300                                ; $533A: $21 $00 $53
    add  hl, de                                   ; $533D: $19
    ld   a, [hl+]                                 ; $533E: $2A
    ldh  [$FFDB], a                               ; $533F: $E0 $DB
    ld   a, [hl]                                  ; $5341: $7E
    ldh  [$FFDC], a                               ; $5342: $E0 $DC
    ld   de, $C010                                ; $5344: $11 $10 $C0
    ld   bc, $C014                                ; $5347: $01 $14 $C0
    ld   a, [$C145]                               ; $534A: $FA $45 $C1
    ld   hl, $C13B                                ; $534D: $21 $3B $C1
    add  [hl]                                     ; $5350: $86
    ld   hl, $FFD7                                ; $5351: $21 $D7 $FF
    add  [hl]                                     ; $5354: $86
    ld   [hl], a                                  ; $5355: $77
    ldh  a, [$FFD9]                               ; $5356: $F0 $D9
    cp   $FF                                      ; $5358: $FE $FF
    jr   z, jr_002_535E                           ; $535A: $28 $02

    ld   a, [hl]                                  ; $535C: $7E
    ld   [de], a                                  ; $535D: $12

jr_002_535E:
    ldh  a, [$FFDA]                               ; $535E: $F0 $DA
    cp   $FF                                      ; $5360: $FE $FF
    jr   z, jr_002_5366                           ; $5362: $28 $02

    ld   a, [hl]                                  ; $5364: $7E
    ld   [bc], a                                  ; $5365: $02

jr_002_5366:
    inc  de                                       ; $5366: $13
    inc  bc                                       ; $5367: $03
    ldh  a, [$FFD8]                               ; $5368: $F0 $D8
    ld   hl, hLinkPositionX                       ; $536A: $21 $98 $FF
    add  [hl]                                     ; $536D: $86
    ld   [de], a                                  ; $536E: $12
    add  $08                                      ; $536F: $C6 $08
    ld   [bc], a                                  ; $5371: $02
    inc  de                                       ; $5372: $13
    inc  bc                                       ; $5373: $03
    ldh  a, [$FFD9]                               ; $5374: $F0 $D9
    ld   [de], a                                  ; $5376: $12
    ldh  a, [$FFDA]                               ; $5377: $F0 $DA
    ld   [bc], a                                  ; $5379: $02
    inc  de                                       ; $537A: $13
    inc  bc                                       ; $537B: $03
    ldh  a, [$FFDB]                               ; $537C: $F0 $DB
    ld   [de], a                                  ; $537E: $12
    ldh  a, [$FFDC]                               ; $537F: $F0 $DC
    ld   [bc], a                                  ; $5381: $02
    ret                                           ; $5382: $C9

    inc  b                                        ; $5383: $04
    db   $fc                                      ; $5384: $FC
    db   $fc                                      ; $5385: $FC
    inc  b                                        ; $5386: $04
    inc  b                                        ; $5387: $04
    inc  b                                        ; $5388: $04
    db   $fc                                      ; $5389: $FC
    inc  b                                        ; $538A: $04

label_002_538B::
    ldh  a, [hFF9E]                               ; $538B: $F0 $9E
    ld   c, a                                     ; $538D: $4F
    ld   b, $00                                   ; $538E: $06 $00
    ld   hl, $5383                                ; $5390: $21 $83 $53
    add  hl, bc                                   ; $5393: $09
    ldh  a, [hLinkPositionX]                      ; $5394: $F0 $98
    add  [hl]                                     ; $5396: $86
    ld   hl, wEntity0PosX                         ; $5397: $21 $00 $C2
    add  hl, de                                   ; $539A: $19
    ld   [hl], a                                  ; $539B: $77
    ld   hl, $5387                                ; $539C: $21 $87 $53
    add  hl, bc                                   ; $539F: $09
    ldh  a, [hLinkPositionY]                      ; $53A0: $F0 $99
    add  [hl]                                     ; $53A2: $86
    ld   hl, wEntitiesPosYTable                   ; $53A3: $21 $10 $C2
    add  hl, de                                   ; $53A6: $19
    ld   [hl], a                                  ; $53A7: $77
    ld   hl, $C3B0                                ; $53A8: $21 $B0 $C3
    add  hl, de                                   ; $53AB: $19
    ld   [hl], d                                  ; $53AC: $72
    jp   label_140F                               ; $53AD: $C3 $0F $14

func_002_53B0::
    push bc                                       ; $53B0: $C5
    push de                                       ; $53B1: $D5
    ldh  a, [hFFE8]                               ; $53B2: $F0 $E8
    cp   $40                                      ; $53B4: $FE $40
    jr   z, jr_002_53FB                           ; $53B6: $28 $43

    ld   a, [$DBD0]                               ; $53B8: $FA $D0 $DB
    and  a                                        ; $53BB: $A7
    jr   z, label_002_541D                        ; $53BC: $28 $5F

    dec  a                                        ; $53BE: $3D
    ld   [$DBD0], a                               ; $53BF: $EA $D0 $DB
    call label_2802                               ; $53C2: $CD $02 $28
    call label_002_5420                           ; $53C5: $CD $20 $54
    call func_002_5B9F                            ; $53C8: $CD $9F $5B
    ld   a, [hl]                                  ; $53CB: $7E
    or   $40                                      ; $53CC: $F6 $40
    ld   [hl], a                                  ; $53CE: $77
    ldh  [hFFF8], a                               ; $53CF: $E0 $F8
    ldh  a, [$FFDB]                               ; $53D1: $F0 $DB
    and  $F0                                      ; $53D3: $E6 $F0
    ldh  [$FFCE], a                               ; $53D5: $E0 $CE
    swap a                                        ; $53D7: $CB $37
    ld   e, a                                     ; $53D9: $5F
    ldh  a, [$FFDC]                               ; $53DA: $F0 $DC
    and  $F0                                      ; $53DC: $E6 $F0
    ldh  [$FFCD], a                               ; $53DE: $E0 $CD
    or   e                                        ; $53E0: $B3
    ld   e, a                                     ; $53E1: $5F
    ld   d, $00                                   ; $53E2: $16 $00
    call label_2178                               ; $53E4: $CD $78 $21
    ldh  a, [$FFCE]                               ; $53E7: $F0 $CE
    add  $08                                      ; $53E9: $C6 $08
    ldh  [$FFD7], a                               ; $53EB: $E0 $D7
    ldh  a, [$FFCD]                               ; $53ED: $F0 $CD
    add  $10                                      ; $53EF: $C6 $10
    ldh  [$FFD8], a                               ; $53F1: $E0 $D8
    ld   a, $02                                   ; $53F3: $3E $02
    call label_CC7                                ; $53F5: $CD $C7 $0C
    jp   label_002_541D                           ; $53F8: $C3 $1D $54

jr_002_53FB:
    ld   a, $06                                   ; $53FB: $3E $06
    call label_3B86                               ; $53FD: $CD $86 $3B
    jr   c, label_002_541D                        ; $5400: $38 $1B

    ld   hl, wEntitiesTypeTable                   ; $5402: $21 $80 $C2
    add  hl, de                                   ; $5405: $19
    dec  [hl]                                     ; $5406: $35
    ldh  a, [$FFDB]                               ; $5407: $F0 $DB
    and  $F0                                      ; $5409: $E6 $F0
    add  $08                                      ; $540B: $C6 $08
    ld   hl, wEntity0PosX                         ; $540D: $21 $00 $C2
    add  hl, de                                   ; $5410: $19
    ld   [hl], a                                  ; $5411: $77
    ldh  a, [$FFDC]                               ; $5412: $F0 $DC
    and  $F0                                      ; $5414: $E6 $F0
    add  $10                                      ; $5416: $C6 $10
    ld   hl, wEntitiesPosYTable                   ; $5418: $21 $10 $C2
    add  hl, de                                   ; $541B: $19
    ld   [hl], a                                  ; $541C: $77

label_002_541D::
    pop  de                                       ; $541D: $D1
    pop  bc                                       ; $541E: $C1
    ret                                           ; $541F: $C9

label_002_5420::
    ld   a, $04                                   ; $5420: $3E $04
    ldh  [hFFF4], a                               ; $5422: $E0 $F4
    ret                                           ; $5424: $C9

label_002_5425::
    push bc                                       ; $5425: $C5
    ldh  a, [hMapTileset]                         ; $5426: $F0 $F7
    cp   $FF                                      ; $5428: $FE $FF
    ld   a, $30                                   ; $542A: $3E $30
    jr   z, jr_002_5438                           ; $542C: $28 $0A

    ldh  a, [hMapTileset]                         ; $542E: $F0 $F7
    cp   $0A                                      ; $5430: $FE $0A
    ld   a, $30                                   ; $5432: $3E $30
    jr   c, jr_002_5438                           ; $5434: $38 $02

    ld   a, $3C                                   ; $5436: $3E $3C

jr_002_5438:
    call label_3B86                               ; $5438: $CD $86 $3B
    jr   c, jr_002_546F                           ; $543B: $38 $32

    ld   hl, wEntity0PosX                         ; $543D: $21 $00 $C2
    add  hl, de                                   ; $5440: $19
    ld   [hl], $28                                ; $5441: $36 $28
    ldh  a, [hMapTileset]                         ; $5443: $F0 $F7
    cp   $FF                                      ; $5445: $FE $FF
    jr   nz, jr_002_5453                          ; $5447: $20 $0A

    ld   [hl], $48                                ; $5449: $36 $48
    ldh  a, [hMapIndex]                           ; $544B: $F0 $F6
    cp   $08                                      ; $544D: $FE $08
    jr   nz, jr_002_5453                          ; $544F: $20 $02

    ld   [hl], $58                                ; $5451: $36 $58

jr_002_5453:
    ld   hl, wEntitiesPosYTable                   ; $5453: $21 $10 $C2
    add  hl, de                                   ; $5456: $19
    ld   [hl], $3C                                ; $5457: $36 $3C
    ldh  a, [hMapTileset]                         ; $5459: $F0 $F7
    cp   $FF                                      ; $545B: $FE $FF
    jr   nz, jr_002_5469                          ; $545D: $20 $0A

    ld   [hl], $3C                                ; $545F: $36 $3C
    ldh  a, [hMapIndex]                           ; $5461: $F0 $F6
    cp   $08                                      ; $5463: $FE $08
    jr   nz, jr_002_5469                          ; $5465: $20 $02

    ld   [hl], $3C                                ; $5467: $36 $3C

jr_002_5469:
    ld   hl, $C310                                ; $5469: $21 $10 $C3
    add  hl, de                                   ; $546C: $19
    ld   [hl], $70                                ; $546D: $36 $70

jr_002_546F:
    pop  bc                                       ; $546F: $C1
    ret                                           ; $5470: $C9

    jr   nc, jr_002_54A6                          ; $5471: $30 $33

    add  c                                        ; $5473: $81
    ld   bc, $5628                                ; $5474: $01 $28 $56
    ld   l, b                                     ; $5477: $68
    add  a                                        ; $5478: $87
    or   e                                        ; $5479: $B3
    and  $0A                                      ; $547A: $E6 $0A
    ld   bc, $0401                                ; $547C: $01 $01 $04
    nop                                           ; $547F: $00
    ld   bc, $0302                                ; $5480: $01 $02 $03
    inc  b                                        ; $5483: $04
    dec  b                                        ; $5484: $05
    ld   b, $07                                   ; $5485: $06 $07

label_002_5487::
    xor  a                                        ; $5487: $AF
    ld   [$D900], a                               ; $5488: $EA $00 $D9
    ld   [$DA00], a                               ; $548B: $EA $00 $DA
    ld   a, [$C134]                               ; $548E: $FA $34 $C1
    and  a                                        ; $5491: $A7
    jr   z, jr_002_5498                           ; $5492: $28 $04

    dec  a                                        ; $5494: $3D
    ld   [$C134], a                               ; $5495: $EA $34 $C1

jr_002_5498:
    ld   a, [$DE05]                               ; $5498: $FA $05 $DE
    and  a                                        ; $549B: $A7
    jr   z, jr_002_54A2                           ; $549C: $28 $04

    dec  a                                        ; $549E: $3D
    ld   [$DE05], a                               ; $549F: $EA $05 $DE

jr_002_54A2:
    ldh  a, [hPressedButtonsMask]                 ; $54A2: $F0 $CB
    and  $20                                      ; $54A4: $E6 $20

jr_002_54A6:
    jr   z, jr_002_54E4                           ; $54A6: $28 $3C

    ldh  a, [hFFCC]                               ; $54A8: $F0 $CC
    and  $40                                      ; $54AA: $E6 $40
    jr   jr_002_54E4                              ; $54AC: $18 $36

    ld   a, $01                                   ; $54AE: $3E $01
    ld   [$D401], a                               ; $54B0: $EA $01 $D4
    ld   a, [$D479]                               ; $54B3: $FA $79 $D4
    ld   e, a                                     ; $54B6: $5F
    inc  a                                        ; $54B7: $3C
    cp   $0B                                      ; $54B8: $FE $0B
    jr   c, jr_002_54BD                           ; $54BA: $38 $01

    xor  a                                        ; $54BC: $AF

jr_002_54BD:
    ld   [$D479], a                               ; $54BD: $EA $79 $D4
    ld   d, $00                                   ; $54C0: $16 $00
    ld   hl, $5471                                ; $54C2: $21 $71 $54
    add  hl, de                                   ; $54C5: $19
    ld   a, [hl]                                  ; $54C6: $7E
    ld   [$D403], a                               ; $54C7: $EA $03 $D4
    ld   hl, $547C                                ; $54CA: $21 $7C $54
    add  hl, de                                   ; $54CD: $19
    ld   a, [hl]                                  ; $54CE: $7E
    ld   [$D402], a                               ; $54CF: $EA $02 $D4
    ld   a, $50                                   ; $54D2: $3E $50
    ld   [$D404], a                               ; $54D4: $EA $04 $D4
    ld   a, $70                                   ; $54D7: $3E $70
    ld   [$D405], a                               ; $54D9: $EA $05 $D4
    ld   hl, $FFF2                                ; $54DC: $21 $F2 $FF
    ld   [hl], $02                                ; $54DF: $36 $02
    jp   label_C7D                                ; $54E1: $C3 $7D $0C

jr_002_54E4:
    ld   b, $00                                   ; $54E4: $06 $00
    ld   c, $0F                                   ; $54E6: $0E $0F

jr_002_54E8:
    ld   a, c                                     ; $54E8: $79
    ld   [$C123], a                               ; $54E9: $EA $23 $C1
    ld   hl, $C510                                ; $54EC: $21 $10 $C5
    add  hl, bc                                   ; $54EF: $09
    ld   a, [hl]                                  ; $54F0: $7E
    and  a                                        ; $54F1: $A7
    jr   z, jr_002_54F7                           ; $54F2: $28 $03

    call func_002_5567                            ; $54F4: $CD $67 $55

jr_002_54F7:
    dec  c                                        ; $54F7: $0D
    ld   a, c                                     ; $54F8: $79
    cp   $FF                                      ; $54F9: $FE $FF
    jr   nz, jr_002_54E8                          ; $54FB: $20 $EB

    ld   a, [wMapSlideTransitionState]            ; $54FD: $FA $24 $C1
    and  a                                        ; $5500: $A7
    jr   nz, jr_002_5529                          ; $5501: $20 $26

    ldh  a, [$FFAC]                               ; $5503: $F0 $AC
    and  a                                        ; $5505: $A7
    jr   z, jr_002_5529                           ; $5506: $28 $21

    cp   $01                                      ; $5508: $FE $01
    jr   nz, jr_002_552A                          ; $550A: $20 $1E

    ld   hl, $FFAD                                ; $550C: $21 $AD $FF
    ldh  a, [hLinkPositionX]                      ; $550F: $F0 $98
    sub  [hl]                                     ; $5511: $96
    add  $06                                      ; $5512: $C6 $06
    cp   $0C                                      ; $5514: $FE $0C
    jr   nc, jr_002_5524                          ; $5516: $30 $0C

    ld   hl, $FFAE                                ; $5518: $21 $AE $FF
    ldh  a, [hLinkPositionY]                      ; $551B: $F0 $99
    sub  [hl]                                     ; $551D: $96
    add  $06                                      ; $551E: $C6 $06
    cp   $0C                                      ; $5520: $FE $0C
    jr   c, jr_002_5529                           ; $5522: $38 $05

jr_002_5524:
    ldh  a, [$FFAC]                               ; $5524: $F0 $AC
    inc  a                                        ; $5526: $3C
    ldh  [$FFAC], a                               ; $5527: $E0 $AC

jr_002_5529:
    ret                                           ; $5529: $C9

jr_002_552A:
    ldh  a, [$FFA2]                               ; $552A: $F0 $A2
    and  a                                        ; $552C: $A7
    jr   nz, jr_002_5566                          ; $552D: $20 $37

    ld   hl, $FFAD                                ; $552F: $21 $AD $FF
    ldh  a, [hLinkPositionX]                      ; $5532: $F0 $98
    sub  [hl]                                     ; $5534: $96
    add  $05                                      ; $5535: $C6 $05
    cp   $0A                                      ; $5537: $FE $0A
    jr   nc, jr_002_5566                          ; $5539: $30 $2B

    ld   hl, $FFAE                                ; $553B: $21 $AE $FF
    ldh  a, [hLinkPositionY]                      ; $553E: $F0 $99
    sub  [hl]                                     ; $5540: $96
    add  $05                                      ; $5541: $C6 $05
    cp   $0A                                      ; $5543: $FE $0A
    jr   nc, jr_002_5566                          ; $5545: $30 $1F

    ld   a, [wC15C]                               ; $5547: $FA $5C $C1
    and  a                                        ; $554A: $A7
    jr   nz, jr_002_5566                          ; $554B: $20 $19

    ldh  a, [hMapIndex]                           ; $554D: $F0 $F6
    cp   $77                                      ; $554F: $FE $77
    jr   nz, jr_002_5560                          ; $5551: $20 $0D

    ld   a, [wActiveRoom]                         ; $5553: $FA $A5 $DB
    and  a                                        ; $5556: $A7
    jr   nz, jr_002_5560                          ; $5557: $20 $07

    ld   a, [$DDD9]                               ; $5559: $FA $D9 $DD
    cp   $80                                      ; $555C: $FE $80
    jr   nz, jr_002_5566                          ; $555E: $20 $06

jr_002_5560:
    call $0C89                                    ; $5560: $CD $89 $0C
    xor  a                                        ; $5563: $AF
    ldh  [$FFAC], a                               ; $5564: $E0 $AC

jr_002_5566:
    ret                                           ; $5566: $C9

func_002_5567::
    push af                                       ; $5567: $F5
    ld   a, [wMapSlideTransitionState]            ; $5568: $FA $24 $C1
    and  a                                        ; $556B: $A7
    jr   nz, jr_002_557C                          ; $556C: $20 $0E

    ld   hl, $C520                                ; $556E: $21 $20 $C5
    add  hl, bc                                   ; $5571: $09
    ld   a, [hl]                                  ; $5572: $7E
    and  a                                        ; $5573: $A7
    jr   z, jr_002_557F                           ; $5574: $28 $09

    dec  a                                        ; $5576: $3D
    ld   [hl], a                                  ; $5577: $77
    ldh  [$FFD7], a                               ; $5578: $E0 $D7
    jr   nz, jr_002_557F                          ; $557A: $20 $03

jr_002_557C:
    call func_002_58E6                            ; $557C: $CD $E6 $58

jr_002_557F:
    pop  af                                       ; $557F: $F1
    dec  a                                        ; $5580: $3D
    rst  $00                                      ; $5581: $C7
    dec  h                                        ; $5582: $25
    ld   e, b                                     ; $5583: $58
    and  h                                        ; $5584: $A4
    ld   e, b                                     ; $5585: $58
    and  h                                        ; $5586: $A4
    ld   e, b                                     ; $5587: $58
    and  h                                        ; $5588: $A4
    ld   e, b                                     ; $5589: $58
    db   $ed                                      ; $558A: $ED
    ld   d, a                                     ; $558B: $57
    or   h                                        ; $558C: $B4
    ld   d, a                                     ; $558D: $57
    ld   e, [hl]                                  ; $558E: $5E
    ld   d, a                                     ; $558F: $57
    ld   b, [hl]                                  ; $5590: $46
    ld   d, a                                     ; $5591: $57
    ld   b, [hl]                                  ; $5592: $46
    ld   d, [hl]                                  ; $5593: $56
    inc  c                                        ; $5594: $0C
    ld   d, [hl]                                  ; $5595: $56
    jr   jr_002_55EF                              ; $5596: $18 $57

    dec  e                                        ; $5598: $1D
    ld   e, b                                     ; $5599: $58
    call c, $0055                                 ; $559A: $DC $55 $00
    nop                                           ; $559D: $00
    ld   [$0020], sp                              ; $559E: $08 $20 $00
    ld   [$2006], sp                              ; $55A1: $08 $06 $20
    nop                                           ; $55A4: $00
    nop                                           ; $55A5: $00
    ld   b, $00                                   ; $55A6: $06 $00
    nop                                           ; $55A8: $00
    ld   [$0008], sp                              ; $55A9: $08 $08 $00
    nop                                           ; $55AC: $00
    inc  b                                        ; $55AD: $04
    inc  b                                        ; $55AE: $04
    ld   b, b                                     ; $55AF: $40
    nop                                           ; $55B0: $00
    inc  b                                        ; $55B1: $04
    inc  b                                        ; $55B2: $04
    ld   b, b                                     ; $55B3: $40
    nop                                           ; $55B4: $00
    inc  b                                        ; $55B5: $04
    inc  b                                        ; $55B6: $04
    nop                                           ; $55B7: $00
    nop                                           ; $55B8: $00
    inc  b                                        ; $55B9: $04
    inc  b                                        ; $55BA: $04
    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    ld   [$0030], sp                              ; $55BE: $08 $30 $00
    ld   [$3006], sp                              ; $55C1: $08 $06 $30
    nop                                           ; $55C4: $00
    nop                                           ; $55C5: $00
    ld   b, $10                                   ; $55C6: $06 $10
    nop                                           ; $55C8: $00
    ld   [$1008], sp                              ; $55C9: $08 $08 $10
    nop                                           ; $55CC: $00
    inc  b                                        ; $55CD: $04
    inc  b                                        ; $55CE: $04
    ld   d, b                                     ; $55CF: $50
    nop                                           ; $55D0: $00
    inc  b                                        ; $55D1: $04
    inc  b                                        ; $55D2: $04
    ld   d, b                                     ; $55D3: $50
    nop                                           ; $55D4: $00
    inc  b                                        ; $55D5: $04
    inc  b                                        ; $55D6: $04
    stop                                          ; $55D7: $10 $00
    inc  b                                        ; $55D9: $04
    inc  b                                        ; $55DA: $04
    db   $10                                      ; $55DB: $10
    ldh  a, [hFrameCounter]                       ; $55DC: $F0 $E7
    xor  c                                        ; $55DE: $A9
    and  $01                                      ; $55DF: $E6 $01
    ret  z                                        ; $55E1: $C8

    call func_002_58D0                            ; $55E2: $CD $D0 $58
    ld   hl, $C590                                ; $55E5: $21 $90 $C5
    add  hl, bc                                   ; $55E8: $09
    ld   a, [hl]                                  ; $55E9: $7E
    rla                                           ; $55EA: $17
    rla                                           ; $55EB: $17
    rla                                           ; $55EC: $17
    and  $F8                                      ; $55ED: $E6 $F8

jr_002_55EF:
    ld   e, a                                     ; $55EF: $5F
    ld   d, b                                     ; $55F0: $50
    ld   hl, $559C                                ; $55F1: $21 $9C $55
    ldh  a, [hFrameCounter]                       ; $55F4: $F0 $E7
    and  $02                                      ; $55F6: $E6 $02
    jr   z, jr_002_55FD                           ; $55F8: $28 $03

    ld   hl, $55BC                                ; $55FA: $21 $BC $55

jr_002_55FD:
    jp   label_002_583A                           ; $55FD: $C3 $3A $58

    ld   hl, sp+$00                               ; $5600: $F8 $00
    ld   [$6C10], sp                              ; $5602: $08 $10 $6C
    ld   l, [hl]                                  ; $5605: $6E
    ld   l, [hl]                                  ; $5606: $6E
    ld   l, h                                     ; $5607: $6C
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    jr   nz, @+$22                                ; $560A: $20 $20

    call func_002_58D0                            ; $560C: $CD $D0 $58
    ld   a, [$C3C0]                               ; $560F: $FA $C0 $C3
    ld   e, a                                     ; $5612: $5F
    ld   d, $00                                   ; $5613: $16 $00
    ld   hl, $C030                                ; $5615: $21 $30 $C0
    add  hl, de                                   ; $5618: $19
    ld   e, l                                     ; $5619: $5D
    ld   d, h                                     ; $561A: $54
    push bc                                       ; $561B: $C5
    ld   c, $04                                   ; $561C: $0E $04

jr_002_561E:
    ldh  a, [$FFD8]                               ; $561E: $F0 $D8
    ld   [de], a                                  ; $5620: $12
    inc  de                                       ; $5621: $13
    ldh  a, [$FFD9]                               ; $5622: $F0 $D9
    ld   hl, $55FF                                ; $5624: $21 $FF $55
    add  hl, bc                                   ; $5627: $09
    add  [hl]                                     ; $5628: $86
    ld   [de], a                                  ; $5629: $12
    inc  de                                       ; $562A: $13
    ld   hl, $5603                                ; $562B: $21 $03 $56
    add  hl, bc                                   ; $562E: $09
    ld   a, [hl]                                  ; $562F: $7E
    ld   [de], a                                  ; $5630: $12
    inc  de                                       ; $5631: $13
    ld   hl, $5607                                ; $5632: $21 $07 $56
    add  hl, bc                                   ; $5635: $09
    ld   a, [hl]                                  ; $5636: $7E
    ld   [de], a                                  ; $5637: $12
    inc  de                                       ; $5638: $13
    dec  c                                        ; $5639: $0D
    jr   nz, jr_002_561E                          ; $563A: $20 $E2

    pop  bc                                       ; $563C: $C1
    ld   a, $04                                   ; $563D: $3E $04
    jp   label_002_58F5                           ; $563F: $C3 $F5 $58

    ld   a, [hl]                                  ; $5642: $7E
    rra                                           ; $5643: $1F
    inc  c                                        ; $5644: $0C
    rra                                           ; $5645: $1F
    ld   a, $02                                   ; $5646: $3E $02
    ldh  [$FFA1], a                               ; $5648: $E0 $A1
    ld   [wC167], a                               ; $564A: $EA $67 $C1
    xor  a                                        ; $564D: $AF
    ld   [wScreenShakeHorizontal], a              ; $564E: $EA $55 $C1
    ldh  a, [$FFD7]                               ; $5651: $F0 $D7
    cp   $02                                      ; $5653: $FE $02
    jr   nc, jr_002_565B                          ; $5655: $30 $04

    ld   hl, wC167                                ; $5657: $21 $67 $C1
    ld   [hl], b                                  ; $565A: $70

jr_002_565B:
    cp   $DE                                      ; $565B: $FE $DE
    jr   nz, jr_002_5664                          ; $565D: $20 $05

    call label_002_5420                           ; $565F: $CD $20 $54
    ld   a, $DE                                   ; $5662: $3E $DE

jr_002_5664:
    cp   $A0                                      ; $5664: $FE $A0
    jr   nz, jr_002_566D                          ; $5666: $20 $05

    ld   hl, hFFF4                                ; $5668: $21 $F4 $FF
    ld   [hl], $2A                                ; $566B: $36 $2A

jr_002_566D:
    cp   $0A                                      ; $566D: $FE $0A
    jr   nz, jr_002_5678                          ; $566F: $20 $07

    ld   a, $50                                   ; $5671: $3E $50
    ld   [$C5AF], a                               ; $5673: $EA $AF $C5
    ld   a, $0A                                   ; $5676: $3E $0A

jr_002_5678:
    cp   $20                                      ; $5678: $FE $20
    jr   c, jr_002_568C                           ; $567A: $38 $10

    cp   $9C                                      ; $567C: $FE $9C
    ret  nc                                       ; $567E: $D0

    ld   e, $01                                   ; $567F: $1E $01
    and  $04                                      ; $5681: $E6 $04
    jr   z, jr_002_5687                           ; $5683: $28 $02

    ld   e, $FE                                   ; $5685: $1E $FE

jr_002_5687:
    ld   a, e                                     ; $5687: $7B
    ld   [wScreenShakeHorizontal], a              ; $5688: $EA $55 $C1
    ret                                           ; $568B: $C9

jr_002_568C:
    and  $0F                                      ; $568C: $E6 $0F
    cp   $08                                      ; $568E: $FE $08
    jp   nz, label_002_5707                       ; $5690: $C2 $07 $57

    ldh  a, [$FFD7]                               ; $5693: $F0 $D7
    rra                                           ; $5695: $1F
    rra                                           ; $5696: $1F
    rra                                           ; $5697: $1F
    and  $02                                      ; $5698: $E6 $02
    ld   e, a                                     ; $569A: $5F
    ld   d, b                                     ; $569B: $50
    ld   hl, $5642                                ; $569C: $21 $42 $56
    add  hl, de                                   ; $569F: $19
    ld   a, [hl+]                                 ; $56A0: $2A
    ldh  [$FFD7], a                               ; $56A1: $E0 $D7
    ld   a, [hl]                                  ; $56A3: $7E
    ldh  [$FFD8], a                               ; $56A4: $E0 $D8
    ld   a, $60                                   ; $56A6: $3E $60
    ldh  [$FFCE], a                               ; $56A8: $E0 $CE
    ldh  a, [hMapIndex]                           ; $56AA: $F0 $F6
    cp   $B5                                      ; $56AC: $FE $B5
    ld   a, $10                                   ; $56AE: $3E $10
    jr   nz, jr_002_56B8                          ; $56B0: $20 $06

    ld   a, $60                                   ; $56B2: $3E $60
    ldh  [$FFCE], a                               ; $56B4: $E0 $CE
    ld   a, $10                                   ; $56B6: $3E $10

jr_002_56B8:
    ldh  [$FFCD], a                               ; $56B8: $E0 $CD
    call label_2887                               ; $56BA: $CD $87 $28
    ld   a, [wRequests]                           ; $56BD: $FA $00 $D6
    ld   e, a                                     ; $56C0: $5F
    ld   d, b                                     ; $56C1: $50
    ld   hl, wRequestDestinationHigh              ; $56C2: $21 $01 $D6
    add  hl, de                                   ; $56C5: $19
    ldh  a, [$FFCF]                               ; $56C6: $F0 $CF
    ld   [hl+], a                                 ; $56C8: $22
    ldh  a, [$FFD0]                               ; $56C9: $F0 $D0
    ld   [hl+], a                                 ; $56CB: $22
    ld   a, $41                                   ; $56CC: $3E $41
    ld   [hl+], a                                 ; $56CE: $22
    ldh  a, [$FFD7]                               ; $56CF: $F0 $D7
    ld   [hl+], a                                 ; $56D1: $22
    ldh  a, [$FFCF]                               ; $56D2: $F0 $CF
    ld   [hl+], a                                 ; $56D4: $22
    ldh  a, [$FFD0]                               ; $56D5: $F0 $D0
    add  $20                                      ; $56D7: $C6 $20
    ld   [hl+], a                                 ; $56D9: $22
    ld   a, $41                                   ; $56DA: $3E $41
    ld   [hl+], a                                 ; $56DC: $22
    ldh  a, [$FFD8]                               ; $56DD: $F0 $D8
    ld   [hl+], a                                 ; $56DF: $22
    ld   [hl], b                                  ; $56E0: $70
    ld   a, e                                     ; $56E1: $7B
    add  $08                                      ; $56E2: $C6 $08
    ld   [wRequests], a                           ; $56E4: $EA $00 $D6
    ld   hl, $C520                                ; $56E7: $21 $20 $C5
    add  hl, bc                                   ; $56EA: $09
    ld   a, [hl]                                  ; $56EB: $7E
    cp   $08                                      ; $56EC: $FE $08
    jr   nz, label_002_5707                       ; $56EE: $20 $17

    ld   hl, $D727                                ; $56F0: $21 $27 $D7
    ldh  a, [hMapIndex]                           ; $56F3: $F0 $F6
    cp   $B5                                      ; $56F5: $FE $B5
    jr   nz, jr_002_56FC                          ; $56F7: $20 $03

    ld   hl, $D727                                ; $56F9: $21 $27 $D7

jr_002_56FC:
    ld   [hl], $E3                                ; $56FC: $36 $E3
    ld   a, $82                                   ; $56FE: $3E $82
    call label_B2F                                ; $5700: $CD $2F $0B
    ld   a, $23                                   ; $5703: $3E $23
    ldh  [$FFF2], a                               ; $5705: $E0 $F2

label_002_5707::
    ret                                           ; $5707: $C9

    nop                                           ; $5708: $00
    inc  b                                        ; $5709: $04
    inc  h                                        ; $570A: $24
    ld   bc, $0400                                ; $570B: $01 $00 $04
    inc  h                                        ; $570E: $24
    ld   bc, $0000                                ; $570F: $01 $00 $00
    ld   e, $01                                   ; $5712: $1E $01
    nop                                           ; $5714: $00
    ld   [$611E], sp                              ; $5715: $08 $1E $61
    call func_002_58D0                            ; $5718: $CD $D0 $58
    ldh  a, [$FFD7]                               ; $571B: $F0 $D7
    and  $08                                      ; $571D: $E6 $08
    ld   d, $00                                   ; $571F: $16 $00
    ld   e, a                                     ; $5721: $5F
    ld   hl, $5708                                ; $5722: $21 $08 $57
    ld   a, [$C14A]                               ; $5725: $FA $4A $C1
    and  a                                        ; $5728: $A7
    jp   nz, label_002_583A                       ; $5729: $C2 $3A $58

    add  hl, de                                   ; $572C: $19
    ld   de, wOAMBuffer                           ; $572D: $11 $00 $C0
    call label_002_5854                           ; $5730: $CD $54 $58
    jp   label_002_5854                           ; $5733: $C3 $54 $58

    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    ld   e, $01                                   ; $5738: $1E $01
    nop                                           ; $573A: $00
    ld   [$611E], sp                              ; $573B: $08 $1E $61
    nop                                           ; $573E: $00
    nop                                           ; $573F: $00
    jr   nc, jr_002_5743                          ; $5740: $30 $01

    nop                                           ; $5742: $00

jr_002_5743:
    ld   [$6130], sp                              ; $5743: $08 $30 $61
    call func_002_58D0                            ; $5746: $CD $D0 $58
    ldh  a, [$FFD7]                               ; $5749: $F0 $D7
    and  $08                                      ; $574B: $E6 $08
    ld   d, $00                                   ; $574D: $16 $00
    ld   e, a                                     ; $574F: $5F
    ld   hl, $5736                                ; $5750: $21 $36 $57
    jp   label_002_583A                           ; $5753: $C3 $3A $58

    ld   bc, $01FF                                ; $5756: $01 $FF $01
    rst  $38                                      ; $5759: $FF
    ld   bc, $FF01                                ; $575A: $01 $01 $FF
    rst  $38                                      ; $575D: $FF
    ldh  a, [$FFD7]                               ; $575E: $F0 $D7
    cp   $0A                                      ; $5760: $FE $0A
    jr   c, jr_002_5780                           ; $5762: $38 $1C

    ld   hl, $C590                                ; $5764: $21 $90 $C5
    add  hl, bc                                   ; $5767: $09
    ld   e, [hl]                                  ; $5768: $5E
    ld   d, b                                     ; $5769: $50
    ld   hl, $5756                                ; $576A: $21 $56 $57
    add  hl, de                                   ; $576D: $19
    ld   a, [hl]                                  ; $576E: $7E
    ld   hl, $C530                                ; $576F: $21 $30 $C5
    add  hl, bc                                   ; $5772: $09
    add  [hl]                                     ; $5773: $86
    ld   [hl], a                                  ; $5774: $77
    ld   hl, $575A                                ; $5775: $21 $5A $57
    add  hl, de                                   ; $5778: $19
    ld   a, [hl]                                  ; $5779: $7E
    ld   hl, $C540                                ; $577A: $21 $40 $C5
    add  hl, bc                                   ; $577D: $09
    add  [hl]                                     ; $577E: $86
    ld   [hl], a                                  ; $577F: $77

jr_002_5780:
    call func_002_58D0                            ; $5780: $CD $D0 $58
    push bc                                       ; $5783: $C5
    ld   c, $3A                                   ; $5784: $0E $3A
    ldh  a, [$FFD7]                               ; $5786: $F0 $D7
    cp   $07                                      ; $5788: $FE $07
    jr   nc, jr_002_578E                          ; $578A: $30 $02

    ld   c, $3C                                   ; $578C: $0E $3C

jr_002_578E:
    ld   a, [$C3C0]                               ; $578E: $FA $C0 $C3
    ld   e, a                                     ; $5791: $5F
    ld   d, $00                                   ; $5792: $16 $00
    ld   hl, $C030                                ; $5794: $21 $30 $C0
    add  hl, de                                   ; $5797: $19
    ldh  a, [$FFD8]                               ; $5798: $F0 $D8
    ld   [hl+], a                                 ; $579A: $22
    ldh  a, [$FFD9]                               ; $579B: $F0 $D9
    ld   [hl+], a                                 ; $579D: $22
    ld   a, c                                     ; $579E: $79
    ld   [hl+], a                                 ; $579F: $22
    xor  a                                        ; $57A0: $AF
    ld   [hl+], a                                 ; $57A1: $22
    ldh  a, [$FFD8]                               ; $57A2: $F0 $D8
    ld   [hl+], a                                 ; $57A4: $22
    ldh  a, [$FFD9]                               ; $57A5: $F0 $D9
    add  $08                                      ; $57A7: $C6 $08
    ld   [hl+], a                                 ; $57A9: $22
    ld   a, c                                     ; $57AA: $79
    ld   [hl+], a                                 ; $57AB: $22
    ld   [hl], $20                                ; $57AC: $36 $20
    pop  bc                                       ; $57AE: $C1
    ld   a, $02                                   ; $57AF: $3E $02
    jp   label_002_58F5                           ; $57B1: $C3 $F5 $58

    call func_002_58D0                            ; $57B4: $CD $D0 $58
    ld   a, [$C3C0]                               ; $57B7: $FA $C0 $C3
    ld   e, a                                     ; $57BA: $5F

jr_002_57BB:
    ld   d, $00                                   ; $57BB: $16 $00
    ld   hl, $C030                                ; $57BD: $21 $30 $C0
    add  hl, de                                   ; $57C0: $19
    ldh  a, [$FFD8]                               ; $57C1: $F0 $D8
    ld   [hl+], a                                 ; $57C3: $22
    ldh  a, [$FFD9]                               ; $57C4: $F0 $D9
    ld   [hl+], a                                 ; $57C6: $22
    ld   a, $24                                   ; $57C7: $3E $24
    ld   [hl+], a                                 ; $57C9: $22
    ldh  a, [hFrameCounter]                       ; $57CA: $F0 $E7
    xor  c                                        ; $57CC: $A9
    rl   a                                        ; $57CD: $CB $17
    rl   a                                        ; $57CF: $CB $17
    rl   a                                        ; $57D1: $CB $17
    rl   a                                        ; $57D3: $CB $17
    and  $10                                      ; $57D5: $E6 $10
    ld   [hl], a                                  ; $57D7: $77
    ld   a, $01                                   ; $57D8: $3E $01
    jp   label_002_58F5                           ; $57DA: $C3 $F5 $58

    nop                                           ; $57DD: $00
    rst  $38                                      ; $57DE: $FF
    inc  a                                        ; $57DF: $3C
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    rlca                                          ; $57E2: $07
    inc  a                                        ; $57E3: $3C
    jr   nz, jr_002_57E6                          ; $57E4: $20 $00

jr_002_57E6:
    rst  $38                                      ; $57E6: $FF
    ld   a, [hl-]                                 ; $57E7: $3A
    nop                                           ; $57E8: $00
    nop                                           ; $57E9: $00
    rlca                                          ; $57EA: $07
    ld   a, [hl-]                                 ; $57EB: $3A
    jr   nz, jr_002_57BB                          ; $57EC: $20 $CD

    ret  nc                                       ; $57EE: $D0

    ld   e, b                                     ; $57EF: $58
    ldh  a, [$FFD7]                               ; $57F0: $F0 $D7
    and  $08                                      ; $57F2: $E6 $08
    ld   d, $00                                   ; $57F4: $16 $00
    ld   e, a                                     ; $57F6: $5F
    ld   hl, $57DD                                ; $57F7: $21 $DD $57
    jp   label_002_583A                           ; $57FA: $C3 $3A $58

    or   $FE                                      ; $57FD: $F6 $FE
    jr   jr_002_5801                              ; $57FF: $18 $00

jr_002_5801:
    ld   hl, sp+$0A                               ; $5801: $F8 $0A
    jr   jr_002_5825                              ; $5803: $18 $20

    db   $fc                                      ; $5805: $FC
    nop                                           ; $5806: $00
    jr   jr_002_5809                              ; $5807: $18 $00

jr_002_5809:
    cp   $08                                      ; $5809: $FE $08
    jr   jr_002_582D                              ; $580B: $18 $20

    nop                                           ; $580D: $00
    ld   a, [$0018]                               ; $580E: $FA $18 $00
    nop                                           ; $5811: $00
    ld   c, $18                                   ; $5812: $0E $18
    jr   nz, @+$04                                ; $5814: $20 $02

    db   $fc                                      ; $5816: $FC
    jr   jr_002_5819                              ; $5817: $18 $00

jr_002_5819:
    ld   [bc], a                                  ; $5819: $02
    inc  c                                        ; $581A: $0C
    jr   @+$22                                    ; $581B: $18 $20

    call func_002_58D0                            ; $581D: $CD $D0 $58
    ld   hl, $580D                                ; $5820: $21 $0D $58
    jr   jr_002_5833                              ; $5823: $18 $0E

jr_002_5825:
    call func_002_58D0                            ; $5825: $CD $D0 $58
    ld   a, [$C1A7]                               ; $5828: $FA $A7 $C1
    cp   $02                                      ; $582B: $FE $02

jr_002_582D:
    jp   z, label_002_5877                        ; $582D: $CA $77 $58

    ld   hl, $57FD                                ; $5830: $21 $FD $57

jr_002_5833:
    ldh  a, [$FFD7]                               ; $5833: $F0 $D7
    and  $08                                      ; $5835: $E6 $08
    ld   e, a                                     ; $5837: $5F
    ld   d, $00                                   ; $5838: $16 $00

label_002_583A::
    add  hl, de                                   ; $583A: $19
    push hl                                       ; $583B: $E5
    ld   a, [$C3C0]                               ; $583C: $FA $C0 $C3
    ld   e, a                                     ; $583F: $5F
    ld   d, $00                                   ; $5840: $16 $00
    ld   hl, $C030                                ; $5842: $21 $30 $C0
    add  hl, de                                   ; $5845: $19
    ld   e, l                                     ; $5846: $5D
    ld   d, h                                     ; $5847: $54
    pop  hl                                       ; $5848: $E1
    call label_002_5854                           ; $5849: $CD $54 $58
    call label_002_5854                           ; $584C: $CD $54 $58
    ld   a, $02                                   ; $584F: $3E $02
    jp   label_002_58F5                           ; $5851: $C3 $F5 $58

label_002_5854::
    ldh  a, [$FFD8]                               ; $5854: $F0 $D8
    add  [hl]                                     ; $5856: $86
    ld   [de], a                                  ; $5857: $12
    inc  hl                                       ; $5858: $23
    inc  de                                       ; $5859: $13
    ldh  a, [$FFD9]                               ; $585A: $F0 $D9
    add  [hl]                                     ; $585C: $86
    ld   [de], a                                  ; $585D: $12
    inc  hl                                       ; $585E: $23
    inc  de                                       ; $585F: $13
    ld   a, [hl+]                                 ; $5860: $2A
    ld   [de], a                                  ; $5861: $12
    inc  de                                       ; $5862: $13
    ld   a, [hl+]                                 ; $5863: $2A
    ld   [de], a                                  ; $5864: $12
    inc  de                                       ; $5865: $13
    ret                                           ; $5866: $C9

    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    ld   a, d                                     ; $5869: $7A
    nop                                           ; $586A: $00
    nop                                           ; $586B: $00
    ld   [$207A], sp                              ; $586C: $08 $7A $20
    nop                                           ; $586F: $00
    nop                                           ; $5870: $00
    ld   a, b                                     ; $5871: $78
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    ld   [$2078], sp                              ; $5874: $08 $78 $20

label_002_5877::
    ldh  a, [$FFD7]                               ; $5877: $F0 $D7
    and  $08                                      ; $5879: $E6 $08
    ld   d, $00                                   ; $587B: $16 $00
    ld   e, a                                     ; $587D: $5F
    ld   hl, $5867                                ; $587E: $21 $67 $58
    jp   label_002_583A                           ; $5881: $C3 $3A $58

    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    ld   [hl-], a                                 ; $5886: $32
    ld   bc, label_800                            ; $5887: $01 $00 $08
    ld   [hl-], a                                 ; $588A: $32
    ld   hl, $0000                                ; $588B: $21 $00 $00
    ld   [hl-], a                                 ; $588E: $32
    ld   bc, label_800                            ; $588F: $01 $00 $08
    ld   [hl-], a                                 ; $5892: $32
    ld   hl, $0000                                ; $5893: $21 $00 $00
    jr   nc, jr_002_5899                          ; $5896: $30 $01

    nop                                           ; $5898: $00

jr_002_5899:
    ld   [$2130], sp                              ; $5899: $08 $30 $21
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    jr   nc, jr_002_58A1                          ; $589E: $30 $01

    nop                                           ; $58A0: $00

jr_002_58A1:
    ld   [$2130], sp                              ; $58A1: $08 $30 $21
    call func_002_58D0                            ; $58A4: $CD $D0 $58
    ldh  a, [$FFD7]                               ; $58A7: $F0 $D7
    cp   $04                                      ; $58A9: $FE $04
    jr   nz, jr_002_58BB                          ; $58AB: $20 $0E

    ld   hl, $C510                                ; $58AD: $21 $10 $C5
    add  hl, bc                                   ; $58B0: $09
    ld   a, [hl]                                  ; $58B1: $7E
    cp   $03                                      ; $58B2: $FE $03
    jr   nz, jr_002_58BB                          ; $58B4: $20 $05

    call func_002_5ED3                            ; $58B6: $CD $D3 $5E
    jr   jr_002_58C2                              ; $58B9: $18 $07

jr_002_58BB:
    cp   $04                                      ; $58BB: $FE $04
    jr   nz, jr_002_58C2                          ; $58BD: $20 $03

    call func_002_5F5C                            ; $58BF: $CD $5C $5F

jr_002_58C2:
    ldh  a, [$FFD7]                               ; $58C2: $F0 $D7
    rla                                           ; $58C4: $17
    and  $18                                      ; $58C5: $E6 $18
    ld   d, $00                                   ; $58C7: $16 $00
    ld   e, a                                     ; $58C9: $5F
    ld   hl, $5884                                ; $58CA: $21 $84 $58
    jp   label_002_583A                           ; $58CD: $C3 $3A $58

func_002_58D0::
    ld   hl, $C540                                ; $58D0: $21 $40 $C5
    add  hl, bc                                   ; $58D3: $09
    ld   a, [hl]                                  ; $58D4: $7E
    ldh  [$FFD8], a                               ; $58D5: $E0 $D8
    cp   $88                                      ; $58D7: $FE $88
    jr   nc, func_002_58E6                        ; $58D9: $30 $0B

    ld   hl, $C530                                ; $58DB: $21 $30 $C5
    add  hl, bc                                   ; $58DE: $09
    ld   a, [hl]                                  ; $58DF: $7E
    ldh  [$FFD9], a                               ; $58E0: $E0 $D9
    cp   $A8                                      ; $58E2: $FE $A8
    jr   c, jr_002_58EC                           ; $58E4: $38 $06

func_002_58E6::
    ld   hl, $C510                                ; $58E6: $21 $10 $C5
    add  hl, bc                                   ; $58E9: $09
    xor  a                                        ; $58EA: $AF
    ld   [hl], a                                  ; $58EB: $77

jr_002_58EC:
    ret                                           ; $58EC: $C9

    nop                                           ; $58ED: $00
    ld   [$1810], sp                              ; $58EE: $08 $10 $18
    jr   nz, jr_002_591B                          ; $58F1: $20 $28

    jr   nc, @+$3A                                ; $58F3: $30 $38

label_002_58F5::
    sla  a                                        ; $58F5: $CB $27
    sla  a                                        ; $58F7: $CB $27
    ld   e, a                                     ; $58F9: $5F
    ld   a, [$C3C0]                               ; $58FA: $FA $C0 $C3
    add  e                                        ; $58FD: $83
    cp   $60                                      ; $58FE: $FE $60
    jr   c, jr_002_5904                           ; $5900: $38 $02

    sub  $60                                      ; $5902: $D6 $60

jr_002_5904:
    ld   [$C3C0], a                               ; $5904: $EA $C0 $C3
    ld   a, [$C3C1]                               ; $5907: $FA $C1 $C3
    add  e                                        ; $590A: $83
    ld   [$C3C1], a                               ; $590B: $EA $C1 $C3
    cp   $60                                      ; $590E: $FE $60
    jr   c, jr_002_5925                           ; $5910: $38 $13

    ldh  a, [hFrameCounter]                       ; $5912: $F0 $E7
    ld   hl, $C123                                ; $5914: $21 $23 $C1
    add  [hl]                                     ; $5917: $86
    and  $07                                      ; $5918: $E6 $07
    ld   e, a                                     ; $591A: $5F

jr_002_591B:
    ld   d, $00                                   ; $591B: $16 $00
    ld   hl, $58ED                                ; $591D: $21 $ED $58
    add  hl, de                                   ; $5920: $19
    ld   a, [hl]                                  ; $5921: $7E
    ld   [$C3C0], a                               ; $5922: $EA $C0 $C3

jr_002_5925:
    ret                                           ; $5925: $C9

func_002_5926::
    ldh  a, [hLinkPositionY]                      ; $5926: $F0 $99

func_002_5928::
    ldh  [$FFD8], a                               ; $5928: $E0 $D8
    ldh  a, [hLinkPositionX]                      ; $592A: $F0 $98
    ldh  [$FFD7], a                               ; $592C: $E0 $D7
    ld   a, $0E                                   ; $592E: $3E $0E
    ldh  [$FFF2], a                               ; $5930: $E0 $F2
    ld   a, $01                                   ; $5932: $3E $01
    jp   label_CC7                                ; $5934: $C3 $C7 $0C

    cp   $FD                                      ; $5937: $FE $FD
    ei                                            ; $5939: $FB
    rst  $30                                      ; $593A: $F7
    ld   hl, wDialogState                         ; $593B: $21 $9F $C1
    ld   a, [wMapSlideTransitionState]            ; $593E: $FA $24 $C1
    or   [hl]                                     ; $5941: $B6
    ld   hl, wInventoryAppearing                  ; $5942: $21 $4F $C1
    or   [hl]                                     ; $5945: $B6
    jr   nz, jr_002_5967                          ; $5946: $20 $1F

    ld   a, [wActiveRoom]                         ; $5948: $FA $A5 $DB
    and  a                                        ; $594B: $A7
    jr   z, jr_002_5967                           ; $594C: $28 $19

    call func_002_5D4F                            ; $594E: $CD $4F $5D
    ld   a, [$C188]                               ; $5951: $FA $88 $C1
    and  a                                        ; $5954: $A7
    jr   z, jr_002_5968                           ; $5955: $28 $11

    cp   $02                                      ; $5957: $FE $02
    ld   a, $01                                   ; $5959: $3E $01
    ldh  [$FFA1], a                               ; $595B: $E0 $A1
    jr   z, jr_002_5964                           ; $595D: $28 $05

    call $5A7B                                    ; $595F: $CD $7B $5A
    jr   jr_002_5967                              ; $5962: $18 $03

jr_002_5964:
    call func_002_5C04                            ; $5964: $CD $04 $5C

jr_002_5967:
    ret                                           ; $5967: $C9

jr_002_5968:
    ld   a, [$C18C]                               ; $5968: $FA $8C $C1
    and  a                                        ; $596B: $A7
    jr   z, jr_002_599D                           ; $596C: $28 $2F

    ld   e, $03                                   ; $596E: $1E $03
    ld   a, [$C18A]                               ; $5970: $FA $8A $C1
    ld   c, a                                     ; $5973: $4F

jr_002_5974:
    inc  e                                        ; $5974: $1C
    ld   a, e                                     ; $5975: $7B
    cp   $08                                      ; $5976: $FE $08
    jr   z, jr_002_5998                           ; $5978: $28 $1E

    srl  c                                        ; $597A: $CB $39
    jr   nc, jr_002_5974                          ; $597C: $30 $F6

    ld   d, $00                                   ; $597E: $16 $00
    ld   hl, $5933                                ; $5980: $21 $33 $59
    add  hl, de                                   ; $5983: $19
    ld   a, [$C18A]                               ; $5984: $FA $8A $C1
    and  [hl]                                     ; $5987: $A6
    ld   [$C18A], a                               ; $5988: $EA $8A $C1
    ld   a, e                                     ; $598B: $7B
    ld   [$C189], a                               ; $598C: $EA $89 $C1
    xor  a                                        ; $598F: $AF
    ld   [$DBAC], a                               ; $5990: $EA $AC $DB
    inc  a                                        ; $5993: $3C
    ld   [$C188], a                               ; $5994: $EA $88 $C1
    ret                                           ; $5997: $C9

jr_002_5998:
    xor  a                                        ; $5998: $AF
    ld   [$C18C], a                               ; $5999: $EA $8C $C1
    ret                                           ; $599C: $C9

jr_002_599D:
    ld   a, [$C18D]                               ; $599D: $FA $8D $C1
    and  a                                        ; $59A0: $A7
    jr   nz, jr_002_59A4                          ; $59A1: $20 $01

    ret                                           ; $59A3: $C9

jr_002_59A4:
    ld   e, $03                                   ; $59A4: $1E $03
    ld   a, [$C18B]                               ; $59A6: $FA $8B $C1
    ld   c, a                                     ; $59A9: $4F

jr_002_59AA:
    inc  e                                        ; $59AA: $1C
    ld   a, e                                     ; $59AB: $7B
    cp   $08                                      ; $59AC: $FE $08
    jr   z, jr_002_59CF                           ; $59AE: $28 $1F

    srl  c                                        ; $59B0: $CB $39
    jr   nc, jr_002_59AA                          ; $59B2: $30 $F6

    ld   d, $00                                   ; $59B4: $16 $00
    ld   hl, $5933                                ; $59B6: $21 $33 $59
    add  hl, de                                   ; $59B9: $19
    ld   a, [$C18B]                               ; $59BA: $FA $8B $C1
    and  [hl]                                     ; $59BD: $A6
    ld   [$C18B], a                               ; $59BE: $EA $8B $C1
    ld   a, e                                     ; $59C1: $7B
    ld   [$C189], a                               ; $59C2: $EA $89 $C1
    ld   a, $02                                   ; $59C5: $3E $02
    ld   [$C188], a                               ; $59C7: $EA $88 $C1
    xor  a                                        ; $59CA: $AF
    ld   [$DBAC], a                               ; $59CB: $EA $AC $DB
    ret                                           ; $59CE: $C9

jr_002_59CF:
    xor  a                                        ; $59CF: $AF
    ld   [$C18D], a                               ; $59D0: $EA $8D $C1
    ret                                           ; $59D3: $C9

Data_002_59D4::
    db   $50, $51, $13, $12, $11, $10, $42, $43, $45, $13, $55, $11, $12, $46, $10, $56
    db   $58, $59, $13, $12, $11, $10, $4A, $4B, $4D, $13, $5D, $11, $12, $4E, $10, $5E
    db   $02, $03, $13, $12, $11, $10, $13, $12, $11, $10, $13, $12, $12, $13, $10, $11
    db   $12, $13, $10, $11, $11, $10, $13, $12, $11, $10, $13, $12, $12, $13, $10, $11
    db   $12, $13, $10, $11, $11, $10, $13, $12, $08, $08, $00, $00, $08, $08, $00, $00
    db   $08, $08, $08, $00, $00, $08, $08, $00, $00, $08, $00, $00, $08, $08, $00, $00
    db   $08, $08, $00, $08, $08, $10, $10, $08, $08, $10, $10, $08, $00, $00, $00, $00
    db   $00, $00, $00, $00, $01, $01, $10, $10, $01, $01, $10, $10, $43, $8C, $09, $0B
    db   $43, $8C, $09, $0B, $44, $08, $0A, $0C, $44, $08, $0A, $0C, $04, $08, $02, $01
    db   $04, $08, $02, $01, $04, $F8, $08, $FF, $01, $F8, $08, $FF, $01, $F8, $08, $04
    db   $01, $02, $08, $04, $01                  

    ld   [bc], a                                  ; $5A79: $02
    ld   [$001E], sp                              ; $5A7A: $08 $1E $00
    ld   d, e                                     ; $5A7D: $53
    ld   c, e                                     ; $5A7E: $4B
    ld   b, e                                     ; $5A7F: $43
    xor  a                                        ; $5A80: $AF
    ldh  [$FFE3], a                               ; $5A81: $E0 $E3
    ldh  [$FFE5], a                               ; $5A83: $E0 $E5
    ld   a, [$C189]                               ; $5A85: $FA $89 $C1
    ld   c, a                                     ; $5A88: $4F
    and  a                                        ; $5A89: $A7
    jr   z, jr_002_5A95                           ; $5A8A: $28 $09

    xor  a                                        ; $5A8C: $AF

jr_002_5A8D:
    add  $04                                      ; $5A8D: $C6 $04
    ld   e, a                                     ; $5A8F: $5F
    ld   d, $00                                   ; $5A90: $16 $00
    dec  c                                        ; $5A92: $0D
    jr   nz, jr_002_5A8D                          ; $5A93: $20 $F8

jr_002_5A95:
    ld   hl, $5A1C                                ; $5A95: $21 $1C $5A
    ld   a, [$C189]                               ; $5A98: $FA $89 $C1
    ld   c, a                                     ; $5A9B: $4F
    ld   b, $00                                   ; $5A9C: $06 $00
    add  hl, bc                                   ; $5A9E: $09
    ld   a, [hl]                                  ; $5A9F: $7E
    ld   hl, $C1D0                                ; $5AA0: $21 $D0 $C1
    add  hl, bc                                   ; $5AA3: $09
    add  [hl]                                     ; $5AA4: $86
    ldh  [$FFCE], a                               ; $5AA5: $E0 $CE

label_002_5AA7::
    ld   hl, $5A2E                                ; $5AA7: $21 $2E $5A
    ldh  a, [$FFE3]                               ; $5AAA: $F0 $E3
    ld   c, a                                     ; $5AAC: $4F
    add  hl, bc                                   ; $5AAD: $09
    ld   a, [$C189]                               ; $5AAE: $FA $89 $C1
    ld   c, a                                     ; $5AB1: $4F
    add  hl, bc                                   ; $5AB2: $09
    ld   a, [hl]                                  ; $5AB3: $7E
    ld   hl, $C1E0                                ; $5AB4: $21 $E0 $C1
    add  hl, bc                                   ; $5AB7: $09
    add  [hl]                                     ; $5AB8: $86
    ldh  [$FFCD], a                               ; $5AB9: $E0 $CD
    push de                                       ; $5ABB: $D5
    call label_2887                               ; $5ABC: $CD $87 $28
    pop  de                                       ; $5ABF: $D1
    ldh  a, [$FFE3]                               ; $5AC0: $F0 $E3
    and  a                                        ; $5AC2: $A7
    jr   z, jr_002_5AC7                           ; $5AC3: $28 $02

    inc  de                                       ; $5AC5: $13
    inc  de                                       ; $5AC6: $13

jr_002_5AC7:
    ldh  a, [hIsGBC]                              ; $5AC7: $F0 $FE
    and  a                                        ; $5AC9: $A7
    jr   z, jr_002_5AD5                           ; $5ACA: $28 $09

    push de                                       ; $5ACC: $D5
    ld   a, $02                                   ; $5ACD: $3E $02
    ld   b, $00                                   ; $5ACF: $06 $00
    call label_999                                ; $5AD1: $CD $99 $09
    pop  de                                       ; $5AD4: $D1

jr_002_5AD5:
    ld   a, [wRequests]                           ; $5AD5: $FA $00 $D6
    ld   c, a                                     ; $5AD8: $4F
    ld   b, $00                                   ; $5AD9: $06 $00
    add  $05                                      ; $5ADB: $C6 $05
    ld   [wRequests], a                           ; $5ADD: $EA $00 $D6
    ld   hl, wRequestDestinationHigh              ; $5AE0: $21 $01 $D6
    add  hl, bc                                   ; $5AE3: $09
    ldh  a, [$FFCF]                               ; $5AE4: $F0 $CF
    ld   [hl+], a                                 ; $5AE6: $22
    ldh  a, [$FFD0]                               ; $5AE7: $F0 $D0
    ld   [hl+], a                                 ; $5AE9: $22
    ld   a, $01                                   ; $5AEA: $3E $01
    ld   [hl+], a                                 ; $5AEC: $22
    push hl                                       ; $5AED: $E5
    ld   hl, Data_002_59D4                        ; $5AEE: $21 $D4 $59
    add  hl, de                                   ; $5AF1: $19
    ld   a, [hl]                                  ; $5AF2: $7E
    pop  hl                                       ; $5AF3: $E1
    ld   [hl+], a                                 ; $5AF4: $22
    push hl                                       ; $5AF5: $E5
    ld   hl, $59D5                                ; $5AF6: $21 $D5 $59
    add  hl, de                                   ; $5AF9: $19
    ld   a, [hl]                                  ; $5AFA: $7E
    pop  hl                                       ; $5AFB: $E1
    ld   [hl], a                                  ; $5AFC: $77
    ldh  a, [$FFE3]                               ; $5AFD: $F0 $E3
    and  a                                        ; $5AFF: $A7
    jr   nz, jr_002_5B09                          ; $5B00: $20 $07

    ld   a, $09                                   ; $5B02: $3E $09
    ldh  [$FFE3], a                               ; $5B04: $E0 $E3
    jp   label_002_5AA7                           ; $5B06: $C3 $A7 $5A

jr_002_5B09:
    xor  a                                        ; $5B09: $AF
    inc  hl                                       ; $5B0A: $23
    ld   [hl], a                                  ; $5B0B: $77
    ld   a, [$DBAC]                               ; $5B0C: $FA $AC $DB
    add  $01                                      ; $5B0F: $C6 $01
    ld   [$DBAC], a                               ; $5B11: $EA $AC $DB
    ld   a, [$DBAC]                               ; $5B14: $FA $AC $DB
    cp   $08                                      ; $5B17: $FE $08
    jr   nc, jr_002_5B1C                          ; $5B19: $30 $01

    ret                                           ; $5B1B: $C9

jr_002_5B1C:
    ldh  a, [$FFE5]                               ; $5B1C: $F0 $E5
    and  a                                        ; $5B1E: $A7
    jr   nz, jr_002_5B31                          ; $5B1F: $20 $10

    xor  a                                        ; $5B21: $AF
    ldh  [$FFE3], a                               ; $5B22: $E0 $E3
    ld   a, e                                     ; $5B24: $7B
    add  $24                                      ; $5B25: $C6 $24
    ld   e, a                                     ; $5B27: $5F
    ld   d, $00                                   ; $5B28: $16 $00
    ldh  [$FFE5], a                               ; $5B2A: $E0 $E5
    dec  de                                       ; $5B2C: $1B
    dec  de                                       ; $5B2D: $1B
    jp   label_002_5AA7                           ; $5B2E: $C3 $A7 $5A

jr_002_5B31:
    xor  a                                        ; $5B31: $AF
    ld   [$C188], a                               ; $5B32: $EA $88 $C1
    ld   [$C1A8], a                               ; $5B35: $EA $A8 $C1
    xor  a                                        ; $5B38: $AF
    ldh  [$FFE5], a                               ; $5B39: $E0 $E5
    ld   a, [$C189]                               ; $5B3B: $FA $89 $C1
    ld   c, a                                     ; $5B3E: $4F
    ld   b, $00                                   ; $5B3F: $06 $00
    ld   hl, $C1F0                                ; $5B41: $21 $F0 $C1
    add  hl, bc                                   ; $5B44: $09
    ld   a, [hl]                                  ; $5B45: $7E
    ldh  [$FFD7], a                               ; $5B46: $E0 $D7
    ld   a, c                                     ; $5B48: $79
    and  $07                                      ; $5B49: $E6 $07
    ld   c, a                                     ; $5B4B: $4F

jr_002_5B4C:
    ld   hl, $5A40                                ; $5B4C: $21 $40 $5A
    add  hl, bc                                   ; $5B4F: $09
    ld   a, [hl]                                  ; $5B50: $7E
    ld   hl, $FFD7                                ; $5B51: $21 $D7 $FF
    add  [hl]                                     ; $5B54: $86
    ld   e, a                                     ; $5B55: $5F
    ld   d, $00                                   ; $5B56: $16 $00
    ld   hl, $5A50                                ; $5B58: $21 $50 $5A
    add  hl, bc                                   ; $5B5B: $09
    ld   a, [hl]                                  ; $5B5C: $7E
    ld   hl, wTileMap                             ; $5B5D: $21 $11 $D7
    add  hl, de                                   ; $5B60: $19
    ld   [hl], a                                  ; $5B61: $77
    ldh  a, [$FFE5]                               ; $5B62: $F0 $E5
    and  a                                        ; $5B64: $A7
    jr   nz, jr_002_5B6F                          ; $5B65: $20 $08

    ld   a, c                                     ; $5B67: $79
    add  $08                                      ; $5B68: $C6 $08
    ldh  [$FFE5], a                               ; $5B6A: $E0 $E5
    ld   c, a                                     ; $5B6C: $4F
    jr   jr_002_5B4C                              ; $5B6D: $18 $DD

jr_002_5B6F:
    call func_002_5B9F                            ; $5B6F: $CD $9F $5B
    ld   c, l                                     ; $5B72: $4D
    ld   b, h                                     ; $5B73: $44
    ld   a, [$C189]                               ; $5B74: $FA $89 $C1
    ld   e, a                                     ; $5B77: $5F
    ld   d, $00                                   ; $5B78: $16 $00
    ld   hl, $5A60                                ; $5B7A: $21 $60 $5A
    add  hl, de                                   ; $5B7D: $19
    ld   a, [bc]                                  ; $5B7E: $0A
    or   [hl]                                     ; $5B7F: $B6
    ld   [bc], a                                  ; $5B80: $02
    ldh  [hFFF8], a                               ; $5B81: $E0 $F8
    ld   hl, $5A69                                ; $5B83: $21 $69 $5A
    add  hl, de                                   ; $5B86: $19
    ld   a, [$DBAE]                               ; $5B87: $FA $AE $DB
    add  [hl]                                     ; $5B8A: $86
    ld   e, a                                     ; $5B8B: $5F
    call label_2BC1                               ; $5B8C: $CD $C1 $2B
    ld   c, l                                     ; $5B8F: $4D
    ld   b, h                                     ; $5B90: $44
    ld   a, [$C189]                               ; $5B91: $FA $89 $C1
    ld   e, a                                     ; $5B94: $5F
    ld   d, $00                                   ; $5B95: $16 $00
    ld   hl, $5A72                                ; $5B97: $21 $72 $5A
    add  hl, de                                   ; $5B9A: $19
    ld   a, [bc]                                  ; $5B9B: $0A
    or   [hl]                                     ; $5B9C: $B6
    ld   [bc], a                                  ; $5B9D: $02
    ret                                           ; $5B9E: $C9

func_002_5B9F::
    ld   hl, wMinimapTiles                        ; $5B9F: $21 $00 $D8
    ldh  a, [hMapIndex]                           ; $5BA2: $F0 $F6
    ld   e, a                                     ; $5BA4: $5F
    ld   a, [wActiveRoom]                         ; $5BA5: $FA $A5 $DB
    ld   d, a                                     ; $5BA8: $57
    and  a                                        ; $5BA9: $A7
    jr   z, jr_002_5BC2                           ; $5BAA: $28 $16

    ldh  a, [hMapTileset]                         ; $5BAC: $F0 $F7
    cp   $FF                                      ; $5BAE: $FE $FF
    jr   nz, jr_002_5BB9                          ; $5BB0: $20 $07

    ld   d, $00                                   ; $5BB2: $16 $00
    ld   hl, $DDE0                                ; $5BB4: $21 $E0 $DD
    jr   jr_002_5BC2                              ; $5BB7: $18 $09

jr_002_5BB9:
    cp   $1A                                      ; $5BB9: $FE $1A
    jr   nc, jr_002_5BC2                          ; $5BBB: $30 $05

    cp   $06                                      ; $5BBD: $FE $06
    jr   c, jr_002_5BC2                           ; $5BBF: $38 $01

    inc  d                                        ; $5BC1: $14

jr_002_5BC2:
    add  hl, de                                   ; $5BC2: $19
    ret                                           ; $5BC3: $C9

    ld   e, b                                     ; $5BC4: $58
    ld   e, c                                     ; $5BC5: $59
    inc  de                                       ; $5BC6: $13
    ld   [de], a                                  ; $5BC7: $12
    ld   de, $4A10                                ; $5BC8: $11 $10 $4A
    ld   c, e                                     ; $5BCB: $4B
    ld   c, l                                     ; $5BCC: $4D
    inc  de                                       ; $5BCD: $13
    ld   e, l                                     ; $5BCE: $5D
    ld   de, $4E12                                ; $5BCF: $11 $12 $4E
    db   $10                                      ; $5BD2: $10
    ld   e, [hl]                                  ; $5BD3: $5E
    ld   b, b                                     ; $5BD4: $40
    ld   b, c                                     ; $5BD5: $41
    ld   e, b                                     ; $5BD6: $58
    ld   e, c                                     ; $5BD7: $59
    ld   c, d                                     ; $5BD8: $4A
    ld   c, e                                     ; $5BD9: $4B
    ld   d, d                                     ; $5BDA: $52
    ld   d, e                                     ; $5BDB: $53
    ld   b, h                                     ; $5BDC: $44
    ld   c, l                                     ; $5BDD: $4D
    ld   d, h                                     ; $5BDE: $54
    ld   e, l                                     ; $5BDF: $5D
    ld   c, [hl]                                  ; $5BE0: $4E
    ld   b, a                                     ; $5BE1: $47
    ld   e, [hl]                                  ; $5BE2: $5E
    ld   d, a                                     ; $5BE3: $57
    ld   [$0008], sp                              ; $5BE4: $08 $08 $00
    nop                                           ; $5BE7: $00
    ld   [$0008], sp                              ; $5BE8: $08 $08 $00
    nop                                           ; $5BEB: $00
    nop                                           ; $5BEC: $00
    nop                                           ; $5BED: $00
    ld   [label_808], sp                          ; $5BEE: $08 $08 $08
    ld   [$1010], sp                              ; $5BF1: $08 $10 $10
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    nop                                           ; $5BF6: $00
    nop                                           ; $5BF7: $00
    ld   bc, $1001                                ; $5BF8: $01 $01 $10
    db   $10                                      ; $5BFB: $10
    dec  [hl]                                     ; $5BFC: $35
    scf                                           ; $5BFD: $37
    add  hl, sp                                   ; $5BFE: $39
    dec  sp                                       ; $5BFF: $3B
    ld   [hl], $38                                ; $5C00: $36 $38
    ld   a, [hl-]                                 ; $5C02: $3A
    inc  a                                        ; $5C03: $3C

func_002_5C04::
    ld   e, $00                                   ; $5C04: $1E $00
    ld   d, e                                     ; $5C06: $53
    ld   c, e                                     ; $5C07: $4B
    ld   b, e                                     ; $5C08: $43
    xor  a                                        ; $5C09: $AF
    ldh  [$FFE3], a                               ; $5C0A: $E0 $E3
    ldh  [$FFE4], a                               ; $5C0C: $E0 $E4
    ldh  [$FFE5], a                               ; $5C0E: $E0 $E5
    ld   a, [$C189]                               ; $5C10: $FA $89 $C1
    sub  $04                                      ; $5C13: $D6 $04
    jr   z, jr_002_5C21                           ; $5C15: $28 $0A

    ld   c, a                                     ; $5C17: $4F
    xor  a                                        ; $5C18: $AF

jr_002_5C19:
    add  $04                                      ; $5C19: $C6 $04
    ld   e, a                                     ; $5C1B: $5F
    ld   d, $00                                   ; $5C1C: $16 $00
    dec  c                                        ; $5C1E: $0D
    jr   nz, jr_002_5C19                          ; $5C1F: $20 $F8

jr_002_5C21:
    ld   hl, $5BE0                                ; $5C21: $21 $E0 $5B
    ld   a, [$C189]                               ; $5C24: $FA $89 $C1
    ld   c, a                                     ; $5C27: $4F
    ld   b, $00                                   ; $5C28: $06 $00
    add  hl, bc                                   ; $5C2A: $09
    ld   a, [hl]                                  ; $5C2B: $7E
    ld   hl, $C1D0                                ; $5C2C: $21 $D0 $C1
    add  hl, bc                                   ; $5C2F: $09
    add  [hl]                                     ; $5C30: $86
    ldh  [$FFCE], a                               ; $5C31: $E0 $CE

label_002_5C33::
    ld   hl, $5BE8                                ; $5C33: $21 $E8 $5B
    ldh  a, [$FFE3]                               ; $5C36: $F0 $E3
    ld   c, a                                     ; $5C38: $4F
    add  hl, bc                                   ; $5C39: $09
    ld   a, [$C189]                               ; $5C3A: $FA $89 $C1
    ld   c, a                                     ; $5C3D: $4F
    add  hl, bc                                   ; $5C3E: $09
    ld   a, [hl]                                  ; $5C3F: $7E
    ld   hl, $C1E0                                ; $5C40: $21 $E0 $C1
    add  hl, bc                                   ; $5C43: $09
    add  [hl]                                     ; $5C44: $86
    ldh  [$FFCD], a                               ; $5C45: $E0 $CD
    ld   a, [$DBB2]                               ; $5C47: $FA $B2 $DB
    sub  $10                                      ; $5C4A: $D6 $10
    ld   hl, $FFCD                                ; $5C4C: $21 $CD $FF
    sub  [hl]                                     ; $5C4F: $96
    add  $10                                      ; $5C50: $C6 $10
    cp   $20                                      ; $5C52: $FE $20
    jr   nc, jr_002_5C6F                          ; $5C54: $30 $19

    ld   a, [$DBB1]                               ; $5C56: $FA $B1 $DB
    sub  $08                                      ; $5C59: $D6 $08
    ld   hl, $FFCE                                ; $5C5B: $21 $CE $FF
    sub  [hl]                                     ; $5C5E: $96
    add  $10                                      ; $5C5F: $C6 $10
    cp   $20                                      ; $5C61: $FE $20
    jr   nc, jr_002_5C6F                          ; $5C63: $30 $0A

    ldh  a, [hLinkPositionX]                      ; $5C65: $F0 $98
    ld   [$DBB1], a                               ; $5C67: $EA $B1 $DB
    ldh  a, [hLinkPositionY]                      ; $5C6A: $F0 $99
    ld   [$DBB2], a                               ; $5C6C: $EA $B2 $DB

jr_002_5C6F:
    push de                                       ; $5C6F: $D5
    call label_2887                               ; $5C70: $CD $87 $28
    pop  de                                       ; $5C73: $D1
    ldh  a, [$FFE3]                               ; $5C74: $F0 $E3
    and  a                                        ; $5C76: $A7
    jr   z, jr_002_5C7B                           ; $5C77: $28 $02

    inc  de                                       ; $5C79: $13
    inc  de                                       ; $5C7A: $13

jr_002_5C7B:
    ldh  a, [hIsGBC]                              ; $5C7B: $F0 $FE
    and  a                                        ; $5C7D: $A7
    jr   z, jr_002_5C89                           ; $5C7E: $28 $09

    push de                                       ; $5C80: $D5
    ld   a, $02                                   ; $5C81: $3E $02
    ld   b, $01                                   ; $5C83: $06 $01
    call label_999                                ; $5C85: $CD $99 $09
    pop  de                                       ; $5C88: $D1

jr_002_5C89:
    ld   a, [wRequests]                           ; $5C89: $FA $00 $D6
    ld   c, a                                     ; $5C8C: $4F
    ld   b, $00                                   ; $5C8D: $06 $00
    add  $05                                      ; $5C8F: $C6 $05
    ld   [wRequests], a                           ; $5C91: $EA $00 $D6
    ld   hl, wRequestDestinationHigh              ; $5C94: $21 $01 $D6
    add  hl, bc                                   ; $5C97: $09
    ldh  a, [$FFCF]                               ; $5C98: $F0 $CF
    ld   [hl+], a                                 ; $5C9A: $22
    ldh  a, [$FFD0]                               ; $5C9B: $F0 $D0
    ld   [hl+], a                                 ; $5C9D: $22
    ld   a, $01                                   ; $5C9E: $3E $01
    ld   [hl+], a                                 ; $5CA0: $22
    push hl                                       ; $5CA1: $E5
    ld   hl, $5BC4                                ; $5CA2: $21 $C4 $5B
    add  hl, de                                   ; $5CA5: $19
    ld   a, [hl]                                  ; $5CA6: $7E
    pop  hl                                       ; $5CA7: $E1
    ld   [hl+], a                                 ; $5CA8: $22
    push hl                                       ; $5CA9: $E5
    ld   hl, $5BC5                                ; $5CAA: $21 $C5 $5B
    add  hl, de                                   ; $5CAD: $19
    ld   a, [hl]                                  ; $5CAE: $7E
    pop  hl                                       ; $5CAF: $E1
    ld   [hl], a                                  ; $5CB0: $77
    ldh  a, [$FFE3]                               ; $5CB1: $F0 $E3
    and  a                                        ; $5CB3: $A7
    jr   nz, jr_002_5CBD                          ; $5CB4: $20 $07

    ld   a, $04                                   ; $5CB6: $3E $04
    ldh  [$FFE3], a                               ; $5CB8: $E0 $E3
    jp   label_002_5C33                           ; $5CBA: $C3 $33 $5C

jr_002_5CBD:
    xor  a                                        ; $5CBD: $AF
    inc  hl                                       ; $5CBE: $23
    ld   [hl], a                                  ; $5CBF: $77
    ld   a, [$DBAC]                               ; $5CC0: $FA $AC $DB
    add  $01                                      ; $5CC3: $C6 $01
    ld   [$DBAC], a                               ; $5CC5: $EA $AC $DB
    ld   a, [$DBAC]                               ; $5CC8: $FA $AC $DB
    cp   $08                                      ; $5CCB: $FE $08
    jr   nc, jr_002_5CD0                          ; $5CCD: $30 $01

    ret                                           ; $5CCF: $C9

jr_002_5CD0:
    ldh  a, [$FFE5]                               ; $5CD0: $F0 $E5
    and  a                                        ; $5CD2: $A7
    jr   nz, jr_002_5CE5                          ; $5CD3: $20 $10

    xor  a                                        ; $5CD5: $AF
    ldh  [$FFE3], a                               ; $5CD6: $E0 $E3
    ld   a, e                                     ; $5CD8: $7B
    add  $10                                      ; $5CD9: $C6 $10
    ld   e, a                                     ; $5CDB: $5F
    ld   d, $00                                   ; $5CDC: $16 $00
    ldh  [$FFE5], a                               ; $5CDE: $E0 $E5
    dec  de                                       ; $5CE0: $1B
    dec  de                                       ; $5CE1: $1B
    jp   label_002_5C33                           ; $5CE2: $C3 $33 $5C

jr_002_5CE5:
    xor  a                                        ; $5CE5: $AF
    ld   [$C188], a                               ; $5CE6: $EA $88 $C1
    ld   [$C1A8], a                               ; $5CE9: $EA $A8 $C1
    xor  a                                        ; $5CEC: $AF
    ldh  [$FFE5], a                               ; $5CED: $E0 $E5
    ld   a, [$C189]                               ; $5CEF: $FA $89 $C1
    sub  $04                                      ; $5CF2: $D6 $04
    ld   c, a                                     ; $5CF4: $4F
    ld   b, $00                                   ; $5CF5: $06 $00
    ld   hl, $C1F4                                ; $5CF7: $21 $F4 $C1
    add  hl, bc                                   ; $5CFA: $09
    ld   a, [hl]                                  ; $5CFB: $7E
    ldh  [$FFD7], a                               ; $5CFC: $E0 $D7

jr_002_5CFE:
    ld   hl, $5BF4                                ; $5CFE: $21 $F4 $5B
    add  hl, bc                                   ; $5D01: $09
    ld   a, [hl]                                  ; $5D02: $7E
    ld   hl, $FFD7                                ; $5D03: $21 $D7 $FF
    add  [hl]                                     ; $5D06: $86
    ld   e, a                                     ; $5D07: $5F
    ld   d, $00                                   ; $5D08: $16 $00
    ld   hl, $5BFC                                ; $5D0A: $21 $FC $5B
    add  hl, bc                                   ; $5D0D: $09
    ld   a, [hl]                                  ; $5D0E: $7E
    ld   hl, wTileMap                             ; $5D0F: $21 $11 $D7
    add  hl, de                                   ; $5D12: $19
    ld   [hl], a                                  ; $5D13: $77
    ldh  a, [$FFE5]                               ; $5D14: $F0 $E5
    and  a                                        ; $5D16: $A7
    jr   nz, jr_002_5D21                          ; $5D17: $20 $08

    ld   a, c                                     ; $5D19: $79
    add  $04                                      ; $5D1A: $C6 $04
    ldh  [$FFE5], a                               ; $5D1C: $E0 $E5
    ld   c, a                                     ; $5D1E: $4F
    jr   jr_002_5CFE                              ; $5D1F: $18 $DD

jr_002_5D21:
    ld   hl, wMinimapTiles                        ; $5D21: $21 $00 $D8
    ld   a, [wActiveRoom]                         ; $5D24: $FA $A5 $DB
    and  a                                        ; $5D27: $A7
    jr   z, jr_002_5D36                           ; $5D28: $28 $0C

    ld   hl, $D900                                ; $5D2A: $21 $00 $D9
    ldh  a, [hMapTileset]                         ; $5D2D: $F0 $F7
    cp   $FF                                      ; $5D2F: $FE $FF
    jr   nz, jr_002_5D36                          ; $5D31: $20 $03

    ld   hl, $DDE0                                ; $5D33: $21 $E0 $DD

jr_002_5D36:
    ldh  a, [hMapIndex]                           ; $5D36: $F0 $F6
    ld   e, a                                     ; $5D38: $5F
    ld   d, $00                                   ; $5D39: $16 $00
    add  hl, de                                   ; $5D3B: $19
    push hl                                       ; $5D3C: $E5
    ld   a, [$C189]                               ; $5D3D: $FA $89 $C1
    ld   e, a                                     ; $5D40: $5F
    ld   d, $00                                   ; $5D41: $16 $00
    ld   hl, $5A60                                ; $5D43: $21 $60 $5A
    add  hl, de                                   ; $5D46: $19
    ld   a, [hl]                                  ; $5D47: $7E
    cpl                                           ; $5D48: $2F
    pop  hl                                       ; $5D49: $E1
    and  [hl]                                     ; $5D4A: $A6
    ld   [hl], a                                  ; $5D4B: $77
    ldh  [hFFF8], a                               ; $5D4C: $E0 $F8
    ret                                           ; $5D4E: $C9

func_002_5D4F::
    ld   a, [$C18E]                               ; $5D4F: $FA $8E $C1
    and  a                                        ; $5D52: $A7
    jp   z, label_002_5E02                        ; $5D53: $CA $02 $5E

    call func_002_5F9F                            ; $5D56: $CD $9F $5F
    ld   a, [$C18E]                               ; $5D59: $FA $8E $C1
    and  $E0                                      ; $5D5C: $E6 $E0
    srl  a                                        ; $5D5E: $CB $3F
    srl  a                                        ; $5D60: $CB $3F
    srl  a                                        ; $5D62: $CB $3F
    srl  a                                        ; $5D64: $CB $3F
    srl  a                                        ; $5D66: $CB $3F
    rst  $00                                      ; $5D68: $C7
    push bc                                       ; $5D69: $C5
    ld   e, a                                     ; $5D6A: $5F
    dec  h                                        ; $5D6B: $25
    ld   e, [hl]                                  ; $5D6C: $5E
    ld   a, c                                     ; $5D6D: $79
    ld   e, l                                     ; $5D6E: $5D
    xor  e                                        ; $5D6F: $AB
    ld   e, [hl]                                  ; $5D70: $5E
    inc  bc                                       ; $5D71: $03
    ld   e, [hl]                                  ; $5D72: $5E
    jp   hl                                       ; $5D73: $E9

    ld   e, l                                     ; $5D74: $5D
    jr   @+$60                                    ; $5D75: $18 $5E

    jp   nz, $CD5D                                ; $5D77: $C2 $5D $CD

    xor  a                                        ; $5D7A: $AF
    ld   e, l                                     ; $5D7B: $5D
    ld   c, $0F                                   ; $5D7C: $0E $0F
    ld   b, $00                                   ; $5D7E: $06 $00

jr_002_5D80:
    ld   hl, $C340                                ; $5D80: $21 $40 $C3
    add  hl, bc                                   ; $5D83: $09
    ld   a, [hl]                                  ; $5D84: $7E
    and  $80                                      ; $5D85: $E6 $80
    jr   nz, jr_002_5DA8                          ; $5D87: $20 $1F

    ld   hl, wEntitiesTypeTable                   ; $5D89: $21 $80 $C2
    add  hl, bc                                   ; $5D8C: $09
    ld   a, [hl]                                  ; $5D8D: $7E
    cp   $05                                      ; $5D8E: $FE $05
    jr   c, jr_002_5DA8                           ; $5D90: $38 $16

    ld   [hl], $01                                ; $5D92: $36 $01
    ld   hl, $C480                                ; $5D94: $21 $80 $C4
    add  hl, bc                                   ; $5D97: $09
    ld   [hl], $1F                                ; $5D98: $36 $1F
    ld   hl, $C340                                ; $5D9A: $21 $40 $C3
    add  hl, bc                                   ; $5D9D: $09
    ld   a, [hl]                                  ; $5D9E: $7E
    and  $F0                                      ; $5D9F: $E6 $F0
    or   $02                                      ; $5DA1: $F6 $02
    ld   [hl], a                                  ; $5DA3: $77
    ld   a, $13                                   ; $5DA4: $3E $13
    ldh  [hFFF4], a                               ; $5DA6: $E0 $F4

jr_002_5DA8:
    dec  c                                        ; $5DA8: $0D
    ld   a, c                                     ; $5DA9: $79
    cp   $FF                                      ; $5DAA: $FE $FF
    jr   nz, jr_002_5D80                          ; $5DAC: $20 $D2

    ret                                           ; $5DAE: $C9

func_002_5DAF::
    ldh  a, [hFFF8]                               ; $5DAF: $F0 $F8
    and  $10                                      ; $5DB1: $E6 $10
    jr   nz, jr_002_5DC0                          ; $5DB3: $20 $0B

    ld   a, [$C18F]                               ; $5DB5: $FA $8F $C1
    and  a                                        ; $5DB8: $A7
    jr   z, jr_002_5DC0                           ; $5DB9: $28 $05

    xor  a                                        ; $5DBB: $AF
    ld   [$C18E], a                               ; $5DBC: $EA $8E $C1
    ret                                           ; $5DBF: $C9

jr_002_5DC0:
    pop  af                                       ; $5DC0: $F1
    ret                                           ; $5DC1: $C9

    call func_002_5DAF                            ; $5DC2: $CD $AF $5D
    ld   a, $2F                                   ; $5DC5: $3E $2F
    call label_3B86                               ; $5DC7: $CD $86 $3B
    ld   hl, wEntity0PosX                         ; $5DCA: $21 $00 $C2
    add  hl, de                                   ; $5DCD: $19
    ld   [hl], $88                                ; $5DCE: $36 $88
    ld   hl, wEntitiesPosYTable                   ; $5DD0: $21 $10 $C2
    add  hl, de                                   ; $5DD3: $19
    ld   [hl], $30                                ; $5DD4: $36 $30
    ld   hl, $C450                                ; $5DD6: $21 $50 $C4
    add  hl, de                                   ; $5DD9: $19
    ld   [hl], $80                                ; $5DDA: $36 $80
    ld   a, $88                                   ; $5DDC: $3E $88
    ldh  [$FFD7], a                               ; $5DDE: $E0 $D7
    ld   a, $30                                   ; $5DE0: $3E $30
    ldh  [$FFD8], a                               ; $5DE2: $E0 $D8
    ld   a, $02                                   ; $5DE4: $3E $02
    jp   label_002_5DF6                           ; $5DE6: $C3 $F6 $5D

    call func_002_5DAF                            ; $5DE9: $CD $AF $5D
    ld   a, $88                                   ; $5DEC: $3E $88
    ldh  [$FFD7], a                               ; $5DEE: $E0 $D7
    ld   a, $20                                   ; $5DF0: $3E $20
    ldh  [$FFD8], a                               ; $5DF2: $E0 $D8
    ld   a, $04                                   ; $5DF4: $3E $04

label_002_5DF6::
    call label_CC7                                ; $5DF6: $CD $C7 $0C
    call func_002_5B9F                            ; $5DF9: $CD $9F $5B
    ld   a, [hl]                                  ; $5DFC: $7E
    or   $10                                      ; $5DFD: $F6 $10
    ld   [hl], a                                  ; $5DFF: $77
    ldh  [hFFF8], a                               ; $5E00: $E0 $F8

label_002_5E02::
    ret                                           ; $5E02: $C9

    call func_002_5DAF                            ; $5E03: $CD $AF $5D
    ldh  a, [hMapIndex]                           ; $5E06: $F0 $F6
    cp   $69                                      ; $5E08: $FE $69
    jr   nz, jr_002_5E15                          ; $5E0A: $20 $09

    call func_002_5B9F                            ; $5E0C: $CD $9F $5B
    ld   a, [hl]                                  ; $5E0F: $7E
    or   $10                                      ; $5E10: $F6 $10
    ld   [hl], a                                  ; $5E12: $77
    ldh  [hFFF8], a                               ; $5E13: $E0 $F8

jr_002_5E15:
    jp   label_002_5425                           ; $5E15: $C3 $25 $54

    ldh  a, [hMapTileset]                         ; $5E18: $F0 $F7
    ld   e, a                                     ; $5E1A: $5F
    ld   d, $00                                   ; $5E1B: $16 $00
    ld   hl, wHasInstrument1                      ; $5E1D: $21 $65 $DB
    add  hl, de                                   ; $5E20: $19
    ld   a, [hl]                                  ; $5E21: $7E
    and  $01                                      ; $5E22: $E6 $01
    ret  nz                                       ; $5E24: $C0

func_002_5E25::
    ld   a, [$C190]                               ; $5E25: $FA $90 $C1
    and  a                                        ; $5E28: $A7
    jr   nz, jr_002_5E2E                          ; $5E29: $20 $03

    call func_002_5E7B                            ; $5E2B: $CD $7B $5E

jr_002_5E2E:
    ld   a, [$C18F]                               ; $5E2E: $FA $8F $C1
    and  a                                        ; $5E31: $A7
    ret  z                                        ; $5E32: $C8

    ld   a, [$C18E]                               ; $5E33: $FA $8E $C1
    cp   $C1                                      ; $5E36: $FE $C1
    jr   nz, jr_002_5E6A                          ; $5E38: $20 $30

    ldh  a, [hMapTileset]                         ; $5E3A: $F0 $F7
    ld   e, a                                     ; $5E3C: $5F
    ld   d, $00                                   ; $5E3D: $16 $00
    ld   hl, wHasInstrument1                      ; $5E3F: $21 $65 $DB
    add  hl, de                                   ; $5E42: $19
    ld   a, [hl]                                  ; $5E43: $7E
    or   $01                                      ; $5E44: $F6 $01
    ld   [hl], a                                  ; $5E46: $77
    ld   d, $00                                   ; $5E47: $16 $00
    ldh  a, [hMapIndex]                           ; $5E49: $F0 $F6
    ld   e, a                                     ; $5E4B: $5F
    ld   hl, $D900                                ; $5E4C: $21 $00 $D9
    ldh  a, [hMapTileset]                         ; $5E4F: $F0 $F7
    cp   $FF                                      ; $5E51: $FE $FF
    jr   nz, jr_002_5E5A                          ; $5E53: $20 $05

    ld   hl, $DDE0                                ; $5E55: $21 $E0 $DD
    jr   jr_002_5E63                              ; $5E58: $18 $09

jr_002_5E5A:
    cp   $1A                                      ; $5E5A: $FE $1A
    jr   nc, jr_002_5E63                          ; $5E5C: $30 $05

    cp   $06                                      ; $5E5E: $FE $06
    jr   c, jr_002_5E63                           ; $5E60: $38 $01

    inc  d                                        ; $5E62: $14

jr_002_5E63:
    add  hl, de                                   ; $5E63: $19
    set  5, [hl]                                  ; $5E64: $CB $EE
    ld   a, $1B                                   ; $5E66: $3E $1B
    ldh  [$FFF2], a                               ; $5E68: $E0 $F2

jr_002_5E6A:
    ld   a, [$C190]                               ; $5E6A: $FA $90 $C1
    and  a                                        ; $5E6D: $A7
    ret  z                                        ; $5E6E: $C8

    xor  a                                        ; $5E6F: $AF
    ld   [$C18E], a                               ; $5E70: $EA $8E $C1
    ld   a, $01                                   ; $5E73: $3E $01
    ld   [$C18C], a                               ; $5E75: $EA $8C $C1
    jp   label_002_5420                           ; $5E78: $C3 $20 $54

func_002_5E7B::
    ldh  a, [hLinkPositionX]                      ; $5E7B: $F0 $98
    sub  $11                                      ; $5E7D: $D6 $11
    cp   $7E                                      ; $5E7F: $FE $7E
    jr   nc, jr_002_5EA2                          ; $5E81: $30 $1F

    ldh  a, [hLinkPositionY]                      ; $5E83: $F0 $99
    sub  $16                                      ; $5E85: $D6 $16
    cp   $5E                                      ; $5E87: $FE $5E
    jr   nc, jr_002_5EA2                          ; $5E89: $30 $17

    ld   a, [$C18F]                               ; $5E8B: $FA $8F $C1
    and  a                                        ; $5E8E: $A7
    jr   nz, jr_002_5EA2                          ; $5E8F: $20 $11

    ld   a, $01                                   ; $5E91: $3E $01
    ld   [$C18D], a                               ; $5E93: $EA $8D $C1
    ld   [$C190], a                               ; $5E96: $EA $90 $C1
    ld   a, $04                                   ; $5E99: $3E $04
    ld   [wC111], a                               ; $5E9B: $EA $11 $C1
    ld   a, $10                                   ; $5E9E: $3E $10
    ldh  [hFFF4], a                               ; $5EA0: $E0 $F4

jr_002_5EA2:
    ret                                           ; $5EA2: $C9

    ld   h, b                                     ; $5EA3: $60
    ld   [hl], b                                  ; $5EA4: $70
    ld   h, c                                     ; $5EA5: $61
    ld   [hl], c                                  ; $5EA6: $71
    ld   h, b                                     ; $5EA7: $60
    ld   [hl], b                                  ; $5EA8: $70
    ld   h, b                                     ; $5EA9: $60
    ld   [hl], b                                  ; $5EAA: $70

label_002_5EAB::
    call func_002_5DAF                            ; $5EAB: $CD $AF $5D
    ld   a, $88                                   ; $5EAE: $3E $88
    ldh  [$FFD7], a                               ; $5EB0: $E0 $D7
    ldh  a, [hLinkPositionY]                      ; $5EB2: $F0 $99
    sub  $30                                      ; $5EB4: $D6 $30
    add  $08                                      ; $5EB6: $C6 $08
    cp   $10                                      ; $5EB8: $FE $10
    jr   nc, jr_002_5ECA                          ; $5EBA: $30 $0E

    ldh  a, [hLinkPositionX]                      ; $5EBC: $F0 $98
    sub  $88                                      ; $5EBE: $D6 $88
    add  $10                                      ; $5EC0: $C6 $10
    cp   $20                                      ; $5EC2: $FE $20
    jr   nc, jr_002_5ECA                          ; $5EC4: $30 $04

    ld   a, $40                                   ; $5EC6: $3E $40
    jr   jr_002_5ECC                              ; $5EC8: $18 $02

jr_002_5ECA:
    ld   a, $30                                   ; $5ECA: $3E $30

jr_002_5ECC:
    ldh  [$FFD8], a                               ; $5ECC: $E0 $D8
    ld   a, $03                                   ; $5ECE: $3E $03
    jp   label_CC7                                ; $5ED0: $C3 $C7 $0C

func_002_5ED3::
    ldh  a, [hLinkPositionY]                      ; $5ED3: $F0 $99
    sub  $30                                      ; $5ED5: $D6 $30
    add  $08                                      ; $5ED7: $C6 $08
    cp   $10                                      ; $5ED9: $FE $10
    jr   nc, jr_002_5EEB                          ; $5EDB: $30 $0E

    ldh  a, [hLinkPositionX]                      ; $5EDD: $F0 $98
    sub  $88                                      ; $5EDF: $D6 $88
    add  $10                                      ; $5EE1: $C6 $10
    cp   $20                                      ; $5EE3: $FE $20
    jr   nc, jr_002_5EEB                          ; $5EE5: $30 $04

    ld   a, $30                                   ; $5EE7: $3E $30
    jr   jr_002_5EED                              ; $5EE9: $18 $02

jr_002_5EEB:
    ld   a, $20                                   ; $5EEB: $3E $20

jr_002_5EED:
    ldh  [$FFCD], a                               ; $5EED: $E0 $CD
    ld   a, $80                                   ; $5EEF: $3E $80
    ldh  [$FFCE], a                               ; $5EF1: $E0 $CE
    swap a                                        ; $5EF3: $CB $37
    and  $0F                                      ; $5EF5: $E6 $0F
    ld   e, a                                     ; $5EF7: $5F
    ldh  a, [$FFCD]                               ; $5EF8: $F0 $CD
    and  $F0                                      ; $5EFA: $E6 $F0
    or   e                                        ; $5EFC: $B3
    ld   e, a                                     ; $5EFD: $5F
    ld   d, $00                                   ; $5EFE: $16 $00
    ld   hl, wTileMap                             ; $5F00: $21 $11 $D7
    add  hl, de                                   ; $5F03: $19
    ld   a, $A0                                   ; $5F04: $3E $A0
    ld   [hl], a                                  ; $5F06: $77
    ld   [$DDD8], a                               ; $5F07: $EA $D8 $DD
    call label_2887                               ; $5F0A: $CD $87 $28
    ld   a, [wRequests]                           ; $5F0D: $FA $00 $D6
    ld   e, a                                     ; $5F10: $5F
    ld   d, $00                                   ; $5F11: $16 $00
    ld   hl, wRequestDestinationHigh              ; $5F13: $21 $01 $D6
    add  hl, de                                   ; $5F16: $19
    add  $0A                                      ; $5F17: $C6 $0A
    ld   [wRequests], a                           ; $5F19: $EA $00 $D6
    ld   de, $5EA3                                ; $5F1C: $11 $A3 $5E
    ldh  a, [hIsGBC]                              ; $5F1F: $F0 $FE
    and  a                                        ; $5F21: $A7
    jr   z, label_002_5F27                        ; $5F22: $28 $03

    ld   de, $5EA7                                ; $5F24: $11 $A7 $5E

label_002_5F27::
    ldh  a, [$FFCF]                               ; $5F27: $F0 $CF
    ld   [hl+], a                                 ; $5F29: $22
    ldh  a, [$FFD0]                               ; $5F2A: $F0 $D0
    ld   [hl+], a                                 ; $5F2C: $22
    ld   a, $81                                   ; $5F2D: $3E $81
    ld   [hl+], a                                 ; $5F2F: $22
    ld   a, [de]                                  ; $5F30: $1A
    inc  de                                       ; $5F31: $13
    ld   [hl+], a                                 ; $5F32: $22
    ld   a, [de]                                  ; $5F33: $1A
    inc  de                                       ; $5F34: $13
    ld   [hl+], a                                 ; $5F35: $22
    ldh  a, [$FFCF]                               ; $5F36: $F0 $CF
    ld   [hl+], a                                 ; $5F38: $22
    ldh  a, [$FFD0]                               ; $5F39: $F0 $D0
    inc  a                                        ; $5F3B: $3C
    ld   [hl+], a                                 ; $5F3C: $22
    ld   a, $81                                   ; $5F3D: $3E $81
    ld   [hl+], a                                 ; $5F3F: $22
    ld   a, [de]                                  ; $5F40: $1A
    inc  de                                       ; $5F41: $13
    ld   [hl+], a                                 ; $5F42: $22
    ld   a, [de]                                  ; $5F43: $1A
    ld   [hl+], a                                 ; $5F44: $22
    xor  a                                        ; $5F45: $AF
    ld   [hl], a                                  ; $5F46: $77
    ldh  a, [hIsGBC]                              ; $5F47: $F0 $FE
    and  a                                        ; $5F49: $A7
    jr   z, jr_002_5F53                           ; $5F4A: $28 $07

    push bc                                       ; $5F4C: $C5
    ld   a, $02                                   ; $5F4D: $3E $02
    call label_91D                                ; $5F4F: $CD $1D $09
    pop  bc                                       ; $5F52: $C1

jr_002_5F53:
    ret                                           ; $5F53: $C9

    ld   l, d                                     ; $5F54: $6A
    ld   a, d                                     ; $5F55: $7A
    ld   l, e                                     ; $5F56: $6B
    ld   a, e                                     ; $5F57: $7B
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00

func_002_5F5C::
    ld   a, $01                                   ; $5F5C: $3E $01
    ldh  [$FFAC], a                               ; $5F5E: $E0 $AC
    ld   a, $10                                   ; $5F60: $3E $10
    ldh  [$FFCD], a                               ; $5F62: $E0 $CD
    add  $10                                      ; $5F64: $C6 $10
    ldh  [$FFAE], a                               ; $5F66: $E0 $AE
    ld   a, $80                                   ; $5F68: $3E $80
    ldh  [$FFCE], a                               ; $5F6A: $E0 $CE
    add  $08                                      ; $5F6C: $C6 $08
    ldh  [$FFAD], a                               ; $5F6E: $E0 $AD
    swap a                                        ; $5F70: $CB $37
    and  $0F                                      ; $5F72: $E6 $0F
    ld   e, a                                     ; $5F74: $5F
    ldh  a, [$FFCD]                               ; $5F75: $F0 $CD
    and  $F0                                      ; $5F77: $E6 $F0
    or   e                                        ; $5F79: $B3
    ld   e, a                                     ; $5F7A: $5F
    ld   d, $00                                   ; $5F7B: $16 $00
    ld   hl, wTileMap                             ; $5F7D: $21 $11 $D7
    add  hl, de                                   ; $5F80: $19
    ld   a, $BE                                   ; $5F81: $3E $BE
    ld   [hl], a                                  ; $5F83: $77
    ld   [$DDD8], a                               ; $5F84: $EA $D8 $DD
    call label_2887                               ; $5F87: $CD $87 $28
    ld   a, [wRequests]                           ; $5F8A: $FA $00 $D6
    ld   e, a                                     ; $5F8D: $5F
    ld   d, $00                                   ; $5F8E: $16 $00
    ld   hl, wRequestDestinationHigh              ; $5F90: $21 $01 $D6
    add  hl, de                                   ; $5F93: $19
    add  $0A                                      ; $5F94: $C6 $0A
    ld   [wRequests], a                           ; $5F96: $EA $00 $D6
    ld   de, $5F54                                ; $5F99: $11 $54 $5F
    jp   label_002_5F27                           ; $5F9C: $C3 $27 $5F

func_002_5F9F::
    and  $1F                                      ; $5F9F: $E6 $1F
    ldh  [$FFD7], a                               ; $5FA1: $E0 $D7
    dec  a                                        ; $5FA3: $3D
    rst  $00                                      ; $5FA4: $C7
    db   $fc                                      ; $5FA5: $FC
    ld   e, a                                     ; $5FA6: $5F
    push bc                                       ; $5FA7: $C5
    ld   e, a                                     ; $5FA8: $5F
    db   $e3                                      ; $5FA9: $E3
    ld   e, a                                     ; $5FAA: $5F
    push bc                                       ; $5FAB: $C5
    ld   e, a                                     ; $5FAC: $5F
    jp   c, $EB5F                                 ; $5FAD: $DA $5F $EB

    ld   e, a                                     ; $5FB0: $5F
    push bc                                       ; $5FB1: $C5
    ld   e, a                                     ; $5FB2: $5F
    db   $fc                                      ; $5FB3: $FC
    ld   e, a                                     ; $5FB4: $5F
    push bc                                       ; $5FB5: $C5
    ld   e, a                                     ; $5FB6: $5F
    add  $5F                                      ; $5FB7: $C6 $5F
    push bc                                       ; $5FB9: $C5
    ld   e, a                                     ; $5FBA: $5F
    push bc                                       ; $5FBB: $C5
    ld   e, a                                     ; $5FBC: $5F
    push bc                                       ; $5FBD: $C5
    ld   e, a                                     ; $5FBE: $5F
    push bc                                       ; $5FBF: $C5
    ld   e, a                                     ; $5FC0: $5F
    push bc                                       ; $5FC1: $C5
    ld   e, a                                     ; $5FC2: $5F
    dec  l                                        ; $5FC3: $2D
    ld   h, b                                     ; $5FC4: $60
    ret                                           ; $5FC5: $C9

    ldh  a, [hMapTileset]                         ; $5FC6: $F0 $F7
    cp   $06                                      ; $5FC8: $FE $06
    jr   nz, jr_002_5FD1                          ; $5FCA: $20 $05

    ld   a, [$DAE8]                               ; $5FCC: $FA $E8 $DA
    jr   jr_002_5FD4                              ; $5FCF: $18 $03

jr_002_5FD1:
    ld   a, [$D9FF]                               ; $5FD1: $FA $FF $D9

jr_002_5FD4:
    and  $20                                      ; $5FD4: $E6 $20
    jp   nz, label_C60                            ; $5FD6: $C2 $60 $0C

    ret                                           ; $5FD9: $C9

    ld   a, [$C1A2]                               ; $5FDA: $FA $A2 $C1
    cp   $02                                      ; $5FDD: $FE $02
    jp   z, label_C60                             ; $5FDF: $CA $60 $0C

    ret                                           ; $5FE2: $C9

    ld   a, [$C1CB]                               ; $5FE3: $FA $CB $C1
    and  a                                        ; $5FE6: $A7
    jp   nz, label_C60                            ; $5FE7: $C2 $60 $0C

    ret                                           ; $5FEA: $C9

    ld   c, $00                                   ; $5FEB: $0E $00
    ld   hl, $DBB6                                ; $5FED: $21 $B6 $DB

jr_002_5FF0:
    ld   a, [hl+]                                 ; $5FF0: $2A
    cp   c                                        ; $5FF1: $B9
    ret  nz                                       ; $5FF2: $C0

    inc  c                                        ; $5FF3: $0C
    ld   a, c                                     ; $5FF4: $79
    cp   $03                                      ; $5FF5: $FE $03
    jr   nz, jr_002_5FF0                          ; $5FF7: $20 $F7

    jp   label_C60                                ; $5FF9: $C3 $60 $0C

    ld   c, $0F                                   ; $5FFC: $0E $0F
    ld   b, $00                                   ; $5FFE: $06 $00

jr_002_6000:
    ld   hl, wEntitiesTypeTable                   ; $6000: $21 $80 $C2
    add  hl, bc                                   ; $6003: $09
    ld   a, [hl]                                  ; $6004: $7E
    and  a                                        ; $6005: $A7
    jr   z, jr_002_6011                           ; $6006: $28 $09

    ld   hl, $C430                                ; $6008: $21 $30 $C4
    add  hl, bc                                   ; $600B: $09
    ld   a, [hl]                                  ; $600C: $7E
    and  $02                                      ; $600D: $E6 $02
    jr   z, jr_002_602C                           ; $600F: $28 $1B

jr_002_6011:
    dec  c                                        ; $6011: $0D
    ld   a, c                                     ; $6012: $79
    cp   $FF                                      ; $6013: $FE $FF
    jr   nz, jr_002_6000                          ; $6015: $20 $E9

    ldh  a, [$FFD7]                               ; $6017: $F0 $D7
    cp   $08                                      ; $6019: $FE $08
    jr   nz, jr_002_6029                          ; $601B: $20 $0C

    ld   a, [$D460]                               ; $601D: $FA $60 $D4
    and  a                                        ; $6020: $A7
    jr   z, jr_002_602C                           ; $6021: $28 $09

    ld   a, [wC113]                               ; $6023: $FA $13 $C1
    and  a                                        ; $6026: $A7
    jr   nz, jr_002_602C                          ; $6027: $20 $03

jr_002_6029:
    jp   label_C60                                ; $6029: $C3 $60 $0C

jr_002_602C:
    ret                                           ; $602C: $C9

    ld   a, [$C18F]                               ; $602D: $FA $8F $C1
    and  a                                        ; $6030: $A7
    ret  nz                                       ; $6031: $C0

    xor  a                                        ; $6032: $AF
    ldh  [$FFD7], a                               ; $6033: $E0 $D7
    ld   de, $0000                                ; $6035: $11 $00 $00
    ldh  a, [hMapIndex]                           ; $6038: $F0 $F6
    cp   $12                                      ; $603A: $FE $12
    jr   z, jr_002_609B                           ; $603C: $28 $5D

jr_002_603E:
    ld   hl, $C3A0                                ; $603E: $21 $A0 $C3
    add  hl, de                                   ; $6041: $19
    ld   a, [hl]                                  ; $6042: $7E
    cp   $EF                                      ; $6043: $FE $EF
    jr   z, jr_002_604F                           ; $6045: $28 $08

    cp   $F0                                      ; $6047: $FE $F0
    jr   z, jr_002_604F                           ; $6049: $28 $04

    cp   $F1                                      ; $604B: $FE $F1
    jr   nz, jr_002_6064                          ; $604D: $20 $15

jr_002_604F:
    ld   hl, wEntitiesTypeTable                   ; $604F: $21 $80 $C2
    add  hl, de                                   ; $6052: $19
    ld   a, [hl]                                  ; $6053: $7E
    and  a                                        ; $6054: $A7
    jr   z, jr_002_6064                           ; $6055: $28 $0D

    ld   hl, $C3B0                                ; $6057: $21 $B0 $C3
    add  hl, de                                   ; $605A: $19
    ld   a, [hl]                                  ; $605B: $7E
    cp   $08                                      ; $605C: $FE $08
    jr   nz, jr_002_6064                          ; $605E: $20 $04

    ld   hl, $FFD7                                ; $6060: $21 $D7 $FF
    inc  [hl]                                     ; $6063: $34

jr_002_6064:
    inc  e                                        ; $6064: $1C
    ld   a, e                                     ; $6065: $7B
    and  $0F                                      ; $6066: $E6 $0F
    jr   nz, jr_002_603E                          ; $6068: $20 $D4

    ld   e, $09                                   ; $606A: $1E $09
    ldh  a, [hMapIndex]                           ; $606C: $F0 $F6
    cp   $0A                                      ; $606E: $FE $0A
    jr   z, jr_002_6074                           ; $6070: $28 $02

    ld   e, $04                                   ; $6072: $1E $04

jr_002_6074:
    ldh  a, [$FFD7]                               ; $6074: $F0 $D7
    cp   e                                        ; $6076: $BB
    ret  nz                                       ; $6077: $C0

    call label_C60                                ; $6078: $CD $60 $0C
    ldh  a, [hMapIndex]                           ; $607B: $F0 $F6
    cp   $08                                      ; $607D: $FE $08
    ret  z                                        ; $607F: $C8

    cp   $0A                                      ; $6080: $FE $0A
    jr   nz, jr_002_6098                          ; $6082: $20 $14

    call func_002_5DAF                            ; $6084: $CD $AF $5D
    call func_002_5E25                            ; $6087: $CD $25 $5E
    ld   hl, $DDE0                                ; $608A: $21 $E0 $DD
    ldh  a, [hMapIndex]                           ; $608D: $F0 $F6
    ld   e, a                                     ; $608F: $5F
    ld   d, $00                                   ; $6090: $16 $00
    add  hl, de                                   ; $6092: $19
    ld   a, [hl]                                  ; $6093: $7E
    or   $10                                      ; $6094: $F6 $10
    ld   [hl], a                                  ; $6096: $77
    ret                                           ; $6097: $C9

jr_002_6098:
    jp   label_002_5EAB                           ; $6098: $C3 $AB $5E

jr_002_609B:
    ld   hl, $C3A0                                ; $609B: $21 $A0 $C3
    add  hl, de                                   ; $609E: $19
    ld   a, [hl]                                  ; $609F: $7E
    cp   $F6                                      ; $60A0: $FE $F6
    jr   z, jr_002_60A8                           ; $60A2: $28 $04

    cp   $F7                                      ; $60A4: $FE $F7
    jr   nz, jr_002_60BD                          ; $60A6: $20 $15

jr_002_60A8:
    ld   hl, wEntitiesTypeTable                   ; $60A8: $21 $80 $C2
    add  hl, de                                   ; $60AB: $19
    ld   a, [hl]                                  ; $60AC: $7E
    and  a                                        ; $60AD: $A7
    jr   z, jr_002_60BD                           ; $60AE: $28 $0D

    ld   hl, wEntitiesWalkingTable                ; $60B0: $21 $90 $C2
    add  hl, de                                   ; $60B3: $19
    ld   a, [hl]                                  ; $60B4: $7E
    cp   $04                                      ; $60B5: $FE $04
    jr   nz, jr_002_60BD                          ; $60B7: $20 $04

    ld   hl, $FFD7                                ; $60B9: $21 $D7 $FF
    inc  [hl]                                     ; $60BC: $34

jr_002_60BD:
    inc  e                                        ; $60BD: $1C
    ld   a, e                                     ; $60BE: $7B
    and  $0F                                      ; $60BF: $E6 $0F
    jr   nz, jr_002_609B                          ; $60C1: $20 $D8

    ldh  a, [$FFD7]                               ; $60C3: $F0 $D7
    cp   $02                                      ; $60C5: $FE $02
    ret  nz                                       ; $60C7: $C0

    call label_C60                                ; $60C8: $CD $60 $0C
    call func_002_5DAF                            ; $60CB: $CD $AF $5D
    call func_002_5B9F                            ; $60CE: $CD $9F $5B
    ld   a, [hl]                                  ; $60D1: $7E
    or   $10                                      ; $60D2: $F6 $10
    ld   [hl], a                                  ; $60D4: $77
    ldh  [hFFF8], a                               ; $60D5: $E0 $F8
    ret                                           ; $60D7: $C9

func_002_60D8::
    ld   a, [de]                                  ; $60D8: $1A
    cp   [hl]                                     ; $60D9: $BE
    jr   c, jr_002_60DE                           ; $60DA: $38 $02

    ld   a, [hl]                                  ; $60DC: $7E
    ld   [de], a                                  ; $60DD: $12

jr_002_60DE:
    inc  hl                                       ; $60DE: $23
    ret                                           ; $60DF: $C9

    ld   hl, $DB76                                ; $60E0: $21 $76 $DB
    ld   de, $DB4C                                ; $60E3: $11 $4C $DB
    call func_002_60D8                            ; $60E6: $CD $D8 $60
    ld   de, wBombCount                           ; $60E9: $11 $4D $DB
    call func_002_60D8                            ; $60EC: $CD $D8 $60
    ld   de, wArrowCount                          ; $60EF: $11 $45 $DB
    call func_002_60D8                            ; $60F2: $CD $D8 $60
    ld   a, [wLinkMotionState]                    ; $60F5: $FA $1C $C1
    cp   $02                                      ; $60F8: $FE $02
    ret  nc                                       ; $60FA: $D0

    ld   a, [wDialogState]                        ; $60FB: $FA $9F $C1
    and  a                                        ; $60FE: $A7
    jp   nz, label_002_61F5                       ; $60FF: $C2 $F5 $61

    ld   a, [wMapSlideTransitionState]            ; $6102: $FA $24 $C1
    and  a                                        ; $6105: $A7
    ret  nz                                       ; $6106: $C0

    ld   a, [wInventoryAppearing]                 ; $6107: $FA $4F $C1
    and  a                                        ; $610A: $A7
    jp   nz, label_002_61A9                       ; $610B: $C2 $A9 $61

    ldh  a, [hPressedButtonsMask]                 ; $610E: $F0 $CB
    and  $40                                      ; $6110: $E6 $40
    jp   nz, label_002_61E7                       ; $6112: $C2 $E7 $61

    ldh  a, [hFFCC]                               ; $6115: $F0 $CC
    and  $80                                      ; $6117: $E6 $80
    jp   z, label_002_61E7                        ; $6119: $CA $E7 $61

    ld   a, [wWindowY]                            ; $611C: $FA $9A $DB
    and  a                                        ; $611F: $A7
    jr   z, jr_002_613D                           ; $6120: $28 $1B

    ld   a, [$D464]                               ; $6122: $FA $64 $D4
    and  a                                        ; $6125: $A7
    jp   nz, label_002_61E7                       ; $6126: $C2 $E7 $61

    ld   a, [wC167]                               ; $6129: $FA $67 $C1
    and  a                                        ; $612C: $A7
    jp   nz, label_002_61E7                       ; $612D: $C2 $E7 $61

    ldh  a, [$FFA1]                               ; $6130: $F0 $A1
    cp   $02                                      ; $6132: $FE $02
    jp   z, label_002_61E7                        ; $6134: $CA $E7 $61

    ldh  a, [hLinkAnimationState]                 ; $6137: $F0 $9D
    inc  a                                        ; $6139: $3C
    jp   z, label_002_61E7                        ; $613A: $CA $E7 $61

jr_002_613D:
    ld   a, [$C1B5]                               ; $613D: $FA $B5 $C1
    ld   hl, $C1B8                                ; $6140: $21 $B8 $C1
    or   [hl]                                     ; $6143: $B6
    ld   hl, $C1B9                                ; $6144: $21 $B9 $C1
    or   [hl]                                     ; $6147: $B6
    jp   nz, label_002_61E7                       ; $6148: $C2 $E7 $61

    ld   a, $01                                   ; $614B: $3E $01
    ld   [wInventoryAppearing], a                 ; $614D: $EA $4F $C1
    ld   [$C151], a                               ; $6150: $EA $51 $C1
    ld   a, $12                                   ; $6153: $3E $12
    ldh  [$FFF2], a                               ; $6155: $E0 $F2
    ld   a, [$C150]                               ; $6157: $FA $50 $C1
    cpl                                           ; $615A: $2F
    inc  a                                        ; $615B: $3C
    ld   [$C150], a                               ; $615C: $EA $50 $C1
    and  $80                                      ; $615F: $E6 $80
    jr   z, jr_002_619F                           ; $6161: $28 $3C

    xor  a                                        ; $6163: $AF
    ld   [wTransitionSequenceCounter], a          ; $6164: $EA $6B $C1
    ld   [wC16C], a                               ; $6167: $EA $6C $C1
    ldh  [hPressedButtonsMask], a                 ; $616A: $E0 $CB
    ldh  [hFFCC], a                               ; $616C: $E0 $CC
    ld   [wGameplaySubtype], a                    ; $616E: $EA $96 $DB
    ld   a, $0C                                   ; $6171: $3E $0C
    ld   [wGameplayType], a                       ; $6173: $EA $95 $DB
    ld   a, $11                                   ; $6176: $3E $11
    ldh  [$FFF2], a                               ; $6178: $E0 $F2
    xor  a                                        ; $617A: $AF
    ld   [$C151], a                               ; $617B: $EA $51 $C1
    ld   a, $0B                                   ; $617E: $3E $0B
    ld   [$C154], a                               ; $6180: $EA $54 $C1
    ld   a, [wActiveRoom]                         ; $6183: $FA $A5 $DB
    and  a                                        ; $6186: $A7
    ld   a, $07                                   ; $6187: $3E $07
    jr   z, jr_002_619C                           ; $6189: $28 $11

    ldh  a, [hMapTileset]                         ; $618B: $F0 $F7
    cp   $FF                                      ; $618D: $FE $FF
    jr   z, jr_002_6197                           ; $618F: $28 $06

    cp   $08                                      ; $6191: $FE $08
    ld   a, $07                                   ; $6193: $3E $07
    jr   nc, jr_002_619C                          ; $6195: $30 $05

jr_002_6197:
    call IsMapE8                                  ; $6197: $CD $09 $67
    ld   a, $02                                   ; $619A: $3E $02

jr_002_619C:
    ldh  [hNeedsUpdatingBGTiles], a               ; $619C: $E0 $90
    ret                                           ; $619E: $C9

jr_002_619F:
    ld   a, $07                                   ; $619F: $3E $07
    ldh  [hWindowYUnused], a                      ; $61A1: $E0 $A9
    ld   a, $70                                   ; $61A3: $3E $70
    ldh  [hWindowXUnused], a                      ; $61A5: $E0 $AA
    pop  af                                       ; $61A7: $F1
    ret                                           ; $61A8: $C9

label_002_61A9::
    ld   a, [$C151]                               ; $61A9: $FA $51 $C1
    and  a                                        ; $61AC: $A7
    jr   nz, jr_002_61C6                          ; $61AD: $20 $17

    ld   a, [wRequestDestinationHigh]             ; $61AF: $FA $01 $D6
    and  a                                        ; $61B2: $A7
    jr   nz, jr_002_61B9                          ; $61B3: $20 $04

    ld   hl, $C151                                ; $61B5: $21 $51 $C1
    inc  [hl]                                     ; $61B8: $34

jr_002_61B9:
    pop  af                                       ; $61B9: $F1

func_002_61BA::
    call func_002_755B                            ; $61BA: $CD $5B $75
    call $1797                                    ; $61BD: $CD $97 $17
    call DrawLinkSpriteAndReturn                  ; $61C0: $CD $2E $1D
    jp   label_F05                                ; $61C3: $C3 $05 $0F

jr_002_61C6:
    ld   a, [$C150]                               ; $61C6: $FA $50 $C1
    ld   hl, wWindowY                             ; $61C9: $21 $9A $DB
    add  [hl]                                     ; $61CC: $86
    ld   [hl], a                                  ; $61CD: $77
    cp   $80                                      ; $61CE: $FE $80
    jr   z, jr_002_61DE                           ; $61D0: $28 $0C

    cp   $00                                      ; $61D2: $FE $00
    jr   nz, jr_002_61E4                          ; $61D4: $20 $0E

    ld   a, $03                                   ; $61D6: $3E $03
    ldh  [hWindowYUnused], a                      ; $61D8: $E0 $A9
    ld   a, $30                                   ; $61DA: $3E $30
    ldh  [hWindowXUnused], a                      ; $61DC: $E0 $AA

jr_002_61DE:
    xor  a                                        ; $61DE: $AF
    ld   [wInventoryAppearing], a                 ; $61DF: $EA $4F $C1
    jr   label_002_61E7                           ; $61E2: $18 $03

jr_002_61E4:
    call func_002_61BA                            ; $61E4: $CD $BA $61

label_002_61E7::
    ld   a, [wWindowY]                            ; $61E7: $FA $9A $DB
    cp   $80                                      ; $61EA: $FE $80
    jr   z, label_002_61F5                        ; $61EC: $28 $07

    ld   a, [wInventoryAppearing]                 ; $61EE: $FA $4F $C1
    and  a                                        ; $61F1: $A7
    jr   nz, jr_002_61F4                          ; $61F2: $20 $00

jr_002_61F4:
    pop  af                                       ; $61F4: $F1

label_002_61F5::
    ld   a, [wDialogState]                        ; $61F5: $FA $9F $C1
    and  $7F                                      ; $61F8: $E6 $7F
    jr   z, jr_002_6203                           ; $61FA: $28 $07

    cp   $0C                                      ; $61FC: $FE $0C
    jr   z, jr_002_6203                           ; $61FE: $28 $03

    cp   $0D                                      ; $6200: $FE $0D
    ret  nz                                       ; $6202: $C0

jr_002_6203:
    call func_002_6209                            ; $6203: $CD $09 $62
    jp   label_002_6317                           ; $6206: $C3 $17 $63

func_002_6209::
    ld   hl, wRequests                            ; $6209: $21 $00 $D6
    ldh  a, [hFrameCounter]                       ; $620C: $F0 $E7
    and  $01                                      ; $620E: $E6 $01
    or   [hl]                                     ; $6210: $B6
    ret  nz                                       ; $6211: $C0

    ld   hl, $C3CE                                ; $6212: $21 $CE $C3
    ld   a, [hl]                                  ; $6215: $7E
    and  a                                        ; $6216: $A7
    jr   z, jr_002_621B                           ; $6217: $28 $02

    dec  [hl]                                     ; $6219: $35
    ret                                           ; $621A: $C9

jr_002_621B:
    ld   hl, $DB8F                                ; $621B: $21 $8F $DB
    ld   a, [wAddRupeeBufferHigh]                 ; $621E: $FA $90 $DB
    or   [hl]                                     ; $6221: $B6
    jr   z, jr_002_6274                           ; $6222: $28 $50

    ld   a, $05                                   ; $6224: $3E $05
    ldh  [hSFX], a                                ; $6226: $E0 $F3
    ld   a, [wAddRupeeBufferHigh]                 ; $6228: $FA $90 $DB
    ld   e, a                                     ; $622B: $5F
    ld   a, [$DB8F]                               ; $622C: $FA $8F $DB
    sla  e                                        ; $622F: $CB $23
    rla                                           ; $6231: $17
    sla  e                                        ; $6232: $CB $23
    rla                                           ; $6234: $17
    sla  e                                        ; $6235: $CB $23
    rla                                           ; $6237: $17
    inc  a                                        ; $6238: $3C
    cp   $0A                                      ; $6239: $FE $0A
    jr   c, jr_002_623F                           ; $623B: $38 $02

    ld   a, $09                                   ; $623D: $3E $09

jr_002_623F:
    ld   e, a                                     ; $623F: $5F
    ld   a, [wAddRupeeBufferHigh]                 ; $6240: $FA $90 $DB
    sub  e                                        ; $6243: $93
    ld   [wAddRupeeBufferHigh], a                 ; $6244: $EA $90 $DB
    ld   a, [hl]                                  ; $6247: $7E
    sbc  $00                                      ; $6248: $DE $00
    ld   [hl], a                                  ; $624A: $77
    ld   a, [wRupeeCountLow]                      ; $624B: $FA $5E $DB
    add  e                                        ; $624E: $83
    daa                                           ; $624F: $27
    ld   [wRupeeCountLow], a                      ; $6250: $EA $5E $DB
    ld   a, [wRupeeCountHigh]                     ; $6253: $FA $5D $DB
    adc  $00                                      ; $6256: $CE $00
    daa                                           ; $6258: $27
    ld   [wRupeeCountHigh], a                     ; $6259: $EA $5D $DB
    cp   $10                                      ; $625C: $FE $10
    jr   c, jr_002_6271                           ; $625E: $38 $11

    ld   a, $09                                   ; $6260: $3E $09
    ld   [wRupeeCountHigh], a                     ; $6262: $EA $5D $DB
    ld   a, $99                                   ; $6265: $3E $99
    ld   [wRupeeCountLow], a                      ; $6267: $EA $5E $DB
    xor  a                                        ; $626A: $AF
    ld   [$DB8F], a                               ; $626B: $EA $8F $DB
    ld   [wAddRupeeBufferHigh], a                 ; $626E: $EA $90 $DB

jr_002_6271:
    call label_002_62CE                           ; $6271: $CD $CE $62

jr_002_6274:
    ld   hl, wAddRupeeBufferLow                   ; $6274: $21 $91 $DB
    ld   a, [wSubstractRupeeBufferHigh]           ; $6277: $FA $92 $DB
    or   [hl]                                     ; $627A: $B6
    ret  z                                        ; $627B: $C8

    ld   a, $05                                   ; $627C: $3E $05
    ldh  [hSFX], a                                ; $627E: $E0 $F3
    ld   a, [wSubstractRupeeBufferHigh]           ; $6280: $FA $92 $DB
    ld   e, a                                     ; $6283: $5F
    ld   a, [wAddRupeeBufferLow]                  ; $6284: $FA $91 $DB
    sla  e                                        ; $6287: $CB $23
    rla                                           ; $6289: $17
    sla  e                                        ; $628A: $CB $23
    rla                                           ; $628C: $17
    sla  e                                        ; $628D: $CB $23
    rla                                           ; $628F: $17
    inc  a                                        ; $6290: $3C
    cp   $0A                                      ; $6291: $FE $0A
    jr   c, jr_002_6297                           ; $6293: $38 $02

    ld   a, $09                                   ; $6295: $3E $09

jr_002_6297:
    ld   e, a                                     ; $6297: $5F
    ld   a, [wSubstractRupeeBufferHigh]           ; $6298: $FA $92 $DB
    sub  e                                        ; $629B: $93
    ld   [wSubstractRupeeBufferHigh], a           ; $629C: $EA $92 $DB
    ld   a, [hl]                                  ; $629F: $7E
    sbc  $00                                      ; $62A0: $DE $00
    ld   [hl], a                                  ; $62A2: $77
    ld   a, [wRupeeCountLow]                      ; $62A3: $FA $5E $DB
    ld   hl, wRupeeCountHigh                      ; $62A6: $21 $5D $DB
    or   [hl]                                     ; $62A9: $B6
    ret  z                                        ; $62AA: $C8

    ld   a, [wRupeeCountLow]                      ; $62AB: $FA $5E $DB
    sub  e                                        ; $62AE: $93
    daa                                           ; $62AF: $27
    ld   [wRupeeCountLow], a                      ; $62B0: $EA $5E $DB
    ld   a, [wRupeeCountHigh]                     ; $62B3: $FA $5D $DB
    sbc  $00                                      ; $62B6: $DE $00
    daa                                           ; $62B8: $27
    ld   [wRupeeCountHigh], a                     ; $62B9: $EA $5D $DB
    jr   nc, jr_002_62CB                          ; $62BC: $30 $0D

    xor  a                                        ; $62BE: $AF
    ld   [wRupeeCountHigh], a                     ; $62BF: $EA $5D $DB
    ld   [wRupeeCountLow], a                      ; $62C2: $EA $5E $DB
    ld   [wAddRupeeBufferLow], a                  ; $62C5: $EA $91 $DB
    ld   [wSubstractRupeeBufferHigh], a           ; $62C8: $EA $92 $DB

jr_002_62CB:
    jp   label_002_62CE                           ; $62CB: $C3 $CE $62

label_002_62CE::
    ld   a, [wRequests]                           ; $62CE: $FA $00 $D6
    ld   e, a                                     ; $62D1: $5F
    ld   d, $00                                   ; $62D2: $16 $00
    add  $06                                      ; $62D4: $C6 $06
    ld   [wRequests], a                           ; $62D6: $EA $00 $D6
    ld   hl, wRequestDestinationHigh              ; $62D9: $21 $01 $D6
    add  hl, de                                   ; $62DC: $19
    ld   a, $9C                                   ; $62DD: $3E $9C
    ld   [hl+], a                                 ; $62DF: $22
    ld   a, $2A                                   ; $62E0: $3E $2A
    ld   [hl+], a                                 ; $62E2: $22
    ld   a, $02                                   ; $62E3: $3E $02
    ld   [hl+], a                                 ; $62E5: $22
    push hl                                       ; $62E6: $E5
    ld   a, [wRupeeCountHigh]                     ; $62E7: $FA $5D $DB
    and  $0F                                      ; $62EA: $E6 $0F
    ld   e, a                                     ; $62EC: $5F
    add  $B0                                      ; $62ED: $C6 $B0
    pop  hl                                       ; $62EF: $E1
    ld   [hl+], a                                 ; $62F0: $22
    push hl                                       ; $62F1: $E5
    ld   a, [wRupeeCountLow]                      ; $62F2: $FA $5E $DB
    swap a                                        ; $62F5: $CB $37
    and  $0F                                      ; $62F7: $E6 $0F
    add  $B0                                      ; $62F9: $C6 $B0
    pop  hl                                       ; $62FB: $E1
    ld   [hl+], a                                 ; $62FC: $22
    push hl                                       ; $62FD: $E5
    ld   a, [wRupeeCountLow]                      ; $62FE: $FA $5E $DB
    and  $0F                                      ; $6301: $E6 $0F
    add  $B0                                      ; $6303: $C6 $B0
    pop  hl                                       ; $6305: $E1
    ld   [hl+], a                                 ; $6306: $22
    ld   a, $00                                   ; $6307: $3E $00
    ld   [hl+], a                                 ; $6309: $22
    ret                                           ; $630A: $C9

    dec  b                                        ; $630B: $05
    dec  b                                        ; $630C: $05
    dec  b                                        ; $630D: $05
    add  hl, bc                                   ; $630E: $09
    add  hl, bc                                   ; $630F: $09
    add  hl, bc                                   ; $6310: $09
    ld   de, $1111                                ; $6311: $11 $11 $11
    add  hl, de                                   ; $6314: $19
    add  hl, de                                   ; $6315: $19
    add  hl, de                                   ; $6316: $19

label_002_6317::
    xor  a                                        ; $6317: $AF
    ld   [wC163], a                               ; $6318: $EA $63 $C1
    ld   a, [wMaxHearts]                          ; $631B: $FA $5B $DB
    ld   e, a                                     ; $631E: $5F
    ld   d, $00                                   ; $631F: $16 $00
    ld   hl, $6308                                ; $6321: $21 $08 $63
    add  hl, de                                   ; $6324: $19
    ld   a, [wCurrentHealth]                      ; $6325: $FA $5A $DB
    cp   [hl]                                     ; $6328: $BE
    jr   nc, jr_002_6342                          ; $6329: $30 $17

    ld   a, $01                                   ; $632B: $3E $01
    ld   [wC163], a                               ; $632D: $EA $63 $C1
    ld   a, [wC110]                               ; $6330: $FA $10 $C1
    dec  a                                        ; $6333: $3D
    cp   $FF                                      ; $6334: $FE $FF
    jr   nz, jr_002_633F                          ; $6336: $20 $07

    ld   a, $30                                   ; $6338: $3E $30
    ld   hl, hSFX                                 ; $633A: $21 $F3 $FF
    ld   [hl], $04                                ; $633D: $36 $04

jr_002_633F:
    ld   [wC110], a                               ; $633F: $EA $10 $C1

jr_002_6342:
    ldh  a, [hFrameCounter]                       ; $6342: $F0 $E7
    and  $01                                      ; $6344: $E6 $01
    jr   z, jr_002_63A2                           ; $6346: $28 $5A

    ld   a, [wRequests]                           ; $6348: $FA $00 $D6
    and  a                                        ; $634B: $A7
    jr   nz, jr_002_63A2                          ; $634C: $20 $54

    ld   a, [wSubstractRupeeBufferLow]            ; $634E: $FA $93 $DB
    and  a                                        ; $6351: $A7
    jr   z, jr_002_6385                           ; $6352: $28 $31

    dec  a                                        ; $6354: $3D
    ld   [wSubstractRupeeBufferLow], a            ; $6355: $EA $93 $DB
    ld   a, [wMaxHearts]                          ; $6358: $FA $5B $DB
    cp   $0F                                      ; $635B: $FE $0F
    jr   c, jr_002_6361                           ; $635D: $38 $02

    ld   a, $0E                                   ; $635F: $3E $0E

jr_002_6361:
    sla  a                                        ; $6361: $CB $27
    sla  a                                        ; $6363: $CB $27
    sla  a                                        ; $6365: $CB $27
    ld   e, a                                     ; $6367: $5F
    ld   a, [wCurrentHealth]                      ; $6368: $FA $5A $DB
    cp   e                                        ; $636B: $BB
    jr   nz, jr_002_6374                          ; $636C: $20 $06

    xor  a                                        ; $636E: $AF
    ld   [wSubstractRupeeBufferLow], a            ; $636F: $EA $93 $DB
    jr   jr_002_6385                              ; $6372: $18 $11

jr_002_6374:
    inc  a                                        ; $6374: $3C
    ld   [wCurrentHealth], a                      ; $6375: $EA $5A $DB
    and  $07                                      ; $6378: $E6 $07
    cp   $06                                      ; $637A: $FE $06
    jr   nz, jr_002_6382                          ; $637C: $20 $04

    ld   a, $06                                   ; $637E: $3E $06
    ldh  [hSFX], a                                ; $6380: $E0 $F3

jr_002_6382:
    jp   func_002_6414                            ; $6382: $C3 $14 $64

jr_002_6385:
    ld   a, [wDB94]                               ; $6385: $FA $94 $DB
    and  a                                        ; $6388: $A7
    jr   z, jr_002_63A2                           ; $6389: $28 $17

    dec  a                                        ; $638B: $3D
    ld   [wDB94], a                               ; $638C: $EA $94 $DB
    ld   a, [wCurrentHealth]                      ; $638F: $FA $5A $DB
    and  a                                        ; $6392: $A7
    jr   z, jr_002_6399                           ; $6393: $28 $04

    dec  a                                        ; $6395: $3D
    ld   [wCurrentHealth], a                      ; $6396: $EA $5A $DB

jr_002_6399:
    call func_002_6414                            ; $6399: $CD $14 $64
    ld   a, [wCurrentHealth]                      ; $639C: $FA $5A $DB
    and  a                                        ; $639F: $A7
    jr   z, jr_002_63A3                           ; $63A0: $28 $01

jr_002_63A2:
    ret                                           ; $63A2: $C9

jr_002_63A3:
    ld   a, [wHasMedicine]                        ; $63A3: $FA $0D $DB
    and  a                                        ; $63A6: $A7
    jr   z, jr_002_63FE                           ; $63A7: $28 $55

    dec  a                                        ; $63A9: $3D
    ld   [wHasMedicine], a                        ; $63AA: $EA $0D $DB
    ld   a, $08                                   ; $63AD: $3E $08
    ld   [wCurrentHealth], a                      ; $63AF: $EA $5A $DB
    ld   a, [wSubstractRupeeBufferLow]            ; $63B2: $FA $93 $DB
    add  $80                                      ; $63B5: $C6 $80
    ld   [wSubstractRupeeBufferLow], a            ; $63B7: $EA $93 $DB
    ld   a, $A0                                   ; $63BA: $3E $A0
    ld   [$DBC7], a                               ; $63BC: $EA $C7 $DB
    ld   a, [wRequests]                           ; $63BF: $FA $00 $D6
    ld   e, a                                     ; $63C2: $5F
    ld   d, $00                                   ; $63C3: $16 $00
    add  $04                                      ; $63C5: $C6 $04
    ld   [wRequests], a                           ; $63C7: $EA $00 $D6
    ld   hl, wRequestDestinationHigh              ; $63CA: $21 $01 $D6
    add  hl, de                                   ; $63CD: $19
    ld   a, $9C                                   ; $63CE: $3E $9C
    ld   [hl+], a                                 ; $63D0: $22
    ld   a, $93                                   ; $63D1: $3E $93
    ld   [hl+], a                                 ; $63D3: $22
    ld   a, $00                                   ; $63D4: $3E $00
    ld   [hl+], a                                 ; $63D6: $22
    ld   a, [wHasMedicine]                        ; $63D7: $FA $0D $DB
    add  $B0                                      ; $63DA: $C6 $B0
    cp   $B0                                      ; $63DC: $FE $B0
    jr   z, jr_002_63E4                           ; $63DE: $28 $04

    ld   [hl+], a                                 ; $63E0: $22
    xor  a                                        ; $63E1: $AF
    ld   [hl], a                                  ; $63E2: $77
    ret                                           ; $63E3: $C9

jr_002_63E4:
    ld   a, $7F                                   ; $63E4: $3E $7F
    ld   [hl+], a                                 ; $63E6: $22
    ld   a, $9C                                   ; $63E7: $3E $9C
    ld   [hl+], a                                 ; $63E9: $22
    ld   a, $72                                   ; $63EA: $3E $72
    ld   [hl+], a                                 ; $63EC: $22
    ld   a, $C1                                   ; $63ED: $3E $C1
    ld   [hl+], a                                 ; $63EF: $22
    ld   a, $7F                                   ; $63F0: $3E $7F
    ld   [hl+], a                                 ; $63F2: $22
    xor  a                                        ; $63F3: $AF
    ld   [hl], a                                  ; $63F4: $77
    ld   a, [wRequests]                           ; $63F5: $FA $00 $D6
    add  $04                                      ; $63F8: $C6 $04
    ld   [wRequests], a                           ; $63FA: $EA $00 $D6
    ret                                           ; $63FD: $C9

jr_002_63FE:
    ret                                           ; $63FE: $C9

    sbc  h                                        ; $63FF: $9C
    dec  c                                        ; $6400: $0D
    ld   b, $7F                                   ; $6401: $06 $7F
    ld   a, a                                     ; $6403: $7F
    ld   a, a                                     ; $6404: $7F
    ld   a, a                                     ; $6405: $7F
    ld   a, a                                     ; $6406: $7F
    ld   a, a                                     ; $6407: $7F
    ld   a, a                                     ; $6408: $7F
    sbc  h                                        ; $6409: $9C
    dec  l                                        ; $640A: $2D
    ld   b, $7F                                   ; $640B: $06 $7F
    ld   a, a                                     ; $640D: $7F
    ld   a, a                                     ; $640E: $7F
    ld   a, a                                     ; $640F: $7F
    ld   a, a                                     ; $6410: $7F
    ld   a, a                                     ; $6411: $7F
    ld   a, a                                     ; $6412: $7F
    nop                                           ; $6413: $00

func_002_6414::
    ld   a, [wRequests]                           ; $6414: $FA $00 $D6
    ld   e, a                                     ; $6417: $5F
    ld   d, $00                                   ; $6418: $16 $00
    add  $14                                      ; $641A: $C6 $14
    ld   [wRequests], a                           ; $641C: $EA $00 $D6
    ld   hl, wRequestDestinationHigh              ; $641F: $21 $01 $D6
    add  hl, de                                   ; $6422: $19
    push de                                       ; $6423: $D5
    ld   bc, $63FF                                ; $6424: $01 $FF $63
    ld   e, $15                                   ; $6427: $1E $15

jr_002_6429:
    ld   a, [bc]                                  ; $6429: $0A
    inc  bc                                       ; $642A: $03
    ld   [hl+], a                                 ; $642B: $22
    dec  e                                        ; $642C: $1D
    jr   nz, jr_002_6429                          ; $642D: $20 $FA

    nop                                           ; $642F: $00
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    nop                                           ; $6432: $00
    pop  de                                       ; $6433: $D1
    ld   hl, wRequestData                         ; $6434: $21 $04 $D6
    add  hl, de                                   ; $6437: $19
    ld   c, $00                                   ; $6438: $0E $00
    ld   a, [wCurrentHealth]                      ; $643A: $FA $5A $DB
    and  a                                        ; $643D: $A7
    jr   z, jr_002_6462                           ; $643E: $28 $22

    ldh  [$FFD7], a                               ; $6440: $E0 $D7

jr_002_6442:
    ldh  a, [$FFD7]                               ; $6442: $F0 $D7
    sub  $08                                      ; $6444: $D6 $08
    ldh  [$FFD7], a                               ; $6446: $E0 $D7
    jr   c, jr_002_6459                           ; $6448: $38 $0F

    ld   a, $A9                                   ; $644A: $3E $A9
    ld   [hl+], a                                 ; $644C: $22
    inc  c                                        ; $644D: $0C
    ld   a, c                                     ; $644E: $79
    cp   $07                                      ; $644F: $FE $07
    jr   nz, jr_002_6457                          ; $6451: $20 $04

    ld   a, l                                     ; $6453: $7D
    add  $03                                      ; $6454: $C6 $03
    ld   l, a                                     ; $6456: $6F

jr_002_6457:
    jr   jr_002_6442                              ; $6457: $18 $E9

jr_002_6459:
    add  $08                                      ; $6459: $C6 $08
    jr   z, jr_002_6462                           ; $645B: $28 $05

    ld   a, $CE                                   ; $645D: $3E $CE
    ld   [hl+], a                                 ; $645F: $22
    jr   jr_002_646B                              ; $6460: $18 $09

jr_002_6462:
    ld   a, [wMaxHearts]                          ; $6462: $FA $5B $DB
    cp   c                                        ; $6465: $B9
    jr   z, jr_002_6477                           ; $6466: $28 $0F

    ld   a, $CD                                   ; $6468: $3E $CD
    ld   [hl+], a                                 ; $646A: $22

jr_002_646B:
    inc  c                                        ; $646B: $0C
    ld   a, c                                     ; $646C: $79
    cp   $07                                      ; $646D: $FE $07
    jr   nz, jr_002_6475                          ; $646F: $20 $04

    ld   a, l                                     ; $6471: $7D
    add  $03                                      ; $6472: $C6 $03
    ld   l, a                                     ; $6474: $6F

jr_002_6475:
    jr   jr_002_6462                              ; $6475: $18 $EB

jr_002_6477:
    ret                                           ; $6477: $C9

Data_002_6478::
    db   $A7, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D
    db   $7D, $7D, $7D, $7D, $7D, $7D, $7D, $EF, $7D, $7D, $EF, $EF, $EF, $7D, $7D, $EE
    db   $7D, $ED, $7D, $EF, $ED, $EF, $ED, $EF, $7D, $EF, $EF, $ED, $ED, $EF, $EF, $EF
    db   $7D, $EF, $7D, $EF, $ED, $ED, $7D, $7D, $7D, $7D, $ED, $EF, $EF, $7D, $7D, $7D
    db   $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $ED, $ED, $ED, $EF, $EF, $EF
    db   $7D, $7D, $7D, $ED, $7D, $7D, $ED, $7D, $7D, $7D, $EF, $EF, $7D, $7D, $EF, $EE
    db   $7D, $7D, $EF, $7D, $7D, $7D, $7D, $EF, $7D, $7D, $ED, $7D, $7D, $7D, $7D, $EF
    db   $7D, $7D, $EF, $EF, $EF, $EF, $EF, $EF, $7D, $7D, $7D, $ED, $ED, $ED, $ED, $7D
    db   $7D, $EF, $EF, $ED, $EF, $7D, $7D, $7D, $7D, $ED, $EF, $ED, $ED, $7D, $7D, $7D
    db   $7D, $EF, $EF, $EF, $EF, $7D, $7D, $EF, $7D, $7D, $ED, $EF, $7D, $7D, $EF, $EF
    db   $EF, $7D, $ED, $7D, $7D, $7D, $7D, $EF, $7D, $7D, $ED, $ED, $7D, $7D, $7D, $EF
    db   $7D, $7D, $ED, $7D, $7D, $7D, $7D, $EE, $7D, $7D, $EF, $ED, $7D, $7D, $7D, $EF
    db   $EF, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $ED, $EF, $7D, $7D
    db   $7D, $7D, $EF, $7D, $EF, $EF, $7D, $ED, $7D, $7D, $EE, $EF, $ED, $EF, $ED, $EF
    db   $7D, $7D, $EF, $ED, $ED, $EF, $EF, $ED, $7D, $7D, $7D, $EF, $EF, $EF, $ED, $7D
    db   $7D, $7D, $7D, $ED, $EF, $ED, $ED, $7D, $7D, $7D, $7D, $7D, $EF, $ED, $7D, $7D
    db   $7D, $7D, $EF, $EF, $EF, $ED, $EF, $7D, $7D, $7D, $7D, $7D, $EE, $7D, $EF, $ED
    db   $7D, $7D, $EF, $EF, $EF, $EF, $EF, $ED, $ED, $7D, $7D, $7D, $7D, $7D, $EF, $EF
    db   $EF, $7D, $7D, $7D, $EF, $EF, $EF, $EF, $7D, $7D, $7D, $ED, $EF, $EF, $EF, $7D
    db   $7D, $7D, $7D, $7D, $ED, $EF, $EF, $7D, $7D, $7D, $7D, $7D, $7D, $ED, $EF, $ED
    db   $EF, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $ED, $7D, $7D, $7D, $7D, $7D, $7D
    db   $ED, $EF, $ED, $7D, $EF, $EF, $7D, $ED, $EF, $EF, $ED, $EF, $EF, $EE, $EF, $ED
    db   $EF, $ED, $EF, $7D, $EF, $EF, $7D, $EF, $EF, $7D, $EF, $ED, $EF, $EF, $EF, $EF
    db   $7D, $7D, $ED, $ED, $7D, $7D, $EF, $ED, $7D, $7D, $EF, $EF, $EF, $EF, $EF, $EF
    db   $7D, $7D, $ED, $ED, $7D, $7D, $7D, $7D, $7D, $EF, $EF, $EF, $EF, $7D, $EF, $EF
    db   $7D, $EF, $EF, $EF, $ED, $7D, $EF, $EE, $7D, $EF, $ED, $EF, $EF, $7D, $7D, $7D
    db   $7D, $ED, $EF, $EF, $ED, $7D, $EF, $ED, $7D, $EF, $EF, $EF, $EF, $EF, $EF, $EF
    db   $ED, $ED, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $EF, $7D, $EF, $EF
    db   $7D, $7D, $7D, $7D, $EF, $EF, $7D, $7D, $7D, $ED, $7D, $7D, $EE, $ED, $7D, $7D
    db   $ED, $EF, $EF, $ED, $EF, $EF, $ED, $EF, $EF, $7D, $ED, $EF, $EF, $EF, $EF, $EF
    db   $7D, $7D, $ED, $EF, $EF, $EF, $EF, $EF, $7D, $EF, $ED, $EF, $ED, $EF, $EF, $EF
    db   $EF, $EF, $ED, $EF, $EF, $EF, $ED, $EF, $EF, $ED, $7D, $7D, $EF, $EF, $7D, $7D
    db   $ED, $7D, $ED, $ED, $7D, $7D, $7D, $7D, $7D, $EF, $EF, $EF, $EF, $7D, $7D, $7D
    db   $7D, $EF, $EF, $EF, $ED, $7D, $7D, $7D, $7D, $EF, $ED, $EF, $EF, $7D, $7D, $7D
    db   $7D, $ED, $EF, $EF, $ED, $7D, $EF, $ED, $7D, $EF, $EF, $EF, $EF, $EF, $EF, $EF
    db   $EF, $ED, $EF, $EF, $EF, $EF, $EF, $EE, $EF, $EF, $EF, $EF, $EF, $7D, $EF, $EF
    db   $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D
    db   $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $EE, $EF, $7D, $7D, $ED, $EF
    db   $7D, $7D, $EF, $EF, $ED, $EF, $EF, $EF, $7D, $7D, $7D, $EF, $EF, $EF, $EF, $7D
    db   $7D, $7D, $7D, $EF, $ED, $EF, $ED, $7D, $7D, $7D, $7D, $EF, $EF, $ED, $EF, $7D
    db   $7D, $00, $02, $03, $07, $05, $0A, $0B, $0F, $04, $08, $09, $0E, $06, $0C, $0D
    db   $01                                      

IsMapE8::
    ldh  a, [hMapIndex]                           ; $6709: $F0 $F6
    cp   $E8                                      ; $670B: $FE $E8
    ret  z                                        ; $670D: $C8

    ld   hl, $6479                                ; $670E: $21 $79 $64
    ldh  a, [hMapTileset]                         ; $6711: $F0 $F7
    cp   $FF                                      ; $6713: $FE $FF
    jr   nz, jr_002_671C                          ; $6715: $20 $05

    ld   hl, $66B9                                ; $6717: $21 $B9 $66
    jr   jr_002_672A                              ; $671A: $18 $0E

jr_002_671C:
    swap a                                        ; $671C: $CB $37
    ld   e, a                                     ; $671E: $5F
    ld   d, $00                                   ; $671F: $16 $00
    sla  e                                        ; $6721: $CB $23
    rl   d                                        ; $6723: $CB $12
    sla  e                                        ; $6725: $CB $23
    rl   d                                        ; $6727: $CB $12
    add  hl, de                                   ; $6729: $19

jr_002_672A:
    ldh  a, [hMapTileset]                         ; $672A: $F0 $F7
    cp   $06                                      ; $672C: $FE $06
    jr   nz, jr_002_673A                          ; $672E: $20 $0A

    ld   a, [wHasInstrument7]                     ; $6730: $FA $6B $DB
    and  $04                                      ; $6733: $E6 $04
    jr   z, jr_002_673A                           ; $6735: $28 $03

    ld   hl, $6679                                ; $6737: $21 $79 $66

jr_002_673A:
    ld   de, $D480                                ; $673A: $11 $80 $D4
    ld   bc, $0040                                ; $673D: $01 $40 $00
    call CopyData                                 ; $6740: $CD $14 $29
    ld   d, $00                                   ; $6743: $16 $00
    ld   e, $00                                   ; $6745: $1E $00

label_002_6747::
    ld   hl, $D480                                ; $6747: $21 $80 $D4
    add  hl, de                                   ; $674A: $19
    ld   a, [hl]                                  ; $674B: $7E
    cp   $7D                                      ; $674C: $FE $7D
    jr   z, label_002_67B5                        ; $674E: $28 $65

    cp   $ED                                      ; $6750: $FE $ED
    jr   z, jr_002_6758                           ; $6752: $28 $04

    cp   $EE                                      ; $6754: $FE $EE
    jr   nz, jr_002_6760                          ; $6756: $20 $08

jr_002_6758:
    ld   a, [wHasDungeonCompass]                  ; $6758: $FA $CD $DB
    and  a                                        ; $675B: $A7
    jr   nz, jr_002_676B                          ; $675C: $20 $0D

    ld   [hl], $EF                                ; $675E: $36 $EF

jr_002_6760:
    ld   a, [wHasDungeonMap]                      ; $6760: $FA $CC $DB
    and  a                                        ; $6763: $A7
    jr   nz, jr_002_676B                          ; $6764: $20 $05

    ld   [hl], $7D                                ; $6766: $36 $7D
    jp   label_002_67B5                           ; $6768: $C3 $B5 $67

jr_002_676B:
    push de                                       ; $676B: $D5
    call label_2BC1                               ; $676C: $CD $C1 $2B
    ld   c, e                                     ; $676F: $4B
    ld   b, d                                     ; $6770: $42
    pop  de                                       ; $6771: $D1
    ld   a, [hl]                                  ; $6772: $7E
    bit  7, a                                     ; $6773: $CB $7F
    jr   z, label_002_67B5                        ; $6775: $28 $3E

    ld   a, [hl]                                  ; $6777: $7E
    and  $0F                                      ; $6778: $E6 $0F
    ld   c, a                                     ; $677A: $4F
    ld   b, $00                                   ; $677B: $06 $00
    ld   hl, $66F9                                ; $677D: $21 $F9 $66
    add  hl, bc                                   ; $6780: $09
    ld   a, [hl]                                  ; $6781: $7E
    inc  a                                        ; $6782: $3C
    add  $CF                                      ; $6783: $C6 $CF
    ld   c, a                                     ; $6785: $4F
    ld   hl, $D480                                ; $6786: $21 $80 $D4
    add  hl, de                                   ; $6789: $19
    ld   a, [hl]                                  ; $678A: $7E
    cp   $EE                                      ; $678B: $FE $EE
    jr   z, jr_002_6793                           ; $678D: $28 $04

    cp   $ED                                      ; $678F: $FE $ED
    jr   nz, jr_002_67A8                          ; $6791: $20 $15

jr_002_6793:
    push de                                       ; $6793: $D5
    push af                                       ; $6794: $F5
    call label_2BC1                               ; $6795: $CD $C1 $2B
    pop  af                                       ; $6798: $F1
    ld   e, $20                                   ; $6799: $1E $20
    cp   $ED                                      ; $679B: $FE $ED
    jr   nz, jr_002_67A1                          ; $679D: $20 $02

    ld   e, $10                                   ; $679F: $1E $10

jr_002_67A1:
    ld   a, [hl]                                  ; $67A1: $7E
    and  e                                        ; $67A2: $A3
    pop  de                                       ; $67A3: $D1
    cp   $00                                      ; $67A4: $FE $00
    jr   z, label_002_67B5                        ; $67A6: $28 $0D

jr_002_67A8:
    ld   hl, $D480                                ; $67A8: $21 $80 $D4
    add  hl, de                                   ; $67AB: $19
    ld   [hl], c                                  ; $67AC: $71
    ld   a, [wHasDungeonMap]                      ; $67AD: $FA $CC $DB
    and  a                                        ; $67B0: $A7
    jr   nz, label_002_67B5                       ; $67B1: $20 $02

    ld   [hl], $7D                                ; $67B3: $36 $7D

label_002_67B5::
    inc  e                                        ; $67B5: $1C
    ld   a, e                                     ; $67B6: $7B
    cp   $40                                      ; $67B7: $FE $40
    jp   nz, label_002_6747                       ; $67B9: $C2 $47 $67

    ldh  a, [hIsGBC]                              ; $67BC: $F0 $FE
    and  a                                        ; $67BE: $A7
    jr   z, jr_002_67E4                           ; $67BF: $28 $23

    di                                            ; $67C1: $F3
    ld   e, $00                                   ; $67C2: $1E $00
    ld   hl, $D480                                ; $67C4: $21 $80 $D4

jr_002_67C7:
    ld   d, $01                                   ; $67C7: $16 $01
    xor  a                                        ; $67C9: $AF
    ld   [rSVBK], a                               ; $67CA: $E0 $70
    ld   a, [hl]                                  ; $67CC: $7E
    cp   $ED                                      ; $67CD: $FE $ED
    jr   nz, jr_002_67D3                          ; $67CF: $20 $02

    ld   d, $06                                   ; $67D1: $16 $06

jr_002_67D3:
    ld   a, $02                                   ; $67D3: $3E $02
    ld   [rSVBK], a                               ; $67D5: $E0 $70
    ld   a, d                                     ; $67D7: $7A
    ld   [hl], a                                  ; $67D8: $77
    inc  hl                                       ; $67D9: $23
    inc  e                                        ; $67DA: $1C
    ld   a, e                                     ; $67DB: $7B
    cp   $40                                      ; $67DC: $FE $40
    jr   nz, jr_002_67C7                          ; $67DE: $20 $E7

    xor  a                                        ; $67E0: $AF
    ld   [rSVBK], a                               ; $67E1: $E0 $70
    ei                                            ; $67E3: $FB

jr_002_67E4:
    ret                                           ; $67E4: $C9

label_002_67E5::
    ld   a, [$DBB0]                               ; $67E5: $FA $B0 $DB
    and  $30                                      ; $67E8: $E6 $30
    swap a                                        ; $67EA: $CB $37
    rst  $00                                      ; $67EC: $C7
    push af                                       ; $67ED: $F5
    ld   h, a                                     ; $67EE: $67
    ld_long a, $FF67                              ; $67EF: $FA $67 $FF
    ld   h, a                                     ; $67F2: $67
    inc  b                                        ; $67F3: $04
    ld   l, b                                     ; $67F4: $68
    ld   hl, $9D0F                                ; $67F5: $21 $0F $9D
    jr   jr_002_6807                              ; $67F8: $18 $0D

    ld   hl, $9D10                                ; $67FA: $21 $10 $9D
    jr   jr_002_6807                              ; $67FD: $18 $08

    ld   hl, $9CEF                                ; $67FF: $21 $EF $9C
    jr   jr_002_6807                              ; $6802: $18 $03

    ld   hl, $9CF0                                ; $6804: $21 $F0 $9C

jr_002_6807:
    ld   e, $04                                   ; $6807: $1E $04
    jr   jr_002_6848                              ; $6809: $18 $3D

label_002_680B::
    ld   a, [$DBB0]                               ; $680B: $FA $B0 $DB
    and  $30                                      ; $680E: $E6 $30
    swap a                                        ; $6810: $CB $37
    rst  $00                                      ; $6812: $C7
    dec  de                                       ; $6813: $1B
    ld   l, b                                     ; $6814: $68
    jr   nz, @+$6A                                ; $6815: $20 $68

    dec  de                                       ; $6817: $1B
    ld   l, b                                     ; $6818: $68
    jr   nz, jr_002_6883                          ; $6819: $20 $68

    ld   hl, $9D8F                                ; $681B: $21 $8F $9D
    jr   jr_002_6823                              ; $681E: $18 $03

    ld   hl, $9D90                                ; $6820: $21 $90 $9D

jr_002_6823:
    ld   e, $24                                   ; $6823: $1E $24
    jr   jr_002_6848                              ; $6825: $18 $21

label_002_6827::
    ld   a, [$DBB0]                               ; $6827: $FA $B0 $DB
    and  $30                                      ; $682A: $E6 $30
    swap a                                        ; $682C: $CB $37
    rst  $00                                      ; $682E: $C7
    scf                                           ; $682F: $37
    ld   l, b                                     ; $6830: $68
    scf                                           ; $6831: $37
    ld   l, b                                     ; $6832: $68
    inc  a                                        ; $6833: $3C
    ld   l, b                                     ; $6834: $68
    inc  a                                        ; $6835: $3C
    ld   l, b                                     ; $6836: $68
    ld   hl, $9D0B                                ; $6837: $21 $0B $9D
    jr   jr_002_683F                              ; $683A: $18 $03

    ld   hl, $9CEB                                ; $683C: $21 $EB $9C

jr_002_683F:
    ld   e, $00                                   ; $683F: $1E $00
    jr   jr_002_6848                              ; $6841: $18 $05

label_002_6843::
    ld   hl, $9D8B                                ; $6843: $21 $8B $9D
    ld   e, $20                                   ; $6846: $1E $20

jr_002_6848:
    ldh  a, [hIsGBC]                              ; $6848: $F0 $FE
    and  a                                        ; $684A: $A7
    jr   z, jr_002_6885                           ; $684B: $28 $38

    push de                                       ; $684D: $D5
    push hl                                       ; $684E: $E5
    di                                            ; $684F: $F3
    ld   a, $02                                   ; $6850: $3E $02
    ld   [rSVBK], a                               ; $6852: $E0 $70
    ld   a, $01                                   ; $6854: $3E $01
    ld   [rVBK], a                                ; $6856: $E0 $4F
    ld   c, $00                                   ; $6858: $0E $00
    ld   d, c                                     ; $685A: $51

jr_002_685B:
    push hl                                       ; $685B: $E5
    ld   hl, $D480                                ; $685C: $21 $80 $D4
    add  hl, de                                   ; $685F: $19
    ld   a, [hl]                                  ; $6860: $7E
    pop  hl                                       ; $6861: $E1
    ld   [hl], a                                  ; $6862: $77
    inc  e                                        ; $6863: $1C
    inc  c                                        ; $6864: $0C
    ld   a, c                                     ; $6865: $79
    cp   $10                                      ; $6866: $FE $10
    jr   z, jr_002_687D                           ; $6868: $28 $13

    inc  hl                                       ; $686A: $23
    and  $03                                      ; $686B: $E6 $03
    jr   nz, jr_002_685B                          ; $686D: $20 $EC

    ld   a, e                                     ; $686F: $7B
    add  $04                                      ; $6870: $C6 $04
    ld   e, a                                     ; $6872: $5F
    ld   a, l                                     ; $6873: $7D
    add  $1C                                      ; $6874: $C6 $1C
    ld   l, a                                     ; $6876: $6F
    ld   a, $00                                   ; $6877: $3E $00
    adc  h                                        ; $6879: $8C
    ld   h, a                                     ; $687A: $67
    jr   jr_002_685B                              ; $687B: $18 $DE

jr_002_687D:
    xor  a                                        ; $687D: $AF
    ld   [rSVBK], a                               ; $687E: $E0 $70
    ld   [rVBK], a                                ; $6880: $E0 $4F
    ei                                            ; $6882: $FB

jr_002_6883:
    pop  hl                                       ; $6883: $E1
    pop  de                                       ; $6884: $D1

jr_002_6885:
    ld   c, $00                                   ; $6885: $0E $00
    ld   d, c                                     ; $6887: $51

jr_002_6888:
    push hl                                       ; $6888: $E5
    ld   hl, $D480                                ; $6889: $21 $80 $D4
    add  hl, de                                   ; $688C: $19
    ld   a, [hl]                                  ; $688D: $7E
    pop  hl                                       ; $688E: $E1
    ld   [hl], a                                  ; $688F: $77
    inc  e                                        ; $6890: $1C
    inc  c                                        ; $6891: $0C
    ld   a, c                                     ; $6892: $79
    cp   $10                                      ; $6893: $FE $10
    jr   z, jr_002_68AA                           ; $6895: $28 $13

    inc  hl                                       ; $6897: $23
    and  $03                                      ; $6898: $E6 $03
    jr   nz, jr_002_6888                          ; $689A: $20 $EC

    ld   a, e                                     ; $689C: $7B
    add  $04                                      ; $689D: $C6 $04
    ld   e, a                                     ; $689F: $5F
    ld   a, l                                     ; $68A0: $7D
    add  $1C                                      ; $68A1: $C6 $1C
    ld   l, a                                     ; $68A3: $6F
    ld   a, $00                                   ; $68A4: $3E $00
    adc  h                                        ; $68A6: $8C
    ld   h, a                                     ; $68A7: $67
    jr   jr_002_6888                              ; $68A8: $18 $DE

jr_002_68AA:
    ret                                           ; $68AA: $C9

    nop                                           ; $68AB: $00
    ld   [$00F8], sp                              ; $68AC: $08 $F8 $00
    ld   a, [rNR10]                               ; $68AF: $F0 $10
    nop                                           ; $68B1: $00
    db   $10                                      ; $68B2: $10
    ld   a, [rIE]                                 ; $68B3: $F0 $FF
    nop                                           ; $68B5: $00
    ld   bc, $46FA                                ; $68B6: $01 $FA $46
    pop  bc                                       ; $68B9: $C1
    and  a                                        ; $68BA: $A7
    jr   nz, jr_002_68C7                          ; $68BB: $20 $0A

    ldh  a, [$FFA1]                               ; $68BD: $F0 $A1
    cp   $01                                      ; $68BF: $FE $01
    jr   z, jr_002_68E3                           ; $68C1: $28 $20

    cp   $02                                      ; $68C3: $FE $02
    jr   z, jr_002_68E3                           ; $68C5: $28 $1C

jr_002_68C7:
    ld   a, [$C13E]                               ; $68C7: $FA $3E $C1
    and  a                                        ; $68CA: $A7
    jr   z, jr_002_68E4                           ; $68CB: $28 $17

    dec  a                                        ; $68CD: $3D
    ld   [$C13E], a                               ; $68CE: $EA $3E $C1
    call label_21A8                               ; $68D1: $CD $A8 $21
    call func_002_6C75                            ; $68D4: $CD $75 $6C
    ldh  a, [$FF9C]                               ; $68D7: $F0 $9C
    cp   $02                                      ; $68D9: $FE $02
    jr   z, jr_002_68E3                           ; $68DB: $28 $06

    ldh  a, [$FF9B]                               ; $68DD: $F0 $9B
    add  $03                                      ; $68DF: $C6 $03
    ldh  [$FF9B], a                               ; $68E1: $E0 $9B

jr_002_68E3:
    ret                                           ; $68E3: $C9

jr_002_68E4:
    ldh  a, [$FF9C]                               ; $68E4: $F0 $9C
    rst  $00                                      ; $68E6: $C7
    ld   bc, $A16A                                ; $68E7: $01 $6A $A1
    ld   l, c                                     ; $68EA: $69
    db   $10                                      ; $68EB: $10
    ld   l, c                                     ; $68EC: $69
    nop                                           ; $68ED: $00
    ld   [$00F8], sp                              ; $68EE: $08 $F8 $00
    nop                                           ; $68F1: $00
    ld   b, $FA                                   ; $68F2: $06 $FA
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    ld   b, $FA                                   ; $68F6: $06 $FA
    nop                                           ; $68F8: $00
    nop                                           ; $68F9: $00
    nop                                           ; $68FA: $00
    nop                                           ; $68FB: $00
    nop                                           ; $68FC: $00
    nop                                           ; $68FD: $00
    nop                                           ; $68FE: $00
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
    ld   hl, sp-$06                               ; $6901: $F8 $FA
    ld   a, [label_800]                           ; $6903: $FA $00 $08
    ld   b, $06                                   ; $6906: $06 $06
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    nop                                           ; $690B: $00
    nop                                           ; $690C: $00
    nop                                           ; $690D: $00
    nop                                           ; $690E: $00
    ld   bc, $F7F0                                ; $690F: $01 $F0 $F7
    cp   $07                                      ; $6912: $FE $07
    jr   nz, jr_002_692B                          ; $6914: $20 $15

    call label_002_7719                           ; $6916: $CD $19 $77
    ld   a, [wDB94]                               ; $6919: $FA $94 $DB
    add  $04                                      ; $691C: $C6 $04
    ld   [wDB94], a                               ; $691E: $EA $94 $DB
    ld   a, $03                                   ; $6921: $3E $03
    ldh  [hSFX], a                                ; $6923: $E0 $F3
    ld   a, $80                                   ; $6925: $3E $80
    ld   [$DBC7], a                               ; $6927: $EA $C7 $DB
    ret                                           ; $692A: $C9

jr_002_692B:
    ld   a, [wHasFlippers]                        ; $692B: $FA $0C $DB
    and  a                                        ; $692E: $A7
    jp   z, label_002_7719                        ; $692F: $CA $19 $77

    ld   hl, hFF9E                                ; $6932: $21 $9E $FF
    res  1, [hl]                                  ; $6935: $CB $8E
    call label_CB6                                ; $6937: $CD $B6 $0C
    ld   [$C146], a                               ; $693A: $EA $46 $C1
    ldh  a, [hFrameCounter]                       ; $693D: $F0 $E7
    and  $01                                      ; $693F: $E6 $01
    jr   nz, jr_002_696E                          ; $6941: $20 $2B

    ldh  a, [hPressedButtonsMask]                 ; $6943: $F0 $CB
    and  $0F                                      ; $6945: $E6 $0F
    ld   e, a                                     ; $6947: $5F
    ld   d, $00                                   ; $6948: $16 $00
    ld   hl, $68ED                                ; $694A: $21 $ED $68
    add  hl, de                                   ; $694D: $19
    ld   a, [hl]                                  ; $694E: $7E
    ld   hl, hFF9A                                ; $694F: $21 $9A $FF
    sub  [hl]                                     ; $6952: $96
    jr   z, jr_002_695C                           ; $6953: $28 $07

    inc  [hl]                                     ; $6955: $34
    bit  7, a                                     ; $6956: $CB $7F
    jr   z, jr_002_695C                           ; $6958: $28 $02

    dec  [hl]                                     ; $695A: $35
    dec  [hl]                                     ; $695B: $35

jr_002_695C:
    ld   hl, $68FD                                ; $695C: $21 $FD $68
    add  hl, de                                   ; $695F: $19
    ld   a, [hl]                                  ; $6960: $7E
    ld   hl, $FF9B                                ; $6961: $21 $9B $FF
    sub  [hl]                                     ; $6964: $96
    jr   z, jr_002_696E                           ; $6965: $28 $07

    inc  [hl]                                     ; $6967: $34
    bit  7, a                                     ; $6968: $CB $7F
    jr   z, jr_002_696E                           ; $696A: $28 $02

    dec  [hl]                                     ; $696C: $35
    dec  [hl]                                     ; $696D: $35

jr_002_696E:
    ld   hl, wC120                                ; $696E: $21 $20 $C1
    inc  [hl]                                     ; $6971: $34
    ldh  a, [hPressedButtonsMask]                 ; $6972: $F0 $CB
    and  $03                                      ; $6974: $E6 $03
    jr   z, jr_002_6982                           ; $6976: $28 $0A

    ld   e, a                                     ; $6978: $5F
    ld   d, $00                                   ; $6979: $16 $00
    ld   hl, $690D                                ; $697B: $21 $0D $69
    add  hl, de                                   ; $697E: $19
    ld   a, [hl]                                  ; $697F: $7E
    ldh  [hFF9E], a                               ; $6980: $E0 $9E

jr_002_6982:
    call label_21A8                               ; $6982: $CD $A8 $21
    call func_002_6C75                            ; $6985: $CD $75 $6C
    ld   a, [wInventoryAppearing]                 ; $6988: $FA $4F $C1
    and  a                                        ; $698B: $A7
    ret  nz                                       ; $698C: $C0

    ldh  a, [$FFD7]                               ; $698D: $F0 $D7
    cp   $B0                                      ; $698F: $FE $B0
    jr   z, jr_002_699E                           ; $6991: $28 $0B

    cp   $B1                                      ; $6993: $FE $B1
    jr   nz, jr_002_699B                          ; $6995: $20 $04

    ld   a, $01                                   ; $6997: $3E $01
    jr   jr_002_699C                              ; $6999: $18 $01

jr_002_699B:
    xor  a                                        ; $699B: $AF

jr_002_699C:
    ldh  [$FF9C], a                               ; $699C: $E0 $9C

jr_002_699E:
    jp   func_002_6B56                            ; $699E: $C3 $56 $6B

    call label_CB6                                ; $69A1: $CD $B6 $0C
    ld   [$C146], a                               ; $69A4: $EA $46 $C1
    ld   [$C153], a                               ; $69A7: $EA $53 $C1
    ld   [$C152], a                               ; $69AA: $EA $52 $C1
    ldh  a, [hPressedButtonsMask]                 ; $69AD: $F0 $CB
    and  $03                                      ; $69AF: $E6 $03
    ld   e, a                                     ; $69B1: $5F
    ld   d, $00                                   ; $69B2: $16 $00
    ld   hl, $68AB                                ; $69B4: $21 $AB $68
    add  hl, de                                   ; $69B7: $19
    ld   a, [hl]                                  ; $69B8: $7E
    ldh  [hFF9A], a                               ; $69B9: $E0 $9A
    ldh  a, [hPressedButtonsMask]                 ; $69BB: $F0 $CB
    rra                                           ; $69BD: $1F
    rra                                           ; $69BE: $1F
    and  $03                                      ; $69BF: $E6 $03
    ld   e, a                                     ; $69C1: $5F
    ld   hl, $68AE                                ; $69C2: $21 $AE $68
    add  hl, de                                   ; $69C5: $19
    ld   a, [hl]                                  ; $69C6: $7E
    ldh  [$FF9B], a                               ; $69C7: $E0 $9B
    ld   a, $02                                   ; $69C9: $3E $02
    ldh  [hFF9E], a                               ; $69CB: $E0 $9E
    ldh  a, [hPressedButtonsMask]                 ; $69CD: $F0 $CB
    and  $0F                                      ; $69CF: $E6 $0F
    jr   z, jr_002_69D7                           ; $69D1: $28 $04

    ld   hl, wC120                                ; $69D3: $21 $20 $C1
    inc  [hl]                                     ; $69D6: $34

jr_002_69D7:
    call label_21A8                               ; $69D7: $CD $A8 $21
    call func_002_6C75                            ; $69DA: $CD $75 $6C
    ld   a, [wInventoryAppearing]                 ; $69DD: $FA $4F $C1
    and  a                                        ; $69E0: $A7
    ret  nz                                       ; $69E1: $C0

    ldh  a, [$FFD7]                               ; $69E2: $F0 $D7
    cp   $B1                                      ; $69E4: $FE $B1
    jr   z, jr_002_69F3                           ; $69E6: $28 $0B

    cp   $B0                                      ; $69E8: $FE $B0
    jr   nz, jr_002_69F0                          ; $69EA: $20 $04

    ld   a, $02                                   ; $69EC: $3E $02
    jr   jr_002_69F1                              ; $69EE: $18 $01

jr_002_69F0:
    xor  a                                        ; $69F0: $AF

jr_002_69F1:
    ldh  [$FF9C], a                               ; $69F1: $E0 $9C

jr_002_69F3:
    call func_002_6B56                            ; $69F3: $CD $56 $6B
    ld   a, [$C133]                               ; $69F6: $FA $33 $C1
    and  $08                                      ; $69F9: $E6 $08
    jr   z, jr_002_6A00                           ; $69FB: $28 $03

    xor  a                                        ; $69FD: $AF
    ldh  [$FF9C], a                               ; $69FE: $E0 $9C

jr_002_6A00:
    ret                                           ; $6A00: $C9

    ldh  a, [hMapTileset]                         ; $6A01: $F0 $F7
    cp   $06                                      ; $6A03: $FE $06
    jr   nz, jr_002_6A24                          ; $6A05: $20 $1D

    ldh  a, [hMapIndex]                           ; $6A07: $F0 $F6
    cp   $F8                                      ; $6A09: $FE $F8
    jr   nz, jr_002_6A24                          ; $6A0B: $20 $17

    ld   a, [$C146]                               ; $6A0D: $FA $46 $C1
    and  a                                        ; $6A10: $A7
    jr   nz, jr_002_6A24                          ; $6A11: $20 $11

    ldh  a, [hLinkPositionX]                      ; $6A13: $F0 $98
    sub  $46                                      ; $6A15: $D6 $46
    add  $04                                      ; $6A17: $C6 $04
    cp   $08                                      ; $6A19: $FE $08
    jr   nc, jr_002_6A24                          ; $6A1B: $30 $07

    ldh  a, [hFFCC]                               ; $6A1D: $F0 $CC
    and  $04                                      ; $6A1F: $E6 $04
    jp   nz, label_C7D                            ; $6A21: $C2 $7D $0C

jr_002_6A24:
    ld   a, [$C14A]                               ; $6A24: $FA $4A $C1
    and  a                                        ; $6A27: $A7
    jr   z, jr_002_6A4C                           ; $6A28: $28 $22

    ldh  a, [hFFCC]                               ; $6A2A: $F0 $CC
    and  $0F                                      ; $6A2C: $E6 $0F
    jr   nz, jr_002_6A3E                          ; $6A2E: $20 $0E

    ld   a, [wC120]                               ; $6A30: $FA $20 $C1
    add  $02                                      ; $6A33: $C6 $02
    ld   [wC120], a                               ; $6A35: $EA $20 $C1
    call label_1756                               ; $6A38: $CD $56 $17
    jp   label_002_6ADB                           ; $6A3B: $C3 $DB $6A

jr_002_6A3E:
    ld   [$C19A], a                               ; $6A3E: $EA $9A $C1
    ld   a, [$C199]                               ; $6A41: $FA $99 $C1
    add  $0C                                      ; $6A44: $C6 $0C
    ld   [$C199], a                               ; $6A46: $EA $99 $C1
    call label_CAF                                ; $6A49: $CD $AF $0C

jr_002_6A4C:
    ld   a, [$C147]                               ; $6A4C: $FA $47 $C1
    and  a                                        ; $6A4F: $A7
    jr   nz, jr_002_6A94                          ; $6A50: $20 $42

    ld   a, [$C133]                               ; $6A52: $FA $33 $C1
    and  $08                                      ; $6A55: $E6 $08
    jr   nz, jr_002_6A94                          ; $6A57: $20 $3B

    ld   a, [$C146]                               ; $6A59: $FA $46 $C1
    and  a                                        ; $6A5C: $A7
    jr   nz, jr_002_6A64                          ; $6A5D: $20 $05

    ld   a, $01                                   ; $6A5F: $3E $01
    ld   [$C146], a                               ; $6A61: $EA $46 $C1

jr_002_6A64:
    ld   a, $0A                                   ; $6A64: $3E $0A
    ld   [wC120], a                               ; $6A66: $EA $20 $C1
    ldh  a, [hFF9A]                               ; $6A69: $F0 $9A
    and  a                                        ; $6A6B: $A7
    jr   z, jr_002_6A73                           ; $6A6C: $28 $05

    rlca                                          ; $6A6E: $07
    and  $01                                      ; $6A6F: $E6 $01
    ldh  [hFF9E], a                               ; $6A71: $E0 $9E

jr_002_6A73:
    ldh  a, [hPressedButtonsMask]                 ; $6A73: $F0 $CB
    and  $03                                      ; $6A75: $E6 $03
    jr   z, jr_002_6A92                           ; $6A77: $28 $19

    ld   e, a                                     ; $6A79: $5F
    ld   d, $00                                   ; $6A7A: $16 $00
    ld   hl, $68B1                                ; $6A7C: $21 $B1 $68
    add  hl, de                                   ; $6A7F: $19
    ldh  a, [hFF9A]                               ; $6A80: $F0 $9A
    sub  [hl]                                     ; $6A82: $96
    jr   z, jr_002_6A92                           ; $6A83: $28 $0D

    ld   e, $01                                   ; $6A85: $1E $01
    bit  7, a                                     ; $6A87: $CB $7F
    jr   nz, jr_002_6A8D                          ; $6A89: $20 $02

    ld   e, $FF                                   ; $6A8B: $1E $FF

jr_002_6A8D:
    ldh  a, [hFF9A]                               ; $6A8D: $F0 $9A
    add  e                                        ; $6A8F: $83
    ldh  [hFF9A], a                               ; $6A90: $E0 $9A

jr_002_6A92:
    jr   label_002_6ADB                           ; $6A92: $18 $47

jr_002_6A94:
    ld   a, [$C146]                               ; $6A94: $FA $46 $C1
    and  a                                        ; $6A97: $A7
    jr   z, jr_002_6AAA                           ; $6A98: $28 $10

    ld   a, $07                                   ; $6A9A: $3E $07
    ldh  [hFFF4], a                               ; $6A9C: $E0 $F4
    call label_CB6                                ; $6A9E: $CD $B6 $0C
    ld   [$C146], a                               ; $6AA1: $EA $46 $C1
    ld   [$C152], a                               ; $6AA4: $EA $52 $C1
    ld   [$C153], a                               ; $6AA7: $EA $53 $C1

jr_002_6AAA:
    ldh  a, [hPressedButtonsMask]                 ; $6AAA: $F0 $CB
    and  $03                                      ; $6AAC: $E6 $03
    ld   e, a                                     ; $6AAE: $5F
    ld   d, $00                                   ; $6AAF: $16 $00
    ld   hl, $68B1                                ; $6AB1: $21 $B1 $68
    add  hl, de                                   ; $6AB4: $19
    ld   a, [hl]                                  ; $6AB5: $7E
    ldh  [hFF9A], a                               ; $6AB6: $E0 $9A
    ld   hl, $68B4                                ; $6AB8: $21 $B4 $68
    add  hl, de                                   ; $6ABB: $19
    ld   a, [hl]                                  ; $6ABC: $7E
    cp   $FF                                      ; $6ABD: $FE $FF
    jr   z, jr_002_6AD1                           ; $6ABF: $28 $10

    ld   e, a                                     ; $6AC1: $5F
    ld   a, [wC16E]                               ; $6AC2: $FA $6E $C1
    and  a                                        ; $6AC5: $A7
    jr   nz, jr_002_6ACB                          ; $6AC6: $20 $03

    ld   a, e                                     ; $6AC8: $7B
    ldh  [hFF9E], a                               ; $6AC9: $E0 $9E

jr_002_6ACB:
    ld   hl, wC120                                ; $6ACB: $21 $20 $C1
    inc  [hl]                                     ; $6ACE: $34
    jr   label_002_6ADB                           ; $6ACF: $18 $0A

jr_002_6AD1:
    ld   a, [$C14B]                               ; $6AD1: $FA $4B $C1
    and  a                                        ; $6AD4: $A7
    jr   nz, label_002_6ADB                       ; $6AD5: $20 $04

    xor  a                                        ; $6AD7: $AF
    ld   [wC120], a                               ; $6AD8: $EA $20 $C1

label_002_6ADB::
    ld   a, [$C137]                               ; $6ADB: $FA $37 $C1
    and  a                                        ; $6ADE: $A7
    jr   nz, jr_002_6AE6                          ; $6ADF: $20 $05

    ldh  a, [$FFA1]                               ; $6AE1: $F0 $A1
    and  a                                        ; $6AE3: $A7
    jr   nz, jr_002_6AFC                          ; $6AE4: $20 $16

jr_002_6AE6:
    call label_21A8                               ; $6AE6: $CD $A8 $21
    ld   hl, hFF9E                                ; $6AE9: $21 $9E $FF
    ldh  a, [hPressedButtonsMask]                 ; $6AEC: $F0 $CB
    and  $0F                                      ; $6AEE: $E6 $0F
    cp   $04                                      ; $6AF0: $FE $04
    jr   nz, jr_002_6AF6                          ; $6AF2: $20 $02

    ld   [hl], $02                                ; $6AF4: $36 $02

jr_002_6AF6:
    cp   $08                                      ; $6AF6: $FE $08
    jr   nz, jr_002_6AFC                          ; $6AF8: $20 $02

    ld   [hl], $03                                ; $6AFA: $36 $03

jr_002_6AFC:
    call func_002_6C75                            ; $6AFC: $CD $75 $6C
    ld   a, [wInventoryAppearing]                 ; $6AFF: $FA $4F $C1
    and  a                                        ; $6B02: $A7
    ret  nz                                       ; $6B03: $C0

    ldh  a, [$FFD7]                               ; $6B04: $F0 $D7
    cp   $B1                                      ; $6B06: $FE $B1
    jr   z, jr_002_6B2A                           ; $6B08: $28 $20

    cp   $B0                                      ; $6B0A: $FE $B0
    jr   nz, jr_002_6B34                          ; $6B0C: $20 $26

    ld   a, [$C133]                               ; $6B0E: $FA $33 $C1
    and  a                                        ; $6B11: $A7
    jr   nz, jr_002_6B26                          ; $6B12: $20 $12

    ld   a, [$DBC7]                               ; $6B14: $FA $C7 $DB
    and  a                                        ; $6B17: $A7
    jr   nz, jr_002_6B1F                          ; $6B18: $20 $05

    ld   a, $02                                   ; $6B1A: $3E $02
    call func_002_5926                            ; $6B1C: $CD $26 $59

jr_002_6B1F:
    ld   a, $04                                   ; $6B1F: $3E $04
    ldh  [$FF9B], a                               ; $6B21: $E0 $9B
    xor  a                                        ; $6B23: $AF
    ldh  [hFF9A], a                               ; $6B24: $E0 $9A

jr_002_6B26:
    ld   a, $02                                   ; $6B26: $3E $02
    jr   jr_002_6B32                              ; $6B28: $18 $08

jr_002_6B2A:
    ldh  a, [hPressedButtonsMask]                 ; $6B2A: $F0 $CB
    and  $0C                                      ; $6B2C: $E6 $0C
    jr   z, jr_002_6B34                           ; $6B2E: $28 $04

    ld   a, $01                                   ; $6B30: $3E $01

jr_002_6B32:
    ldh  [$FF9C], a                               ; $6B32: $E0 $9C

jr_002_6B34:
    ld   hl, $FF9B                                ; $6B34: $21 $9B $FF
    ld   a, [hl]                                  ; $6B37: $7E
    sub  $40                                      ; $6B38: $D6 $40
    and  $80                                      ; $6B3A: $E6 $80
    jr   z, func_002_6B56                         ; $6B3C: $28 $18

    inc  [hl]                                     ; $6B3E: $34
    ldh  a, [$FF9B]                               ; $6B3F: $F0 $9B
    and  $80                                      ; $6B41: $E6 $80
    jr   z, jr_002_6B55                           ; $6B43: $28 $10

    ld   e, $20                                   ; $6B45: $1E $20
    ld   a, [wAButtonSlot]                        ; $6B47: $FA $00 $DB
    cp   $0A                                      ; $6B4A: $FE $0A
    jr   z, jr_002_6B50                           ; $6B4C: $28 $02

    ld   e, $10                                   ; $6B4E: $1E $10

jr_002_6B50:
    ldh  a, [hPressedButtonsMask]                 ; $6B50: $F0 $CB
    and  e                                        ; $6B52: $A3
    jr   nz, func_002_6B56                        ; $6B53: $20 $01

jr_002_6B55:
    inc  [hl]                                     ; $6B55: $34

func_002_6B56::
    ret                                           ; $6B56: $C9

    ld   bc, $0402                                ; $6B57: $01 $02 $04
    ld   [$0B10], sp                              ; $6B5A: $08 $10 $0B
    dec  b                                        ; $6B5D: $05
    ld   [label_808], sp                          ; $6B5E: $08 $08 $08
    ld   [InterruptSerial], sp                    ; $6B61: $08 $08 $04
    db   $10                                      ; $6B64: $10
    dec  bc                                       ; $6B65: $0B

label_002_6B66::
    ld   c, $04                                   ; $6B66: $0E $04
    ld   b, $00                                   ; $6B68: $06 $00
    call func_002_6C2F                            ; $6B6A: $CD $2F $6C
    ldh  a, [$FFD8]                               ; $6B6D: $F0 $D8
    ldh  [$FFD7], a                               ; $6B6F: $E0 $D7
    xor  a                                        ; $6B71: $AF
    ld   [$C133], a                               ; $6B72: $EA $33 $C1
    ld   c, $00                                   ; $6B75: $0E $00
    ldh  a, [hFF9A]                               ; $6B77: $F0 $9A
    and  a                                        ; $6B79: $A7
    jr   z, jr_002_6BA2                           ; $6B7A: $28 $26

    and  $80                                      ; $6B7C: $E6 $80
    jr   z, jr_002_6B81                           ; $6B7E: $28 $01

    inc  c                                        ; $6B80: $0C

jr_002_6B81:
    call func_002_6C2F                            ; $6B81: $CD $2F $6C
    ldh  a, [$FFAF]                               ; $6B84: $F0 $AF
    cp   $8A                                      ; $6B86: $FE $8A
    jr   nz, jr_002_6B99                          ; $6B88: $20 $0F

    ld   a, [$C5A6]                               ; $6B8A: $FA $A6 $C5
    and  a                                        ; $6B8D: $A7
    jr   nz, jr_002_6B99                          ; $6B8E: $20 $09

    inc  a                                        ; $6B90: $3C
    ld   [$C5A6], a                               ; $6B91: $EA $A6 $C5
    ld   a, $51                                   ; $6B94: $3E $51
    call label_2385                               ; $6B96: $CD $85 $23

jr_002_6B99:
    ldh  a, [$FFAF]                               ; $6B99: $F0 $AF
    cp   $FF                                      ; $6B9B: $FE $FF
    jr   nz, jr_002_6BA2                          ; $6B9D: $20 $03

    call func_002_6C69                            ; $6B9F: $CD $69 $6C

jr_002_6BA2:
    ld   c, $02                                   ; $6BA2: $0E $02
    ldh  a, [$FF9B]                               ; $6BA4: $F0 $9B
    and  a                                        ; $6BA6: $A7
    and  $80                                      ; $6BA7: $E6 $80
    jr   nz, jr_002_6BAC                          ; $6BA9: $20 $01

    inc  c                                        ; $6BAB: $0C

jr_002_6BAC:
    call func_002_6C2F                            ; $6BAC: $CD $2F $6C
    ldh  a, [$FF9B]                               ; $6BAF: $F0 $9B
    and  $80                                      ; $6BB1: $E6 $80
    jr   nz, jr_002_6BD1                          ; $6BB3: $20 $1C

    ldh  a, [hPressedButtonsMask]                 ; $6BB5: $F0 $CB
    and  $08                                      ; $6BB7: $E6 $08
    jr   nz, jr_002_6BD1                          ; $6BB9: $20 $16

    ldh  a, [hFFE9]                               ; $6BBB: $F0 $E9
    and  $0F                                      ; $6BBD: $E6 $0F
    cp   $03                                      ; $6BBF: $FE $03
    jr   nc, jr_002_6BD1                          ; $6BC1: $30 $0E

    ldh  a, [$FFAF]                               ; $6BC3: $F0 $AF
    cp   $62                                      ; $6BC5: $FE $62
    jr   z, jr_002_6BD8                           ; $6BC7: $28 $0F

    cp   $64                                      ; $6BC9: $FE $64
    jr   z, jr_002_6BD8                           ; $6BCB: $28 $0B

    cp   $66                                      ; $6BCD: $FE $66
    jr   z, jr_002_6BD8                           ; $6BCF: $28 $07

jr_002_6BD1:
    ld   a, [$C133]                               ; $6BD1: $FA $33 $C1
    and  $08                                      ; $6BD4: $E6 $08
    jr   z, jr_002_6BEB                           ; $6BD6: $28 $13

jr_002_6BD8:
    ld   a, [$C133]                               ; $6BD8: $FA $33 $C1
    or   $08                                      ; $6BDB: $F6 $08
    ld   [$C133], a                               ; $6BDD: $EA $33 $C1
    xor  a                                        ; $6BE0: $AF
    ldh  [$FF9B], a                               ; $6BE1: $E0 $9B
    ldh  a, [hLinkPositionY]                      ; $6BE3: $F0 $99
    and  $F0                                      ; $6BE5: $E6 $F0
    add  $00                                      ; $6BE7: $C6 $00
    ldh  [hLinkPositionY], a                      ; $6BE9: $E0 $99

jr_002_6BEB:
    ld   a, [$C133]                               ; $6BEB: $FA $33 $C1
    and  $04                                      ; $6BEE: $E6 $04
    jr   z, jr_002_6BF6                           ; $6BF0: $28 $04

    ldh  a, [$FFA0]                               ; $6BF2: $F0 $A0
    ldh  [hLinkPositionY], a                      ; $6BF4: $E0 $99

jr_002_6BF6:
    ld   a, [$C133]                               ; $6BF6: $FA $33 $C1
    and  $03                                      ; $6BF9: $E6 $03
    ret  z                                        ; $6BFB: $C8

    ldh  a, [$FF9F]                               ; $6BFC: $F0 $9F
    ldh  [hLinkPositionX], a                      ; $6BFE: $E0 $98
    ld   a, [$C14A]                               ; $6C00: $FA $4A $C1
    and  a                                        ; $6C03: $A7
    ret  z                                        ; $6C04: $C8

    call label_CAF                                ; $6C05: $CD $AF $0C
    ldh  a, [hFF9A]                               ; $6C08: $F0 $9A
    cpl                                           ; $6C0A: $2F
    inc  a                                        ; $6C0B: $3C
    sra  a                                        ; $6C0C: $CB $2F
    sra  a                                        ; $6C0E: $CB $2F
    ldh  [hFF9A], a                               ; $6C10: $E0 $9A
    ld   a, $E8                                   ; $6C12: $3E $E8
    ldh  [$FF9B], a                               ; $6C14: $E0 $9B
    call label_21A8                               ; $6C16: $CD $A8 $21
    call func_002_6C75                            ; $6C19: $CD $75 $6C
    ld   a, $20                                   ; $6C1C: $3E $20
    ld   [$C157], a                               ; $6C1E: $EA $57 $C1
    ldh  a, [hFF9E]                               ; $6C21: $F0 $9E
    and  $02                                      ; $6C23: $E6 $02
    sla  a                                        ; $6C25: $CB $27
    ld   [$C158], a                               ; $6C27: $EA $58 $C1
    ld   a, $0B                                   ; $6C2A: $3E $0B
    ldh  [$FFF2], a                               ; $6C2C: $E0 $F2
    ret                                           ; $6C2E: $C9

func_002_6C2F::
    ld   hl, $6B5C                                ; $6C2F: $21 $5C $6B
    add  hl, bc                                   ; $6C32: $09
    ldh  a, [hLinkPositionX]                      ; $6C33: $F0 $98
    sub  $08                                      ; $6C35: $D6 $08
    add  [hl]                                     ; $6C37: $86
    swap a                                        ; $6C38: $CB $37
    and  $0F                                      ; $6C3A: $E6 $0F
    ld   e, a                                     ; $6C3C: $5F
    ld   hl, $6B61                                ; $6C3D: $21 $61 $6B
    add  hl, bc                                   ; $6C40: $09
    ldh  a, [hLinkPositionY]                      ; $6C41: $F0 $99
    add  [hl]                                     ; $6C43: $86
    sub  $10                                      ; $6C44: $D6 $10
    ldh  [hFFE9], a                               ; $6C46: $E0 $E9
    and  $F0                                      ; $6C48: $E6 $F0
    or   e                                        ; $6C4A: $B3
    ld   e, a                                     ; $6C4B: $5F
    ld   d, $00                                   ; $6C4C: $16 $00
    ld   hl, wTileMap                             ; $6C4E: $21 $11 $D7
    ld   a, h                                     ; $6C51: $7C
    add  hl, de                                   ; $6C52: $19
    ld   h, a                                     ; $6C53: $67
    ld   a, [hl]                                  ; $6C54: $7E
    ldh  [$FFAF], a                               ; $6C55: $E0 $AF
    ld   e, a                                     ; $6C57: $5F
    ld   a, [wActiveRoom]                         ; $6C58: $FA $A5 $DB
    ld   d, a                                     ; $6C5B: $57
    call label_2A26                               ; $6C5C: $CD $26 $2A
    ldh  [$FFD8], a                               ; $6C5F: $E0 $D8
    cp   $60                                      ; $6C61: $FE $60
    jr   z, func_002_6C69                         ; $6C63: $28 $04

    cp   $01                                      ; $6C65: $FE $01
    jr   nz, jr_002_6C74                          ; $6C67: $20 $0B

func_002_6C69::
    ld   hl, $6B57                                ; $6C69: $21 $57 $6B
    add  hl, bc                                   ; $6C6C: $09
    ld   a, [$C133]                               ; $6C6D: $FA $33 $C1
    or   [hl]                                     ; $6C70: $B6
    ld   [$C133], a                               ; $6C71: $EA $33 $C1

jr_002_6C74:
    ret                                           ; $6C74: $C9

func_002_6C75::
    ld   a, [wDialogState]                        ; $6C75: $FA $9F $C1
    ld   hl, wInventoryAppearing                  ; $6C78: $21 $4F $C1
    or   [hl]                                     ; $6C7B: $B6
    ret  nz                                       ; $6C7C: $C0

    ldh  a, [hMapTileset]                         ; $6C7D: $F0 $F7
    cp   $1F                                      ; $6C7F: $FE $1F
    jr   nz, jr_002_6C99                          ; $6C81: $20 $16

    ldh  a, [$FFF9]                               ; $6C83: $F0 $F9
    and  a                                        ; $6C85: $A7
    jr   z, jr_002_6C99                           ; $6C86: $28 $11

    ldh  a, [hMapIndex]                           ; $6C88: $F0 $F6
    cp   $EB                                      ; $6C8A: $FE $EB
    jr   z, jr_002_6C92                           ; $6C8C: $28 $04

    cp   $EC                                      ; $6C8E: $FE $EC
    jr   nz, jr_002_6C99                          ; $6C90: $20 $07

jr_002_6C92:
    ldh  a, [hLinkPositionY]                      ; $6C92: $F0 $99
    cp   $2C                                      ; $6C94: $FE $2C
    jp   c, label_C7D                             ; $6C96: $DA $7D $0C

jr_002_6C99:
    ld   e, $02                                   ; $6C99: $1E $02
    ldh  a, [hLinkPositionY]                      ; $6C9B: $F0 $99
    cp   $0C                                      ; $6C9D: $FE $0C
    jr   c, jr_002_6CB6                           ; $6C9F: $38 $15

    inc  e                                        ; $6CA1: $1C
    cp   $84                                      ; $6CA2: $FE $84
    jr   nc, jr_002_6CB6                          ; $6CA4: $30 $10

    ld   e, $01                                   ; $6CA6: $1E $01
    ldh  a, [hLinkPositionX]                      ; $6CA8: $F0 $98
    cp   $04                                      ; $6CAA: $FE $04
    jr   c, jr_002_6D13                           ; $6CAC: $38 $65

    dec  e                                        ; $6CAE: $1D
    cp   $9C                                      ; $6CAF: $FE $9C
    jr   nc, jr_002_6D13                          ; $6CB1: $30 $60

    jp   label_002_6E09                           ; $6CB3: $C3 $09 $6E

jr_002_6CB6:
    ldh  a, [$FFF9]                               ; $6CB6: $F0 $F9
    and  a                                        ; $6CB8: $A7
    jr   nz, jr_002_6CD1                          ; $6CB9: $20 $16

    ldh  a, [hMapTileset]                         ; $6CBB: $F0 $F7
    cp   $1F                                      ; $6CBD: $FE $1F
    jp   nz, label_002_6D5C                       ; $6CBF: $C2 $5C $6D

    ldh  a, [hMapIndex]                           ; $6CC2: $F0 $F6
    cp   $F5                                      ; $6CC4: $FE $F5
    jp   z, label_C7D                             ; $6CC6: $CA $7D $0C

    cp   $F2                                      ; $6CC9: $FE $F2
    jp   nz, label_002_6D5C                       ; $6CCB: $C2 $5C $6D

    jp   label_C7D                                ; $6CCE: $C3 $7D $0C

jr_002_6CD1:
    ldh  a, [hMapIndex]                           ; $6CD1: $F0 $F6
    cp   $E8                                      ; $6CD3: $FE $E8
    jp   z, label_002_6D5C                        ; $6CD5: $CA $5C $6D

    cp   $F8                                      ; $6CD8: $FE $F8
    jp   z, label_002_6D5C                        ; $6CDA: $CA $5C $6D

    cp   $FD                                      ; $6CDD: $FE $FD
    jr   z, jr_002_6D00                           ; $6CDF: $28 $1F

    cp   $A3                                      ; $6CE1: $FE $A3
    jp   z, label_C7D                             ; $6CE3: $CA $7D $0C

    cp   $C0                                      ; $6CE6: $FE $C0
    jp   z, label_C7D                             ; $6CE8: $CA $7D $0C

    cp   $C1                                      ; $6CEB: $FE $C1
    jp   z, label_C7D                             ; $6CED: $CA $7D $0C

    cp   $FF                                      ; $6CF0: $FE $FF
    jr   nz, jr_002_6D0A                          ; $6CF2: $20 $16

    ldh  a, [hLinkPositionY]                      ; $6CF4: $F0 $99
    cp   $50                                      ; $6CF6: $FE $50
    jr   nc, jr_002_6D00                          ; $6CF8: $30 $06

    ld   a, [wEntitiesTypeTable]                  ; $6CFA: $FA $80 $C2
    and  a                                        ; $6CFD: $A7
    jr   z, label_002_6D5C                        ; $6CFE: $28 $5C

jr_002_6D00:
    ldh  a, [$FFA0]                               ; $6D00: $F0 $A0
    ldh  [hLinkPositionY], a                      ; $6D02: $E0 $99
    xor  a                                        ; $6D04: $AF
    ldh  [$FF9B], a                               ; $6D05: $E0 $9B
    jp   label_002_6E09                           ; $6D07: $C3 $09 $6E

jr_002_6D0A:
    ldh  a, [$FF9C]                               ; $6D0A: $F0 $9C
    cp   $02                                      ; $6D0C: $FE $02
    jr   z, label_002_6D5C                        ; $6D0E: $28 $4C

    jp   label_C7D                                ; $6D10: $C3 $7D $0C

jr_002_6D13:
    ldh  a, [$FF9F]                               ; $6D13: $F0 $9F
    ldh  [hLinkPositionX], a                      ; $6D15: $E0 $98
    xor  a                                        ; $6D17: $AF
    ldh  [hFF9A], a                               ; $6D18: $E0 $9A
    ldh  a, [$FFF9]                               ; $6D1A: $F0 $F9
    and  a                                        ; $6D1C: $A7
    jr   z, label_002_6D5C                        ; $6D1D: $28 $3D

    ldh  a, [hMapIndex]                           ; $6D1F: $F0 $F6
    cp   $F5                                      ; $6D21: $FE $F5
    jp   z, $0C83                                 ; $6D23: $CA $83 $0C

    cp   $FD                                      ; $6D26: $FE $FD
    jp   z, $0C83                                 ; $6D28: $CA $83 $0C

    cp   $E9                                      ; $6D2B: $FE $E9
    jp   z, label_C7D                             ; $6D2D: $CA $7D $0C

    cp   $E8                                      ; $6D30: $FE $E8
    jp   z, label_002_6E09                        ; $6D32: $CA $09 $6E

    cp   $F8                                      ; $6D35: $FE $F8
    jp   z, label_002_6E09                        ; $6D37: $CA $09 $6E

    cp   $EF                                      ; $6D3A: $FE $EF
    jp   z, label_002_6E09                        ; $6D3C: $CA $09 $6E

    cp   $FF                                      ; $6D3F: $FE $FF
    jp   z, label_002_6E09                        ; $6D41: $CA $09 $6E

    cp   $C0                                      ; $6D44: $FE $C0
    jr   nz, jr_002_6D51                          ; $6D46: $20 $09

    ldh  a, [hLinkPositionX]                      ; $6D48: $F0 $98
    cp   $30                                      ; $6D4A: $FE $30
    jp   c, label_002_6E09                        ; $6D4C: $DA $09 $6E

    jr   label_002_6D5C                           ; $6D4F: $18 $0B

jr_002_6D51:
    cp   $C1                                      ; $6D51: $FE $C1
    jr   nz, label_002_6D5C                       ; $6D53: $20 $07

    ldh  a, [hLinkPositionX]                      ; $6D55: $F0 $98
    cp   $50                                      ; $6D57: $FE $50
    jp   nc, label_002_6E09                       ; $6D59: $D2 $09 $6E

label_002_6D5C::
    call label_CBE                                ; $6D5C: $CD $BE $0C
    ld   a, [$C181]                               ; $6D5F: $FA $81 $C1
    cp   $50                                      ; $6D62: $FE $50
    jp   z, label_002_6E0C                        ; $6D64: $CA $0C $6E

    cp   $51                                      ; $6D67: $FE $51
    jp   z, label_002_6E0C                        ; $6D69: $CA $0C $6E

    ld   a, [wC11F]                               ; $6D6C: $FA $1F $C1
    cp   $07                                      ; $6D6F: $FE $07
    jp   z, label_002_6E0C                        ; $6D71: $CA $0C $6E

    ld   a, [wLinkMotionState]                    ; $6D74: $FA $1C $C1
    cp   $06                                      ; $6D77: $FE $06
    jp   z, label_002_6E0C                        ; $6D79: $CA $0C $6E

    ldh  a, [$FFF9]                               ; $6D7C: $F0 $F9
    and  a                                        ; $6D7E: $A7
    jr   nz, jr_002_6D88                          ; $6D7F: $20 $07

    ld   a, [$C146]                               ; $6D81: $FA $46 $C1
    and  a                                        ; $6D84: $A7
    jp   nz, label_002_6E0C                       ; $6D85: $C2 $0C $6E

jr_002_6D88:
    ld   a, [$C14A]                               ; $6D88: $FA $4A $C1
    and  a                                        ; $6D8B: $A7
    jr   nz, jr_002_6D94                          ; $6D8C: $20 $06

    ld   a, [wC16D]                               ; $6D8E: $FA $6D $C1
    and  a                                        ; $6D91: $A7
    jr   nz, label_002_6E0C                       ; $6D92: $20 $78

jr_002_6D94:
    ld   a, [$C13E]                               ; $6D94: $FA $3E $C1
    ld   hl, $C157                                ; $6D97: $21 $57 $C1
    or   [hl]                                     ; $6D9A: $B6
    jr   nz, label_002_6E0C                       ; $6D9B: $20 $6F

    ldh  a, [hLinkPositionY]                      ; $6D9D: $F0 $99
    cp   $88                                      ; $6D9F: $FE $88
    jr   nc, jr_002_6DCC                          ; $6DA1: $30 $29

    ld   a, [$C14A]                               ; $6DA3: $FA $4A $C1
    ld   hl, $FFF9                                ; $6DA6: $21 $F9 $FF
    or   [hl]                                     ; $6DA9: $B6
    ld   hl, $FFB2                                ; $6DAA: $21 $B2 $FF
    or   [hl]                                     ; $6DAD: $B6
    jr   nz, jr_002_6DCC                          ; $6DAE: $20 $1C

    ldh  a, [hPressedButtonsMask]                 ; $6DB0: $F0 $CB
    and  $0F                                      ; $6DB2: $E6 $0F
    jr   z, label_002_6E0C                        ; $6DB4: $28 $56

    and  $03                                      ; $6DB6: $E6 $03
    jr   z, jr_002_6DBE                           ; $6DB8: $28 $04

    dec  a                                        ; $6DBA: $3D
    cp   e                                        ; $6DBB: $BB
    jr   z, jr_002_6DCC                           ; $6DBC: $28 $0E

jr_002_6DBE:
    ldh  a, [hPressedButtonsMask]                 ; $6DBE: $F0 $CB
    rra                                           ; $6DC0: $1F
    rra                                           ; $6DC1: $1F
    and  $03                                      ; $6DC2: $E6 $03
    jr   z, label_002_6E0C                        ; $6DC4: $28 $46

    dec  a                                        ; $6DC6: $3D
    add  $02                                      ; $6DC7: $C6 $02
    cp   e                                        ; $6DC9: $BB
    jr   nz, label_002_6E0C                       ; $6DCA: $20 $40

jr_002_6DCC:
    ldh  a, [hMapIndex]                           ; $6DCC: $F0 $F6
    cp   $E8                                      ; $6DCE: $FE $E8
    jr   nz, jr_002_6DE4                          ; $6DD0: $20 $12

    ldh  a, [hMapTileset]                         ; $6DD2: $F0 $F7
    cp   $1F                                      ; $6DD4: $FE $1F
    jr   z, jr_002_6DE4                           ; $6DD6: $28 $0C

    ld   a, [wActiveRoom]                         ; $6DD8: $FA $A5 $DB
    and  a                                        ; $6DDB: $A7
    jr   z, jr_002_6DE4                           ; $6DDC: $28 $06

    xor  a                                        ; $6DDE: $AF
    ld   [wScrollXOffset], a                      ; $6DDF: $EA $BF $C1
    ld   [rSCX], a                                ; $6DE2: $E0 $43

jr_002_6DE4:
    ld   a, e                                     ; $6DE4: $7B
    ld   [$C125], a                               ; $6DE5: $EA $25 $C1
    ld   a, $01                                   ; $6DE8: $3E $01
    ld   [wMapSlideTransitionState], a            ; $6DEA: $EA $24 $C1
    xor  a                                        ; $6DED: $AF
    ld   [$C14B], a                               ; $6DEE: $EA $4B $C1
    ld   [wIsUsingSpinAttack], a                  ; $6DF1: $EA $21 $C1
    ld   [$C14A], a                               ; $6DF4: $EA $4A $C1
    ld   [$C188], a                               ; $6DF7: $EA $88 $C1
    ldh  a, [hLinkPositionY]                      ; $6DFA: $F0 $99
    cp   $88                                      ; $6DFC: $FE $88
    jr   c, label_002_6E09                        ; $6DFE: $38 $09

    ld   a, $02                                   ; $6E00: $3E $02
    ld   [$C146], a                               ; $6E02: $EA $46 $C1
    ld   a, $08                                   ; $6E05: $3E $08
    ldh  [$FFA2], a                               ; $6E07: $E0 $A2

label_002_6E09::
    jp   label_002_6E45                           ; $6E09: $C3 $45 $6E

label_002_6E0C::
    call label_178E                               ; $6E0C: $CD $8E $17
    ld   [$C13E], a                               ; $6E0F: $EA $3E $C1
    jp   label_002_6E45                           ; $6E12: $C3 $45 $6E

    ld   b, $09                                   ; $6E15: $06 $09
    dec  bc                                       ; $6E17: $0B
    dec  bc                                       ; $6E18: $0B
    ld   b, $09                                   ; $6E19: $06 $09
    inc  b                                        ; $6E1B: $04
    inc  b                                        ; $6E1C: $04
    ld   b, $06                                   ; $6E1D: $06 $06
    add  hl, bc                                   ; $6E1F: $09
    inc  c                                        ; $6E20: $0C
    rrca                                          ; $6E21: $0F
    rrca                                          ; $6E22: $0F
    add  hl, bc                                   ; $6E23: $09
    inc  c                                        ; $6E24: $0C
    inc  b                                        ; $6E25: $04
    nop                                           ; $6E26: $00
    ld   [bc], a                                  ; $6E27: $02
    ld   b, $01                                   ; $6E28: $06 $01
    ld   [bc], a                                  ; $6E2A: $02
    inc  b                                        ; $6E2B: $04
    ld   [$0201], sp                              ; $6E2C: $08 $01 $02
    inc  b                                        ; $6E2F: $04
    ld   [$0202], sp                              ; $6E30: $08 $02 $02
    nop                                           ; $6E33: $00
    nop                                           ; $6E34: $00
    inc  bc                                       ; $6E35: $03
    inc  bc                                       ; $6E36: $03
    ld   bc, $0001                                ; $6E37: $01 $01 $00
    ld   bc, $00FF                                ; $6E3A: $01 $FF $00
    db   $10                                      ; $6E3D: $10
    ld   a, [rP1]                                 ; $6E3E: $F0 $00
    nop                                           ; $6E40: $00
    nop                                           ; $6E41: $00
    nop                                           ; $6E42: $00
    ld   a, [rNR10]                               ; $6E43: $F0 $10

label_002_6E45::
    ld   hl, wC10a                                ; $6E45: $21 $0A $C1
    ld   a, [wFreeMovementMode]                   ; $6E48: $FA $7B $C1
    or   [hl]                                     ; $6E4B: $B6
    ret  nz                                       ; $6E4C: $C0

    ldh  a, [$FFF9]                               ; $6E4D: $F0 $F9
    and  a                                        ; $6E4F: $A7
    jr   z, jr_002_6E55                           ; $6E50: $28 $03

    jp   label_002_6B66                           ; $6E52: $C3 $66 $6B

jr_002_6E55:
    xor  a                                        ; $6E55: $AF
    ld   [$C133], a                               ; $6E56: $EA $33 $C1
    ldh  a, [$FF9B]                               ; $6E59: $F0 $9B
    cp   $00                                      ; $6E5B: $FE $00
    jr   z, jr_002_6EDD                           ; $6E5D: $28 $7E

    ld   e, $03                                   ; $6E5F: $1E $03
    rla                                           ; $6E61: $17
    ld   bc, $6E25                                ; $6E62: $01 $25 $6E
    jr   nc, jr_002_6E69                          ; $6E65: $30 $02

    dec  e                                        ; $6E67: $1D
    inc  bc                                       ; $6E68: $03

jr_002_6E69:
    ld   a, e                                     ; $6E69: $7B
    ldh  [$FFE3], a                               ; $6E6A: $E0 $E3
    ld   e, $02                                   ; $6E6C: $1E $02
    ld   a, [bc]                                  ; $6E6E: $0A
    ld   c, a                                     ; $6E6F: $4F
    ld   b, $00                                   ; $6E70: $06 $00

jr_002_6E72:
    push de                                       ; $6E72: $D5
    push bc                                       ; $6E73: $C5
    call $6F2C                                    ; $6E74: $CD $2C $6F
    pop  bc                                       ; $6E77: $C1
    pop  de                                       ; $6E78: $D1
    inc  bc                                       ; $6E79: $03
    dec  e                                        ; $6E7A: $1D
    jr   nz, jr_002_6E72                          ; $6E7B: $20 $F5

    ldh  a, [$FF9B]                               ; $6E7D: $F0 $9B
    and  $80                                      ; $6E7F: $E6 $80
    jr   nz, jr_002_6EC6                          ; $6E81: $20 $43

    ld   a, [wActiveRoom]                         ; $6E83: $FA $A5 $DB
    and  a                                        ; $6E86: $A7
    jr   nz, jr_002_6EC6                          ; $6E87: $20 $3D

    ldh  a, [$FFAF]                               ; $6E89: $F0 $AF
    cp   $E9                                      ; $6E8B: $FE $E9
    jr   nz, jr_002_6EC6                          ; $6E8D: $20 $37

    ld   a, [wHasFlippers]                        ; $6E8F: $FA $0C $DB
    and  a                                        ; $6E92: $A7
    jr   z, jr_002_6EC6                           ; $6E93: $28 $31

    ld   a, [$C5A8]                               ; $6E95: $FA $A8 $C5
    cp   $D5                                      ; $6E98: $FE $D5
    jr   z, jr_002_6EC6                           ; $6E9A: $28 $2A

    ld   a, [wLinkMotionState]                    ; $6E9C: $FA $1C $C1
    cp   $02                                      ; $6E9F: $FE $02
    jr   z, jr_002_6EDD                           ; $6EA1: $28 $3A

    ld   a, $08                                   ; $6EA3: $3E $08
    ldh  [$FFF2], a                               ; $6EA5: $E0 $F2
    jr   jr_002_6EB5                              ; $6EA7: $18 $0C

func_002_6EA9::
    ld   a, $08                                   ; $6EA9: $3E $08
    ldh  [$FFF2], a                               ; $6EAB: $E0 $F2

func_002_6EAD::
    ldh  a, [hLinkPositionX]                      ; $6EAD: $F0 $98
    and  $F0                                      ; $6EAF: $E6 $F0
    add  $08                                      ; $6EB1: $C6 $08
    ldh  [hLinkPositionX], a                      ; $6EB3: $E0 $98

jr_002_6EB5:
    ld   a, $02                                   ; $6EB5: $3E $02
    ld   [wLinkMotionState], a                    ; $6EB7: $EA $1C $C1
    xor  a                                        ; $6EBA: $AF
    ldh  [$FF9C], a                               ; $6EBB: $E0 $9C
    ldh  a, [hLinkPositionY]                      ; $6EBD: $F0 $99
    sub  $08                                      ; $6EBF: $D6 $08
    ldh  [hLinkPositionY], a                      ; $6EC1: $E0 $99
    jp   label_CB6                                ; $6EC3: $C3 $B6 $0C

jr_002_6EC6:
    ld   a, [$C133]                               ; $6EC6: $FA $33 $C1
    and  $03                                      ; $6EC9: $E6 $03
    jr   z, jr_002_6EDD                           ; $6ECB: $28 $10

    ld   e, a                                     ; $6ECD: $5F
    ld   d, $00                                   ; $6ECE: $16 $00
    ld   hl, $6E39                                ; $6ED0: $21 $39 $6E
    add  hl, de                                   ; $6ED3: $19
    ldh  a, [hLinkPositionX]                      ; $6ED4: $F0 $98
    add  [hl]                                     ; $6ED6: $86
    ldh  [hLinkPositionX], a                      ; $6ED7: $E0 $98
    ldh  a, [$FFA0]                               ; $6ED9: $F0 $A0
    ldh  [hLinkPositionY], a                      ; $6EDB: $E0 $99

jr_002_6EDD:
    ldh  a, [hFF9A]                               ; $6EDD: $F0 $9A
    cp   $00                                      ; $6EDF: $FE $00
    jr   z, jr_002_6F1C                           ; $6EE1: $28 $39

    ld   e, $00                                   ; $6EE3: $1E $00
    rla                                           ; $6EE5: $17
    ld   bc, $6E27                                ; $6EE6: $01 $27 $6E
    jr   nc, jr_002_6EED                          ; $6EE9: $30 $02

    inc  e                                        ; $6EEB: $1C
    inc  bc                                       ; $6EEC: $03

jr_002_6EED:
    ld   a, e                                     ; $6EED: $7B
    ldh  [$FFE3], a                               ; $6EEE: $E0 $E3
    ld   e, $02                                   ; $6EF0: $1E $02
    ld   a, [bc]                                  ; $6EF2: $0A
    ld   c, a                                     ; $6EF3: $4F
    ld   b, $00                                   ; $6EF4: $06 $00

jr_002_6EF6:
    push de                                       ; $6EF6: $D5
    push bc                                       ; $6EF7: $C5
    call $6F2C                                    ; $6EF8: $CD $2C $6F
    pop  bc                                       ; $6EFB: $C1
    pop  de                                       ; $6EFC: $D1
    inc  bc                                       ; $6EFD: $03
    dec  e                                        ; $6EFE: $1D
    jr   nz, jr_002_6EF6                          ; $6EFF: $20 $F5

    ld   a, [$C133]                               ; $6F01: $FA $33 $C1
    and  $0C                                      ; $6F04: $E6 $0C
    jr   z, jr_002_6F1C                           ; $6F06: $28 $14

    srl  a                                        ; $6F08: $CB $3F
    srl  a                                        ; $6F0A: $CB $3F
    ld   e, a                                     ; $6F0C: $5F
    ld   d, $00                                   ; $6F0D: $16 $00
    ld   hl, $6E39                                ; $6F0F: $21 $39 $6E
    add  hl, de                                   ; $6F12: $19
    ldh  a, [hLinkPositionY]                      ; $6F13: $F0 $99
    add  [hl]                                     ; $6F15: $86
    ldh  [hLinkPositionY], a                      ; $6F16: $E0 $99
    ldh  a, [$FF9F]                               ; $6F18: $F0 $9F
    ldh  [hLinkPositionX], a                      ; $6F1A: $E0 $98

jr_002_6F1C:
    ld   a, [$C133]                               ; $6F1C: $FA $33 $C1
    and  a                                        ; $6F1F: $A7
    jr   nz, jr_002_6F25                          ; $6F20: $20 $03

    ld   [$C1C3], a                               ; $6F22: $EA $C3 $C1

jr_002_6F25:
    jp   label_002_74AD                           ; $6F25: $C3 $AD $74

    ld   bc, $0402                                ; $6F28: $01 $02 $04
    ld   [$1521], sp                              ; $6F2B: $08 $21 $15
    ld   l, [hl]                                  ; $6F2E: $6E
    add  hl, bc                                   ; $6F2F: $09
    ldh  a, [hLinkPositionX]                      ; $6F30: $F0 $98
    sub  $08                                      ; $6F32: $D6 $08
    add  [hl]                                     ; $6F34: $86
    ldh  [$FFDB], a                               ; $6F35: $E0 $DB
    swap a                                        ; $6F37: $CB $37
    and  $0F                                      ; $6F39: $E6 $0F
    ld   e, a                                     ; $6F3B: $5F
    ld   hl, $6E1D                                ; $6F3C: $21 $1D $6E
    add  hl, bc                                   ; $6F3F: $09
    ldh  a, [hLinkPositionY]                      ; $6F40: $F0 $99
    add  [hl]                                     ; $6F42: $86
    sub  $10                                      ; $6F43: $D6 $10
    ldh  [$FFDC], a                               ; $6F45: $E0 $DC
    and  $F0                                      ; $6F47: $E6 $F0
    or   e                                        ; $6F49: $B3
    ld   e, a                                     ; $6F4A: $5F
    ldh  [hFFE9], a                               ; $6F4B: $E0 $E9
    ld   d, $00                                   ; $6F4D: $16 $00
    ld   hl, wTileMap                             ; $6F4F: $21 $11 $D7
    ld   a, h                                     ; $6F52: $7C
    add  hl, de                                   ; $6F53: $19
    ld   h, a                                     ; $6F54: $67
    ld   a, [hl]                                  ; $6F55: $7E
    ldh  [$FFAF], a                               ; $6F56: $E0 $AF
    ld   e, a                                     ; $6F58: $5F
    ld   a, [wActiveRoom]                         ; $6F59: $FA $A5 $DB
    ld   d, a                                     ; $6F5C: $57
    call label_2A26                               ; $6F5D: $CD $26 $2A
    ldh  [$FFE4], a                               ; $6F60: $E0 $E4
    and  a                                        ; $6F62: $A7
    jp   z, label_002_7461                        ; $6F63: $CA $61 $74

    cp   $01                                      ; $6F66: $FE $01
    jp   z, label_002_7277                        ; $6F68: $CA $77 $72

    cp   $02                                      ; $6F6B: $FE $02
    jp   z, label_002_7260                        ; $6F6D: $CA $60 $72

    cp   $03                                      ; $6F70: $FE $03
    jp   z, label_002_71BB                        ; $6F72: $CA $BB $71

    cp   $10                                      ; $6F75: $FE $10
    jp   z, label_002_719C                        ; $6F77: $CA $9C $71

    cp   $04                                      ; $6F7A: $FE $04
    jp   z, label_002_723D                        ; $6F7C: $CA $3D $72

    cp   $30                                      ; $6F7F: $FE $30
    jp   z, label_002_7277                        ; $6F81: $CA $77 $72

    cp   $60                                      ; $6F84: $FE $60
    jp   z, label_002_7277                        ; $6F86: $CA $77 $72

    cp   $0A                                      ; $6F89: $FE $0A
    jp   z, label_002_7260                        ; $6F8B: $CA $60 $72

    cp   $FF                                      ; $6F8E: $FE $FF
    jp   z, label_002_7461                        ; $6F90: $CA $61 $74

    cp   $E0                                      ; $6F93: $FE $E0
    jp   z, label_002_7461                        ; $6F95: $CA $61 $74

    cp   $F0                                      ; $6F98: $FE $F0
    jp   nc, label_002_7461                       ; $6F9A: $D2 $61 $74

    cp   $C0                                      ; $6F9D: $FE $C0
    jp   nz, label_002_7045                       ; $6F9F: $C2 $45 $70

    ldh  a, [hFF9E]                               ; $6FA2: $F0 $9E
    cp   $02                                      ; $6FA4: $FE $02
    jp   nz, label_002_703B                       ; $6FA6: $C2 $3B $70

    ldh  a, [hFFF8]                               ; $6FA9: $F0 $F8
    bit  4, a                                     ; $6FAB: $CB $67
    jp   nz, label_002_703B                       ; $6FAD: $C2 $3B $70

    ldh  a, [hMapIndex]                           ; $6FB0: $F0 $F6
    cp   $0E                                      ; $6FB2: $FE $0E
    jr   nz, jr_002_6FBD                          ; $6FB4: $20 $07

    ld   a, [wHasBirdKey]                         ; $6FB6: $FA $14 $DB
    ld   e, $33                                   ; $6FB9: $1E $33
    jr   jr_002_6FC6                              ; $6FBB: $18 $09

jr_002_6FBD:
    cp   $8C                                      ; $6FBD: $FE $8C
    jr   nz, jr_002_6FE3                          ; $6FBF: $20 $22

    ld   a, [wHasFaceKey]                         ; $6FC1: $FA $13 $DB
    ld   e, $34                                   ; $6FC4: $1E $34

jr_002_6FC6:
    and  a                                        ; $6FC6: $A7
    jr   z, jr_002_703E                           ; $6FC7: $28 $75

    ldh  a, [hMapIndex]                           ; $6FC9: $F0 $F6
    cp   $8C                                      ; $6FCB: $FE $8C
    jr   nz, jr_002_6FD4                          ; $6FCD: $20 $05

    call label_27F2                               ; $6FCF: $CD $F2 $27
    jr   jr_002_6FD7                              ; $6FD2: $18 $03

jr_002_6FD4:
    call label_002_5420                           ; $6FD4: $CD $20 $54

jr_002_6FD7:
    ld   a, $28                                   ; $6FD7: $3E $28
    call label_3B86                               ; $6FD9: $CD $86 $3B
    ld   hl, wEntitiesUnknownTableC               ; $6FDC: $21 $C0 $C2
    add  hl, de                                   ; $6FDF: $19
    inc  [hl]                                     ; $6FE0: $34
    jr   jr_002_702C                              ; $6FE1: $18 $49

jr_002_6FE3:
    cp   $2B                                      ; $6FE3: $FE $2B
    jr   nz, jr_002_6FFE                          ; $6FE5: $20 $17

    ld   a, [wHasAnglerKey]                       ; $6FE7: $FA $12 $DB
    and  a                                        ; $6FEA: $A7
    ld   e, $32                                   ; $6FEB: $1E $32
    jr   z, jr_002_703E                           ; $6FED: $28 $4F

    call label_27F2                               ; $6FEF: $CD $F2 $27
    ld   a, $5F                                   ; $6FF2: $3E $5F
    call label_3B86                               ; $6FF4: $CD $86 $3B
    ld   hl, $C440                                ; $6FF7: $21 $40 $C4
    add  hl, de                                   ; $6FFA: $19
    dec  [hl]                                     ; $6FFB: $35
    jr   jr_002_702C                              ; $6FFC: $18 $2E

jr_002_6FFE:
    cp   $B5                                      ; $6FFE: $FE $B5
    jr   nz, jr_002_700D                          ; $7000: $20 $0B

    ld   a, [wGoldenLeavesCount]                  ; $7002: $FA $15 $DB
    cp   $06                                      ; $7005: $FE $06
    ld   e, $31                                   ; $7007: $1E $31
    jr   nz, jr_002_703E                          ; $7009: $20 $33

    jr   jr_002_7015                              ; $700B: $18 $08

jr_002_700D:
    ld   a, [wHasTailKey]                         ; $700D: $FA $11 $DB
    and  a                                        ; $7010: $A7
    ld   e, $30                                   ; $7011: $1E $30
    jr   z, jr_002_703E                           ; $7013: $28 $29

jr_002_7015:
    ldh  a, [hLinkPositionY]                      ; $7015: $F0 $99
    ldh  [$FFD8], a                               ; $7017: $E0 $D8
    ldh  a, [hLinkPositionX]                      ; $7019: $F0 $98
    ldh  [$FFD7], a                               ; $701B: $E0 $D7
    ld   a, $09                                   ; $701D: $3E $09
    call label_CC7                                ; $701F: $CD $C7 $0C
    ld   [hl], $DF                                ; $7022: $36 $DF
    ld   a, $DF                                   ; $7024: $3E $DF
    ld   [wC111], a                               ; $7026: $EA $11 $C1
    call label_27F2                               ; $7029: $CD $F2 $27

jr_002_702C:
    ld   hl, wMinimapTiles                        ; $702C: $21 $00 $D8
    ldh  a, [hMapIndex]                           ; $702F: $F0 $F6
    ld   e, a                                     ; $7031: $5F
    ld   d, $00                                   ; $7032: $16 $00
    add  hl, de                                   ; $7034: $19
    ld   a, [hl]                                  ; $7035: $7E
    or   $10                                      ; $7036: $F6 $10
    ld   [hl], a                                  ; $7038: $77
    ldh  [hFFF8], a                               ; $7039: $E0 $F8

label_002_703B::
    jp   label_002_7277                           ; $703B: $C3 $77 $72

jr_002_703E:
    ld   a, e                                     ; $703E: $7B
    call func_002_7504                            ; $703F: $CD $04 $75
    jp   label_002_7277                           ; $7042: $C3 $77 $72

label_002_7045::
    ldh  a, [$FFAF]                               ; $7045: $F0 $AF
    cp   $DB                                      ; $7047: $FE $DB
    jr   nz, jr_002_7053                          ; $7049: $20 $08

    ld   a, [wLinkMotionState]                    ; $704B: $FA $1C $C1
    cp   $01                                      ; $704E: $FE $01
    jp   z, label_002_7277                        ; $7050: $CA $77 $72

jr_002_7053:
    ldh  a, [$FFE4]                               ; $7053: $F0 $E4
    cp   $D0                                      ; $7055: $FE $D0
    jp   c, label_002_70DF                        ; $7057: $DA $DF $70

    cp   $D4                                      ; $705A: $FE $D4
    jp   nc, label_002_70DF                       ; $705C: $D2 $DF $70

    sub  $D0                                      ; $705F: $D6 $D0
    ld   e, a                                     ; $7061: $5F
    ld   a, [wActiveRoom]                         ; $7062: $FA $A5 $DB
    and  a                                        ; $7065: $A7
    jr   nz, jr_002_7085                          ; $7066: $20 $1D

    ld   a, e                                     ; $7068: $7B
    cp   $00                                      ; $7069: $FE $00
    jr   nz, jr_002_7078                          ; $706B: $20 $0B

    ldh  a, [$FFDB]                               ; $706D: $F0 $DB
    and  $0F                                      ; $706F: $E6 $0F
    cp   $08                                      ; $7071: $FE $08
    jp   c, label_002_7461                        ; $7073: $DA $61 $74

    jr   jr_002_7085                              ; $7076: $18 $0D

jr_002_7078:
    cp   $01                                      ; $7078: $FE $01
    jr   nz, jr_002_7085                          ; $707A: $20 $09

    ldh  a, [$FFDB]                               ; $707C: $F0 $DB
    and  $0F                                      ; $707E: $E6 $0F
    cp   $08                                      ; $7080: $FE $08
    jp   nc, label_002_7461                       ; $7082: $D2 $61 $74

jr_002_7085:
    ld   d, $00                                   ; $7085: $16 $00
    ldh  a, [hFF9E]                               ; $7087: $F0 $9E
    cp   e                                        ; $7089: $BB
    jp   nz, label_002_70D8                       ; $708A: $C2 $D8 $70

    ld   a, [$C13E]                               ; $708D: $FA $3E $C1
    ld   hl, wIsUsingSpinAttack                   ; $7090: $21 $21 $C1
    or   [hl]                                     ; $7093: $B6
    ld   hl, $D45E                                ; $7094: $21 $5E $D4
    or   [hl]                                     ; $7097: $B6
    jr   nz, label_002_70D8                       ; $7098: $20 $3E

    ld   a, [$C14A]                               ; $709A: $FA $4A $C1
    and  a                                        ; $709D: $A7
    jr   nz, jr_002_70B5                          ; $709E: $20 $15

    ld   hl, $6F28                                ; $70A0: $21 $28 $6F
    add  hl, de                                   ; $70A3: $19
    ldh  a, [hPressedButtonsMask]                 ; $70A4: $F0 $CB
    and  [hl]                                     ; $70A6: $A6
    jr   z, label_002_70D8                        ; $70A7: $28 $2F

    ld   a, [$C191]                               ; $70A9: $FA $91 $C1
    inc  a                                        ; $70AC: $3C
    ld   [$C191], a                               ; $70AD: $EA $91 $C1
    cp   $0C                                      ; $70B0: $FE $0C
    jp   c, label_002_7277                        ; $70B2: $DA $77 $72

jr_002_70B5:
    call label_CB6                                ; $70B5: $CD $B6 $0C
    ld   hl, $6E3D                                ; $70B8: $21 $3D $6E
    add  hl, de                                   ; $70BB: $19
    ld   a, [hl]                                  ; $70BC: $7E
    ldh  [hFF9A], a                               ; $70BD: $E0 $9A
    ld   hl, $6E41                                ; $70BF: $21 $41 $6E
    add  hl, de                                   ; $70C2: $19
    ld   a, [hl]                                  ; $70C3: $7E
    ldh  [$FF9B], a                               ; $70C4: $E0 $9B
    ld   a, $1C                                   ; $70C6: $3E $1C
    ldh  [$FFA3], a                               ; $70C8: $E0 $A3
    ld   a, $01                                   ; $70CA: $3E $01
    ld   [$C146], a                               ; $70CC: $EA $46 $C1
    ld   a, $01                                   ; $70CF: $3E $01
    ld   [wC10a], a                               ; $70D1: $EA $0A $C1
    ld   a, $08                                   ; $70D4: $3E $08
    ldh  [$FFF2], a                               ; $70D6: $E0 $F2

label_002_70D8::
    xor  a                                        ; $70D8: $AF
    ld   [$C191], a                               ; $70D9: $EA $91 $C1
    jp   label_002_7277                           ; $70DC: $C3 $77 $72

label_002_70DF::
    cp   $90                                      ; $70DF: $FE $90
    jp   c, label_002_715F                        ; $70E1: $DA $5F $71

    cp   $99                                      ; $70E4: $FE $99
    jp   nc, label_002_7277                       ; $70E6: $D2 $77 $72

    sub  $90                                      ; $70E9: $D6 $90
    ld   e, a                                     ; $70EB: $5F
    ld   d, $00                                   ; $70EC: $16 $00
    bit  1, a                                     ; $70EE: $CB $4F
    jr   nz, jr_002_7103                          ; $70F0: $20 $11

    ld   hl, $C1D0                                ; $70F2: $21 $D0 $C1
    add  hl, de                                   ; $70F5: $19
    ld   e, [hl]                                  ; $70F6: $5E
    ldh  a, [hLinkPositionX]                      ; $70F7: $F0 $98
    sub  e                                        ; $70F9: $93
    sub  $0C                                      ; $70FA: $D6 $0C
    cp   $08                                      ; $70FC: $FE $08
    jp   nc, label_002_7277                       ; $70FE: $D2 $77 $72

    jr   jr_002_7112                              ; $7101: $18 $0F

jr_002_7103:
    ld   hl, $C1E0                                ; $7103: $21 $E0 $C1
    add  hl, de                                   ; $7106: $19
    ld   e, [hl]                                  ; $7107: $5E
    ldh  a, [hLinkPositionY]                      ; $7108: $F0 $99
    sub  e                                        ; $710A: $93
    sub  $14                                      ; $710B: $D6 $14
    cp   $08                                      ; $710D: $FE $08
    jp   nc, label_002_7277                       ; $710F: $D2 $77 $72

jr_002_7112:
    ld   a, [$C188]                               ; $7112: $FA $88 $C1
    and  a                                        ; $7115: $A7
    jp   nz, label_002_7277                       ; $7116: $C2 $77 $72

    ldh  a, [$FFE4]                               ; $7119: $F0 $E4
    cp   $94                                      ; $711B: $FE $94
    jr   nc, jr_002_712C                          ; $711D: $30 $0D

    ld   a, [$DBD0]                               ; $711F: $FA $D0 $DB
    and  a                                        ; $7122: $A7
    jp   z, label_002_7277                        ; $7123: $CA $77 $72

    dec  a                                        ; $7126: $3D
    ld   [$DBD0], a                               ; $7127: $EA $D0 $DB
    jr   jr_002_7147                              ; $712A: $18 $1B

jr_002_712C:
    cp   $98                                      ; $712C: $FE $98
    jr   z, jr_002_7139                           ; $712E: $28 $09

    ld   a, [$C18E]                               ; $7130: $FA $8E $C1
    and  a                                        ; $7133: $A7
    jr   z, jr_002_7147                           ; $7134: $28 $11

    jp   label_002_7277                           ; $7136: $C3 $77 $72

jr_002_7139:
    ld   a, [wHasDungeonBossKey]                  ; $7139: $FA $CF $DB
    and  a                                        ; $713C: $A7
    jr   nz, jr_002_7147                          ; $713D: $20 $08

    ld   a, $07                                   ; $713F: $3E $07
    call func_002_74FE                            ; $7141: $CD $FE $74
    jp   label_002_7277                           ; $7144: $C3 $77 $72

jr_002_7147:
    ldh  a, [$FFE4]                               ; $7147: $F0 $E4
    sub  $90                                      ; $7149: $D6 $90
    ld   [$C189], a                               ; $714B: $EA $89 $C1
    xor  a                                        ; $714E: $AF
    ld   [$DBAC], a                               ; $714F: $EA $AC $DB
    inc  a                                        ; $7152: $3C
    ld   [$C188], a                               ; $7153: $EA $88 $C1
    call label_2802                               ; $7156: $CD $02 $28
    call label_002_5420                           ; $7159: $CD $20 $54
    jp   label_002_7277                           ; $715C: $C3 $77 $72

label_002_715F::
    cp   $7C                                      ; $715F: $FE $7C
    jp   c, label_002_7461                        ; $7161: $DA $61 $74

    push af                                       ; $7164: $F5
    jr   z, jr_002_716B                           ; $7165: $28 $04

    cp   $7D                                      ; $7167: $FE $7D
    jr   nz, jr_002_716E                          ; $7169: $20 $03

jr_002_716B:
    call func_002_7468                            ; $716B: $CD $68 $74

jr_002_716E:
    pop  af                                       ; $716E: $F1
    cp   $90                                      ; $716F: $FE $90
    jp   nc, label_002_7461                       ; $7171: $D2 $61 $74

    sub  $7C                                      ; $7174: $D6 $7C
    sla  a                                        ; $7176: $CB $27
    sla  a                                        ; $7178: $CB $27
    ld   e, a                                     ; $717A: $5F
    ld   d, $00                                   ; $717B: $16 $00
    ld   hl, $49CA                                ; $717D: $21 $CA $49
    add  hl, de                                   ; $7180: $19
    ldh  a, [$FFDB]                               ; $7181: $F0 $DB
    rra                                           ; $7183: $1F
    rra                                           ; $7184: $1F
    rra                                           ; $7185: $1F
    and  $01                                      ; $7186: $E6 $01
    ld   e, a                                     ; $7188: $5F
    ldh  a, [$FFDC]                               ; $7189: $F0 $DC
    rra                                           ; $718B: $1F
    rra                                           ; $718C: $1F
    and  $02                                      ; $718D: $E6 $02
    or   e                                        ; $718F: $B3
    ld   e, a                                     ; $7190: $5F
    ld   d, $00                                   ; $7191: $16 $00
    add  hl, de                                   ; $7193: $19
    ld   a, [hl]                                  ; $7194: $7E
    and  a                                        ; $7195: $A7
    jp   nz, label_002_7277                       ; $7196: $C2 $77 $72

    jp   label_002_7461                           ; $7199: $C3 $61 $74

label_002_719C::
    ld   a, [wLinkMotionState]                    ; $719C: $FA $1C $C1
    cp   $02                                      ; $719F: $FE $02
    jp   z, label_002_7454                        ; $71A1: $CA $54 $74

    ld   a, [$C5A8]                               ; $71A4: $FA $A8 $C5
    cp   $D5                                      ; $71A7: $FE $D5
    jp   z, label_002_7454                        ; $71A9: $CA $54 $74

    ldh  a, [$FFDC]                               ; $71AC: $F0 $DC
    and  $0F                                      ; $71AE: $E6 $0F
    cp   $08                                      ; $71B0: $FE $08
    jp   c, label_002_7461                        ; $71B2: $DA $61 $74

    call func_002_6EA9                            ; $71B5: $CD $A9 $6E
    jp   label_002_7454                           ; $71B8: $C3 $54 $74

label_002_71BB::
    ld   a, [wC15C]                               ; $71BB: $FA $5C $C1
    and  a                                        ; $71BE: $A7
    jp   nz, label_002_7454                       ; $71BF: $C2 $54 $74

    ldh  a, [$FFDC]                               ; $71C2: $F0 $DC
    and  $0F                                      ; $71C4: $E6 $0F
    cp   $06                                      ; $71C6: $FE $06
    jp   nc, label_002_726A                       ; $71C8: $D2 $6A $72

    ld   a, [wActiveRoom]                         ; $71CB: $FA $A5 $DB
    and  a                                        ; $71CE: $A7
    jr   nz, jr_002_722C                          ; $71CF: $20 $5B

    ld   a, [wIsGhostFollowingLink]               ; $71D1: $FA $79 $DB
    cp   $01                                      ; $71D4: $FE $01
    jr   z, jr_002_71DE                           ; $71D6: $28 $06

    ld   a, [wIsMarinFollowingLink]               ; $71D8: $FA $73 $DB
    and  a                                        ; $71DB: $A7
    jr   z, jr_002_722C                           ; $71DC: $28 $4E

jr_002_71DE:
    ldh  a, [hMapIndex]                           ; $71DE: $F0 $F6
    cp   $77                                      ; $71E0: $FE $77
    jr   z, jr_002_7204                           ; $71E2: $28 $20

    cp   $D3                                      ; $71E4: $FE $D3
    jr   z, jr_002_7204                           ; $71E6: $28 $1C

    cp   $24                                      ; $71E8: $FE $24
    jr   z, jr_002_7204                           ; $71EA: $28 $18

    cp   $B5                                      ; $71EC: $FE $B5
    jr   z, jr_002_7204                           ; $71EE: $28 $14

    cp   $2B                                      ; $71F0: $FE $2B
    jr   z, jr_002_7204                           ; $71F2: $28 $10

    cp   $D9                                      ; $71F4: $FE $D9
    jr   z, jr_002_7204                           ; $71F6: $28 $0C

    cp   $AC                                      ; $71F8: $FE $AC
    jr   z, jr_002_7204                           ; $71FA: $28 $08

    cp   $8C                                      ; $71FC: $FE $8C
    jr   z, jr_002_7204                           ; $71FE: $28 $04

    cp   $0E                                      ; $7200: $FE $0E
    jr   nz, jr_002_722C                          ; $7202: $20 $28

jr_002_7204:
    ld   a, [wIsGhostFollowingLink]               ; $7204: $FA $79 $DB
    cp   $01                                      ; $7207: $FE $01
    jr   nz, jr_002_7213                          ; $7209: $20 $08

    ld   a, $12                                   ; $720B: $3E $12
    call func_002_7504                            ; $720D: $CD $04 $75
    jp   label_002_7454                           ; $7210: $C3 $54 $74

jr_002_7213:
    xor  a                                        ; $7213: $AF
    ld   [$DB47], a                               ; $7214: $EA $47 $DB
    ld   a, $98                                   ; $7217: $3E $98
    ld   [$C3C9], a                               ; $7219: $EA $C9 $C3
    call label_2373                               ; $721C: $CD $73 $23
    ld   a, [wC163]                               ; $721F: $FA $63 $C1
    inc  a                                        ; $7222: $3C
    ld   [$DB10], a                               ; $7223: $EA $10 $DB
    call label_C9E                                ; $7226: $CD $9E $0C
    jp   label_002_7454                           ; $7229: $C3 $54 $74

jr_002_722C:
    ld   a, [$C13E]                               ; $722C: $FA $3E $C1
    and  a                                        ; $722F: $A7
    jp   nz, label_002_7454                       ; $7230: $C2 $54 $74

    ld   a, [wActiveRoom]                         ; $7233: $FA $A5 $DB
    and  a                                        ; $7236: $A7
    jp   nz, $0C89                                ; $7237: $C2 $89 $0C

    jp   label_C7D                                ; $723A: $C3 $7D $0C

label_002_723D::
    ld   a, [$D6F9]                               ; $723D: $FA $F9 $D6
    and  a                                        ; $7240: $A7
    jp   nz, label_002_7461                       ; $7241: $C2 $61 $74

    ldh  a, [$FFAF]                               ; $7244: $F0 $AF
    cp   $DB                                      ; $7246: $FE $DB
    jr   c, label_002_7277                        ; $7248: $38 $2D

    cp   $DD                                      ; $724A: $FE $DD
    jr   nc, label_002_7277                       ; $724C: $30 $29

    sub  $DB                                      ; $724E: $D6 $DB
    ld   e, a                                     ; $7250: $5F
    ld   d, $00                                   ; $7251: $16 $00
    ld   hl, $787B                                ; $7253: $21 $7B $78
    add  hl, de                                   ; $7256: $19
    ld   a, [$D6FB]                               ; $7257: $FA $FB $D6
    xor  [hl]                                     ; $725A: $AE
    jr   nz, label_002_7277                       ; $725B: $20 $1A

    jp   label_002_7461                           ; $725D: $C3 $61 $74

label_002_7260::
    ld   hl, wC11F                                ; $7260: $21 $1F $C1
    ld   [hl], $01                                ; $7263: $36 $01
    cp   $0A                                      ; $7265: $FE $0A
    jp   z, label_002_7461                        ; $7267: $CA $61 $74

label_002_726A::
    ldh  a, [$FFDB]                               ; $726A: $F0 $DB
    and  $0F                                      ; $726C: $E6 $0F
    cp   $06                                      ; $726E: $FE $06
    jr   c, label_002_7277                        ; $7270: $38 $05

    cp   $0B                                      ; $7272: $FE $0B
    jp   c, label_002_7461                        ; $7274: $DA $61 $74

label_002_7277::
    ldh  a, [$FFAF]                               ; $7277: $F0 $AF
    cp   $69                                      ; $7279: $FE $69
    jr   nz, jr_002_728E                          ; $727B: $20 $11

    ld   hl, $FFE3                                ; $727D: $21 $E3 $FF
    ldh  a, [hFF9E]                               ; $7280: $F0 $9E
    cp   [hl]                                     ; $7282: $BE
    jr   nz, jr_002_728B                          ; $7283: $20 $06

    ld   a, [wIsUsingShield]                      ; $7285: $FA $5B $C1
    and  a                                        ; $7288: $A7
    jr   nz, jr_002_728E                          ; $7289: $20 $03

jr_002_728B:
    call func_002_75F5                            ; $728B: $CD $F5 $75

jr_002_728E:
    ld   hl, $FFE3                                ; $728E: $21 $E3 $FF
    ldh  a, [hFF9E]                               ; $7291: $F0 $9E
    cp   [hl]                                     ; $7293: $BE
    jr   nz, jr_002_72FA                          ; $7294: $20 $64

    ld   a, [$C13E]                               ; $7296: $FA $3E $C1
    ld   hl, $C146                                ; $7299: $21 $46 $C1
    or   [hl]                                     ; $729C: $B6
    jr   nz, jr_002_72FA                          ; $729D: $20 $5B

    ld   a, [wActiveRoom]                         ; $729F: $FA $A5 $DB
    and  a                                        ; $72A2: $A7
    ldh  a, [$FFAF]                               ; $72A3: $F0 $AF
    jr   z, jr_002_72D1                           ; $72A5: $28 $2A

    ld   e, $8A                                   ; $72A7: $1E $8A
    cp   $A9                                      ; $72A9: $FE $A9
    jr   z, jr_002_72EC                           ; $72AB: $28 $3F

    ld   e, $8B                                   ; $72AD: $1E $8B
    cp   $4F                                      ; $72AF: $FE $4F
    jr   z, jr_002_72BB                           ; $72B1: $28 $08

    cp   $4E                                      ; $72B3: $FE $4E
    jr   z, jr_002_72BB                           ; $72B5: $28 $04

    cp   $88                                      ; $72B7: $FE $88
    jr   nz, jr_002_72C3                          ; $72B9: $20 $08

jr_002_72BB:
    ld   a, [$C14A]                               ; $72BB: $FA $4A $C1
    and  a                                        ; $72BE: $A7
    jr   nz, jr_002_72FA                          ; $72BF: $20 $39

    jr   jr_002_72EC                              ; $72C1: $18 $29

jr_002_72C3:
    cp   $DE                                      ; $72C3: $FE $DE
    jr   nz, jr_002_72D1                          ; $72C5: $20 $0A

    ld   a, [$DBD0]                               ; $72C7: $FA $D0 $DB
    and  a                                        ; $72CA: $A7
    jr   nz, jr_002_72FA                          ; $72CB: $20 $2D

    ld   e, $8C                                   ; $72CD: $1E $8C
    jr   jr_002_72EC                              ; $72CF: $18 $1B

jr_002_72D1:
    cp   $20                                      ; $72D1: $FE $20
    jr   nz, jr_002_72FA                          ; $72D3: $20 $25

    ld   a, [wBButtonSlot]                        ; $72D5: $FA $01 $DB
    cp   $03                                      ; $72D8: $FE $03
    jr   z, jr_002_72FA                           ; $72DA: $28 $1E

    ld   a, [wAButtonSlot]                        ; $72DC: $FA $00 $DB
    cp   $03                                      ; $72DF: $FE $03
    jr   z, jr_002_72FA                           ; $72E1: $28 $17

    ld   a, [wHasInstrument2]                     ; $72E3: $FA $66 $DB
    and  $02                                      ; $72E6: $E6 $02
    jr   nz, jr_002_72FA                          ; $72E8: $20 $10

    ld   e, $8D                                   ; $72EA: $1E $8D

jr_002_72EC:
    ld   a, [$C5A6]                               ; $72EC: $FA $A6 $C5
    and  a                                        ; $72EF: $A7
    jr   nz, jr_002_72FA                          ; $72F0: $20 $08

    inc  a                                        ; $72F2: $3C
    ld   [$C5A6], a                               ; $72F3: $EA $A6 $C5
    ld   a, e                                     ; $72F6: $7B
    call func_002_74FE                            ; $72F7: $CD $FE $74

jr_002_72FA:
    ld   a, [$C14A]                               ; $72FA: $FA $4A $C1
    and  a                                        ; $72FD: $A7
    jr   nz, jr_002_7330                          ; $72FE: $20 $30

    ld   a, [wC16A]                               ; $7300: $FA $6A $C1
    cp   $05                                      ; $7303: $FE $05
    jr   nz, jr_002_7330                          ; $7305: $20 $29

    ld   hl, $6E31                                ; $7307: $21 $31 $6E
    add  hl, bc                                   ; $730A: $09
    ldh  a, [hFF9E]                               ; $730B: $F0 $9E
    cp   [hl]                                     ; $730D: $BE
    jp   nz, label_002_7454                       ; $730E: $C2 $54 $74

    ld   a, [$C1C3]                               ; $7311: $FA $C3 $C1
    inc  a                                        ; $7314: $3C
    ld   [$C1C3], a                               ; $7315: $EA $C3 $C1
    cp   $0C                                      ; $7318: $FE $0C
    jp   c, label_002_7454                        ; $731A: $DA $54 $74

    xor  a                                        ; $731D: $AF
    ld   [$C1C3], a                               ; $731E: $EA $C3 $C1
    xor  a                                        ; $7321: $AF
    ld   [wIsUsingSpinAttack], a                  ; $7322: $EA $21 $C1
    ld   [$C122], a                               ; $7325: $EA $22 $C1
    ld   a, $0C                                   ; $7328: $3E $0C
    ld   [wC16D], a                               ; $732A: $EA $6D $C1
    jp   label_002_7454                           ; $732D: $C3 $54 $74

jr_002_7330:
    ld   a, [wIsUsingShield]                      ; $7330: $FA $5B $C1
    and  a                                        ; $7333: $A7
    jr   nz, jr_002_733B                          ; $7334: $20 $05

    ld   a, $03                                   ; $7336: $3E $03
    ld   [$C144], a                               ; $7338: $EA $44 $C1

jr_002_733B:
    ldh  a, [hMapTileset]                         ; $733B: $F0 $F7
    and  a                                        ; $733D: $A7
    ldh  a, [$FFAF]                               ; $733E: $F0 $AF
    jr   z, label_002_73AD                        ; $7340: $28 $6B

    cp   $88                                      ; $7342: $FE $88
    jr   z, jr_002_734F                           ; $7344: $28 $09

    cp   $4E                                      ; $7346: $FE $4E
    jr   z, jr_002_734F                           ; $7348: $28 $05

    cp   $4F                                      ; $734A: $FE $4F
    jp   nz, label_002_73AD                       ; $734C: $C2 $AD $73

jr_002_734F:
    ld   a, [$C14A]                               ; $734F: $FA $4A $C1
    and  a                                        ; $7352: $A7
    jp   z, label_002_7454                        ; $7353: $CA $54 $74

    ldh  a, [$FFDB]                               ; $7356: $F0 $DB
    and  $F0                                      ; $7358: $E6 $F0
    ldh  [$FFCE], a                               ; $735A: $E0 $CE
    ldh  a, [$FFDC]                               ; $735C: $F0 $DC
    and  $F0                                      ; $735E: $E6 $F0
    ldh  [$FFCD], a                               ; $7360: $E0 $CD
    ldh  a, [hFFE9]                               ; $7362: $F0 $E9
    ld   e, a                                     ; $7364: $5F
    ld   d, $00                                   ; $7365: $16 $00
    call label_2178                               ; $7367: $CD $78 $21
    ld   a, $05                                   ; $736A: $3E $05
    call label_3B86                               ; $736C: $CD $86 $3B
    jp   c, label_002_7454                        ; $736F: $DA $54 $74

    ld   hl, wEntity0PosX                         ; $7372: $21 $00 $C2
    add  hl, de                                   ; $7375: $19
    ldh  a, [hFFE9]                               ; $7376: $F0 $E9
    swap a                                        ; $7378: $CB $37
    and  $F0                                      ; $737A: $E6 $F0
    add  $08                                      ; $737C: $C6 $08
    ld   [hl], a                                  ; $737E: $77
    ld   hl, wEntitiesPosYTable                   ; $737F: $21 $10 $C2
    add  hl, de                                   ; $7382: $19
    ldh  a, [hFFE9]                               ; $7383: $F0 $E9
    and  $F0                                      ; $7385: $E6 $F0
    add  $10                                      ; $7387: $C6 $10
    ld   [hl], a                                  ; $7389: $77
    ld   hl, $C3B0                                ; $738A: $21 $B0 $C3
    add  hl, de                                   ; $738D: $19
    ld   [hl], d                                  ; $738E: $72
    ld   hl, hFFF4                                ; $738F: $21 $F4 $FF
    ld   [hl], $09                                ; $7392: $36 $09
    ld   hl, wEntitiesUnknowTableF                ; $7394: $21 $F0 $C2
    add  hl, de                                   ; $7397: $19
    ld   [hl], $0F                                ; $7398: $36 $0F
    ld   hl, $C340                                ; $739A: $21 $40 $C3
    add  hl, de                                   ; $739D: $19
    ld   [hl], $C4                                ; $739E: $36 $C4
    jp   label_002_7461                           ; $73A0: $C3 $61 $74

    dec  [hl]                                     ; $73A3: $35
    ld   b, h                                     ; $73A4: $44
    inc  hl                                       ; $73A5: $23
    inc  d                                        ; $73A6: $14
    daa                                           ; $73A7: $27
    inc  bc                                       ; $73A8: $03
    ld   bc, $0002                                ; $73A9: $01 $02 $00
    ld   [bc], a                                  ; $73AC: $02

label_002_73AD::
    ld   e, $20                                   ; $73AD: $1E $20
    cp   $C5                                      ; $73AF: $FE $C5
    jr   nz, jr_002_741D                          ; $73B1: $20 $6A

    ld   a, [wActiveRoom]                         ; $73B3: $FA $A5 $DB
    and  a                                        ; $73B6: $A7
    jp   nz, label_002_7454                       ; $73B7: $C2 $54 $74

    ldh  a, [hMapIndex]                           ; $73BA: $F0 $F6
    cp   $77                                      ; $73BC: $FE $77
    jr   nz, jr_002_742D                          ; $73BE: $20 $6D

    ld   a, [$DDD9]                               ; $73C0: $FA $D9 $DD
    ldh  a, [hLinkPositionX]                      ; $73C3: $F0 $98
    swap a                                        ; $73C5: $CB $37
    and  $0F                                      ; $73C7: $E6 $0F
    ld   e, a                                     ; $73C9: $5F
    ldh  a, [hLinkPositionY]                      ; $73CA: $F0 $99
    and  $F0                                      ; $73CC: $E6 $F0
    or   e                                        ; $73CE: $B3
    ldh  [$FFD7], a                               ; $73CF: $E0 $D7
    ld   e, $00                                   ; $73D1: $1E $00
    ld   d, e                                     ; $73D3: $53

jr_002_73D4:
    ld   hl, $73A3                                ; $73D4: $21 $A3 $73
    add  hl, de                                   ; $73D7: $19
    ldh  a, [$FFD7]                               ; $73D8: $F0 $D7
    cp   [hl]                                     ; $73DA: $BE
    jr   nz, jr_002_73E6                          ; $73DB: $20 $09

    ldh  a, [hFF9E]                               ; $73DD: $F0 $9E
    ld   hl, $73A8                                ; $73DF: $21 $A8 $73
    add  hl, de                                   ; $73E2: $19
    cp   [hl]                                     ; $73E3: $BE
    jr   z, jr_002_73EE                           ; $73E4: $28 $08

jr_002_73E6:
    inc  de                                       ; $73E6: $13
    ld   a, e                                     ; $73E7: $7B
    cp   $05                                      ; $73E8: $FE $05
    jr   nz, jr_002_73D4                          ; $73EA: $20 $E8

    jr   label_002_7454                           ; $73EC: $18 $66

jr_002_73EE:
    ld   a, e                                     ; $73EE: $7B
    cp   $04                                      ; $73EF: $FE $04
    jr   c, jr_002_742D                           ; $73F1: $38 $3A

    ld   hl, wAButtonSlot                         ; $73F3: $21 $00 $DB

jr_002_73F6:
    ld   a, [hl+]                                 ; $73F6: $2A
    cp   $03                                      ; $73F7: $FE $03
    jr   z, jr_002_7402                           ; $73F9: $28 $07

    ld   a, l                                     ; $73FB: $7D
    cp   $0C                                      ; $73FC: $FE $0C
    jr   nz, jr_002_73F6                          ; $73FE: $20 $F6

    jr   jr_002_7415                              ; $7400: $18 $13

jr_002_7402:
    ld   a, [wIsMarinFollowingLink]               ; $7402: $FA $73 $DB
    ld   hl, wIsGhostFollowingLink                ; $7405: $21 $79 $DB
    or   [hl]                                     ; $7408: $B6
    ld   hl, wIsRoosterFollowingLink              ; $7409: $21 $7B $DB
    or   [hl]                                     ; $740C: $B6
    ld   hl, wIsBowWowFollowingLink               ; $740D: $21 $56 $DB
    or   [hl]                                     ; $7410: $B6
    and  $7F                                      ; $7411: $E6 $7F
    jr   z, jr_002_742D                           ; $7413: $28 $18

jr_002_7415:
    ld   a, $53                                   ; $7415: $3E $53
    call label_237C                               ; $7417: $CD $7C $23
    jp   label_002_7454                           ; $741A: $C3 $54 $74

jr_002_741D:
    ld   a, [wActiveRoom]                         ; $741D: $FA $A5 $DB
    and  a                                        ; $7420: $A7
    jr   z, label_002_7454                        ; $7421: $28 $31

    ldh  a, [$FFAF]                               ; $7423: $F0 $AF
    cp   $DE                                      ; $7425: $FE $DE
    jr   z, jr_002_742F                           ; $7427: $28 $06

    cp   $A7                                      ; $7429: $FE $A7
    jr   nz, label_002_7454                       ; $742B: $20 $27

jr_002_742D:
    ld   e, $40                                   ; $742D: $1E $40

jr_002_742F:
    ld   a, [$C191]                               ; $742F: $FA $91 $C1
    inc  a                                        ; $7432: $3C
    ld   [$C191], a                               ; $7433: $EA $91 $C1
    cp   e                                        ; $7436: $BB
    jr   c, label_002_7454                        ; $7437: $38 $1B

    ld   a, e                                     ; $7439: $7B
    ldh  [hFFE8], a                               ; $743A: $E0 $E8
    xor  a                                        ; $743C: $AF
    ld   [$C191], a                               ; $743D: $EA $91 $C1
    call func_002_53B0                            ; $7440: $CD $B0 $53
    ld   a, [wActiveRoom]                         ; $7443: $FA $A5 $DB
    and  a                                        ; $7446: $A7
    jr   nz, label_002_7454                       ; $7447: $20 $0B

    ldh  a, [hMapIndex]                           ; $7449: $F0 $F6
    cp   $77                                      ; $744B: $FE $77
    jr   nz, label_002_7454                       ; $744D: $20 $05

    ld   a, $02                                   ; $744F: $3E $02
    call label_9C8                                ; $7451: $CD $C8 $09

label_002_7454::
    ld   hl, $6E29                                ; $7454: $21 $29 $6E
    add  hl, bc                                   ; $7457: $09
    ld   a, [$C133]                               ; $7458: $FA $33 $C1
    or   [hl]                                     ; $745B: $B6
    ld   [$C133], a                               ; $745C: $EA $33 $C1
    scf                                           ; $745F: $37
    ret                                           ; $7460: $C9

label_002_7461::
    xor  a                                        ; $7461: $AF
    ld   [$C191], a                               ; $7462: $EA $91 $C1
    scf                                           ; $7465: $37
    ccf                                           ; $7466: $3F
    ret                                           ; $7467: $C9

func_002_7468::
    ldh  a, [$FFAF]                               ; $7468: $F0 $AF
    cp   $B1                                      ; $746A: $FE $B1
    jr   z, jr_002_7472                           ; $746C: $28 $04

    cp   $B2                                      ; $746E: $FE $B2
    jr   nz, jr_002_7493                          ; $7470: $20 $21

jr_002_7472:
    ldh  a, [$FFDC]                               ; $7472: $F0 $DC
    and  $0F                                      ; $7474: $E6 $0F
    cp   $06                                      ; $7476: $FE $06
    jr   nc, jr_002_74AC                          ; $7478: $30 $32

    ld   a, $0C                                   ; $747A: $3E $0C
    ldh  [$FFF2], a                               ; $747C: $E0 $F2
    ld   a, $05                                   ; $747E: $3E $05
    ld   [wLinkMotionState], a                    ; $7480: $EA $1C $C1
    call label_178E                               ; $7483: $CD $8E $17
    ld   [$DBC7], a                               ; $7486: $EA $C7 $DB
    ld   [$C198], a                               ; $7489: $EA $98 $C1
    ldh  [$FFA2], a                               ; $748C: $E0 $A2
    ldh  [$FFA3], a                               ; $748E: $E0 $A3
    jp   label_CAF                                ; $7490: $C3 $AF $0C

jr_002_7493:
    cp   $C1                                      ; $7493: $FE $C1
    jr   z, jr_002_74A3                           ; $7495: $28 $0C

    cp   $C2                                      ; $7497: $FE $C2
    jr   z, jr_002_74A3                           ; $7499: $28 $08

    cp   $BB                                      ; $749B: $FE $BB
    jr   z, jr_002_74A3                           ; $749D: $28 $04

    cp   $BC                                      ; $749F: $FE $BC
    jr   nz, jr_002_74AC                          ; $74A1: $20 $09

jr_002_74A3:
    ldh  a, [$FFDC]                               ; $74A3: $F0 $DC
    and  $0F                                      ; $74A5: $E6 $0F
    cp   $0C                                      ; $74A7: $FE $0C
    jp   nc, label_C7D                            ; $74A9: $D2 $7D $0C

jr_002_74AC:
    ret                                           ; $74AC: $C9

label_002_74AD::
    ld   a, [$C14A]                               ; $74AD: $FA $4A $C1
    and  a                                        ; $74B0: $A7
    ret  z                                        ; $74B1: $C8

    ld   a, [wCurrentBank]                        ; $74B2: $FA $AF $DB
    cp   $02                                      ; $74B5: $FE $02
    ret  nz                                       ; $74B7: $C0

    ld   a, [$C133]                               ; $74B8: $FA $33 $C1
    and  $03                                      ; $74BB: $E6 $03
    cp   $03                                      ; $74BD: $FE $03
    jr   z, jr_002_74C9                           ; $74BF: $28 $08

    ld   a, [$C133]                               ; $74C1: $FA $33 $C1
    and  $0C                                      ; $74C4: $E6 $0C
    cp   $0C                                      ; $74C6: $FE $0C
    ret  nz                                       ; $74C8: $C0

jr_002_74C9:
    call label_CAF                                ; $74C9: $CD $AF $0C
    ldh  a, [hFF9A]                               ; $74CC: $F0 $9A
    cpl                                           ; $74CE: $2F
    inc  a                                        ; $74CF: $3C
    sra  a                                        ; $74D0: $CB $2F
    sra  a                                        ; $74D2: $CB $2F
    ldh  [hFF9A], a                               ; $74D4: $E0 $9A
    ldh  a, [$FF9B]                               ; $74D6: $F0 $9B
    cpl                                           ; $74D8: $2F
    inc  a                                        ; $74D9: $3C
    sra  a                                        ; $74DA: $CB $2F
    sra  a                                        ; $74DC: $CB $2F
    ldh  [$FF9B], a                               ; $74DE: $E0 $9B
    ld   a, $18                                   ; $74E0: $3E $18
    ldh  [$FFA3], a                               ; $74E2: $E0 $A3
    ld   a, $02                                   ; $74E4: $3E $02
    ld   [$C146], a                               ; $74E6: $EA $46 $C1
    ld   a, $20                                   ; $74E9: $3E $20
    ld   [$C157], a                               ; $74EB: $EA $57 $C1
    ldh  a, [hFF9E]                               ; $74EE: $F0 $9E
    and  $02                                      ; $74F0: $E6 $02
    sla  a                                        ; $74F2: $CB $27
    ld   [$C158], a                               ; $74F4: $EA $58 $C1
    ld   a, $0B                                   ; $74F7: $3E $0B
    ldh  [$FFF2], a                               ; $74F9: $E0 $F2
    jp   $1828                                    ; $74FB: $C3 $28 $18

func_002_74FE::
    call label_2385                               ; $74FE: $CD $85 $23
    jp   label_178E                               ; $7501: $C3 $8E $17

func_002_7504::
    call label_237C                               ; $7504: $CD $7C $23
    jp   label_178E                               ; $7507: $C3 $8E $17

    ld   [$00F8], sp                              ; $750A: $08 $F8 $00
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    nop                                           ; $750F: $00
    ld   hl, sp+$08                               ; $7510: $F8 $08

func_002_7512::
    ldh  a, [hLinkPositionX]                      ; $7512: $F0 $98
    and  $F0                                      ; $7514: $E6 $F0
    ldh  [$FFD7], a                               ; $7516: $E0 $D7
    swap a                                        ; $7518: $CB $37
    ld   e, a                                     ; $751A: $5F
    ldh  a, [hLinkPositionY]                      ; $751B: $F0 $99
    sub  $04                                      ; $751D: $D6 $04
    and  $F0                                      ; $751F: $E6 $F0
    ldh  [$FFD8], a                               ; $7521: $E0 $D8
    or   e                                        ; $7523: $B3
    ld   e, a                                     ; $7524: $5F
    ldh  [$FFFA], a                               ; $7525: $E0 $FA
    ld   d, $00                                   ; $7527: $16 $00
    ld   hl, wTileMap                             ; $7529: $21 $11 $D7
    ld   a, h                                     ; $752C: $7C
    add  hl, de                                   ; $752D: $19
    ld   h, a                                     ; $752E: $67
    ld   a, [wActiveRoom]                         ; $752F: $FA $A5 $DB
    ld   d, a                                     ; $7532: $57
    ld   a, [hl]                                  ; $7533: $7E
    ldh  [$FFB8], a                               ; $7534: $E0 $B8
    ldh  [$FFAF], a                               ; $7536: $E0 $AF
    ld   e, a                                     ; $7538: $5F
    ret                                           ; $7539: $C9

func_002_753A::
    ld   a, [wLinkMotionState]                    ; $753A: $FA $1C $C1
    cp   $01                                      ; $753D: $FE $01
    jr   nz, jr_002_7549                          ; $753F: $20 $08

    ld   a, [$C13B]                               ; $7541: $FA $3B $C1
    add  $04                                      ; $7544: $C6 $04
    ld   [$C13B], a                               ; $7546: $EA $3B $C1

jr_002_7549:
    ld   a, [$C1A4]                               ; $7549: $FA $A4 $C1
    and  a                                        ; $754C: $A7
    jr   z, jr_002_7587                           ; $754D: $28 $38

    ld   hl, $C146                                ; $754F: $21 $46 $C1
    ld   a, [$C14A]                               ; $7552: $FA $4A $C1
    or   [hl]                                     ; $7555: $B6
    jr   nz, func_002_755B                        ; $7556: $20 $03

    call label_178E                               ; $7558: $CD $8E $17

func_002_755B::
    call func_002_7512                            ; $755B: $CD $12 $75
    ld   c, $04                                   ; $755E: $0E $04
    ld   a, [$D463]                               ; $7560: $FA $63 $D4
    cp   $01                                      ; $7563: $FE $01
    jr   z, jr_002_7582                           ; $7565: $28 $1B

    ld   c, $FC                                   ; $7567: $0E $FC
    ld   a, [$D6F9]                               ; $7569: $FA $F9 $D6
    and  a                                        ; $756C: $A7
    jr   nz, jr_002_7582                          ; $756D: $20 $13

    call label_2A26                               ; $756F: $CD $26 $2A
    ld   c, $02                                   ; $7572: $0E $02
    cp   $05                                      ; $7574: $FE $05
    jr   z, jr_002_7582                           ; $7576: $28 $0A

    cp   $09                                      ; $7578: $FE $09
    jr   z, jr_002_7582                           ; $757A: $28 $06

    cp   $08                                      ; $757C: $FE $08
    jr   nz, jr_002_7586                          ; $757E: $20 $06

    ld   c, $FD                                   ; $7580: $0E $FD

jr_002_7582:
    ld   a, c                                     ; $7582: $79
    ld   [$C13B], a                               ; $7583: $EA $3B $C1

jr_002_7586:
    ret                                           ; $7586: $C9

jr_002_7587:
    ldh  a, [$FFFA]                               ; $7587: $F0 $FA
    ldh  [$FFFB], a                               ; $7589: $E0 $FB
    ld   a, [wFreeMovementMode]                   ; $758B: $FA $7B $C1
    and  a                                        ; $758E: $A7
    ret  nz                                       ; $758F: $C0

    ldh  a, [$FFA2]                               ; $7590: $F0 $A2
    and  a                                        ; $7592: $A7
    jr   z, jr_002_75B2                           ; $7593: $28 $1D

    ldh  a, [hFrameCounter]                       ; $7595: $F0 $E7
    and  $01                                      ; $7597: $E6 $01
    jr   nz, jr_002_75B1                          ; $7599: $20 $16

    ld   hl, wOAMBuffer                           ; $759B: $21 $00 $C0
    ldh  a, [hLinkPositionY]                      ; $759E: $F0 $99
    add  $0B                                      ; $75A0: $C6 $0B
    cp   $88                                      ; $75A2: $FE $88
    jr   nc, jr_002_75B1                          ; $75A4: $30 $0B

    ld   [hl+], a                                 ; $75A6: $22
    ldh  a, [hLinkPositionX]                      ; $75A7: $F0 $98
    add  $04                                      ; $75A9: $C6 $04
    ld   [hl+], a                                 ; $75AB: $22
    ld   a, $26                                   ; $75AC: $3E $26
    ld   [hl+], a                                 ; $75AE: $22
    ld   [hl], $00                                ; $75AF: $36 $00

jr_002_75B1:
    ret                                           ; $75B1: $C9

jr_002_75B2:
    xor  a                                        ; $75B2: $AF
    ld   [$D475], a                               ; $75B3: $EA $75 $D4
    ld   a, [wLinkMotionState]                    ; $75B6: $FA $1C $C1
    cp   $02                                      ; $75B9: $FE $02
    jr   z, jr_002_75B1                           ; $75BB: $28 $F4

func_002_75BD::
    ld   a, [wMapSlideTransitionState]            ; $75BD: $FA $24 $C1
    ld   hl, wDialogState                         ; $75C0: $21 $9F $C1
    or   [hl]                                     ; $75C3: $B6
    jp   nz, label_002_76C0                       ; $75C4: $C2 $C0 $76

    call func_002_7512                            ; $75C7: $CD $12 $75
    ld   c, a                                     ; $75CA: $4F
    ld   a, [wActiveRoom]                         ; $75CB: $FA $A5 $DB
    and  a                                        ; $75CE: $A7
    jr   nz, jr_002_75D9                          ; $75CF: $20 $08

    ld   a, c                                     ; $75D1: $79
    cp   $61                                      ; $75D2: $FE $61
    jp   z, label_002_76AA                        ; $75D4: $CA $AA $76

    jr   jr_002_75E7                              ; $75D7: $18 $0E

jr_002_75D9:
    ld   a, c                                     ; $75D9: $79
    cp   $4C                                      ; $75DA: $FE $4C
    jr   nz, jr_002_75E7                          ; $75DC: $20 $09

    ldh  a, [hLinkPositionY]                      ; $75DE: $F0 $99
    dec  a                                        ; $75E0: $3D
    and  $0F                                      ; $75E1: $E6 $0F
    cp   $0C                                      ; $75E3: $FE $0C
    jr   nc, func_002_75F5                        ; $75E5: $30 $0E

jr_002_75E7:
    call label_2A26                               ; $75E7: $CD $26 $2A
    ld   [$C181], a                               ; $75EA: $EA $81 $C1
    and  a                                        ; $75ED: $A7
    jp   z, label_002_77A2                        ; $75EE: $CA $A2 $77

    cp   $E0                                      ; $75F1: $FE $E0
    jr   nz, jr_002_7635                          ; $75F3: $20 $40

func_002_75F5::
    ld   a, [$DBC7]                               ; $75F5: $FA $C7 $DB
    and  a                                        ; $75F8: $A7
    jr   nz, jr_002_7634                          ; $75F9: $20 $39

    call label_CAF                                ; $75FB: $CD $AF $0C
    ldh  a, [hFF9A]                               ; $75FE: $F0 $9A
    cpl                                           ; $7600: $2F
    inc  a                                        ; $7601: $3C
    ldh  [hFF9A], a                               ; $7602: $E0 $9A
    ldh  a, [$FF9B]                               ; $7604: $F0 $9B
    cpl                                           ; $7606: $2F
    inc  a                                        ; $7607: $3C
    ldh  [$FF9B], a                               ; $7608: $E0 $9B
    ld   a, $02                                   ; $760A: $3E $02
    ld   [$C146], a                               ; $760C: $EA $46 $C1
    ldh  a, [$FFF9]                               ; $760F: $F0 $F9
    and  a                                        ; $7611: $A7
    jr   nz, jr_002_761E                          ; $7612: $20 $0A

    ld   a, $10                                   ; $7614: $3E $10
    ldh  [$FFA3], a                               ; $7616: $E0 $A3
    ldh  a, [$FFA2]                               ; $7618: $F0 $A2
    add  $02                                      ; $761A: $C6 $02
    ldh  [$FFA2], a                               ; $761C: $E0 $A2

jr_002_761E:
    ld   a, $10                                   ; $761E: $3E $10
    ld   [$C13E], a                               ; $7620: $EA $3E $C1
    ld   a, $30                                   ; $7623: $3E $30
    ld   [$DBC7], a                               ; $7625: $EA $C7 $DB
    ld   a, [wDB94]                               ; $7628: $FA $94 $DB
    add  $04                                      ; $762B: $C6 $04
    ld   [wDB94], a                               ; $762D: $EA $94 $DB
    ld   a, $03                                   ; $7630: $3E $03
    ldh  [hSFX], a                                ; $7632: $E0 $F3

jr_002_7634:
    ret                                           ; $7634: $C9

jr_002_7635:
    ld   a, [$C181]                               ; $7635: $FA $81 $C1
    cp   $FF                                      ; $7638: $FE $FF
    jp   z, label_002_77A2                        ; $763A: $CA $A2 $77

    cp   $F0                                      ; $763D: $FE $F0
    jr   c, jr_002_7644                           ; $763F: $38 $03

    jp   label_002_7C14                           ; $7641: $C3 $14 $7C

jr_002_7644:
    cp   $51                                      ; $7644: $FE $51
    jr   z, jr_002_764C                           ; $7646: $28 $04

    cp   $50                                      ; $7648: $FE $50
    jr   nz, label_002_76C0                       ; $764A: $20 $74

jr_002_764C:
    call label_CAF                                ; $764C: $CD $AF $0C
    ld   a, $07                                   ; $764F: $3E $07
    ld   [wC11F], a                               ; $7651: $EA $1F $C1
    ld   hl, $C1BB                                ; $7654: $21 $BB $C1
    inc  [hl]                                     ; $7657: $34
    ld   hl, wFreeMovementMode                    ; $7658: $21 $7B $C1
    ldh  a, [hFrameCounter]                       ; $765B: $F0 $E7
    and  $03                                      ; $765D: $E6 $03
    or   [hl]                                     ; $765F: $B6
    jr   nz, jr_002_76BF                          ; $7660: $20 $5D

    ldh  a, [hLinkPositionX]                      ; $7662: $F0 $98
    sub  $08                                      ; $7664: $D6 $08
    ld   hl, $FFD7                                ; $7666: $21 $D7 $FF
    sub  [hl]                                     ; $7669: $96
    bit  7, a                                     ; $766A: $CB $7F
    ld   a, $FF                                   ; $766C: $3E $FF
    jr   z, jr_002_7672                           ; $766E: $28 $02

    ld   a, $01                                   ; $7670: $3E $01

jr_002_7672:
    ld   hl, hLinkPositionX                       ; $7672: $21 $98 $FF
    add  [hl]                                     ; $7675: $86
    ld   [hl], a                                  ; $7676: $77
    ldh  a, [$FFD8]                               ; $7677: $F0 $D8
    add  $10                                      ; $7679: $C6 $10
    ld   hl, hLinkPositionY                       ; $767B: $21 $99 $FF
    sub  [hl]                                     ; $767E: $96
    bit  7, a                                     ; $767F: $CB $7F
    ld   a, $FF                                   ; $7681: $3E $FF
    jr   nz, jr_002_7687                          ; $7683: $20 $02

    ld   a, $01                                   ; $7685: $3E $01

jr_002_7687:
    ld   hl, hLinkPositionY                       ; $7687: $21 $99 $FF
    add  [hl]                                     ; $768A: $86
    ld   [hl], a                                  ; $768B: $77
    ldh  a, [hLinkPositionX]                      ; $768C: $F0 $98
    sub  $08                                      ; $768E: $D6 $08
    add  $02                                      ; $7690: $C6 $02
    and  $0F                                      ; $7692: $E6 $0F
    cp   $04                                      ; $7694: $FE $04
    jr   nc, jr_002_76BF                          ; $7696: $30 $27

    ldh  a, [hLinkPositionY]                      ; $7698: $F0 $99
    sub  $10                                      ; $769A: $D6 $10
    add  $02                                      ; $769C: $C6 $02
    and  $0F                                      ; $769E: $E6 $0F
    cp   $04                                      ; $76A0: $FE $04
    jr   nc, jr_002_76BF                          ; $76A2: $30 $1B

    ldh  a, [hLinkPositionY]                      ; $76A4: $F0 $99
    add  $03                                      ; $76A6: $C6 $03
    ldh  [hLinkPositionY], a                      ; $76A8: $E0 $99

label_002_76AA::
    ld   a, $06                                   ; $76AA: $3E $06
    ld   [wLinkMotionState], a                    ; $76AC: $EA $1C $C1
    call label_CAF                                ; $76AF: $CD $AF $0C
    ld   [$C198], a                               ; $76B2: $EA $98 $C1
    ld   a, [$C181]                               ; $76B5: $FA $81 $C1
    ld   [$DBCB], a                               ; $76B8: $EA $CB $DB
    ld   a, $0C                                   ; $76BB: $3E $0C
    ldh  [hSFX], a                                ; $76BD: $E0 $F3

jr_002_76BF:
    ret                                           ; $76BF: $C9

label_002_76C0::
    ld   hl, wOAMBuffer                           ; $76C0: $21 $00 $C0
    ld   a, [$C181]                               ; $76C3: $FA $81 $C1
    cp   $08                                      ; $76C6: $FE $08
    jr   nz, jr_002_76D5                          ; $76C8: $20 $0B

    ld   a, [$C13B]                               ; $76CA: $FA $3B $C1
    add  $FD                                      ; $76CD: $C6 $FD
    ld   [$C13B], a                               ; $76CF: $EA $3B $C1
    jp   label_002_77A2                           ; $76D2: $C3 $A2 $77

jr_002_76D5:
    cp   $09                                      ; $76D5: $FE $09
    jr   nz, jr_002_76E4                          ; $76D7: $20 $0B

    ld   a, [$C13B]                               ; $76D9: $FA $3B $C1
    add  $02                                      ; $76DC: $C6 $02
    ld   [$C13B], a                               ; $76DE: $EA $3B $C1
    jp   label_002_77A2                           ; $76E1: $C3 $A2 $77

jr_002_76E4:
    cp   $0B                                      ; $76E4: $FE $0B
    jr   z, jr_002_76EC                           ; $76E6: $28 $04

    cp   $07                                      ; $76E8: $FE $07
    jr   nz, jr_002_7750                          ; $76EA: $20 $64

jr_002_76EC:
    ldh  a, [$FFB2]                               ; $76EC: $F0 $B2
    and  a                                        ; $76EE: $A7
    jr   z, jr_002_76F4                           ; $76EF: $28 $03

    jp   label_002_7C50                           ; $76F1: $C3 $50 $7C

jr_002_76F4:
    ld   a, [$C1AD]                               ; $76F4: $FA $AD $C1
    cp   $80                                      ; $76F7: $FE $80
    jr   z, jr_002_7750                           ; $76F9: $28 $55

    ld   a, [wLinkMotionState]                    ; $76FB: $FA $1C $C1
    cp   $08                                      ; $76FE: $FE $08
    jr   z, jr_002_774F                           ; $7700: $28 $4D

    cp   $01                                      ; $7702: $FE $01
    jr   z, jr_002_774F                           ; $7704: $28 $49

    ldh  a, [hLinkPositionY]                      ; $7706: $F0 $99
    add  $FE                                      ; $7708: $C6 $FE
    call func_002_5928                            ; $770A: $CD $28 $59
    ldh  a, [$FFAF]                               ; $770D: $F0 $AF
    cp   $06                                      ; $770F: $FE $06
    jr   z, label_002_7719                        ; $7711: $28 $06

    ld   a, [wHasFlippers]                        ; $7713: $FA $0C $DB
    and  a                                        ; $7716: $A7
    jr   nz, jr_002_7732                          ; $7717: $20 $19

label_002_7719::
    ld   a, $50                                   ; $7719: $3E $50
    ldh  [$FFB7], a                               ; $771B: $E0 $B7
    ld   a, $08                                   ; $771D: $3E $08
    ld   [wLinkMotionState], a                    ; $771F: $EA $1C $C1
    ldh  a, [$FFAF]                               ; $7722: $F0 $AF
    ldh  [$FF9C], a                               ; $7724: $E0 $9C
    ldh  a, [hLinkPositionY]                      ; $7726: $F0 $99
    add  $02                                      ; $7728: $C6 $02
    ldh  [hLinkPositionY], a                      ; $772A: $E0 $99
    ld   a, $01                                   ; $772C: $3E $01
    ld   [wC167], a                               ; $772E: $EA $67 $C1
    ret                                           ; $7731: $C9

jr_002_7732:
    ld   a, $01                                   ; $7732: $3E $01
    ld   [wLinkMotionState], a                    ; $7734: $EA $1C $C1
    xor  a                                        ; $7737: $AF
    ldh  [$FF9C], a                               ; $7738: $E0 $9C
    call label_178E                               ; $773A: $CD $8E $17
    ldh  a, [hFF9E]                               ; $773D: $F0 $9E
    ld   e, a                                     ; $773F: $5F
    ld   d, b                                     ; $7740: $50
    ld   hl, $750A                                ; $7741: $21 $0A $75
    add  hl, de                                   ; $7744: $19
    ld   a, [hl]                                  ; $7745: $7E
    ldh  [hFF9A], a                               ; $7746: $E0 $9A
    ld   hl, $750E                                ; $7748: $21 $0E $75
    add  hl, de                                   ; $774B: $19
    ld   a, [hl]                                  ; $774C: $7E
    ldh  [$FF9B], a                               ; $774D: $E0 $9B

jr_002_774F:
    ret                                           ; $774F: $C9

jr_002_7750:
    cp   $06                                      ; $7750: $FE $06
    jp   z, label_002_787D                        ; $7752: $CA $7D $78

    cp   $05                                      ; $7755: $FE $05
    jr   nz, label_002_77A2                       ; $7757: $20 $49

    ldh  a, [hLinkPositionY]                      ; $7759: $F0 $99
    add  $0C                                      ; $775B: $C6 $0C
    ld   [hl+], a                                 ; $775D: $22
    ldh  a, [hLinkPositionX]                      ; $775E: $F0 $98
    add  $00                                      ; $7760: $C6 $00
    ld   [hl+], a                                 ; $7762: $22
    ld   a, $1C                                   ; $7763: $3E $1C
    ld   [hl+], a                                 ; $7765: $22
    ldh  a, [hFrameCounter]                       ; $7766: $F0 $E7
    rla                                           ; $7768: $17
    rla                                           ; $7769: $17
    and  $10                                      ; $776A: $E6 $10
    push af                                       ; $776C: $F5
    ld   [hl+], a                                 ; $776D: $22
    ldh  a, [hLinkPositionY]                      ; $776E: $F0 $99
    add  $0C                                      ; $7770: $C6 $0C
    ld   [hl+], a                                 ; $7772: $22
    ldh  a, [hLinkPositionX]                      ; $7773: $F0 $98
    add  $08                                      ; $7775: $C6 $08
    ld   [hl+], a                                 ; $7777: $22
    ld   a, $1C                                   ; $7778: $3E $1C
    ld   [hl+], a                                 ; $777A: $22
    pop  af                                       ; $777B: $F1
    or   $20                                      ; $777C: $F6 $20
    ld   [hl], a                                  ; $777E: $77
    ld   a, $03                                   ; $777F: $3E $03
    ld   [wC11F], a                               ; $7781: $EA $1F $C1
    ldh  a, [hFrameCounter]                       ; $7784: $F0 $E7
    and  $0F                                      ; $7786: $E6 $0F
    jr   nz, jr_002_779A                          ; $7788: $20 $10

    ldh  a, [hPressedButtonsMask]                 ; $778A: $F0 $CB
    and  $0F                                      ; $778C: $E6 $0F
    jr   z, jr_002_779A                           ; $778E: $28 $0A

    ld   a, [wDialogState]                        ; $7790: $FA $9F $C1
    and  a                                        ; $7793: $A7
    jr   nz, jr_002_779A                          ; $7794: $20 $04

    ld   a, $0E                                   ; $7796: $3E $0E
    ldh  [$FFF2], a                               ; $7798: $E0 $F2

jr_002_779A:
    ld   a, [$C13B]                               ; $779A: $FA $3B $C1
    add  $02                                      ; $779D: $C6 $02
    ld   [$C13B], a                               ; $779F: $EA $3B $C1

label_002_77A2::
    xor  a                                        ; $77A2: $AF
    ld   [$C1BB], a                               ; $77A3: $EA $BB $C1
    ld   a, [wLinkMotionState]                    ; $77A6: $FA $1C $C1
    cp   $01                                      ; $77A9: $FE $01
    jr   nz, jr_002_77B2                          ; $77AB: $20 $05

    ld   a, $00                                   ; $77AD: $3E $00
    ld   [wLinkMotionState], a                    ; $77AF: $EA $1C $C1

jr_002_77B2:
    ld   a, [$C181]                               ; $77B2: $FA $81 $C1
    cp   $04                                      ; $77B5: $FE $04
    jr   nz, jr_002_77E9                          ; $77B7: $20 $30

    ldh  a, [$FFAF]                               ; $77B9: $F0 $AF
    cp   $DB                                      ; $77BB: $FE $DB
    jr   c, jr_002_77E9                           ; $77BD: $38 $2A

    cp   $DD                                      ; $77BF: $FE $DD
    jr   nc, jr_002_77E9                          ; $77C1: $30 $26

    sub  $DB                                      ; $77C3: $D6 $DB
    ld   e, a                                     ; $77C5: $5F
    ld   d, $00                                   ; $77C6: $16 $00
    ld   hl, $787B                                ; $77C8: $21 $7B $78
    add  hl, de                                   ; $77CB: $19
    ld   a, [$D6FB]                               ; $77CC: $FA $FB $D6
    xor  [hl]                                     ; $77CF: $AE
    jr   z, jr_002_77E9                           ; $77D0: $28 $17

    ld   a, [$D6F8]                               ; $77D2: $FA $F8 $D6
    ld   e, a                                     ; $77D5: $5F
    ld   d, $00                                   ; $77D6: $16 $00
    ld   hl, Data_002_786F                        ; $77D8: $21 $6F $78
    add  hl, de                                   ; $77DB: $19
    ld   a, [$C13B]                               ; $77DC: $FA $3B $C1
    add  [hl]                                     ; $77DF: $86
    ld   [$C13B], a                               ; $77E0: $EA $3B $C1
    ld   a, $01                                   ; $77E3: $3E $01
    ld   [$D6F9], a                               ; $77E5: $EA $F9 $D6
    ret                                           ; $77E8: $C9

jr_002_77E9:
    ld   a, [$D6F9]                               ; $77E9: $FA $F9 $D6
    and  a                                        ; $77EC: $A7
    jr   z, jr_002_77F7                           ; $77ED: $28 $08

    ld   a, $07                                   ; $77EF: $3E $07
    ldh  [hFFF4], a                               ; $77F1: $E0 $F4
    xor  a                                        ; $77F3: $AF
    ld   [$D6F9], a                               ; $77F4: $EA $F9 $D6

jr_002_77F7:
    ld   a, [wActiveRoom]                         ; $77F7: $FA $A5 $DB
    and  a                                        ; $77FA: $A7
    jp   z, label_002_786E                        ; $77FB: $CA $6E $78

    ld   a, [wMapSlideTransitionState]            ; $77FE: $FA $24 $C1
    and  a                                        ; $7801: $A7
    jr   nz, label_002_786E                       ; $7802: $20 $6A

    ldh  a, [$FFAF]                               ; $7804: $F0 $AF
    cp   $AA                                      ; $7806: $FE $AA
    jr   nz, jr_002_783C                          ; $7808: $20 $32

    ld   a, [$C1CB]                               ; $780A: $FA $CB $C1
    and  a                                        ; $780D: $A7
    jr   nz, jr_002_783C                          ; $780E: $20 $2C

    ld   a, [$C1CA]                               ; $7810: $FA $CA $C1
    inc  a                                        ; $7813: $3C
    ld   [$C1CA], a                               ; $7814: $EA $CA $C1
    cp   $18                                      ; $7817: $FE $18
    jr   nz, jr_002_7833                          ; $7819: $20 $18

    ld   a, $60                                   ; $781B: $3E $60
    ld   [$C1CB], a                               ; $781D: $EA $CB $C1
    ld   a, $0E                                   ; $7820: $3E $0E
    ldh  [hSFX], a                                ; $7822: $E0 $F3
    ld   a, $03                                   ; $7824: $3E $03
    ldh  [$FFA5], a                               ; $7826: $E0 $A5
    ldh  a, [hMapIndex]                           ; $7828: $F0 $F6
    cp   $C3                                      ; $782A: $FE $C3
    jr   nz, jr_002_7833                          ; $782C: $20 $05

    ld   hl, $D879                                ; $782E: $21 $79 $D8
    set  4, [hl]                                  ; $7831: $CB $E6

jr_002_7833:
    ld   a, [$C13B]                               ; $7833: $FA $3B $C1
    add  $FD                                      ; $7836: $C6 $FD
    ld   [$C13B], a                               ; $7838: $EA $3B $C1
    ret                                           ; $783B: $C9

jr_002_783C:
    xor  a                                        ; $783C: $AF
    ld   [$C1CA], a                               ; $783D: $EA $CA $C1
    ldh  a, [$FFFA]                               ; $7840: $F0 $FA
    ld   hl, $FFFB                                ; $7842: $21 $FB $FF
    cp   [hl]                                     ; $7845: $BE
    ld   hl, $C1C9                                ; $7846: $21 $C9 $C1
    jr   nz, jr_002_786C                          ; $7849: $20 $21

    ldh  a, [$FFAF]                               ; $784B: $F0 $AF
    cp   $DF                                      ; $784D: $FE $DF
    jr   nz, jr_002_786C                          ; $784F: $20 $1B

    ldh  a, [$FFA1]                               ; $7851: $F0 $A1
    ld   e, a                                     ; $7853: $5F
    ld   a, [$C1A9]                               ; $7854: $FA $A9 $C1
    ld   d, a                                     ; $7857: $57
    ld   a, [wDialogState]                        ; $7858: $FA $9F $C1
    or   e                                        ; $785B: $B3
    or   d                                        ; $785C: $B2
    jr   nz, jr_002_786C                          ; $785D: $20 $0D

    inc  [hl]                                     ; $785F: $34
    ld   a, [hl]                                  ; $7860: $7E
    cp   $28                                      ; $7861: $FE $28
    jr   c, label_002_786E                        ; $7863: $38 $09

    ld   a, $2B                                   ; $7865: $3E $2B
    ldh  [hFFF4], a                               ; $7867: $E0 $F4
    jp   label_002_4D97                           ; $7869: $C3 $97 $4D

jr_002_786C:
    ld   [hl], $00                                ; $786C: $36 $00

label_002_786E::
    ret                                           ; $786E: $C9

Data_002_786F::
    db   $FC, $FF, $FF, $FE, $FE, $FE, $FD, $FD, $FD, $FC, $FC, $FC, $00, $02

label_002_787D::
    ldh  a, [hLinkPositionY]                      ; $787D: $F0 $99
    add  $08                                      ; $787F: $C6 $08
    ld   [hl+], a                                 ; $7881: $22
    ldh  a, [hLinkPositionX]                      ; $7882: $F0 $98
    add  $FF                                      ; $7884: $C6 $FF
    ld   [hl+], a                                 ; $7886: $22
    ld   a, $1A                                   ; $7887: $3E $1A
    ld   [hl+], a                                 ; $7889: $22
    ld   a, [wC120]                               ; $788A: $FA $20 $C1
    rla                                           ; $788D: $17
    rla                                           ; $788E: $17
    and  $20                                      ; $788F: $E6 $20
    push af                                       ; $7891: $F5
    push af                                       ; $7892: $F5
    ldh  a, [hIsGBC]                              ; $7893: $F0 $FE
    and  a                                        ; $7895: $A7
    jr   z, jr_002_78A9                           ; $7896: $28 $11

    ld   a, [wActiveRoom]                         ; $7898: $FA $A5 $DB
    and  a                                        ; $789B: $A7
    jr   nz, jr_002_78A9                          ; $789C: $20 $0B

    ldh  a, [hMapIndex]                           ; $789E: $F0 $F6
    cp   $32                                      ; $78A0: $FE $32
    jr   nz, jr_002_78A9                          ; $78A2: $20 $05

    pop  af                                       ; $78A4: $F1
    or   $06                                      ; $78A5: $F6 $06
    jr   jr_002_78AA                              ; $78A7: $18 $01

jr_002_78A9:
    pop  af                                       ; $78A9: $F1

jr_002_78AA:
    ld   [hl+], a                                 ; $78AA: $22
    ldh  a, [hLinkPositionY]                      ; $78AB: $F0 $99
    add  $08                                      ; $78AD: $C6 $08
    ld   [hl+], a                                 ; $78AF: $22
    ldh  a, [hLinkPositionX]                      ; $78B0: $F0 $98
    add  $07                                      ; $78B2: $C6 $07
    ld   [hl+], a                                 ; $78B4: $22
    ld   a, $1A                                   ; $78B5: $3E $1A
    ld   [hl+], a                                 ; $78B7: $22
    ldh  a, [hIsGBC]                              ; $78B8: $F0 $FE
    and  a                                        ; $78BA: $A7
    jr   z, jr_002_78CE                           ; $78BB: $28 $11

    ld   a, [wActiveRoom]                         ; $78BD: $FA $A5 $DB
    and  a                                        ; $78C0: $A7
    jr   nz, jr_002_78CE                          ; $78C1: $20 $0B

    ldh  a, [hMapIndex]                           ; $78C3: $F0 $F6
    cp   $32                                      ; $78C5: $FE $32
    jr   nz, jr_002_78CE                          ; $78C7: $20 $05

    pop  af                                       ; $78C9: $F1
    or   $06                                      ; $78CA: $F6 $06
    jr   jr_002_78CF                              ; $78CC: $18 $01

jr_002_78CE:
    pop  af                                       ; $78CE: $F1

jr_002_78CF:
    xor  $20                                      ; $78CF: $EE $20
    ld   [hl], a                                  ; $78D1: $77
    ld   a, $03                                   ; $78D2: $3E $03
    ld   [wC11F], a                               ; $78D4: $EA $1F $C1
    ret                                           ; $78D7: $C9

    add  $3A                                      ; $78D8: $C6 $3A
    nop                                           ; $78DA: $00
    nop                                           ; $78DB: $00
    nop                                           ; $78DC: $00
    nop                                           ; $78DD: $00
    ld   a, [hl-]                                 ; $78DE: $3A
    add  $04                                      ; $78DF: $C6 $04
    db   $fc                                      ; $78E1: $FC
    nop                                           ; $78E2: $00
    nop                                           ; $78E3: $00
    nop                                           ; $78E4: $00
    nop                                           ; $78E5: $00
    db   $fc                                      ; $78E6: $FC
    inc  b                                        ; $78E7: $04

label_002_78E8::
    ld   a, [wMapSlideTransitionState]            ; $78E8: $FA $24 $C1
    cp   $00                                      ; $78EB: $FE $00
    jp   z, label_002_79D9                        ; $78ED: $CA $D9 $79

    push af                                       ; $78F0: $F5
    cp   $04                                      ; $78F1: $FE $04
    jp   c, label_002_79CC                        ; $78F3: $DA $CC $79

    ld   a, [$C125]                               ; $78F6: $FA $25 $C1
    ld   c, a                                     ; $78F9: $4F
    ld   b, $00                                   ; $78FA: $06 $00
    ld   hl, $78D8                                ; $78FC: $21 $D8 $78
    add  hl, bc                                   ; $78FF: $09
    ld   a, [hl]                                  ; $7900: $7E
    ldh  [hFF9A], a                               ; $7901: $E0 $9A
    ld   hl, $78DC                                ; $7903: $21 $DC $78
    add  hl, bc                                   ; $7906: $09
    ld   a, [hl]                                  ; $7907: $7E
    ldh  [$FF9B], a                               ; $7908: $E0 $9B
    push bc                                       ; $790A: $C5
    call label_21A8                               ; $790B: $CD $A8 $21
    pop  bc                                       ; $790E: $C1
    ld   hl, $78E0                                ; $790F: $21 $E0 $78
    add  hl, bc                                   ; $7912: $09
    ldh  a, [hBaseScrollX]                        ; $7913: $F0 $96
    add  [hl]                                     ; $7915: $86
    ldh  [hBaseScrollX], a                        ; $7916: $E0 $96
    ld   hl, $78E4                                ; $7918: $21 $E4 $78
    add  hl, bc                                   ; $791B: $09
    ldh  a, [hBaseScrollY]                        ; $791C: $F0 $97
    add  [hl]                                     ; $791E: $86
    ldh  [hBaseScrollY], a                        ; $791F: $E0 $97
    ld   hl, $C12D                                ; $7921: $21 $2D $C1
    cp   [hl]                                     ; $7924: $BE
    jp   nz, label_002_79CC                       ; $7925: $C2 $CC $79

    ldh  a, [hBaseScrollX]                        ; $7928: $F0 $96
    ld   hl, $C12C                                ; $792A: $21 $2C $C1
    cp   [hl]                                     ; $792D: $BE
    jp   nz, label_002_79CC                       ; $792E: $C2 $CC $79

    pop  af                                       ; $7931: $F1
    ldh  a, [hNextMusicTrack]                     ; $7932: $F0 $B1
    and  a                                        ; $7934: $A7
    jr   z, jr_002_793D                           ; $7935: $28 $06

    call SetWorldMusicTrack                   ; $7937: $CD $C3 $27
    xor  a                                        ; $793A: $AF
    ldh  [hNextMusicTrack], a                     ; $793B: $E0 $B1

jr_002_793D:
    call label_178E                               ; $793D: $CD $8E $17
    ldh  [$FFA3], a                               ; $7940: $E0 $A3
    ld   [wMapSlideTransitionState], a            ; $7942: $EA $24 $C1
    ldh  a, [hLinkPositionX]                      ; $7945: $F0 $98
    ld   [$DBB1], a                               ; $7947: $EA $B1 $DB
    ldh  a, [hLinkPositionY]                      ; $794A: $F0 $99
    ld   [$DBB2], a                               ; $794C: $EA $B2 $DB
    ld   a, [$C125]                               ; $794F: $FA $25 $C1
    cp   $03                                      ; $7952: $FE $03
    jr   nz, jr_002_797A                          ; $7954: $20 $24

    ld   a, $01                                   ; $7956: $3E $01
    ldh  [$FF9B], a                               ; $7958: $E0 $9B
    call label_002_6E45                           ; $795A: $CD $45 $6E
    ldh  a, [$FFAF]                               ; $795D: $F0 $AF
    cp   $DB                                      ; $795F: $FE $DB
    jr   z, jr_002_797A                           ; $7961: $28 $17

    cp   $DC                                      ; $7963: $FE $DC
    jr   z, jr_002_797A                           ; $7965: $28 $13

    cp   $E1                                      ; $7967: $FE $E1
    jr   z, jr_002_7971                           ; $7969: $28 $06

    ld   a, [$C133]                               ; $796B: $FA $33 $C1
    and  a                                        ; $796E: $A7
    jr   z, jr_002_797A                           ; $796F: $28 $09

jr_002_7971:
    ld   a, [wFreeMovementMode]                   ; $7971: $FA $7B $C1
    and  a                                        ; $7974: $A7
    jr   nz, jr_002_797A                          ; $7975: $20 $03

    call func_002_6EAD                            ; $7977: $CD $AD $6E

jr_002_797A:
    ld   a, [wC169]                               ; $797A: $FA $69 $C1
    and  a                                        ; $797D: $A7
    jr   z, jr_002_7986                           ; $797E: $28 $06

    ldh  [$FFF2], a                               ; $7980: $E0 $F2
    xor  a                                        ; $7982: $AF
    ld   [wC169], a                               ; $7983: $EA $69 $C1

jr_002_7986:
    call label_3958                               ; $7986: $CD $58 $39
    ld   a, $FF                                   ; $7989: $3E $FF
    ldh  [$FFA6], a                               ; $798B: $E0 $A6
    ld   a, [wActiveRoom]                         ; $798D: $FA $A5 $DB
    and  a                                        ; $7990: $A7
    ret  z                                        ; $7991: $C8

    ld   d, a                                     ; $7992: $57
    ldh  a, [hMapTileset]                         ; $7993: $F0 $F7
    cp   $FF                                      ; $7995: $FE $FF
    jr   nz, jr_002_799D                          ; $7997: $20 $04

    ld   d, $00                                   ; $7999: $16 $00
    jr   jr_002_79A6                              ; $799B: $18 $09

jr_002_799D:
    cp   $1A                                      ; $799D: $FE $1A
    jr   nc, jr_002_79A6                          ; $799F: $30 $05

    cp   $06                                      ; $79A1: $FE $06
    jr   c, jr_002_79A6                           ; $79A3: $38 $01

    inc  d                                        ; $79A5: $14

; Check if need to play key sound on entering room
jr_002_79A6:
    ldh  a, [hMapIndex]                           ; $79A6: $F0 $F6
    ld   e, a                                     ; $79A8: $5F
; Get the chest data for the current room
    call label_29ED                               ; $79A9: $CD $ED $29
    cp   CHEST_SMALL_KEY_ID                       ; $79AC: $FE $1A
    jr   z, jr_002_79BC                           ; $79AE: $28 $0C

    cp   CHEST_NIGHTMARE_KEY_ID                   ; $79B0: $FE $19
    jr   z, jr_002_79BC                           ; $79B2: $28 $08

    ld   a, [$C18E]                               ; $79B4: $FA $8E $C1
    and  $E0                                      ; $79B7: $E6 $E0
    cp   $80                                      ; $79B9: $FE $80
    ret  nz                                       ; $79BB: $C0

; Set flag to play key sound?
jr_002_79BC:
    ld   a, [wHasDungeonCompass]                  ; $79BC: $FA $CD $DB
    and  a                                        ; $79BF: $A7
    ret  z                                        ; $79C0: $C8

    ldh  a, [hFFF8]                               ; $79C1: $F0 $F8
    and  $10                                      ; $79C3: $E6 $10
    ret  nz                                       ; $79C5: $C0

    ld   a, $0C                                   ; $79C6: $3E $0C
    ld   [$D462], a                               ; $79C8: $EA $62 $D4
    ret                                           ; $79CB: $C9

label_002_79CC::
    pop  af                                       ; $79CC: $F1
    dec  a                                        ; $79CD: $3D
    rst  $00                                      ; $79CE: $C7
    ld   a, [$3E79]                               ; $79CF: $FA $79 $3E
    ld   a, e                                     ; $79D2: $7B
    ld   a, a                                     ; $79D3: $7F
    ld   a, e                                     ; $79D4: $7B
    nop                                           ; $79D5: $00
    ld   a, h                                     ; $79D6: $7C
    inc  bc                                       ; $79D7: $03
    ld   a, h                                     ; $79D8: $7C

label_002_79D9::
    ret                                           ; $79D9: $C9

    ld   bc, $0201                                ; $79DA: $01 $01 $02
    nop                                           ; $79DD: $00
    nop                                           ; $79DE: $00
    ld   [bc], a                                  ; $79DF: $02
    ld   bc, $0002                                ; $79E0: $01 $02 $00
    ld   [bc], a                                  ; $79E3: $02
    ld   [bc], a                                  ; $79E4: $02
    nop                                           ; $79E5: $00
    ld   [bc], a                                  ; $79E6: $02
    ld   [bc], a                                  ; $79E7: $02
    nop                                           ; $79E8: $00
    ld   [bc], a                                  ; $79E9: $02
    ld   bc, $0002                                ; $79EA: $01 $02 $00
    ld   [bc], a                                  ; $79ED: $02
    ld   bc, $0002                                ; $79EE: $01 $02 $00
    ld   [bc], a                                  ; $79F1: $02
    nop                                           ; $79F2: $00
    nop                                           ; $79F3: $00
    nop                                           ; $79F4: $00
    nop                                           ; $79F5: $00
    ld   [bc], a                                  ; $79F6: $02
    ld   [bc], a                                  ; $79F7: $02
    ld   [bc], a                                  ; $79F8: $02
    ld   [bc], a                                  ; $79F9: $02
    ld   a, [$C125]                               ; $79FA: $FA $25 $C1
    ld   c, a                                     ; $79FD: $4F
    ld   b, $00                                   ; $79FE: $06 $00
    ld   a, [wActiveRoom]                         ; $7A00: $FA $A5 $DB
    and  a                                        ; $7A03: $A7
    jr   z, jr_002_7A6D                           ; $7A04: $28 $67

    ldh  a, [hMapTileset]                         ; $7A06: $F0 $F7
    cp   $FF                                      ; $7A08: $FE $FF
    jr   z, jr_002_7A48                           ; $7A0A: $28 $3C

    cp   $0B                                      ; $7A0C: $FE $0B
    jr   nc, jr_002_7A6D                          ; $7A0E: $30 $5D

    cp   $08                                      ; $7A10: $FE $08
    jr   nz, jr_002_7A48                          ; $7A12: $20 $34

    ldh  a, [hMapIndex]                           ; $7A14: $F0 $F6
    cp   $71                                      ; $7A16: $FE $71
    jr   nz, jr_002_7A48                          ; $7A18: $20 $2E

    ld   a, c                                     ; $7A1A: $79
    cp   $03                                      ; $7A1B: $FE $03
    jr   z, jr_002_7A48                           ; $7A1D: $28 $29

    ld   a, [$DB7C]                               ; $7A1F: $FA $7C $DB
    ld   e, a                                     ; $7A22: $5F
    ld   d, $00                                   ; $7A23: $16 $00
    ld   hl, $79DA                                ; $7A25: $21 $DA $79
    add  hl, de                                   ; $7A28: $19
    ld   a, [$C5AA]                               ; $7A29: $FA $AA $C5
    ld   e, a                                     ; $7A2C: $5F
    inc  a                                        ; $7A2D: $3C
    ld   [$C5AA], a                               ; $7A2E: $EA $AA $C5
    add  hl, de                                   ; $7A31: $19
    ld   a, c                                     ; $7A32: $79
    cp   [hl]                                     ; $7A33: $BE
    jr   z, jr_002_7A3D                           ; $7A34: $28 $07

    xor  a                                        ; $7A36: $AF
    ld   [$C5AA], a                               ; $7A37: $EA $AA $C5
    jp   label_002_7AA5                           ; $7A3A: $C3 $A5 $7A

jr_002_7A3D:
    ld   a, e                                     ; $7A3D: $7B
    cp   $07                                      ; $7A3E: $FE $07
    jp   nz, label_002_7AA5                       ; $7A40: $C2 $A5 $7A

    ld   a, $02                                   ; $7A43: $3E $02
    ld   [wC169], a                               ; $7A45: $EA $69 $C1

jr_002_7A48:
    xor  a                                        ; $7A48: $AF
    ld   [$C5AA], a                               ; $7A49: $EA $AA $C5
    ld   hl, $7B7B                                ; $7A4C: $21 $7B $7B
    add  hl, bc                                   ; $7A4F: $09
    ld   a, c                                     ; $7A50: $79
    cp   $02                                      ; $7A51: $FE $02
    jr   nz, jr_002_7A67                          ; $7A53: $20 $12

    ldh  a, [hMapTileset]                         ; $7A55: $F0 $F7
    cp   $05                                      ; $7A57: $FE $05
    jr   nz, jr_002_7A67                          ; $7A59: $20 $0C

    ld   a, [$DBAE]                               ; $7A5B: $FA $AE $DB
    cp   $1D                                      ; $7A5E: $FE $1D
    jr   nz, jr_002_7A67                          ; $7A60: $20 $05

    ld   a, $35                                   ; $7A62: $3E $35
    ld   [$DBAE], a                               ; $7A64: $EA $AE $DB

jr_002_7A67:
    ld   a, [hl]                                  ; $7A67: $7E
    ld   hl, $DBAE                                ; $7A68: $21 $AE $DB
    jr   jr_002_7A8C                              ; $7A6B: $18 $1F

jr_002_7A6D:
    ld   a, [wC10c]                               ; $7A6D: $FA $0C $C1
    and  a                                        ; $7A70: $A7
    jr   z, jr_002_7A84                           ; $7A71: $28 $11

    ld   a, c                                     ; $7A73: $79
    cp   $02                                      ; $7A74: $FE $02
    jr   nz, jr_002_7A84                          ; $7A76: $20 $0C

    ld   a, $1E                                   ; $7A78: $3E $1E
    ld   [wC169], a                               ; $7A7A: $EA $69 $C1
    ld   a, $63                                   ; $7A7D: $3E $63
    ld   hl, hMapIndex                            ; $7A7F: $21 $F6 $FF
    jr   jr_002_7A8D                              ; $7A82: $18 $09

jr_002_7A84:
    ld   hl, $7B77                                ; $7A84: $21 $77 $7B
    add  hl, bc                                   ; $7A87: $09
    ld   a, [hl]                                  ; $7A88: $7E
    ld   hl, hMapIndex                            ; $7A89: $21 $F6 $FF

jr_002_7A8C:
    add  [hl]                                     ; $7A8C: $86

jr_002_7A8D:
    ld   [hl], a                                  ; $7A8D: $77
    cp   $41                                      ; $7A8E: $FE $41
    jr   nz, label_002_7AA5                       ; $7A90: $20 $13

    ld   a, c                                     ; $7A92: $79
    cp   $02                                      ; $7A93: $FE $02
    jr   nz, label_002_7AA5                       ; $7A95: $20 $0E

    ld   hl, $D841                                ; $7A97: $21 $41 $D8
    bit  6, [hl]                                  ; $7A9A: $CB $76
    jr   nz, label_002_7AA5                       ; $7A9C: $20 $07

    set  6, [hl]                                  ; $7A9E: $CB $F6
    ld   a, $02                                   ; $7AA0: $3E $02
    ld   [wC169], a                               ; $7AA2: $EA $69 $C1

label_002_7AA5::
    call label_30F4                               ; $7AA5: $CD $F4 $30
    ld   a, [wActiveRoom]                         ; $7AA8: $FA $A5 $DB
    and  a                                        ; $7AAB: $A7
    jr   z, jr_002_7ABD                           ; $7AAC: $28 $0F

    ldh  a, [hMapTileset]                         ; $7AAE: $F0 $F7
    cp   $FF                                      ; $7AB0: $FE $FF
    jr   nz, jr_002_7ABD                          ; $7AB2: $20 $09

    ld   a, $01                                   ; $7AB4: $3E $01
    ldh  [hNeedsUpdatingBGTiles], a               ; $7AB6: $E0 $90
    ld   a, $02                                   ; $7AB8: $3E $02
    call label_9F5                                ; $7ABA: $CD $F5 $09

jr_002_7ABD:
    call label_37FE                               ; $7ABD: $CD $FE $37
    call DrawLinkSpriteAndReturn                  ; $7AC0: $CD $2E $1D
    call label_1794                               ; $7AC3: $CD $94 $17
    ld   a, [$C1CF]                               ; $7AC6: $FA $CF $C1
    and  a                                        ; $7AC9: $A7
    jr   z, jr_002_7AE9                           ; $7ACA: $28 $1D

    xor  a                                        ; $7ACC: $AF
    ld   [$C1CF], a                               ; $7ACD: $EA $CF $C1
    ld   a, [wTunicType]                          ; $7AD0: $FA $0F $DC
    and  a                                        ; $7AD3: $A7
    ldh  a, [$FFB0]                               ; $7AD4: $F0 $B0
    jr   nz, jr_002_7AE2                          ; $7AD6: $20 $0A

    ld   a, [wActivePowerUp]                      ; $7AD8: $FA $7C $D4
    and  a                                        ; $7ADB: $A7
    ldh  a, [$FFB0]                               ; $7ADC: $F0 $B0
    jr   z, jr_002_7AE2                           ; $7ADE: $28 $02

    ld   a, $49                                   ; $7AE0: $3E $49

jr_002_7AE2:
    ldh  [hNextMusicTrack], a                     ; $7AE2: $E0 $B1
    call label_27EA                               ; $7AE4: $CD $EA $27
    jr   label_002_7B36                           ; $7AE7: $18 $4D

jr_002_7AE9:
    ld   a, [wActiveRoom]                         ; $7AE9: $FA $A5 $DB
    and  a                                        ; $7AEC: $A7
    jr   nz, label_002_7B36                       ; $7AED: $20 $47

    ld   a, [wDidFindSword]                       ; $7AEF: $FA $4E $DB
    and  a                                        ; $7AF2: $A7
    jr   z, label_002_7B36                        ; $7AF3: $28 $41

    ldh  a, [hMapIndex]                           ; $7AF5: $F0 $F6
    ld   e, a                                     ; $7AF7: $5F
    ld   d, $00                                   ; $7AF8: $16 $00
    ld   hl, OverworldMusicTracks                       ; $7AFA: $21 $00 $40
    add  hl, de                                   ; $7AFD: $19
    ld   a, [hl]                                  ; $7AFE: $7E
    ld   hl, $FFB0                                ; $7AFF: $21 $B0 $FF
    cp   [hl]                                     ; $7B02: $BE
    jr   z, label_002_7B36                        ; $7B03: $28 $31

    ld   c, a                                     ; $7B05: $4F
    cp   $25                                      ; $7B06: $FE $25
    jr   nc, jr_002_7B14                          ; $7B08: $30 $0A

    ld   b, $00                                   ; $7B0A: $06 $00
    ld   hl, $4120                                ; $7B0C: $21 $20 $41
    add  hl, bc                                   ; $7B0F: $09
    ld   a, [hl]                                  ; $7B10: $7E
    and  a                                        ; $7B11: $A7
    jr   nz, jr_002_7B2A                          ; $7B12: $20 $16

jr_002_7B14:
    ld   a, [wActivePowerUp]                      ; $7B14: $FA $7C $D4
    and  a                                        ; $7B17: $A7
    jr   z, func_002_7B2D                         ; $7B18: $28 $13

    ldh  a, [$FFBD]                               ; $7B1A: $F0 $BD
    cp   $49                                      ; $7B1C: $FE $49
    jr   z, jr_002_7B33                           ; $7B1E: $28 $13

    call func_002_7B2D                            ; $7B20: $CD $2D $7B
    ld   a, $49                                   ; $7B23: $3E $49
    ldh  [hNextMusicTrack], a                     ; $7B25: $E0 $B1
    ldh  [$FFBD], a                               ; $7B27: $E0 $BD
    ret                                           ; $7B29: $C9

jr_002_7B2A:
    ld   a, c                                     ; $7B2A: $79
    ldh  [$FFBD], a                               ; $7B2B: $E0 $BD

func_002_7B2D::
    ld   a, c                                     ; $7B2D: $79
    ldh  [hNextMusicTrack], a                     ; $7B2E: $E0 $B1
    call label_27EA                               ; $7B30: $CD $EA $27

jr_002_7B33:
    ld   a, c                                     ; $7B33: $79
    ldh  [$FFB0], a                               ; $7B34: $E0 $B0

label_002_7B36::
    ld   a, [wMapSlideTransitionState]            ; $7B36: $FA $24 $C1
    inc  a                                        ; $7B39: $3C
    ld   [wMapSlideTransitionState], a            ; $7B3A: $EA $24 $C1
    ret                                           ; $7B3D: $C9

    call label_D1E                                ; $7B3E: $CD $1E $0D
    ld   a, [$D6FA]                               ; $7B41: $FA $FA $D6
    cp   $02                                      ; $7B44: $FE $02
    jr   nz, jr_002_7B4C                          ; $7B46: $20 $04

    ld   a, $02                                   ; $7B48: $3E $02
    ldh  [$FFBB], a                               ; $7B4A: $E0 $BB

jr_002_7B4C:
    jp   label_002_7B36                           ; $7B4C: $C3 $36 $7B

    nop                                           ; $7B4F: $00
    nop                                           ; $7B50: $00
    ld   [bc], a                                  ; $7B51: $02
    ld   [bc], a                                  ; $7B52: $02
    inc  d                                        ; $7B53: $14
    inc  c                                        ; $7B54: $0C
    nop                                           ; $7B55: $00
    nop                                           ; $7B56: $00
    nop                                           ; $7B57: $00
    nop                                           ; $7B58: $00
    inc  bc                                       ; $7B59: $03
    ld   [bc], a                                  ; $7B5A: $02
    inc  d                                        ; $7B5B: $14
    rra                                           ; $7B5C: $1F
    ld   [rP1], a                                 ; $7B5D: $E0 $00
    ld   [$0A08], sp                              ; $7B5F: $08 $08 $0A
    ld   a, [bc]                                  ; $7B62: $0A
    inc  d                                        ; $7B63: $14
    inc  d                                        ; $7B64: $14
    db   $10                                      ; $7B65: $10
    stop                                          ; $7B66: $10 $00
    add  hl, bc                                   ; $7B68: $09
    ld   [hl], b                                  ; $7B69: $70
    nop                                           ; $7B6A: $00
    ld   b, b                                     ; $7B6B: $40
    ld   b, b                                     ; $7B6C: $40
    ld   [bc], a                                  ; $7B6D: $02
    ld   [bc], a                                  ; $7B6E: $02
    and  b                                        ; $7B6F: $A0
    ld   h, b                                     ; $7B70: $60
    nop                                           ; $7B71: $00
    nop                                           ; $7B72: $00
    nop                                           ; $7B73: $00
    nop                                           ; $7B74: $00
    add  b                                        ; $7B75: $80
    add  b                                        ; $7B76: $80
    ld   bc, $F0FF                                ; $7B77: $01 $FF $F0
    db   $10                                      ; $7B7A: $10
    ld   bc, $F8FF                                ; $7B7B: $01 $FF $F8
    ld   [$BBF0], sp                              ; $7B7E: $08 $F0 $BB
    and  a                                        ; $7B81: $A7
    ret  nz                                       ; $7B82: $C0

    ld   e, $FF                                   ; $7B83: $1E $FF
    ld   a, [$C125]                               ; $7B85: $FA $25 $C1
    ld   c, a                                     ; $7B88: $4F
    ld   b, $00                                   ; $7B89: $06 $00
    and  $02                                      ; $7B8B: $E6 $02
    jr   nz, jr_002_7B91                          ; $7B8D: $20 $02

    ld   e, $DF                                   ; $7B8F: $1E $DF

jr_002_7B91:
    ld   hl, $7B6F                                ; $7B91: $21 $6F $7B
    add  hl, bc                                   ; $7B94: $09
    ld   a, [$C12C]                               ; $7B95: $FA $2C $C1
    add  [hl]                                     ; $7B98: $86
    ld   [$C12C], a                               ; $7B99: $EA $2C $C1
    ld   hl, $7B73                                ; $7B9C: $21 $73 $7B
    add  hl, bc                                   ; $7B9F: $09
    ld   a, [$C12D]                               ; $7BA0: $FA $2D $C1
    add  [hl]                                     ; $7BA3: $86
    ld   [$C12D], a                               ; $7BA4: $EA $2D $C1
    ld   hl, $7B5B                                ; $7BA7: $21 $5B $7B
    add  hl, bc                                   ; $7BAA: $09
    ld   a, [$C12F]                               ; $7BAB: $FA $2F $C1
    add  [hl]                                     ; $7BAE: $86
    rl   d                                        ; $7BAF: $CB $12
    and  e                                        ; $7BB1: $A3
    ld   [$C127], a                               ; $7BB2: $EA $27 $C1
    ld   hl, $7B57                                ; $7BB5: $21 $57 $7B
    add  hl, bc                                   ; $7BB8: $09
    ld   a, [$C12E]                               ; $7BB9: $FA $2E $C1
    rr   d                                        ; $7BBC: $CB $1A
    adc  [hl]                                     ; $7BBE: $8E
    and  $03                                      ; $7BBF: $E6 $03
    ld   [$C126], a                               ; $7BC1: $EA $26 $C1
    ld   hl, $7B53                                ; $7BC4: $21 $53 $7B
    add  hl, bc                                   ; $7BC7: $09
    ld   a, [$C12F]                               ; $7BC8: $FA $2F $C1
    add  [hl]                                     ; $7BCB: $86
    rl   d                                        ; $7BCC: $CB $12
    and  e                                        ; $7BCE: $A3
    ld   [$C12F], a                               ; $7BCF: $EA $2F $C1
    ld   hl, $7B4F                                ; $7BD2: $21 $4F $7B
    add  hl, bc                                   ; $7BD5: $09
    ld   a, [$C12E]                               ; $7BD6: $FA $2E $C1
    rr   d                                        ; $7BD9: $CB $1A
    adc  [hl]                                     ; $7BDB: $8E
    and  $03                                      ; $7BDC: $E6 $03
    ld   [$C12E], a                               ; $7BDE: $EA $2E $C1
    ld   hl, $7B5F                                ; $7BE1: $21 $5F $7B
    add  hl, bc                                   ; $7BE4: $09
    ld   a, [hl]                                  ; $7BE5: $7E
    ld   [$C128], a                               ; $7BE6: $EA $28 $C1
    ld   hl, $7B63                                ; $7BE9: $21 $63 $7B
    add  hl, bc                                   ; $7BEC: $09
    ld   a, [hl]                                  ; $7BED: $7E
    ld   [$C129], a                               ; $7BEE: $EA $29 $C1
    ld   hl, $7B67                                ; $7BF1: $21 $67 $7B
    add  hl, bc                                   ; $7BF4: $09
    ld   a, [hl]                                  ; $7BF5: $7E
    ld   [$C12A], a                               ; $7BF6: $EA $2A $C1
    xor  a                                        ; $7BF9: $AF
    ld   [$C12B], a                               ; $7BFA: $EA $2B $C1
    jp   label_002_7B36                           ; $7BFD: $C3 $36 $7B

    jp   $2209                                    ; $7C00: $C3 $09 $22

    ret                                           ; $7C03: $C9

    nop                                           ; $7C04: $00
    nop                                           ; $7C05: $00
    rst  $38                                      ; $7C06: $FF
    ld   bc, $FF01                                ; $7C07: $01 $01 $FF
    ld   bc, $01FF                                ; $7C0A: $01 $FF $01
    rst  $38                                      ; $7C0D: $FF
    nop                                           ; $7C0E: $00
    nop                                           ; $7C0F: $00
    ld   bc, $FF01                                ; $7C10: $01 $01 $FF
    rst  $38                                      ; $7C13: $FF

label_002_7C14::
    ldh  a, [hFrameCounter]                       ; $7C14: $F0 $E7
    and  $03                                      ; $7C16: $E6 $03
    ld   hl, wC167                                ; $7C18: $21 $67 $C1
    or   [hl]                                     ; $7C1B: $B6
    ld   hl, $FFA1                                ; $7C1C: $21 $A1 $FF
    or   [hl]                                     ; $7C1F: $B6
    ld   hl, $C1A9                                ; $7C20: $21 $A9 $C1
    or   [hl]                                     ; $7C23: $B6
    ret  nz                                       ; $7C24: $C0

    ld   a, [$C181]                               ; $7C25: $FA $81 $C1
    sub  $F0                                      ; $7C28: $D6 $F0
    ld   e, a                                     ; $7C2A: $5F
    ld   d, $00                                   ; $7C2B: $16 $00
    ld   hl, $7C04                                ; $7C2D: $21 $04 $7C
    add  hl, de                                   ; $7C30: $19
    ldh  a, [hLinkPositionX]                      ; $7C31: $F0 $98
    add  [hl]                                     ; $7C33: $86
    ldh  [hLinkPositionX], a                      ; $7C34: $E0 $98
    ld   hl, $7C0C                                ; $7C36: $21 $0C $7C
    add  hl, de                                   ; $7C39: $19
    ldh  a, [hLinkPositionY]                      ; $7C3A: $F0 $99
    add  [hl]                                     ; $7C3C: $86
    ldh  [hLinkPositionY], a                      ; $7C3D: $E0 $99
    ret                                           ; $7C3F: $C9

Data_002_7C40::
    db   $FC, $FA, $F8, $F6, $0C, $00, $00, $F4, $00, $00, $00, $00, $00, $F4, $0C

    nop                                           ; $7C4F: $00

label_002_7C50::
    ldh  a, [hFrameCounter]                       ; $7C50: $F0 $E7
    and  $00                                      ; $7C52: $E6 $00
    ld   hl, wMapSlideTransitionState             ; $7C54: $21 $24 $C1
    or   [hl]                                     ; $7C57: $B6
    ld   hl, $C1A9                                ; $7C58: $21 $A9 $C1
    or   [hl]                                     ; $7C5B: $B6
    ld   hl, $FFA1                                ; $7C5C: $21 $A1 $FF
    or   [hl]                                     ; $7C5F: $B6
    ld   hl, wDialogState                         ; $7C60: $21 $9F $C1
    or   [hl]                                     ; $7C63: $B6
    ld   hl, wInventoryAppearing                  ; $7C64: $21 $4F $C1
    or   [hl]                                     ; $7C67: $B6
    ret  nz                                       ; $7C68: $C0

    ld   e, $01                                   ; $7C69: $1E $01
    ldh  a, [$FFAF]                               ; $7C6B: $F0 $AF
    cp   $0E                                      ; $7C6D: $FE $0E
    jr   nz, jr_002_7C88                          ; $7C6F: $20 $17

    ldh  a, [hMapIndex]                           ; $7C71: $F0 $F6
    cp   $3E                                      ; $7C73: $FE $3E
    jr   z, jr_002_7C8B                           ; $7C75: $28 $14

    inc  e                                        ; $7C77: $1C
    cp   $3D                                      ; $7C78: $FE $3D
    jr   z, jr_002_7C8B                           ; $7C7A: $28 $0F

    inc  e                                        ; $7C7C: $1C
    cp   $3C                                      ; $7C7D: $FE $3C
    jr   z, jr_002_7C8B                           ; $7C7F: $28 $0A

    cp   $3F                                      ; $7C81: $FE $3F
    ret  nz                                       ; $7C83: $C0

    ld   e, $00                                   ; $7C84: $1E $00
    jr   jr_002_7C8B                              ; $7C86: $18 $03

jr_002_7C88:
    sub  $E7                                      ; $7C88: $D6 $E7
    ld   e, a                                     ; $7C8A: $5F

jr_002_7C8B:
    ld   d, $00                                   ; $7C8B: $16 $00
    ld   hl, Data_002_7C40                        ; $7C8D: $21 $40 $7C
    add  hl, de                                   ; $7C90: $19
    ld   a, [hl]                                  ; $7C91: $7E
    ldh  [hFF9A], a                               ; $7C92: $E0 $9A
    ld   hl, $7C48                                ; $7C94: $21 $48 $7C
    add  hl, de                                   ; $7C97: $19
    ld   a, [hl]                                  ; $7C98: $7E
    ldh  [$FF9B], a                               ; $7C99: $E0 $9B
    call label_21A8                               ; $7C9B: $CD $A8 $21
    jp   label_002_6E45                           ; $7C9E: $C3 $45 $6E

    nop                                           ; $7CA1: $00
    nop                                           ; $7CA2: $00
    nop                                           ; $7CA3: $00
    nop                                           ; $7CA4: $00
    nop                                           ; $7CA5: $00
    nop                                           ; $7CA6: $00
    nop                                           ; $7CA7: $00
    nop                                           ; $7CA8: $00
    nop                                           ; $7CA9: $00
    nop                                           ; $7CAA: $00
    nop                                           ; $7CAB: $00
    nop                                           ; $7CAC: $00
    nop                                           ; $7CAD: $00
    nop                                           ; $7CAE: $00
    nop                                           ; $7CAF: $00
    nop                                           ; $7CB0: $00
    nop                                           ; $7CB1: $00
    nop                                           ; $7CB2: $00
    nop                                           ; $7CB3: $00
    nop                                           ; $7CB4: $00
    nop                                           ; $7CB5: $00
    nop                                           ; $7CB6: $00
    nop                                           ; $7CB7: $00
    nop                                           ; $7CB8: $00
    nop                                           ; $7CB9: $00
    nop                                           ; $7CBA: $00
    nop                                           ; $7CBB: $00
    nop                                           ; $7CBC: $00
    nop                                           ; $7CBD: $00
    nop                                           ; $7CBE: $00
    nop                                           ; $7CBF: $00
    nop                                           ; $7CC0: $00
    nop                                           ; $7CC1: $00
    nop                                           ; $7CC2: $00
    nop                                           ; $7CC3: $00
    nop                                           ; $7CC4: $00
    nop                                           ; $7CC5: $00
    nop                                           ; $7CC6: $00
    nop                                           ; $7CC7: $00
    nop                                           ; $7CC8: $00
    nop                                           ; $7CC9: $00
    nop                                           ; $7CCA: $00
    nop                                           ; $7CCB: $00
    nop                                           ; $7CCC: $00
    nop                                           ; $7CCD: $00
    nop                                           ; $7CCE: $00
    nop                                           ; $7CCF: $00
    nop                                           ; $7CD0: $00
    nop                                           ; $7CD1: $00
    nop                                           ; $7CD2: $00
    nop                                           ; $7CD3: $00
    nop                                           ; $7CD4: $00
    nop                                           ; $7CD5: $00
    nop                                           ; $7CD6: $00
    nop                                           ; $7CD7: $00
    nop                                           ; $7CD8: $00
    nop                                           ; $7CD9: $00
    nop                                           ; $7CDA: $00
    nop                                           ; $7CDB: $00
    nop                                           ; $7CDC: $00
    nop                                           ; $7CDD: $00
    nop                                           ; $7CDE: $00
    nop                                           ; $7CDF: $00
    nop                                           ; $7CE0: $00
    nop                                           ; $7CE1: $00
    nop                                           ; $7CE2: $00
    nop                                           ; $7CE3: $00
    nop                                           ; $7CE4: $00
    nop                                           ; $7CE5: $00
    nop                                           ; $7CE6: $00
    nop                                           ; $7CE7: $00
    nop                                           ; $7CE8: $00
    nop                                           ; $7CE9: $00
    nop                                           ; $7CEA: $00
    nop                                           ; $7CEB: $00
    nop                                           ; $7CEC: $00
    nop                                           ; $7CED: $00
    nop                                           ; $7CEE: $00
    nop                                           ; $7CEF: $00
    nop                                           ; $7CF0: $00
    nop                                           ; $7CF1: $00
    nop                                           ; $7CF2: $00
    nop                                           ; $7CF3: $00
    nop                                           ; $7CF4: $00
    nop                                           ; $7CF5: $00
    nop                                           ; $7CF6: $00
    nop                                           ; $7CF7: $00
    nop                                           ; $7CF8: $00
    nop                                           ; $7CF9: $00
    nop                                           ; $7CFA: $00
    nop                                           ; $7CFB: $00
    nop                                           ; $7CFC: $00
    nop                                           ; $7CFD: $00
    nop                                           ; $7CFE: $00
    nop                                           ; $7CFF: $00
    nop                                           ; $7D00: $00
    nop                                           ; $7D01: $00
    nop                                           ; $7D02: $00
    nop                                           ; $7D03: $00
    nop                                           ; $7D04: $00
    nop                                           ; $7D05: $00
    nop                                           ; $7D06: $00
    nop                                           ; $7D07: $00
    nop                                           ; $7D08: $00
    nop                                           ; $7D09: $00
    nop                                           ; $7D0A: $00
    nop                                           ; $7D0B: $00
    nop                                           ; $7D0C: $00
    nop                                           ; $7D0D: $00
    nop                                           ; $7D0E: $00
    nop                                           ; $7D0F: $00
    nop                                           ; $7D10: $00
    nop                                           ; $7D11: $00
    nop                                           ; $7D12: $00
    nop                                           ; $7D13: $00
    nop                                           ; $7D14: $00
    nop                                           ; $7D15: $00
    nop                                           ; $7D16: $00
    nop                                           ; $7D17: $00
    nop                                           ; $7D18: $00
    nop                                           ; $7D19: $00
    nop                                           ; $7D1A: $00
    nop                                           ; $7D1B: $00
    nop                                           ; $7D1C: $00
    nop                                           ; $7D1D: $00
    nop                                           ; $7D1E: $00
    nop                                           ; $7D1F: $00
    nop                                           ; $7D20: $00
    nop                                           ; $7D21: $00
    nop                                           ; $7D22: $00
    nop                                           ; $7D23: $00
    nop                                           ; $7D24: $00
    nop                                           ; $7D25: $00
    nop                                           ; $7D26: $00
    nop                                           ; $7D27: $00
    nop                                           ; $7D28: $00
    nop                                           ; $7D29: $00
    nop                                           ; $7D2A: $00
    nop                                           ; $7D2B: $00
    nop                                           ; $7D2C: $00
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    nop                                           ; $7D30: $00
    nop                                           ; $7D31: $00
    nop                                           ; $7D32: $00
    nop                                           ; $7D33: $00
    nop                                           ; $7D34: $00
    nop                                           ; $7D35: $00
    nop                                           ; $7D36: $00
    nop                                           ; $7D37: $00
    nop                                           ; $7D38: $00
    nop                                           ; $7D39: $00
    nop                                           ; $7D3A: $00
    nop                                           ; $7D3B: $00
    nop                                           ; $7D3C: $00
    nop                                           ; $7D3D: $00
    nop                                           ; $7D3E: $00
    nop                                           ; $7D3F: $00
    nop                                           ; $7D40: $00
    nop                                           ; $7D41: $00
    nop                                           ; $7D42: $00
    nop                                           ; $7D43: $00
    nop                                           ; $7D44: $00
    nop                                           ; $7D45: $00
    nop                                           ; $7D46: $00
    nop                                           ; $7D47: $00
    nop                                           ; $7D48: $00
    nop                                           ; $7D49: $00
    nop                                           ; $7D4A: $00
    nop                                           ; $7D4B: $00
    nop                                           ; $7D4C: $00
    nop                                           ; $7D4D: $00
    nop                                           ; $7D4E: $00
    nop                                           ; $7D4F: $00
    nop                                           ; $7D50: $00
    nop                                           ; $7D51: $00
    nop                                           ; $7D52: $00
    nop                                           ; $7D53: $00
    nop                                           ; $7D54: $00
    nop                                           ; $7D55: $00
    nop                                           ; $7D56: $00
    nop                                           ; $7D57: $00
    nop                                           ; $7D58: $00
    nop                                           ; $7D59: $00
    nop                                           ; $7D5A: $00
    nop                                           ; $7D5B: $00
    nop                                           ; $7D5C: $00
    nop                                           ; $7D5D: $00
    nop                                           ; $7D5E: $00
    nop                                           ; $7D5F: $00
    nop                                           ; $7D60: $00
    nop                                           ; $7D61: $00
    nop                                           ; $7D62: $00
    nop                                           ; $7D63: $00
    nop                                           ; $7D64: $00
    nop                                           ; $7D65: $00
    nop                                           ; $7D66: $00
    nop                                           ; $7D67: $00
    nop                                           ; $7D68: $00
    nop                                           ; $7D69: $00
    nop                                           ; $7D6A: $00
    nop                                           ; $7D6B: $00
    nop                                           ; $7D6C: $00
    nop                                           ; $7D6D: $00
    nop                                           ; $7D6E: $00
    nop                                           ; $7D6F: $00
    nop                                           ; $7D70: $00
    nop                                           ; $7D71: $00
    nop                                           ; $7D72: $00
    nop                                           ; $7D73: $00
    nop                                           ; $7D74: $00
    nop                                           ; $7D75: $00
    nop                                           ; $7D76: $00
    nop                                           ; $7D77: $00
    nop                                           ; $7D78: $00
    nop                                           ; $7D79: $00
    nop                                           ; $7D7A: $00
    nop                                           ; $7D7B: $00
    nop                                           ; $7D7C: $00
    nop                                           ; $7D7D: $00
    nop                                           ; $7D7E: $00
    nop                                           ; $7D7F: $00
    nop                                           ; $7D80: $00
    nop                                           ; $7D81: $00
    nop                                           ; $7D82: $00
    nop                                           ; $7D83: $00
    nop                                           ; $7D84: $00
    nop                                           ; $7D85: $00
    nop                                           ; $7D86: $00
    nop                                           ; $7D87: $00
    nop                                           ; $7D88: $00
    nop                                           ; $7D89: $00
    nop                                           ; $7D8A: $00
    nop                                           ; $7D8B: $00
    nop                                           ; $7D8C: $00
    nop                                           ; $7D8D: $00
    nop                                           ; $7D8E: $00
    nop                                           ; $7D8F: $00
    nop                                           ; $7D90: $00
    nop                                           ; $7D91: $00
    nop                                           ; $7D92: $00
    nop                                           ; $7D93: $00
    nop                                           ; $7D94: $00
    nop                                           ; $7D95: $00
    nop                                           ; $7D96: $00
    nop                                           ; $7D97: $00
    nop                                           ; $7D98: $00
    nop                                           ; $7D99: $00
    nop                                           ; $7D9A: $00
    nop                                           ; $7D9B: $00
    nop                                           ; $7D9C: $00
    nop                                           ; $7D9D: $00
    nop                                           ; $7D9E: $00
    nop                                           ; $7D9F: $00
    nop                                           ; $7DA0: $00
    nop                                           ; $7DA1: $00
    nop                                           ; $7DA2: $00
    nop                                           ; $7DA3: $00
    nop                                           ; $7DA4: $00
    nop                                           ; $7DA5: $00
    nop                                           ; $7DA6: $00
    nop                                           ; $7DA7: $00
    nop                                           ; $7DA8: $00
    nop                                           ; $7DA9: $00
    nop                                           ; $7DAA: $00
    nop                                           ; $7DAB: $00
    nop                                           ; $7DAC: $00
    nop                                           ; $7DAD: $00
    nop                                           ; $7DAE: $00
    nop                                           ; $7DAF: $00
    nop                                           ; $7DB0: $00
    nop                                           ; $7DB1: $00
    nop                                           ; $7DB2: $00
    nop                                           ; $7DB3: $00
    nop                                           ; $7DB4: $00
    nop                                           ; $7DB5: $00
    nop                                           ; $7DB6: $00
    nop                                           ; $7DB7: $00
    nop                                           ; $7DB8: $00
    nop                                           ; $7DB9: $00
    nop                                           ; $7DBA: $00
    nop                                           ; $7DBB: $00
    nop                                           ; $7DBC: $00
    nop                                           ; $7DBD: $00
    nop                                           ; $7DBE: $00
    nop                                           ; $7DBF: $00
    nop                                           ; $7DC0: $00
    nop                                           ; $7DC1: $00
    nop                                           ; $7DC2: $00
    nop                                           ; $7DC3: $00
    nop                                           ; $7DC4: $00
    nop                                           ; $7DC5: $00
    nop                                           ; $7DC6: $00
    nop                                           ; $7DC7: $00
    nop                                           ; $7DC8: $00
    nop                                           ; $7DC9: $00
    nop                                           ; $7DCA: $00
    nop                                           ; $7DCB: $00
    nop                                           ; $7DCC: $00
    nop                                           ; $7DCD: $00
    nop                                           ; $7DCE: $00
    nop                                           ; $7DCF: $00
    nop                                           ; $7DD0: $00
    nop                                           ; $7DD1: $00
    nop                                           ; $7DD2: $00
    nop                                           ; $7DD3: $00
    nop                                           ; $7DD4: $00
    nop                                           ; $7DD5: $00
    nop                                           ; $7DD6: $00
    nop                                           ; $7DD7: $00
    nop                                           ; $7DD8: $00
    nop                                           ; $7DD9: $00
    nop                                           ; $7DDA: $00
    nop                                           ; $7DDB: $00
    nop                                           ; $7DDC: $00
    nop                                           ; $7DDD: $00
    nop                                           ; $7DDE: $00
    nop                                           ; $7DDF: $00
    nop                                           ; $7DE0: $00
    nop                                           ; $7DE1: $00
    nop                                           ; $7DE2: $00
    nop                                           ; $7DE3: $00
    nop                                           ; $7DE4: $00
    nop                                           ; $7DE5: $00
    nop                                           ; $7DE6: $00
    nop                                           ; $7DE7: $00
    nop                                           ; $7DE8: $00
    nop                                           ; $7DE9: $00
    nop                                           ; $7DEA: $00
    nop                                           ; $7DEB: $00
    nop                                           ; $7DEC: $00
    nop                                           ; $7DED: $00
    nop                                           ; $7DEE: $00
    nop                                           ; $7DEF: $00
    nop                                           ; $7DF0: $00
    nop                                           ; $7DF1: $00
    nop                                           ; $7DF2: $00
    nop                                           ; $7DF3: $00
    nop                                           ; $7DF4: $00
    nop                                           ; $7DF5: $00
    nop                                           ; $7DF6: $00
    nop                                           ; $7DF7: $00
    nop                                           ; $7DF8: $00
    nop                                           ; $7DF9: $00
    nop                                           ; $7DFA: $00
    nop                                           ; $7DFB: $00
    nop                                           ; $7DFC: $00
    nop                                           ; $7DFD: $00
    nop                                           ; $7DFE: $00
    nop                                           ; $7DFF: $00
    nop                                           ; $7E00: $00
    nop                                           ; $7E01: $00
    nop                                           ; $7E02: $00
    nop                                           ; $7E03: $00
    nop                                           ; $7E04: $00
    nop                                           ; $7E05: $00
    nop                                           ; $7E06: $00
    nop                                           ; $7E07: $00
    nop                                           ; $7E08: $00
    nop                                           ; $7E09: $00
    nop                                           ; $7E0A: $00
    nop                                           ; $7E0B: $00
    nop                                           ; $7E0C: $00
    nop                                           ; $7E0D: $00
    nop                                           ; $7E0E: $00
    nop                                           ; $7E0F: $00
    nop                                           ; $7E10: $00
    nop                                           ; $7E11: $00
    nop                                           ; $7E12: $00
    nop                                           ; $7E13: $00
    nop                                           ; $7E14: $00
    nop                                           ; $7E15: $00
    nop                                           ; $7E16: $00
    nop                                           ; $7E17: $00
    nop                                           ; $7E18: $00
    nop                                           ; $7E19: $00
    nop                                           ; $7E1A: $00
    nop                                           ; $7E1B: $00
    nop                                           ; $7E1C: $00
    nop                                           ; $7E1D: $00
    nop                                           ; $7E1E: $00
    nop                                           ; $7E1F: $00
    nop                                           ; $7E20: $00
    nop                                           ; $7E21: $00
    nop                                           ; $7E22: $00
    nop                                           ; $7E23: $00
    nop                                           ; $7E24: $00
    nop                                           ; $7E25: $00
    nop                                           ; $7E26: $00
    nop                                           ; $7E27: $00
    nop                                           ; $7E28: $00
    nop                                           ; $7E29: $00
    nop                                           ; $7E2A: $00
    nop                                           ; $7E2B: $00
    nop                                           ; $7E2C: $00
    nop                                           ; $7E2D: $00
    nop                                           ; $7E2E: $00
    nop                                           ; $7E2F: $00
    nop                                           ; $7E30: $00
    nop                                           ; $7E31: $00
    nop                                           ; $7E32: $00
    nop                                           ; $7E33: $00
    nop                                           ; $7E34: $00
    nop                                           ; $7E35: $00
    nop                                           ; $7E36: $00
    nop                                           ; $7E37: $00
    nop                                           ; $7E38: $00
    nop                                           ; $7E39: $00
    nop                                           ; $7E3A: $00
    nop                                           ; $7E3B: $00
    nop                                           ; $7E3C: $00
    nop                                           ; $7E3D: $00
    nop                                           ; $7E3E: $00
    nop                                           ; $7E3F: $00
    nop                                           ; $7E40: $00
    nop                                           ; $7E41: $00
    nop                                           ; $7E42: $00
    nop                                           ; $7E43: $00
    nop                                           ; $7E44: $00
    nop                                           ; $7E45: $00
    nop                                           ; $7E46: $00
    nop                                           ; $7E47: $00
    nop                                           ; $7E48: $00
    nop                                           ; $7E49: $00
    nop                                           ; $7E4A: $00
    nop                                           ; $7E4B: $00
    nop                                           ; $7E4C: $00
    nop                                           ; $7E4D: $00
    nop                                           ; $7E4E: $00
    nop                                           ; $7E4F: $00
    nop                                           ; $7E50: $00
    nop                                           ; $7E51: $00
    nop                                           ; $7E52: $00
    nop                                           ; $7E53: $00
    nop                                           ; $7E54: $00
    nop                                           ; $7E55: $00
    nop                                           ; $7E56: $00
    nop                                           ; $7E57: $00
    nop                                           ; $7E58: $00
    nop                                           ; $7E59: $00
    nop                                           ; $7E5A: $00
    nop                                           ; $7E5B: $00
    nop                                           ; $7E5C: $00
    nop                                           ; $7E5D: $00
    nop                                           ; $7E5E: $00
    nop                                           ; $7E5F: $00
    nop                                           ; $7E60: $00
    nop                                           ; $7E61: $00
    nop                                           ; $7E62: $00
    nop                                           ; $7E63: $00
    nop                                           ; $7E64: $00
    nop                                           ; $7E65: $00
    nop                                           ; $7E66: $00
    nop                                           ; $7E67: $00
    nop                                           ; $7E68: $00
    nop                                           ; $7E69: $00
    nop                                           ; $7E6A: $00
    nop                                           ; $7E6B: $00
    nop                                           ; $7E6C: $00
    nop                                           ; $7E6D: $00
    nop                                           ; $7E6E: $00
    nop                                           ; $7E6F: $00
    nop                                           ; $7E70: $00
    nop                                           ; $7E71: $00
    nop                                           ; $7E72: $00
    nop                                           ; $7E73: $00
    nop                                           ; $7E74: $00
    nop                                           ; $7E75: $00
    nop                                           ; $7E76: $00
    nop                                           ; $7E77: $00
    nop                                           ; $7E78: $00
    nop                                           ; $7E79: $00
    nop                                           ; $7E7A: $00
    nop                                           ; $7E7B: $00
    nop                                           ; $7E7C: $00
    nop                                           ; $7E7D: $00
    nop                                           ; $7E7E: $00
    nop                                           ; $7E7F: $00
    nop                                           ; $7E80: $00
    nop                                           ; $7E81: $00
    nop                                           ; $7E82: $00
    nop                                           ; $7E83: $00
    nop                                           ; $7E84: $00
    nop                                           ; $7E85: $00
    nop                                           ; $7E86: $00
    nop                                           ; $7E87: $00
    nop                                           ; $7E88: $00
    nop                                           ; $7E89: $00
    nop                                           ; $7E8A: $00
    nop                                           ; $7E8B: $00
    nop                                           ; $7E8C: $00
    nop                                           ; $7E8D: $00
    nop                                           ; $7E8E: $00
    nop                                           ; $7E8F: $00
    nop                                           ; $7E90: $00
    nop                                           ; $7E91: $00
    nop                                           ; $7E92: $00
    nop                                           ; $7E93: $00
    nop                                           ; $7E94: $00
    nop                                           ; $7E95: $00
    nop                                           ; $7E96: $00
    nop                                           ; $7E97: $00
    nop                                           ; $7E98: $00
    nop                                           ; $7E99: $00
    nop                                           ; $7E9A: $00
    nop                                           ; $7E9B: $00
    nop                                           ; $7E9C: $00
    nop                                           ; $7E9D: $00
    nop                                           ; $7E9E: $00
    nop                                           ; $7E9F: $00
    nop                                           ; $7EA0: $00
    nop                                           ; $7EA1: $00
    nop                                           ; $7EA2: $00
    nop                                           ; $7EA3: $00
    nop                                           ; $7EA4: $00
    nop                                           ; $7EA5: $00
    nop                                           ; $7EA6: $00
    nop                                           ; $7EA7: $00
    nop                                           ; $7EA8: $00
    nop                                           ; $7EA9: $00
    nop                                           ; $7EAA: $00
    nop                                           ; $7EAB: $00
    nop                                           ; $7EAC: $00
    nop                                           ; $7EAD: $00
    nop                                           ; $7EAE: $00
    nop                                           ; $7EAF: $00
    nop                                           ; $7EB0: $00
    nop                                           ; $7EB1: $00
    nop                                           ; $7EB2: $00
    nop                                           ; $7EB3: $00
    nop                                           ; $7EB4: $00
    nop                                           ; $7EB5: $00
    nop                                           ; $7EB6: $00
    nop                                           ; $7EB7: $00
    nop                                           ; $7EB8: $00
    nop                                           ; $7EB9: $00
    nop                                           ; $7EBA: $00
    nop                                           ; $7EBB: $00
    nop                                           ; $7EBC: $00
    nop                                           ; $7EBD: $00
    nop                                           ; $7EBE: $00
    nop                                           ; $7EBF: $00
    nop                                           ; $7EC0: $00
    nop                                           ; $7EC1: $00
    nop                                           ; $7EC2: $00
    nop                                           ; $7EC3: $00
    nop                                           ; $7EC4: $00
    nop                                           ; $7EC5: $00
    nop                                           ; $7EC6: $00
    nop                                           ; $7EC7: $00
    nop                                           ; $7EC8: $00
    nop                                           ; $7EC9: $00
    nop                                           ; $7ECA: $00
    nop                                           ; $7ECB: $00
    nop                                           ; $7ECC: $00
    nop                                           ; $7ECD: $00
    nop                                           ; $7ECE: $00
    nop                                           ; $7ECF: $00
    nop                                           ; $7ED0: $00
    nop                                           ; $7ED1: $00
    nop                                           ; $7ED2: $00
    nop                                           ; $7ED3: $00
    nop                                           ; $7ED4: $00
    nop                                           ; $7ED5: $00
    nop                                           ; $7ED6: $00
    nop                                           ; $7ED7: $00
    nop                                           ; $7ED8: $00
    nop                                           ; $7ED9: $00
    nop                                           ; $7EDA: $00
    nop                                           ; $7EDB: $00
    nop                                           ; $7EDC: $00
    nop                                           ; $7EDD: $00
    nop                                           ; $7EDE: $00
    nop                                           ; $7EDF: $00
    nop                                           ; $7EE0: $00
    nop                                           ; $7EE1: $00
    nop                                           ; $7EE2: $00
    nop                                           ; $7EE3: $00
    nop                                           ; $7EE4: $00
    nop                                           ; $7EE5: $00
    nop                                           ; $7EE6: $00
    nop                                           ; $7EE7: $00
    nop                                           ; $7EE8: $00
    nop                                           ; $7EE9: $00
    nop                                           ; $7EEA: $00
    nop                                           ; $7EEB: $00
    nop                                           ; $7EEC: $00
    nop                                           ; $7EED: $00
    nop                                           ; $7EEE: $00
    nop                                           ; $7EEF: $00
    nop                                           ; $7EF0: $00
    nop                                           ; $7EF1: $00
    nop                                           ; $7EF2: $00
    nop                                           ; $7EF3: $00
    nop                                           ; $7EF4: $00
    nop                                           ; $7EF5: $00
    nop                                           ; $7EF6: $00
    nop                                           ; $7EF7: $00
    nop                                           ; $7EF8: $00
    nop                                           ; $7EF9: $00
    nop                                           ; $7EFA: $00
    nop                                           ; $7EFB: $00
    nop                                           ; $7EFC: $00
    nop                                           ; $7EFD: $00
    nop                                           ; $7EFE: $00
    nop                                           ; $7EFF: $00
    nop                                           ; $7F00: $00
    nop                                           ; $7F01: $00
    nop                                           ; $7F02: $00
    nop                                           ; $7F03: $00
    nop                                           ; $7F04: $00
    nop                                           ; $7F05: $00
    nop                                           ; $7F06: $00
    nop                                           ; $7F07: $00
    nop                                           ; $7F08: $00
    nop                                           ; $7F09: $00
    nop                                           ; $7F0A: $00
    nop                                           ; $7F0B: $00
    nop                                           ; $7F0C: $00
    nop                                           ; $7F0D: $00
    nop                                           ; $7F0E: $00
    nop                                           ; $7F0F: $00
    nop                                           ; $7F10: $00
    nop                                           ; $7F11: $00
    nop                                           ; $7F12: $00
    nop                                           ; $7F13: $00
    nop                                           ; $7F14: $00
    nop                                           ; $7F15: $00
    nop                                           ; $7F16: $00
    nop                                           ; $7F17: $00
    nop                                           ; $7F18: $00
    nop                                           ; $7F19: $00
    nop                                           ; $7F1A: $00
    nop                                           ; $7F1B: $00
    nop                                           ; $7F1C: $00
    nop                                           ; $7F1D: $00
    nop                                           ; $7F1E: $00
    nop                                           ; $7F1F: $00
    nop                                           ; $7F20: $00
    nop                                           ; $7F21: $00
    nop                                           ; $7F22: $00
    nop                                           ; $7F23: $00
    nop                                           ; $7F24: $00
    nop                                           ; $7F25: $00
    nop                                           ; $7F26: $00
    nop                                           ; $7F27: $00
    nop                                           ; $7F28: $00
    nop                                           ; $7F29: $00
    nop                                           ; $7F2A: $00
    nop                                           ; $7F2B: $00
    nop                                           ; $7F2C: $00
    nop                                           ; $7F2D: $00
    nop                                           ; $7F2E: $00
    nop                                           ; $7F2F: $00
    nop                                           ; $7F30: $00
    nop                                           ; $7F31: $00
    nop                                           ; $7F32: $00
    nop                                           ; $7F33: $00
    nop                                           ; $7F34: $00
    nop                                           ; $7F35: $00
    nop                                           ; $7F36: $00
    nop                                           ; $7F37: $00
    nop                                           ; $7F38: $00
    nop                                           ; $7F39: $00
    nop                                           ; $7F3A: $00
    nop                                           ; $7F3B: $00
    nop                                           ; $7F3C: $00
    nop                                           ; $7F3D: $00
    nop                                           ; $7F3E: $00
    nop                                           ; $7F3F: $00
    nop                                           ; $7F40: $00
    nop                                           ; $7F41: $00
    nop                                           ; $7F42: $00
    nop                                           ; $7F43: $00
    nop                                           ; $7F44: $00
    nop                                           ; $7F45: $00
    nop                                           ; $7F46: $00
    nop                                           ; $7F47: $00
    nop                                           ; $7F48: $00
    nop                                           ; $7F49: $00
    nop                                           ; $7F4A: $00
    nop                                           ; $7F4B: $00
    nop                                           ; $7F4C: $00
    nop                                           ; $7F4D: $00
    nop                                           ; $7F4E: $00
    nop                                           ; $7F4F: $00
    nop                                           ; $7F50: $00
    nop                                           ; $7F51: $00
    nop                                           ; $7F52: $00
    nop                                           ; $7F53: $00
    nop                                           ; $7F54: $00
    nop                                           ; $7F55: $00
    nop                                           ; $7F56: $00
    nop                                           ; $7F57: $00
    nop                                           ; $7F58: $00
    nop                                           ; $7F59: $00
    nop                                           ; $7F5A: $00
    nop                                           ; $7F5B: $00
    nop                                           ; $7F5C: $00
    nop                                           ; $7F5D: $00
    nop                                           ; $7F5E: $00
    nop                                           ; $7F5F: $00
    nop                                           ; $7F60: $00
    nop                                           ; $7F61: $00
    nop                                           ; $7F62: $00
    nop                                           ; $7F63: $00
    nop                                           ; $7F64: $00
    nop                                           ; $7F65: $00
    nop                                           ; $7F66: $00
    nop                                           ; $7F67: $00
    nop                                           ; $7F68: $00
    nop                                           ; $7F69: $00
    nop                                           ; $7F6A: $00
    nop                                           ; $7F6B: $00
    nop                                           ; $7F6C: $00
    nop                                           ; $7F6D: $00
    nop                                           ; $7F6E: $00
    nop                                           ; $7F6F: $00
    nop                                           ; $7F70: $00
    nop                                           ; $7F71: $00
    nop                                           ; $7F72: $00
    nop                                           ; $7F73: $00
    nop                                           ; $7F74: $00
    nop                                           ; $7F75: $00
    nop                                           ; $7F76: $00
    nop                                           ; $7F77: $00
    nop                                           ; $7F78: $00
    nop                                           ; $7F79: $00
    nop                                           ; $7F7A: $00
    nop                                           ; $7F7B: $00
    nop                                           ; $7F7C: $00
    nop                                           ; $7F7D: $00
    nop                                           ; $7F7E: $00
    nop                                           ; $7F7F: $00
    nop                                           ; $7F80: $00
    nop                                           ; $7F81: $00
    nop                                           ; $7F82: $00
    nop                                           ; $7F83: $00
    nop                                           ; $7F84: $00
    nop                                           ; $7F85: $00
    nop                                           ; $7F86: $00
    nop                                           ; $7F87: $00
    nop                                           ; $7F88: $00
    nop                                           ; $7F89: $00
    nop                                           ; $7F8A: $00
    nop                                           ; $7F8B: $00
    nop                                           ; $7F8C: $00
    nop                                           ; $7F8D: $00
    nop                                           ; $7F8E: $00
    nop                                           ; $7F8F: $00
    nop                                           ; $7F90: $00
    nop                                           ; $7F91: $00
    nop                                           ; $7F92: $00
    nop                                           ; $7F93: $00
    nop                                           ; $7F94: $00
    nop                                           ; $7F95: $00
    nop                                           ; $7F96: $00
    nop                                           ; $7F97: $00
    nop                                           ; $7F98: $00
    nop                                           ; $7F99: $00
    nop                                           ; $7F9A: $00
    nop                                           ; $7F9B: $00
    nop                                           ; $7F9C: $00
    nop                                           ; $7F9D: $00
    nop                                           ; $7F9E: $00
    nop                                           ; $7F9F: $00
    nop                                           ; $7FA0: $00
    nop                                           ; $7FA1: $00
    nop                                           ; $7FA2: $00
    nop                                           ; $7FA3: $00
    nop                                           ; $7FA4: $00
    nop                                           ; $7FA5: $00
    nop                                           ; $7FA6: $00
    nop                                           ; $7FA7: $00
    nop                                           ; $7FA8: $00
    nop                                           ; $7FA9: $00
    nop                                           ; $7FAA: $00
    nop                                           ; $7FAB: $00
    nop                                           ; $7FAC: $00
    nop                                           ; $7FAD: $00
    nop                                           ; $7FAE: $00
    nop                                           ; $7FAF: $00
    nop                                           ; $7FB0: $00
    nop                                           ; $7FB1: $00
    nop                                           ; $7FB2: $00
    nop                                           ; $7FB3: $00
    nop                                           ; $7FB4: $00
    nop                                           ; $7FB5: $00
    nop                                           ; $7FB6: $00
    nop                                           ; $7FB7: $00
    nop                                           ; $7FB8: $00
    nop                                           ; $7FB9: $00
    nop                                           ; $7FBA: $00
    nop                                           ; $7FBB: $00
    nop                                           ; $7FBC: $00
    nop                                           ; $7FBD: $00
    nop                                           ; $7FBE: $00
    nop                                           ; $7FBF: $00
    nop                                           ; $7FC0: $00
    nop                                           ; $7FC1: $00
    nop                                           ; $7FC2: $00
    nop                                           ; $7FC3: $00
    nop                                           ; $7FC4: $00
    nop                                           ; $7FC5: $00
    nop                                           ; $7FC6: $00
    nop                                           ; $7FC7: $00
    nop                                           ; $7FC8: $00
    nop                                           ; $7FC9: $00
    nop                                           ; $7FCA: $00
    nop                                           ; $7FCB: $00
    nop                                           ; $7FCC: $00
    nop                                           ; $7FCD: $00
    nop                                           ; $7FCE: $00
    nop                                           ; $7FCF: $00
    nop                                           ; $7FD0: $00
    nop                                           ; $7FD1: $00
    nop                                           ; $7FD2: $00
    nop                                           ; $7FD3: $00
    nop                                           ; $7FD4: $00
    nop                                           ; $7FD5: $00
    nop                                           ; $7FD6: $00
    nop                                           ; $7FD7: $00
    nop                                           ; $7FD8: $00
    nop                                           ; $7FD9: $00
    nop                                           ; $7FDA: $00
    nop                                           ; $7FDB: $00
    nop                                           ; $7FDC: $00
    nop                                           ; $7FDD: $00
    nop                                           ; $7FDE: $00
    nop                                           ; $7FDF: $00
    nop                                           ; $7FE0: $00
    nop                                           ; $7FE1: $00
    nop                                           ; $7FE2: $00
    nop                                           ; $7FE3: $00
    nop                                           ; $7FE4: $00
    nop                                           ; $7FE5: $00
    nop                                           ; $7FE6: $00
    nop                                           ; $7FE7: $00
    nop                                           ; $7FE8: $00
    nop                                           ; $7FE9: $00
    nop                                           ; $7FEA: $00
    nop                                           ; $7FEB: $00
    nop                                           ; $7FEC: $00
    nop                                           ; $7FED: $00
    nop                                           ; $7FEE: $00
    nop                                           ; $7FEF: $00
    nop                                           ; $7FF0: $00
    nop                                           ; $7FF1: $00
    nop                                           ; $7FF2: $00
    nop                                           ; $7FF3: $00
    nop                                           ; $7FF4: $00
    nop                                           ; $7FF5: $00
    nop                                           ; $7FF6: $00
    nop                                           ; $7FF7: $00
    nop                                           ; $7FF8: $00
    nop                                           ; $7FF9: $00
    nop                                           ; $7FFA: $00
    nop                                           ; $7FFB: $00
    nop                                           ; $7FFC: $00
    nop                                           ; $7FFD: $00
    nop                                           ; $7FFE: $00
    nop                                           ; $7FFF: $00
