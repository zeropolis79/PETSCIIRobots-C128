!TO         "bootsect.bin", PLAIN
!SYMBOLLIST "bootsect.sym"

!SOURCE     "const.inc"

            * = ADDR_BOOTSECT

            ; signature that identifies this as a boot sector
            !PET "cbm"

            ; load address for extra sectors (not used)
            !WORD 0

            ; ram block for extra sectors (not used)
            !BYTE 0

            ; number of extra sectors to load (none)
            !BYTE 0

            ; message to display after BOOT text
            !PET "128-robots", 0

            ; file to load (not used)
            !PET 0

            ; boot routine
            LDA $BA
            AND #3
            TAY

            LDA .CMD_LO,Y
            TAX
            LDA .CMD_HI,Y
            TAY

            JMP J_EXECUTE_A_LINE

            ; BASIC commands to execute
.CMD_8      !PET "run", $22, "boot-128", $22, ",u8", $00
.CMD_9      !PET "run", $22, "boot-128", $22, ",u9", $00
.CMD_10     !PET "run", $22, "boot-128", $22, ",u10", $00
.CMD_11     !PET "run", $22, "boot-128", $22, ",u11", $00

.CMD_LO     !BYTE <(.CMD_8-1),<(.CMD_9-1),<(.CMD_10-1),<(.CMD_11-1)
.CMD_HI     !BYTE >(.CMD_8-1),>(.CMD_9-1),>(.CMD_10-1),>(.CMD_11-1)

            ; pad the remaining bytes in the sector with nul
            !FILL (SIZE_BOOTSECT-(*-ADDR_BOOTSECT)), 0

