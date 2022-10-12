!TO         "boot-128", CBM
!SYMBOLLIST "boot.sym"

!SOURCE     "const.inc"
!SOURCE     "macro.inc"
!SOURCE     "loader.sym"

* = ADDR_BOOT

;******************************************************************************

.LINE_128   !WORD .BASIC_END       ; link to next line
            !WORD 128              ; line number 128
            !BYTE $9E              ; SYS token
            !BYTE $30+BOOT/1000%10 ; thousands digit of sys address
            !BYTE $30+BOOT/ 100%10 ; hundreds digit of sys address
            !BYTE $30+BOOT/  10%10 ; tens digit of sys address
            !BYTE $30+BOOT/   1%10 ; ones digit of sys address
            !PET  ":"              ; separate SYS from REM
            !BYTE $8F              ; REM token
            !BYTE $22              ; quotation mark
            !FILL 12, $14          ; delete characters to erase line to this point
            !PET  "is being attacked by petscii robots!"
            !BYTE 0                ; end of line 128
.BASIC_END  !WORD 0                ; end of BASIC program

;******************************************************************************

BOOT

!IF SHAREWARE = 1 {

!MACRO RDVDC .r {
  LDX #.r
  JSR $CDDA
}

!MACRO WRVDC .r {
  LDX #.r
  JSR $CDCC
}

!MACRO WRVDC .r, .v {
  LDA #.v
  +WRVDC .r
}

!MACRO PHVDC .r {
  +RDVDC .r
  PHA
}

!MACRO PLVDC .r {
  PLA
  +WRVDC .r
}

!MACRO CHARAT .at, .var {
  +WRVDC 18, >.at
  +WRVDC 19, <.at

  LDA .var
  CLC
  ADC #$30

  +WRVDC 31

  EOR #$80
  STA $0400+.at
}

; initialize VDC screen for output

            +PHVDC  0
            +PHVDC  1
            +PHVDC  2
            +PHVDC 18
            +PHVDC 19
            +PHVDC 22
            +PHVDC 25

            +WRVDC  0, 63
            +WRVDC  1, 40
            +WRVDC  2, 55
            +WRVDC 18, 0
            +WRVDC 19, 0
            +WRVDC 22, (8*16)+9
            +RDVDC 25
            ORA    #16
            +WRVDC 25

LOADNAG     LDA NAG
            BEQ COUNTDOWN

            +WRVDC 31

            EOR #$80
STORENAG    STA $0400

            LDA LOADNAG+1
            CLC
            ADC #1
            STA LOADNAG+1
            LDA LOADNAG+2
            ADC #0
            STA LOADNAG+2

            LDA STORENAG+1
            CLC
            ADC #1
            STA STORENAG+1
            LDA STORENAG+2
            ADC #0
            STA STORENAG+2

            JMP LOADNAG

NAGCOUNT    !BYTE 9, 9, 9

COUNTDOWN   +CHARAT 947, NAGCOUNT+0
            +CHARAT 948, NAGCOUNT+1
            +CHARAT 949, NAGCOUNT+2

            LDY #4
--          LDX #0
-           DEX
            BNE -
            DEY
            BNE --

            DEC NAGCOUNT+2
            BPL COUNTDOWN
            LDA #9
            STA NAGCOUNT+2
            DEC NAGCOUNT+1
            BPL COUNTDOWN
            LDA #9
            STA NAGCOUNT+1
            DEC NAGCOUNT+0
            BPL COUNTDOWN

-           JSR $FFE4
            BEQ -

            +WRVDC 18, 0
            +WRVDC 19, 0

RELOADNAG   LDA NAG
            BEQ RESTVDC

            LDA #32

            +WRVDC 31

CLEARNAG    STA $0400

            LDA RELOADNAG+1
            CLC
            ADC #1
            STA RELOADNAG+1
            LDA RELOADNAG+2
            ADC #0
            STA RELOADNAG+2

            LDA CLEARNAG+1
            CLC
            ADC #1
            STA CLEARNAG+1
            LDA CLEARNAG+2
            ADC #0
            STA CLEARNAG+2

            JMP RELOADNAG

RESTVDC     +PLVDC 25
            +PLVDC 22
            +PLVDC 19
            +PLVDC 18
            +PLVDC  2
            +PLVDC  1
            +PLVDC  0
}

!IF SHAREWARE = 0 {
            +STI   C2DDRB, %00101000  ; Set userport data direction to output for pins 3 & 5
}

            +STI   BGCOL0, 0          ; Set background to black
            +STI   EXTCOL, 6          ; Set border to blue
            +MANDI INIT_STATUS, $FE   ; Disable system shadow registers
            +STI   IRQ_WRAP_FLAG, $01 ; Disable BASIC IRQ service routine
            +STI   GRAPHM, $FF        ; Disable screen editor IRQ setup portion per MAPPING THE 128
            +STI   KEYCHK, $B7        ; Skip programmable function key check per MAPPING THE 128
            +STI   MMU, %00001110     ; 00=RAM0, 00=KERN/CHARSET/SCREDITOR, 111=NOBASIC, 0=IO
            +STI   MMURCR, %00000101  ; 00=VIC0, 00=NA, 01=COMMONBOTTOM, 01=COMMON4K
            +STI   RPTFLG, 64         ; Set all keys to NON-repeat mode
            +STI   MODE, $80          ; Disable character set switching
            +STI   VMCSB, $15         ; Enable upper-case character set

            LOADER_MSG  = "loading loader"

            LDY #0

-           LDA .data,Y
            JSR CHROUT
            INY
            CPY #(.end-.data)
            BNE -

            JMP .end

.data       !BYTE 147, 5
            !FILL 12, 17
            !FILL 8, 29
            !PET "waking up the robots ..."
.end

            LOADER_FILE = "loader-128"
            +LDCFILE LOADER_FILE, FAR_ADDR_LOADER, SIZE_LOADER

            JMP LOADER

!IF SHAREWARE = 1 {
NAG
!BYTE $20,$20,$20,$20,$20,$20,$6c,$62,$7b,$7b,$20,$7b,$6c,$62,$20,$62,$62,$20,$62,$62,$7b,$7b,$20,$7b,$6c,$62,$20,$62,$62,$20,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62
!BYTE $20,$20,$20,$20,$20,$20,$7f,$62,$20,$fc,$62,$61,$fc,$62,$61,$fc,$62,$7e,$fc,$62,$20,$61,$61,$61,$fc,$62,$61,$fc,$62,$7e,$fc,$62,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $62,$62,$62,$62,$62,$62,$62,$62,$7e,$61,$20,$61,$61,$20,$61,$61,$20,$61,$fc,$62,$7b,$7f,$7f,$7e,$61,$20,$61,$61,$20,$61,$fc,$62,$7b,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$01,$14,$14,$01,$03,$0b,$20,$0f,$06,$20,$14,$08,$05,$20,$10,$05,$14,$13,$03,$09,$09,$20,$12,$0f,$02,$0f,$14,$13,$20,$03,$31,$32,$38,$20,$20,$20,$20
!BYTE $13,$08,$01,$12,$05,$17,$01,$12,$05,$20,$16,$05,$12,$13,$09,$0f,$0e,$20,$09,$13,$20,$06,$12,$05,$05,$20,$14,$0f,$20,$04,$09,$13,$14,$12,$09,$02,$15,$14,$05,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$19,$0f,$15,$20,$03,$01,$0e,$20,$04,$0f,$17,$0e,$0c,$0f,$01,$04,$20,$01,$20,$06,$12,$05,$05,$20,$03,$0f,$10,$19,$20,$0f,$06,$20,$14,$08,$05,$20,$20,$20
!BYTE $20,$15,$13,$05,$12,$27,$13,$20,$0d,$01,$0e,$15,$01,$0c,$20,$0f,$12,$20,$02,$15,$19,$20,$14,$08,$05,$20,$06,$15,$0c,$0c,$20,$16,$05,$12,$13,$09,$0f,$0e,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$01,$14,$20,$17,$17,$17,$2e,$14,$08,$05,$38,$02,$09,$14,$07,$15,$19,$2e,$03,$0f,$0d,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$2a,$2a,$2a,$20,$06,$15,$0c,$0c,$20,$16,$05,$12,$13,$09,$0f,$0e,$20,$09,$0e,$03,$0c,$15,$04,$05,$13,$20,$2a,$2a,$2a,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$63,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$2d,$20,$01,$0c,$0c,$20,$31,$35,$20,$0c,$05,$16,$05,$0c,$13,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$2d,$20,$13,$0e,$05,$13,$20,$03,$0f,$0e,$14,$12,$0f,$0c,$0c,$05,$12,$20,$13,$15,$10,$10,$0f,$12,$14,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20

!SCR  "       - hotkey for robot locations     "
; !BYTE $20,$20,$20,$20,$20,$20,$20,$2d,$20,$03,$36,$34,$2c,$20,$16,$09,$03,$2d,$32,$30,$2c,$20,$26,$20,$10,$05,$14,$20,$16,$05,$12,$13,$09,$0f,$0e,$13,$20,$20,$20,$20

!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$2d,$20,$07,$05,$14,$20,$12,$09,$04,$20,$0f,$06,$20,$14,$08,$09,$13,$20,$0e,$01,$07,$07,$09,$0e,$07,$20,$13,$03,$12,$05,$05,$0e,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$10,$12,$05,$13,$13,$20,$01,$0e,$19,$20,$0b,$05,$19,$20,$14,$0f,$20,$03,$0f,$0e,$14,$09,$0e,$15,$05,$20,$0f,$0e,$03,$05,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$14,$09,$0d,$05,$12,$20,$12,$05,$01,$03,$08,$20,$1a,$05,$12,$0f,$3a,$20,$30,$30,$30,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
!BYTE $00
}

;******************************************************************************

!if * > ADDR_BOOT+SIZE_BOOT {
  !serious "BOOT TOO BIG"
}

