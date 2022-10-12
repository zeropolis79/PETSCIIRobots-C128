!TO         "game0-128", CBM
!SYMBOLLIST "game0.sym"

!SOURCE     "const.inc"
!SOURCE     "macro.inc"
!SOURCE     "graphics.sym"

* = ADDR_GAME0

PLAY_SOUND  TAX
            LDY .SOUND_FX_H,X
            LDA .SOUND_FX_L,X
            LDX #14 ;channel 3
            JSR $9006    ;play sound effect
            RTS

.SOUND_FX_L !BYTE <.SOUND_EXPLOSION    ; sound 00 explosion
            !BYTE <.SOUND_EXPLOSION    ; sound 01 explosion
            !BYTE <.SOUND_MEDKIT       ; sound 02 medkit
            !BYTE <.SOUND_EMP          ; sound 03 emp
            !BYTE <.SOUND_MAGNET       ; sound 04 magnet
            !BYTE <.SOUND_SHOCK        ; sound 05 electric shock
            !BYTE <.SOUND_MOVEOBJ      ; sound 06 move object
            !BYTE <.SOUND_SHOCK        ; sound 07 electric shock
            !BYTE <.SOUND_PLASMA       ; sound 08 plasma gun
            !BYTE <.SOUND_PISTOL       ; sound 09 fire pistol
            !BYTE <.SOUND_ITEM_FOUND   ; sound 10 item found
            !BYTE <.SOUND_ERROR        ; sound 11 error
            !BYTE <.SOUND_CYCLE_WEAPON ; sound 12 change weapons
            !BYTE <.SOUND_CYCLE_ITEM   ; sound 13 change items
            !BYTE <.SOUND_DOOR         ; sound 14 door
            !BYTE <.SOUND_MENU_BEEP    ; sound 15 menu beep
            !BYTE <.SOUND_MENU_BEEP    ; sound 16 walk
            !BYTE <.SOUND_BEEP         ; sound 17 short beep
            !BYTE <.SOUND_BEEP         ; sound 18 short beep

.SOUND_FX_H !BYTE >.SOUND_EXPLOSION    ; sound 00 explosion
            !BYTE >.SOUND_EXPLOSION    ; sound 01 explosion
            !BYTE >.SOUND_MEDKIT       ; sound 02 medkit
            !BYTE >.SOUND_EMP          ; sound 03 emp
            !BYTE >.SOUND_MAGNET       ; sound 04 magnet
            !BYTE >.SOUND_SHOCK        ; sound 05 electric shock
            !BYTE >.SOUND_MOVEOBJ      ; sound 06 move object
            !BYTE >.SOUND_SHOCK        ; sound 07 electric shock
            !BYTE >.SOUND_PLASMA       ; sound 08 plasma gun
            !BYTE >.SOUND_PISTOL       ; sound 09 fire pistol
            !BYTE >.SOUND_ITEM_FOUND   ; sound 10 item found
            !BYTE >.SOUND_ERROR        ; sound 11 error
            !BYTE >.SOUND_CYCLE_WEAPON ; sound 12 change weapons
            !BYTE >.SOUND_CYCLE_ITEM   ; sound 13 change items
            !BYTE >.SOUND_DOOR         ; sound 14 door
            !BYTE >.SOUND_MENU_BEEP    ; sound 15 menu beep
            !BYTE >.SOUND_MENU_BEEP    ; sound 16 walk
            !BYTE >.SOUND_BEEP         ; sound 17 short beep
            !BYTE >.SOUND_BEEP         ; sound 18 short beep

.SOUND_MENU_BEEP
            !BYTE $05,$58,$08,$B5,$41,$BA,$40,$00

.SOUND_DOOR !BYTE $05,$59,$00,$B4,$81,$B5,$80,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE
            !BYTE $C2,$C4,$C6,$C8,$CA,$CC,$CD,$00

.SOUND_CYCLE_ITEM
            !BYTE $05,$58,$08,$B0,$41,$B7,$40,$BC,$00

.SOUND_ERROR
            !BYTE $05,$58,$09,$90,$41,$B0,$40,$B2,$90,$B0,$B2,$90,$B0,$B2,$90,$B0
            !BYTE $B2,$90,$B0,$B2,$00

.SOUND_CYCLE_WEAPON
            !BYTE $05,$58,$00,$B0,$21,$B7,$20,$BC,$00

.SOUND_ITEM_FOUND
            !BYTE $0A,$00,$02,$A0,$41,$A0,$A0,$A4,$A4,$A4,$A7,$A7,$A7,$A0,$A0,$A0
            !BYTE $A4,$A4,$A4,$A7,$A7,$A7,$A0,$A0,$A0,$A4,$A4,$A4,$A7,$A7,$A7,$A0
            !BYTE $A0,$A0,$A4,$A4,$A4,$A7,$A7,$A7,$00

.SOUND_BEEP !BYTE $05,$55,$08,$C0,$41,$C0,$40,$00

.SOUND_PISTOL
            !BYTE $00,$F9,$08,$C4,$81,$A8,$41,$C0,$81,$BE,$BC,$80,$BA,$B8,$B6,$B4
            !BYTE $B2,$B0,$AE,$AC,$AA,$A8,$A6,$A4,$A2,$A0,$9E,$9C,$9A,$98,$96,$94
            !BYTE $92,$90,$00

.SOUND_PLASMA
            !BYTE $05,$5A,$08,$AA,$41,$AA,$80,$AD,$40,$AF,$B1,$B3,$B6,$B7,$B9,$AA
            !BYTE $41,$AA,$80,$AD,$40,$AF,$B1,$B3,$B6,$B7,$B9,$AA,$41,$AA,$80,$AD
            !BYTE $40,$AF,$B1,$B3,$B6,$B7,$B9,$AA,$41,$AA,$80,$AD,$40,$AF,$B1,$B3
            !BYTE $B6,$B7,$B9,$AA,$41,$AA,$80,$AD,$40,$AF,$B1,$B3,$B6,$B7,$B9,$AA
            !BYTE $41,$AA,$80,$AD,$40,$AF,$B1,$B3,$B6,$B7,$B9,$AA,$41,$AA,$80,$AD
            !BYTE $40,$AF,$B1,$B3,$B6,$B7,$B9,$AA,$41,$AA,$80,$AD,$40,$AF,$B1,$B3
            !BYTE $B6,$B7,$B9,$AA,$41,$AA,$80,$AD,$40,$AF,$B1,$B3,$B6,$B7,$B9,$AA
            !BYTE $41,$AA,$80,$AD,$40,$AF,$B1,$B3,$B6,$B7,$B9,$AA,$41,$AA,$80,$AD
            !BYTE $40,$AF,$B1,$B3,$B6,$B7,$B9,$AA,$41,$AA,$80,$AD,$40,$AF,$B1,$B3
            !BYTE $B6,$B7,$B9,$00

.SOUND_SHOCK
            !BYTE $05,$59,$08,$A5,$40,$C5,$80,$A5,$90,$40,$90,$80,$A4,$A0,$40,$B0
            !BYTE $A0,$80,$B5,$40,$BA,$99,$80,$90,$C0,$98,$9B,$40,$8B,$9B,$00

.SOUND_MOVEOBJ
            !BYTE $05,$58,$00,$D0,$81,$C0,$80,$B8,$00

.SOUND_MAGNET
            !BYTE $05,$5B,$08,$B1,$41,$B4,$40,$A3,$BA,$C7,$A6,$B4,$93,$92,$B1,$A8
            !BYTE $C6,$A4,$9C,$BA,$BB,$BC,$C3,$A2,$B9,$B7,$95,$94,$B1,$B4,$A3,$BA
            !BYTE $C7,$A6,$B4,$93,$92,$B1,$A8,$C6,$A4,$95,$94,$B1,$B4,$A3,$BA,$C7
            !BYTE $94,$B4,$A3,$BA,$C7,$A6,$B4,$93,$92,$B1,$A8,$C6,$A4,$9C,$BA,$BB
            !BYTE $94,$B4,$A3,$CA,$C7,$A6,$B4,$93,$92,$00

.SOUND_EMP  !BYTE $05,$5B,$08,$95,$41,$97,$80,$99,$9B,$9D,$40,$9F,$91,$93,$80,$95
            !BYTE $97,$99,$40,$9B,$9D,$9F,$80,$A1,$A2,$A3,$40,$A4,$A5,$A6,$80,$A7
            !BYTE $A8,$A9,$40,$AA,$AB,$AC,$80,$AD,$AE,$AF,$40,$B0,$B1,$B2,$80,$B3
            !BYTE $B4,$B5,$40,$B6,$B7,$B8,$80,$B9,$BA,$BB,$40,$BC,$BE,$BF,$80,$C0
            !BYTE $C1,$C2,$40,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$80,$CC,$CD,$CE
            !BYTE $40,$CF,$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$80,$D8,$D9,$DA,$40,$DB
            !BYTE $DC,$DD,$80,$DE,$DF,$00

.SOUND_MEDKIT
            !BYTE $05,$59,$08,$C0,$41,$C4,$40,$C7,$CC,$C4,$C7,$CC,$C4,$C7,$CC,$C4
            !BYTE $C7,$CC,$C4,$C7,$CC,$C4,$C7,$CC,$C4,$C7,$CC,$C4,$C7,$CC,$C4,$C7
            !BYTE $CC,$C4,$C7,$CC,$C4,$C7,$CC,$00

.SOUND_EXPLOSION
            !BYTE $05,$5C,$00,$94,$81,$95,$80,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E
            !BYTE $92,$80,$94,$8F,$8E,$8D,$8C,$8B,$8A,$89,$88,$87,$86,$84,$00

INTRO_SCREEN:
  LDA #15
  STA SIGVOL  ; volume
  LDA #4    ;pick song
  JSR C_MUSIC_START   ;START MUSIC
  LDA #1
  STA MUSIC_STATE
  JSR DISPLAY_INTRO_SCREEN
  JSR DISPLAY_MAP_NAME
  JSR CHANGE_DIFFICULTY_LEVEL
  +STI MENUY, 3
  JSR UNHIGHLIGHT_MENU_OPTION
  +STI MENUY, 2
  JSR UNHIGHLIGHT_MENU_OPTION
  +STI MENUY, 1
  JSR UNHIGHLIGHT_MENU_OPTION
  +STI MENUY, 0
  JSR HIGHLIGHT_MENU_OPTION
  JSR C_CLEAR_SNES_PAD
  JSR C_CLEAR_KEY_BUFFER
.ISLOOP: LDA BGTIMER1
  CMP #1
  BNE .ISCHKKEY
  LDA #0
  STA BGTIMER1
  JSR HIGHLIGHT_MENU_OPTION
.ISCHKKEY: JSR GET_KEY
  +CMPI_BEQ $00,           .IS_CHK_SNES ; no key
  +CMPI_BEQ $11,           ISDOWN ; cursor down
  ;+CMPM_BEQ KEY_MOVE_DOWN, ISDOWN
  +CMPI_BEQ $91,           ISUP   ; cursor up
  ;+CMPM_BEQ KEY_MOVE_UP,   ISUP
  +CMPI_BEQ 32,            .ISEXEC ; exec command
  +CMPI_BEQ 13,            .ISEXEC
  +CMPI_BEQ '1',           .ISPLAY1
  +CMPI_BEQ '2',           .ISPLAY2
  +CMPI_BEQ '3',           .ISPLAY3
  +CMPI_BEQ '4',           .ISPLAY4
  +CMPI_BEQ '5',           .ISPLAY5
  +CMPI_BEQ '+',           .ISTESTFX
.IS_CHK_SNES:
  JSR C_SNES_CONTROLER_READ
  +CMPMI_BEQ NEW_UP,   1,  .IS_SNES_UP
  +CMPMI_BEQ NEW_DOWN, 1,  .IS_SNES_DOWN
  +CMPMI_BEQ NEW_B,    1,  .IS_SNES_B
  JMP .ISLOOP
.IS_SNES_UP:
  JSR MENU_UP
  LDA #0
  STA NEW_UP
  JMP .ISLOOP
.IS_SNES_DOWN:
  JSR MENU_DOWN
  LDA #0
  STA NEW_DOWN
  JMP .ISLOOP
.IS_SNES_B:
  LDA #0
  STA NEW_B
  JMP EXEC_COMMAND
.ISEXEC:
  JMP EXEC_COMMAND
.ISPLAY1:
  LDA #0    ;pick song (title music)
  JSR C_MUSIC_START   ;START MUSIC
  JMP .ISLOOP
.ISPLAY2:
  LDA #1    ;pick song
  JSR C_MUSIC_START   ;START MUSIC
  JMP .ISLOOP
.ISPLAY3:
  LDA #2    ;pick song
  JSR C_MUSIC_START   ;START MUSIC
  JMP .ISLOOP
.ISPLAY4:
  LDA #3    ;pick song
  JSR C_MUSIC_START   ;START MUSIC
  JMP .ISLOOP
.ISPLAY5:
  LDA #4    ;pick song
  JSR C_MUSIC_START   ;START MUSIC
  JMP .ISLOOP
ISDOWN:
  JSR MENU_DOWN
  JMP .ISLOOP
ISUP:
  JSR MENU_UP
  JMP .ISLOOP
.ISTESTFX:
  LDA #5  ;pick song
  JSR C_MUSIC_START   ;START MUSIC
  LDA #0
  STA USER_MUSIC_ON
- JSR GET_KEY
  CMP #0
  BEQ -
  CMP #$41 ; compare with 'A'
  BMI +    ; less than 'A', nothing to play
  SEC
  SBC #$41 ; adjust from 'A'+ down to 0+
  CMP #$13 ; compare with 13 (1 more than max FX)
  BCS +    ; greater than 13, nothing to play
  JSR C_PLAY_SOUND
+ JMP .ISLOOP

MENU_UP:
  LDA MENUY
  CMP #0
  BNE MENUP1
  RTS
MENUP1: JSR UNHIGHLIGHT_MENU_OPTION
  DEC MENUY
  LDA #3
  STA SPRITECOLSTATE
  JSR HIGHLIGHT_MENU_OPTION
  LDA #15   ;MENU BEEP
  JSR C_PLAY_SOUND  ;SOUND PLAY
  RTS

MENU_DOWN:
  LDA MENUY
  CMP #3
  BNE MENDN1
  RTS
MENDN1: JSR UNHIGHLIGHT_MENU_OPTION
  INC MENUY
  LDA #3
  STA SPRITECOLSTATE
  JSR HIGHLIGHT_MENU_OPTION
  LDA #15   ;menu beep
  JSR C_PLAY_SOUND  ;SOUND PLAY
  RTS

DISPLAY_INTRO_SCREEN:
!IF VIC_CHARMAP {
            +DECOMPRESS_SCREEN INTRO_TEXT, SCREEN_MEMORY
            +DECOMPRESS_SCREEN INTRO_COLOR, COLOR_MEMORY
}
!IF VIC_BITMAP {
            +STI MMURCR, %00000101 ; 00=VICBLOCK 00=NA 01=COMMONBOTTOM 01=COMMON4K
            +STI SCROLX, %00001000 ; enable high resolution mode
            JSR VDC_INTRO_RENDER
}
            RTS

HR_PLOT_CHAR_HELPER:
  +PHX
  +PHY
  +PHW $FD

  TSX         ; get stack pointer for args

  CLC         ; add index to offset
  LDA $FB
  ADC $0109,X
  STA $FB
  LDA $FC
  ADC #$00
  STA $FC

  ASL $FB     ; multiply offset by 8
  ROL $FC
  ASL $FB
  ROL $FC
  ASL $FB
  ROL $FC

  +ADDW $FB, $C000

  LDA $010A,X
  TAX
  LDA hrbm_char_lo,X
  STA $FD
  LDA hrbm_char_hi,X
  STA $FE

  +PH MMU ; save MMU
  +STI MMU, %00111111 ; disable all ROM & IO

  LDY #0

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  LDA ($FD),Y
  LSR
  STA ($FB),Y
  INY

  +PL MMU

  +PLW $FD
  +PLY
  +PLX

  RTS

!MACRO PLOT_CHAR_HELPER .o {
  +PHW $FB
  +STIW $FB, .o
  JSR HR_PLOT_CHAR_HELPER
  +PLW $FB
}

!MACRO PLOT_CHAR .o {
  PHA
  +PHI 0
  +PLOT_CHAR_HELPER .o
  PLA
  PLA
}

!MACRO PLOT_CHAR_X .o {
  PHA
  +PHX
  +PLOT_CHAR_HELPER .o
  +PLX
  PLA
}

!MACRO PLOT_CHAR_Y .o {
  PHA
  +PHY
  +PLOT_CHAR_HELPER .o
  +PLY
  PLA
}

DISPLAY_MAP_NAME:
  JSR CALC_MAP_NAME
- LDA ($FB),Y
  +PLOT_CHAR_Y $0119
  INY
  CPY #16
  BNE -
  ;now set the mapname for the filesystem load
  LDA SELECTED_MAP
  CLC
  ADC #65
  STA MAPNAME+6
  RTS

CHANGE_DIFFICULTY_LEVEL:
  LDY DIFF_LEVEL
  LDA FACE_LEVEL,Y
  TAY
  LDX #$00
- LDA ROBOT_FACE_BITMAP,Y
  STA $CC28,X
  INY
  INX
  CPX #24
  BNE -
  RTS

HIGHLIGHT_MENU_OPTION:
  LDY MENUY
  LDA MENU_CHART_L,Y
  STA $FB
  LDA #$E0
  STA $FC
  LDY #0
- LDX SPRITECOLSTATE
  LDA SPRITECOLCHART,X
  ASL
  ASL
  ASL
  ASL
  STA ($FB),Y
  INY
  CPY #10
  BNE -
  RTS
MENUY !BYTE $00 ;CURRENT MENU SELECTION
MENU_CHART_L:
  !BYTE $2C,$54,$7C,$A4

UNHIGHLIGHT_MENU_OPTION:
  LDY MENUY
  LDA MENU_CHART_L,Y
  STA $FB
  LDA #$E0
  STA $FC
  LDY #0
  LDA #$D0 ; LT GREEN
- STA ($FB),Y
  INY
  CPY #10
  BNE -
  RTS

EXEC_COMMAND:
  LDA #17   ;SHORT BEEP
  JSR C_PLAY_SOUND  ;SOUND PLAY
  LDA MENUY
  CMP #00 ;START GAME
  BNE .EXEC1
  JSR SET_CONTROLS
  LDA #5    ;pick song (blank song)
  JSR C_MUSIC_START   ;START MUSIC
  LDA #0
  STA MUSIC_STATE
  LDA #0
  STA SIGVOL  ; volume
  JSR PAUSE_UNTIL_NEXT_CYCLE
  JMP C_INIT_GAME
.EXEC1:  CMP #2  ;DIFF LEVEL
  BNE .EXEC05
  INC DIFF_LEVEL
  LDA DIFF_LEVEL
  CMP #3
  BNE .EXEC02
  LDA #0
  STA DIFF_LEVEL
.EXEC02: JSR CHANGE_DIFFICULTY_LEVEL
  JMP .ISLOOP
.EXEC05: CMP #1  ;cycle map
  BNE .EXEC06
  JSR CYCLE_MAP
.EXEC06: CMP #3
  BNE .EXEC07
  JSR CYCLE_CONTROLS
.EXEC07: JMP .ISLOOP

CALC_MAP_NAME:
  ;FIND MAP NAME
  LDA SELECTED_MAP
  STA $FB
  LDA #0
  STA $FC
  ;multiply by 16 by shifting 4 times to left.
  ASL $FB
  ROL $FC
  ASL $FB
  ROL $FC
  ASL $FB
  ROL $FC
  ASL $FB
  ROL $FC
  ;now add offset for mapnames
  LDA $FB
  CLC
  ADC #<MAP_NAMES
  STA $FB
  LDA $FC
  ADC #>MAP_NAMES
  STA $FC
  LDY #0
  RTS

SET_CONTROLS:
  LDA CONTROL
  CMP #1  ;CUSTOM KEYS
  BNE SETC1
  JSR C_SET_CUSTOM_KEYS
  RTS
SETC1:  ;load standard values for key controls
  LDY #0
SETC2:  LDA STANDARD_CONTROLS,Y
  STA KEY_MOVE_UP,Y
  INY
  CPY #13
  BNE SETC2
  RTS

;This routine simply pauses until the next interrupt cycle
;completes.  This will hopefully keep the sound from hanging
;when the disk drive starts up.
PAUSE_UNTIL_NEXT_CYCLE:
  LDX #0
.PUNC1:  LDA #0
  STA BGTIMER1
.PUNC2:  LDA BGTIMER1
  CMP #0
  BEQ .PUNC2
  INX
  CPX #2
  BNE .PUNC1
  RTS

CYCLE_CONTROLS:
  LDA #0
  STA KEYS_DEFINED
  INC CONTROL
  LDA CONTROL
  CMP #CONTROL_TYPES_COUNT
  BNE .CCON2
  LDA #0
  STA CONTROL
.CCON2:  ;display control method on screen
  LDY CONTROL
  LDA CONTROLSTART,Y
  TAY
  LDX #0
.CCON3:
  LDA CONTROLTEXT,Y
  +PLOT_CHAR_X $00A4
  INX
  INY
  CPX #10
  BNE .CCON3
  RTS

CONTROLTEXT:  !SCR"keyboard  "
              !SCR"custom key"
              !SCR"snes pad  "
CONTROLSTART: !BYTE 00,10,20

CYCLE_MAP:
  INC SELECTED_MAP
  LDA SELECTED_MAP
  CMP #MAP_COUNT ;max number of maps INCREASED FOR C128
  BNE +
  LDA #0
  STA SELECTED_MAP
+ JSR DISPLAY_MAP_NAME
  RTS

ROBOT_FACE_BITMAP: ;Starts at BITMAP_RAM + $0C28
;Easy
!BYTE %11000000
!BYTE %10111111
!BYTE %11100001
!BYTE %10000000
!BYTE %00011100
!BYTE %00111110
!BYTE %00110110
!BYTE %00111110

!BYTE %00000111 XOR $FF
!BYTE %10001000 XOR $FF
!BYTE %00000000 XOR $FF
!BYTE %00000111 XOR $FF
!BYTE %10001111 XOR $FF
!BYTE %11011100 XOR $FF
!BYTE %11011000 XOR $FF
!BYTE %11011001 XOR $FF

!BYTE %11000000 XOR $FF
!BYTE %00100000 XOR $FF
!BYTE %00000000 XOR $FF
!BYTE %11100000 XOR $FF
!BYTE %11110000 XOR $FF
!BYTE %01111000 XOR $FF
!BYTE %00111000 XOR $FF
!BYTE %00111000 XOR $FF

;Normal
!BYTE %11111000
!BYTE %11111111
!BYTE %11100001
!BYTE %10000000
!BYTE %00011100
!BYTE %00110110
!BYTE %00110110
!BYTE %00111110

!BYTE %00000011 XOR $FF
!BYTE %10000100 XOR $FF
!BYTE %01001000 XOR $FF
!BYTE %00000111 XOR $FF
!BYTE %10001111 XOR $FF
!BYTE %11011100 XOR $FF
!BYTE %11011001 XOR $FF
!BYTE %11011001 XOR $FF

!BYTE %10000000 XOR $FF
!BYTE %00000000 XOR $FF
!BYTE %00000000 XOR $FF
!BYTE %11100000 XOR $FF
!BYTE %11110000 XOR $FF
!BYTE %01111000 XOR $FF
!BYTE %00111000 XOR $FF
!BYTE %00111000 XOR $FF

;Hard
!BYTE %11110111
!BYTE %11111011
!BYTE %11100001
!BYTE %10000000
!BYTE %00011100
!BYTE %00100110
!BYTE %00100110
!BYTE %00111110

!BYTE %00000000 XOR $FF
!BYTE %00000000 XOR $FF
!BYTE %00000001 XOR $FF
!BYTE %00000011 XOR $FF
!BYTE %10000111 XOR $FF
!BYTE %11001100 XOR $FF
!BYTE %11011011 XOR $FF
!BYTE %10011011 XOR $FF

!BYTE %01000000 XOR $FF
!BYTE %10000000 XOR $FF
!BYTE %00000000 XOR $FF
!BYTE %11100000 XOR $FF
!BYTE %11110000 XOR $FF
!BYTE %01111000 XOR $FF
!BYTE %00111000 XOR $FF
!BYTE %00111000 XOR $FF

FACE_LEVEL:
  !BYTE 0,24,48

STANDARD_CONTROLS:
  !BYTE $38 ;MOVE UP
  !BYTE $32 ;MOVE DOWN
  !BYTE $34 ;MOVE LEFT
  !BYTE $36 ;MOVE RIGHT
  !BYTE 87  ;FIRE UP
  !BYTE 83  ;FIRE DOWN
  !BYTE 65  ;FIRE LEFT
  !BYTE 68  ;FIRE RIGHT
  !BYTE 133 ;CYCLE WEAPONS
  !BYTE 134 ;CYCLE ITEMS
  !BYTE 32  ;USE ITEM
  !BYTE 90  ;SEARCH OBEJCT
  !BYTE 77  ;MOVE OBJECT

!ALIGN $FFFF, $1C00
!FILL 3, 0 ; these three bytes must be 0 to avoid problems with post-load relinking

hrbm_char_lo
            !BYTE <hrbm_char_00,<hrbm_char_01,<hrbm_char_02,<hrbm_char_03
            !BYTE <hrbm_char_04,<hrbm_char_05,<hrbm_char_06,<hrbm_char_07
            !BYTE <hrbm_char_08,<hrbm_char_09,<hrbm_char_0A,<hrbm_char_0B
            !BYTE <hrbm_char_0C,<hrbm_char_0D,<hrbm_char_0E,<hrbm_char_0F
            !BYTE <hrbm_char_10,<hrbm_char_11,<hrbm_char_12,<hrbm_char_13
            !BYTE <hrbm_char_14,<hrbm_char_15,<hrbm_char_16,<hrbm_char_17
            !BYTE <hrbm_char_18,<hrbm_char_19,<hrbm_char_1A,<hrbm_char_1B
            !BYTE <hrbm_char_1C,<hrbm_char_1D,<hrbm_char_1E,<hrbm_char_1F
            !BYTE <hrbm_char_20,<hrbm_char_21,<hrbm_char_22,<hrbm_char_23
            !BYTE <hrbm_char_24,<hrbm_char_25,<hrbm_char_26,<hrbm_char_27
            !BYTE <hrbm_char_28,<hrbm_char_29,<hrbm_char_2A,<hrbm_char_2B
            !BYTE <hrbm_char_2C,<hrbm_char_2D,<hrbm_char_2E,<hrbm_char_2F
            !BYTE <hrbm_char_30,<hrbm_char_31,<hrbm_char_32,<hrbm_char_33
            !BYTE <hrbm_char_34,<hrbm_char_35,<hrbm_char_36,<hrbm_char_37
            !BYTE <hrbm_char_38,<hrbm_char_39,<hrbm_char_3A,<hrbm_char_3B
            !BYTE <hrbm_char_3C,<hrbm_char_3D,<hrbm_char_3E,<hrbm_char_3F
            !BYTE <hrbm_char_40,<hrbm_char_41,<hrbm_char_42,<hrbm_char_43
            !BYTE <hrbm_char_44,<hrbm_char_45,<hrbm_char_46,<hrbm_char_47
            !BYTE <hrbm_char_48,<hrbm_char_49,<hrbm_char_4A,<hrbm_char_4B
            !BYTE <hrbm_char_4C,<hrbm_char_4D,<hrbm_char_4E,<hrbm_char_4F
            !BYTE <hrbm_char_50,<hrbm_char_51,<hrbm_char_52,<hrbm_char_53
            !BYTE <hrbm_char_54,<hrbm_char_55,<hrbm_char_56,<hrbm_char_57
            !BYTE <hrbm_char_58,<hrbm_char_59,<hrbm_char_5A,<hrbm_char_5B
            !BYTE <hrbm_char_5C,<hrbm_char_5D,<hrbm_char_5E,<hrbm_char_5F
            !BYTE <hrbm_char_60,<hrbm_char_61,<hrbm_char_62,<hrbm_char_63
            !BYTE <hrbm_char_64,<hrbm_char_65,<hrbm_char_66,<hrbm_char_67
            !BYTE <hrbm_char_68,<hrbm_char_69,<hrbm_char_6A,<hrbm_char_6B
            !BYTE <hrbm_char_6C,<hrbm_char_6D,<hrbm_char_6E,<hrbm_char_6F
            !BYTE <hrbm_char_70,<hrbm_char_71,<hrbm_char_72,<hrbm_char_73
            !BYTE <hrbm_char_74,<hrbm_char_75,<hrbm_char_76,<hrbm_char_77
            !BYTE <hrbm_char_78,<hrbm_char_79,<hrbm_char_7A,<hrbm_char_7B
            !BYTE <hrbm_char_7C,<hrbm_char_7D,<hrbm_char_7E,<hrbm_char_7F
            !BYTE <hrbm_char_80,<hrbm_char_81,<hrbm_char_82,<hrbm_char_83
            !BYTE <hrbm_char_84,<hrbm_char_85,<hrbm_char_86,<hrbm_char_87
            !BYTE <hrbm_char_88,<hrbm_char_89,<hrbm_char_8A,<hrbm_char_8B
            !BYTE <hrbm_char_8C,<hrbm_char_8D,<hrbm_char_8E,<hrbm_char_8F
            !BYTE <hrbm_char_90,<hrbm_char_91,<hrbm_char_92,<hrbm_char_93
            !BYTE <hrbm_char_94,<hrbm_char_95,<hrbm_char_96,<hrbm_char_97
            !BYTE <hrbm_char_98,<hrbm_char_99,<hrbm_char_9A,<hrbm_char_9B
            !BYTE <hrbm_char_9C,<hrbm_char_9D,<hrbm_char_9E,<hrbm_char_9F
            !BYTE <hrbm_char_A0,<hrbm_char_A1,<hrbm_char_A2,<hrbm_char_A3
            !BYTE <hrbm_char_A4,<hrbm_char_A5,<hrbm_char_A6,<hrbm_char_A7
            !BYTE <hrbm_char_A8,<hrbm_char_A9,<hrbm_char_AA,<hrbm_char_AB
            !BYTE <hrbm_char_AC,<hrbm_char_AD,<hrbm_char_AE,<hrbm_char_AF
            !BYTE <hrbm_char_B0,<hrbm_char_B1,<hrbm_char_B2,<hrbm_char_B3
            !BYTE <hrbm_char_B4,<hrbm_char_B5,<hrbm_char_B6,<hrbm_char_B7
            !BYTE <hrbm_char_B8,<hrbm_char_B9,<hrbm_char_BA,<hrbm_char_BB
            !BYTE <hrbm_char_BC,<hrbm_char_BD,<hrbm_char_BE,<hrbm_char_BF
            !BYTE <hrbm_char_C0,<hrbm_char_C1,<hrbm_char_C2,<hrbm_char_C3
            !BYTE <hrbm_char_C4,<hrbm_char_C5,<hrbm_char_C6,<hrbm_char_C7
            !BYTE <hrbm_char_C8,<hrbm_char_C9,<hrbm_char_CA,<hrbm_char_CB
            !BYTE <hrbm_char_CC,<hrbm_char_CD,<hrbm_char_CE,<hrbm_char_CF
            !BYTE <hrbm_char_D0,<hrbm_char_D1,<hrbm_char_D2,<hrbm_char_D3
            !BYTE <hrbm_char_D4,<hrbm_char_D5,<hrbm_char_D6,<hrbm_char_D7
            !BYTE <hrbm_char_D8,<hrbm_char_D9,<hrbm_char_DA,<hrbm_char_DB
            !BYTE <hrbm_char_DC,<hrbm_char_DD,<hrbm_char_DE,<hrbm_char_DF
            !BYTE <hrbm_char_E0,<hrbm_char_E1,<hrbm_char_E2,<hrbm_char_E3
            !BYTE <hrbm_char_E4,<hrbm_char_E5,<hrbm_char_E6,<hrbm_char_E7
            !BYTE <hrbm_char_E8,<hrbm_char_E9,<hrbm_char_EA,<hrbm_char_EB
            !BYTE <hrbm_char_EC,<hrbm_char_ED,<hrbm_char_EE,<hrbm_char_EF
            !BYTE <hrbm_char_F0,<hrbm_char_F1,<hrbm_char_F2,<hrbm_char_F3
            !BYTE <hrbm_char_F4,<hrbm_char_F5,<hrbm_char_F6,<hrbm_char_F7
            !BYTE <hrbm_char_F8,<hrbm_char_F9,<hrbm_char_FA,<hrbm_char_FB
            !BYTE <hrbm_char_FC,<hrbm_char_FD,<hrbm_char_FE,<hrbm_char_FF
hrbm_char_hi
            !BYTE >hrbm_char_00,>hrbm_char_01,>hrbm_char_02,>hrbm_char_03
            !BYTE >hrbm_char_04,>hrbm_char_05,>hrbm_char_06,>hrbm_char_07
            !BYTE >hrbm_char_08,>hrbm_char_09,>hrbm_char_0A,>hrbm_char_0B
            !BYTE >hrbm_char_0C,>hrbm_char_0D,>hrbm_char_0E,>hrbm_char_0F
            !BYTE >hrbm_char_10,>hrbm_char_11,>hrbm_char_12,>hrbm_char_13
            !BYTE >hrbm_char_14,>hrbm_char_15,>hrbm_char_16,>hrbm_char_17
            !BYTE >hrbm_char_18,>hrbm_char_19,>hrbm_char_1A,>hrbm_char_1B
            !BYTE >hrbm_char_1C,>hrbm_char_1D,>hrbm_char_1E,>hrbm_char_1F
            !BYTE >hrbm_char_20,>hrbm_char_21,>hrbm_char_22,>hrbm_char_23
            !BYTE >hrbm_char_24,>hrbm_char_25,>hrbm_char_26,>hrbm_char_27
            !BYTE >hrbm_char_28,>hrbm_char_29,>hrbm_char_2A,>hrbm_char_2B
            !BYTE >hrbm_char_2C,>hrbm_char_2D,>hrbm_char_2E,>hrbm_char_2F
            !BYTE >hrbm_char_30,>hrbm_char_31,>hrbm_char_32,>hrbm_char_33
            !BYTE >hrbm_char_34,>hrbm_char_35,>hrbm_char_36,>hrbm_char_37
            !BYTE >hrbm_char_38,>hrbm_char_39,>hrbm_char_3A,>hrbm_char_3B
            !BYTE >hrbm_char_3C,>hrbm_char_3D,>hrbm_char_3E,>hrbm_char_3F
            !BYTE >hrbm_char_40,>hrbm_char_41,>hrbm_char_42,>hrbm_char_43
            !BYTE >hrbm_char_44,>hrbm_char_45,>hrbm_char_46,>hrbm_char_47
            !BYTE >hrbm_char_48,>hrbm_char_49,>hrbm_char_4A,>hrbm_char_4B
            !BYTE >hrbm_char_4C,>hrbm_char_4D,>hrbm_char_4E,>hrbm_char_4F
            !BYTE >hrbm_char_50,>hrbm_char_51,>hrbm_char_52,>hrbm_char_53
            !BYTE >hrbm_char_54,>hrbm_char_55,>hrbm_char_56,>hrbm_char_57
            !BYTE >hrbm_char_58,>hrbm_char_59,>hrbm_char_5A,>hrbm_char_5B
            !BYTE >hrbm_char_5C,>hrbm_char_5D,>hrbm_char_5E,>hrbm_char_5F
            !BYTE >hrbm_char_60,>hrbm_char_61,>hrbm_char_62,>hrbm_char_63
            !BYTE >hrbm_char_64,>hrbm_char_65,>hrbm_char_66,>hrbm_char_67
            !BYTE >hrbm_char_68,>hrbm_char_69,>hrbm_char_6A,>hrbm_char_6B
            !BYTE >hrbm_char_6C,>hrbm_char_6D,>hrbm_char_6E,>hrbm_char_6F
            !BYTE >hrbm_char_70,>hrbm_char_71,>hrbm_char_72,>hrbm_char_73
            !BYTE >hrbm_char_74,>hrbm_char_75,>hrbm_char_76,>hrbm_char_77
            !BYTE >hrbm_char_78,>hrbm_char_79,>hrbm_char_7A,>hrbm_char_7B
            !BYTE >hrbm_char_7C,>hrbm_char_7D,>hrbm_char_7E,>hrbm_char_7F
            !BYTE >hrbm_char_80,>hrbm_char_81,>hrbm_char_82,>hrbm_char_83
            !BYTE >hrbm_char_84,>hrbm_char_85,>hrbm_char_86,>hrbm_char_87
            !BYTE >hrbm_char_88,>hrbm_char_89,>hrbm_char_8A,>hrbm_char_8B
            !BYTE >hrbm_char_8C,>hrbm_char_8D,>hrbm_char_8E,>hrbm_char_8F
            !BYTE >hrbm_char_90,>hrbm_char_91,>hrbm_char_92,>hrbm_char_93
            !BYTE >hrbm_char_94,>hrbm_char_95,>hrbm_char_96,>hrbm_char_97
            !BYTE >hrbm_char_98,>hrbm_char_99,>hrbm_char_9A,>hrbm_char_9B
            !BYTE >hrbm_char_9C,>hrbm_char_9D,>hrbm_char_9E,>hrbm_char_9F
            !BYTE >hrbm_char_A0,>hrbm_char_A1,>hrbm_char_A2,>hrbm_char_A3
            !BYTE >hrbm_char_A4,>hrbm_char_A5,>hrbm_char_A6,>hrbm_char_A7
            !BYTE >hrbm_char_A8,>hrbm_char_A9,>hrbm_char_AA,>hrbm_char_AB
            !BYTE >hrbm_char_AC,>hrbm_char_AD,>hrbm_char_AE,>hrbm_char_AF
            !BYTE >hrbm_char_B0,>hrbm_char_B1,>hrbm_char_B2,>hrbm_char_B3
            !BYTE >hrbm_char_B4,>hrbm_char_B5,>hrbm_char_B6,>hrbm_char_B7
            !BYTE >hrbm_char_B8,>hrbm_char_B9,>hrbm_char_BA,>hrbm_char_BB
            !BYTE >hrbm_char_BC,>hrbm_char_BD,>hrbm_char_BE,>hrbm_char_BF
            !BYTE >hrbm_char_C0,>hrbm_char_C1,>hrbm_char_C2,>hrbm_char_C3
            !BYTE >hrbm_char_C4,>hrbm_char_C5,>hrbm_char_C6,>hrbm_char_C7
            !BYTE >hrbm_char_C8,>hrbm_char_C9,>hrbm_char_CA,>hrbm_char_CB
            !BYTE >hrbm_char_CC,>hrbm_char_CD,>hrbm_char_CE,>hrbm_char_CF
            !BYTE >hrbm_char_D0,>hrbm_char_D1,>hrbm_char_D2,>hrbm_char_D3
            !BYTE >hrbm_char_D4,>hrbm_char_D5,>hrbm_char_D6,>hrbm_char_D7
            !BYTE >hrbm_char_D8,>hrbm_char_D9,>hrbm_char_DA,>hrbm_char_DB
            !BYTE >hrbm_char_DC,>hrbm_char_DD,>hrbm_char_DE,>hrbm_char_DF
            !BYTE >hrbm_char_E0,>hrbm_char_E1,>hrbm_char_E2,>hrbm_char_E3
            !BYTE >hrbm_char_E4,>hrbm_char_E5,>hrbm_char_E6,>hrbm_char_E7
            !BYTE >hrbm_char_E8,>hrbm_char_E9,>hrbm_char_EA,>hrbm_char_EB
            !BYTE >hrbm_char_EC,>hrbm_char_ED,>hrbm_char_EE,>hrbm_char_EF
            !BYTE >hrbm_char_F0,>hrbm_char_F1,>hrbm_char_F2,>hrbm_char_F3
            !BYTE >hrbm_char_F4,>hrbm_char_F5,>hrbm_char_F6,>hrbm_char_F7
            !BYTE >hrbm_char_F8,>hrbm_char_F9,>hrbm_char_FA,>hrbm_char_FB
            !BYTE >hrbm_char_FC,>hrbm_char_FD,>hrbm_char_FE,>hrbm_char_FF

VDC_INTRO_RENDER:

            +STIWVDC $12, $2000 ; fill attribute memory
            +STI VDCASR, $1F

            +STIW $FB, VDC_INTRO

--          LDY #0
-           LDA ($FB),Y
            +STVDC
            INY
            BNE -
            INC $FC
            LDA $FC
            CMP #>(VDC_INTRO+$1000) ; this assumes the low byte is always 0
            BNE --

            RTS

VDC_INTRO:
USE_DITHER = 1
!IF USE_DITHER = 1 {
            ; vdc_intro_dithered
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$88
            !BYTE $22,$22,$22,$22,$88,$88,$88,$82
            !BYTE $22,$88,$88,$22,$28,$82,$22,$22
            !BYTE $22,$22,$88,$88,$88,$88,$22,$28
            !BYTE $88,$88,$88,$88,$22,$22,$22,$28
            !BYTE $88,$82,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$28,$88,$22,$28,$88
            !BYTE $82,$22,$22,$28,$88,$88,$98,$88
            !BYTE $22,$8C,$89,$22,$8C,$88,$22,$22
            !BYTE $22,$28,$C8,$98,$C8,$98,$82,$28
            !BYTE $C8,$98,$C8,$98,$82,$22,$28,$8C
            !BYTE $89,$88,$C2,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$88,$8C,$89,$82,$8C,$89
            !BYTE $88,$22,$22,$28,$98,$98,$88,$98
            !BYTE $82,$98,$98,$00,$C8,$98,$C2,$22
            !BYTE $22,$2C,$89,$89,$89,$8C,$98,$29
            !BYTE $89,$89,$89,$8C,$90,$22,$2C,$98
            !BYTE $98,$C8,$98,$C2,$22,$88,$88,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $28,$88,$82,$22,$22,$28,$C8,$8C
            !BYTE $88,$C8,$C9,$89,$88,$C8,$98,$8C
            !BYTE $89,$8C,$22,$2C,$88,$C8,$00,$0C
            !BYTE $89,$2C,$8C,$90,$C8,$9C,$90,$22
            !BYTE $22,$29,$8C,$80,$00,$08,$C9,$0C
            !BYTE $8C,$80,$00,$00,$00,$02,$22,$20
            !BYTE $89,$89,$89,$8C,$28,$89,$88,$C2
            !BYTE $22,$88,$22,$22,$22,$22,$22,$22
            !BYTE $88,$88,$88,$22,$C8,$C8,$98,$98
            !BYTE $98,$98,$88,$98,$C8,$98,$89,$89
            !BYTE $8C,$89,$22,$28,$98,$90,$00,$00
            !BYTE $00,$09,$C8,$C0,$9C,$89,$00,$02
            !BYTE $22,$2C,$9C,$00,$00,$00,$98,$00
            !BYTE $9C,$90,$00,$00,$00,$02,$22,$20
            !BYTE $C9,$CC,$90,$00,$09,$88,$98,$22
            !BYTE $22,$C8,$C8,$22,$22,$22,$22,$22
            !BYTE $89,$89,$89,$82,$89,$89,$8C,$89
            !BYTE $8C,$89,$C9,$89,$89,$80,$C8,$98
            !BYTE $98,$98,$C0,$2C,$89,$80,$00,$22
            !BYTE $20,$00,$99,$C9,$C9,$CC,$00,$02
            !BYTE $22,$2C,$9C,$00,$02,$22,$C9,$00
            !BYTE $C9,$C0,$02,$22,$22,$22,$22,$22
            !BYTE $C9,$C9,$C0,$00,$08,$9C,$89,$00
            !BYTE $08,$98,$98,$22,$88,$82,$22,$22
            !BYTE $8C,$88,$98,$C8,$2C,$98,$9C,$98
            !BYTE $9C,$98,$C8,$9C,$80,$00,$9C,$C9
            !BYTE $00,$C9,$89,$22,$9C,$C0,$02,$22
            !BYTE $22,$22,$2C,$9C,$9C,$00,$00,$22
            !BYTE $22,$2C,$9C,$00,$22,$22,$9C,$00
            !BYTE $9C,$90,$02,$22,$22,$22,$22,$22
            !BYTE $9C,$9C,$00,$02,$C9,$89,$C0,$00
            !BYTE $2C,$9C,$80,$0C,$89,$88,$88,$22
            !BYTE $C8,$98,$C8,$98,$02,$C9,$C8,$9C
            !BYTE $C8,$90,$09,$C9,$C0,$00,$C9,$8C
            !BYTE $00,$0C,$9C,$C2,$C8,$9C,$02,$22
            !BYTE $22,$22,$2C,$9C,$90,$00,$00,$22
            !BYTE $22,$29,$C9,$00,$22,$22,$C9,$00
            !BYTE $C9,$CC,$9C,$22,$22,$22,$22,$22
            !BYTE $C9,$C9,$00,$02,$C9,$CC,$00,$00
            !BYTE $C9,$89,$00,$98,$88,$98,$9C,$8C
            !BYTE $89,$89,$89,$89,$C0,$2C,$9C,$C9
            !BYTE $C9,$00,$0C,$89,$C0,$02,$2C,$9C
            !BYTE $90,$22,$C9,$80,$29,$C9,$C2,$22
            !BYTE $22,$22,$22,$9C,$90,$00,$22,$22
            !BYTE $22,$2C,$9C,$00,$22,$22,$9C,$00
            !BYTE $9C,$9C,$9C,$22,$22,$22,$22,$22
            !BYTE $9C,$9C,$00,$22,$9C,$9C,$00,$02
            !BYTE $9C,$C9,$00,$89,$C8,$9C,$89,$89
            !BYTE $CC,$C8,$0C,$C8,$98,$22,$09,$C9
            !BYTE $CC,$00,$02,$9C,$9C,$02,$29,$C9
            !BYTE $C0,$22,$9C,$9C,$0C,$9C,$90,$22
            !BYTE $22,$22,$22,$9D,$CD,$C2,$22,$22
            !BYTE $22,$29,$DC,$00,$22,$22,$9D,$00
            !BYTE $CD,$CD,$CD,$00,$22,$22,$22,$22
            !BYTE $CD,$CD,$00,$2C,$9C,$90,$00,$2C
            !BYTE $9C,$90,$0C,$C8,$9C,$89,$8C,$98
            !BYTE $29,$89,$00,$00,$C9,$C2,$20,$C9
            !BYTE $C9,$C0,$22,$C9,$C9,$02,$2C,$9C
            !BYTE $9C,$92,$2C,$9C,$02,$9C,$C9,$02
            !BYTE $22,$22,$22,$CD,$C9,$9D,$22,$22
            !BYTE $22,$2C,$9D,$90,$22,$22,$C9,$00
            !BYTE $DC,$90,$00,$00,$22,$22,$22,$22
            !BYTE $9C,$DC,$00,$29,$C9,$C9,$C0,$29
            !BYTE $C9,$00,$0C,$9C,$90,$00,$09,$CC
            !BYTE $2C,$9C,$C0,$20,$9C,$9C,$22,$29
            !BYTE $C9,$C9,$22,$2C,$9C,$90,$22,$C9
            !BYTE $C9,$C2,$2C,$9C,$90,$C9,$C9,$02
            !BYTE $22,$9C,$22,$DC,$9D,$CC,$D2,$22
            !BYTE $22,$2D,$CD,$CD,$22,$22,$DC,$00
            !BYTE $CD,$C0,$00,$00,$22,$22,$22,$22
            !BYTE $DC,$9D,$00,$2C,$9C,$9C,$99,$C9
            !BYTE $CC,$00,$C9,$C9,$00,$00,$00,$C9
            !BYTE $22,$C9,$C9,$22,$2C,$9C,$92,$22
            !BYTE $C9,$C9,$02,$29,$C9,$C0,$29,$C9
            !BYTE $C9,$C9,$C9,$C9,$C0,$2C,$9C,$C0
            !BYTE $22,$C9,$C2,$9D,$CD,$D9,$C0,$22
            !BYTE $22,$29,$DC,$DC,$02,$2D,$CD,$00
            !BYTE $DC,$D0,$02,$22,$22,$22,$22,$2C
            !BYTE $D9,$D0,$00,$9D,$CD,$C1,$CD,$CD
            !BYTE $9D,$00,$C9,$C0,$00,$02,$22,$20
            !BYTE $22,$C9,$C9,$C2,$22,$C9,$CC,$22
            !BYTE $29,$C9,$C0,$22,$C9,$C9,$0C,$9C
            !BYTE $9C,$DC,$9C,$DC,$9C,$09,$C9,$9C
            !BYTE $9C,$9C,$91,$CD,$D0,$CD,$D9,$02
            !BYTE $22,$22,$DC,$D9,$D9,$DC,$DC,$00
            !BYTE $9D,$C0,$02,$22,$22,$22,$22,$2D
            !BYTE $CD,$C0,$00,$C9,$C9,$00,$00,$9C
            !BYTE $C0,$09,$C9,$C9,$C9,$22,$22,$22
            !BYTE $22,$2C,$9C,$90,$9C,$9C,$9C,$92
            !BYTE $2C,$DC,$D0,$22,$DC,$DC,$01,$2C
            !BYTE $DC,$9C,$10,$C9,$CD,$CD,$CD,$CD
            !BYTE $CD,$CD,$C0,$DC,$D0,$0D,$CD,$02
            !BYTE $22,$22,$D9,$DC,$DD,$CD,$91,$00
            !BYTE $DC,$D0,$02,$22,$22,$22,$22,$DC
            !BYTE $DD,$D0,$0C,$DC,$DC,$00,$0C,$D9
            !BYTE $D0,$0C,$9C,$9C,$9C,$C9,$22,$22
            !BYTE $22,$29,$C9,$CC,$9C,$9C,$9C,$90
            !BYTE $22,$9C,$9C,$02,$29,$C9,$C0,$20
            !BYTE $C9,$DC,$00,$0C,$DC,$90,$C9,$C9
            !BYTE $C9,$C9,$00,$0D,$C0,$0D,$DD,$00
            !BYTE $22,$22,$2D,$DD,$CD,$DD,$00,$00
            !BYTE $DD,$D0,$02,$22,$22,$22,$22,$DD
            !BYTE $CD,$00,$0D,$CD,$C0,$00,$2D,$CD
            !BYTE $00,$CD,$CD,$01,$CD,$CD,$C9,$22
            !BYTE $22,$2C,$9C,$DC,$9C,$DC,$9C,$DC
            !BYTE $02,$DC,$DC,$02,$2C,$DC,$D0,$22
            !BYTE $DC,$C9,$C0,$22,$9C,$D0,$0D,$CD
            !BYTE $CD,$00,$00,$02,$00,$02,$20,$00
            !BYTE $22,$22,$22,$00,$00,$00,$00,$02
            !BYTE $22,$00,$02,$22,$22,$22,$22,$22
            !BYTE $00,$00,$CD,$9D,$00,$00,$DC,$D0
            !BYTE $00,$9C,$9C,$00,$00,$09,$C1,$22
            !BYTE $22,$22,$DC,$9C,$DC,$9C,$DC,$9C
            !BYTE $02,$29,$CD,$90,$22,$9D,$C0,$02
            !BYTE $CD,$9D,$C0,$22,$DC,$90,$02,$00
            !BYTE $00,$00,$00,$22,$20,$02,$20,$00
            !BYTE $22,$22,$22,$20,$00,$00,$00,$22
            !BYTE $22,$00,$02,$22,$22,$22,$22,$22
            !BYTE $00,$00,$22,$DC,$00,$0D,$CD,$C0
            !BYTE $0C,$DC,$D0,$00,$22,$00,$00,$00
            !BYTE $22,$22,$C9,$C9,$C9,$CD,$C9,$CD
            !BYTE $C0,$2D,$C9,$D0,$22,$C9,$DC,$02
            !BYTE $2C,$DC,$D9,$02,$9D,$00,$02,$20
            !BYTE $00,$00,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$00,$00,$2D,$9D,$D0
            !BYTE $0D,$CD,$CD,$00,$22,$22,$20,$02
            !BYTE $22,$29,$DC,$DC,$DC,$DC,$90,$9C
            !BYTE $DC,$22,$DC,$CD,$02,$1C,$D9,$D2
            !BYTE $29,$DC,$9D,$02,$22,$00,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$33,$33
            !BYTE $33,$22,$33,$33,$32,$22,$23,$33
            !BYTE $32,$22,$33,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$00,$22,$DC,$00
            !BYTE $CD,$9D,$C9,$DC,$22,$22,$22,$22
            !BYTE $22,$CD,$C9,$CD,$C9,$C0,$00,$1C
            !BYTE $99,$02,$2D,$9C,$D2,$2D,$CD,$C0
            !BYTE $22,$20,$00,$00,$22,$00,$22,$22
            !BYTE $22,$22,$22,$33,$33,$22,$20,$03
            !BYTE $00,$03,$30,$00,$03,$22,$32,$00
            !BYTE $03,$22,$20,$33,$32,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$00
            !BYTE $DC,$DC,$DD,$CD,$DC,$DC,$22,$22
            !BYTE $22,$29,$D0,$09,$DC,$D0,$00,$0D
            !BYTE $CD,$00,$2C,$DD,$C0,$22,$9D,$90
            !BYTE $02,$20,$00,$00,$22,$22,$22,$33
            !BYTE $32,$23,$33,$20,$00,$02,$22,$23
            !BYTE $02,$23,$30,$22,$22,$02,$30,$22
            !BYTE $22,$02,$22,$23,$03,$22,$33,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $22,$DD,$CD,$DC,$DD,$9D,$22,$22
            !BYTE $22,$22,$00,$0C,$DC,$9D,$02,$22
            !BYTE $CD,$C0,$22,$DC,$D0,$02,$DC,$00
            !BYTE $02,$22,$22,$22,$22,$23,$33,$20
            !BYTE $30,$23,$00,$02,$22,$22,$22,$23
            !BYTE $02,$22,$33,$33,$32,$22,$30,$22
            !BYTE $22,$22,$22,$23,$02,$02,$23,$33
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$00,$0D,$CD,$CD,$DD,$00,$22
            !BYTE $22,$22,$20,$0D,$CD,$CD,$C2,$22
            !BYTE $DC,$D9,$22,$D9,$DC,$02,$22,$00
            !BYTE $02,$22,$22,$22,$22,$23,$00,$02
            !BYTE $30,$23,$02,$22,$22,$22,$22,$23
            !BYTE $32,$22,$20,$00,$03,$22,$33,$22
            !BYTE $22,$22,$22,$23,$02,$22,$22,$30
            !BYTE $32,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$00,$00,$00,$00,$00,$22
            !BYTE $22,$22,$22,$22,$DC,$DC,$D0,$22
            !BYTE $29,$DC,$D2,$2D,$C1,$02,$22,$00
            !BYTE $22,$22,$22,$22,$22,$23,$02,$22
            !BYTE $30,$23,$33,$33,$32,$22,$22,$23
            !BYTE $30,$23,$32,$22,$23,$02,$33,$02
            !BYTE $22,$22,$22,$23,$02,$22,$22,$30
            !BYTE $20,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$00,$00,$00,$22
            !BYTE $22,$22,$22,$22,$9D,$CD,$C0,$02
            !BYTE $2D,$CD,$CD,$22,$D0,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$33,$33
            !BYTE $30,$23,$30,$00,$00,$22,$22,$23
            !BYTE $30,$23,$30,$22,$23,$02,$33,$02
            !BYTE $23,$22,$22,$23,$02,$22,$22,$30
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$2D,$DC,$00,$02
            !BYTE $22,$DC,$DC,$02,$20,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$00
            !BYTE $00,$23,$30,$22,$22,$22,$22,$23
            !BYTE $30,$22,$33,$33,$32,$02,$23,$33
            !BYTE $33,$02,$33,$33,$32,$22,$22,$30
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$D0,$00,$02
            !BYTE $22,$2D,$DD,$D0,$22,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$22
            !BYTE $22,$23,$33,$33,$33,$22,$22,$22
            !BYTE $00,$22,$20,$00,$00,$22,$22,$00
            !BYTE $00,$02,$20,$00,$33,$22,$33,$33
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$22
            !BYTE $22,$22,$CD,$C0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$22
            !BYTE $22,$22,$00,$00,$00,$02,$22,$23
            !BYTE $33,$33,$32,$22,$23,$33,$32,$23
            !BYTE $33,$33,$33,$32,$20,$02,$20,$03
            !BYTE $32,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$02,$22
            !BYTE $22,$22,$20,$00,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$23
            !BYTE $33,$33,$32,$22,$33,$33,$32,$23
            !BYTE $00,$00,$03,$22,$32,$00,$03,$22
            !BYTE $00,$30,$00,$00,$23,$33,$32,$22
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$00,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$23
            !BYTE $00,$00,$30,$23,$20,$00,$03,$23
            !BYTE $02,$22,$23,$02,$30,$22,$23,$02
            !BYTE $22,$30,$22,$22,$32,$00,$03,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $02,$22,$30,$23,$02,$22,$23,$03
            !BYTE $02,$22,$23,$02,$30,$22,$23,$02
            !BYTE $22,$30,$22,$22,$30,$22,$22,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $02,$22,$30,$23,$02,$22,$23,$03
            !BYTE $33,$33,$32,$02,$33,$22,$23,$02
            !BYTE $22,$33,$22,$22,$23,$33,$32,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $33,$33,$33,$23,$32,$22,$23,$03
            !BYTE $30,$00,$03,$22,$33,$02,$23,$02
            !BYTE $22,$33,$02,$22,$22,$00,$03,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $30,$00,$03,$03,$30,$22,$23,$03
            !BYTE $30,$22,$23,$02,$33,$02,$23,$02
            !BYTE $22,$33,$02,$22,$33,$22,$23,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $30,$22,$23,$03,$30,$23,$32,$03
            !BYTE $33,$33,$32,$02,$23,$33,$32,$02
            !BYTE $22,$33,$02,$22,$33,$02,$23,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $30,$22,$23,$02,$33,$32,$00,$22
            !BYTE $00,$00,$00,$22,$22,$00,$00,$22
            !BYTE $22,$20,$02,$22,$23,$33,$32,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$22,$22,$02,$20,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$00,$00,$02,$00
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$0C,$C8,$80,$00,$C8
            !BYTE $CC,$00,$22,$22,$22,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$C5
            !BYTE $DC,$02,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0E,$EE,$E0
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$0C,$88,$E0,$CC,$0C
            !BYTE $8C,$0C,$02,$22,$20,$1E,$10,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0C,$FF
            !BYTE $55,$C0,$22,$22,$00,$22,$00,$22
            !BYTE $22,$22,$22,$22,$20,$EF,$FF,$FE
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$08,$88,$E0,$D1,$0C
            !BYTE $C8,$0C,$00,$00,$01,$30,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$00
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$04,$DF
            !BYTE $00,$C0,$22,$20,$F0,$22,$0F,$02
            !BYTE $22,$22,$22,$22,$20,$EF,$F0,$01
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$08,$EF,$C0,$5C,$01
            !BYTE $8C,$C0,$0C,$80,$1E,$1E,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$20,$CC,$18
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0C,$50
            !BYTE $F5,$C0,$22,$20,$F0,$22,$0E,$02
            !BYTE $22,$22,$22,$22,$20,$EE,$0F,$FE
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$C0,$0C,$88,$0C
            !BYTE $C8,$C0,$20,$00,$00,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$0C,$1C
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$CF
            !BYTE $D5,$C0,$22,$20,$E0,$22,$0E,$02
            !BYTE $22,$22,$22,$22,$22,$01,$EF,$F1
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$0C,$48,$80,$CC
            !BYTE $8C,$80,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$CC,$1C
            !BYTE $0C,$02,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $1C,$50,$22,$22,$0E,$00,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$20,$01,$17
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$0C,$88,$0C,$C8
            !BYTE $88,$80,$00,$00,$02,$20,$02,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$C0,$CD
            !BYTE $0E,$C0,$00,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $5D,$C0,$22,$22,$20,$E1,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0E,$EE
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$00,$00,$0C,$88
            !BYTE $8E,$80,$10,$1E,$02,$01,$10,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$CC,$DD
            !BYTE $8D,$E0,$23,$00,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$00,$00,$02,$22,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$00
            !BYTE $00,$00,$22,$22,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$20,$CC,$08,$88
            !BYTE $EF,$80,$10,$01,$10,$01,$31,$02
            !BYTE $22,$22,$22,$22,$22,$0C,$CD,$D0
            !BYTE $CE,$E0,$12,$01,$01,$00,$00,$00
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$0E,$1E,$10,$00,$20,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $C4,$C1,$02,$20,$FE,$02,$22,$22
            !BYTE $22,$22,$22,$22,$20,$8C,$08,$8E
            !BYTE $FF,$80,$10,$10,$00,$00,$E1,$02
            !BYTE $22,$22,$22,$22,$22,$20,$CC,$0C
            !BYTE $EE,$03,$60,$ED,$1E,$00,$EE,$E0
            !BYTE $22,$22,$22,$22,$22,$22,$20,$02
            !BYTE $20,$EE,$E0,$EE,$0E,$0E,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$0C
            !BYTE $5D,$4C,$40,$0F,$11,$30,$22,$22
            !BYTE $22,$22,$22,$22,$20,$C8,$C8,$EF
            !BYTE $FF,$80,$E0,$8C,$C0,$01,$00,$E0
            !BYTE $22,$22,$22,$22,$22,$22,$0C,$C0
            !BYTE $C0,$E6,$0E,$18,$00,$CE,$00,$02
            !BYTE $22,$22,$22,$22,$22,$22,$0E,$00
            !BYTE $0E,$17,$FF,$0E,$10,$E0,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$C5
            !BYTE $FF,$D1,$CC,$0F,$0E,$E0,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$C8,$EF
            !BYTE $FE,$80,$E0,$88,$8C,$00,$20,$1E
            !BYTE $02,$22,$22,$22,$22,$22,$20,$00
            !BYTE $E3,$66,$30,$00,$DC,$0C,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$01
            !BYTE $0E,$1F,$00,$F0,$10,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$4D
            !BYTE $FF,$EC,$40,$0F,$0E,$E0,$22,$22
            !BYTE $22,$22,$22,$22,$22,$08,$C8,$EE
            !BYTE $99,$C0,$E0,$88,$8C,$02,$22,$01
            !BYTE $30,$22,$22,$22,$22,$22,$22,$06
            !BYTE $6F,$60,$03,$0C,$ED,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0E,$00
            !BYTE $01,$3E,$00,$F0,$10,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$C4
            !BYTE $DC,$5D,$40,$0E,$0E,$30,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$0C,$88
            !BYTE $8C,$01,$E0,$EE,$8C,$02,$22,$20
            !BYTE $10,$22,$22,$22,$22,$22,$22,$20
            !BYTE $6F,$63,$66,$30,$00,$00,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$02
            !BYTE $01,$1E,$FF,$E1,$20,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$CC
            !BYTE $4D,$5C,$C5,$0E,$10,$E0,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$00
            !BYTE $00,$11,$0C,$CC,$CC,$02,$22,$20
            !BYTE $00,$22,$22,$22,$22,$22,$22,$20
            !BYTE $36,$66,$66,$00,$CC,$0E,$02,$22
            !BYTE $22,$22,$22,$22,$22,$20,$E1,$02
            !BYTE $20,$16,$1E,$21,$00,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$04
            !BYTE $CC,$5C,$40,$20,$E6,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$CC,$8C
            !BYTE $02,$00,$1C,$00,$00,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$36,$30,$C1,$00,$11,$02,$22
            !BYTE $22,$22,$22,$22,$22,$0E,$00,$E0
            !BYTE $22,$01,$11,$10,$00,$20,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $C4,$C4,$02,$22,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$08,$E8
            !BYTE $02,$22,$00,$01,$01,$10,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$00,$01,$CC,$00,$00,$22,$22
            !BYTE $22,$22,$22,$22,$20,$E0,$22,$0E
            !BYTE $02,$20,$00,$00,$20,$02,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$00,$02,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$8E
            !BYTE $C0,$22,$20,$1E,$01,$30,$02,$00
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$CC,$C0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$20,$F0,$22,$0F
            !BYTE $02,$22,$00,$22,$20,$26,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$0E,$00,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $C0,$00,$00,$00,$20,$00,$00,$1E
            !BYTE $10,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$C0,$00,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$20,$F0,$22,$0F
            !BYTE $02,$20,$20,$02,$00,$26,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $E1,$0F,$01,$02,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $0E,$80,$8E,$E8,$00,$EE,$E0,$E0
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$C0,$01,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$00,$22,$00
            !BYTE $22,$20,$26,$00,$02,$61,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$0E
            !BYTE $1E,$0F,$0E,$E0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $08,$80,$00,$88,$01,$E0,$00,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$01,$1E,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$26,$31,$36,$30,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$01
            !BYTE $7E,$EE,$EE,$E0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $20,$00,$22,$00,$00,$0E,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$00,$00,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$02,$66,$66,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $EE,$FF,$FE,$02,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$20,$00,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$00,$00,$22,$22,$22,$22,$22
}
!IF USE_DITHER = 0 {
            ; vdc_intro_solid
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$DD
            !BYTE $22,$22,$22,$22,$DD,$DD,$DD,$D2
            !BYTE $22,$DD,$DD,$22,$2D,$D2,$22,$22
            !BYTE $22,$22,$DD,$DD,$DD,$DD,$22,$2D
            !BYTE $DD,$DD,$DD,$DD,$22,$22,$22,$2D
            !BYTE $DD,$D2,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$2D,$DD,$22,$2D,$DD
            !BYTE $D2,$22,$22,$2D,$DD,$DD,$DD,$DD
            !BYTE $22,$DD,$DD,$22,$DD,$DD,$22,$22
            !BYTE $22,$2D,$DD,$DD,$DD,$DD,$D2,$2D
            !BYTE $DD,$DD,$DD,$DD,$D2,$22,$2D,$DD
            !BYTE $DD,$DD,$D2,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$DD,$DD,$DD,$D2,$DD,$DD
            !BYTE $DD,$22,$22,$2D,$DD,$DD,$DD,$DD
            !BYTE $D2,$DD,$DD,$00,$DD,$DD,$D2,$22
            !BYTE $22,$2D,$DD,$DD,$DD,$DD,$DD,$2D
            !BYTE $DD,$DD,$DD,$DD,$D0,$22,$2D,$DD
            !BYTE $DD,$DD,$DD,$D2,$22,$DD,$DD,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $2D,$DD,$D2,$22,$22,$2D,$DD,$DD
            !BYTE $DD,$DD,$DD,$DD,$DD,$DD,$DD,$DD
            !BYTE $DD,$DD,$22,$2D,$DD,$DD,$00,$0D
            !BYTE $DD,$2D,$DD,$D0,$DD,$DD,$D0,$22
            !BYTE $22,$2D,$DD,$D0,$00,$0D,$DD,$0D
            !BYTE $DD,$D0,$00,$00,$00,$02,$22,$20
            !BYTE $DD,$DD,$DD,$DD,$2D,$DD,$DD,$D2
            !BYTE $22,$DD,$22,$22,$22,$22,$22,$22
            !BYTE $DD,$DD,$DD,$22,$DD,$DD,$DD,$DD
            !BYTE $DD,$DD,$DD,$DD,$DD,$DD,$DD,$DD
            !BYTE $DD,$DD,$22,$2D,$DD,$D0,$00,$00
            !BYTE $00,$0D,$DD,$D0,$DD,$DD,$00,$02
            !BYTE $22,$2D,$DD,$00,$00,$00,$DD,$00
            !BYTE $DD,$D0,$00,$00,$00,$02,$22,$20
            !BYTE $DD,$DD,$D0,$00,$0D,$DD,$DD,$22
            !BYTE $22,$DD,$DD,$22,$22,$22,$22,$22
            !BYTE $DD,$DD,$DD,$D2,$DD,$DD,$DD,$DD
            !BYTE $DD,$DD,$DD,$DD,$DD,$D0,$DD,$DD
            !BYTE $DD,$DD,$D0,$2D,$DD,$D0,$00,$22
            !BYTE $20,$00,$DD,$DD,$DD,$DD,$00,$02
            !BYTE $22,$2D,$DD,$00,$02,$22,$DD,$00
            !BYTE $DD,$D0,$02,$22,$22,$22,$22,$22
            !BYTE $DD,$DD,$D0,$00,$0D,$DD,$DD,$00
            !BYTE $0D,$DD,$DD,$22,$DD,$D2,$22,$22
            !BYTE $DD,$DD,$DD,$DD,$2D,$DD,$DD,$DD
            !BYTE $DD,$DD,$DD,$DD,$D0,$00,$DD,$DD
            !BYTE $00,$DD,$DD,$22,$DD,$D0,$02,$22
            !BYTE $22,$22,$2D,$DD,$DD,$00,$00,$22
            !BYTE $22,$2D,$DD,$00,$22,$22,$DD,$00
            !BYTE $DD,$D0,$02,$22,$22,$22,$22,$22
            !BYTE $DD,$DD,$00,$02,$DD,$DD,$D0,$00
            !BYTE $2D,$DD,$D0,$0D,$DD,$DD,$DD,$22
            !BYTE $DD,$DD,$DD,$DD,$02,$DD,$DD,$DD
            !BYTE $DD,$D0,$0D,$DD,$D0,$00,$DD,$DD
            !BYTE $00,$0D,$DD,$D2,$DD,$DD,$02,$22
            !BYTE $22,$22,$2D,$DD,$D0,$00,$00,$22
            !BYTE $22,$2D,$DD,$00,$22,$22,$DD,$00
            !BYTE $DD,$DD,$DD,$22,$22,$22,$22,$22
            !BYTE $DD,$DD,$00,$02,$DD,$DD,$00,$00
            !BYTE $DD,$DD,$00,$DD,$DD,$DD,$DD,$DD
            !BYTE $DD,$DD,$DD,$DD,$D0,$2D,$DD,$DD
            !BYTE $DD,$00,$0D,$DD,$D0,$02,$2D,$DD
            !BYTE $D0,$22,$DD,$D0,$2D,$DD,$D2,$22
            !BYTE $22,$22,$22,$DD,$D0,$00,$22,$22
            !BYTE $22,$2D,$DD,$00,$22,$22,$DD,$00
            !BYTE $DD,$DD,$DD,$22,$22,$22,$22,$22
            !BYTE $DD,$DD,$00,$22,$DD,$DD,$00,$02
            !BYTE $DD,$DD,$00,$DD,$DD,$DD,$DD,$DD
            !BYTE $DD,$DD,$0D,$DD,$DD,$22,$0D,$DD
            !BYTE $DD,$00,$02,$DD,$DD,$02,$2D,$DD
            !BYTE $D0,$22,$DD,$DD,$0D,$DD,$D0,$22
            !BYTE $22,$22,$22,$DD,$DD,$D2,$22,$22
            !BYTE $22,$2D,$DD,$00,$22,$22,$DD,$00
            !BYTE $DD,$DD,$DD,$00,$22,$22,$22,$22
            !BYTE $DD,$DD,$00,$2D,$DD,$D0,$00,$2D
            !BYTE $DD,$D0,$0D,$DD,$DD,$DD,$DD,$DD
            !BYTE $2D,$DD,$00,$00,$DD,$D2,$20,$DD
            !BYTE $DD,$D0,$22,$DD,$DD,$02,$2D,$DD
            !BYTE $DD,$D2,$2D,$DD,$02,$DD,$DD,$02
            !BYTE $22,$22,$22,$DD,$DD,$DD,$22,$22
            !BYTE $22,$2D,$DD,$D0,$22,$22,$DD,$00
            !BYTE $DD,$D0,$00,$00,$22,$22,$22,$22
            !BYTE $DD,$DD,$00,$2D,$DD,$DD,$D0,$2D
            !BYTE $DD,$00,$0D,$DD,$D0,$00,$0D,$DD
            !BYTE $2D,$DD,$D0,$20,$DD,$DD,$22,$2D
            !BYTE $DD,$DD,$22,$2D,$DD,$D0,$22,$DD
            !BYTE $DD,$D2,$2D,$DD,$D0,$DD,$DD,$02
            !BYTE $22,$DD,$22,$DD,$DD,$DD,$D2,$22
            !BYTE $22,$2D,$DD,$DD,$22,$22,$DD,$00
            !BYTE $DD,$D0,$00,$00,$22,$22,$22,$22
            !BYTE $DD,$DD,$00,$2D,$DD,$DD,$DD,$DD
            !BYTE $DD,$00,$DD,$DD,$00,$00,$00,$DD
            !BYTE $22,$DD,$DD,$22,$2D,$DD,$D2,$22
            !BYTE $DD,$DD,$02,$2D,$DD,$D0,$2D,$DD
            !BYTE $DD,$DD,$DD,$DD,$D0,$2D,$DD,$D0
            !BYTE $22,$DD,$D2,$DD,$DD,$DD,$D0,$22
            !BYTE $22,$2D,$DD,$DD,$02,$2D,$DD,$00
            !BYTE $DD,$D0,$02,$22,$22,$22,$22,$2D
            !BYTE $DD,$D0,$00,$DD,$DD,$D2,$DD,$DD
            !BYTE $DD,$00,$DD,$D0,$00,$02,$22,$20
            !BYTE $22,$DD,$DD,$D2,$22,$DD,$DD,$22
            !BYTE $2D,$DD,$D0,$22,$DD,$DD,$0D,$DD
            !BYTE $DD,$DD,$DD,$DD,$DD,$0D,$DD,$DD
            !BYTE $DD,$DD,$D1,$DD,$D0,$DD,$DD,$02
            !BYTE $22,$22,$DD,$DD,$DD,$DD,$DD,$00
            !BYTE $DD,$D0,$02,$22,$22,$22,$22,$2D
            !BYTE $DD,$D0,$00,$DD,$DD,$00,$00,$DD
            !BYTE $D0,$0D,$DD,$DD,$DD,$22,$22,$22
            !BYTE $22,$2D,$DD,$D0,$DD,$DD,$DD,$D2
            !BYTE $2D,$DD,$D0,$22,$DD,$DD,$02,$2D
            !BYTE $DD,$DD,$00,$DD,$DD,$DD,$DD,$DD
            !BYTE $DD,$DD,$D0,$DD,$D0,$0D,$DD,$02
            !BYTE $22,$22,$DD,$DD,$DD,$DD,$D2,$00
            !BYTE $DD,$D0,$02,$22,$22,$22,$22,$DD
            !BYTE $DD,$D0,$0D,$DD,$DD,$00,$0D,$DD
            !BYTE $D0,$0D,$DD,$DD,$DD,$DD,$22,$22
            !BYTE $22,$2D,$DD,$DD,$DD,$DD,$DD,$D0
            !BYTE $22,$DD,$DD,$02,$2D,$DD,$D0,$20
            !BYTE $DD,$DD,$00,$0D,$DD,$D0,$DD,$DD
            !BYTE $DD,$DD,$00,$0D,$D0,$0D,$DD,$00
            !BYTE $22,$22,$2D,$DD,$DD,$DD,$00,$00
            !BYTE $DD,$D0,$02,$22,$22,$22,$22,$DD
            !BYTE $DD,$00,$0D,$DD,$D0,$00,$2D,$DD
            !BYTE $00,$DD,$DD,$01,$DD,$DD,$DD,$22
            !BYTE $22,$2D,$DD,$DD,$DD,$DD,$DD,$DD
            !BYTE $02,$DD,$DD,$02,$2D,$DD,$D0,$22
            !BYTE $DD,$DD,$D0,$22,$DD,$D0,$0D,$DD
            !BYTE $DD,$00,$00,$02,$00,$02,$20,$00
            !BYTE $22,$22,$22,$00,$00,$00,$00,$02
            !BYTE $22,$00,$02,$22,$22,$22,$22,$22
            !BYTE $00,$00,$DD,$DD,$00,$00,$DD,$D0
            !BYTE $00,$DD,$DD,$00,$00,$0D,$D1,$22
            !BYTE $22,$22,$DD,$DD,$DD,$DD,$DD,$DD
            !BYTE $02,$2D,$DD,$D0,$22,$DD,$D0,$02
            !BYTE $DD,$DD,$D0,$22,$DD,$D0,$02,$00
            !BYTE $00,$00,$00,$22,$20,$02,$20,$00
            !BYTE $22,$22,$22,$20,$00,$00,$00,$22
            !BYTE $22,$00,$02,$22,$22,$22,$22,$22
            !BYTE $00,$00,$22,$DD,$00,$0D,$DD,$D0
            !BYTE $0D,$DD,$D0,$00,$22,$00,$00,$00
            !BYTE $22,$22,$DD,$DD,$DD,$DD,$DD,$DD
            !BYTE $D0,$2D,$DD,$D0,$22,$DD,$DD,$02
            !BYTE $2D,$DD,$DD,$02,$DD,$00,$02,$20
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$00,$00,$2D,$DD,$D0
            !BYTE $0D,$DD,$DD,$00,$22,$22,$20,$02
            !BYTE $22,$2D,$DD,$DD,$DD,$DD,$D0,$DD
            !BYTE $DD,$22,$DD,$DD,$02,$1D,$DD,$D2
            !BYTE $2D,$DD,$DD,$02,$22,$00,$02,$22
            !BYTE $22,$22,$22,$33,$33,$22,$33,$33
            !BYTE $33,$22,$33,$33,$32,$22,$23,$33
            !BYTE $32,$22,$33,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$00,$22,$DD,$00
            !BYTE $DD,$DD,$DD,$DD,$22,$22,$22,$22
            !BYTE $22,$DD,$DD,$DD,$DD,$D0,$00,$2D
            !BYTE $DD,$02,$2D,$DD,$D2,$2D,$DD,$D0
            !BYTE $22,$20,$00,$00,$22,$00,$22,$22
            !BYTE $22,$23,$33,$20,$00,$02,$20,$03
            !BYTE $00,$03,$30,$00,$03,$22,$32,$00
            !BYTE $03,$22,$20,$33,$32,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$00
            !BYTE $DD,$DD,$DD,$DD,$DD,$DD,$22,$22
            !BYTE $22,$2D,$D0,$0D,$DD,$D0,$00,$0D
            !BYTE $DD,$00,$2D,$DD,$D0,$22,$DD,$D0
            !BYTE $02,$20,$00,$00,$22,$22,$22,$33
            !BYTE $32,$23,$00,$02,$22,$22,$22,$23
            !BYTE $02,$23,$30,$22,$22,$02,$30,$22
            !BYTE $22,$02,$22,$23,$03,$22,$33,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $22,$DD,$DD,$DD,$DD,$DD,$22,$22
            !BYTE $22,$22,$00,$0D,$DD,$DD,$02,$22
            !BYTE $DD,$D0,$22,$DD,$D0,$02,$DD,$00
            !BYTE $02,$22,$22,$22,$22,$23,$33,$20
            !BYTE $30,$23,$02,$22,$22,$22,$22,$23
            !BYTE $02,$22,$33,$33,$32,$22,$30,$22
            !BYTE $22,$22,$22,$23,$02,$02,$23,$33
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$00,$0D,$DD,$DD,$DD,$00,$22
            !BYTE $22,$22,$20,$0D,$DD,$DD,$D2,$22
            !BYTE $DD,$DD,$22,$DD,$DD,$02,$22,$00
            !BYTE $02,$22,$22,$22,$22,$23,$00,$02
            !BYTE $30,$23,$02,$22,$22,$22,$22,$23
            !BYTE $32,$22,$20,$00,$03,$22,$33,$22
            !BYTE $22,$22,$22,$23,$02,$22,$22,$30
            !BYTE $32,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$00,$00,$00,$00,$00,$22
            !BYTE $22,$22,$22,$22,$DD,$DD,$D0,$22
            !BYTE $2D,$DD,$D2,$2D,$DD,$02,$22,$00
            !BYTE $22,$22,$22,$22,$22,$23,$02,$22
            !BYTE $30,$23,$33,$33,$32,$22,$22,$23
            !BYTE $30,$23,$32,$22,$23,$02,$33,$02
            !BYTE $22,$22,$22,$23,$02,$22,$22,$30
            !BYTE $20,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$00,$00,$00,$22
            !BYTE $22,$22,$22,$22,$DD,$DD,$D0,$02
            !BYTE $2D,$DD,$DD,$22,$D0,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$33,$33
            !BYTE $30,$23,$30,$00,$00,$22,$22,$23
            !BYTE $30,$23,$30,$22,$23,$02,$33,$02
            !BYTE $23,$22,$22,$23,$02,$22,$22,$30
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$2D,$DD,$00,$02
            !BYTE $22,$DD,$DD,$02,$20,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$00
            !BYTE $00,$23,$30,$22,$22,$22,$22,$23
            !BYTE $30,$22,$33,$33,$32,$02,$23,$33
            !BYTE $33,$02,$33,$33,$32,$22,$22,$30
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$D0,$00,$02
            !BYTE $22,$2D,$DD,$D0,$22,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$22
            !BYTE $22,$23,$33,$33,$33,$22,$22,$22
            !BYTE $00,$22,$20,$00,$00,$22,$22,$00
            !BYTE $00,$02,$20,$00,$33,$22,$33,$33
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$22
            !BYTE $22,$22,$DD,$D0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$22
            !BYTE $22,$22,$00,$00,$00,$33,$32,$23
            !BYTE $33,$33,$32,$22,$23,$33,$32,$23
            !BYTE $33,$33,$33,$22,$20,$02,$20,$03
            !BYTE $32,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$02,$22
            !BYTE $22,$22,$20,$00,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$23,$30,$22
            !BYTE $22,$33,$32,$22,$33,$20,$03,$23
            !BYTE $00,$00,$03,$22,$32,$00,$03,$22
            !BYTE $00,$30,$00,$32,$23,$33,$32,$22
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$00,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$23
            !BYTE $33,$00,$30,$23,$20,$02,$23,$03
            !BYTE $02,$22,$23,$02,$30,$22,$23,$02
            !BYTE $22,$30,$22,$00,$32,$00,$03,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $00,$02,$30,$23,$02,$22,$23,$03
            !BYTE $02,$22,$23,$02,$30,$22,$23,$02
            !BYTE $22,$30,$22,$22,$30,$22,$22,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $02,$22,$30,$23,$02,$22,$23,$03
            !BYTE $33,$33,$32,$02,$33,$22,$23,$02
            !BYTE $22,$33,$22,$22,$23,$33,$32,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $33,$33,$33,$23,$32,$22,$23,$03
            !BYTE $30,$00,$03,$22,$33,$02,$23,$02
            !BYTE $22,$33,$02,$22,$22,$00,$03,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $30,$00,$03,$03,$30,$22,$23,$03
            !BYTE $30,$22,$23,$02,$33,$02,$23,$02
            !BYTE $22,$33,$02,$22,$33,$22,$23,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $30,$22,$23,$03,$30,$23,$32,$03
            !BYTE $33,$33,$32,$02,$23,$33,$32,$02
            !BYTE $22,$33,$02,$22,$33,$02,$23,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$23
            !BYTE $30,$22,$23,$02,$33,$32,$00,$22
            !BYTE $00,$00,$00,$22,$22,$00,$00,$22
            !BYTE $22,$20,$02,$22,$23,$33,$32,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$22,$22,$02,$20,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$00,$00,$02,$00
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$0C,$C8,$80,$00,$C8
            !BYTE $CC,$00,$22,$22,$22,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$C5
            !BYTE $DC,$02,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0E,$EE,$E0
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$0C,$88,$E0,$CC,$0C
            !BYTE $8C,$0C,$02,$22,$20,$1E,$10,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0C,$FF
            !BYTE $55,$C0,$22,$22,$00,$22,$00,$22
            !BYTE $22,$22,$22,$22,$20,$EF,$FF,$FE
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$08,$88,$E0,$D1,$0C
            !BYTE $C8,$0C,$00,$00,$01,$30,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$00
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$04,$DF
            !BYTE $00,$C0,$22,$20,$F0,$22,$0F,$02
            !BYTE $22,$22,$22,$22,$20,$EF,$F0,$01
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$08,$EF,$C0,$5C,$01
            !BYTE $8C,$C0,$0C,$80,$1E,$1E,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$20,$CC,$18
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0C,$50
            !BYTE $F5,$C0,$22,$20,$F0,$22,$0E,$02
            !BYTE $22,$22,$22,$22,$20,$EE,$0F,$FE
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$C0,$0C,$88,$0C
            !BYTE $C8,$C0,$20,$00,$00,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$0C,$1C
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$CF
            !BYTE $D5,$C0,$22,$20,$E0,$22,$0E,$02
            !BYTE $22,$22,$22,$22,$22,$01,$EF,$F1
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$20,$0C,$48,$80,$CC
            !BYTE $8C,$80,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$CC,$1C
            !BYTE $0C,$02,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $1C,$50,$22,$22,$0E,$00,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$20,$01,$17
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$0C,$88,$0C,$C8
            !BYTE $88,$80,$00,$00,$02,$20,$02,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$C0,$CD
            !BYTE $0E,$C0,$00,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $5D,$C0,$22,$22,$20,$E1,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0E,$EE
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$00,$00,$0C,$88
            !BYTE $8E,$80,$10,$1E,$02,$01,$10,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$CC,$DD
            !BYTE $8D,$E0,$23,$00,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$00,$00,$02,$22,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$00
            !BYTE $00,$00,$22,$22,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$20,$CC,$08,$88
            !BYTE $EF,$80,$10,$01,$10,$01,$31,$02
            !BYTE $22,$22,$22,$22,$22,$0C,$CD,$D0
            !BYTE $CE,$E0,$12,$01,$01,$00,$00,$00
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$0E,$1E,$10,$00,$20,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $C4,$C1,$02,$20,$FE,$02,$22,$22
            !BYTE $22,$22,$22,$22,$20,$8C,$08,$8E
            !BYTE $FF,$80,$10,$10,$00,$00,$E1,$02
            !BYTE $22,$22,$22,$22,$22,$20,$CC,$0C
            !BYTE $EE,$03,$60,$ED,$1E,$00,$EE,$E0
            !BYTE $22,$22,$22,$22,$22,$22,$20,$02
            !BYTE $20,$EE,$E0,$EE,$0E,$0E,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$0C
            !BYTE $5D,$4C,$40,$0F,$11,$30,$22,$22
            !BYTE $22,$22,$22,$22,$20,$C8,$C8,$EF
            !BYTE $FF,$80,$E0,$8C,$C0,$01,$00,$E0
            !BYTE $22,$22,$22,$22,$22,$22,$0C,$C0
            !BYTE $C0,$E6,$0E,$18,$00,$CE,$00,$02
            !BYTE $22,$22,$22,$22,$22,$22,$0E,$00
            !BYTE $0E,$17,$FF,$0E,$10,$E0,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$C5
            !BYTE $FF,$D1,$CC,$0F,$0E,$E0,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$C8,$EF
            !BYTE $FE,$80,$E0,$88,$8C,$00,$20,$1E
            !BYTE $02,$22,$22,$22,$22,$22,$20,$00
            !BYTE $E3,$66,$30,$00,$DC,$0C,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$01
            !BYTE $0E,$1F,$00,$F0,$10,$00,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$4D
            !BYTE $FF,$EC,$40,$0F,$0E,$E0,$22,$22
            !BYTE $22,$22,$22,$22,$22,$08,$C8,$EE
            !BYTE $99,$C0,$E0,$88,$8C,$02,$22,$01
            !BYTE $30,$22,$22,$22,$22,$22,$22,$06
            !BYTE $6F,$60,$03,$0C,$ED,$00,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$0E,$00
            !BYTE $01,$3E,$00,$F0,$10,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$C4
            !BYTE $DC,$5D,$40,$0E,$0E,$30,$22,$22
            !BYTE $22,$22,$22,$22,$22,$0C,$0C,$88
            !BYTE $8C,$01,$E0,$EE,$8C,$02,$22,$20
            !BYTE $10,$22,$22,$22,$22,$22,$22,$20
            !BYTE $6F,$63,$66,$30,$00,$00,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$00,$02
            !BYTE $01,$1E,$FF,$E1,$20,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$CC
            !BYTE $4D,$5C,$C5,$0E,$10,$E0,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$00
            !BYTE $00,$11,$0C,$CC,$CC,$02,$22,$20
            !BYTE $00,$22,$22,$22,$22,$22,$22,$20
            !BYTE $36,$66,$66,$00,$CC,$0E,$02,$22
            !BYTE $22,$22,$22,$22,$22,$20,$E1,$02
            !BYTE $20,$16,$1E,$21,$00,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$04
            !BYTE $CC,$5C,$40,$20,$E6,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$CC,$8C
            !BYTE $02,$00,$1C,$00,$00,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$36,$30,$C1,$00,$11,$02,$22
            !BYTE $22,$22,$22,$22,$22,$0E,$00,$E0
            !BYTE $22,$01,$11,$10,$00,$20,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $C4,$C4,$02,$22,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$08,$E8
            !BYTE $02,$22,$00,$01,$01,$10,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$00,$01,$CC,$00,$00,$22,$22
            !BYTE $22,$22,$22,$22,$20,$E0,$22,$0E
            !BYTE $02,$20,$00,$00,$20,$02,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$00,$02,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$20,$8E
            !BYTE $C0,$22,$20,$1E,$01,$30,$02,$00
            !BYTE $00,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$CC,$C0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$20,$F0,$22,$0F
            !BYTE $02,$22,$00,$22,$20,$26,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$0E,$00,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$00
            !BYTE $C0,$00,$00,$00,$20,$00,$00,$1E
            !BYTE $10,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$C0,$00,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$20,$F0,$22,$0F
            !BYTE $02,$20,$20,$02,$00,$26,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $E1,$0F,$01,$02,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $0E,$80,$8E,$E8,$00,$EE,$E0,$E0
            !BYTE $02,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$C0,$01,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$00,$22,$00
            !BYTE $22,$20,$26,$00,$02,$61,$02,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$0E
            !BYTE $1E,$0F,$0E,$E0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $08,$80,$00,$88,$01,$E0,$00,$02
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$01,$1E,$02,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$20,$26,$31,$36,$30,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$01
            !BYTE $7E,$EE,$EE,$E0,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $20,$00,$22,$00,$00,$0E,$E0,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$00,$00,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$02,$66,$66,$02,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$20
            !BYTE $EE,$FF,$FE,$02,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$20,$00,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $22,$22,$20,$00,$00,$22,$22,$22
            !BYTE $22,$22,$22,$22,$22,$22,$22,$22
            !BYTE $00,$00,$00,$22,$22,$22,$22,$22
}

!warn "GAME0 AVAILABLE: ", SIZE_GAME0-(*-ADDR_GAME0)

!if * > ADDR_GAME0+SIZE_GAME0 {
  !serious "GAME0 TOO BIG"
}

