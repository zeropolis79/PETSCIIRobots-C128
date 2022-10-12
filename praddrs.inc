;;;
;;; !source "memmap.inc"
;;;
;;; !address {
;;;
;;; DESTRUCT_PATH     = RAM1_DESTRUCTPATH    ;Destruct path array (256 bytes)
;;; TILE_ATTRIB       = RAM1_TILEATTR        ;Tile attrib array (256 bytes)
;;; TILE_DATA_TL      = RAM1_TILECHAR +$0000 ;Tile character top-left (256 bytes)
;;; TILE_DATA_TM      = RAM1_TILECHAR +$0100 ;Tile character top-middle (256 bytes)
;;; TILE_DATA_TR      = RAM1_TILECHAR +$0200 ;Tile character top-right (256 bytes)
;;; TILE_DATA_ML      = RAM1_TILECHAR +$0300 ;Tile character middle-left (256 bytes)
;;; TILE_DATA_MM      = RAM1_TILECHAR +$0400 ;Tile character middle-middle (256 bytes)
;;; TILE_DATA_MR      = RAM1_TILECHAR +$0500 ;Tile character middle-right (256 bytes)
;;; TILE_DATA_BL      = RAM1_TILECHAR +$0600 ;Tile character bottom-left (256 bytes)
;;; TILE_DATA_BM      = RAM1_TILECHAR +$0700 ;Tile character bottom-middle (256 bytes)
;;; TILE_DATA_BR      = RAM1_TILECHAR +$0800 ;Tile character bottom-right (256 bytes)
;;; TILE_COLOR_TL     = RAM1_TILECOLOR+$0000 ;Tile character top-left (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_TM     = RAM1_TILECOLOR+$0100 ;Tile character top-middle (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_TR     = RAM1_TILECOLOR+$0200 ;Tile character top-right (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_ML     = RAM1_TILECOLOR+$0300 ;Tile character middle-left (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_MM     = RAM1_TILECOLOR+$0400 ;Tile character middle-middle (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_MR     = RAM1_TILECOLOR+$0500 ;Tile character middle-right (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_BL     = RAM1_TILECOLOR+$0600 ;Tile character bottom-left (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_BM     = RAM1_TILECOLOR+$0700 ;Tile character bottom-middle (256 bytes) (C64/VIC/TED VERSION ONLY)
;;; TILE_COLOR_BR     = RAM1_TILECOLOR+$0800 ;Tile character bottom-right (256 bytes) (C64/VIC/TED VERSION ONLY)
;;;
;;; ;***These arrays can go anywhere in RAM***
;;; UNIT_TIMER_A      = RAM1_MISCVARS+$0000  ;Primary timer for units (64 bytes)
;;; UNIT_TIMER_B      = RAM1_MISCVARS+$0040  ;Secondary timer for units (64 bytes)
;;; UNIT_TILE         = RAM1_MISCVARS+$0080  ;Current tile assigned to unit (32 bytes)
;;; ;UNIT_ALT_MOVE    = RAM1_MISCVARS+$00A0  ;For moving around objects (32 bytes)
;;; ;UNIT_DEST_X      = RAM1_MISCVARS+$00C0  ;Destination X coordinate (32 bytes)
;;; ;UNIT_DEST_Y      = RAM1_MISCVARS+$00E0  ;Destination X coordinate (32 bytes)
;;; EXP_BUFFER        = RAM1_MISCVARS+$0100  ;Explosion Buffer (16 bytes)
;;; MAP_PRECALC       = RAM1_MISCVARS+$0110  ;Stores pre-calculated objects for map window (77 bytes)
;;;
;;; ;The following addresses are used to store the current
;;; ;state of the SNES buttons.
;;; SNES_B            = RAM1_MISCVARS+$015D
;;; SNES_Y            = RAM1_MISCVARS+$015E
;;; SNES_SELECT       = RAM1_MISCVARS+$015F
;;; SNES_START        = RAM1_MISCVARS+$0160
;;; SNES_UP           = RAM1_MISCVARS+$0161
;;; SNES_DOWN         = RAM1_MISCVARS+$0162
;;; SNES_LEFT         = RAM1_MISCVARS+$0163
;;; SNES_RIGHT        = RAM1_MISCVARS+$0164
;;; SNES_A            = RAM1_MISCVARS+$0165
;;; SNES_X            = RAM1_MISCVARS+$0166
;;; SNES_BACK_L       = RAM1_MISCVARS+$0167
;;; SNES_BACK_R       = RAM1_MISCVARS+$0168
;;; ;The following addresses are used to store the last
;;; ;state of the SNES buttons so that we can determine
;;; ;if a button was released.
;;; LAST_B            = RAM1_MISCVARS+$0169
;;; LAST_Y            = RAM1_MISCVARS+$016A
;;; LAST_SELECT       = RAM1_MISCVARS+$016B
;;; LAST_START        = RAM1_MISCVARS+$016C
;;; LAST_UP           = RAM1_MISCVARS+$016D
;;; LAST_DOWN         = RAM1_MISCVARS+$016E
;;; LAST_LEFT         = RAM1_MISCVARS+$016F
;;; LAST_RIGHT        = RAM1_MISCVARS+$0170
;;; LAST_A            = RAM1_MISCVARS+$0171
;;; LAST_X            = RAM1_MISCVARS+$0172
;;; LAST_BACK_L       = RAM1_MISCVARS+$0173
;;; LAST_BACK_R       = RAM1_MISCVARS+$0174
;;;
;;; ;The following addresses are used to store new
;;; ;presses of the SNES buttons.  Once they are set
;;; ;as a 1, it requires the game to reset them to
;;; ;0 when it is ready to be read again.
;;; NEW_B             = RAM1_MISCVARS+$0175
;;; NEW_Y             = RAM1_MISCVARS+$0176
;;; NEW_SELECT        = RAM1_MISCVARS+$0177
;;; NEW_START         = RAM1_MISCVARS+$0178
;;; NEW_UP            = RAM1_MISCVARS+$0179
;;; NEW_DOWN          = RAM1_MISCVARS+$017A
;;; NEW_LEFT          = RAM1_MISCVARS+$017B
;;; NEW_RIGHT         = RAM1_MISCVARS+$017C
;;; NEW_A             = RAM1_MISCVARS+$017D
;;; NEW_X             = RAM1_MISCVARS+$017E
;;; NEW_BACK_L        = RAM1_MISCVARS+$017F
;;; NEW_BACK_R        = RAM1_MISCVARS+$0180
;;;
;;; ;The following are the locations where the current
;;; ;key controls are stored.  These must be set before
;;; ;the game can start.
;;; KEY_MOVE_UP       = RAM1_MISCVARS+$0181
;;; KEY_MOVE_DOWN     = RAM1_MISCVARS+$0182
;;; KEY_MOVE_LEFT     = RAM1_MISCVARS+$0183
;;; KEY_MOVE_RIGHT    = RAM1_MISCVARS+$0184
;;; KEY_FIRE_UP       = RAM1_MISCVARS+$0185
;;; KEY_FIRE_DOWN     = RAM1_MISCVARS+$0186
;;; KEY_FIRE_LEFT     = RAM1_MISCVARS+$0187
;;; KEY_FIRE_RIGHT    = RAM1_MISCVARS+$0188
;;; KEY_CYCLE_WEAPONS = RAM1_MISCVARS+$0189
;;; KEY_CYCLE_ITEMS   = RAM1_MISCVARS+$018A
;;; KEY_USE           = RAM1_MISCVARS+$018B
;;; KEY_SEARCH        = RAM1_MISCVARS+$018C
;;; KEY_MOVE          = RAM1_MISCVARS+$018D
;;;
;;; PLAYER_DIRECTION  = RAM1_MISCVARS+$018E  ;0=up 6=down 12=left 18=right
;;; MUSIC_STATE       = RAM1_MISCVARS+$018F  ;0=music off.
;;;
;;; ;***MAP FILES CONSIST OF EVERYTHING FROM THIS POINT ON***
;;; UNIT_TYPE         = RAM1_MAPVARS+$0000  ;Unit type 0=none (64 bytes)
;;; UNIT_LOC_X        = RAM1_MAPVARS+$0040  ;Unit X location (64 bytes)
;;; UNIT_LOC_Y        = RAM1_MAPVARS+$0080  ;Unit X location (64 bytes)
;;; UNIT_A            = RAM1_MAPVARS+$00C0
;;; UNIT_B            = RAM1_MAPVARS+$0100
;;; UNIT_C            = RAM1_MAPVARS+$0140
;;; UNIT_D            = RAM1_MAPVARS+$0180
;;; UNIT_HEALTH       = RAM1_MAPVARS+$01C0  ;Unit health (0 to 11) (64 bytes)
;;; MAP               = RAM1_MAPDATA        ;Location of MAP (8K)
;;; ;***END OF MAP FILE***
;;;
;;; ;*** Zero Page locations used ***
;;; TILE              = $23    ;The tile number to be plotted
;;; TEMP_X            = $24    ;Temporarily used for loops
;;; TEMP_Y            = $25    ;Temporarily used for loops
;;; MAP_X             = $26    ;Current X location on map
;;; MAP_Y             = $27    ;Current Y location on map
;;; MAP_WINDOW_X      = $28    ;Top left location of what is displayed in map window
;;; MAP_WINDOW_Y      = $29    ;Top left location of what is displayed in map window
;;; DECNUM            = $2A    ;a decimal number to be displayed onscreen as 3 digits.
;;; ATTRIB            = $2B    ;Tile attribute value
;;; UNIT              = $2C    ;Current unit being processed
;;; TEMP_A            = $2D    ;used within some routines
;;; TEMP_B            = $2E    ;used within some routines
;;; TEMP_C            = $2F    ;used within some routines
;;; TEMP_D            = $30    ;used within some routines
;;; CURSOR_X          = $31    ;For on-screen cursor
;;; CURSOR_Y          = $32    ;For on-screen cursor
;;; CURSOR_ON         = $33    ;Is cursor active or not? 1=yes 0=no
;;; REDRAW_WINDOW     = $34    ;1=yes 0=no
;;; MOVE_RESULT       = $35    ;1=Move request success, 0=fail.
;;; UNIT_FIND         = $36    ;255=no unit present.
;;; MOVE_TYPE         = $37    ;%00000001=WALK %00000010=HOVER
;;; SCREEN_SHAKE      = $38    ;0=NO 1=YES
;;; PRECALC_COUNT     = $39    ;part of screen draw routine
;;; GOAT_ZERO1        = $3E    ;used by goat-tracker
;;; GOAT_ZERO2        = $3F    ;used by goat-tracker
;;;
;;; C_MUSIC_START  = $0B00
;;; C_MUSIC_PLAY   = $0B03
;;; C_PLAY_SOUND   = $0B06
;;; C_PREINIT      = $0B09
;;; C_START_GAME   = $0B0C
;;; C_RUNIRQ       = $0B0F
;;;
;;; REFINED_MEMORY   = $1000 ; refined is the opposite of common ... haha
;;;
;;; GAME0_MEMORY     = RAM0_FREE1
;;; MUSIC_MEMORY     = RAM0_MUSIC
;;; LOADER_MEMORY    = MUSIC_MEMORY - $0300
;;;
;;; GAME1_MEMORY     = RAM1_MAIN
;;; TILE_MEMORY      = RAM1_DESTRUCTPATH
;;; CHARSET_MEMORY   = RAM1_VICBANK + $0000
;;; COLOR_MEMORY     = $D800 ; always in IO space
;;; SCREEN_MEMORY    = RAM1_VICBANK + $2000
;;; SPRITE_POINTER_0 = SCREEN_MEMORY+$03F8
;;; SPRITE_POINTER_1 = SCREEN_MEMORY+$03F9
;;; SPRITE_POINTER_2 = SCREEN_MEMORY+$03FA
;;; SPRITE_POINTER_3 = SCREEN_MEMORY+$03FB
;;; SPRITE_POINTER_4 = SCREEN_MEMORY+$03FC
;;; SPRITE_POINTER_5 = SCREEN_MEMORY+$03FD
;;; SPRITE_POINTER_6 = SCREEN_MEMORY+$03FE
;;; SPRITE_POINTER_7 = SCREEN_MEMORY+$03FF
;;; SPRITE_MEMORY    = RAM1_VICBANK+$2400
;;;
;;; }
;;;
;;; !macro LOADPTR .ptr, .val {
;;;   LDA #<.val ; set low byte
;;;   STA .ptr+0
;;;   LDA #>.val ; set high byte
;;;   STA .ptr+1
;;; }
;;;
;;;

