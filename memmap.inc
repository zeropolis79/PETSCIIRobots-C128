;;;
;;; !set IS_FOUND = 0
;;; !ifdef IS_64GFX  !set IS_FOUND = IS_FOUND + 1
;;; !ifdef IS_128VIC !set IS_FOUND = IS_FOUND + 1
;;; !ifdef IS_128VDC !set IS_FOUND = IS_FOUND + 1
;;;
;;; !if IS_FOUND <> 1 {
;;;   !serious "TOO MANY IS_x DEFINES SPECIFIED"
;;; }
;;;
;;; !ifdef IS_64GFX {
;;;   !serious "IS_64GFX NOT YET SUPPORTED"
;;; }
;;;
;;; !ifdef IS_128VIC {
;;; }
;;;
;;; !ifdef IS_128VDC {
;;;   !serious "IS_128VDC NOT YET SUPPORTED"
;;; }
;;;
;;; !source "MMRAM0.SYM"
;;; !source "MMRAM1.SYM"
;;;
;;; R6510   =   $01
;;; CINV    = $0314
;;;
;;; SP0X    = $D000
;;; SP0Y    = $D001
;;; SP1X    = $D002
;;; SP1Y    = $D003
;;; SP2X    = $D004
;;; SP2Y    = $D005
;;; SP3X    = $D006
;;; SP3Y    = $D007
;;; SP4X    = $D008
;;; SP4Y    = $D009
;;; SP5X    = $D00A
;;; SP5Y    = $D00B
;;; SP6X    = $D00C
;;; SP6Y    = $D00D
;;; SP7X    = $D00E
;;; SP7Y    = $D00F
;;; MSIGX   = $D010
;;; SPENA   = $D015
;;; SCROLX  = $D016
;;; YXPAND  = $D017
;;; VMCSB   = $D018
;;; SPMC    = $D01C
;;; EXTCOL  = $D020
;;; BGCOL0  = $D021
;;; SPMC0   = $D025
;;; SPMC1   = $D026
;;; SP0COL  = $D027
;;; SP1COL  = $D028
;;; SP2COL  = $D029
;;; SP3COL  = $D02A
;;; SP4COL  = $D02B
;;; SP5COL  = $D02C
;;; SP6COL  = $D02D
;;; SP7COL  = $D02E
;;;
;;; SIGVOL  = $D418
;;; CI2PRA  = $DD00
;;; CI2PRB  = $DD01
;;; C2DDRB  = $DD03
;;; IRQ     = $FA65
;;; JSETBNK = $FF68
;;; SETLFS  = $FFBA
;;; SETNAM  = $FFBD
;;; CLOSE   = $FFC3
;;; CHROUT  = $FFD2
;;; LOAD    = $FFD5
;;; GETIN   = $FFE4
;;;
;;; !ifdef IS_64GFX {
;;;   NO_KEY_PRESSED     =    64
;;;
;;;   LSTX               =   $C5
;;;   NDX                =   $C6
;;;   XMAX               = $0289
;;;   RPTFLG             = $028A
;;;   DELAY              = $028C
;;;   MODE               = $0291
;;;   BASIC_PROGRAM_TEXT = $0801
;;;   GET_KEY            = $F142
;;; }
;;;
;;; !ifndef IS_64GFX {
;;;   NO_KEY_PRESSED     =    88
;;;
;;;   NDX                =   $D0
;;;   LSTX               =   $D5
;;;   GRAPHM             =   $D8
;;;   MODE               =   $F7
;;;   KEYCHK             = $033C
;;;   INIT_STATUS        = $0A04
;;;   XMAX               = $0A20
;;;   RPTFLG             = $0A22
;;;   DELAY              = $0A24
;;;   IRQ_WRAP_FLAG      = $12FD
;;;   BASIC_PROGRAM_TEXT = $1C01
;;;   MMURCR             = $D506
;;;   GET_KEY            = $EEEF
;;;   MMU                = $FF00
;;; }
;;;
;;;

