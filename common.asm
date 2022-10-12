!TO         "common-128", CBM
!SYMBOLLIST "common.sym"

!SOURCE     "const.inc"
!SOURCE     "macro.inc"
!SOURCE     "faces.sym"
!SOURCE     "game0.sym"
!SOURCE     "game1.sym"

* = ADDR_COMMON

;******************************************************************************
; Jump Table

.J_PREINIT
            JMP .X_PREINIT

.J_RUNIRQ
            JMP .X_RUNIRQ

.J_START_GAME
            JMP .X_START_GAME

.J_MUSIC_START
            JMP .X_MUSIC_START

.J_MUSIC_PLAY
            JMP .X_MUSIC_PLAY

.J_PLAY_SOUND
            JMP .X_PLAY_SOUND

.J_INIT_GAME
            JMP .X_INIT_GAME

.J_SET_CUSTOM_KEYS
            JMP .X_SET_CUSTOM_KEYS

.J_CALC_MAP_NAME
            JMP .X_CALC_MAP_NAME

.J_SET_CONTROLS
            JMP .X_SET_CONTROLS

.J_INTRO_SCREEN
            JMP .X_INTRO_SCREEN

.J_COPY_FACES
            JMP .X_COPY_FACES

.J_RUNNMI
            JMP .X_RUNNMI

.J_CLEAR_SNES_PAD
            JMP .X_CLEAR_SNES_PAD

.J_CLEAR_KEY_BUFFER
            JMP .X_CLEAR_KEY_BUFFER

.J_SNES_CONTROLER_READ
            JMP .X_SNES_CONTROLER_READ

.V_DIFF_LEVEL     !BYTE 1 ; default medium
.V_USER_MUSIC_ON  !BYTE 1
.V_BGTIMER1       !BYTE 0
.V_SPRITECOLSTATE !BYTE 0
.V_SPRITECOLCHART !BYTE 0,11,12,15,1,15,12,11
.V_CONTROL        !BYTE 0 ; 0=keyboard 1=custom keys 2=snes
.V_MAPNAME        !PET"level-a-128"
.V_KEYS_DEFINED   !BYTE 0 ; DEFAULT =0
.V_SELECTED_MAP   !BYTE 0
.V_MAP_NAMES      !SCR"01-research lab "
!IF SHAREWARE = 1 {
                  !SCR"02-the islands  " ; normally #4
}
!IF SHAREWARE = 0 {
                  !SCR"02-headquarters "
                  !SCR"03-the village  "
                  !SCR"04-the islands  "
                  !SCR"05-downtown     "
                  !SCR"06-pi university"
                  !SCR"07-more islands "
                  !SCR"08-robot hotel  "
                  !SCR"09-forest moon  "
                  !SCR"10-death tower  "
                  !SCR"11-river death  "  ;NEW MAP FOR C128
                  !SCR"12-bunker       "  ;NEW MAP FOR C128
                  !SCR"13-castle robot "  ;NEW MAP FOR C128
                  !SCR"14-rocket center"  ;NEW MAP FOR C128
                  !SCR"15-pilands      "  ;NEW MAP FOR C128
}

;******************************************************************************
; Implementations

.X_PREINIT
            +PH MMU
            +STI MMU, %01001110 ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            +STI SCREEN_SHAKE, MUSIC_STATE, 0
            +PL MMU
            RTS

.X_RUNIRQ
            LDA $DC0D
            BNE +
            JMP IRQ

+           +PHW $FB
            +PH MMU
            +STI MMU, %01001110 ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JSR RUNIRQ
            +PL MMU
            +PLW $FB
            JMP RETIRQ

.X_START_GAME
            +STI MMU, %01001110 ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JMP START_GAME

.X_MUSIC_START
            SEI                 ; Disable interrupts while ROM inactive
            TAX                 ; A has sound parameter, stash it for a bit
            +PH MMU             ; Preserve current MMU
            +STI MMU, %00111110 ; 00=RAM0, 111111=NOROM, 0=IO
            TXA                 ; Restore passed in sound parameter
            JSR $9000           ; Start the music
            +PL MMU             ; Restore original MMU
            CLI                 ; Re-enable interrupts
            RTS                 ; Done, return to caller

.X_MUSIC_PLAY
            ; this is only called within an IRQ handler, no need to disable IRQ here
            +PH MMU             ; Preserve current MMU
            +STI MMU, %00111110 ; 00=RAM0, 111111=NOROM, 0=IO
            JSR $9003           ; Play the music
            +PL MMU             ; Restore original MMU
            RTS                 ; Done, return to caller

.X_PLAY_SOUND
            SEI                 ; Disable interrupts while ROM inactive
            TAX                 ; A has sound parameter, stash it for a bit
            +PH MMU             ; Preserve current MMU
            +STI MMU, %00111110 ; 00=RAM0, 111111=NOROM, 0=IO
            TXA                 ; Restore passed in sound parameter
            JSR PLAY_SOUND      ; Play the sound
            +PL MMU             ; Restore original MMU
            CLI                 ; Finally re-enable interrupts
            RTS                 ; Done, return to caller

.X_INIT_GAME
            +STI MMU, %01001110 ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JMP INIT_GAME

.X_SET_CUSTOM_KEYS
            +PH MMU
            +STI MMU, %01001110 ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JSR SET_CUSTOM_KEYS
            +PL MMU
            RTS

.X_CALC_MAP_NAME
            +PH MMU
            +STI MMU, %00001110 ; 00=RAM0, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JSR CALC_MAP_NAME
            +PL MMU
            RTS

.X_SET_CONTROLS
            +PH MMU
            +STI MMU, %00001110 ; 00=RAM0, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JSR SET_CONTROLS
            +PL MMU
            RTS

.X_INTRO_SCREEN
            +STI MMU, %00001110 ; 00=RAM0, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JMP INTRO_SCREEN

.X_COPY_FACES
            +PH MMU
            +STI MMU, %01001110 ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            JSR copy_faces_bitmap
            +PL MMU
            RTS

.X_RUNNMI
            ;;; +PHW $FB
            ;;; +PH MMU
            ;;; +STI MMU, %01001110 ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO
            ;;; JSR RUNIRQ
            ;;; +PL MMU
            ;;; +PLW $FB
            ;;; LDA $DD0D
            JMP RETIRQ ; done

!IF SHAREWARE = 1 {
  
.X_SNES_CONTROLER_READ:
  RTS

}

!IF SHAREWARE = 0 {

.X_SNES_CONTROLER_READ:
  +PH MMU
  +STI MMU, %00111110 ; 00=RAM1, 11111=NOROM, 0=IO
  ;First copy last time's results to the LAST variables.
  LDY #0
SNCL: LDA SNES_B,Y
  STA LAST_B,Y
  ; STA $C000,Y   ;TESTCODE
  INY
  CPY #12
  BNE SNCL
  ;now latch data
  LDA #%00100000  ;latch on pin 5
  STA CI2PRB
  LDA #%00000000
  STA CI2PRB
  LDX #0
  ;Now read in bits
SRLOOP: LDA CI2PRB
  AND #%01000000  ;READ pin 6
  CMP #%01000000
  BEQ SRL1
  LDA #1
  JMP SRL5
SRL1: LDA #0
SRL5: STA SNES_B,X
  ;pulse the clock line
  LDA #%00001000  ;CLOCK on pin 3
  STA CI2PRB
  LDA #%00000000
  STA CI2PRB
  INX
  CPX #12
  BNE SRLOOP
  ;now process any new presses
  LDY #0
SRL09:  LDA NEW_B,Y
  CMP #1
  BEQ SRL10
  LDA SNES_B,Y
  CMP #1
  BNE SRL10
  LDA LAST_B,Y
  CMP #0
  BNE SRL10
  LDA #1
  STA NEW_B,Y
SRL10:  INY
  CPY #12
  BNE SRL09
  +PL MMU
  RTS
}

.X_CLEAR_KEY_BUFFER:
  LDA #0
  STA XMAX  ;disable keyboard input
  LDA #0
  STA NDX ;CLEAR KEYBOARD BUFFER
  LDA #20
  STA KEYTIMER
  RTS

;This routine clears any new-button-presses
;that are pending.
.X_CLEAR_SNES_PAD:
  LDA #0
  STA NEW_UP
  STA NEW_DOWN
  STA NEW_LEFT
  STA NEW_RIGHT
  STA NEW_A
  STA NEW_B
  STA NEW_X
  STA NEW_Y
  STA NEW_BACK_L
  STA NEW_BACK_R
  RTS

!warn "COMMON AVAILABLE: ", SIZE_COMMON-(*-ADDR_COMMON)

!if * > ADDR_COMMON+SIZE_COMMON {
  !serious "COMMON TOO BIG"
}

