;******************************************************************************

INIT_VDC:

            +STIVDC  $01,    64 ; only display 512 bits wide (64 bytes, 128 fauxpixels @ 4 pixels each)
            +STIVDC  $02,    94 ; center 512 bits wide on the screen
            +STIVDC  $06,    64 ; only display 128 rasters tall (64 fauxpixels @ 2 rasters each)

            LDA $0A03 ; PAL/NTSC flag
            BNE +     ; NE 0 is PAL

            ; initialize ntsc
            +STIVDC  $04,   130 ; total pairs of rasters - 1
            +STIVDC  $05,     0 ; vertical fine adjust not necessary
            +STIVDC  $07,    97 ; center 128 rasters on the screen
            JMP ++

            ; initialize pal
+           +STIVDC  $04,   155 ; total pairs of rasters - 1
            +STIVDC  $05,     0 ; vertical fine adjust not necessary
            +STIVDC  $07,   108 ; center 128 rasters on the screen

++          +STIVDC  $09,     1 ; 2 rasters per "character" row
            +STIWVDC $0C, $0000 ; address of display memory
            +STIWVDC $14, $2000 ; address of attribute memory
            +STIVDC  $17,     1 ; 2 rasters per "character" row

; see http://www.oxyron.de/html/registers_vdc.html for computations
;
; VD = register 6
; VT = register 4
; VA = register 5
; VP = register 7
;
; char_height = 2 to 32
; rlines = 312 (50 Hz) or 262 (60 Hz)
; rows = Number of character rows to be displayed, should be smaller than (rlines / char_height)
;
; VD = rows
; VT = (rlines / char_height) - 1
; VA = (rlines) mod (char_height)
; VP = ((rlines / char_height) + rows) / 2

  +LDVDC   $19        ; enable bitmap with attributes for color
  ORA      #$C0
  +STVDC

  +LDVDC   $18        ; setup to fill memory
  AND      #$7F
  +STVDC

  +STIWVDC $12, $2000 ; fill attribute memory
  +STIVDC  $1F,   $00 ; fill $0001 of $1000
  LDY #$10
- +STIVDC  $1E,   $FF ; fill $0FF1 of $1000
  DEY
  BNE -
  +STIVDC  $1E,   $0F ; fill $1000 of $1000

  +STIWVDC $12, $0000 ; fill attribute memory
  +STIVDC  $1F,   $0F ; fill $0001 of $2000
  LDY #$20
- +STIVDC  $1E,   $FF ; fill $1FE1 of $2000
  DEY
  BNE -
  +STIVDC  $1E,   $1F ; fill $2000 of $2000

  RTS

VDC_MAP_TILE_ADDR = $FB
VDC_MAP_ATTR_ADDR = $FD
VDC_MAP_ATTR_TEMP = $FF

INIT_VDC_MODE:

            LDA VDC_MAP_USE_COLOR
            BNE + ; if not equal 0 then draw in color is true, so use color values
            +STIW VDC_MAP_ATTR_ADDR, MAP_VDC_MONO ; it is false, so use mono values
            JMP ++
+           +STIW VDC_MAP_ATTR_ADDR, MAP_VDC_COLOR
++          RTS

VDC_MAP_MAX_UNITS = 28

VDC_MAP_RENDER:

            JSR INIT_VDC_MODE

            +STI VDC_MAP_ERASE_COUNT, 0
            LDX #$00
-           TXA
            STA VDC_MAP_DRAW_UNIT,X
            INX
            CPX #VDC_MAP_MAX_UNITS
            BMI -
            +STI VDC_MAP_DRAW_COUNT, VDC_MAP_MAX_UNITS

            +STIWVDC $12, $2000 ; fill attribute memory
            +STI VDCASR, $1F

            +STIW VDC_MAP_TILE_ADDR, MAP

-           JSR VDC_MAP_COMPUTE_PIXEL
            LDA VDC_MAP_ATTR_TEMP
            +STVDC
            +ADDW VDC_MAP_TILE_ADDR, 2

            LDA VDC_MAP_TILE_ADDR+1
            CMP #>(ADDR_MAPDATA+$2000) ; this assumes the low byte is always 0
            BNE -

            JSR VDC_MAP_DRAW_UNITS

            +STI VDC_MAP_DRAW_COUNT, 0

            ;;; ; copy attribute memory from $2000 to $3000 for buffering
            ;;; LDX #$20
            ;;; LDY #$30
            ;;; JSR VDC_MAP_MEMCPY

            RTS

;;; VDC_MAP_MEMCPY:
;;;
;;;             +PHX                ; save source page
;;;             +PHY                ; save destination page
;;;
;;;             PLA                 ; set destination page
;;;             +STVDC $12
;;;             +STIVDC $13, $00
;;;
;;;             +LDVDC   $18        ; setup to copy memory
;;;             ORA      #$80
;;;             +STVDC
;;;
;;;             PLA                 ; set source page
;;;             +STVDC $20
;;;             +STIVDC $21, $00
;;;
;;;             LDY #$10            ; 16 x 256 byte blocks to copy
;;; -           +STIVDC $1E, $00    ; copy 256 bytes
;;;             DEY
;;;             BNE -
;;;
;;;             RTS

!MACRO VDC_MAP_LOAD_TILE_ADDR_Y {
            LDA VDC_MAP_ROW_OFF_LO,Y ; get low byte of address
            STA VDC_MAP_TILE_ADDR+0
            LDA VDC_MAP_ROW_OFF_HI,Y ; get high byte of address
            STA VDC_MAP_TILE_ADDR+1
}

!MACRO VDC_MAP_ADD_TILE_ADDR_X .page {
            CLC
            ADC VDC_MAP_TILE_ADDR+0
            STA VDC_MAP_TILE_ADDR+0
            !IF .page != 0 {
              LDA VDC_MAP_TILE_ADDR+1
              ADC #.page
              STA VDC_MAP_TILE_ADDR+1
            }
}

VDC_MAP_DRAW_UNITS:

            CLC
            LDA VDC_MAP_ERASE_COUNT
            ADC VDC_MAP_DRAW_COUNT
            BNE +
            RTS

+           JSR INIT_VDC_MODE              ; select color or mono attributes
            JSR VDC_MAP_REPAINT            ; put back the correct map pixels
!IF 0 {
            LDX #VDC_MAP_MAX_UNITS         ; max of 1 player and 27 robots

-           DEX                            ; work backward through the unit list
            BPL +                          ; if index is still non-negative, check the type
} ELSE {
-           LDY VDC_MAP_DRAW_COUNT
            BEQ VMD_DONE
            DEY
            STY VDC_MAP_DRAW_COUNT
            LDX VDC_MAP_DRAW_UNIT,Y
            JMP +
}

VMD_DONE:
            ;;; ; copy attribute memory from $3000 to $2000 for display
            ;;; LDX #$30
            ;;; LDY #$20
            ;;; JSR VDC_MAP_MEMCPY

            RTS                            ; index was negative, done

+           LDA UNIT_TYPE,X                ; is the unit type zero?
            BEQ -                          ; yes, nothing to draw, iterate

            LDA VDC_MAP_SHOW_BOTS          ; do we show bots?
            BNE +                          ; yes, go ahead and show

            CPX #0                         ; is it the player?
            BEQ +                          ; yes, go ahead and show
            JMP -                          ; no, skip it

+           +PHX                           ; preserve unit index so we can get it back later

            LDY UNIT_LOC_Y,X               ; get offset to beginning of row (Y coordinate)
            +VDC_MAP_LOAD_TILE_ADDR_Y      ; use Y register to initialize for Y coord
            LDA UNIT_LOC_X,X               ; get offset from beginning of row (X coord)
            +VDC_MAP_ADD_TILE_ADDR_X $00   ; use A register to add X coord

            +LSRW VDC_MAP_TILE_ADDR        ; div by 2, carry set if odd pixel
            PHP                            ; preserve carry for a moment

            +TXY                           ; VDC will overwrite X, stash it in Y

            +ADDW VDC_MAP_TILE_ADDR, $2000 ; adjust to VDC attr memory
            +STWVDC $12, VDC_MAP_TILE_ADDR ; set address within attr memory
            +LDVDC $1F                     ; get VDC attribute

            PLP                            ; restore carry from earlier
            BCS +                          ; branch if odd

            ; X coordinate is even, handle that
            AND #%00001111                 ; preserve the odd pixel
            ORA VDC_MAP_UNIT_COLOR_EVEN,Y  ; set the unit color
            JMP ++

            ; X coordinate is odd, handle that
+           AND #%11110000                 ; preserve the even pixel
            ORA VDC_MAP_UNIT_COLOR_ODD,Y   ; set the unit color

++          STA VDC_MAP_ATTR_TEMP          ; save the attribute

            +STWVDC $12, VDC_MAP_TILE_ADDR ; set address within attr memory
            +STVDC $1F, VDC_MAP_ATTR_TEMP  ; write attribute to VDC

            +PLX                           ; restore the unit index

            JMP -                          ; iterate

VDC_MAP_REPAINT:

            LDX #0                         ; begin loop through points to erase

-           CPX VDC_MAP_ERASE_COUNT        ; have we reached the end of the list
            BNE +                          ; no, process it

            +STI VDC_MAP_ERASE_COUNT, 0    ; yes to end of list, clear out the count
            RTS                            ; and return

+           +PHX                           ; preserve count index

            LDY VDC_MAP_ERASE_LOC_Y,X      ; get offset of row (Y coordinate)

            +VDC_MAP_LOAD_TILE_ADDR_Y

            LDA VDC_MAP_ERASE_LOC_X,X      ; get offset from row (X coordinate)

            +VDC_MAP_ADD_TILE_ADDR_X $A0   ; add $A000+X to addr to adj to map mem

            JSR VDC_MAP_COMPUTE_PIXEL      ; get the pixels as defined by the map

            +SUBW VDC_MAP_TILE_ADDR, $A000 ; subtract $A000 from offset

            +LSRW VDC_MAP_TILE_ADDR        ; div by 2 as two pixels per attr byte
            +ADDW VDC_MAP_TILE_ADDR, $2000 ; add $2000 to adj to VDC attr mem

            +STWVDC $12, VDC_MAP_TILE_ADDR ; write attr to correct VDC mem loc
            +STVDC $1F, VDC_MAP_ATTR_TEMP

            +PLX                           ; restore count index

            INX                            ; next index
            JMP -                          ; and iterate

VDC_MAP_COMPUTE_PIXEL:

            LDA VDC_MAP_TILE_ADDR+0   ; save the current low byte of the address
            PHA

            AND #%11111110            ; always get pixel pair, mask off odd bit
            STA VDC_MAP_TILE_ADDR+0   ; update it

            LDY #$00                  ; get the even tile of the pair
            LDA (VDC_MAP_TILE_ADDR),Y
            TAY                       ; now convert the tile to an attribute
            LDA (VDC_MAP_ATTR_ADDR),Y
            ASL                       ; shift the attribute into the high nibble
            ASL
            ASL
            ASL
            STA VDC_MAP_ATTR_TEMP     ; store it

            LDY #$01                  ; get the odd tile of the pair
            LDA (VDC_MAP_TILE_ADDR),Y
            TAY                       ; now convert the tile to an attribute
            LDA (VDC_MAP_ATTR_ADDR),Y
            ORA VDC_MAP_ATTR_TEMP     ; merge the even attribute with the odd one
            STA VDC_MAP_ATTR_TEMP     ; store it

            PLA                       ; now restore the low byte
            STA VDC_MAP_TILE_ADDR+0

            RTS                       ; done for this pair

VDC_MAP_ANIMATE_PLAYER:
            LDA $A2                             ; get the low byte of the jiffy clock
            AND #$0F                            ; 60 jiffies/sec, so approx 1/4 sec
            BNE +                               ; if not even 16 jiffy count, skip anim
            LDX #0                              ; force redraw of player
            +VDC_MAP_CHANGED
            +MEORI VDC_MAP_UNIT_COLOR_EVEN, $F0 ; toggle between B&W
            +MEORI VDC_MAP_UNIT_COLOR_ODD,  $0F ; toggle between B&W
+           RTS                                 ; done

VDC_MAP_DRAW_COUNT !BYTE 0
VDC_MAP_DRAW_UNIT  !FILL 64, 0

VDC_MAP_ERASE_COUNT !BYTE 0
VDC_MAP_ERASE_LOC_X !FILL 64, 0
VDC_MAP_ERASE_LOC_Y !FILL 64, 0

VDC_MAP_USE_COLOR !BYTE 1
VDC_MAP_SHOW_BOTS !BYTE 0

MAP_VDC_COLOR
            !BYTE   0,  0, 15, 15, 15, 15, 15, 15 ;  0
            !BYTE  15,  2, 15, 15, 15, 15,  0, 15 ;  8
            !BYTE  15, 15, 15, 15, 15, 15, 15,  6 ; 16
            !BYTE   4, 15, 15, 15, 15,  3, 10, 10 ; 24
            !BYTE   3, 13, 10,  3,  3, 13,  2,  3 ; 32
            !BYTE   6, 10, 10,  6,  6, 10, 10,  6 ; 40
            !BYTE  15, 15, 15,  6, 15,  4,  4,  6 ; 48
            !BYTE  15,  4,  6,  6,  3,  3, 15,  3 ; 56
            !BYTE  15, 15,  3, 13, 14, 14, 14, 14 ; 64
            !BYTE  14, 14, 14, 14, 14, 14, 14, 14 ; 72
            !BYTE  14, 14, 14, 14, 14, 14, 14, 14 ; 80
            !BYTE  14, 14, 15, 14, 14, 14, 14, 14 ; 88
            !BYTE   6,  6,  0,  0,  0,  0,  0,  0 ; 96
            !BYTE  15, 15, 15, 13, 14, 14, 14,  0 ;104
            !BYTE  15, 15, 14, 14, 14,  2, 14, 15 ;112
            !BYTE  15,  6,  6,  6,  6,  6,  6,  6 ;120
            !BYTE  15, 15,  0, 13, 15, 15,  0,  4 ;128
            !BYTE  15, 15, 14,  2,  0,  0,  0, 14 ;136
            !BYTE  15, 15, 15, 15, 10, 14, 10, 10 ;144
            !BYTE  15, 15,  6,  6,  0,  0,  6,  2 ;152
            !BYTE   6,  6,  6,  2,  0,  0, 15, 14 ;160
            !BYTE  14,  6, 15, 14, 15, 15, 15,  0 ;168
            !BYTE  15, 15, 15,  0, 15, 15, 15,  6 ;176
            !BYTE   1,  1,  1, 15,  1,  6,  6, 15 ;184
            !BYTE   1,  6,  6, 15, 14, 14,  4,  4 ;192
            !BYTE  14, 14, 14, 14,  2, 10, 10,  8 ;200
            !BYTE   4,  4,  4,  5, 14, 14,  1,  5 ;208
            !BYTE  15, 15, 15,  5, 15, 15, 15,  5 ;216
            !BYTE  15, 15, 15, 13,  4,  4, 13, 13 ;224
            !BYTE   4,  4, 13, 13,  1,  1,  0,  0 ;232
            !BYTE   0,  0, 14,  0,  0,  0,  0,  0 ;240
            !BYTE   0,  0,  0,  0,  0,  0,  0,  0 ;248

MAP_VDC_MONO
            !BYTE   0,  0, 15, 15, 15, 15, 15, 15 ;  0
            !BYTE  15,  0, 15, 15, 15, 15,  0, 15 ;  8
            !BYTE  15, 15, 15, 15, 15, 15, 15, 14 ; 16
            !BYTE  14, 15, 15, 15, 15, 14,  0,  0 ; 24
            !BYTE  14, 14, 14, 14, 14, 14, 14, 14 ; 32
            !BYTE  14, 14, 14, 14, 14, 14, 14, 14 ; 40
            !BYTE  15, 15, 15, 14, 15, 14, 14, 14 ; 48
            !BYTE  15, 14, 14, 14, 14, 14, 14, 15 ; 56
            !BYTE   0,  0,  0, 15, 15,  0,  0, 15 ; 64
            !BYTE  14,  0,  0, 15, 15,  0,  0, 15 ; 72
            !BYTE  15, 14, 15, 14, 14, 14, 14, 14 ; 80
            !BYTE  14, 14, 15, 15, 15, 15, 15, 14 ; 88
            !BYTE  14, 14,  0,  0,  0,  0,  0,  0 ; 96
            !BYTE  15, 15, 15, 14, 14, 14, 14,  0 ;104
            !BYTE  15, 15, 15, 14,  0,  0, 15, 15 ;112
            !BYTE  15, 15,  0,  0,  0,  0,  0,  0 ;120
            !BYTE  15, 15, 14, 14, 14, 14, 14, 14 ;128
            !BYTE  14, 14, 14, 14, 14, 14, 14, 14 ;136
            !BYTE  15, 15, 14, 14, 14, 14, 14, 14 ;144
            !BYTE  14, 14, 14, 14, 14, 14, 14,  0 ;152
            !BYTE  14, 14, 14,  0, 14, 14, 15, 14 ;160
            !BYTE   0, 14, 15, 14, 14, 14, 15, 14 ;168
            !BYTE  15, 15, 15, 15, 15, 14, 14, 14 ;176
            !BYTE  15, 15, 15, 15, 15,  0, 15, 15 ;184
            !BYTE  15, 15, 15, 15, 14, 14, 14, 14 ;192
            !BYTE  14, 14, 14, 14, 14,  0, 14, 14 ;200
            !BYTE   0,  0,  0, 15, 15, 15, 14, 14 ;208
            !BYTE  15, 15, 15, 14, 15, 15, 15, 15 ;216
            !BYTE  15, 15, 15, 14,  0,  0, 14, 14 ;224
            !BYTE   0,  0, 14, 14, 14, 14,  0,  0 ;232
            !BYTE   0,  0, 15,  0,  0,  0,  0,  0 ;240
            !BYTE   0,  0,  0,  0,  0,  0,  0,  0 ;248

VDC_MAP_UNIT_COLOR_EVEN
  !FILL VDC_MAP_MAX_UNITS, $F0 ; unit 0 (player) will alternate between B&W

VDC_MAP_UNIT_COLOR_ODD
  !FILL VDC_MAP_MAX_UNITS, $0F ; unit 0 (player) will alternate between B&W

VDC_MAP_ROW_OFF_LO:
  !BYTE $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80
  !BYTE $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80
  !BYTE $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80
  !BYTE $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80

VDC_MAP_ROW_OFF_HI:
  !BYTE $00, $00, $01, $01, $02, $02, $03, $03, $04, $04, $05, $05, $06, $06, $07, $07
  !BYTE $08, $08, $09, $09, $0A, $0A, $0B, $0B, $0C, $0C, $0D, $0D, $0E, $0E, $0F, $0F
  !BYTE $10, $10, $11, $11, $12, $12, $13, $13, $14, $14, $15, $15, $16, $16, $17, $17
  !BYTE $18, $18, $19, $19, $1A, $1A, $1B, $1B, $1C, $1C, $1D, $1D, $1E, $1E, $1F, $1F

