; Disassembly of "mGB.gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    ret


jr_000_0001:
    ld hl, $c0a1
    inc [hl]
    ld l, [hl]
    ld h, $ce

RST_08::
    ldh a, [rSB]
    ld [hl], a
    ld a, $80
    ldh [rSC], a
    pop af

RST_10::
    pop hl
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    push hl
    ld hl, $ca8d
    jp Jump_000_0067


    rst $38

LCDCInterrupt::
    push hl
    ld hl, $ca9d
    jp Jump_000_0067


    rst $38

TimerOverflowInterrupt::
    push hl
    ld hl, $caad
    jp Jump_000_0067


    rst $38

SerialTransferCompleteInterrupt::
    push hl
    push af
    jr jr_000_0001

    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    push hl
    ld hl, $cacd
    jp Jump_000_0067


Jump_000_0067:
    push af

    push bc
    push de

jr_000_006a:
    ld a, [hl+]
    or [hl]
    jr z, jr_000_0079

    push hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    call Call_000_007e
    pop hl
    inc hl
    jr jr_000_006a

jr_000_0079:
    pop de
    pop bc
    pop af
    pop hl
    reti


Call_000_007e:
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $01, $10, $ce, $ef, $00, $00, $44, $aa, $00, $74, $00, $18, $11, $95, $00, $34
    db $00, $1a, $00, $d5, $00, $22, $00, $69, $6f, $f6, $f7, $73, $09, $90, $e1, $10
    db $44, $40, $9a, $90, $d5, $d0, $44, $30, $a9, $21, $5d, $48, $22, $e0, $f8, $60

HeaderTitle::
    db "MGB", $00, $00, $00, $00, $00, $00, $00, $00

HeaderManufacturerCode::
    db $00, $00, $00, $00

HeaderCGBFlag::
    db $80

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $02

HeaderROMSize::
    db $01

HeaderRAMSize::
    db $03

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $00

HeaderMaskROMVersion::
    db $01

HeaderComplementCheck::
    db $8a

HeaderGlobalChecksum::
    ; db $01, $ea
    db $02, $56 ; 🤷‍♂️

Jump_000_0150:
    di
    ld d, a
    xor a
    ld sp, $e000
    ld hl, $dfff
    ld c, $20
    ld b, $00

jr_000_015d:
    ld [hl-], a
    dec b
    jr nz, jr_000_015d

    dec c
    jr nz, jr_000_015d

    ld hl, $feff
    ld b, $00

jr_000_0169:
    ld [hl-], a
    dec b
    jr nz, jr_000_0169

    ld hl, $ffff
    ld b, $80

jr_000_0172:
    ld [hl-], a
    dec b
    jr nz, jr_000_0172

    ld a, d
    ld [$ca84], a
    call Call_000_363f
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [rSTAT], a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld bc, $ff80
    ld hl, $3656
    ld b, $0a

jr_000_0192:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0192

    ld bc, $3617
    call Call_000_35ce
    ld bc, $3660
    call Call_000_35e0
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $1b
    ldh [rOBP1], a
    ld a, $03
    ldh [$4e], a
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    xor a
    ldh [rNR52], a
    ldh [rSC], a
    ld a, $66
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    xor a
    call Call_000_39d6
    ei
    call Call_000_372a
    sub $27
    ld bc, $7600
    jr @-$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    ld hl, sp+$04
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    inc c
    ld de, $c916
    ld a, c
    ld [de], a
    ld de, $c917
    ld a, [hl]
    and $0f
    ld c, a
    inc c
    ld a, c
    ld [de], a
    ld de, $c918
    ld a, $00
    ld [de], a
    ld de, $c919
    inc hl
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    inc c
    ld a, c
    ld [de], a
    ld de, $c91a
    ld a, [hl]
    and $0f
    ld c, a
    inc c
    ld a, c
    ld [de], a
    ld de, $c91b
    ld a, $00
    ld [de], a
    ld de, $c91c
    inc hl
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    inc c
    ld a, c
    ld [de], a
    ld de, $c91d
    ld a, [hl]
    and $0f
    ld c, a
    inc c
    ld a, c
    ld [de], a
    ld de, $c91e
    ld a, $00
    ld [de], a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    pop bc
    ret


    inc l
    nop
    sbc h
    nop
    ld b, $01
    ld l, e
    ld bc, $01c9
    inc hl
    ld [bc], a
    ld [hl], a
    ld [bc], a
    add $02
    ld [de], a
    inc bc
    ld d, [hl]
    inc bc
    sbc e
    inc bc
    jp c, $1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    ld a, [bc]
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    call nz, $c807
    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca

Call_000_030d:
    push bc
    add sp, -$0a
    ld hl, $c975
    ld [hl], $00
    ld hl, sp+$0e
    ld a, [hl]
    cp $03
    jp z, Jump_000_04fa

    ld hl, sp+$0f
    ld c, [hl]
    ld a, $a8
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    add a
    ld c, a
    ld de, $027d
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld de, $c11b
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$05
    ld [hl], a
    ld a, [hl]
    bit 7, a
    jp z, Jump_000_0402

    ld hl, sp+$10
    ld a, [hl]
    add $01
    ld b, a
    ld a, $2b
    add b
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, b
    add a
    ld b, a
    ld a, $7d
    add b
    ld e, a
    ld a, $02
    adc $00
    ld d, a
    ld hl, sp+$05
    ld a, [hl]
    add $81
    ld b, a
    ld hl, $c133
    ld [hl], b
    inc hl
    ld [hl], $00
    dec hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, $07
    jr jr_000_038b

jr_000_0386:
    or a
    rl b
    rl c

jr_000_038b:
    dec a
    jr nz, jr_000_0386

    ld hl, $c133
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $08
    jr jr_000_03a1

jr_000_0398:
    or a
    ld hl, $c134
    rr [hl]
    dec hl
    rr [hl]

jr_000_03a1:
    dec a
    jr nz, jr_000_0398

    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl+], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$03
    ld [hl], a
    dec hl
    ld [hl], e
    ld hl, $c133
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_37e2
    ld hl, $c134
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $07
    jr jr_000_03ef

jr_000_03ea:
    or a
    rr b
    rr c

jr_000_03ef:
    dec a
    jr nz, jr_000_03ea

    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, $c133
    ld [hl+], a
    ld [hl], d
    jp Jump_000_0493


Jump_000_0402:
    ld hl, sp+$10
    ld c, [hl]
    ld a, $2b
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    add a
    ld c, a
    ld de, $027d
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, $80
    ld hl, sp+$05
    sub [hl]
    ld c, a
    ld b, $00
    ld a, $07
    jr jr_000_043d

jr_000_0438:
    or a
    rl c
    rl b

jr_000_043d:
    dec a
    jr nz, jr_000_0438

    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $08
    jr jr_000_0451

jr_000_0449:
    or a
    ld hl, sp+$03
    rr [hl]
    dec hl
    rr [hl]

jr_000_0451:
    dec a
    jr nz, jr_000_0449

    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld b, a
    ld c, e
    push bc
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_37e2
    ld b, d
    ld c, e
    add sp, $04
    ld a, $07
    jr jr_000_0480

jr_000_047b:
    or a
    rr b
    rr c

jr_000_0480:
    dec a
    jr nz, jr_000_047b

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld hl, $c134
    ld [hl], a
    dec hl
    ld [hl], e

Jump_000_0493:
    ld hl, sp+$04
    ld a, [hl]
    or a
    jp z, Jump_000_04a5

    ld hl, sp+$04
    ld a, [hl]
    cp $01
    jp z, Jump_000_04be

    jp Jump_000_04d7


Jump_000_04a5:
    ld hl, $c134
    ld c, [hl]
    ld b, $00
    ld a, c
    ldh [rNR14], a
    dec hl
    ld a, [hl]
    ldh [rNR13], a
    ld de, $c145
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    jp Jump_000_057c


Jump_000_04be:
    ld hl, $c134
    ld c, [hl]
    ld b, $00
    ld a, c
    ldh [rNR24], a
    dec hl
    ld a, [hl]
    ldh [rNR23], a
    ld de, $c147
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    jp Jump_000_057c


Jump_000_04d7:
    ld hl, $c134
    ld c, [hl]
    ld b, $00
    ld a, c
    ldh [rNR34], a
    dec hl
    ld a, [hl]
    ldh [rNR33], a
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c143
    ld [hl+], a
    ld [hl], e
    ld de, $c149
    ld hl, $c133
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    jp Jump_000_057c


Jump_000_04fa:
    ld de, $c11e
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    bit 7, a
    jp z, Jump_000_0541

    ld a, $a8
    add $07
    ld b, a
    ld a, $c0
    adc $00
    ld c, a
    ld e, b
    ld d, c
    ld a, [de]
    inc hl
    inc hl
    ld [hl], a
    ld e, b
    ld d, c
    ld a, [hl]
    ld [de], a
    dec hl
    dec hl
    ld a, [hl]
    add $80
    ld c, a
    srl c
    srl c
    srl c
    inc hl
    inc hl
    ld a, [hl]
    add c
    ld c, a
    ld a, $b0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c133
    ld [hl], c
    inc hl
    ld [hl], $00
    jp Jump_000_056d


Jump_000_0541:
    ld bc, $c0af
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    ld a, [hl]
    ld [bc], a
    ld a, $80
    dec hl
    dec hl
    sub [hl]
    ld c, a
    srl c
    srl c
    srl c
    inc hl
    inc hl
    ld a, [hl]
    sub c
    ld c, a
    ld a, $b0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c133
    ld [hl], c
    inc hl
    ld [hl], $00

Jump_000_056d:
    ld hl, $c133
    ld a, [hl]
    ldh [rNR43], a
    ld de, $c14b
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a

Jump_000_057c:
    add sp, $0a
    pop bc
    ret


Call_000_0580:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld de, $c97e
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    xor a
    or b
    jp z, Jump_000_0634

    ld hl, sp+$02
    ld a, [hl]
    add a
    ld b, a
    ld a, $45
    add b
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld de, $c976
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, $c133
    ld [hl+], a
    ld [hl], d
    ld de, $c11f
    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $80
    ld [de], a
    ld hl, sp+$02
    ld a, [hl]
    or a
    jp nz, Jump_000_05e1

    jr jr_000_05e4

Jump_000_05e1:
    jp Jump_000_05f4


jr_000_05e4:
    ld hl, $c134
    ld c, [hl]
    ld b, $00
    ld a, c
    ldh [rNR14], a
    dec hl
    ld a, [hl]
    ldh [rNR13], a
    jp Jump_000_0634


Jump_000_05f4:
    ld hl, sp+$02
    ld a, [hl]
    cp $01
    jp nz, Jump_000_05fe

    jr jr_000_0601

Jump_000_05fe:
    jp Jump_000_0611


jr_000_0601:
    ld hl, $c134
    ld c, [hl]
    ld b, $00
    ld a, c
    ldh [rNR24], a
    dec hl
    ld a, [hl]
    ldh [rNR23], a
    jp Jump_000_0634


Jump_000_0611:
    ld hl, sp+$02
    ld a, [hl]
    cp $02
    jp nz, Jump_000_061b

    jr jr_000_061e

Jump_000_061b:
    jp Jump_000_062e


jr_000_061e:
    ld hl, $c134
    ld c, [hl]
    ld b, $00
    ld a, c
    ldh [rNR34], a
    dec hl
    ld a, [hl]
    ldh [rNR33], a
    jp Jump_000_0634


Jump_000_062e:
    ld hl, $c133
    ld a, [hl]
    ldh [rNR43], a

Jump_000_0634:
    add sp, $03
    pop bc
    ret


    push bc
    add sp, -$07
    ld hl, sp+$0b
    ld c, [hl]
    ld de, $ca7f
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld a, $7a
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    cp b
    jr nz, jr_000_0660

    jr jr_000_0663

jr_000_0660:
    jp Jump_000_06f0


jr_000_0663:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld de, $c982
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    xor a
    or b
    jp z, Jump_000_06b6

    ld de, $c976
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    ld a, $7e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    xor a
    ld a, [hl]
    sbc b
    jp nc, Jump_000_06b6

    ld a, [hl]
    add $01
    ld b, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    jp Jump_000_06e8


Jump_000_06b6:
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld de, $c976
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    xor a
    or b
    jp z, Jump_000_06e0

    dec b
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    jp Jump_000_06e8


Jump_000_06e0:
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a

Jump_000_06e8:
    ld a, c
    push af
    inc sp
    call Call_000_0580
    add sp, $01

Jump_000_06f0:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    add sp, $07
    pop bc
    ret


    push bc
    ld de, $c10c
    ld a, [de]
    ld c, a
    ld de, $c10d
    ld a, [de]
    add c
    ld c, a
    ld de, $c10e
    ld a, [de]
    add c
    ld c, a
    ld de, $c10f
    ld a, [de]
    add c
    ldh [rNR51], a
    pop bc
    ret


Call_000_071d:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld a, $14
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    inc hl
    ld a, [hl]
    ld [de], a
    ld a, [hl]
    cp $03
    jp nz, Jump_000_0735

    jr jr_000_0738

Jump_000_0735:
    jp Jump_000_074b


jr_000_0738:
    ld a, c
    inc a
    ld hl, sp+$05
    ld [hl], $11
    jr jr_000_0745

jr_000_0740:
    ld hl, sp+$05
    or a
    rl [hl]

jr_000_0745:
    dec a
    jr nz, jr_000_0740

    jp Jump_000_078f


Jump_000_074b:
    ld hl, sp+$05
    ld a, [hl]
    cp $02
    jp nz, Jump_000_0755

    jr jr_000_0758

Jump_000_0755:
    jp Jump_000_076b


jr_000_0758:
    ld a, c
    inc a
    ld hl, sp+$05
    ld [hl], $10
    jr jr_000_0765

jr_000_0760:
    ld hl, sp+$05
    or a
    rl [hl]

jr_000_0765:
    dec a
    jr nz, jr_000_0760

    jp Jump_000_078f


Jump_000_076b:
    ld hl, sp+$05
    ld a, [hl]
    cp $01
    jp nz, Jump_000_0775

    jr jr_000_0778

Jump_000_0775:
    jp Jump_000_078b


jr_000_0778:
    ld a, c
    inc a
    ld hl, sp+$05
    ld [hl], $01
    jr jr_000_0785

jr_000_0780:
    ld hl, sp+$05
    or a
    rl [hl]

jr_000_0785:
    dec a
    jr nz, jr_000_0780

    jp Jump_000_078f


Jump_000_078b:
    ld hl, sp+$05
    ld [hl], $00

Jump_000_078f:
    ld a, $0c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld hl, sp+$05
    ld a, [hl]
    ld [de], a
    ld de, $c10c
    ld a, [de]
    ld c, a
    ld de, $c10d
    ld a, [de]
    add c
    ld c, a
    ld de, $c10e
    ld a, [de]
    add c
    ld c, a
    ld de, $c10f
    ld a, [de]
    add c
    ldh [rNR51], a
    pop bc
    ret


Call_000_07b6:
    push bc
    xor a
    ld a, $60
    ld hl, sp+$05
    sbc [hl]
    jp nc, Jump_000_07e2

    dec hl
    ld a, [hl]
    inc a
    inc hl
    ld [hl], $10
    jr jr_000_07cd

jr_000_07c8:
    ld hl, sp+$05
    or a
    rl [hl]

jr_000_07cd:
    dec a
    jr nz, jr_000_07c8

    ld hl, sp+$04
    ld c, [hl]
    ld a, $14
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $02
    ld [de], a
    jp Jump_000_082d


Jump_000_07e2:
    xor a
    ld a, $20
    ld hl, sp+$05
    sbc [hl]
    jp nc, Jump_000_080d

    dec hl
    ld a, [hl]
    inc a
    inc hl
    ld [hl], $11
    jr jr_000_07f8

jr_000_07f3:
    ld hl, sp+$05
    or a
    rl [hl]

jr_000_07f8:
    dec a
    jr nz, jr_000_07f3

    ld hl, sp+$04
    ld c, [hl]
    ld a, $14
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $03
    ld [de], a
    jp Jump_000_082d


Jump_000_080d:
    ld hl, sp+$04
    ld a, [hl]
    inc a
    inc hl
    ld [hl], $01
    jr jr_000_081b

jr_000_0816:
    ld hl, sp+$05
    or a
    rl [hl]

jr_000_081b:
    dec a
    jr nz, jr_000_0816

    ld hl, sp+$04
    ld c, [hl]
    ld a, $14
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

Jump_000_082d:
    ld hl, sp+$04
    ld c, [hl]
    ld a, $0c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $c10c
    ld a, [de]
    ld c, a
    ld de, $c10d
    ld a, [de]
    add c
    ld c, a
    ld de, $c10e
    ld a, [de]
    add c
    ld c, a
    ld de, $c10f
    ld a, [de]
    add c
    ldh [rNR51], a
    pop bc
    ret


Call_000_0856:
    push bc
    add sp, -$02
    xor a
    ld a, $17
    ld hl, sp+$06
    sbc [hl]
    jp c, Jump_000_0bc3

    ld e, [hl]
    ld d, $00
    ld hl, $086c
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_000_08b4


    jp Jump_000_08db


    jp Jump_000_0905


    jp Jump_000_0919


    jp Jump_000_092b


    jp Jump_000_0941


    jp Jump_000_0969


    jp Jump_000_0986


    jp Jump_000_09ad


    jp Jump_000_09d7


    jp Jump_000_09eb


    jp Jump_000_0a10


    jp Jump_000_0a38


    jp Jump_000_0a55


    jp Jump_000_0a7c


    jp Jump_000_0aa2


    jp Jump_000_0ac8


    jp Jump_000_0adc


    jp Jump_000_0b01


    jp Jump_000_0b29


    jp Jump_000_0b46


    jp Jump_000_0b6d


    jp Jump_000_0b81


    jp Jump_000_0ba9


Jump_000_08b4:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c24d
    ld [hl], a
    ld c, [hl]
    dec c
    dec c
    ld a, $0c
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_37d6
    ld hl, $c24d
    ld [hl], e
    add sp, $02
    jp Jump_000_0bc3


Jump_000_08db:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld a, c
    or $07
    ldh [rNR11], a
    jp Jump_000_0bc3


Jump_000_0905:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c0f8
    ld [hl], a
    jp Jump_000_0bc3


Jump_000_0919:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ldh [rNR10], a
    jp Jump_000_0bc3


Jump_000_092b:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld de, $c127
    ld a, c
    ld [de], a
    jp Jump_000_0bc3


Jump_000_0941:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c108
    ld [hl], c
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld de, $c0a8
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld a, $00
    ldh [rNR12], a
    jp Jump_000_0bc3


Jump_000_0969:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_071d
    add sp, $02
    jp Jump_000_0bc3


Jump_000_0986:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c24e
    ld [hl], a
    ld c, [hl]
    dec c
    dec c
    ld a, $0c
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_37d6
    ld hl, $c24e
    ld [hl], e
    add sp, $02
    jp Jump_000_0bc3


Jump_000_09ad:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld a, c
    or $07
    ldh [rNR21], a
    jp Jump_000_0bc3


Jump_000_09d7:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c0f9
    ld [hl], a
    jp Jump_000_0bc3


Jump_000_09eb:
    ld de, $c127
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    jp Jump_000_0bc3


Jump_000_0a10:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c109
    ld [hl], c
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld de, $c0aa
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld a, $00
    ldh [rNR22], a
    jp Jump_000_0bc3


Jump_000_0a38:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_071d
    add sp, $02
    jp Jump_000_0bc3


Jump_000_0a55:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c24f
    ld [hl], a
    ld c, [hl]
    dec c
    dec c
    ld a, $0c
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_37d6
    ld hl, $c24f
    ld [hl], e
    add sp, $02
    jp Jump_000_0bc3


Jump_000_0a7c:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld de, $c9b1
    ld a, [de]
    add c
    ld hl, $c11a
    ld [hl], a
    jp Jump_000_0bc3


Jump_000_0aa2:
    ld de, $c9b0
    ld a, [de]
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld hl, sp+$06
    ld b, [hl]
    ld a, $a2
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    add c
    ld hl, $c11a
    ld [hl], a
    jp Jump_000_0bc3


Jump_000_0ac8:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c142
    ld [hl], a
    jp Jump_000_0bc3


Jump_000_0adc:
    ld de, $c127
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    jp Jump_000_0bc3


Jump_000_0b01:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c10b
    ld [hl], c
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld de, $c0ac
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld a, $00
    ldh [rNR32], a
    jp Jump_000_0bc3


Jump_000_0b29:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_071d
    add sp, $02
    jp Jump_000_0bc3


Jump_000_0b46:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c250
    ld [hl], a
    ld c, [hl]
    dec c
    dec c
    ld a, $0c
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_37d6
    ld hl, $c250
    ld [hl], e
    add sp, $02
    jp Jump_000_0bc3


Jump_000_0b6d:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c0fa
    ld [hl], a
    jp Jump_000_0bc3


Jump_000_0b81:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c10a
    ld [hl], c
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld de, $c0ae
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_0bc3

    ld a, $00
    ldh [rNR42], a
    jp Jump_000_0bc3


Jump_000_0ba9:
    ld hl, sp+$06
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_071d
    add sp, $02

Jump_000_0bc3:
    add sp, $02
    pop bc
    ret


Call_000_0bc7:
    push bc
    add sp, -$07
    ld hl, $c135
    ld [hl], $00
    ld a, $09
    push af
    inc sp
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld hl, sp+$06
    ld [hl], e
    add sp, $02
    ld de, $c9df
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d

Jump_000_0bed:
    ld hl, $c135
    ld a, [hl]
    cp $09
    jp z, Jump_000_0c9b

    ld hl, $c135
    ld b, [hl]
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld a, b
    cp $ff
    jp z, Jump_000_0c94

    ld de, $c9df
    ld hl, sp+$04
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, $09
    push af
    inc sp
    ld hl, $c135
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld hl, $c9a2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld de, $c9df
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c135
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld a, c
    push af
    inc sp
    call Call_000_0856
    add sp, $01

Jump_000_0c94:
    ld hl, $c135
    inc [hl]
    jp Jump_000_0bed


Jump_000_0c9b:
    add sp, $07
    pop bc
    ret


    push bc
    add sp, -$02
    call Call_000_369d
    xor a
    ld hl, $c142
    or [hl]
    or a
    jp z, Jump_000_0d4b

    xor a
    ld hl, $ca83
    or [hl]
    or a
    jp nz, Jump_000_0d37

    ld hl, $c251
    inc [hl]
    jr nz, jr_000_0cbf

    inc hl
    inc [hl]

jr_000_0cbf:
    xor a
    ld hl, $c142
    or [hl]
    or a
    jp z, Jump_000_0d37

    xor a
    ld hl, $c253
    or [hl]
    or a
    jp z, Jump_000_0d37

    ld de, $c149
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, $c142
    ld a, [hl]
    inc a
    ld hl, $c251
    ld c, [hl]
    inc hl
    ld b, [hl]
    jr jr_000_0cee

jr_000_0ce9:
    or a
    rl c
    rl b

jr_000_0cee:
    dec a
    jr nz, jr_000_0ce9

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld hl, $c144
    ld [hl], a
    dec hl
    ld [hl], e
    ld hl, $c142
    ld c, [hl]
    srl c
    srl c
    srl c
    xor a
    or c
    jp nz, Jump_000_0d2a

    ld hl, $c143
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $f768
    add hl, de
    jp nc, Jump_000_0d2a

    ld hl, $c143
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c253
    ld [hl], $00

Jump_000_0d2a:
    ld hl, $c144
    ld c, [hl]
    ld b, $00
    ld a, c
    ldh [rNR34], a
    dec hl
    ld a, [hl]
    ldh [rNR33], a

Jump_000_0d37:
    ld hl, $ca83
    inc [hl]
    ld a, [hl]
    cp $02
    jp nz, Jump_000_0d43

    jr jr_000_0d46

Jump_000_0d43:
    jp Jump_000_0d4b


jr_000_0d46:
    ld hl, $ca83
    ld [hl], $00

Jump_000_0d4b:
    add sp, $02
    pop bc
    ret


Call_000_0d4f:
    ld hl, $c834
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ret


Call_000_0d69:
    push bc
    add sp, -$02
    ld a, $09
    push af
    inc sp
    ld hl, $c95d
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $c8f2
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c973
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, $c137
    ld [hl], a
    ld a, $12
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld a, $3e
    add c
    ld c, a
    ld a, $c8
    adc $00
    ld b, a
    push bc
    ld a, $01
    push af
    inc sp
    ld a, $12
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    add sp, $02
    pop bc
    ret


Call_000_0dcd:
    push bc
    add sp, -$06
    ld de, $c916
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    xor a
    ld a, $1b
    ld hl, sp+$0a
    sbc [hl]
    jp c, Jump_000_129b

    ld e, [hl]
    ld d, $00
    ld hl, $0df7
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_000_0e4b


    jp Jump_000_0ea1


    jp Jump_000_0eee


    jp Jump_000_1143


    jp Jump_000_0f8b


    jp Jump_000_0feb


    jp Jump_000_1042


    jp Jump_000_0e4b


    jp Jump_000_0ea1


    jp Jump_000_0eee


    jp Jump_000_0f8b


    jp Jump_000_0feb


    jp Jump_000_1042


    jp Jump_000_0e4b


    jp Jump_000_1099


    jp Jump_000_11a3


    jp Jump_000_1203


    jp Jump_000_0f8b


    jp Jump_000_0feb


    jp Jump_000_1042


    jp Jump_000_0e4b


    jp Jump_000_0eee


    jp Jump_000_0feb


    jp Jump_000_1042


    jp Jump_000_1250


    jp Jump_000_1250


    jp Jump_000_1250


    jp Jump_000_1250


Jump_000_0e4b:
    ld hl, sp+$0b
    ld a, [hl]
    add a
    ld c, a
    ld de, $ca57
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld a, $03
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_0ea1:
    ld hl, sp+$0b
    ld a, [hl]
    add $2c
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_0eee:
    xor a
    ld hl, sp+$0b
    or [hl]
    or a
    jp nz, Jump_000_0f3e

    ld de, $c916
    ld a, $53
    ld [de], a
    ld a, $03
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_0f3e:
    ld hl, sp+$0b
    ld a, [hl]
    add $30
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_0f8b:
    ld hl, sp+$0b
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    inc c
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, [hl]
    and $0f
    ld c, a
    inc c
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_0feb:
    ld hl, sp+$0b
    ld a, [hl]
    add a
    ld c, a
    ld de, $ca6b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $03
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_1042:
    ld hl, sp+$0b
    ld a, [hl]
    add a
    ld c, a
    ld de, $ca63
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $03
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_1099:
    xor a
    ld a, $07
    ld hl, sp+$0b
    sbc [hl]
    jp nc, Jump_000_10f6

    ld a, [hl]
    add $f9
    ld c, a
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c916
    ld a, $30
    ld [de], a
    ld a, $03
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_10f6:
    ld hl, sp+$0b
    ld a, [hl]
    add $27
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_1143:
    ld hl, sp+$0b
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    inc c
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, [hl]
    and $0f
    ld c, a
    inc c
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_11a3:
    ld hl, sp+$0b
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    inc c
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, [hl]
    and $0f
    ld c, a
    inc c
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_1203:
    ld hl, sp+$0b
    ld a, [hl]
    add $01
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    jp Jump_000_129b


Jump_000_1250:
    ld hl, sp+$0b
    ld a, [hl]
    and $0f
    ld c, a
    inc c
    ld de, $c916
    ld a, c
    ld [de], a
    ld a, $03
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06

Jump_000_129b:
    add sp, $06
    pop bc
    ret


Call_000_129f:
    push bc
    add sp, -$02
    ld hl, $c135
    ld [hl], $00

Jump_000_12a7:
    ld hl, $c135
    ld a, [hl]
    cp $09
    jp z, Jump_000_1323

    ld a, $09
    push af
    inc sp
    ld hl, $c0a7
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $c9df
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld a, c
    cp $ff
    jp z, Jump_000_131c

    ld hl, $c135
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c135
    ld b, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_0dcd
    add sp, $02

Jump_000_131c:
    ld hl, $c135
    inc [hl]
    jp Jump_000_12a7


Jump_000_1323:
    add sp, $02
    pop bc
    ret


Call_000_1327:
    push bc
    add sp, -$0e
    ld hl, $c136
    ld [hl], $00
    ld hl, $c137
    ld [hl], $00

Jump_000_1334:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_141e

    ld hl, $c135
    ld [hl], $00

Jump_000_1342:
    ld hl, $c135
    ld a, [hl]
    cp $09
    jp nz, Jump_000_134f

    ld a, $01
    jr jr_000_1350

Jump_000_134f:
    xor a

jr_000_1350:
    ld hl, sp+$0d
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_1417

    ld a, $09
    push af
    inc sp
    ld hl, $c137
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld hl, sp+$0b
    ld [hl], e
    add sp, $02
    ld de, $c9df
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0b
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$0a
    ld [hl+], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    cp $ff
    jp nz, Jump_000_1397

    ld a, $01
    jr jr_000_1398

Jump_000_1397:
    xor a

jr_000_1398:
    ld hl, sp+$08
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_140b

    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, sp+$0b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$07
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$06
    ld [hl], a
    ld de, $c9a2
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$05
    ld [hl], a
    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld hl, sp+$0b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$04
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$03
    ld [hl+], a
    inc hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_0dcd
    add sp, $02
    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$0b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$01
    ld [hl], a
    ld a, [hl]
    push af
    inc sp
    call Call_000_0856
    add sp, $01

Jump_000_140b:
    ld hl, $c135
    ld a, [hl]
    add $01
    ld b, a
    ld c, b
    ld [hl], c
    jp Jump_000_1342


Jump_000_1417:
    ld hl, $c137
    inc [hl]
    jp Jump_000_1334


Jump_000_141e:
    add sp, $0e
    pop bc
    ret


Call_000_1422:
    push bc
    add sp, -$03
    ld hl, $c95d
    ld a, [hl]
    ld hl, $c972
    cp [hl]
    jr nz, jr_000_1432

    jp Jump_000_147c


jr_000_1432:
    xor a
    ld a, $f0
    ld hl, $c95d
    sbc [hl]
    jp nc, Jump_000_143e

    ld [hl], $03

Jump_000_143e:
    xor a
    ld a, $03
    ld hl, $c95d
    sbc [hl]
    jp nc, Jump_000_144a

    ld [hl], $00

Jump_000_144a:
    ld hl, $c95d
    ld c, [hl]
    ld a, $59
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    ld de, $c140
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_1474

    ld hl, $c972
    ld c, [hl]
    ld a, $59
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a

Jump_000_1474:
    ld hl, $c95d
    ld a, [hl]
    ld hl, $c972
    ld [hl], a

Jump_000_147c:
    ld hl, $c137
    ld [hl], $00
    ld de, $c13a
    ld hl, $0006
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d

Jump_000_148e:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_15bc

    xor a
    ld hl, $c974
    or [hl]
    or a
    jp z, Jump_000_14ca

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_14ca

    ld hl, $c137
    ld a, [hl]
    ld hl, $c95d
    cp [hl]
    jr nz, jr_000_14ba

    jp Jump_000_14ca


jr_000_14ba:
    ld hl, $c137
    ld c, [hl]
    ld a, $59
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a

Jump_000_14ca:
    ld hl, $c137
    ld c, [hl]
    ld a, $59
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp z, Jump_000_15b5

    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ld a, $f0
    sbc c
    jp nc, Jump_000_14fe

    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $08
    ld [de], a

Jump_000_14fe:
    ld hl, $c137
    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ld a, $08
    sbc c
    jp nc, Jump_000_1521

    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a

Jump_000_1521:
    ld de, $c966
    ld a, [de]
    ld c, a
    ld hl, $c95d
    ld b, [hl]
    ld a, $62
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $1a
    push af
    inc sp
    call Call_000_3773
    add sp, $03
    ld hl, $c137
    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c956
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld a, c
    ld hl, $c958
    add [hl]
    ld hl, $c954
    add [hl]
    ld c, a
    ld hl, $c137
    ld b, [hl]
    ld a, $6a
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld hl, $c137
    ld a, [hl]
    add $1b
    ld b, a
    ld a, c
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3773
    add sp, $03
    ld hl, $c95d
    ld a, [hl]
    ld hl, $c137
    cp [hl]
    jr nz, jr_000_15a0

    jr jr_000_15a3

jr_000_15a0:
    jp Jump_000_15b5


jr_000_15a3:
    ld hl, $c137
    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c973
    ld [hl], a

Jump_000_15b5:
    ld hl, $c137
    inc [hl]
    jp Jump_000_148e


Jump_000_15bc:
    ld hl, $c137
    ld [hl], $00

Jump_000_15c1:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_160b

    ld hl, $c137
    ld c, [hl]
    ld a, $59
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_1604

    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, $c973
    ld a, [hl]
    ld [de], a
    ld hl, $c137
    ld a, [hl]
    add $1b
    ld c, a
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_3773
    add sp, $03

Jump_000_1604:
    ld hl, $c137
    inc [hl]
    jp Jump_000_15c1


Jump_000_160b:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_161f

    ld hl, $c974
    ld [hl], $00
    jp Jump_000_1624


Jump_000_161f:
    ld hl, $c974
    ld [hl], $01

Jump_000_1624:
    call Call_000_0d69
    add sp, $03
    pop bc
    ret


Call_000_162b:
    push bc
    ld hl, $c137
    ld [hl], $00

Jump_000_1631:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_1658

    ld hl, $c137
    ld a, [hl]
    add $1b
    ld c, a
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_3773
    add sp, $03
    ld hl, $c137
    inc [hl]
    jp Jump_000_1631


Jump_000_1658:
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $1a
    push af
    inc sp
    call Call_000_3773
    add sp, $03
    pop bc
    ret


Call_000_166b:
    call Call_000_1422
    ret


Call_000_166f:
    push bc
    add sp, -$08
    ld hl, $c137
    ld [hl], $00
    ld de, $c0a8
    ld hl, $0006
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld de, $c0a8
    ld hl, $0004
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld de, $c0a8
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d

Jump_000_169e:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_17c9

    xor a
    ld hl, $c137
    or [hl]
    or a
    jp nz, Jump_000_16dc

    ld a, [hl]
    add a
    add a
    ld c, a
    ld de, $ca6f
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld de, $c0a8
    ld a, [de]
    ld c, a
    inc c
    inc c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a
    jp Jump_000_178a


Jump_000_16dc:
    ld hl, $c137
    ld a, [hl]
    cp $01
    jp nz, Jump_000_16e7

    jr jr_000_16ea

Jump_000_16e7:
    jp Jump_000_171b


jr_000_16ea:
    ld hl, $c137
    ld a, [hl]
    add a
    add a
    ld c, a
    ld de, $ca6f
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    inc c
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a
    jp Jump_000_178a


Jump_000_171b:
    ld hl, $c137
    ld a, [hl]
    cp $02
    jp nz, Jump_000_1726

    jr jr_000_1729

Jump_000_1726:
    jp Jump_000_175b


jr_000_1729:
    ld hl, $c137
    ld a, [hl]
    add a
    add a
    ld c, a
    ld de, $ca6f
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    inc c
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a
    jp Jump_000_178a


Jump_000_175b:
    ld hl, $c137
    ld a, [hl]
    add a
    add a
    ld c, a
    ld de, $ca6f
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    inc c
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld de, $c916
    ld a, c
    ld [de], a

Jump_000_178a:
    ld hl, $c137
    ld a, [hl]
    add a
    add a
    ld c, a
    ld de, $ca6f
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ld hl, $c137
    inc [hl]
    jp Jump_000_169e


Jump_000_17c9:
    add sp, $08
    pop bc
    ret


Call_000_17cd:
    push bc
    ld hl, $c137
    ld [hl], $00

Jump_000_17d3:
    ld hl, $c137
    ld a, [hl]
    cp $14
    jp z, Jump_000_17f0

    ld hl, $c137
    ld c, [hl]
    ld a, $16
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    inc [hl]
    jp Jump_000_17d3


Jump_000_17f0:
    ld hl, $c137
    ld [hl], $00

Jump_000_17f5:
    ld hl, $c137
    ld a, [hl]
    cp $12
    jp z, Jump_000_1820

    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld hl, $c137
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ld hl, $c137
    inc [hl]
    jp Jump_000_17f5


Jump_000_1820:
    pop bc
    ret


    call Call_000_162b
    call Call_000_17cd
    ld hl, $c9be
    ld [hl], $01
    ret


Call_000_182e:
    push bc
    add sp, -$04
    call Call_000_17cd
    ld hl, $c9be
    ld [hl], $01
    ld de, $c916
    ld a, $42
    ld [de], a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ld de, $c916
    ld a, $43
    ld [de], a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ld de, $c916
    ld a, $44
    ld [de], a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ld de, $c916
    ld a, $45
    ld [de], a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $0f
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ld hl, $c137
    ld [hl], $00
    ld de, $c916
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d

Jump_000_18c7:
    ld hl, $c137
    ld a, [hl]
    cp $1c
    jp z, Jump_000_1926

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a
    ld de, $c916
    ld a, $01
    ld [de], a
    ld a, $03
    push af
    inc sp
    ld hl, $c137
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld de, $ca03
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld hl, $c916
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ld hl, $c137
    inc [hl]
    jp Jump_000_18c7


Jump_000_1926:
    call Call_000_1327
    call Call_000_166b
    add sp, $04
    pop bc
    ret


Call_000_1930:
    call Call_000_162b
    call Call_000_17cd
    ld hl, $c92a
    push hl
    ld a, $02
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_000_3958
    add sp, $06
    ret


Call_000_1950:
    ld hl, $c9be
    ld a, [hl]
    or a
    jp nz, Jump_000_195a

    jr jr_000_195d

Jump_000_195a:
    jp Jump_000_1969


jr_000_195d:
    ldh a, [$4e]
    or $80
    ldh [$4e], a
    call Call_000_182e
    jp Jump_000_1971


Jump_000_1969:
    ld hl, $c9be
    ld [hl], $00
    call Call_000_363f

Jump_000_1971:
    ret


Call_000_1972:
    push bc
    add sp, -$03
    call Call_000_363f
    ld hl, $c93a
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_3780
    add sp, $04
    ld hl, $c274
    push hl
    ld a, $5c
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_380c
    add sp, $04
    ld hl, $c942
    push hl
    ld a, $02
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_37ab
    add sp, $04
    ld hl, $c137
    ld [hl], $00

Jump_000_19b0:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_1a5f

    ld hl, $c137
    ld c, [hl]
    ld de, $c962
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    ld hl, $c953
    ld a, [hl]
    ld hl, $c957
    add [hl]
    ld c, a
    ld hl, $c955
    ld a, [hl]
    push af
    inc sp
    ld hl, $c137
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld b, e
    add sp, $02
    ld a, c
    add b
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    add $ff
    ld b, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    ld hl, $c137
    ld b, [hl]
    ld a, $66
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, $c954
    ld a, [hl]
    ld hl, $c958
    add [hl]
    ld b, a
    ld a, b
    add $f8
    ld c, a
    ld a, c
    ld [de], a
    ld hl, $c137
    ld c, [hl]
    ld a, $6a
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$00
    ld a, [hl]
    add $f8
    ld c, a
    ld a, c
    ld [de], a
    ld hl, $c137
    ld c, [hl]
    ld a, $6e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, b
    ld [de], a
    ld c, [hl]
    ld de, $c95e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $6e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c137
    inc [hl]
    jp Jump_000_19b0


Jump_000_1a5f:
    ldh a, [$4e]
    and $df
    ldh [$4e], a
    ld hl, $c254
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $80
    push af
    inc sp
    call Call_000_3859
    add sp, $04
    ld hl, $c264
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $79
    push af
    inc sp
    call Call_000_3859
    add sp, $04
    ld a, $80
    push af
    inc sp
    ld a, $1a
    push af
    inc sp
    call Call_000_38e8
    add sp, $02
    ld hl, $c137
    ld [hl], $00

Jump_000_1a99:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_1abc

    ld hl, $c137
    ld a, [hl]
    add $1b
    ld c, a
    ld a, $79
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_38e8
    add sp, $02
    ld hl, $c137
    inc [hl]
    jp Jump_000_1a99


Jump_000_1abc:
    ld hl, $c137
    ld [hl], $00

Jump_000_1ac1:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_1ae4

    ld hl, $c137
    ld a, [hl]
    add $1a
    ld c, a
    ld a, $01
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_3759
    add sp, $02
    ld hl, $c137
    inc [hl]
    jp Jump_000_1ac1


Jump_000_1ae4:
    ld hl, $c137
    ld [hl], $00

Jump_000_1ae9:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_1b0c

    ld hl, $c137
    ld a, [hl]
    add $1b
    ld c, a
    ld a, $01
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_3759
    add sp, $02
    ld hl, $c137
    inc [hl]
    jp Jump_000_1ae9


Jump_000_1b0c:
    ldh a, [$4e]
    or $01
    ldh [$4e], a
    add sp, $03
    pop bc
    ret


Call_000_1b16:
    push bc
    add sp, -$04
    ld de, $0000
    ld a, $0a
    ld [de], a
    ld hl, sp+$08
    ld a, [hl]
    add $18
    ld hl, $c136
    ld [hl], a
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld [hl], a
    ld hl, $c135
    ld [hl], $00
    xor a
    ld a, $03
    ld hl, sp+$08
    sbc [hl]
    jp c, Jump_000_1ca2

    ld e, [hl]
    ld d, $00
    ld hl, $1b56
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_000_1b62


    jp Jump_000_1ba7


    jp Jump_000_1bf4


    jp Jump_000_1c4b


Jump_000_1b62:
    ld hl, $c137
    ld [hl], $00

Jump_000_1b67:
    ld hl, $c137
    ld a, [hl]
    cp $07
    jp z, Jump_000_1ca2

    ld hl, $c136
    ld a, [hl]
    ld hl, $c135
    add [hl]
    ld c, a
    ld de, $a000
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1b67


Jump_000_1ba7:
    ld hl, $c137
    ld [hl], $07
    ld hl, $c136
    ld a, [hl]
    add $80
    ld hl, sp+$02
    ld [hl], a

Jump_000_1bb5:
    ld hl, $c137
    ld a, [hl]
    cp $0d
    jp z, Jump_000_1ca2

    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c135
    add [hl]
    ld b, a
    ld de, $a000
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1bb5


Jump_000_1bf4:
    ld hl, $c137
    ld [hl], $0d

Jump_000_1bf9:
    ld hl, $c137
    ld a, [hl]
    cp $14
    jp z, Jump_000_1ca2

    ld hl, $c136
    ld c, [hl]
    ld b, $00
    ld hl, $0100
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1bf9


Jump_000_1c4b:
    ld hl, $c137
    ld [hl], $14

Jump_000_1c50:
    ld hl, $c137
    ld a, [hl]
    cp $18
    jp z, Jump_000_1ca2

    ld hl, $c136
    ld c, [hl]
    ld b, $00
    ld hl, $0180
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1c50


Jump_000_1ca2:
    ld de, $0000
    ld a, $00
    ld [de], a
    add sp, $04
    pop bc
    ret


Call_000_1cac:
    push bc
    add sp, -$06
    ld de, $0000
    ld a, $0a
    ld [de], a
    ld hl, sp+$0a
    ld a, [hl]
    add $18
    ld c, a
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld hl, $c136
    ld [hl], a
    ld hl, $c135
    ld [hl], $00
    xor a
    ld a, $03
    ld hl, sp+$0a
    sbc [hl]
    jp c, Jump_000_1e7e

    ld e, [hl]
    ld d, $00
    ld hl, $1ceb
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_000_1cf7


    jp Jump_000_1d4d


    jp Jump_000_1daa


    jp Jump_000_1e14


Jump_000_1cf7:
    ld hl, $c137
    ld [hl], $00

Jump_000_1cfc:
    ld hl, $c137
    ld a, [hl]
    cp $07
    jp z, Jump_000_1e7e

    ld hl, $c137
    ld c, [hl]
    ld a, $bf
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_1d42

    ld c, [hl]
    ld de, $c9a2
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, $c136
    ld a, [hl]
    ld hl, $c135
    add [hl]
    ld c, a
    ld a, $00
    add c
    ld e, a
    ld a, $a0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_000_1d42:
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1cfc


Jump_000_1d4d:
    ld hl, $c137
    ld [hl], $07
    ld hl, $c136
    ld a, [hl]
    add $80
    ld hl, sp+$04
    ld [hl], a

Jump_000_1d5b:
    ld hl, $c137
    ld a, [hl]
    cp $0d
    jp z, Jump_000_1e7e

    ld hl, $c137
    ld b, [hl]
    ld a, $bf
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    xor a
    or b
    jp nz, Jump_000_1d9f

    ld b, [hl]
    ld de, $c9a2
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    inc hl
    ld a, [hl]
    ld hl, $c135
    add [hl]
    ld c, a
    ld a, $00
    add c
    ld e, a
    ld a, $a0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_000_1d9f:
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1d5b


Jump_000_1daa:
    ld hl, $c137
    ld [hl], $0d

Jump_000_1daf:
    ld hl, $c137
    ld a, [hl]
    cp $14
    jp z, Jump_000_1e7e

    ld hl, $c137
    ld c, [hl]
    ld a, $bf
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_1e09

    ld c, [hl]
    ld de, $c9a2
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c136
    ld c, [hl]
    ld b, $00
    ld hl, $0100
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld a, $00
    add c
    ld e, a
    ld a, $a0
    adc b
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_000_1e09:
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1daf


Jump_000_1e14:
    ld hl, $c137
    ld [hl], $14

Jump_000_1e19:
    ld hl, $c137
    ld a, [hl]
    cp $18
    jp z, Jump_000_1e7e

    ld hl, $c137
    ld c, [hl]
    ld a, $bf
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_1e73

    ld c, [hl]
    ld de, $c9a2
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c136
    ld c, [hl]
    ld b, $00
    ld hl, $0180
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld c, [hl]
    ld b, $00
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld a, $00
    add c
    ld e, a
    ld a, $a0
    adc b
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_000_1e73:
    ld hl, $c135
    inc [hl]
    ld hl, $c137
    inc [hl]
    jp Jump_000_1e19


Jump_000_1e7e:
    ld de, $0000
    ld a, $00
    ld [de], a
    add sp, $06
    pop bc
    ret


Call_000_1e88:
    push bc
    add sp, -$02
    ld hl, $c973
    ld a, [hl]
    cp $08
    jp nz, Jump_000_1e96

    jr jr_000_1e99

Jump_000_1e96:
    jp Jump_000_1eec


jr_000_1e99:
    ld hl, $c138
    ld [hl], $00

Jump_000_1e9e:
    ld hl, $c138
    ld a, [hl]
    cp $04
    jp nc, Jump_000_1f70

    ld c, [hl]
    ld a, $59
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp z, Jump_000_1ee5

    xor a
    ld hl, $c952
    or [hl]
    or a
    jp nz, Jump_000_1ecf

    ld hl, $c138
    ld a, [hl]
    push af
    inc sp
    call Call_000_1b16
    add sp, $01
    jp Jump_000_1ee5


Jump_000_1ecf:
    ld hl, $c138
    ld a, [hl]
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld hl, $c138
    ld a, [hl]
    push af
    inc sp
    call Call_000_0bc7
    add sp, $01

Jump_000_1ee5:
    ld hl, $c138
    inc [hl]
    jp Jump_000_1e9e


Jump_000_1eec:
    xor a
    ld hl, $c952
    or [hl]
    or a
    jp nz, Jump_000_1f31

    ld hl, $c137
    ld [hl], $00

Jump_000_1efa:
    ld hl, $c137
    ld a, [hl]
    cp $18
    jp z, Jump_000_1f70

    ld hl, $c137
    ld c, [hl]
    ld de, $c986
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c137
    inc [hl]
    jp Jump_000_1efa


Jump_000_1f31:
    ld hl, $c137
    ld [hl], $00

Jump_000_1f36:
    ld hl, $c137
    ld a, [hl]
    cp $18
    jp z, Jump_000_1f6d

    ld hl, $c137
    ld c, [hl]
    ld de, $c9a2
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $86
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c137
    inc [hl]
    jp Jump_000_1f36


Jump_000_1f6d:
    call Call_000_1327

Jump_000_1f70:
    add sp, $02
    pop bc
    ret


Call_000_1f74:
    push bc
    add sp, -$13
    ld de, $0000
    ld a, $0a
    ld [de], a
    ld de, $a000
    ld hl, $0200
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, [hl]
    cp $f7
    jp z, Jump_000_21bc

    ld hl, $c136
    ld [hl], $00

Jump_000_1f9c:
    ld hl, $c136
    ld a, [hl]
    cp $80
    jp z, Jump_000_21b4

    ld hl, $c138
    ld [hl], $00
    ld hl, $c135
    ld [hl], $00

Jump_000_1faf:
    ld hl, $c135
    ld a, [hl]
    cp $07
    ld a, $00
    rla
    ld hl, sp+$12
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_200e

    ld hl, $c136
    ld a, [hl]
    ld hl, $c138
    add [hl]
    ld hl, sp+$0b
    ld [hl], a
    ld de, $a000
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a
    ld de, $c9a2
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0c
    ld [hl+], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0c
    ld a, [hl]
    ld [de], a
    ld hl, $c138
    ld a, [hl]
    add $01
    ld hl, sp+$0a
    ld [hl], a
    ld a, [hl]
    ld hl, $c138
    ld [hl], a
    ld hl, $c135
    ld a, [hl]
    add $01
    ld b, a
    ld c, b
    ld [hl], c
    jp Jump_000_1faf


Jump_000_200e:
    ld hl, $c138
    ld [hl], $00
    ld hl, $c135
    ld [hl], $07

Jump_000_2018:
    ld hl, $c135
    ld a, [hl]
    cp $0d
    jp nz, Jump_000_2025

    ld a, $01
    jr jr_000_2026

Jump_000_2025:
    xor a

jr_000_2026:
    ld hl, sp+$0a
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_207e

    ld hl, $c136
    ld a, [hl]
    add $80
    ld hl, $c138
    add [hl]
    ld hl, sp+$0d
    ld [hl], a
    ld de, $a000
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$0b
    ld [hl], a
    ld de, $c9a2
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0c
    ld [hl+], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0c
    ld a, [hl]
    ld [de], a
    ld hl, $c138
    ld a, [hl]
    add $01
    ld hl, sp+$12
    ld [hl], a
    ld a, [hl]
    ld hl, $c138
    ld [hl], a
    ld hl, $c135
    ld a, [hl]
    add $01
    ld b, a
    ld c, b
    ld [hl], c
    jp Jump_000_2018


Jump_000_207e:
    ld hl, $c138
    ld [hl], $00
    ld hl, $c135
    ld [hl], $0d

Jump_000_2088:
    ld hl, $c135
    ld a, [hl]
    cp $14
    jp nz, Jump_000_2095

    ld a, $01
    jr jr_000_2096

Jump_000_2095:
    xor a

jr_000_2096:
    ld hl, sp+$0a
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_2114

    ld hl, $c136
    ld a, [hl]
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0100
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], d
    ld hl, $c138
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$0e
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld de, $a000
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld de, $c9a2
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0b
    ld [hl], a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0b
    ld a, [hl]
    ld [de], a
    ld hl, $c138
    ld a, [hl]
    add $01
    ld hl, sp+$0d
    ld [hl], a
    ld a, [hl]
    ld hl, $c138
    ld [hl], a
    ld hl, $c135
    ld a, [hl]
    add $01
    ld c, a
    ld b, c
    ld [hl], b
    jp Jump_000_2088


Jump_000_2114:
    ld hl, $c138
    ld [hl], $00
    ld hl, $c135
    ld [hl], $14

Jump_000_211e:
    ld hl, $c135
    ld a, [hl]
    cp $18
    jp nz, Jump_000_212b

    ld a, $01
    jr jr_000_212c

Jump_000_212b:
    xor a

jr_000_212c:
    ld hl, sp+$02
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_21aa

    ld hl, $c136
    ld a, [hl]
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0180
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, $c138
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld de, $a000
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c135
    ld a, [hl]
    ld hl, sp+$0b
    ld [hl], a
    ld de, $c9a2
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0a
    ld [hl], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0a
    ld a, [hl]
    ld [de], a
    ld hl, $c138
    ld a, [hl]
    add $01
    ld hl, sp+$0c
    ld [hl], a
    ld a, [hl]
    ld hl, $c138
    ld [hl], a
    ld hl, $c135
    ld a, [hl]
    add $01
    ld c, a
    ld b, c
    ld [hl], b
    jp Jump_000_211e


Jump_000_21aa:
    ld hl, $c136
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_000_1f9c


Jump_000_21b4:
    ld hl, sp+$10
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $f7
    ld [de], a

Jump_000_21bc:
    ld de, $0000
    ld a, $00
    ld [de], a
    ld hl, $c137
    ld [hl], $00

Jump_000_21c7:
    ld hl, $c137
    ld a, [hl]
    cp $18
    jp z, Jump_000_21fe

    ld hl, $c137
    ld c, [hl]
    ld de, $c986
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c137
    inc [hl]
    jp Jump_000_21c7


Jump_000_21fe:
    add sp, $13
    pop bc
    ret


Call_000_2202:
    push bc
    ld hl, $c137
    ld [hl], $00

Jump_000_2208:
    ld hl, $c137
    ld a, [hl]
    cp $18
    jp z, Jump_000_2225

    ld hl, $c137
    ld c, [hl]
    ld a, $bf
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    inc [hl]
    jp Jump_000_2208


Jump_000_2225:
    pop bc
    ret


Call_000_2227:
    push bc
    add sp, -$05
    ld hl, sp+$04
    ld [hl], $00
    dec hl
    ld [hl], $01
    ld hl, $c975
    ld [hl], $00
    ld hl, $c137
    ld [hl], $00
    ld hl, $c135
    ld a, [hl]
    and $04
    ld hl, sp+$02
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_2258

    ld hl, $c137
    ld [hl], $01
    ld hl, sp+$04
    ld [hl], $01
    dec hl
    ld [hl], $10
    jp Jump_000_2290


Jump_000_2258:
    ld hl, $c135
    ld a, [hl]
    bit 3, a
    jp z, Jump_000_226d

    ld hl, $c137
    ld [hl], $01
    ld hl, sp+$03
    ld [hl], $10
    jp Jump_000_2290


Jump_000_226d:
    ld hl, $c135
    ld a, [hl]
    bit 1, a
    jp z, Jump_000_227e

    ld hl, $c137
    ld [hl], $01
    jp Jump_000_2290


Jump_000_227e:
    ld hl, $c135
    ld a, [hl]
    bit 0, a
    jp z, Jump_000_2290

    ld hl, sp+$04
    ld [hl], $01
    ld hl, $c137
    ld [hl], $01

Jump_000_2290:
    xor a
    ld hl, $c137
    or [hl]
    or a
    jp z, Jump_000_24da

    ld [hl], $00

Jump_000_229b:
    ld hl, $c137
    ld a, [hl]
    cp $04
    jp z, Jump_000_24da

    ld hl, $c137
    ld b, [hl]
    ld a, $59
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    xor a
    or b
    jp z, Jump_000_24d3

    ld a, $09
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld b, e
    add sp, $02
    ld de, $c9df
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c137
    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld a, c
    cp $ff
    jp z, Jump_000_24d3

    ld hl, $c137
    ld c, [hl]
    ld a, $5e
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, $c136
    ld [hl], a
    ld a, $03
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_37d6
    ld c, e
    add sp, $02
    ld a, $03
    add c
    ld c, a
    ld a, $ca
    adc $00
    ld b, a
    ld e, c
    ld d, b
    inc de
    inc de
    ld a, [de]
    ld hl, $c138
    ld [hl], a
    ld hl, $c136
    ld a, [hl]
    or a
    jp z, Jump_000_23ed

    ld hl, $c136
    ld a, [hl]
    cp $06
    jp z, Jump_000_237e

    ld hl, $c136
    ld a, [hl]
    cp $07
    jp z, Jump_000_23ed

    ld hl, $c136
    ld a, [hl]
    cp $0c
    jp z, Jump_000_237e

    ld hl, $c136
    ld a, [hl]
    cp $0d
    jp z, Jump_000_23ed

    ld hl, $c136
    ld a, [hl]
    cp $13
    jp z, Jump_000_237e

    ld hl, $c136
    ld a, [hl]
    cp $14
    jp z, Jump_000_23ed

    ld hl, $c136
    ld a, [hl]
    cp $17
    jp nz, Jump_000_237b

    jr jr_000_237e

Jump_000_237b:
    jp Jump_000_23f1


Jump_000_237e:
jr_000_237e:
    ld hl, $c135
    ld a, [hl]
    bit 3, a
    jp z, Jump_000_239a

    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_000_24bb


Jump_000_239a:
    xor a
    ld hl, sp+$02
    or [hl]
    or a
    jp z, Jump_000_23b5

    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $03
    ld [de], a
    jp Jump_000_24bb


Jump_000_23b5:
    ld hl, $c135
    ld a, [hl]
    bit 1, a
    jp z, Jump_000_23d1

    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $02
    ld [de], a
    jp Jump_000_24bb


Jump_000_23d1:
    ld hl, $c135
    ld a, [hl]
    bit 0, a
    jp z, Jump_000_24bb

    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    jp Jump_000_24bb


Jump_000_23ed:
    ld hl, sp+$03
    ld [hl], $01

Jump_000_23f1:
    xor a
    ld hl, sp+$04
    or [hl]
    or a
    jp z, Jump_000_2454

    ld hl, $c136
    ld c, [hl]
    ld de, $c9a2
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$03
    add [hl]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ld a, c
    ld hl, $c138
    sbc [hl]
    jp c, Jump_000_24bb

    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, $c138
    ld a, [hl]
    add $ff
    ld c, a
    ld a, c
    ld [de], a
    jp Jump_000_24bb


Jump_000_2454:
    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp z, Jump_000_24bb

    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ld hl, sp+$03
    ld a, [hl]
    sbc c
    jp nc, Jump_000_24ab

    ld hl, $c136
    ld c, [hl]
    ld de, $c9a2
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    ld hl, sp+$03
    sub [hl]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    jp Jump_000_24bb


Jump_000_24ab:
    ld hl, $c136
    ld c, [hl]
    ld a, $a2
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a

Jump_000_24bb:
    ld hl, $c136
    ld c, [hl]
    ld a, $bf
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    ld a, [hl]
    push af
    inc sp
    call Call_000_0856
    add sp, $01

Jump_000_24d3:
    ld hl, $c137
    inc [hl]
    jp Jump_000_229b


Jump_000_24da:
    add sp, $05
    pop bc
    ret


Call_000_24de:
    push bc
    add sp, -$05
    call Call_000_38cc
    ld hl, $c135
    ld [hl], e
    ld hl, $c139
    ld a, [hl]
    ld hl, $c135
    cp [hl]
    jr nz, jr_000_24f5

    jp Jump_000_2770


jr_000_24f5:
    ld hl, $c135
    ld a, [hl]
    ld hl, $c139
    ld [hl], a
    xor a
    ld hl, $c135
    or [hl]
    or a
    jp z, Jump_000_2737

    ld a, [hl]
    bit 4, a
    jp z, Jump_000_252e

    ld de, $c13a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp nz, Jump_000_252e

    ld de, $c13a
    ld a, $01
    ld [de], a
    ld a, [hl]
    bit 6, a
    jp z, Jump_000_2528

    call Call_000_1950
    jp Jump_000_252b


Jump_000_2528:
    call Call_000_2227

Jump_000_252b:
    jp Jump_000_2770


Jump_000_252e:
    ld de, $c13a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp z, Jump_000_2544

    ld de, $c13a
    ld a, $00
    ld [de], a
    call Call_000_2227
    jp Jump_000_2770


Jump_000_2544:
    ld hl, $c135
    ld a, [hl]
    bit 5, a
    jp z, Jump_000_2578

    ld bc, $c13b
    ld a, [bc]
    ld hl, sp+$04
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_2578

    ld a, $01
    ld [bc], a
    ld hl, $c135
    ld a, [hl]
    bit 6, a
    jp z, Jump_000_256d

    ld hl, $c952
    ld [hl], $00
    jp Jump_000_2572


Jump_000_256d:
    ld hl, $c952
    ld [hl], $01

Jump_000_2572:
    call Call_000_1e88
    jp Jump_000_2770


Jump_000_2578:
    ld bc, $c13b
    ld a, [bc]
    ld hl, sp+$04
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_258a

    ld a, $00
    ld [bc], a
    jp Jump_000_2770


Jump_000_258a:
    ld hl, $c135
    ld a, [hl]
    bit 2, a
    jp z, Jump_000_25cb

    ld bc, $c13c
    ld a, [bc]
    ld hl, sp+$04
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_25cb

    ld a, $01
    ld [bc], a
    ld hl, $c95d
    ld c, [hl]
    ld de, $c95e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, [hl]
    add $ff
    ld c, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    call Call_000_1422
    jp Jump_000_2770


Jump_000_25cb:
    ld bc, $c13c
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_25dd

    ld a, $00
    ld [bc], a
    jp Jump_000_2770


Jump_000_25dd:
    ld hl, $c135
    ld a, [hl]
    bit 0, a
    jp z, Jump_000_25ff

    ld bc, $c13f
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_25ff

    ld a, $01
    ld [bc], a
    ld hl, $c95d
    inc [hl]
    call Call_000_1422
    jp Jump_000_2770


Jump_000_25ff:
    ld bc, $c13f
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_2611

    ld a, $00
    ld [bc], a
    jp Jump_000_2770


Jump_000_2611:
    ld hl, $c135
    ld a, [hl]
    bit 3, a
    jp z, Jump_000_2652

    ld bc, $c13d
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_2652

    ld a, $01
    ld [bc], a
    ld hl, $c95d
    ld c, [hl]
    ld de, $c95e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, [hl]
    add $01
    ld c, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    call Call_000_1422
    jp Jump_000_2770


Jump_000_2652:
    ld bc, $c13d
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_2664

    ld a, $00
    ld [bc], a
    jp Jump_000_2770


Jump_000_2664:
    ld hl, $c135
    ld a, [hl]
    bit 1, a
    jp z, Jump_000_2686

    ld bc, $c13e
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_2686

    ld a, $01
    ld [bc], a
    ld hl, $c95d
    dec [hl]
    call Call_000_1422
    jp Jump_000_2770


Jump_000_2686:
    ld bc, $c13e
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_2698

    ld a, $00
    ld [bc], a
    jp Jump_000_2770


Jump_000_2698:
    ld hl, $c135
    ld a, [hl]
    bit 6, a
    jp z, Jump_000_26b3

    ld bc, $c140
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_26b3

    ld a, $01
    ld [bc], a
    jp Jump_000_2770


Jump_000_26b3:
    ld bc, $c140
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_26c5

    ld a, $00
    ld [bc], a
    jp Jump_000_2770


Jump_000_26c5:
    ld hl, $c135
    ld a, [hl]
    bit 7, a
    jp z, Jump_000_2725

    ld bc, $c141
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_000_2725

    ld a, $01
    ld [bc], a
    ld a, $00
    ldh [rNR12], a
    ld a, $00
    ldh [rNR22], a
    ld a, $00
    ldh [rNR32], a
    ld a, $00
    ldh [rNR42], a
    ld de, $c11b
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld bc, $c11d
    ld de, $c11e
    ld a, $80
    ld [de], a
    ld a, $80
    ld [bc], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $80
    ld [de], a
    ld de, $c11b
    ld a, $80
    ld [de], a
    ld hl, $c10b
    ld [hl], $00
    ld hl, $c109
    ld [hl], $00
    ld hl, $c108
    ld [hl], $00
    jp Jump_000_2770


Jump_000_2725:
    ld bc, $c141
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_2770

    ld a, $00
    ld [bc], a
    jp Jump_000_2770


Jump_000_2737:
    call Call_000_2202
    ld hl, $c137
    ld [hl], $00

Jump_000_273f:
    ld hl, $c137
    ld a, [hl]
    cp $08
    jp z, Jump_000_2770

    ld hl, $c137
    ld c, [hl]
    ld a, $3a
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    or c
    jp z, Jump_000_2769

    ld c, [hl]
    ld a, $3a
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $00
    ld [de], a

Jump_000_2769:
    ld hl, $c137
    inc [hl]
    jp Jump_000_273f


Jump_000_2770:
    add sp, $05
    pop bc
    ret


Call_000_2774:
    ld a, $8f
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    ld a, $40
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07b6
    add sp, $02
    ld a, $40
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_07b6
    add sp, $02
    ld a, $40
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_07b6
    add sp, $02
    ld a, $40
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_07b6
    add sp, $02
    ld hl, $c11a
    ld a, [hl]
    push af
    inc sp
    call Call_000_28ab
    add sp, $01
    ld a, $00
    ldh [rNR32], a
    ld a, $80
    ldh [rNR44], a
    ld a, $3f
    ldh [rNR41], a
    ret


    ld hl, $c0a3
    ld [hl], $40
    ld hl, $c0a4
    ld [hl], $fe
    call Call_000_2ae8
    ret


    push bc
    call Call_000_369f
    call Call_000_3550
    call Call_000_1f74
    call Call_000_1972
    call Call_000_2774
    ld bc, $0c9f
    push bc
    call Call_000_36ff
    add sp, $02
    ld a, $00
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld a, $01
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld a, $02
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld a, $03
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    call Call_000_369d
    ld a, $00
    ldh [rTMA], a
    ld a, $05
    ldh [rTAC], a
    ld a, $0d
    push af
    inc sp
    call Call_000_36a7
    add sp, $01
    ldh a, [$4e]
    or $01
    ldh [$4e], a
    ldh a, [$4e]
    or $02
    ldh [$4e], a
    call Call_000_1930
    ld hl, $07d0
    push hl
    call Call_000_392d
    add sp, $02
    call Call_000_182e
    call Call_000_0d4f
    call Call_000_284a
    pop bc
    ret


Call_000_284a:
jr_000_284a:
    ld a, $01
    ld hl, $c975
    ld [hl], a
    call Call_000_2dff
    ld a, $01
    ld hl, $c975
    bit 0, [hl]
    call nz, Call_000_24de
    ld a, $01
    ld hl, $c975
    bit 0, [hl]
    call nz, Call_000_290a
    ld hl, $c975
    bit 0, [hl]
    call nz, Call_000_297a
    ld hl, $c975
    bit 0, [hl]
    call nz, Call_000_29ea
    ld hl, $c975
    bit 0, [hl]
    call nz, Call_000_2a85
    ld hl, $c975
    bit 0, [hl]
    jr nz, jr_000_2889

    jr jr_000_284a

    ret


jr_000_2889:
    ld hl, $c0a1
    ld a, [hl]
    ld hl, $c0a0
    cp [hl]
    jr nz, jr_000_284a

    ld hl, $c9be
    bit 0, [hl]
    jr z, jr_000_284a

    ld hl, $c0a7
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    call Call_000_129f
    call Call_000_166f
    jr jr_000_284a

    ret


Call_000_28ab:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    ld bc, $c119
    ld [bc], a
    ld hl, $c14d
    ld c, a
    ld b, $00
    add hl, bc
    ld c, $30
    ld a, $00
    ld_long $ff1a, a
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, $80
    ld_long $ff1a, a
    ld hl, $c143
    ld a, [hl+]
    ld_long $ff1d, a
    ld a, [hl]
    or $80
    ld_long $ff1e, a
    ld hl, $c975
    ld [hl], $00
    pop bc
    ret


Call_000_290a:
    push bc
    ld hl, $c100
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2925

    ld hl, $c11b
    ld a, [hl]
    cp $80
    jr nz, jr_000_292d

    ld hl, $c123
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2954

    pop bc
    ret


jr_000_2925:
    ld a, $00
    ld_long $ff12, a
    ld [hl], a
    pop bc
    ret


jr_000_292d:
    ld hl, $c11f
    cp [hl]
    jr nz, jr_000_293b

    ld a, $01
    ld hl, $c123
    ld [hl], a
    pop bc
    ret


jr_000_293b:
    ld [hl], a
    ld a, $00
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $01
    ld hl, $c123
    ld [hl], a
    call Call_000_030d
    add sp, $03
    ret


jr_000_2954:
    ld a, $00
    ld [hl], a
    ld a, $80
    ld hl, $c11f
    ld [hl], a
    ld hl, $c0a9
    ld a, [hl]
    ld b, a
    ld a, $7d
    add b
    add b
    ld e, a
    ld a, $02
    ld d, a
    ld a, [de]
    ld_long $ff13, a
    ld hl, $c145
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld_long $ff14, a
    pop bc
    ret


Call_000_297a:
    push bc
    ld hl, $c101
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2995

    ld hl, $c11c
    ld a, [hl]
    cp $80
    jr nz, jr_000_299d

    ld hl, $c124
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_29c4

    pop bc
    ret


jr_000_2995:
    ld a, $00
    ld_long $ff17, a
    ld [hl], a
    pop bc
    ret


jr_000_299d:
    ld hl, $c120
    cp [hl]
    jr nz, jr_000_29ab

    ld a, $01
    ld hl, $c124
    ld [hl], a
    pop bc
    ret


jr_000_29ab:
    ld [hl], a
    ld a, $02
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $01
    ld hl, $c124
    ld [hl], a
    call Call_000_030d
    add sp, $03
    ret


jr_000_29c4:
    ld a, $00
    ld [hl], a
    ld a, $80
    ld hl, $c120
    ld [hl], a
    ld hl, $c0ab
    ld a, [hl]
    ld b, a
    ld a, $7d
    add b
    add b
    ld e, a
    ld a, $02
    ld d, a
    ld a, [de]
    ld_long $ff18, a
    ld hl, $c147
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld_long $ff19, a
    pop bc
    ret


Call_000_29ea:
    push bc
    ld hl, $c102
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2a0f

    ld hl, $c119
    ld a, [hl]
    ld hl, $c11a
    cp [hl]
    jr nz, jr_000_2a17

    ld hl, $c11d
    ld a, [hl]
    cp $80
    jr nz, jr_000_2a26

    ld hl, $c125
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2a4d

    pop bc
    ret


jr_000_2a0f:
    ld a, $00
    ld_long $ff1c, a
    ld [hl], a
    pop bc
    ret


jr_000_2a17:
    ld a, [hl]
    push af
    inc sp
    call Call_000_28ab
    add sp, $01
    ld a, $80
    ld hl, $c121
    ld [hl], a
    ret


jr_000_2a26:
    ld hl, $c121
    cp [hl]
    jr nz, jr_000_2a34

    ld a, $01
    ld hl, $c125
    ld [hl], a
    pop bc
    ret


jr_000_2a34:
    ld [hl], a
    ld a, $04
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $01
    ld hl, $c125
    ld [hl], a
    call Call_000_030d
    add sp, $03
    ret


jr_000_2a4d:
    ld a, $00
    ld [hl], a
    ld a, $80
    ld hl, $c121
    ld [hl], a
    ld hl, $c0ad
    ld a, [hl]
    ld b, a
    ld a, $7d
    add b
    add b
    ld e, a
    ld a, $02
    ld d, a
    ld a, [de]
    ld hl, $c143
    ld [hl], a
    ld hl, $c149
    ld [hl], a
    ld c, a
    ld a, $00
    ld_long $ff1e, a
    ld a, c
    ld_long $ff1d, a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, $c144
    ld [hl], a
    or $80
    ld_long $ff1e, a
    pop bc
    ret


Call_000_2a85:
    push bc
    ld hl, $c11e
    ld a, [hl]
    cp $80
    jr nz, jr_000_2a98

    ld hl, $c126
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2abf

    pop bc
    ret


jr_000_2a98:
    ld hl, $c122
    cp [hl]
    jr nz, jr_000_2aa6

    ld a, $01
    ld hl, $c126
    ld [hl], a
    pop bc
    ret


jr_000_2aa6:
    ld [hl], a
    ld a, $06
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $01
    ld hl, $c126
    ld [hl], a
    call Call_000_030d
    add sp, $03
    ret


jr_000_2abf:
    ld a, $00
    ld [hl], a
    ld a, $80
    ld hl, $c122
    ld [hl], a
    ld hl, $c0ab
    ld a, [hl]
    ld b, a
    ld a, $b0
    add b
    ld e, a
    ld a, $c0
    ld d, a
    ld a, [de]
    ld_long $ff22, a
    ld hl, $c14b
    ld [hl], a
    ld a, $ff
    ld_long $ff20, a
    ld a, $80
    ld_long $ff23, a
    pop bc
    ret


Call_000_2ae8:
Jump_000_2ae8:
    ld hl, $c0a3
    ld a, [hl]
    sub $24
    ld hl, $c24d
    add [hl]
    ld b, a
    ld hl, $c0a4
    ld a, [hl]
    ld c, a
    cp $00
    jr nz, jr_000_2afe

    jr jr_000_2b7d

jr_000_2afe:
    ld_long a, $ff12
    cp $00
    jr z, jr_000_2b07

    jr jr_000_2b1e

jr_000_2b07:
    ld a, $80
    ld hl, $c0fc
    ld [hl], a
    ld hl, $c0fe
    ld a, c
    ld [hl], a
    rlca
    and $f0
    ld hl, $c0f8
    or [hl]
    ld_long $ff12, a
    jr jr_000_2b37

jr_000_2b1e:
    ld hl, $c0fe
    ld a, [hl]
    cp c
    jr nz, jr_000_2b07

    ld hl, $c100
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2b07

    ld a, $00
    ld hl, $c0fc
    ld [hl], a
    jr jr_000_2b37

    pop bc
    ret


jr_000_2b37:
    ld hl, $c0a9
    ld [hl], b
    ld a, $7d
    add b
    add b
    ld e, a
    ld a, $02
    ld d, a
    ld a, [de]
    ld_long $ff13, a
    ld hl, $c145
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, $c0fc
    ld c, [hl]
    or c
    ld_long $ff14, a
    ld a, $00
    ld hl, $c976
    ld [hl], a
    ld a, $80
    ld hl, $c11f
    ld [hl], a
    ld hl, $c127
    ld c, [hl]
    ld a, b
    sub c
    ld hl, $c12b
    ld [hl+], a
    ld a, b
    add c
    ld [hl], a
    ld a, $01
    ld hl, $c0a8
    ld [hl], a
    ld a, $00
    ld hl, $c100
    ld [hl], a
    pop bc
    ret


jr_000_2b7d:
    ld hl, $c0a9
    ld a, [hl]
    cp b
    jr nz, jr_000_2b9a

    ld hl, $c0a8
    ld a, $00
    ld [hl], a
    ld hl, $c108
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2b9a

    ld a, $01
    ld hl, $c100
    ld [hl], a
    pop bc
    ret


jr_000_2b9a:
    pop bc
    ret


Call_000_2b9c:
Jump_000_2b9c:
    ld hl, $c0a3
    ld a, [hl]
    sub $24
    ld hl, $c24e
    add [hl]
    ld b, a
    ld hl, $c0a4
    ld a, [hl]
    ld c, a
    cp $00
    jr nz, jr_000_2bb2

    jr jr_000_2c31

jr_000_2bb2:
    ld_long a, $ff17
    cp $00
    jr z, jr_000_2bbb

    jr jr_000_2bd2

jr_000_2bbb:
    ld a, $80
    ld hl, $c0fd
    ld [hl], a
    ld hl, $c0ff
    ld a, c
    ld [hl], a
    rlca
    and $f0
    ld hl, $c0f9
    or [hl]
    ld_long $ff17, a
    jr jr_000_2beb

jr_000_2bd2:
    ld hl, $c0ff
    ld a, [hl]
    cp c
    jr nz, jr_000_2bbb

    ld hl, $c101
    ld a, [hl]
    bit 0, a
    jr nz, jr_000_2bbb

    ld a, $00
    ld hl, $c0fd
    ld [hl], a
    jr jr_000_2beb

    pop bc
    ret


jr_000_2beb:
    ld hl, $c0ab
    ld [hl], b
    ld a, $7d
    add b
    add b
    ld e, a
    ld a, $02
    ld d, a
    ld a, [de]
    ld_long $ff18, a
    ld hl, $c147
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, $c0fd
    ld c, [hl]
    or c
    ld_long $ff19, a
    ld a, $00
    ld hl, $c977
    ld [hl], a
    ld a, $80
    ld hl, $c120
    ld [hl], a
    ld hl, $c128
    ld c, [hl]
    ld a, b
    sub c
    ld hl, $c12d
    ld [hl+], a
    ld a, b
    add c
    ld [hl], a
    ld a, $01
    ld hl, $c0aa
    ld [hl], a
    ld a, $00
    ld hl, $c101
    ld [hl], a
    pop bc
    ret


jr_000_2c31:
    ld hl, $c0ab
    ld a, [hl]
    cp b
    jp nz, Jump_000_2e4c

    ld hl, $c0aa
    ld a, $00
    ld [hl], a
    ld hl, $c109
    ld a, [hl]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld a, $01
    ld hl, $c101
    ld [hl], a
    pop bc
    ret


Call_000_2c50:
Jump_000_2c50:
    ld hl, $c0a3
    ld a, [hl]
    sub $18
    ld hl, $c24f
    add [hl]
    ld b, a
    ld hl, $c0a4
    ld a, [hl]
    ld c, a
    cp $00
    jr nz, jr_000_2c69

    jp Jump_000_2cf2


    pop bc
    ret


jr_000_2c69:
    ld hl, $c0ad
    ld [hl], b
    and $60
    cp $60
    jr z, jr_000_2c80

    cp $40
    jr z, jr_000_2c89

    ld a, $60
    ld_long $ff1c, a
    jr jr_000_2c92

    pop bc
    ret


jr_000_2c80:
    ld a, $20
    ld_long $ff1c, a
    jr jr_000_2c92

    pop bc
    ret


jr_000_2c89:
    ld a, $40
    ld_long $ff1c, a
    jr jr_000_2c92

    pop bc
    ret


jr_000_2c92:
    ld a, $7d
    add b
    add b
    ld e, a
    ld a, $02
    ld d, a
    ld a, [de]
    ld hl, $c143
    ld [hl], a
    ld hl, $c149
    ld [hl], a
    ld c, a
    ld a, $00
    ld_long $ff1e, a
    ld a, c
    ld_long $ff1d, a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, $c144
    ld [hl], a
    ld_long $ff1e, a
    ld a, $00
    ld hl, $c978
    ld [hl], a
    ld a, $00
    ld hl, $ca83
    ld [hl], a
    ld hl, $c251
    ld [hl+], a
    ld [hl], a
    ld hl, $c118
    ld [hl], a
    ld a, $80
    ld hl, $c121
    ld [hl], a
    ld hl, $c129
    ld c, [hl]
    ld a, b
    sub c
    ld hl, $c12f
    ld [hl+], a
    ld a, b
    add c
    ld [hl], a
    ld a, $01
    ld hl, $c0ac
    ld [hl], a
    ld hl, $c253
    ld [hl], a
    ld a, $00
    ld hl, $c102
    ld [hl], a
    pop bc
    ret


Jump_000_2cf2:
    ld hl, $c0ad
    ld a, [hl]
    cp b
    jp nz, Jump_000_2e4c

    ld hl, $c0ac
    ld a, $00
    ld [hl], a
    ld hl, $c10b
    ld a, [hl]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld a, $01
    ld hl, $c102
    ld [hl], a
    pop bc
    ret


Jump_000_2d11:
    ld hl, $c0a3
    ld a, [hl]
    sub $18
    ld hl, $c24e
    add [hl]
    ld b, a
    ld hl, $c0a4
    ld a, [hl]
    ld c, a
    cp $00
    jr nz, jr_000_2d29

    jr jr_000_2d65

    pop bc
    ret


jr_000_2d29:
    ld hl, $c0af
    ld [hl], b
    ld hl, $c0fa
    ld a, c
    rlca
    and $f0
    or [hl]
    ld_long $ff21, a
    ld a, $b0
    add b
    ld e, a
    ld a, $c0
    ld d, a
    ld a, [de]
    ld_long $ff22, a
    ld hl, $c14b
    ld [hl], a
    ld a, $ff
    ld_long $ff20, a
    ld a, $80
    ld_long $ff23, a
    ld a, $00
    ld hl, $c979
    ld [hl], a
    ld a, $80
    ld hl, $c122
    ld [hl], a
    ld a, $01
    ld hl, $c0ae
    ld [hl], a
    pop bc
    ret


jr_000_2d65:
    ld hl, $c0af
    ld a, [hl]
    cp b
    jp nz, Jump_000_2e4c

    ld hl, $c0ae
    ld a, $00
    ld [hl], a
    ld hl, $c109
    ld a, [hl]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld a, $00
    ld_long $ff21, a
    pop bc
    ret


Jump_000_2d83:
    ld hl, $c0a3
    ld a, [hl]
    ld b, a
    ld hl, $c0a4
    ld a, [hl]
    ld c, a
    cp $00
    jr nz, jr_000_2dc8

    jr jr_000_2d95

    pop bc
    ret


jr_000_2d95:
    ld hl, $c105
    ld a, [hl]
    cp b
    call z, Call_000_2db9
    ld hl, $c0a3
    ld a, [hl]
    ld b, a
    ld hl, $c106
    ld a, [hl]
    cp b
    call z, Call_000_2dbe
    ld hl, $c0a3
    ld a, [hl]
    ld b, a
    ld hl, $c107
    ld a, [hl]
    cp b
    call z, Call_000_2dc3
    pop bc
    ret


Call_000_2db9:
    call Call_000_2ae8
    push bc
    ret


Call_000_2dbe:
    call Call_000_2b9c
    push bc
    ret


Call_000_2dc3:
    call Call_000_2c50
    push bc
    ret


jr_000_2dc8:
    ld hl, $c104
    ld a, [hl]
    inc a
    cp $03
    jr z, jr_000_2dd5

    jr jr_000_2ddb

    pop bc
    ret


jr_000_2dd5:
    ld a, $00
    jr jr_000_2ddb

    pop bc
    ret


jr_000_2ddb:
    ld [hl], a
    cp $00
    jr z, jr_000_2ded

    cp $01
    jr z, jr_000_2df6

    ld hl, $c107
    ld [hl], b
    jp Jump_000_2c50


    pop bc
    ret


jr_000_2ded:
    ld hl, $c105
    ld [hl], b
    jp Jump_000_2ae8


    pop bc
    ret


jr_000_2df6:
    ld hl, $c106
    ld [hl], b
    jp Jump_000_2b9c


    pop bc
    ret


Call_000_2dff:
    push bc
    ld hl, $c0a1
    ld a, [hl]
    ld hl, $c0a0
    cp [hl]
    jr z, jr_000_2e4c

    inc [hl]
    ld a, $00
    add [hl]
    ld e, a
    ld a, $ce
    ld d, a
    ld a, [de]
    bit 7, a
    jr nz, jr_000_2e4e

    ld hl, $c0a6
    bit 0, [hl]
    jr z, jr_000_2e66

    ld hl, $c0a6
    ld [hl], $00
    ld hl, $c0a4
    ld [hl], a
    ld hl, $c975
    ld [hl], $00
    ld hl, $c0a2
    ld a, [hl]
    ld b, a
    swap a
    and $0f
    cp $0e
    jr z, jr_000_2eb8

    cp $0b
    jr z, jr_000_2e9a

    cp $08
    jr z, jr_000_2e73

    cp $09
    jr z, jr_000_2e7c

    cp $0c
    jp z, Jump_000_2ed6

    pop bc
    ret


Jump_000_2e4c:
jr_000_2e4c:
    pop bc
    ret


jr_000_2e4e:
    ld b, a
    and $f0
    cp $f0
    jr z, jr_000_2e4c

    ld a, b
    ld hl, $c0a2
    ld [hl], a
    ld hl, $c0a6
    ld [hl], $00
    ld hl, $c975
    ld [hl], $00
    pop bc
    ret


jr_000_2e66:
    ld [hl], $01
    ld hl, $c0a3
    ld [hl], a
    ld hl, $c975
    ld [hl], $00
    pop bc
    ret


jr_000_2e73:
    ld hl, $c0a4
    ld [hl], $00
    jr jr_000_2e7c

    pop bc
    ret


jr_000_2e7c:
    ld a, b
    and $0f
    cp $00
    jp z, Jump_000_2ae8

    cp $01
    jp z, Jump_000_2b9c

    cp $02
    jp z, Jump_000_2c50

    cp $03
    jp z, Jump_000_2d11

    cp $04
    jp z, Jump_000_2d83

    pop bc
    ret


jr_000_2e9a:
    ld a, b
    and $0f
    cp $00
    jp z, Jump_000_2f6a

    cp $01
    jp z, Jump_000_30c8

    cp $02
    jp z, Jump_000_320c

    cp $03
    jp z, Jump_000_3378

    cp $04
    jp z, Jump_000_3483

    pop bc
    ret


jr_000_2eb8:
    ld a, b
    and $0f
    cp $00
    jp z, Jump_000_2ef4

    cp $01
    jp z, Jump_000_2f0a

    cp $02
    jp z, Jump_000_2f20

    cp $03
    jp z, Jump_000_2f36

    cp $04
    jp z, Jump_000_2f4c

    pop bc
    ret


Jump_000_2ed6:
    ld a, b
    and $0f
    cp $00
    jp z, Jump_000_3000

    cp $01
    jp z, Jump_000_3144

    cp $02
    jp z, Jump_000_32b0

    cp $03
    jp z, Jump_000_33bb

    cp $04
    jp z, Jump_000_34b5

    pop bc
    ret


Jump_000_2ef4:
    ld hl, $c0a4
    ld a, [hl]
    ld hl, $c0a3
    ld b, [hl]
    rlca
    ld c, a
    ld a, b
    rlca
    rlca
    and $01
    or c
    ld de, $c11b
    ld [de], a
    pop bc
    ret


Jump_000_2f0a:
    ld hl, $c0a4
    ld a, [hl]
    ld hl, $c0a3
    ld b, [hl]
    rlca
    ld c, a
    ld a, b
    rlca
    rlca
    and $01
    or c
    ld de, $c11c
    ld [de], a
    pop bc
    ret


Jump_000_2f20:
    ld hl, $c0a4
    ld a, [hl]
    ld hl, $c0a3
    ld b, [hl]
    rlca
    ld c, a
    ld a, b
    rlca
    rlca
    and $01
    or c
    ld de, $c11d
    ld [de], a
    pop bc
    ret


Jump_000_2f36:
    ld hl, $c0a4
    ld a, [hl]
    ld hl, $c0a3
    ld b, [hl]
    rlca
    ld c, a
    ld a, b
    rlca
    rlca
    and $01
    or c
    ld de, $c11e
    ld [de], a
    pop bc
    ret


Jump_000_2f4c:
    ld hl, $c0a4
    ld a, [hl]
    ld hl, $c0a3
    ld b, [hl]
    rlca
    ld c, a
    ld a, b
    rlca
    rlca
    and $01
    or c
    ld de, $c11b
    ld [de], a
    ld de, $c11c
    ld [de], a
    ld de, $c11d
    ld [de], a
    pop bc
    ret


Jump_000_2f6a:
    ld hl, $c0a3
    ld a, [hl]
    cp $01
    jr z, jr_000_2f9f

    cp $02
    jr z, jr_000_2fc0

    cp $03
    jr z, jr_000_2fdc

    cp $04
    jp z, Jump_000_2ff2

    cp $05
    jp z, Jump_000_3000

    cp $0a
    jp z, Jump_000_301c

    cp $0b
    jp z, Jump_000_3074

    cp $0c
    jp z, Jump_000_307e

    cp $40
    jp z, Jump_000_3088

    cp $7b
    jp z, Jump_000_30b9

    pop bc
    ret


Call_000_2f9f:
jr_000_2f9f:
    ld de, $c9c0
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rlca
    and $c0
    or $07
    ld_long $ff11, a
    swap a
    rrca
    rrca
    and $03
    ld de, $c9a3
    ld [de], a
    pop bc
    ret


Call_000_2fc0:
jr_000_2fc0:
    ld de, $c9c1
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rrca
    rrca
    rrca
    and $0f
    ld hl, $c0f8
    ld [hl], a
    ld de, $c9a4
    ld [de], a
    pop bc
    ret


jr_000_2fdc:
    ld de, $c9c2
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    ld_long $ff10, a
    ld de, $c9a5
    ld [de], a
    pop bc
    ret


Jump_000_2ff2:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c127
    ld [de], a
    ld de, $c9a6
    ld [de], a
    pop bc
    ret


Call_000_3000:
Jump_000_3000:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c9ba
    ld [de], a
    ld a, $00
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld a, $00
    push af
    inc sp
    call Call_000_0bc7
    add sp, $01
    pop bc
    ret


Call_000_301c:
Jump_000_301c:
    ld de, $c9c5
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    and $60
    cp $00
    jr z, jr_000_303b

    cp $20
    jr z, jr_000_304e

    cp $40
    jr z, jr_000_304e

    cp $60
    jr z, jr_000_3061

jr_000_303b:
    ld a, $02
    ld de, $c9a8
    ld [de], a
    ld b, $10
    ld_long a, $ff25
    and $ee
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_304e:
    ld a, $03
    ld de, $c9a8
    ld [de], a
    ld b, $11
    ld_long a, $ff25
    and $ee
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_3061:
    ld a, $01
    ld de, $c9a8
    ld [de], a
    ld b, $01
    ld_long a, $ff25
    and $ee
    or b
    ld_long $ff25, a
    pop bc
    ret


Jump_000_3074:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c97e
    ld [de], a
    pop bc
    ret


Jump_000_307e:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c97a
    ld [de], a
    pop bc
    ret


Call_000_3088:
Jump_000_3088:
    ld hl, $c0a4
    ld a, [hl]
    bit 6, a
    jr nz, jr_000_3092

    jr jr_000_309e

jr_000_3092:
    ld a, $01
    ld de, $c9a7
    ld [de], a
    ld hl, $c108
    ld [hl], a
    pop bc
    ret


jr_000_309e:
    ld a, $00
    ld de, $c9a7
    ld [de], a
    ld hl, $c108
    ld [hl], a
    ld hl, $c0a8
    ld a, [hl]
    bit 0, a
    jr z, jr_000_30b2

    pop bc
    ret


jr_000_30b2:
    ld a, $00
    ld_long $ff12, a
    pop bc
    ret


Call_000_30b9:
Jump_000_30b9:
    ld a, $00
    ld_long $ff12, a
    ld hl, $c108
    ld [hl], a
    ld de, $c9a7
    ld [de], a
    pop bc
    ret


Jump_000_30c8:
    ld hl, $c0a3
    ld a, [hl]
    cp $01
    jr z, jr_000_30f9

    cp $02
    jr z, jr_000_311a

    cp $04
    jp z, Jump_000_3136

    cp $05
    jp z, Jump_000_3144

    cp $0a
    jp z, Jump_000_3160

    cp $0b
    jp z, Jump_000_31b8

    cp $0c
    jp z, Jump_000_31c2

    cp $40
    jp z, Jump_000_31cc

    cp $7b
    jp z, Jump_000_31fd

    pop bc
    ret


Call_000_30f9:
jr_000_30f9:
    ld de, $c9c7
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rlca
    and $c0
    or $07
    ld_long $ff16, a
    swap a
    rrca
    rrca
    and $03
    ld de, $c9aa
    ld [de], a
    pop bc
    ret


Call_000_311a:
jr_000_311a:
    ld de, $c9c8
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rrca
    rrca
    rrca
    and $0f
    ld hl, $c0f9
    ld [hl], a
    ld de, $c9ab
    ld [de], a
    pop bc
    ret


Jump_000_3136:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c128
    ld [de], a
    ld de, $c9ac
    ld [de], a
    pop bc
    ret


Call_000_3144:
Jump_000_3144:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c9bb
    ld [de], a
    ld a, $01
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld a, $01
    push af
    inc sp
    call Call_000_0bc7
    add sp, $01
    pop bc
    ret


Call_000_3160:
Jump_000_3160:
    ld de, $c9cb
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    and $60
    cp $00
    jr z, jr_000_317f

    cp $20
    jr z, jr_000_3192

    cp $40
    jr z, jr_000_3192

    cp $60
    jr z, jr_000_31a5

jr_000_317f:
    ld a, $02
    ld de, $c9ae
    ld [de], a
    ld b, $20
    ld_long a, $ff25
    and $dd
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_3192:
    ld a, $03
    ld de, $c9ae
    ld [de], a
    ld b, $22
    ld_long a, $ff25
    and $dd
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_31a5:
    ld a, $01
    ld de, $c9ae
    ld [de], a
    ld b, $02
    ld_long a, $ff25
    and $dd
    or b
    ld_long $ff25, a
    pop bc
    ret


Jump_000_31b8:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c97f
    ld [de], a
    pop bc
    ret


Jump_000_31c2:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c97b
    ld [de], a
    pop bc
    ret


Call_000_31cc:
Jump_000_31cc:
    ld hl, $c0a4
    ld a, [hl]
    bit 6, a
    jr nz, jr_000_31d6

    jr jr_000_31e2

jr_000_31d6:
    ld a, $01
    ld de, $c9ad
    ld [de], a
    ld hl, $c109
    ld [hl], a
    pop bc
    ret


jr_000_31e2:
    ld a, $00
    ld de, $c9ad
    ld [de], a
    ld hl, $c109
    ld [hl], a
    ld hl, $c0ad
    ld a, [hl]
    bit 0, a
    jr z, jr_000_31f6

    pop bc
    ret


jr_000_31f6:
    ld a, $00
    ld_long $ff17, a
    pop bc
    ret


Call_000_31fd:
Jump_000_31fd:
    ld a, $00
    ld_long $ff17, a
    ld hl, $c109
    ld [hl], a
    ld de, $c9ad
    ld [de], a
    pop bc
    ret


Jump_000_320c:
    ld hl, $c0a3
    ld a, [hl]
    cp $01
    jr z, jr_000_3241

    cp $02
    jr z, jr_000_3263

    cp $03
    jr z, jr_000_3286

    cp $04
    jp z, Jump_000_32a2

    cp $05
    jp z, Jump_000_32b0

    cp $0a
    jp z, Jump_000_32cc

    cp $0b
    jp z, Jump_000_3324

    cp $0c
    jp z, Jump_000_332e

    cp $40
    jp z, Jump_000_3338

    cp $7b
    jp z, Jump_000_3369

    pop bc
    ret


Call_000_3241:
jr_000_3241:
    ld de, $c9cd
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rlca
    and $f0
    swap a
    ld de, $c9b0
    ld [de], a
    swap a
    ld hl, $c9b1
    add [hl]
    ld hl, $c11a
    ld [hl], a
    pop bc
    ret


jr_000_3263:
    ld de, $c9ce
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rrca
    rrca
    and $1f
    ld de, $c9b1
    ld [de], a
    ld b, a
    ld hl, $c9b0
    ld a, [hl]
    swap a
    add b
    ld hl, $c11a
    ld [hl], a
    pop bc
    ret


jr_000_3286:
    ld de, $c9cf
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rlca
    swap a
    and $0f
    ld hl, $c142
    ld [hl], a
    ld de, $c9b2
    ld [de], a
    pop bc
    ret


Jump_000_32a2:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c129
    ld [de], a
    ld de, $c9b3
    ld [de], a
    pop bc
    ret


Call_000_32b0:
Jump_000_32b0:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c9bc
    ld [de], a
    ld a, $02
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld a, $02
    push af
    inc sp
    call Call_000_0bc7
    add sp, $01
    pop bc
    ret


Call_000_32cc:
Jump_000_32cc:
    ld de, $c9cb
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    and $60
    cp $00
    jr z, jr_000_32eb

    cp $20
    jr z, jr_000_32fe

    cp $40
    jr z, jr_000_32fe

    cp $60
    jr z, jr_000_3311

jr_000_32eb:
    ld a, $02
    ld de, $c9b5
    ld [de], a
    ld b, $40
    ld_long a, $ff25
    and $bb
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_32fe:
    ld a, $03
    ld de, $c9b5
    ld [de], a
    ld b, $44
    ld_long a, $ff25
    and $bb
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_3311:
    ld a, $01
    ld de, $c9b5
    ld [de], a
    ld b, $04
    ld_long a, $ff25
    and $bb
    or b
    ld_long $ff25, a
    pop bc
    ret


Jump_000_3324:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c980
    ld [de], a
    pop bc
    ret


Jump_000_332e:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c97c
    ld [de], a
    pop bc
    ret


Call_000_3338:
Jump_000_3338:
    ld hl, $c0a4
    ld a, [hl]
    bit 6, a
    jr nz, jr_000_3342

    jr jr_000_334e

jr_000_3342:
    ld a, $01
    ld de, $c9b4
    ld [de], a
    ld hl, $c10b
    ld [hl], a
    pop bc
    ret


jr_000_334e:
    ld a, $00
    ld de, $c9b4
    ld [de], a
    ld hl, $c10b
    ld [hl], a
    ld hl, $c0b2
    ld a, [hl]
    bit 0, a
    jr z, jr_000_3362

    pop bc
    ret


jr_000_3362:
    ld a, $00
    ld_long $ff1c, a
    pop bc
    ret


Call_000_3369:
Jump_000_3369:
    ld a, $00
    ld_long $ff1c, a
    ld hl, $c10b
    ld [hl], a
    ld de, $c9ad
    ld [de], a
    pop bc
    ret


Jump_000_3378:
    ld hl, $c0a3
    ld a, [hl]
    cp $02
    jr z, jr_000_339f

    cp $05
    jr z, jr_000_33bb

    cp $0a
    jp z, Jump_000_33d7

    cp $0b
    jp z, Jump_000_342f

    cp $0c
    jp z, Jump_000_3439

    cp $40
    jp z, Jump_000_3443

    cp $7b
    jp z, Jump_000_3474

    pop bc
    ret


jr_000_339f:
    ld de, $c9d4
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    rrca
    rrca
    rrca
    and $0f
    ld hl, $c0fa
    ld [hl], a
    ld de, $c9b7
    ld [de], a
    pop bc
    ret


Jump_000_33bb:
jr_000_33bb:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c9bd
    ld [de], a
    ld a, $03
    push af
    inc sp
    call Call_000_1cac
    add sp, $01
    ld a, $03
    push af
    inc sp
    call Call_000_0bc7
    add sp, $01
    pop bc
    ret


Jump_000_33d7:
    ld de, $c9d6
    ld a, [de]
    bit 0, a
    jp nz, Jump_000_2e4c

    ld hl, $c0a4
    ld a, [hl]
    and $60
    cp $00
    jr z, jr_000_33f6

    cp $20
    jr z, jr_000_3409

    cp $40
    jr z, jr_000_3409

    cp $60
    jr z, jr_000_341c

jr_000_33f6:
    ld a, $02
    ld de, $c9b9
    ld [de], a
    ld b, $80
    ld_long a, $ff25
    and $77
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_3409:
    ld a, $03
    ld de, $c9b9
    ld [de], a
    ld b, $88
    ld_long a, $ff25
    and $77
    or b
    ld_long $ff25, a
    pop bc
    ret


jr_000_341c:
    ld a, $01
    ld de, $c9b9
    ld [de], a
    ld b, $08
    ld_long a, $ff25
    and $77
    or b
    ld_long $ff25, a
    pop bc
    ret


Jump_000_342f:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c981
    ld [de], a
    pop bc
    ret


Jump_000_3439:
    ld hl, $c0a4
    ld a, [hl]
    ld de, $c97d
    ld [de], a
    pop bc
    ret


Jump_000_3443:
    ld hl, $c0a4
    ld a, [hl]
    bit 6, a
    jr nz, jr_000_344d

    jr jr_000_3459

jr_000_344d:
    ld a, $01
    ld de, $c9b8
    ld [de], a
    ld hl, $c10a
    ld [hl], a
    pop bc
    ret


jr_000_3459:
    ld a, $00
    ld de, $c9b8
    ld [de], a
    ld hl, $c10a
    ld [hl], a
    ld hl, $c0b7
    ld a, [hl]
    bit 0, a
    jr z, jr_000_346d

    pop bc
    ret


jr_000_346d:
    ld a, $00
    ld_long $ff21, a
    pop bc
    ret


Jump_000_3474:
    ld a, $00
    ld_long $ff21, a
    ld hl, $c10a
    ld [hl], a
    ld de, $c9b8
    ld [de], a
    pop bc
    ret


Jump_000_3483:
    ld hl, $c0a3
    ld a, [hl]
    cp $01
    jr z, jr_000_34a1

    cp $02
    jr z, jr_000_34ad

    cp $05
    jr z, jr_000_34b5

    cp $0a
    jr z, jr_000_34c1

    cp $40
    jr z, jr_000_34cd

    cp $7b
    jr z, jr_000_34d9

    pop bc
    ret


jr_000_34a1:
    call Call_000_2f9f
    push bc
    call Call_000_30f9
    push bc
    call Call_000_3241
    ret


jr_000_34ad:
    call Call_000_2fc0
    push bc
    call Call_000_311a
    ret


Jump_000_34b5:
jr_000_34b5:
    call Call_000_3000
    push bc
    call Call_000_3144
    push bc
    call Call_000_32b0
    ret


jr_000_34c1:
    call Call_000_301c
    push bc
    call Call_000_3160
    push bc
    call Call_000_32cc
    ret


jr_000_34cd:
    call Call_000_3088
    push bc
    call Call_000_31cc
    push bc
    call Call_000_3338
    ret


jr_000_34d9:
    call Call_000_30b9
    push bc
    call Call_000_31fd
    push bc
    call Call_000_3369
    ret


    push bc
    push de
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, e
    add a
    add a
    add a
    add d
    add d
    ld e, a

jr_000_34f7:
    ldh a, [rSTAT]
    and $40
    jr nz, jr_000_34f7

    ld a, e
    ldh [rBCPS], a
    ld a, c
    ldh [rBCPD], a
    inc e
    ld a, e
    ldh [rBCPS], a
    ld a, b
    ldh [rBCPD], a
    pop de
    pop bc
    ret


    push bc
    push de
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, e
    add a
    add a
    add a
    add d
    add d
    ld e, a

jr_000_351f:
    ldh a, [rSTAT]
    and $40
    jr nz, jr_000_351f

    ld a, e
    ldh [rOCPS], a
    ld a, c
    ldh [rOCPD], a
    inc e
    ld a, e
    ldh [rOCPS], a
    ld a, b
    ldh [rOCPD], a
    pop de
    pop bc
    ret


    ldh a, [rKEY1]
    and $80
    ret z

jr_000_353a:
    ldh a, [rIE]
    push af
    xor a
    ldh [rIE], a
    ldh [rIF], a
    ld a, $30
    ldh [rP1], a
    ld a, $01
    ldh [rKEY1], a
    stop
    pop af
    ldh [rIE], a
    ret


Call_000_3550:
    ldh a, [rKEY1]
    and $80
    ret nz

    jr jr_000_353a

    ld a, $80
    ldh [rBCPS], a
    ld a, $ff
    ldh [rBCPD], a
    ld a, $fe
    ldh [rBCPD], a
    ld a, $b5
    ldh [rBCPD], a
    ld a, $56
    ldh [rBCPD], a
    ld a, $4a
    ldh [rBCPD], a
    ld a, $29
    ldh [rBCPD], a
    ld a, $00
    ldh [rBCPD], a
    ld a, $00
    ldh [rBCPD], a
    ld a, $80
    ldh [rOCPS], a
    ld a, $ff
    ldh [rOCPD], a
    ld a, $fe
    ldh [rOCPD], a
    ld a, $b5
    ldh [rOCPD], a
    ld a, $56
    ldh [rOCPD], a
    ld a, $4a
    ldh [rOCPD], a
    ld a, $29
    ldh [rOCPD], a
    ld a, $00
    ldh [rOCPD], a
    ld a, $00
    ldh [rOCPD], a
    ret


Call_000_35a0:
    ld a, l
    ld [$ca85], a
    and $03
    ld l, a
    ld bc, $01e0
    sla l
    sla l
    add hl, bc
    jp hl


Call_000_35b0:
    ld hl, $ca8d
    jp Jump_000_35ec


Call_000_35b6:
    ld hl, $ca9d
    jp Jump_000_35ec


Call_000_35bc:
    ld hl, $caad
    jp Jump_000_35ec


Call_000_35c2:
    ld hl, $cabd
    jp Jump_000_35ec


Call_000_35c8:
    ld hl, $cacd
    jp Jump_000_35ec


Call_000_35ce:
    ld hl, $ca8d
    jp Jump_000_360c


Call_000_35d4:
    ld hl, $ca9d
    jp Jump_000_360c


Call_000_35da:
    ld hl, $caad
    jp Jump_000_360c


Call_000_35e0:
    ld hl, $cabd
    jp Jump_000_360c


Call_000_35e6:
    ld hl, $cacd
    jp Jump_000_360c


Jump_000_35ec:
jr_000_35ec:
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    or d
    ret z

    ld a, e
    cp c
    jr nz, jr_000_35ec

    ld a, d
    cp b
    jr nz, jr_000_35ec

    xor a
    ld [hl-], a
    ld [hl], a
    inc a
    ld d, h
    ld e, l
    dec de
    inc hl

jr_000_3601:
    ld a, [hl+]
    ld [de], a
    ld b, a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    or b
    ret z

    jr jr_000_3601

Jump_000_360c:
jr_000_360c:
    ld a, [hl+]
    or [hl]
    jr z, jr_000_3613

    inc hl
    jr jr_000_360c

jr_000_3613:
    ld [hl], b
    dec hl
    ld [hl], c
    ret


    ld hl, $ca8b
    inc [hl]
    jr nz, jr_000_361f

    inc hl
    inc [hl]

jr_000_361f:
    call $ff80
    ld a, $01
    ld [$ca89], a
    ret


    ldh a, [$4e]
    add a
    ret nc

    xor a
    di
    ld [$ca89], a
    ei

jr_000_3632:
    halt
    ld a, [$ca89]
    or a
    jr z, jr_000_3632

    xor a
    ld [$ca89], a
    ret


Call_000_363f:
    ldh a, [$4e]
    add a
    ret nc

jr_000_3643:
    ldh a, [rLY]
    cp $92
    jr nc, jr_000_3643

jr_000_3649:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_3649

    ldh a, [$4e]
    and $fe
    ldh [$4e], a
    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_365c:
    dec a
    jr nz, jr_000_365c

    ret


    ld a, [$ca88]
    cp $02
    jr nz, jr_000_3670

    ldh a, [rSB]
    ld [$ca87], a
    ld a, $00
    jr jr_000_367e

jr_000_3670:
    cp $01
    jr nz, jr_000_368a

    ldh a, [rSB]
    cp $55
    jr z, jr_000_367e

    ld a, $04
    jr jr_000_3680

jr_000_367e:
    ld a, $00

jr_000_3680:
    ld [$ca88], a
    xor a
    ldh [rSC], a
    ld a, $66
    ldh [rSB], a

jr_000_368a:
    ld a, $80
    ldh [rSC], a
    ret


    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    call Call_000_35a0
    ret


    ld hl, $ca85
    ld e, [hl]
    ret


Call_000_369d:
    ei
    ret


Call_000_369f:
    di
    ret


    ld a, [$ca84]
    jp Jump_000_0150


Call_000_36a7:
    di
    ld hl, sp+$02
    xor a
    ldh [rIF], a
    ld a, [hl]
    ldh [rIE], a
    ei
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35b0
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35b6
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35bc
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35c2
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35c8
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35ce
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35d4
    pop bc
    ret


Call_000_36ff:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35da
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35e0
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_35e6
    pop bc
    ret


    ld hl, $ca8b
    di
    ld a, [hl+]
    ei
    ld d, [hl]
    ld e, a
    ret


    ret


Call_000_372a:
    pop hl
    ld a, [$ca8a]
    push af
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    inc hl
    push hl
    ld [$ca8a], a
    ld [$2000], a
    ld hl, $3743
    push hl
    ld l, e
    ld h, d
    jp hl


    pop hl
    pop af
    ld [$2000], a
    ld [$ca8a], a
    jp hl


Call_000_374c:
    ld hl, $c003
    sla c
    sla c
    ld b, $00
    add hl, bc
    ld a, d
    ld [hl], a
    ret


Call_000_3759:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld d, [hl]
    call Call_000_374c
    pop bc
    ret


Call_000_3764:
    ld hl, $c000
    sla c
    sla c
    ld b, $00
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


Call_000_3773:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    call Call_000_3764
    pop bc
    ret


Call_000_3780:
    push bc
    push de
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, d
    add e
    add a
    add a
    add a
    ld d, a
    ld a, e
    add a
    add a
    add a
    ld e, a

jr_000_3796:
    ldh a, [rSTAT]
    and $40
    jr nz, jr_000_3796

    ld a, e
    ldh [rBCPS], a
    ld a, [bc]
    ldh [rBCPD], a
    inc bc
    inc e
    ld a, e
    cp d
    jr nz, jr_000_3796

    pop de
    pop bc
    ret


Call_000_37ab:
    push bc
    push de
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, d
    add e
    add a
    add a
    add a
    ld d, a
    ld a, e
    add a
    add a
    add a
    ld e, a

jr_000_37c1:
    ldh a, [rSTAT]
    and $40
    jr nz, jr_000_37c1

    ld a, e
    ldh [rOCPS], a
    ld a, [bc]
    ldh [rOCPD], a
    inc bc
    inc e
    ld a, e
    cp d
    jr nz, jr_000_37c1

    pop de
    pop bc
    ret


Call_000_37d6:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld e, [hl]
    call Call_000_37f3
    ld e, l
    pop bc
    ret


Call_000_37e2:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_37f6
    ld e, l
    ld d, h
    pop bc
    ret


Call_000_37f3:
    ld b, $00
    ld d, b

Call_000_37f6:
    ld hl, $0000
    ld a, $0f

jr_000_37fb:
    sla e
    rl d
    jr nc, jr_000_3802

    add hl, bc

jr_000_3802:
    add hl, hl
    dec a
    jr nz, jr_000_37fb

    bit 7, d
    jr z, jr_000_380b

    add hl, bc

jr_000_380b:
    ret


Call_000_380c:
    ldh a, [$4e]
    bit 4, a
    jp nz, Jump_000_3859

    push bc
    ld hl, sp+$07
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld e, [hl]
    dec hl
    ld l, [hl]
    push hl
    xor a
    or e
    jr nz, jr_000_3827

    ld de, $1000
    jr jr_000_3830

jr_000_3827:
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l

jr_000_3830:
    pop hl
    ld a, l
    rlca
    sbc a
    ld h, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push bc
    ld bc, $9000
    add hl, bc
    pop bc

jr_000_383f:
    bit 3, h
    jr z, jr_000_3849

    bit 4, h
    jr z, jr_000_3849

    res 4, h

jr_000_3849:
    ldh a, [rSTAT]
    and $40
    jr nz, jr_000_3849

    ld a, [bc]
    ld [hl+], a
    inc bc
    dec de
    ld a, d
    or e
    jr nz, jr_000_383f

    pop bc
    ret


Call_000_3859:
Jump_000_3859:
    push bc
    ld hl, sp+$07
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld e, [hl]
    dec hl
    ld l, [hl]
    push hl
    xor a
    or e
    jr nz, jr_000_386d

    ld de, $1000
    jr jr_000_3876

jr_000_386d:
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l

jr_000_3876:
    pop hl
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push bc
    ld bc, $8000
    add hl, bc
    pop bc
    call Call_000_3936
    pop bc
    ret


    push af
    push bc

jr_000_388a:
    ld b, $ff

jr_000_388c:
    call Call_000_3898
    or a
    jr nz, jr_000_388a

    dec b
    jr nz, jr_000_388c

    pop bc
    pop af
    ret


Call_000_3898:
    push bc
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    swap a
    ld b, a
    ld a, $30
    ldh [rP1], a
    ld a, b
    pop bc
    ret


Call_000_38c5:
jr_000_38c5:
    call Call_000_3898
    and b
    jr z, jr_000_38c5

    ret


Call_000_38cc:
    call Call_000_3898
    ld e, a
    ret


    push bc
    ld hl, sp+$04
    ld b, [hl]
    call Call_000_38c5
    ld e, a
    pop bc
    ret


Call_000_38db:
    ld hl, $c002
    sla c
    sla c
    ld b, $00
    add hl, bc
    ld a, d
    ld [hl], a
    ret


Call_000_38e8:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld d, [hl]
    call Call_000_38db
    pop bc
    ret


Call_000_38f3:
    push bc
    call Call_000_3910
    ld b, $32

Jump_000_38f9:
    jr jr_000_38fb

jr_000_38fb:
    jr jr_000_38fd

jr_000_38fd:
    jr jr_000_38ff

jr_000_38ff:
    jr jr_000_3901

jr_000_3901:
    jr jr_000_3903

jr_000_3903:
    dec b
    jp nz, Jump_000_38f9

    nop
    pop bc
    jr jr_000_390b

jr_000_390b:
    jr jr_000_390d

jr_000_390d:
    jr jr_000_390f

jr_000_390f:
    ret


Call_000_3910:
jr_000_3910:
    dec de
    ld a, e
    or d
    ret z

    ld b, $33

Jump_000_3916:
    jr jr_000_3918

jr_000_3918:
    jr jr_000_391a

jr_000_391a:
    jr jr_000_391c

jr_000_391c:
    jr jr_000_391e

jr_000_391e:
    jr jr_000_3920

jr_000_3920:
    dec b
    jp nz, Jump_000_3916

    nop
    jr jr_000_3927

jr_000_3927:
    jr jr_000_3929

jr_000_3929:
    jr jr_000_392b

jr_000_392b:
    jr jr_000_3910

Call_000_392d:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_38f3
    ret


Call_000_3936:
jr_000_3936:
    ldh a, [rSTAT]
    and $40
    jr nz, jr_000_3936

    ld a, [bc]
    ld [hl+], a
    inc bc
    dec de
    ld a, d
    or e
    jr nz, jr_000_3936

    ret


    push bc
    ld hl, sp+$09
    ld d, [hl]
    dec hl
    ld e, [hl]
    dec hl
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    call Call_000_3936
    pop bc
    ret


Call_000_3958:
    push bc
    ld hl, sp+$04
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    call Call_000_397d
    pop bc
    ret


    push hl
    ldh a, [$4e]
    bit 6, a
    jr nz, jr_000_3978

    ld hl, $9800
    jr jr_000_398c

jr_000_3978:
    ld hl, $9c00
    jr jr_000_398c

Call_000_397d:
    push hl
    ldh a, [$4e]
    bit 3, a
    jr nz, jr_000_3989

    ld hl, $9800
    jr jr_000_398c

jr_000_3989:
    ld hl, $9c00

Call_000_398c:
jr_000_398c:
    push bc
    xor a
    or e
    jr z, jr_000_3998

    ld bc, $0020

jr_000_3994:
    add hl, bc
    dec e
    jr nz, jr_000_3994

jr_000_3998:
    ld b, $00
    ld c, d
    add hl, bc
    pop bc
    pop de
    push hl
    push de

jr_000_39a0:
    ldh a, [rSTAT]
    and $40
    jr nz, jr_000_39a0

    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_39a0

    pop hl
    ld d, h
    pop hl
    dec e
    jr z, jr_000_39bc

    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    push hl
    push de
    jr jr_000_39a0

jr_000_39bc:
    ret


    push bc
    ld hl, sp+$0b
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld hl, sp+$04
    push de
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    call Call_000_398c
    pop bc
    ret


Call_000_39d6:
    ld de, $c0b0
    ld a, $94
    ld [de], a
    ld de, $c0b1
    ld a, $87
    ld [de], a
    ld de, $c0b2
    ld a, $86
    ld [de], a
    ld de, $c0b3
    ld a, $85
    ld [de], a
    ld de, $c0b4
    ld a, $84
    ld [de], a
    ld de, $c0b5
    ld a, $77
    ld [de], a
    ld de, $c0b6
    ld a, $76
    ld [de], a
    ld de, $c0b7
    ld a, $75
    ld [de], a
    ld de, $c0b8
    ld a, $74
    ld [de], a
    ld de, $c0b9
    ld a, $67
    ld [de], a
    ld de, $c0ba
    ld a, $66
    ld [de], a
    ld de, $c0bb
    ld a, $65
    ld [de], a
    ld de, $c0bc
    ld a, $64
    ld [de], a
    ld de, $c0bd
    ld a, $57
    ld [de], a
    ld de, $c0be
    ld a, $56
    ld [de], a
    ld de, $c0bf
    ld a, $55
    ld [de], a
    ld de, $c0c0
    ld a, $54
    ld [de], a
    ld de, $c0c1
    ld a, $47
    ld [de], a
    ld de, $c0c2
    ld a, $46
    ld [de], a
    ld de, $c0c3
    ld a, $45
    ld [de], a
    ld de, $c0c4
    ld a, $44
    ld [de], a
    ld de, $c0c5
    ld a, $37
    ld [de], a
    ld de, $c0c6
    ld a, $36
    ld [de], a
    ld de, $c0c7
    ld a, $35
    ld [de], a
    ld de, $c0c8
    ld a, $34
    ld [de], a
    ld de, $c0c9
    ld a, $27
    ld [de], a
    ld de, $c0ca
    ld a, $26
    ld [de], a
    ld de, $c0cb
    ld a, $25
    ld [de], a
    ld de, $c0cc
    ld a, $24
    ld [de], a
    ld de, $c0cd
    ld a, $17
    ld [de], a
    ld de, $c0ce
    ld a, $16
    ld [de], a
    ld de, $c0cf
    ld a, $15
    ld [de], a
    ld de, $c0d0
    ld a, $14
    ld [de], a
    ld de, $c0d1
    ld a, $07
    ld [de], a
    ld de, $c0d2
    ld a, $06
    ld [de], a
    ld de, $c0d3
    ld a, $00
    ld [de], a
    ld de, $c0d4
    ld a, $9c
    ld [de], a
    ld de, $c0d5
    ld a, $8f
    ld [de], a
    ld de, $c0d6
    ld a, $8e
    ld [de], a
    ld de, $c0d7
    ld a, $8d
    ld [de], a
    ld de, $c0d8
    ld a, $8c
    ld [de], a
    ld de, $c0d9
    ld a, $fe
    ld [de], a
    ld de, $c0da
    ld a, $7e
    ld [de], a
    ld de, $c0db
    ld a, $7d
    ld [de], a
    ld de, $c0dc
    ld a, $7c
    ld [de], a
    ld de, $c0dd
    ld a, $6f
    ld [de], a
    ld de, $c0de
    ld a, $6e
    ld [de], a
    ld de, $c0df
    ld a, $6d
    ld [de], a
    ld de, $c0e0
    ld a, $6c
    ld [de], a
    ld de, $c0e1
    ld a, $5f
    ld [de], a
    ld de, $c0e2
    ld a, $5e
    ld [de], a
    ld de, $c0e3
    ld a, $5d
    ld [de], a
    ld de, $c0e4
    ld a, $5c
    ld [de], a
    ld de, $c0e5
    ld a, $4f
    ld [de], a
    ld de, $c0e6
    ld a, $4e
    ld [de], a
    ld de, $c0e7
    ld a, $4d
    ld [de], a
    ld de, $c0e8
    ld a, $4c
    ld [de], a
    ld de, $c0e9
    ld a, $3f
    ld [de], a
    ld de, $c0ea
    ld a, $3e
    ld [de], a
    ld de, $c0eb
    ld a, $3d
    ld [de], a
    ld de, $c0ec
    ld a, $3c
    ld [de], a
    ld de, $c0ed
    ld a, $2f
    ld [de], a
    ld de, $c0ee
    ld a, $2e
    ld [de], a
    ld de, $c0ef
    ld a, $2d
    ld [de], a
    ld de, $c0f0
    ld a, $2c
    ld [de], a
    ld de, $c0f1
    ld a, $1f
    ld [de], a
    ld de, $c0f2
    ld a, $1e
    ld [de], a
    ld de, $c0f3
    ld a, $1d
    ld [de], a
    ld de, $c0f4
    ld a, $1c
    ld [de], a
    ld de, $c0f5
    ld a, $0f
    ld [de], a
    ld de, $c0f6
    ld a, $0e
    ld [de], a
    ld de, $c0f7
    ld a, $08
    ld [de], a
    ld hl, $c0fc
    ld [hl], $80
    ld hl, $c0fd
    ld [hl], $80
    ld de, $c10c
    ld a, $01
    ld [de], a
    ld de, $c10d
    ld a, $02
    ld [de], a
    ld de, $c10e
    ld a, $40
    ld [de], a
    ld de, $c10f
    ld a, $80
    ld [de], a
    ld de, $c110
    ld a, $01
    ld [de], a
    ld de, $c111
    ld a, $02
    ld [de], a
    ld de, $c112
    ld a, $40
    ld [de], a
    ld de, $c113
    ld a, $80
    ld [de], a
    ld de, $c114
    ld a, $03
    ld [de], a
    ld de, $c115
    ld a, $03
    ld [de], a
    ld de, $c116
    ld a, $03
    ld [de], a
    ld de, $c117
    ld a, $03
    ld [de], a
    ld de, $c11b
    ld a, $80
    ld [de], a
    ld de, $c11c
    ld a, $80
    ld [de], a
    ld de, $c11d
    ld a, $80
    ld [de], a
    ld de, $c11e
    ld a, $80
    ld [de], a
    ld de, $c11f
    ld a, $80
    ld [de], a
    ld de, $c120
    ld a, $80
    ld [de], a
    ld de, $c121
    ld a, $80
    ld [de], a
    ld de, $c122
    ld a, $80
    ld [de], a
    ld de, $c123
    ld a, $00
    ld [de], a
    ld de, $c124
    ld a, $00
    ld [de], a
    ld de, $c125
    ld a, $00
    ld [de], a
    ld de, $c126
    ld a, $00
    ld [de], a
    ld de, $c127
    ld a, $02
    ld [de], a
    ld de, $c128
    ld a, $02
    ld [de], a
    ld de, $c129
    ld a, $02
    ld [de], a
    ld de, $c12a
    ld a, $0c
    ld [de], a
    ld de, $c12b
    ld a, $00
    ld [de], a
    ld de, $c12c
    ld a, $00
    ld [de], a
    ld de, $c12d
    ld a, $00
    ld [de], a
    ld de, $c12e
    ld a, $00
    ld [de], a
    ld de, $c12f
    ld a, $00
    ld [de], a
    ld de, $c130
    ld a, $00
    ld [de], a
    ld de, $c131
    ld a, $00
    ld [de], a
    ld de, $c132
    ld a, $00
    ld [de], a
    ld de, $c13a
    ld a, $00
    ld [de], a
    ld de, $c13b
    ld a, $00
    ld [de], a
    ld de, $c13c
    ld a, $00
    ld [de], a
    ld de, $c13d
    ld a, $00
    ld [de], a
    ld de, $c13e
    ld a, $00
    ld [de], a
    ld de, $c13f
    ld a, $00
    ld [de], a
    ld de, $c140
    ld a, $00
    ld [de], a
    ld de, $c141
    ld a, $00
    ld [de], a
    ld de, $c14d
    ld a, $01
    ld [de], a
    ld de, $c14e
    ld a, $23
    ld [de], a
    ld de, $c14f
    ld a, $45
    ld [de], a
    ld de, $c150
    ld a, $67
    ld [de], a
    ld de, $c151
    ld a, $89
    ld [de], a
    ld de, $c152
    ld a, $ab
    ld [de], a
    ld de, $c153
    ld a, $cd
    ld [de], a
    ld de, $c154
    ld a, $ef
    ld [de], a
    ld de, $c155
    ld a, $fe
    ld [de], a
    ld de, $c156
    ld a, $dc
    ld [de], a
    ld de, $c157
    ld a, $ba
    ld [de], a
    ld de, $c158
    ld a, $98
    ld [de], a
    ld de, $c159
    ld a, $76
    ld [de], a
    ld de, $c15a
    ld a, $54
    ld [de], a
    ld de, $c15b
    ld a, $32
    ld [de], a
    ld de, $c15c
    ld a, $10
    ld [de], a
    ld de, $c15d
    ld a, $22
    ld [de], a
    ld de, $c15e
    ld a, $55
    ld [de], a
    ld de, $c15f
    ld a, $77
    ld [de], a
    ld de, $c160
    ld a, $aa
    ld [de], a
    ld de, $c161
    ld a, $bb
    ld [de], a
    ld de, $c162
    ld a, $dd
    ld [de], a
    ld de, $c163
    ld a, $ee
    ld [de], a
    ld de, $c164
    ld a, $ff
    ld [de], a
    ld de, $c165
    ld a, $ee
    ld [de], a
    ld de, $c166
    ld a, $dd
    ld [de], a
    ld de, $c167
    ld a, $bb
    ld [de], a
    ld de, $c168
    ld a, $aa
    ld [de], a
    ld de, $c169
    ld a, $77
    ld [de], a
    ld de, $c16a
    ld a, $66
    ld [de], a
    ld de, $c16b
    ld a, $44
    ld [de], a
    ld de, $c16c
    ld a, $00
    ld [de], a
    ld de, $c16d
    ld a, $01
    ld [de], a
    ld de, $c16e
    ld a, $23
    ld [de], a
    ld de, $c16f
    ld a, $45
    ld [de], a
    ld de, $c170
    ld a, $67
    ld [de], a
    ld de, $c171
    ld a, $89
    ld [de], a
    ld de, $c172
    ld a, $ab
    ld [de], a
    ld de, $c173
    ld a, $cd
    ld [de], a
    ld de, $c174
    ld a, $ef
    ld [de], a
    ld de, $c175
    ld a, $00
    ld [de], a
    ld de, $c176
    ld a, $00
    ld [de], a
    ld de, $c177
    ld a, $00
    ld [de], a
    ld de, $c178
    ld a, $00
    ld [de], a
    ld de, $c179
    ld a, $00
    ld [de], a
    ld de, $c17a
    ld a, $00
    ld [de], a
    ld de, $c17b
    ld a, $00
    ld [de], a
    ld de, $c17c
    ld a, $00
    ld [de], a
    ld de, $c17d
    ld a, $ff
    ld [de], a
    ld de, $c17e
    ld a, $ee
    ld [de], a
    ld de, $c17f
    ld a, $dd
    ld [de], a
    ld de, $c180
    ld a, $cc
    ld [de], a
    ld de, $c181
    ld a, $bb
    ld [de], a
    ld de, $c182
    ld a, $aa
    ld [de], a
    ld de, $c183
    ld a, $99
    ld [de], a
    ld de, $c184
    ld a, $88
    ld [de], a
    ld de, $c185
    ld a, $77
    ld [de], a
    ld de, $c186
    ld a, $66
    ld [de], a
    ld de, $c187
    ld a, $55
    ld [de], a
    ld de, $c188
    ld a, $44
    ld [de], a
    ld de, $c189
    ld a, $33
    ld [de], a
    ld de, $c18a
    ld a, $22
    ld [de], a
    ld de, $c18b
    ld a, $11
    ld [de], a
    ld de, $c18c
    ld a, $00
    ld [de], a
    ld de, $c18d
    ld a, $ff
    ld [de], a
    ld de, $c18e
    ld a, $00
    ld [de], a
    ld de, $c18f
    ld a, $00
    ld [de], a
    ld de, $c190
    ld a, $00
    ld [de], a
    ld de, $c191
    ld a, $00
    ld [de], a
    ld de, $c192
    ld a, $00
    ld [de], a
    ld de, $c193
    ld a, $00
    ld [de], a
    ld de, $c194
    ld a, $00
    ld [de], a
    ld de, $c195
    ld a, $00
    ld [de], a
    ld de, $c196
    ld a, $00
    ld [de], a
    ld de, $c197
    ld a, $00
    ld [de], a
    ld de, $c198
    ld a, $00
    ld [de], a
    ld de, $c199
    ld a, $00
    ld [de], a
    ld de, $c19a
    ld a, $00
    ld [de], a
    ld de, $c19b
    ld a, $00
    ld [de], a
    ld de, $c19c
    ld a, $00
    ld [de], a
    ld de, $c19d
    ld a, $00
    ld [de], a
    ld de, $c19e
    ld a, $00
    ld [de], a
    ld de, $c19f
    ld a, $00
    ld [de], a
    ld de, $c1a0
    ld a, $00
    ld [de], a
    ld de, $c1a1
    ld a, $00
    ld [de], a
    ld de, $c1a2
    ld a, $00
    ld [de], a
    ld de, $c1a3
    ld a, $00
    ld [de], a
    ld de, $c1a4
    ld a, $00
    ld [de], a
    ld de, $c1a5
    ld a, $00
    ld [de], a
    ld de, $c1a6
    ld a, $00
    ld [de], a
    ld de, $c1a7
    ld a, $00
    ld [de], a
    ld de, $c1a8
    ld a, $00
    ld [de], a
    ld de, $c1a9
    ld a, $ff
    ld [de], a
    ld de, $c1aa
    ld a, $ff
    ld [de], a
    ld de, $c1ab
    ld a, $00
    ld [de], a
    ld de, $c1ac
    ld a, $00
    ld [de], a
    ld de, $c1ad
    ld a, $ff
    ld [de], a
    ld de, $c1ae
    ld a, $ff
    ld [de], a
    ld de, $c1af
    ld a, $ff
    ld [de], a
    ld de, $c1b0
    ld a, $ff
    ld [de], a
    ld de, $c1b1
    ld a, $00
    ld [de], a
    ld de, $c1b2
    ld a, $00
    ld [de], a
    ld de, $c1b3
    ld a, $00
    ld [de], a
    ld de, $c1b4
    ld a, $00
    ld [de], a
    ld de, $c1b5
    ld a, $00
    ld [de], a
    ld de, $c1b6
    ld a, $00
    ld [de], a
    ld de, $c1b7
    ld a, $00
    ld [de], a
    ld de, $c1b8
    ld a, $00
    ld [de], a
    ld de, $c1b9
    ld a, $00
    ld [de], a
    ld de, $c1ba
    ld a, $00
    ld [de], a
    ld de, $c1bb
    ld a, $00
    ld [de], a
    ld de, $c1bc
    ld a, $00
    ld [de], a
    ld de, $c1bd
    ld a, $00
    ld [de], a
    ld de, $c1be
    ld a, $00
    ld [de], a
    ld de, $c1bf
    ld a, $00
    ld [de], a
    ld de, $c1c0
    ld a, $00
    ld [de], a
    ld de, $c1c1
    ld a, $00
    ld [de], a
    ld de, $c1c2
    ld a, $00
    ld [de], a
    ld de, $c1c3
    ld a, $00
    ld [de], a
    ld de, $c1c4
    ld a, $00
    ld [de], a
    ld de, $c1c5
    ld a, $ff
    ld [de], a
    ld de, $c1c6
    ld a, $ff
    ld [de], a
    ld de, $c1c7
    ld a, $ff
    ld [de], a
    ld de, $c1c8
    ld a, $ff
    ld [de], a
    ld de, $c1c9
    ld a, $ff
    ld [de], a
    ld de, $c1ca
    ld a, $ff
    ld [de], a
    ld de, $c1cb
    ld a, $ff
    ld [de], a
    ld de, $c1cc
    ld a, $ff
    ld [de], a
    ld de, $c1cd
    ld a, $16
    ld [de], a
    ld de, $c1ce
    ld a, $13
    ld [de], a
    ld de, $c1cf
    ld a, $aa
    ld [de], a
    ld de, $c1d0
    ld a, $b3
    ld [de], a
    ld de, $c1d1
    ld a, $25
    ld [de], a
    ld de, $c1d2
    ld a, $81
    ld [de], a
    ld de, $c1d3
    ld a, $e8
    ld [de], a
    ld de, $c1d4
    ld a, $2a
    ld [de], a
    ld de, $c1d5
    ld a, $1b
    ld [de], a
    ld de, $c1d6
    ld a, $eb
    ld [de], a
    ld de, $c1d7
    ld a, $f8
    ld [de], a
    ld de, $c1d8
    ld a, $85
    ld [de], a
    ld de, $c1d9
    ld a, $e1
    ld [de], a
    ld de, $c1da
    ld a, $28
    ld [de], a
    ld de, $c1db
    ld a, $ff
    ld [de], a
    ld de, $c1dc
    ld a, $a4
    ld [de], a
    ld de, $c1dd
    ld a, $34
    ld [de], a
    db $11
    db $de
