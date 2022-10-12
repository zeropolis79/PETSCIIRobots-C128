!TO         "loader-128", CBM
!SYMBOLLIST "loader.sym"

!SOURCE     "const.inc"
!SOURCE     "macro.inc"
!SOURCE     "intro.sym"

; disk order
; ----------
; bootsect at T1S0
; boot-128
; loader-128
; intro-128    (BITMAP  ONLY)
; common-128
; faces-128    (BITMAP  ONLY)
; game0-128
; graphics-128 (BITMAP  ONLY)
; music.c64    (CHARMAP ONLY)
; music-128    (BITMAP  ONLY)
; game1-128
; tileset.gfx  (CHARMAP ONLY)
; tileset-128  (BITMAP  ONLY)
; gfxfont.prg  (CHARMAP ONLY)
; sprites-128
; level-a-128
; level-b-128
; level-c-128
; level-d-128
; level-e-128
; level-f-128
; level-g-128
; level-h-128
; level-i-128
; level-j-128
; level-k-128
; level-l-128
; level-m-128

* = ADDR_LOADER

LOADER

            ;;; INTRO_MSG  = "loading intro"
            INTRO_FILE = "intro-128"
            +LDCFILE INTRO_FILE, FAR_ADDR_INTRO, SIZE_INTRO
            JSR copy_intro_bitmap

            +STI CI2PRA, %10010100 ; MOVE VIC-II TO $C000-$FFFF REGION via CIA2 PORT A

            +STI VMCSB, %10000000 ; MOVE SCREEN RAM to $E000 & CHARSET/BITMAP AT $C000
!IF VIC_BITMAP {
            +STI SCROLY, %00111011 ; enable bitmap mode
            +STI SCROLX, %00011000 ; enable multicolor mode
            +MORAI $01, 4          ; disable charset rom
}

            +STI MMURCR, %00000101 ; 00=VICBLOCK 00=NA 01=COMMONBOTTOM 01=COMMON4K
            +STI SCROLX, %00001000 ; enable high resolution mode

            +STIW $FB, $C000+(7*320)+(1*8)

            JSR PROGRESS

            ;;; GRAPHICS_MSG  = "loading graphics"
            GRAPHICS_FILE = "graphics-128"
            +LDCFILE GRAPHICS_FILE, FAR_ADDR_GRAPHICS, SIZE_GRAPHICS

            JSR PROGRESS
            JSR PROGRESS
            JSR PROGRESS

            ;;; COMMON_MSG  = "loading common"
            COMMON_FILE = "common-128"
            +LDCFILE COMMON_FILE, FAR_ADDR_COMMON, SIZE_COMMON

            JSR PROGRESS

            ;;; FACES_MSG  = "loading faces"
            FACES_FILE = "faces-128"
            +LDCFILE FACES_FILE, FAR_ADDR_FACES, SIZE_FACES
            JSR C_COPY_FACES

            JSR PROGRESS

            ;;; GAME0_MSG  = "loading game0"
            GAME0_FILE = "game0-128"
            +LDCFILE GAME0_FILE, FAR_ADDR_GAME0, SIZE_GAME0

            JSR PROGRESS

!IF VIC_CHARMAP {
            SOUND_MSG  = "loading music"
            SOUND_FILE = "music.c64"
            +LDCFILE SOUND_MSG, SOUND_FILE, FAR_ADDR_SOUND, SIZE_SOUND
}

!IF VIC_BITMAP {
            ;;; SOUND_MSG  = "loading music"
            SOUND_FILE = "music-128"
            +LDCFILE SOUND_FILE, FAR_ADDR_SOUND, SIZE_SOUND
}

            JSR PROGRESS
            JSR PROGRESS

            ;;; GAME1_MSG  = "loading game1"
            GAME1_FILE = "game1-128"
            +LDCFILE GAME1_FILE, FAR_ADDR_GAME1, SIZE_GAME1

            JSR PROGRESS
            JSR PROGRESS
            JSR PROGRESS
            JSR PROGRESS
            JSR PROGRESS

            JSR C_PREINIT

            ;;; TILE_MSG  = "loading tiles"
            TILE_FILE = "tileset-128"
            +LDCFILE TILE_FILE, FAR_ADDR_TILE, SIZE_TILE

            JSR PROGRESS

!IF VIC_CHARMAP {
            CHARSET_MSG  = "loading charset"
            CHARSET_FILE = "gfxfont.prg"
            +LDCFILE CHARSET_MSG, CHARSET_FILE, FAR_ADDR_CHARSET, SIZE_CHARSET
}

            ;;; SPRITE_MSG  = "loading sprites"
            SPRITE_FILE = "sprites-128"
            +LDCFILE SPRITE_FILE, FAR_ADDR_SPRITE, SIZE_SPRITE

            JSR PROGRESS

            ;;; +STI MMURCR, %01000101 ; 01=VICBLOCK 00=NA 01=COMMONBOTTOM 01=COMMON4K

            SEI     ; Disable interrupt routine
            +STIW CINV, C_RUNIRQ ; Setup IRQ to visit my routine RUNIRQ before system IRQ routine
            +STIW $DC06, 17041 ; 1/60 of a second (cycles NTSC: 17041.58, PAL: 16501.65)
            LDA   $0A03
            BEQ   +
            +STIW $DC06, 16501
+           +STI  $DC0D, %10000010
            +STI  $DC0F, %00000001
            +STIW NMINV, C_RUNNMI ; Setup NMI to visit my routine RUNIRQ as NMI vs IRQ
            CLI     ; Reenable routine.

            JMP C_START_GAME

PROGRESS    SEI
            +PH MMU ; save MMU
            +STI MMU, %00111111 ; disable ROMs & IO

            LDY #0
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            INY
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            INY
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            INY
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            INY
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            INY
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            INY
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            INY
            LDA ($FB),Y
            EOR #$FF
            STA ($FB),Y
            CLC
            LDA $FB
            ADC #8
            STA $FB
            LDA $FC
            ADC #0
            STA $FC

            +PL MMU
            CLI

            RTS

;PROGRESS    LDY #5
;            LDA #%00011000
;            STA ($FB),Y
;            INY
;            STA ($FB),Y
;            CLC
;            LDA $FB
;            ADC #8
;            STA $FB
;            LDA $FC
;            ADC #0
;            STA $FC
;            RTS

!if * > ADDR_LOADER+SIZE_LOADER {
  !serious "LOADER TOO BIG"
}

