!IF VIC_CHARMAP {

!MACRO PLOT_CHAR .o {
  STA SCREEN_MEMORY+.o
}

!MACRO PLOT_CHAR_X .o {
  STA SCREEN_MEMORY+.o,X
}

!MACRO PLOT_CHAR_Y .o {
  STA SCREEN_MEMORY+$0190,Y
}

!MACRO COPY_CHAR .d, .s {
  LDA SCREEN_MEMORY+.s
  STA SCREEN_MEMORY+.d
}

!MACRO COPY_CHAR_X .d, .s {
  LDA SCREEN_MEMORY+.s,X
  STA SCREEN_MEMORY+.d,X
}

!MACRO COPY_CHAR_Y .d, .s {
  LDA SCREEN_MEMORY+.s,Y
  STA SCREEN_MEMORY+.d,Y
}

}

!IF VIC_BITMAP {

mini_char_set_undefined:
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........

;;; mini_char_set_AT:
;;;   !BYTE %..##.... ; 00 @
;;;   !BYTE %##..##..
;;;   !BYTE %######..
;;;   !BYTE %######..
;;;   !BYTE %##......
;;;   !BYTE %##..##..
;;;   !BYTE %..##....
;;;   !BYTE %........

mini_char_set_A:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %######..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_B:
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %####....
  !BYTE %........

mini_char_set_C:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##......
  !BYTE %##......
  !BYTE %##......
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_D:
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %####....
  !BYTE %........

mini_char_set_E:
  !BYTE %######..
  !BYTE %##......
  !BYTE %##......
  !BYTE %####....
  !BYTE %##......
  !BYTE %##......
  !BYTE %######..
  !BYTE %........

mini_char_set_F:
  !BYTE %######..
  !BYTE %##......
  !BYTE %##......
  !BYTE %####....
  !BYTE %##......
  !BYTE %##......
  !BYTE %##......
  !BYTE %........

mini_char_set_G:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##......
  !BYTE %######..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_H:
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %######..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_I:
  !BYTE %######..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %######..
  !BYTE %........

mini_char_set_J:
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_K:
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %####....
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_L:
  !BYTE %##......
  !BYTE %##......
  !BYTE %##......
  !BYTE %##......
  !BYTE %##......
  !BYTE %##......
  !BYTE %######..
  !BYTE %........

mini_char_set_M:
  !BYTE %##..##..
  !BYTE %######..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_N:
  !BYTE %##......
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_O:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_P:
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %####....
  !BYTE %##......
  !BYTE %##......
  !BYTE %##......
  !BYTE %........

mini_char_set_Q:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..####..
  !BYTE %........

mini_char_set_R:
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_S:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##......
  !BYTE %..##....
  !BYTE %....##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_T:
  !BYTE %######..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........

mini_char_set_U:
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_V:
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........

mini_char_set_W:
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %######..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_X:
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %........

mini_char_set_Y:
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........

mini_char_set_Z:
  !BYTE %######..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %..##....
  !BYTE %##......
  !BYTE %##......
  !BYTE %######..
  !BYTE %........

mini_char_set_LEFT_SQUARE_BRACKET:
  !BYTE %..####..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..####..
  !BYTE %........

;;; british pound

mini_char_set_RIGHT_SQUARE_BRACKET:
  !BYTE %..####..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %..####..
  !BYTE %........

;;; up arrow
;;; left arrow

mini_char_set_SPACE:
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........

mini_char_set_EXCLAMATION_MARK:
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........
  !BYTE %..##....
  !BYTE %........

;;; mini_char_set_22:
;;;   !BYTE %##..##.. ; 22 "
;;;   !BYTE %##..##..
;;;   !BYTE %##..##..
;;;   !BYTE %........
;;;   !BYTE %........
;;;   !BYTE %........
;;;   !BYTE %........
;;;   !BYTE %........
;;;
;;; mini_char_set_23:
;;;   !BYTE %...##.## ; 23 #
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;
;;; mini_char_set_24:
;;;   !BYTE %..##.... ; 24 $
;;;   !BYTE %######..
;;;   !BYTE %####....
;;;   !BYTE %..##....
;;;   !BYTE %..####..
;;;   !BYTE %######..
;;;   !BYTE %..##....
;;;   !BYTE %........
;;;
;;; mini_char_set_25:
;;;   !BYTE %...##.## ; 25 %
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;
;;; mini_char_set_26:
;;;   !BYTE %...##.## ; 26 &
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##
;;;   !BYTE %...##.##

mini_char_set_APOSTROPHE:
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........

mini_char_set_LEFT_PARENTHESIS:
  !BYTE %....##..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %....##..
  !BYTE %........

mini_char_set_RIGHT_PARENTHESIS:
  !BYTE %..##....
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %..##....
  !BYTE %........

;;; mini_char_set_2A:
;;;   !BYTE %..##.... ; 2A *
;;;   !BYTE %######..
;;;   !BYTE %..##....
;;;   !BYTE %..##....
;;;   !BYTE %..##....
;;;   !BYTE %######..
;;;   !BYTE %..##....
;;;   !BYTE %........
;;;
;;; mini_char_set_2B:
;;;   !BYTE %..##.... ; 2B +
;;;   !BYTE %..##....
;;;   !BYTE %..##....
;;;   !BYTE %######..
;;;   !BYTE %..##....
;;;   !BYTE %..##....
;;;   !BYTE %..##....
;;;   !BYTE %........

mini_char_set_COMMA:
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %##......

mini_char_set_HYPHEN_MINUS:
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %######..
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........

mini_char_set_FULL_STOP:
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........

mini_char_set_SLASH:
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %##......
  !BYTE %##......
  !BYTE %........

mini_char_set_0:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_1:
  !BYTE %..##....
  !BYTE %####....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %######..
  !BYTE %........

mini_char_set_2:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %....##..
  !BYTE %..##....
  !BYTE %##......
  !BYTE %##......
  !BYTE %######..
  !BYTE %........

mini_char_set_3:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %....##..
  !BYTE %..##....
  !BYTE %....##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_4:
  !BYTE %....##..
  !BYTE %..####..
  !BYTE %##..##..
  !BYTE %######..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %........

mini_char_set_5:
  !BYTE %######..
  !BYTE %##......
  !BYTE %##......
  !BYTE %..##....
  !BYTE %....##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_6:
  !BYTE %..####..
  !BYTE %##......
  !BYTE %##......
  !BYTE %####....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_7:
  !BYTE %######..
  !BYTE %....##..
  !BYTE %....##..
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %##......
  !BYTE %##......
  !BYTE %........

mini_char_set_8:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_9:
  !BYTE %..##....
  !BYTE %##..##..
  !BYTE %##..##..
  !BYTE %..####..
  !BYTE %....##..
  !BYTE %##..##..
  !BYTE %..##....
  !BYTE %........

mini_char_set_COLON:
  !BYTE %........
  !BYTE %........
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........

mini_char_set_SEMICOLON:
  !BYTE %........
  !BYTE %........
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %........
  !BYTE %..##....
  !BYTE %..##....
  !BYTE %##......

;;; mini_char_set_3C:
;;;   !BYTE %........ ; 3C <
;;;   !BYTE %....##..
;;;   !BYTE %..##....
;;;   !BYTE %##......
;;;   !BYTE %##......
;;;   !BYTE %..##....
;;;   !BYTE %....##..
;;;   !BYTE %........
;;;
;;; mini_char_set_3D:
;;;   !BYTE %........ ; 3D =
;;;   !BYTE %........
;;;   !BYTE %######..
;;;   !BYTE %........
;;;   !BYTE %######..
;;;   !BYTE %........
;;;   !BYTE %........
;;;   !BYTE %........
;;;
;;; mini_char_set_3E:
;;;   !BYTE %........ ; 3E >
;;;   !BYTE %##......
;;;   !BYTE %..##....
;;;   !BYTE %....##..
;;;   !BYTE %....##..
;;;   !BYTE %..##....
;;;   !BYTE %##......
;;;   !BYTE %........
;;;
;;; mini_char_set_3F:
;;;   !BYTE %..##.... ; 3F ?
;;;   !BYTE %##..##..
;;;   !BYTE %....##..
;;;   !BYTE %..##....
;;;   !BYTE %..##....
;;;   !BYTE %........
;;;   !BYTE %..##....
;;;   !BYTE %........

mini_char_set_HORIZONTAL_LINE:
  !BYTE %........
  !BYTE %........
  !BYTE %########
  !BYTE %########
  !BYTE %########
  !BYTE %########
  !BYTE %........
  !BYTE %........

mini_char_set_UPPER_RIGHT_CURVE:
  !BYTE %........
  !BYTE %........
  !BYTE %##......
  !BYTE %####....
  !BYTE %######..
  !BYTE %######..
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_LOWER_LEFT_CURVE:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..######
  !BYTE %..######
  !BYTE %....####
  !BYTE %......##
  !BYTE %........
  !BYTE %........

mini_char_set_LOWER_RIGHT_CURVE:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %######..
  !BYTE %######..
  !BYTE %####....
  !BYTE %##......
  !BYTE %........
  !BYTE %........

mini_char_set_UPPER_LEFT_CURVE:
  !BYTE %........
  !BYTE %........
  !BYTE %......##
  !BYTE %....####
  !BYTE %..######
  !BYTE %..######
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_HORIZONTAL_VERTICAL_CROSS:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %########
  !BYTE %########
  !BYTE %########
  !BYTE %########
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_VERTICAL_LINE:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_VERTICAL_LINE_T_RIGHT:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..######
  !BYTE %..######
  !BYTE %..######
  !BYTE %..######
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_LOWER_LEFT_CORNER:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %..######
  !BYTE %..######
  !BYTE %..######
  !BYTE %..######
  !BYTE %........
  !BYTE %........

mini_char_set_UPPER_RIGHT_CORNER:
  !BYTE %........
  !BYTE %........
  !BYTE %######..
  !BYTE %######..
  !BYTE %######..
  !BYTE %######..
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_UPPER_LEFT_CORNER:
  !BYTE %........
  !BYTE %........
  !BYTE %..######
  !BYTE %..######
  !BYTE %..######
  !BYTE %..######
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_HORIZONTAL_LINE_T_UP:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %########
  !BYTE %########
  !BYTE %########
  !BYTE %########
  !BYTE %........
  !BYTE %........

mini_char_set_VERTICAL_LINE_T_LEFT:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %######..
  !BYTE %######..
  !BYTE %######..
  !BYTE %######..
  !BYTE %..####..
  !BYTE %..####..

mini_char_set_LOWER_RIGHT_CORNER:
  !BYTE %..####..
  !BYTE %..####..
  !BYTE %######..
  !BYTE %######..
  !BYTE %######..
  !BYTE %######..
  !BYTE %........
  !BYTE %........

mini_char_set_key_x_1:
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %...#.#.#
  !BYTE %..#.#.#.

mini_char_set_key_x_2:
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %........
  !BYTE %.#......
  !BYTE %#.......

mini_char_set_key_1_3:
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#...
  !BYTE %..#.#...

mini_char_set_key_1_4:
  !BYTE %#..#....
  !BYTE %#.#.....
  !BYTE %#.#..#..
  !BYTE %#.#.#...
  !BYTE %#.#.#..#
  !BYTE %..#.#..#
  !BYTE %....#..#
  !BYTE %....#..#

mini_char_set_key_1_5:
  !BYTE %..#.....
  !BYTE %..#.....
  !BYTE %..#.....
  !BYTE %..#.#.#.
  !BYTE %..#.....
  !BYTE %..#.#.#.
  !BYTE %........
  !BYTE %........

mini_char_set_key_1_6:
  !BYTE %.......#
  !BYTE %.......#
  !BYTE %.......#
  !BYTE %..#.#..#
  !BYTE %.......#
  !BYTE %#.#.#..#
  !BYTE %........
  !BYTE %........

mini_char_set_key_2_3:
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#...
  !BYTE %..#.....
  !BYTE %..#.....

mini_char_set_key_2_4:
  !BYTE %#..#....
  !BYTE %#.#.....
  !BYTE %#.#..#..
  !BYTE %#.#.#...
  !BYTE %#.#.#..#
  !BYTE %#...#..#
  !BYTE %.......#
  !BYTE %.......#

mini_char_set_key_2_5:
  !BYTE %..#.....
  !BYTE %..#.#...
  !BYTE %..#.#...
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %........
  !BYTE %........

mini_char_set_key_2_6:
  !BYTE %.......#
  !BYTE %....#..#
  !BYTE %....#..#
  !BYTE %..#.#..#
  !BYTE %..#.#..#
  !BYTE %#.#.#..#
  !BYTE %........
  !BYTE %........

mini_char_set_key_3_3:
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#.#.#.
  !BYTE %..#...#.
  !BYTE %..#...#.
  !BYTE %..#.#...
  !BYTE %..#.#.#.

mini_char_set_key_3_4:
  !BYTE %#..#....
  !BYTE %#.#.....
  !BYTE %#.#..#..
  !BYTE %#.#.#...
  !BYTE %#.#....#
  !BYTE %#.#....#
  !BYTE %#...#..#
  !BYTE %..#.#..#

mini_char_set_key_3_5:
  !BYTE %..#.....
  !BYTE %..#.#.#.
  !BYTE %..#.#...
  !BYTE %..#...#.
  !BYTE %..#...#.
  !BYTE %..#.#.#.
  !BYTE %........
  !BYTE %........

mini_char_set_key_3_6:
  !BYTE %.......#
  !BYTE %..#.#..#
  !BYTE %#...#..#
  !BYTE %#.#....#
  !BYTE %#.#....#
  !BYTE %#.#.#..#
  !BYTE %........
  !BYTE %........

mini_char_set_health_top_50:
  !BYTE %.##.....
  !BYTE %.##.....
  !BYTE %.##.....
  !BYTE %.##.....
  !BYTE %.##.....
  !BYTE %.##.....
  !BYTE %.##.....
  !BYTE %.##.....

mini_char_set_health_top_100:
  !BYTE %.##..##.
  !BYTE %.##..##.
  !BYTE %.##..##.
  !BYTE %.##..##.
  !BYTE %.##..##.
  !BYTE %.##..##.
  !BYTE %.##..##.
  !BYTE %.##..##.

mini_char_set_health_bot:
  !BYTE %..##..##
  !BYTE %..##..##
  !BYTE %..##..##
  !BYTE %########
  !BYTE %########
  !BYTE %........
  !BYTE %........
  !BYTE %........

mini_char_set_lo:
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_A
  !BYTE <mini_char_set_B
  !BYTE <mini_char_set_C
  !BYTE <mini_char_set_D
  !BYTE <mini_char_set_E
  !BYTE <mini_char_set_F
  !BYTE <mini_char_set_G
  !BYTE <mini_char_set_H
  !BYTE <mini_char_set_I
  !BYTE <mini_char_set_J
  !BYTE <mini_char_set_K
  !BYTE <mini_char_set_L
  !BYTE <mini_char_set_M
  !BYTE <mini_char_set_N
  !BYTE <mini_char_set_O
  !BYTE <mini_char_set_P
  !BYTE <mini_char_set_Q
  !BYTE <mini_char_set_R
  !BYTE <mini_char_set_S
  !BYTE <mini_char_set_T
  !BYTE <mini_char_set_U
  !BYTE <mini_char_set_V
  !BYTE <mini_char_set_W
  !BYTE <mini_char_set_X
  !BYTE <mini_char_set_Y
  !BYTE <mini_char_set_Z
  !BYTE <mini_char_set_LEFT_SQUARE_BRACKET
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_RIGHT_SQUARE_BRACKET
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_SPACE
  !BYTE <mini_char_set_EXCLAMATION_MARK
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_APOSTROPHE
  !BYTE <mini_char_set_LEFT_PARENTHESIS
  !BYTE <mini_char_set_RIGHT_PARENTHESIS
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_COMMA
  !BYTE <mini_char_set_HYPHEN_MINUS
  !BYTE <mini_char_set_FULL_STOP
  !BYTE <mini_char_set_SLASH
  !BYTE <mini_char_set_0
  !BYTE <mini_char_set_1
  !BYTE <mini_char_set_2
  !BYTE <mini_char_set_3
  !BYTE <mini_char_set_4
  !BYTE <mini_char_set_5
  !BYTE <mini_char_set_6
  !BYTE <mini_char_set_7
  !BYTE <mini_char_set_8
  !BYTE <mini_char_set_9
  !BYTE <mini_char_set_COLON
  !BYTE <mini_char_set_SEMICOLON
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_HORIZONTAL_LINE
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_UPPER_RIGHT_CURVE
  !BYTE <mini_char_set_LOWER_LEFT_CURVE
  !BYTE <mini_char_set_LOWER_RIGHT_CURVE
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_UPPER_LEFT_CURVE
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_HORIZONTAL_VERTICAL_CROSS
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_VERTICAL_LINE
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_VERTICAL_LINE_T_RIGHT
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_LOWER_LEFT_CORNER
  !BYTE <mini_char_set_UPPER_RIGHT_CORNER
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_UPPER_LEFT_CORNER
  !BYTE <mini_char_set_HORIZONTAL_LINE_T_UP
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_VERTICAL_LINE_T_LEFT
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_LOWER_RIGHT_CORNER
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_undefined
  !BYTE <mini_char_set_key_x_1
  !BYTE <mini_char_set_key_x_2
  !BYTE <mini_char_set_key_1_3
  !BYTE <mini_char_set_key_1_4
  !BYTE <mini_char_set_key_1_5
  !BYTE <mini_char_set_key_1_6
  !BYTE <mini_char_set_key_x_1
  !BYTE <mini_char_set_key_x_2
  !BYTE <mini_char_set_key_2_3
  !BYTE <mini_char_set_key_2_4
  !BYTE <mini_char_set_key_2_5
  !BYTE <mini_char_set_key_2_6
  !BYTE <mini_char_set_key_x_1
  !BYTE <mini_char_set_key_x_2
  !BYTE <mini_char_set_key_3_3
  !BYTE <mini_char_set_key_3_4
  !BYTE <mini_char_set_key_3_5
  !BYTE <mini_char_set_key_3_6
  !BYTE <mini_char_set_health_top_50
  !BYTE <mini_char_set_health_top_100
  !BYTE <mini_char_set_health_bot

mini_char_set_hi:
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_A
  !BYTE >mini_char_set_B
  !BYTE >mini_char_set_C
  !BYTE >mini_char_set_D
  !BYTE >mini_char_set_E
  !BYTE >mini_char_set_F
  !BYTE >mini_char_set_G
  !BYTE >mini_char_set_H
  !BYTE >mini_char_set_I
  !BYTE >mini_char_set_J
  !BYTE >mini_char_set_K
  !BYTE >mini_char_set_L
  !BYTE >mini_char_set_M
  !BYTE >mini_char_set_N
  !BYTE >mini_char_set_O
  !BYTE >mini_char_set_P
  !BYTE >mini_char_set_Q
  !BYTE >mini_char_set_R
  !BYTE >mini_char_set_S
  !BYTE >mini_char_set_T
  !BYTE >mini_char_set_U
  !BYTE >mini_char_set_V
  !BYTE >mini_char_set_W
  !BYTE >mini_char_set_X
  !BYTE >mini_char_set_Y
  !BYTE >mini_char_set_Z
  !BYTE >mini_char_set_LEFT_SQUARE_BRACKET
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_RIGHT_SQUARE_BRACKET
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_SPACE
  !BYTE >mini_char_set_EXCLAMATION_MARK
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_APOSTROPHE
  !BYTE >mini_char_set_LEFT_PARENTHESIS
  !BYTE >mini_char_set_RIGHT_PARENTHESIS
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_COMMA
  !BYTE >mini_char_set_HYPHEN_MINUS
  !BYTE >mini_char_set_FULL_STOP
  !BYTE >mini_char_set_SLASH
  !BYTE >mini_char_set_0
  !BYTE >mini_char_set_1
  !BYTE >mini_char_set_2
  !BYTE >mini_char_set_3
  !BYTE >mini_char_set_4
  !BYTE >mini_char_set_5
  !BYTE >mini_char_set_6
  !BYTE >mini_char_set_7
  !BYTE >mini_char_set_8
  !BYTE >mini_char_set_9
  !BYTE >mini_char_set_COLON
  !BYTE >mini_char_set_SEMICOLON
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_HORIZONTAL_LINE
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_UPPER_RIGHT_CURVE
  !BYTE >mini_char_set_LOWER_LEFT_CURVE
  !BYTE >mini_char_set_LOWER_RIGHT_CURVE
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_UPPER_LEFT_CURVE
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_HORIZONTAL_VERTICAL_CROSS
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_VERTICAL_LINE
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_VERTICAL_LINE_T_RIGHT
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_LOWER_LEFT_CORNER
  !BYTE >mini_char_set_UPPER_RIGHT_CORNER
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_UPPER_LEFT_CORNER
  !BYTE >mini_char_set_HORIZONTAL_LINE_T_UP
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_VERTICAL_LINE_T_LEFT
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_LOWER_RIGHT_CORNER
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_undefined
  !BYTE >mini_char_set_key_x_1
  !BYTE >mini_char_set_key_x_2
  !BYTE >mini_char_set_key_1_3
  !BYTE >mini_char_set_key_1_4
  !BYTE >mini_char_set_key_1_5
  !BYTE >mini_char_set_key_1_6
  !BYTE >mini_char_set_key_x_1
  !BYTE >mini_char_set_key_x_2
  !BYTE >mini_char_set_key_2_3
  !BYTE >mini_char_set_key_2_4
  !BYTE >mini_char_set_key_2_5
  !BYTE >mini_char_set_key_2_6
  !BYTE >mini_char_set_key_x_1
  !BYTE >mini_char_set_key_x_2
  !BYTE >mini_char_set_key_3_3
  !BYTE >mini_char_set_key_3_4
  !BYTE >mini_char_set_key_3_5
  !BYTE >mini_char_set_key_3_6
  !BYTE >mini_char_set_health_top_50
  !BYTE >mini_char_set_health_top_100
  !BYTE >mini_char_set_health_bot

COPY_6:
  +PH MMU
  +STI MMU, %01111111

  LDY #0

  +PHW $FD
  ASL $FD
  ROL $FE
  ASL $FD
  ROL $FE
  ASL $FD
  ROL $FE
  +ADDW $FD, $C000
- LDA ($FB),Y
  STA ($FD),Y
  INY
  CPY #48
  BNE -
  +PLW $FD

  +PHW $FD
  +ADDW $FD, $E000-48
- LDA ($FB),Y
  STA ($FD),Y
  INY
  CPY #48+6
  BNE -
  +PLW $FD

  +STI MMU, %01111110

  +PHW $FD
  +ADDW $FD, $D800-48-6
- LDA ($FB),Y
  STA ($FD),Y
  INY
  CPY #48+6+6
  BNE -
  +PLW $FD

  +PL MMU

  RTS

!MACRO COPY_6 .src, .off {
  +STIW $FB, .src
  +STIW $FD, .off
  JSR COPY_6
}

ERASE_6:
  LDA #0
  LDY #0
- STA ($FD),Y
  INY
  CPY #48
  BNE -
  RTS

!MACRO ERASE_6 .off {
  +STIW $FD, $C000+.off*8
  JSR ERASE_6
}

; CHAR
; INDEX
; ORIGINAL_FC
; ORIGINAL_FB
; RETURN_ADDR_HI
; RETURN_ADDR_LO
; ORIGINAL_X
; ORIGINAL_Y
; ORIGINAL_FE
; ORIGINAL_FD
; SP (aka X)

MC_PLOT_CHAR_HELPER:
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
  LDA mini_char_set_lo,X
  STA $FD
  LDA mini_char_set_hi,X
  STA $FE

  +PH MMU ; save MMU
  +STI MMU, %01111111 ; disable all ROM & IO

  LDY #0
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y

  +PL MMU

  +PLW $FD
  +PLY
  +PLX

  RTS

!MACRO PLOT_CHAR_HELPER {
  +PHW $FB
  JSR MC_PLOT_CHAR_HELPER
  +PLW $FB
}

!MACRO PLOT_CHAR {
  PHA
  +PHI 0
  +PLOT_CHAR_HELPER
  PLA
  PLA
}

!MACRO PLOT_CHAR_X {
  PHA
  +PHX
  +PLOT_CHAR_HELPER
  +PLX
  PLA
}

!MACRO PLOT_CHAR_Y {
  PHA
  +PHY
  +PLOT_CHAR_HELPER
  +PLY
  PLA
}

!MACRO PLOT_CHAR_HELPER .o {
  +PHW $FB
  +STIW $FB, .o
  JSR MC_PLOT_CHAR_HELPER
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

; INDEX
; ORIGINAL_FC
; ORIGINAL_FB
; ORIGINAL_FE
; ORIGINAL_FD
; RETURN_ADDR_HI
; RETURN_ADDR_LO
; ORIGINAL_X
; ORIGINAL_Y
; SP (aka X)

COPY_CHAR_HELPER:
  +PHX
  +PHY

  TSX         ; get stack pointer for args

  CLC         ; add index to dest offset
  LDA $FB
  ADC $0109,X
  STA $FB
  LDA $FC
  ADC #$00
  STA $FC

  ASL $FB     ; multiply dest by 8
  ROL $FC
  ASL $FB
  ROL $FC
  ASL $FB
  ROL $FC

  CLC         ; add index to src offset
  LDA $FD
  ADC $0109,X
  STA $FD
  LDA $FE
  ADC #$00
  STA $FE

  ASL $FD     ; multiply src by 8
  ROL $FE
  ASL $FD
  ROL $FE
  ASL $FD
  ROL $FE

  +ADDW $FB, $C000
  +ADDW $FD, $C000

  +PH MMU ; save MMU
  +STI MMU, %01111111 ; disable all ROM & IO

  LDY #0
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y
  INY
  LDA ($FD),Y
  STA ($FB),Y

  +PL MMU

  +PLY
  +PLX

  RTS

!MACRO COPY_CHAR_HELPER .d, .s {
  +PHW $FB
  +PHW $FD
  +STIW $FB, .d
  +STIW $FD, .s
  JSR COPY_CHAR_HELPER
  +PLW $FD
  +PLW $FB
}

!MACRO COPY_CHAR .d, .s {
  +PHI 0
  +COPY_CHAR_HELPER .d, .s
  PLA
}

!MACRO COPY_CHAR_X .d, .s {
  +PHX
  +COPY_CHAR_HELPER .d, .s
  +PLX
}

!MACRO COPY_CHAR_Y .d, .s {
  +PHY
  +COPY_CHAR_HELPER .d, .s
  +PLY
}

}

!MACRO PLOT_CHAR .o, .c {
  LDA #.c
  +PLOT_CHAR .o
}

!MACRO PLOT_CHAR_X .o, .c {
  LDA #.c
  +PLOT_CHAR_X .o
}

!MACRO PLOT_CHAR_Y .o, .c {
  LDA #.c
  +PLOT_CHAR_Y .o
}

DECOMPRESS_MCBM_REP:
            EOR #$FF ; A = 1+-A
            CLC
            ADC #$02

            STA $FF

            INY
-           LDA ($FB),Y

            LDY #0
-           STA ($FD),Y
            INY
            CPY $FF
            BNE -

            +ADDW $FB, 2

            LDA $FF
            +ADDW $FD

            JMP DECOMPRESS_MCBM_PART

DECOMPRESS_MCBM_LIT:
            STA $FF

            +ADDW $FB, 1

            LDY #0
-           LDA ($FB),Y
            STA ($FD),Y
            INY
            CPY $FF
            BNE -

            LDA $FF
            +ADDW $FB

            LDA $FF
            +ADDW $FD

            JMP DECOMPRESS_MCBM_PART

DECOMPRESS_MCBM_PART:
            LDY #0
            LDA ($FB),Y
            BEQ +
            BMI DECOMPRESS_MCBM_REP
            JMP DECOMPRESS_MCBM_LIT

+           +ADDW $FB, 1
            RTS

DECOMPRESS_MCBM:
            +PH MMU
            +STI MMU, %01111111 ; 01=RAM1, 11111=NOROM, 1=NOIO
            +STIW $FD, $C000
            JSR DECOMPRESS_MCBM_PART
            +STIW $FD, $E000
            JSR DECOMPRESS_MCBM_PART
            +STI MMU, %01111110 ; 01=RAM1, 11111=NOROM, 0=IO
            +STIW $FD, $D800
            JSR DECOMPRESS_MCBM_PART
            +PL MMU
            RTS

DISPLAY_GAME_SCREEN:
!IF VIC_BITMAP {
            +STI MMURCR, %01000101 ; 01=VICBLOCK 00=NA 01=COMMONBOTTOM 01=COMMON4K
            +STI SCROLX, %00011000 ; enable multicolor mode
            +STIW $FB, GAME_MCBM
            JSR DECOMPRESS_MCBM
}
!IF VIC_CHARMAP {
            +DECOMPRESS_SCREEN SCR_TEXT, SCREEN_MEMORY
            +DECOMPRESS_SCREEN SCR_COLOR, COLOR_MEMORY
}
            RTS

FETCH_GAME_SCREEN:
            JSR DISPLAY_GAME_SCREEN
            JSR DISPLAY_PLAYER_SPRITE
            JSR DISPLAY_PLAYER_HEALTH
            JSR DISPLAY_KEYS
            JSR DISPLAY_WEAPON
            JSR DISPLAY_ITEM
            RTS

STASH_GAME_SCREEN:
            LDA #0
            STA SPENA
            RTS

DISPLAY_ENDGAME_SCREEN:
            LDA #%00000000  ;disable ALL sprites
            STA SPENA
!IF VIC_BITMAP {
            +STI MMURCR, %01000101 ; 01=VICBLOCK 00=NA 01=COMMONBOTTOM 01=COMMON4K
            +STI SCROLX, %00011000 ; enable multicolor mode
            +STIW $FB, END_MCBM
            JSR DECOMPRESS_MCBM
}
!IF VIC_CHARMAP {
            JSR CS02  ;set monochrome screen for now.
            +DECOMPRESS_SCREEN SCR_ENDGAME, SCREEN_MEMORY
}
            ;display map name
            JSR C_CALC_MAP_NAME
DEG3:       LDA ($FB),Y
            +PLOT_CHAR_Y $12F
            INY
            CPY #16
            BNE DEG3
            ;display elapsed time
            +DECWRITE $17E, HOURS
            +DECWRITE $181, MINUTES
            +DECWRITE $184, SECONDS
            LDA #32 ;SPACE
            +PLOT_CHAR $17E
            LDA #58 ;COLON
            +PLOT_CHAR $181
            +PLOT_CHAR $184
            ;count robots remaining
            LDX #1
            LDA #0
            STA DECNUM
DEG7:       LDA UNIT_TYPE,X
            CMP #0
            BEQ DEG8
            INC DECNUM
DEG8:       INX
            CPX #28
            BNE DEG7
            +DECWRITE $1CF
            ;Count secrets remaining
            LDA #0
            STA DECNUM
            LDX #48
DEG9:       LDA UNIT_TYPE,X
            CMP #0
            BEQ DEG10
            INC DECNUM
DEG10:      INX
            CPX #64
            BNE DEG9
            +DECWRITE $21F
            ;display difficulty level
            LDY DIFF_LEVEL
            LDA DIFF_LEVEL_LEN,Y
            TAY
            LDX #0
DEG11:      LDA DIFF_LEVEL_WORDS,Y
            CMP #0
            BEQ DEG12
            +PLOT_CHAR_X $26F
            INY
            INX
            JMP DEG11
DEG12:      RTS

DIFF_LEVEL_WORDS:
            !SCR "easy",0,"normal",0,"hard",0
DIFF_LEVEL_LEN:
            !BYTE 0,5,12

!IF VIC_CHARMAP+1 {
DECOMPRESS_BYTE:
            JMP $FFFF

DECOMPRESS_SCREEN_BYTE:
            PHA
            +PHI 0
            +PHW $FB
            LDA $FD
            STA $FB
            LDA $FE
            STA $FC
            JSR MC_PLOT_CHAR_HELPER
            +PLW $FB
            PLA
            PLA
            RTS

DECOMPRESS_COLOR_BYTE:
            STA ($FD),Y
            PHA
            +ADDW $FD, $0800
            PLA
            STA ($FD),Y
            PHA
            +SUBW $FD, $0800
            PLA
            RTS

DECOMPRESS_SCREEN:
            LDY #00
DGS1:       LDA ($FB),Y
            CMP #96 ;REPEAT FLAG
            BEQ DGS10
DGS2:       JSR DECOMPRESS_BYTE
            ;CHECK TO SEE IF WE REACHED $83E7 YET.
DGS4:       LDA $FE
DGS5:       CMP #$83  ;SELF MODIFYING CODE
            BNE DGS3
            LDA $FD
DGS6:       CMP #$E7  ;SELF MODIFYING CODE
            BNE DGS3
            RTS
DGS3:       JSR INC_SOURCE
            JSR INC_DEST
            JMP DGS1
DGS10:      ;REPEAT CODE
            JSR INC_SOURCE
            LDA ($FB),Y
            STA RPT
            JSR INC_SOURCE
            LDA ($FB),Y
            TAX
DGS11:      LDA RPT
            JSR DECOMPRESS_BYTE
            JSR INC_DEST
            DEX
            CPX #$FF
            BNE DGS11
            LDA $FD
            SEC
            SBC #01
            STA $FD
            LDA $FE
            SBC #00
            STA $FE
            JMP DGS4
INC_SOURCE:
            LDA $FB
            CLC
            ADC #01
            STA $FB
            LDA $FC
            ADC #00
            STA $FC
            RTS
INC_DEST:
            LDA $FD
            CLC
            ADC #01
            STA $FD
            LDA $FE
            ADC #00
            STA $FE
            RTS
RPT !BYTE 00  ;repeat value
}

!IF VIC_CHARMAP {

;This routine plots a 3x3 tile from the tile database anywhere
;on screen.  But first you must define the tile number in the
;TILE variable, as well as the starting screen address must
;be defined in $FB.
PLOT_TILE:
            LDA $FB ;Grab the starting address, and adjust it for
            STA $FD ;the color RAM before we get started.
            LDA $FC
            STA $FE
            LDX TILE
            ;DRAW THE TOP 3 CHARACTERS
            LDA TILE_DATA_TL,X
            LDY #0
            STA ($FB),Y
            LDA TILE_DATA_TM,X
            INY
            STA ($FB),Y
            LDA TILE_DATA_TR,X
            INY
            STA ($FB),Y
            ;MOVE DOWN TO NEXT LINE
            LDY #40
            ;DRAW THE MIDDLE 3 CHARACTERS
            LDA TILE_DATA_ML,X
            STA ($FB),Y
            LDA TILE_DATA_MM,X
            INY
            STA ($FB),Y
            LDA TILE_DATA_MR,X
            INY
            STA ($FB),Y
            ;MOVE DOWN TO NEXT LINE
            LDY #80
            ;DRAW THE BOTTOM 3 CHARACTERS
            LDA TILE_DATA_BL,X
            STA ($FB),Y
            LDA TILE_DATA_BM,X
            INY
            STA ($FB),Y
            LDA TILE_DATA_BR,X
            INY
            STA ($FB),Y
            ;NOW DO THE COLOR
PT01:       LDA $FE
            SEC
            SBC #$08  ;adjust to color RAM area by SUBTRACTING $0800
            STA $FE
            ;DRAW THE TOP 3 COLORS
            LDA TILE_COLOR_TL,X
            LDY #0
            STA ($FD),Y
            LDA TILE_COLOR_TM,X
            INY
            STA ($FD),Y
            LDA TILE_COLOR_TR,X
            INY
            STA ($FD),Y
            ;MOVE DOWN TO NEXT LINE
            LDY #40
            ;DRAW THE MIDDLE 3 COLORS
            LDA TILE_COLOR_ML,X
            STA ($FD),Y
            LDA TILE_COLOR_MM,X
            INY
            STA ($FD),Y
            LDA TILE_COLOR_MR,X
            INY
            STA ($FD),Y
            ;MOVE DOWN TO NEXT LINE
            LDY #80
            ;DRAW THE BOTTOM 3 COLORS
            LDA TILE_COLOR_BL,X
            STA ($FD),Y
            LDA TILE_COLOR_BM,X
            INY
            STA ($FD),Y
            LDA TILE_COLOR_BR,X
            INY
            STA ($FD),Y
            RTS

;This routine plots a transparent tile from the tile database
;anywhere on screen.  But first you must define the tile number
;in the TILE variable, as well as the starting screen address must
;be defined in $FB.  Also, this routine is slower than the usual
;tile routine, so is only used for sprites.  The ":" character ($3A)
;is not drawn.
PLOT_TRANSPARENT_TILE:
            LDA $FB ;Grab the starting address, and adjust it for
            STA $FD ;the color RAM before we get started.
            LDA $FC
            STA $FE
            LDX TILE
            ;DRAW THE TOP 3 CHARACTERS
            LDA TILE_DATA_TL,X
            LDY #0
            CMP #$3A
            BEQ PTT01
            STA ($FB),Y
PTT01:      LDA TILE_DATA_TM,X
            INY
            CMP #$3A
            BEQ PTT02
            STA ($FB),Y
PTT02:      LDA TILE_DATA_TR,X
            INY
            CMP #$3A
            BEQ PTT03
            STA ($FB),Y
            ;MOVE DOWN TO NEXT LINE
PTT03:      LDY #40
            ;DRAW THE MIDDLE 3 CHARACTERS
            LDA TILE_DATA_ML,X
            CMP #$3A
            BEQ PTT04
            STA ($FB),Y
PTT04:      LDA TILE_DATA_MM,X
            INY
            CMP #$3A
            BEQ PTT05
            STA ($FB),Y
PTT05:      LDA TILE_DATA_MR,X
            INY
            CMP #$3A
            BEQ PTT06
            STA ($FB),Y
            ;MOVE DOWN TO NEXT LINE
PTT06:      LDY #80
            ;DRAW THE BOTTOM 3 CHARACTERS
            LDA TILE_DATA_BL,X
            CMP #$3A
            BEQ PTT07
            STA ($FB),Y
PTT07:      LDA TILE_DATA_BM,X
            INY
            CMP #$3A
            BEQ PTT08
            STA ($FB),Y
PTT08:      LDA TILE_DATA_BR,X
            INY
            CMP #$3A
            BEQ PTT09
            STA ($FB),Y
PTT09:      ;NOW DO THE COLOR
            LDA $FE
            SEC
            SBC #$08  ;adjust to color RAM area by SUBTRACTING $0800
            STA $FE
            ;DRAW THE TOP 3 COLORS
            LDA TILE_COLOR_TL,X
            LDY #0
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT10
            STA ($FD),Y
PTT10:      LDA TILE_COLOR_TM,X
            INY
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT11
            STA ($FD),Y
PTT11:      LDA TILE_COLOR_TR,X
            INY
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT12
            STA ($FD),Y
            ;MOVE DOWN TO NEXT LINE
PTT12:      LDY #40
            ;DRAW THE MIDDLE 3 COLORS
            LDA TILE_COLOR_ML,X
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT13
            STA ($FD),Y
PTT13:      LDA TILE_COLOR_MM,X
            INY
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT14
            STA ($FD),Y
PTT14:      LDA TILE_COLOR_MR,X
            INY
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT15
            STA ($FD),Y
            ;MOVE DOWN TO NEXT LINE
PTT15:      LDY #80
            ;DRAW THE BOTTOM 3 COLORS
            LDA TILE_COLOR_BL,X
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT16
            STA ($FD),Y
PTT16:      LDA TILE_COLOR_BM,X
            INY
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT17
            STA ($FD),Y
PTT17:      LDA TILE_COLOR_BR,X
            INY
            CMP #$00  ;If it is black, don't draw it.
            BEQ PTT18
            STA ($FD),Y
PTT18:      RTS

}

!IF VIC_BITMAP {

!SOURCE "graphics.sym"

; This routine plots a 72-byte tile to the VIC-II screen. To use it,
; you must first define TEMP_X and TEMP_Y with the location onscreen
; where the tile will be drawn.  Then you must define TILE as to which
; of the 256 tiles will be plotted.

PLOT_TILE_DEST !WORD 0

!MACRO ADDWI .addr, .value {
            LDA .addr+0
            CLC
            ADC #<.value
            STA .addr+0
            LDA .addr+1
            ADC #>.value
            STA .addr+1
}

!MACRO SUBWI .addr, .value {
            LDA .addr+0
            SEC
            SBC #<.value
            STA .addr+0
            LDA .addr+1
            SBC #>.value
            STA .addr+1
}

LAST_TILE:  !FILL 256, 1
REMAP_TILE: !FILL 256, 0

INIT_LAST_TILE:
            LDA #1
            LDY #0

-           STA LAST_TILE,Y  ; init the last tile to be 1
            INY              ; all tiles should be some other number
            BNE -            ; so this will ensure tiles drawn first time

-           TYA              ; init the remap tiles to identity
            STA REMAP_TILE,Y ; when animations need to be updated
            INY              ; they'll be updated here
            BNE -

            RTS

PLOT_TILE:
            +PH TILE

            PHA
            +PHY
            LDY TILE
            LDA REMAP_TILE,Y
            STA TILE
            +PLY
            PLA

            LDA TEMP_Y
            ASL
            ASL
            ASL
            ASL
            ORA TEMP_X
            TAY
            LDA LAST_TILE,Y
            CMP #$94 ; need to animate trash compactor
            BEQ +
            ;;; CMP #20 ; need to animate cinema
            ;;; BEQ +
            ;;; CMP #21 ; need to animate cinema
            ;;; BEQ +
            ;;; CMP #22 ; need to animate cinema
            ;;; BEQ +
            CMP TILE
            BNE +
            +PL TILE
            RTS

+           LDA TILE
            STA LAST_TILE,Y

            LDY TEMP_Y
            LDA BITMAP_ADDRESS_L,Y
            STA PLOT_TILE_DEST+0
            LDA BITMAP_ADDRESS_H,Y
            STA PLOT_TILE_DEST+1

            LDY TEMP_X
-           BEQ +
            +ADDWI PLOT_TILE_DEST, 24
            DEY
            JMP -

+           SEI                               ; disable interrupts before changing memory map
            +STI MMURCR, %01000001            ; disable common memory (still 4K though)

            TSX                               ; preserve current stack pointer
            STX $FF

            LDY TILE                          ; relocate zero page to source tile data
            +STI MMUP0H, $00                  ; set ram block for zero page
            LDA mcbm_tile_hi,Y                ; set new page for zero page
            STA MMUP0L

            LDA mcbm_tile_lo,Y                ; set x to index of last tile byte
            CLC
            ADC #72-1
            TAX

            LDY #3-1                          ; three rows of data to copy

            +ADDWI PLOT_TILE_DEST, 320*2+24-1 ; set to copy in reverse

            +STI MMUP1H, $01                  ; relocate stack page to dest tile data
.copy_tile_row:
            +STM MMUP1L, PLOT_TILE_DEST+1

            TXA                               ; preserve X for a moment to manipulate stack pointer
            LDX PLOT_TILE_DEST+0              ; make stack point to last byte of tile row
            TXS
            TAX                               ; restore X

            +STI MMU, %01111111               ; 01=RAM1, 11111=NOROM, 1=NOIO

            LDA PLOT_TILE_DEST+0              ; get the last byte of the current row
            CMP #24-1                         ; is it at offset 24-1 or later?
            BCS .copy_24                      ; if so, we can copy all 24 bytes w/o adj stack page
            CMP #16-1                         ; is it at offset 16-1 or later?
            BCS .copy_16_then_8               ; if so, we can copy 16 bytes, adj stack page, then 8
            JMP .help_copy_8_then_16          ; otherwise we copy 8 bytes, adj stack page, then 16
.copy_16_then_8:
            JMP .help_copy_16_then_8          ; copy last 16, adjust, finish
.copy_24:
            JMP .help_copy_24                 ; copy all 24 at once

.iterate:
            +STI MMU, %01001110               ; 01=RAM1, 00=KERNAL/CHARSET/SCREDIT, 111=NOBASIC, 0=IO

            DEY                               ; finished this row
            BMI .conclude                     ; if no more, done

            +SUBWI PLOT_TILE_DEST, 320        ; adjust destination for previous row
            JMP .copy_tile_row                ; and copy that row

.conclude:

            +SUBWI PLOT_TILE_DEST, 24-1       ; just to be nice to caller, restore original address

            +STI MMUP1H, MMUP0H, MMUP0L, $00  ; restore zero page to $0000xx and
            +STI MMUP1L, $01                  ; restore stack page to $0001xx

            LDX $FF                           ; restore original stack pointer
            TXS

            +STI MMURCR, %01000101            ; restore common memory (4K bottom only)

            CLI                               ; memory map is restored, allow IRQ

            +PHW $FB

            LDX TILE

            LDY TEMP_X
            LDA SCREEN_COL,Y
            STA $FB
            +STI $FC, 0

            LDY TEMP_Y
            CLC
            LDA $FB
            ADC SCREEN_ROW_L,Y
            STA $FB
            LDA $FC
            ADC SCREEN_ROW_H,Y
            STA $FC

!MACRO ROW_COLORS .left, .palette {

            ; each tile needs to set a 3x3 grid of color
            ; the first three are upper -left, upper -center, upper -right
            ; the next  three are middle-left, middle-center, middle-right
            ; the last  three are lower -left, lower -center, lower -right

            ; each position can be numbered       :    0,    1,    2
            ;                                     :    3,    4,    5
            ;                                     :    6,    7,    8

            ; each palette is relative to .palette:    0,  256,  512
            ;                                     :  768, 1024, 1280
            ;                                     : 1536, 1792, 2048

            ; each address is relative to ($FB)   :    0,    1,    2
            ;                                     :   40,   41,   42
            ;                                     :   80,   81,   82

            ; conveniently, each numbered position can be used to mathematically
            ; define the palette from which a color should be loaded and the
            ; address to which it should be stored.

            .paddr = .palette+(256*3*.left)

            LDY #(40*.left)
            LDA .paddr+  0,X
            STA ($FB),Y
            INY
            LDA .paddr+256,X
            STA ($FB),Y
            INY
            LDA .paddr+512,X
            STA ($FB),Y

}

!MACRO TILE_COLORS .delta, .palette {
            +ADDWI $FB, .delta
            +ROW_COLORS 0, .palette
            +ROW_COLORS 1, .palette
            +ROW_COLORS 2, .palette
}

            ; ($FB) has the offset of the top left corner of a tile's color
            ; memory location, so add $D800 to get into color memory and then
            ; add $0800 more to get to $E000 for screen memory
            +TILE_COLORS $D800, mcbm_tile_pal_1_0
            +TILE_COLORS $0800, mcbm_tile_pal_0_0

            +PLW $FB

            +PL TILE

            RTS                               ; done, return!

!MACRO FAST_COPY_BYTE .x {
  LDA ($100-.x)&$FF,X
  PHA
}

!MACRO FAST_COPY_BYTES .count {
  !for .x, 0, .count-1 {
    +FAST_COPY_BYTE .x
  }
  TXA
  SEC
  SBC #.count
  TAX
}

.help_copy_24:
  +FAST_COPY_BYTES 24
  JMP .iterate

.help_copy_16_then_8:
  +FAST_COPY_BYTES 16
  +STI MMU, %01111110               ; 01=RAM1, 11111=NOROM, 0=IO
  DEC MMUP1L
  +STI MMU, %01111111               ; 01=RAM1, 11111=NOROM, 1=NOIO
  +FAST_COPY_BYTES 8
  JMP .iterate

.help_copy_8_then_16:
  +FAST_COPY_BYTES 8
  +STI MMU, %01111110               ; 01=RAM1, 11111=NOROM, 0=IO
  DEC MMUP1L
  +STI MMU, %01111111               ; 01=RAM1, 11111=NOROM, 1=NOIO
  +FAST_COPY_BYTES 16
  JMP .iterate

;This routine plots a transparent tile from the tile database
;anywhere on screen.  But first you must define the tile number
;in the TILE variable, as well as the starting screen address must
;be defined in $FB.  Also, this routine is slower than the usual
;tile routine, so is only used for sprites.  The ":" character ($3A)
;is not drawn.
PLOT_TRANSPARENT_TILE:
            JSR PLOT_TILE
            RTS

SCREEN_ROW_H:
  !BYTE >(40*3*0) ;ROW 0
  !BYTE >(40*3*1) ;ROW 1
  !BYTE >(40*3*2) ;ROW 2
  !BYTE >(40*3*3) ;ROW 3
  !BYTE >(40*3*4) ;ROW 4
  !BYTE >(40*3*5) ;ROW 5
  !BYTE >(40*3*6) ;ROW 6
  !BYTE >(40*3*7) ;ROW 7

SCREEN_ROW_L:
  !BYTE <(40*3*0) ;ROW 0
  !BYTE <(40*3*1) ;ROW 1
  !BYTE <(40*3*2) ;ROW 2
  !BYTE <(40*3*3) ;ROW 3
  !BYTE <(40*3*4) ;ROW 4
  !BYTE <(40*3*5) ;ROW 5
  !BYTE <(40*3*6) ;ROW 6
  !BYTE <(40*3*7) ;ROW 7

SCREEN_COL:
  !BYTE <(3* 0) ;COL  0
  !BYTE <(3* 1) ;COL  1
  !BYTE <(3* 2) ;COL  2
  !BYTE <(3* 3) ;COL  3
  !BYTE <(3* 4) ;COL  4
  !BYTE <(3* 5) ;COL  5
  !BYTE <(3* 6) ;COL  6
  !BYTE <(3* 7) ;COL  7
  !BYTE <(3* 8) ;COL  8
  !BYTE <(3* 9) ;COL  9
  !BYTE <(3*10) ;COL 10
  !BYTE <(3*11) ;COL 11

BITMAP_ADDRESS_L:
  !BYTE $00 ;ROW 0
  !BYTE $C0 ;ROW 1
  !BYTE $80 ;ROW 2
  !BYTE $40 ;ROW 3
  !BYTE $00 ;ROW 4
  !BYTE $C0 ;ROW 5
  !BYTE $80 ;ROW 6
  !BYTE $40 ;ROW 7

BITMAP_ADDRESS_H:
  !BYTE $C0 ;ROW 0
  !BYTE $C3 ;ROW 1
  !BYTE $C7 ;ROW 2
  !BYTE $CB ;ROW 3
  !BYTE $CF ;ROW 4
  !BYTE $D2 ;ROW 5
  !BYTE $D6 ;ROW 6
  !BYTE $DA ;ROW 7

mcbm_tile_pal_0_0
            !BYTE $DE,$DE,$1E,$1E,$1E,$1E,$1E,$1E
            !BYTE $1E,$6E,$1E,$1E,$1E,$1E,$DE,$1E
            !BYTE $1E,$1E,$1E,$1E,$1E,$1E,$1E,$28
            !BYTE $6E,$1E,$1E,$1E,$1E,$46,$67,$67
            !BYTE $68,$6E,$67,$16,$69,$13,$1E,$69
            !BYTE $DE,$78,$8E,$89,$DE,$12,$12,$8E
            !BYTE $1E,$1E,$1E,$8E,$1E,$BC,$1C,$DE
            !BYTE $1E,$13,$6E,$13,$1C,$5D,$1E,$1E
            !BYTE $1E,$1E,$4E,$CE,$1E,$1E,$1E,$1E
            !BYTE $6E,$6E,$6E,$1E,$1E,$1E,$1E,$1E
            !BYTE $1E,$6E,$1E,$6E,$1E,$6E,$1E,$6E
            !BYTE $1E,$6E,$1E,$1E,$1E,$1E,$1E,$6E
            !BYTE $28,$28,$1C,$1C,$12,$12,$12,$12
            !BYTE $1E,$1E,$1E,$17,$6E,$1B,$1B,$6E
            !BYTE $1E,$1E,$1E,$1C,$6E,$12,$1E,$1E
            !BYTE $13,$18,$28,$28,$12,$12,$28,$28
            !BYTE $1E,$1E,$DE,$15,$16,$59,$12,$56
            !BYTE $59,$CE,$8E,$6E,$13,$13,$13,$89
            !BYTE $1E,$1E,$1E,$1E,$17,$6E,$17,$1E
            !BYTE $1E,$1E,$DE,$DE,$8E,$1E,$DE,$6E
            !BYTE $28,$12,$28,$6E,$17,$17,$1E,$6E
            !BYTE $6E,$CE,$1E,$28,$1E,$1E,$1E,$89
            !BYTE $1E,$1E,$1E,$1E,$1E,$1E,$1E,$12
            !BYTE $89,$8E,$8E,$1E,$8E,$BE,$BE,$1E
            !BYTE $8E,$BE,$BE,$1E,$1C,$1C,$5D,$CE
            !BYTE $CE,$CE,$CE,$13,$36,$89,$CE,$9C
            !BYTE $59,$58,$59,$15,$19,$9C,$BC,$17
            !BYTE $19,$19,$19,$59,$19,$16,$19,$15
            !BYTE $19,$19,$19,$CE,$59,$BC,$BE,$CE
            !BYTE $BE,$BC,$CE,$CE,$8E,$BE,$1C,$1C
            !BYTE $DE,$DE,$8E,$DE,$DE,$DE,$78,$DE
            !BYTE $DE,$12,$28,$9E,$36,$36,$CE,$1C
mcbm_tile_pal_0_1
            !BYTE $DE,$DE,$6C,$1E,$1E,$1E,$1E,$6C
            !BYTE $8C,$6E,$9C,$8C,$8C,$1E,$DE,$6C
            !BYTE $1E,$68,$1E,$8C,$1E,$1E,$1E,$28
            !BYTE $56,$CE,$6C,$8C,$1E,$6E,$67,$67
            !BYTE $68,$78,$67,$6E,$69,$78,$6E,$16
            !BYTE $3E,$17,$78,$89,$3E,$16,$16,$8E
            !BYTE $1E,$1E,$1E,$8E,$8C,$9B,$18,$3E
            !BYTE $8C,$18,$6E,$13,$15,$5D,$1E,$6C
            !BYTE $1E,$1E,$4E,$18,$8C,$8C,$8C,$12
            !BYTE $16,$16,$16,$15,$CE,$CE,$CE,$1C
            !BYTE $13,$13,$1E,$1E,$13,$6E,$1E,$1E
            !BYTE $13,$6E,$1E,$1E,$1E,$1E,$1E,$1E
            !BYTE $28,$28,$1C,$1C,$2B,$2B,$2B,$2B
            !BYTE $1E,$1E,$1E,$67,$13,$13,$6E,$69
            !BYTE $1E,$1E,$18,$89,$12,$6E,$1E,$1E
            !BYTE $6E,$18,$28,$12,$12,$28,$28,$8E
            !BYTE $1E,$8C,$BC,$56,$CE,$69,$1E,$56
            !BYTE $8B,$9C,$8E,$6E,$16,$16,$16,$8E
            !BYTE $1E,$1E,$1E,$1E,$17,$16,$18,$1E
            !BYTE $1E,$1E,$DE,$3E,$6E,$12,$DE,$6E
            !BYTE $28,$12,$28,$6E,$CE,$CE,$CE,$6E
            !BYTE $12,$CE,$3E,$6E,$1E,$1E,$1E,$8E
            !BYTE $1E,$1E,$1E,$1E,$1E,$13,$CE,$28
            !BYTE $8E,$8E,$8E,$8C,$9E,$BE,$BE,$CE
            !BYTE $9E,$BE,$BE,$1E,$1C,$1C,$15,$CE
            !BYTE $CE,$CE,$1C,$1B,$6E,$89,$89,$89
            !BYTE $59,$59,$59,$5D,$9C,$9E,$BC,$5D
            !BYTE $59,$9E,$9E,$15,$59,$6E,$19,$5D
            !BYTE $9E,$59,$9E,$CE,$59,$59,$BE,$BE
            !BYTE $BC,$BC,$CE,$CE,$CE,$BE,$1C,$1C
            !BYTE $17,$DE,$8E,$DE,$17,$DE,$17,$DE
            !BYTE $DE,$17,$28,$9E,$6E,$6E,$1C,$CE
mcbm_tile_pal_0_2
            !BYTE $DE,$DE,$6E,$1E,$1E,$1E,$1E,$6E
            !BYTE $4C,$6E,$59,$4C,$4C,$1E,$DE,$6E
            !BYTE $1E,$6E,$1E,$4C,$1E,$1E,$1E,$59
            !BYTE $56,$DE,$6E,$4C,$1E,$6E,$68,$68
            !BYTE $6E,$16,$68,$6E,$6E,$1B,$6E,$6E
            !BYTE $16,$68,$68,$6C,$6E,$6E,$6E,$6E
            !BYTE $1E,$1E,$1E,$6E,$9E,$CE,$68,$16
            !BYTE $13,$68,$6E,$6E,$5D,$6C,$1E,$6E
            !BYTE $1E,$1E,$14,$59,$4C,$4C,$4C,$4C
            !BYTE $6E,$16,$16,$4C,$6E,$6E,$6E,$4C
            !BYTE $13,$13,$1E,$36,$16,$13,$1E,$3E
            !BYTE $6E,$13,$1E,$1E,$1E,$1E,$1E,$3E
            !BYTE $12,$6E,$CE,$CE,$18,$18,$89,$18
            !BYTE $1E,$1E,$1E,$16,$13,$13,$6E,$69
            !BYTE $1E,$1E,$4C,$3C,$12,$6E,$1E,$1E
            !BYTE $6E,$6E,$28,$9E,$12,$6E,$6E,$28
            !BYTE $1E,$48,$DE,$56,$CE,$9E,$12,$56
            !BYTE $1B,$9E,$16,$6E,$6E,$6E,$6E,$16
            !BYTE $1E,$1E,$1E,$1E,$28,$6E,$1E,$28
            !BYTE $1E,$1E,$DE,$16,$6E,$28,$DE,$6E
            !BYTE $12,$12,$59,$6E,$13,$13,$4C,$6E
            !BYTE $12,$CE,$17,$6E,$1E,$1E,$1E,$16
            !BYTE $1E,$1E,$1E,$1E,$1E,$46,$4C,$59
            !BYTE $8E,$8E,$89,$BE,$BE,$BE,$8E,$BE
            !BYTE $BE,$BE,$8E,$1E,$CE,$1B,$5B,$5E
            !BYTE $CE,$1C,$BE,$BE,$6E,$89,$89,$89
            !BYTE $9E,$59,$18,$15,$19,$9C,$BC,$17
            !BYTE $59,$59,$9E,$59,$9E,$6E,$9E,$15
            !BYTE $59,$9E,$9E,$CE,$BC,$59,$BE,$BE
            !BYTE $BC,$BC,$CE,$BE,$BE,$BE,$CE,$1B
            !BYTE $8E,$DE,$8E,$DE,$DE,$DE,$78,$DE
            !BYTE $DE,$28,$28,$9E,$6E,$6E,$CE,$1C
mcbm_tile_pal_0_3
            !BYTE $DE,$DE,$1E,$6B,$1E,$8B,$8B,$1E
            !BYTE $1E,$6E,$1E,$6B,$1E,$5B,$DE,$1E
            !BYTE $6B,$8B,$6B,$8B,$8B,$5D,$5D,$28
            !BYTE $56,$1E,$1E,$6B,$BE,$14,$16,$16
            !BYTE $6E,$36,$16,$68,$68,$6E,$1E,$69
            !BYTE $DE,$17,$78,$89,$3E,$26,$26,$8E
            !BYTE $1E,$8B,$8B,$8E,$1E,$9C,$19,$13
            !BYTE $1E,$9C,$6E,$3E,$1C,$15,$BE,$18
            !BYTE $BE,$BE,$59,$18,$13,$13,$13,$13
            !BYTE $13,$6E,$6E,$13,$1E,$1E,$1E,$13
            !BYTE $8B,$16,$BE,$6E,$8B,$16,$BE,$6E
            !BYTE $8B,$6E,$8B,$6B,$BE,$BE,$BE,$6E
            !BYTE $28,$28,$1C,$1C,$2B,$2B,$2B,$2B
            !BYTE $8B,$18,$18,$17,$6E,$6E,$6E,$68
            !BYTE $18,$8B,$1E,$3C,$6E,$6E,$18,$18
            !BYTE $1C,$1B,$12,$28,$28,$12,$28,$8E
            !BYTE $8B,$1E,$BC,$15,$CE,$6C,$26,$15
            !BYTE $9E,$19,$18,$68,$16,$16,$16,$18
            !BYTE $6B,$6B,$18,$1B,$17,$68,$17,$17
            !BYTE $BC,$BE,$DE,$13,$89,$1E,$3E,$16
            !BYTE $28,$28,$28,$16,$CE,$CE,$1E,$68
            !BYTE $6E,$CE,$1E,$28,$6B,$BE,$BE,$18
            !BYTE $8B,$8B,$8B,$8B,$8B,$8B,$8B,$12
            !BYTE $8E,$BE,$BE,$8B,$8E,$BE,$BE,$1E
            !BYTE $8E,$BE,$BE,$BE,$CE,$CE,$15,$CE
            !BYTE $CE,$CE,$1C,$1B,$6E,$8E,$89,$89
            !BYTE $59,$58,$18,$19,$59,$9C,$BC,$5D
            !BYTE $59,$19,$15,$15,$59,$16,$15,$5D
            !BYTE $59,$19,$59,$CE,$59,$BC,$BE,$CE
            !BYTE $59,$BC,$BE,$CE,$BE,$8E,$CE,$1C
            !BYTE $DE,$17,$8E,$DE,$DE,$17,$17,$DE
            !BYTE $DE,$17,$28,$9E,$6E,$6E,$CE,$CE
mcbm_tile_pal_0_4
            !BYTE $DE,$DE,$8C,$8B,$BC,$8B,$8B,$8C
            !BYTE $8C,$6E,$8C,$1B,$8C,$8B,$DE,$8C
            !BYTE $8B,$1B,$8B,$1B,$DE,$5D,$8B,$8E
            !BYTE $15,$8C,$8C,$1B,$8B,$48,$1E,$1E
            !BYTE $18,$78,$16,$89,$18,$78,$6E,$18
            !BYTE $DE,$17,$19,$8E,$13,$12,$12,$8E
            !BYTE $BC,$8B,$8B,$18,$8C,$89,$18,$13
            !BYTE $8C,$18,$12,$13,$15,$15,$BE,$1B
            !BYTE $BE,$BE,$1E,$17,$CE,$CE,$CE,$CE
            !BYTE $6E,$6E,$6E,$CE,$8C,$8C,$8C,$CE
            !BYTE $6B,$16,$8B,$1E,$1B,$6E,$8B,$1E
            !BYTE $1B,$6E,$8B,$8B,$12,$15,$1B,$1E
            !BYTE $28,$28,$15,$15,$1C,$CE,$1C,$CE
            !BYTE $13,$13,$8B,$17,$13,$13,$6E,$16
            !BYTE $18,$8B,$DE,$13,$6E,$6E,$DE,$18
            !BYTE $1E,$1B,$12,$12,$28,$28,$28,$28
            !BYTE $BC,$CE,$1B,$15,$16,$59,$26,$15
            !BYTE $5E,$CE,$18,$6E,$1C,$1C,$1C,$18
            !BYTE $6E,$78,$18,$78,$17,$16,$17,$17
            !BYTE $BE,$78,$DE,$13,$18,$1E,$13,$16
            !BYTE $28,$28,$28,$16,$1C,$1C,$13,$6E
            !BYTE $6E,$CE,$CE,$6E,$1B,$1B,$1B,$18
            !BYTE $8E,$8E,$8E,$8E,$8E,$1B,$1B,$28
            !BYTE $9B,$BC,$BC,$1B,$89,$BE,$BE,$8C
            !BYTE $89,$BE,$BE,$8B,$1C,$CE,$1B,$1C
            !BYTE $CE,$CE,$1C,$13,$6E,$89,$89,$5E
            !BYTE $59,$15,$59,$9D,$1C,$1C,$BC,$18
            !BYTE $19,$19,$19,$89,$19,$16,$19,$17
            !BYTE $19,$19,$19,$CE,$BC,$BC,$BE,$CE
            !BYTE $BC,$CE,$BE,$BE,$BC,$89,$1C,$CE
            !BYTE $17,$17,$8E,$DE,$1E,$1E,$17,$DE
            !BYTE $12,$28,$2E,$9E,$6E,$6E,$CE,$CE
mcbm_tile_pal_0_5
            !BYTE $DE,$DE,$6C,$8B,$8B,$8B,$8B,$6C
            !BYTE $4C,$6E,$9C,$4C,$4C,$8B,$DE,$6C
            !BYTE $8B,$6C,$8B,$4C,$5D,$5D,$8B,$59
            !BYTE $5D,$CE,$6C,$4C,$8B,$14,$26,$26
            !BYTE $6E,$1B,$26,$16,$6E,$1B,$6E,$16
            !BYTE $6E,$18,$18,$1B,$6E,$6E,$6E,$6E
            !BYTE $8B,$8B,$8B,$6C,$9E,$89,$16,$6E
            !BYTE $9C,$16,$6E,$6E,$15,$6C,$BE,$6C
            !BYTE $BE,$8B,$15,$58,$48,$48,$48,$4C
            !BYTE $16,$6E,$6E,$4C,$6C,$6C,$6C,$4C
            !BYTE $16,$16,$8B,$3E,$16,$16,$8B,$3E
            !BYTE $16,$16,$8B,$8B,$8B,$8B,$8B,$3E
            !BYTE $28,$6E,$1C,$1C,$18,$18,$18,$18
            !BYTE $18,$18,$8B,$6E,$13,$13,$6E,$69
            !BYTE $18,$8B,$4C,$13,$6E,$6E,$8B,$18
            !BYTE $1E,$6E,$12,$9E,$28,$6E,$6E,$12
            !BYTE $8B,$48,$BC,$56,$CE,$59,$26,$15
            !BYTE $9E,$59,$18,$6E,$16,$16,$16,$18
            !BYTE $6E,$8B,$18,$8B,$28,$6E,$28,$28
            !BYTE $BE,$8B,$3E,$6E,$18,$28,$13,$16
            !BYTE $28,$28,$59,$16,$6E,$6E,$17,$6E
            !BYTE $6E,$CE,$17,$6E,$8B,$8B,$8B,$18
            !BYTE $8B,$8B,$8B,$8B,$8B,$16,$4C,$59
            !BYTE $BE,$BE,$8E,$CE,$BE,$BE,$8E,$CE
            !BYTE $BE,$BE,$8E,$8B,$1C,$1B,$5E,$5E
            !BYTE $1E,$18,$CE,$BE,$36,$89,$CE,$CE
            !BYTE $59,$59,$59,$19,$9C,$9C,$CE,$5D
            !BYTE $19,$19,$9E,$15,$9E,$16,$9E,$59
            !BYTE $19,$59,$19,$CE,$BC,$59,$CE,$BE
            !BYTE $CE,$59,$CE,$BE,$BE,$BE,$CE,$1B
            !BYTE $7E,$17,$8E,$DE,$DE,$17,$17,$DE
            !BYTE $DE,$17,$28,$9E,$36,$36,$CE,$18
mcbm_tile_pal_0_6
            !BYTE $DE,$DE,$1E,$6E,$1E,$4B,$4B,$1E
            !BYTE $1E,$6E,$1E,$6E,$1E,$59,$DE,$1E
            !BYTE $6E,$4B,$6E,$4B,$48,$45,$45,$12
            !BYTE $56,$1E,$1E,$6E,$DE,$16,$68,$68
            !BYTE $6E,$13,$68,$6E,$6E,$36,$1E,$6E
            !BYTE $DE,$69,$69,$8E,$16,$6E,$6E,$8E
            !BYTE $1E,$19,$CE,$6B,$1E,$13,$6E,$DE
            !BYTE $1E,$6E,$6E,$16,$6C,$56,$14,$6E
            !BYTE $4B,$14,$59,$59,$13,$16,$16,$13
            !BYTE $13,$13,$13,$13,$1E,$1E,$1E,$13
            !BYTE $4B,$68,$6E,$6E,$4B,$16,$6E,$6E
            !BYTE $4B,$16,$4B,$6E,$DE,$DE,$DE,$6E
            !BYTE $6E,$12,$1C,$CE,$18,$18,$18,$18
            !BYTE $4B,$1B,$1B,$16,$6E,$6E,$6E,$18
            !BYTE $2B,$18,$1E,$89,$6E,$6E,$4B,$2B
            !BYTE $6E,$12,$9E,$28,$6E,$12,$6E,$28
            !BYTE $48,$1E,$BE,$6E,$CE,$1C,$26,$15
            !BYTE $59,$59,$26,$18,$16,$16,$16,$26
            !BYTE $4B,$1E,$4B,$16,$17,$18,$89,$18
            !BYTE $18,$1B,$DE,$6E,$8E,$DE,$16,$6E
            !BYTE $89,$89,$89,$6E,$13,$13,$1E,$28
            !BYTE $6E,$CE,$1E,$18,$6E,$6E,$6E,$26
            !BYTE $4B,$4B,$4B,$4B,$4B,$4B,$4B,$12
            !BYTE $8E,$BE,$BE,$4B,$8E,$BE,$BE,$1E
            !BYTE $89,$8E,$8E,$BE,$CE,$1C,$DE,$DE
            !BYTE $BC,$1B,$BE,$9B,$6E,$89,$89,$5C
            !BYTE $59,$89,$59,$19,$1C,$19,$BC,$17
            !BYTE $59,$59,$59,$59,$59,$16,$59,$15
            !BYTE $59,$59,$59,$CE,$BC,$BC,$BE,$CE
            !BYTE $59,$BC,$BE,$BE,$BE,$8E,$CE,$CE
            !BYTE $DE,$DE,$18,$DE,$DE,$DE,$78,$DE
            !BYTE $DE,$28,$28,$9E,$6E,$6E,$BC,$1B
mcbm_tile_pal_0_7
            !BYTE $DE,$DE,$8C,$46,$8C,$4B,$4B,$8C
            !BYTE $8C,$6E,$8C,$6B,$8C,$59,$DE,$8C
            !BYTE $46,$4B,$46,$4B,$48,$45,$45,$28
            !BYTE $56,$8C,$8C,$6B,$4B,$6E,$26,$26
            !BYTE $16,$78,$26,$16,$16,$16,$6E,$16
            !BYTE $3E,$89,$89,$8E,$6E,$6E,$6E,$18
            !BYTE $8C,$9C,$18,$BE,$8C,$18,$6E,$3E
            !BYTE $8C,$6E,$6E,$6E,$6C,$56,$14,$14
            !BYTE $4E,$14,$59,$58,$6E,$16,$16,$6E
            !BYTE $6E,$6E,$6E,$6E,$8C,$8C,$8C,$6E
            !BYTE $4B,$68,$6B,$1E,$4B,$16,$6B,$6E
            !BYTE $4B,$6E,$1E,$6B,$BE,$BE,$BE,$1E
            !BYTE $6E,$28,$1C,$1C,$18,$18,$18,$18
            !BYTE $13,$13,$4B,$6E,$6E,$6E,$6E,$68
            !BYTE $12,$4B,$8C,$1C,$6E,$6E,$4B,$2E
            !BYTE $36,$28,$9E,$12,$6E,$28,$6E,$12
            !BYTE $48,$8C,$BC,$56,$BE,$9E,$2E,$15
            !BYTE $59,$59,$12,$6E,$13,$13,$13,$27
            !BYTE $1B,$1B,$6E,$1B,$17,$16,$18,$17
            !BYTE $18,$BE,$3E,$6E,$BE,$2E,$6E,$16
            !BYTE $59,$59,$59,$6E,$6E,$6E,$13,$6E
            !BYTE $6E,$CE,$8C,$6E,$6B,$6B,$6B,$27
            !BYTE $4B,$4B,$4B,$4B,$4B,$4B,$4B,$28
            !BYTE $9E,$BE,$BE,$4B,$89,$BE,$BE,$8C
            !BYTE $8E,$8E,$8E,$4B,$1C,$DE,$5D,$5D
            !BYTE $1B,$1B,$CE,$BE,$36,$89,$CE,$CE
            !BYTE $59,$59,$18,$59,$9C,$CE,$CE,$5D
            !BYTE $19,$5E,$19,$15,$19,$6E,$9E,$59
            !BYTE $59,$59,$5E,$CE,$BC,$CE,$CE,$CE
            !BYTE $59,$59,$BE,$BE,$BE,$89,$CE,$DE
            !BYTE $17,$DE,$8E,$DE,$17,$DE,$17,$DE
            !BYTE $DE,$17,$28,$9E,$36,$36,$1B,$1B
mcbm_tile_pal_0_8
            !BYTE $DE,$DE,$4C,$4B,$BC,$4B,$4B,$4C
            !BYTE $4C,$6E,$4C,$1B,$4C,$4B,$DE,$4C
            !BYTE $4B,$1B,$4B,$1B,$45,$4D,$48,$59
            !BYTE $BE,$4C,$4C,$1B,$4B,$16,$26,$26
            !BYTE $16,$1B,$26,$16,$16,$1B,$6E,$16
            !BYTE $6E,$18,$18,$6E,$16,$6E,$6E,$6E
            !BYTE $9E,$CE,$4B,$1B,$39,$68,$6E,$6E
            !BYTE $4C,$6E,$16,$16,$56,$6E,$14,$14
            !BYTE $14,$4B,$1C,$CE,$4C,$4C,$4C,$4C
            !BYTE $6E,$6E,$6E,$4C,$4C,$4C,$4C,$4C
            !BYTE $BE,$6E,$4B,$3E,$1B,$6E,$4B,$13
            !BYTE $1B,$6E,$3B,$4B,$4B,$4B,$4B,$3E
            !BYTE $6E,$6E,$1C,$1C,$89,$89,$89,$89
            !BYTE $3E,$3E,$4B,$16,$13,$13,$6E,$68
            !BYTE $12,$4B,$4C,$1C,$6E,$6E,$4B,$12
            !BYTE $6B,$6E,$9E,$9E,$6E,$6E,$6E,$9E
            !BYTE $48,$48,$BE,$15,$1C,$9E,$26,$56
            !BYTE $9E,$59,$12,$6E,$6E,$6E,$6E,$12
            !BYTE $1E,$48,$6E,$48,$28,$6E,$18,$28
            !BYTE $18,$48,$6E,$16,$BE,$28,$6E,$16
            !BYTE $59,$59,$59,$6E,$16,$16,$7C,$6E
            !BYTE $6E,$CE,$8C,$6E,$14,$14,$14,$12
            !BYTE $4B,$4B,$4B,$4B,$4B,$1B,$1B,$59
            !BYTE $BE,$BE,$8E,$1B,$BE,$BE,$8E,$4C
            !BYTE $8E,$8E,$89,$4B,$1C,$1B,$15,$15
            !BYTE $1B,$1B,$1C,$1B,$6E,$8E,$CE,$59
            !BYTE $59,$59,$89,$59,$15,$1C,$CE,$17
            !BYTE $59,$59,$59,$59,$59,$6E,$59,$89
            !BYTE $59,$59,$59,$CE,$CE,$CE,$CE,$CE
            !BYTE $CE,$59,$BE,$BE,$BE,$BE,$1C,$1B
            !BYTE $8E,$DE,$18,$DE,$DE,$DE,$17,$DE
            !BYTE $DE,$28,$28,$9E,$6E,$6E,$1B,$1B
mcbm_tile_pal_1_0
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$08,$0F,$0F
            !BYTE $09,$0F,$0F,$09,$0F,$06,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$08,$08,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$09,$0F,$0E,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$08,$08,$08,$08
            !BYTE $0F,$0F,$0F,$08,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$08,$0F,$0F
            !BYTE $06,$0F,$0F,$0F,$08,$08,$0F,$0F
            !BYTE $0F,$0F,$0F,$0D,$0E,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$06,$06,$06,$0F
            !BYTE $0F,$0F,$0F,$0F,$08,$0F,$08,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$08,$08,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0B,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0D,$0C,$0F,$0F,$08
            !BYTE $0E,$0E,$0E,$0F,$0E,$0E,$0E,$0D
            !BYTE $0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0F,$0F
mcbm_tile_pal_1_1
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0C,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $09,$0F,$0F,$0F,$0F,$0F,$0F,$09
            !BYTE $0F,$08,$0F,$0F,$0F,$08,$08,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0C,$0F,$0F
            !BYTE $0F,$0F,$0F,$0E,$0C,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0C,$0F,$0F,$0F,$0C
            !BYTE $0E,$0E,$0E,$0C,$0F,$0F,$0F,$0E
            !BYTE $06,$06,$0F,$0F,$06,$0F,$0F,$0F
            !BYTE $06,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$08,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0C,$0F,$06,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$08,$08,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0D,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$07,$07,$07,$0F
            !BYTE $0F,$0F,$0F,$0F,$08,$0E,$0E,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $06,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$06,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0D,$0F
            !BYTE $0F,$0F,$0F,$0E,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0E,$0F,$0F,$0D,$0E,$0F,$0E,$0F
            !BYTE $0F,$0E,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $08,$0F,$0F,$0F,$0F,$0F,$08,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0F,$0F
mcbm_tile_pal_1_2
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0C,$0F,$0F,$0F,$0C,$0F,$0F
            !BYTE $0F,$09,$09,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0C,$0F
            !BYTE $09,$0C,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0E,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0E,$0E,$0F,$0F,$0F,$0F,$0F
            !BYTE $06,$06,$0F,$0F,$0E,$06,$0F,$0F
            !BYTE $0F,$06,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $08,$0F,$0F,$0F,$09,$09,$0F,$09
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0C
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$08,$0F,$0F,$0F
            !BYTE $0F,$0C,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0C,$0F,$08,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $08,$08,$0F,$0F,$0C,$0C,$0F,$0F
            !BYTE $0F,$0F,$0C,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0C,$0F,$0F
            !BYTE $0F,$0D,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$09,$0D,$0C,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0D
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0C
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0D
mcbm_tile_pal_1_3
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$08,$07,$07
            !BYTE $0F,$0F,$07,$09,$09,$0F,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0C,$0E
            !BYTE $0F,$0F,$0F,$0F,$0F,$0D,$0F,$0B
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0E,$0F,$0F,$0F,$0E,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0B,$0B,$08,$0F,$0F,$0F,$0E
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0B,$0F
            !BYTE $0F,$0F,$08,$0F,$0F,$08,$0F,$0F
            !BYTE $0F,$0F,$0F,$0D,$0F,$0F,$0F,$06
            !BYTE $0F,$0C,$0F,$0F,$07,$07,$07,$09
            !BYTE $0E,$0E,$09,$0E,$08,$0F,$08,$08
            !BYTE $0F,$0F,$0F,$0E,$0F,$0F,$0F,$0E
            !BYTE $0F,$0F,$0F,$0E,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$09
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0D,$0F
            !BYTE $0F,$0F,$0F,$0E,$0F,$0F,$0F,$0F
            !BYTE $0F,$09,$09,$0D,$0F,$0F,$0F,$0F
            !BYTE $0F,$0E,$0E,$0D,$0F,$0E,$0E,$0F
            !BYTE $0F,$0E,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$08,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0F,$0F
mcbm_tile_pal_1_4
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0C,$0F,$0F,$0F,$0F
            !BYTE $0F,$0C,$0F,$0C,$0F,$0F,$0F,$0F
            !BYTE $0D,$0F,$0F,$0C,$0F,$0F,$0F,$0F
            !BYTE $09,$0F,$08,$0F,$09,$0F,$0F,$09
            !BYTE $0F,$0F,$0F,$0F,$0E,$08,$08,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0C,$09,$0E
            !BYTE $0F,$09,$08,$0E,$0C,$0D,$0F,$0C
            !BYTE $0F,$0F,$0F,$08,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0E,$0E,$0F,$0F,$0E,$0F,$0F,$0F
            !BYTE $0E,$0F,$0F,$0F,$0B,$0B,$0E,$0F
            !BYTE $0F,$0F,$0D,$0D,$0F,$0F,$0F,$0F
            !BYTE $0B,$0B,$0F,$08,$06,$06,$0F,$0E
            !BYTE $0F,$0F,$0F,$0C,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$08,$08,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0E,$0D,$0E,$0F,$0F,$0D
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$09
            !BYTE $0F,$0B,$09,$0B,$08,$0E,$08,$08
            !BYTE $0F,$0B,$0F,$0E,$09,$0F,$0E,$0E
            !BYTE $0F,$0F,$0F,$0E,$0F,$0F,$0E,$0F
            !BYTE $0F,$0F,$0F,$0F,$0D,$0D,$0D,$09
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0C,$0F
            !BYTE $0F,$0F,$0F,$0C,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0D,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0F,$09
            !BYTE $0E,$0E,$0E,$0F,$0E,$0E,$0E,$0D
            !BYTE $0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $08,$08,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $08,$0F,$0F,$0F,$0F,$0F,$0F,$0F
mcbm_tile_pal_1_5
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$08,$0F,$0F
            !BYTE $0F,$0C,$0F,$08,$0F,$0C,$0F,$0F
            !BYTE $0F,$09,$09,$0C,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$08,$0F
            !BYTE $0F,$08,$0F,$0F,$0D,$0F,$0F,$0F
            !BYTE $0F,$0F,$09,$0F,$0C,$0C,$0C,$0F
            !BYTE $0E,$0F,$0F,$0F,$0E,$0E,$0E,$0F
            !BYTE $0E,$0E,$0F,$0F,$0E,$0E,$0F,$0F
            !BYTE $0E,$0E,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$09,$09,$09,$09
            !BYTE $0B,$0B,$0F,$0F,$0F,$0F,$0F,$0E
            !BYTE $0B,$0F,$0F,$0C,$0F,$0F,$0F,$0B
            !BYTE $0F,$0F,$08,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0D
            !BYTE $0F,$0F,$0F,$0F,$07,$07,$07,$09
            !BYTE $0F,$0F,$09,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$09,$0F,$0E,$0E
            !BYTE $0F,$0F,$0F,$0E,$0F,$0F,$0C,$0F
            !BYTE $0F,$0F,$0C,$0F,$0F,$0F,$0F,$09
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0C,$0F,$0F
            !BYTE $0F,$0C,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0D,$0F,$0F,$0F,$0F
            !BYTE $0E,$0E,$0F,$0D,$0F,$0E,$0F,$0F
            !BYTE $0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0C
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$08,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0F,$0C
mcbm_tile_pal_1_6
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0B,$0D,$0D,$08
            !BYTE $0E,$0F,$0F,$0F,$0F,$0E,$0F,$0F
            !BYTE $0F,$06,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0C,$0F,$0F,$0F,$09,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0E,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0E,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0E,$0F,$0F,$0F,$0E,$0F,$0F
            !BYTE $0F,$0E,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$09,$09,$09,$09
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$09
            !BYTE $0F,$0B,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$08,$0F,$0F
            !BYTE $0B,$0F,$0F,$0F,$0F,$0F,$0F,$06
            !BYTE $0F,$0F,$0E,$0F,$0E,$0E,$0E,$0F
            !BYTE $0F,$0F,$0E,$0E,$08,$09,$0F,$0E
            !BYTE $09,$0E,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0C,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0D,$0F,$0C,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0F,$0D
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0C
mcbm_tile_pal_1_7
            !BYTE $0F,$0F,$0F,$0B,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0B,$0F,$0F
            !BYTE $0B,$0F,$0B,$0F,$0B,$0D,$0D,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0B,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0B,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0B
            !BYTE $0F,$0E,$0F,$0F,$0F,$0E,$0E,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0E,$0E,$0F,$0F,$0E,$0E,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$09,$09,$09,$09
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0E
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$08,$0F,$0F,$0F,$08
            !BYTE $0B,$0F,$0F,$0F,$0F,$0F,$0F,$0D
            !BYTE $0F,$0F,$0F,$0F,$06,$06,$06,$08
            !BYTE $0E,$0E,$0F,$0E,$08,$0E,$09,$08
            !BYTE $09,$0F,$0F,$0F,$0F,$0F,$0F,$0E
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0E,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0E,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0C,$0C,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$09,$0F,$0F,$0F,$0F,$0F
            !BYTE $0E,$0F,$0E,$0D,$0E,$0F,$0F,$0F
            !BYTE $0E,$0E,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $08,$0F,$0F,$0F,$0F,$0F,$08,$0F
            !BYTE $0F,$08,$0F,$0F,$0F,$0F,$0C,$0C
mcbm_tile_pal_1_8
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0C,$0F,$0F,$0F,$0F
            !BYTE $0F,$0C,$0F,$0C,$0D,$0F,$0B,$0F
            !BYTE $0F,$0F,$0F,$0C,$0F,$0E,$0F,$0F
            !BYTE $0F,$0C,$0F,$0F,$0F,$0C,$0F,$0F
            !BYTE $0F,$09,$09,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0C,$0F,$0C,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0C
            !BYTE $0E,$0E,$0F,$0F,$0E,$0E,$0E,$0E
            !BYTE $0F,$0F,$0F,$0E,$0F,$0F,$0F,$0E
            !BYTE $0F,$0F,$0F,$0F,$0E,$0F,$0F,$06
            !BYTE $0E,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$06,$06,$0F,$0E
            !BYTE $08,$0F,$0F,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0B,$0F,$0F,$06,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$08,$0F,$0F,$0F,$0F,$08
            !BYTE $0F,$0B,$0F,$0B,$0F,$0F,$09,$0F
            !BYTE $09,$0B,$0F,$0F,$0F,$0F,$0F,$0E
            !BYTE $0F,$0F,$0F,$0F,$0E,$0E,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0B,$0B,$0B,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0E,$0C,$0F
            !BYTE $0F,$0F,$0F,$0C,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0C,$0D,$0D
            !BYTE $0C,$0C,$0F,$0E,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0C,$0F,$0F,$08
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0C
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$08,$0F
            !BYTE $0F,$0F,$0F,$0F,$0F,$0F,$0C,$0C

mcbm_tile_lo
            !BYTE <mcbm_tile_00,<mcbm_tile_01,<mcbm_tile_02,<mcbm_tile_03
            !BYTE <mcbm_tile_04,<mcbm_tile_05,<mcbm_tile_06,<mcbm_tile_07
            !BYTE <mcbm_tile_08,<mcbm_tile_09,<mcbm_tile_0A,<mcbm_tile_0B
            !BYTE <mcbm_tile_0C,<mcbm_tile_0D,<mcbm_tile_0E,<mcbm_tile_0F
            !BYTE <mcbm_tile_10,<mcbm_tile_11,<mcbm_tile_12,<mcbm_tile_13
            !BYTE <mcbm_tile_14,<mcbm_tile_15,<mcbm_tile_16,<mcbm_tile_17
            !BYTE <mcbm_tile_18,<mcbm_tile_19,<mcbm_tile_1A,<mcbm_tile_1B
            !BYTE <mcbm_tile_1C,<mcbm_tile_1D,<mcbm_tile_1E,<mcbm_tile_1F
            !BYTE <mcbm_tile_20,<mcbm_tile_21,<mcbm_tile_22,<mcbm_tile_23
            !BYTE <mcbm_tile_24,<mcbm_tile_25,<mcbm_tile_26,<mcbm_tile_27
            !BYTE <mcbm_tile_28,<mcbm_tile_29,<mcbm_tile_2A,<mcbm_tile_2B
            !BYTE <mcbm_tile_2C,<mcbm_tile_2D,<mcbm_tile_2E,<mcbm_tile_2F
            !BYTE <mcbm_tile_30,<mcbm_tile_31,<mcbm_tile_32,<mcbm_tile_33
            !BYTE <mcbm_tile_34,<mcbm_tile_35,<mcbm_tile_36,<mcbm_tile_37
            !BYTE <mcbm_tile_38,<mcbm_tile_39,<mcbm_tile_3A,<mcbm_tile_3B
            !BYTE <mcbm_tile_3C,<mcbm_tile_3D,<mcbm_tile_3E,<mcbm_tile_3F
            !BYTE <mcbm_tile_40,<mcbm_tile_41,<mcbm_tile_42,<mcbm_tile_43
            !BYTE <mcbm_tile_44,<mcbm_tile_45,<mcbm_tile_46,<mcbm_tile_47
            !BYTE <mcbm_tile_48,<mcbm_tile_49,<mcbm_tile_4A,<mcbm_tile_4B
            !BYTE <mcbm_tile_4C,<mcbm_tile_4D,<mcbm_tile_4E,<mcbm_tile_4F
            !BYTE <mcbm_tile_50,<mcbm_tile_51,<mcbm_tile_52,<mcbm_tile_53
            !BYTE <mcbm_tile_54,<mcbm_tile_55,<mcbm_tile_56,<mcbm_tile_57
            !BYTE <mcbm_tile_58,<mcbm_tile_59,<mcbm_tile_5A,<mcbm_tile_5B
            !BYTE <mcbm_tile_5C,<mcbm_tile_5D,<mcbm_tile_5E,<mcbm_tile_5F
            !BYTE <mcbm_tile_60,<mcbm_tile_61,<mcbm_tile_62,<mcbm_tile_63
            !BYTE <mcbm_tile_64,<mcbm_tile_65,<mcbm_tile_66,<mcbm_tile_67
            !BYTE <mcbm_tile_68,<mcbm_tile_69,<mcbm_tile_6A,<mcbm_tile_6B
            !BYTE <mcbm_tile_6C,<mcbm_tile_6D,<mcbm_tile_6E,<mcbm_tile_6F
            !BYTE <mcbm_tile_70,<mcbm_tile_71,<mcbm_tile_72,<mcbm_tile_73
            !BYTE <mcbm_tile_74,<mcbm_tile_75,<mcbm_tile_76,<mcbm_tile_77
            !BYTE <mcbm_tile_78,<mcbm_tile_79,<mcbm_tile_7A,<mcbm_tile_7B
            !BYTE <mcbm_tile_7C,<mcbm_tile_7D,<mcbm_tile_7E,<mcbm_tile_7F
            !BYTE <mcbm_tile_80,<mcbm_tile_81,<mcbm_tile_82,<mcbm_tile_83
            !BYTE <mcbm_tile_84,<mcbm_tile_85,<mcbm_tile_86,<mcbm_tile_87
            !BYTE <mcbm_tile_88,<mcbm_tile_89,<mcbm_tile_8A,<mcbm_tile_8B
            !BYTE <mcbm_tile_8C,<mcbm_tile_8D,<mcbm_tile_8E,<mcbm_tile_8F
            !BYTE <mcbm_tile_90,<mcbm_tile_91,<mcbm_tile_92,<mcbm_tile_93
            !BYTE <mcbm_tile_94,<mcbm_tile_95,<mcbm_tile_96,<mcbm_tile_97
            !BYTE <mcbm_tile_98,<mcbm_tile_99,<mcbm_tile_9A,<mcbm_tile_9B
            !BYTE <mcbm_tile_9C,<mcbm_tile_9D,<mcbm_tile_9E,<mcbm_tile_9F
            !BYTE <mcbm_tile_A0,<mcbm_tile_A1,<mcbm_tile_A2,<mcbm_tile_A3
            !BYTE <mcbm_tile_A4,<mcbm_tile_A5,<mcbm_tile_A6,<mcbm_tile_A7
            !BYTE <mcbm_tile_A8,<mcbm_tile_A9,<mcbm_tile_AA,<mcbm_tile_AB
            !BYTE <mcbm_tile_AC,<mcbm_tile_AD,<mcbm_tile_AE,<mcbm_tile_AF
            !BYTE <mcbm_tile_B0,<mcbm_tile_B1,<mcbm_tile_B2,<mcbm_tile_B3
            !BYTE <mcbm_tile_B4,<mcbm_tile_B5,<mcbm_tile_B6,<mcbm_tile_B7
            !BYTE <mcbm_tile_B8,<mcbm_tile_B9,<mcbm_tile_BA,<mcbm_tile_BB
            !BYTE <mcbm_tile_BC,<mcbm_tile_BD,<mcbm_tile_BE,<mcbm_tile_BF
            !BYTE <mcbm_tile_C0,<mcbm_tile_C1,<mcbm_tile_C2,<mcbm_tile_C3
            !BYTE <mcbm_tile_C4,<mcbm_tile_C5,<mcbm_tile_C6,<mcbm_tile_C7
            !BYTE <mcbm_tile_C8,<mcbm_tile_C9,<mcbm_tile_CA,<mcbm_tile_CB
            !BYTE <mcbm_tile_CC,<mcbm_tile_CD,<mcbm_tile_CE,<mcbm_tile_CF
            !BYTE <mcbm_tile_D0,<mcbm_tile_D1,<mcbm_tile_D2,<mcbm_tile_D3
            !BYTE <mcbm_tile_D4,<mcbm_tile_D5,<mcbm_tile_D6,<mcbm_tile_D7
            !BYTE <mcbm_tile_D8,<mcbm_tile_D9,<mcbm_tile_DA,<mcbm_tile_DB
            !BYTE <mcbm_tile_DC,<mcbm_tile_DD,<mcbm_tile_DE,<mcbm_tile_DF
            !BYTE <mcbm_tile_E0,<mcbm_tile_E1,<mcbm_tile_E2,<mcbm_tile_E3
            !BYTE <mcbm_tile_E4,<mcbm_tile_E5,<mcbm_tile_E6,<mcbm_tile_E7
            !BYTE <mcbm_tile_E8,<mcbm_tile_E9,<mcbm_tile_EA,<mcbm_tile_EB
            !BYTE <mcbm_tile_EC,<mcbm_tile_ED,<mcbm_tile_EE,<mcbm_tile_EF
            !BYTE <mcbm_tile_F0,<mcbm_tile_F1,<mcbm_tile_F2,<mcbm_tile_F3
            !BYTE <mcbm_tile_F4,<mcbm_tile_F5,<mcbm_tile_F6,<mcbm_tile_F7
            !BYTE <mcbm_tile_F8,<mcbm_tile_F9,<mcbm_tile_FA,<mcbm_tile_FB
            !BYTE <mcbm_tile_FC,<mcbm_tile_FD,<mcbm_tile_FE,<mcbm_tile_FF
mcbm_tile_hi
            !BYTE >mcbm_tile_00,>mcbm_tile_01,>mcbm_tile_02,>mcbm_tile_03
            !BYTE >mcbm_tile_04,>mcbm_tile_05,>mcbm_tile_06,>mcbm_tile_07
            !BYTE >mcbm_tile_08,>mcbm_tile_09,>mcbm_tile_0A,>mcbm_tile_0B
            !BYTE >mcbm_tile_0C,>mcbm_tile_0D,>mcbm_tile_0E,>mcbm_tile_0F
            !BYTE >mcbm_tile_10,>mcbm_tile_11,>mcbm_tile_12,>mcbm_tile_13
            !BYTE >mcbm_tile_14,>mcbm_tile_15,>mcbm_tile_16,>mcbm_tile_17
            !BYTE >mcbm_tile_18,>mcbm_tile_19,>mcbm_tile_1A,>mcbm_tile_1B
            !BYTE >mcbm_tile_1C,>mcbm_tile_1D,>mcbm_tile_1E,>mcbm_tile_1F
            !BYTE >mcbm_tile_20,>mcbm_tile_21,>mcbm_tile_22,>mcbm_tile_23
            !BYTE >mcbm_tile_24,>mcbm_tile_25,>mcbm_tile_26,>mcbm_tile_27
            !BYTE >mcbm_tile_28,>mcbm_tile_29,>mcbm_tile_2A,>mcbm_tile_2B
            !BYTE >mcbm_tile_2C,>mcbm_tile_2D,>mcbm_tile_2E,>mcbm_tile_2F
            !BYTE >mcbm_tile_30,>mcbm_tile_31,>mcbm_tile_32,>mcbm_tile_33
            !BYTE >mcbm_tile_34,>mcbm_tile_35,>mcbm_tile_36,>mcbm_tile_37
            !BYTE >mcbm_tile_38,>mcbm_tile_39,>mcbm_tile_3A,>mcbm_tile_3B
            !BYTE >mcbm_tile_3C,>mcbm_tile_3D,>mcbm_tile_3E,>mcbm_tile_3F
            !BYTE >mcbm_tile_40,>mcbm_tile_41,>mcbm_tile_42,>mcbm_tile_43
            !BYTE >mcbm_tile_44,>mcbm_tile_45,>mcbm_tile_46,>mcbm_tile_47
            !BYTE >mcbm_tile_48,>mcbm_tile_49,>mcbm_tile_4A,>mcbm_tile_4B
            !BYTE >mcbm_tile_4C,>mcbm_tile_4D,>mcbm_tile_4E,>mcbm_tile_4F
            !BYTE >mcbm_tile_50,>mcbm_tile_51,>mcbm_tile_52,>mcbm_tile_53
            !BYTE >mcbm_tile_54,>mcbm_tile_55,>mcbm_tile_56,>mcbm_tile_57
            !BYTE >mcbm_tile_58,>mcbm_tile_59,>mcbm_tile_5A,>mcbm_tile_5B
            !BYTE >mcbm_tile_5C,>mcbm_tile_5D,>mcbm_tile_5E,>mcbm_tile_5F
            !BYTE >mcbm_tile_60,>mcbm_tile_61,>mcbm_tile_62,>mcbm_tile_63
            !BYTE >mcbm_tile_64,>mcbm_tile_65,>mcbm_tile_66,>mcbm_tile_67
            !BYTE >mcbm_tile_68,>mcbm_tile_69,>mcbm_tile_6A,>mcbm_tile_6B
            !BYTE >mcbm_tile_6C,>mcbm_tile_6D,>mcbm_tile_6E,>mcbm_tile_6F
            !BYTE >mcbm_tile_70,>mcbm_tile_71,>mcbm_tile_72,>mcbm_tile_73
            !BYTE >mcbm_tile_74,>mcbm_tile_75,>mcbm_tile_76,>mcbm_tile_77
            !BYTE >mcbm_tile_78,>mcbm_tile_79,>mcbm_tile_7A,>mcbm_tile_7B
            !BYTE >mcbm_tile_7C,>mcbm_tile_7D,>mcbm_tile_7E,>mcbm_tile_7F
            !BYTE >mcbm_tile_80,>mcbm_tile_81,>mcbm_tile_82,>mcbm_tile_83
            !BYTE >mcbm_tile_84,>mcbm_tile_85,>mcbm_tile_86,>mcbm_tile_87
            !BYTE >mcbm_tile_88,>mcbm_tile_89,>mcbm_tile_8A,>mcbm_tile_8B
            !BYTE >mcbm_tile_8C,>mcbm_tile_8D,>mcbm_tile_8E,>mcbm_tile_8F
            !BYTE >mcbm_tile_90,>mcbm_tile_91,>mcbm_tile_92,>mcbm_tile_93
            !BYTE >mcbm_tile_94,>mcbm_tile_95,>mcbm_tile_96,>mcbm_tile_97
            !BYTE >mcbm_tile_98,>mcbm_tile_99,>mcbm_tile_9A,>mcbm_tile_9B
            !BYTE >mcbm_tile_9C,>mcbm_tile_9D,>mcbm_tile_9E,>mcbm_tile_9F
            !BYTE >mcbm_tile_A0,>mcbm_tile_A1,>mcbm_tile_A2,>mcbm_tile_A3
            !BYTE >mcbm_tile_A4,>mcbm_tile_A5,>mcbm_tile_A6,>mcbm_tile_A7
            !BYTE >mcbm_tile_A8,>mcbm_tile_A9,>mcbm_tile_AA,>mcbm_tile_AB
            !BYTE >mcbm_tile_AC,>mcbm_tile_AD,>mcbm_tile_AE,>mcbm_tile_AF
            !BYTE >mcbm_tile_B0,>mcbm_tile_B1,>mcbm_tile_B2,>mcbm_tile_B3
            !BYTE >mcbm_tile_B4,>mcbm_tile_B5,>mcbm_tile_B6,>mcbm_tile_B7
            !BYTE >mcbm_tile_B8,>mcbm_tile_B9,>mcbm_tile_BA,>mcbm_tile_BB
            !BYTE >mcbm_tile_BC,>mcbm_tile_BD,>mcbm_tile_BE,>mcbm_tile_BF
            !BYTE >mcbm_tile_C0,>mcbm_tile_C1,>mcbm_tile_C2,>mcbm_tile_C3
            !BYTE >mcbm_tile_C4,>mcbm_tile_C5,>mcbm_tile_C6,>mcbm_tile_C7
            !BYTE >mcbm_tile_C8,>mcbm_tile_C9,>mcbm_tile_CA,>mcbm_tile_CB
            !BYTE >mcbm_tile_CC,>mcbm_tile_CD,>mcbm_tile_CE,>mcbm_tile_CF
            !BYTE >mcbm_tile_D0,>mcbm_tile_D1,>mcbm_tile_D2,>mcbm_tile_D3
            !BYTE >mcbm_tile_D4,>mcbm_tile_D5,>mcbm_tile_D6,>mcbm_tile_D7
            !BYTE >mcbm_tile_D8,>mcbm_tile_D9,>mcbm_tile_DA,>mcbm_tile_DB
            !BYTE >mcbm_tile_DC,>mcbm_tile_DD,>mcbm_tile_DE,>mcbm_tile_DF
            !BYTE >mcbm_tile_E0,>mcbm_tile_E1,>mcbm_tile_E2,>mcbm_tile_E3
            !BYTE >mcbm_tile_E4,>mcbm_tile_E5,>mcbm_tile_E6,>mcbm_tile_E7
            !BYTE >mcbm_tile_E8,>mcbm_tile_E9,>mcbm_tile_EA,>mcbm_tile_EB
            !BYTE >mcbm_tile_EC,>mcbm_tile_ED,>mcbm_tile_EE,>mcbm_tile_EF
            !BYTE >mcbm_tile_F0,>mcbm_tile_F1,>mcbm_tile_F2,>mcbm_tile_F3
            !BYTE >mcbm_tile_F4,>mcbm_tile_F5,>mcbm_tile_F6,>mcbm_tile_F7
            !BYTE >mcbm_tile_F8,>mcbm_tile_F9,>mcbm_tile_FA,>mcbm_tile_FB
            !BYTE >mcbm_tile_FC,>mcbm_tile_FD,>mcbm_tile_FE,>mcbm_tile_FF

DISP_MCBM_MAP:
  LDA #15   ;menu beep
  JSR C_PLAY_SOUND  ;SOUND PLAY
  ;pause clock
  LDA #0
  STA CLOCK_ACTIVE
  STA MCBM_MAP_SHOW_ROBOTS
  JSR C_CLEAR_KEY_BUFFER
  JSR C_CLEAR_SNES_PAD
  JSR INIT_MCBM_MAP
DMM1:
  JSR RENDER_MCBM_MAP_UPDATE
  JSR C_SNES_CONTROLER_READ
  LDA NEW_B
  CMP #0
  BEQ +
  JMP RETURN_TO_GAME
+:
  LDA NEW_A
  CMP #0
  BEQ +
  LDA #0
  STA NEW_A
  JMP DMM2
+:
  JSR GET_KEY
  CMP #$00
  BEQ DMM1
  CMP #$88
  BEQ DMM2
RETURN_TO_GAME:
  ; other key hit, resume game
  LDA #15   ;menu beep
  JSR C_PLAY_SOUND  ;SOUND PLAY
  JSR C_CLEAR_SNES_PAD
  JSR C_CLEAR_KEY_BUFFER
  LDA #1
  STA CLOCK_ACTIVE
  JSR FETCH_GAME_SCREEN
  JMP MAIN_GAME_LOOP
DMM2:
  LDA #15   ;menu beep
  JSR C_PLAY_SOUND  ;SOUND PLAY
  JSR C_CLEAR_KEY_BUFFER
  JSR C_CLEAR_SNES_PAD
!IF SHAREWARE = 0 {
  LDA MCBM_MAP_SHOW_ROBOTS
  EOR #1
  STA MCBM_MAP_SHOW_ROBOTS
}
  JMP DMM1

RENDER_MCBM_MAP_UPDATE:
  LDA MCBM_MAP_COUNTER+0
  CMP #0
  BNE ++
  LDA MCBM_MAP_COUNTER+1
  CMP #0
  BNE ++

  +STIW MCBM_MAP_COUNTER, $200
  LDA MCBM_MAP_UNIT_COLOR
  EOR #$FF
  STA MCBM_MAP_UNIT_COLOR

  LDA MCBM_MAP_SHOW_ROBOTS
  BNE +
  JSR RENDER_MCBM_MAP_PLAYER
  RTS
+ JSR RENDER_MCBM_MAP_ROBOTS
  RTS

++ +SUBWI MCBM_MAP_COUNTER, 1
   RTS

RENDER_MCBM_MAP_PLAYER:
  LDA UNIT_LOC_X
  STA $FD
  LDA UNIT_LOC_Y
  STA $FE
  JSR RENDER_MCBM_MAP_UNIT
  RTS

RENDER_MCBM_MAP_ROBOTS:
  LDX #1
- LDA UNIT_TYPE,X
  BEQ +
  LDA UNIT_LOC_X,X
  STA $FD
  LDA UNIT_LOC_Y,X
  STA $FE
  +PHX
  JSR RENDER_MCBM_MAP_UNIT
  +PLX
+ INX
  CPX #28
  BNE -
  RTS

RENDER_MCBM_MAP_UNIT:
  LDX $FE
  LDA MCBM_MAP_ROWL,X
  STA $FB
  LDA MCBM_MAP_ROWH,X
  STA $FC
  LDX $FD
  LDA MCBM_MAP_COL_OFF,X
  CLC
  ADC $FB
  STA $FB
  LDA $FC
  ADC #$00
  STA $FC
  ; ($FB) now points to first byte of map unit tile
  LDA MCBM_MAP_UNIT_COLOR
  AND MCBM_MAP_COL_MASK,X
  STA MCBM_MAP_UNIT_VALUE
  LDA MCBM_MAP_COL_MASK,X
  EOR #$FF
  STA MCBM_MAP_UNIT_MASK
  PHP
  SEI
  +PH MMU ; save MMU
  +STI MMU, %01111111 ; disable ROMs & IO
  LDY #0
  LDA ($FB),Y
  AND MCBM_MAP_UNIT_MASK
  ORA MCBM_MAP_UNIT_VALUE
  STA ($FB),Y
  INY
  STA ($FB),Y
  +PL MMU
  PLP
  RTS

MCBM_MAP_SHOW_ROBOTS !BYTE 0
MCBM_MAP_COUNTER !WORD 0
MCBM_MAP_UNIT_COLOR !BYTE 0 ; $00 for black, $FF for white, toggled
MCBM_MAP_UNIT_MASK !BYTE 0
MCBM_MAP_UNIT_VALUE !BYTE 0

ADDR_BITMAP  = $C000
ADDR_COLOR12 = $E000
ADDR_COLOR3  = $D800

MCBM_MAP_ROWL !BYTE <(ADDR_BITMAP+640+32+ 0*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 0*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 0*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 0*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 1*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 1*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 1*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 1*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 2*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 2*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 2*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 2*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 3*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 3*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 3*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 3*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 4*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 4*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 4*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 4*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 5*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 5*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 5*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 5*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 6*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 6*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 6*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 6*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 7*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 7*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 7*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 7*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 8*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 8*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 8*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 8*320+6)
              !BYTE <(ADDR_BITMAP+640+32+ 9*320+0)
              !BYTE <(ADDR_BITMAP+640+32+ 9*320+2)
              !BYTE <(ADDR_BITMAP+640+32+ 9*320+4)
              !BYTE <(ADDR_BITMAP+640+32+ 9*320+6)
              !BYTE <(ADDR_BITMAP+640+32+10*320+0)
              !BYTE <(ADDR_BITMAP+640+32+10*320+2)
              !BYTE <(ADDR_BITMAP+640+32+10*320+4)
              !BYTE <(ADDR_BITMAP+640+32+10*320+6)
              !BYTE <(ADDR_BITMAP+640+32+11*320+0)
              !BYTE <(ADDR_BITMAP+640+32+11*320+2)
              !BYTE <(ADDR_BITMAP+640+32+11*320+4)
              !BYTE <(ADDR_BITMAP+640+32+11*320+6)
              !BYTE <(ADDR_BITMAP+640+32+12*320+0)
              !BYTE <(ADDR_BITMAP+640+32+12*320+2)
              !BYTE <(ADDR_BITMAP+640+32+12*320+4)
              !BYTE <(ADDR_BITMAP+640+32+12*320+6)
              !BYTE <(ADDR_BITMAP+640+32+13*320+0)
              !BYTE <(ADDR_BITMAP+640+32+13*320+2)
              !BYTE <(ADDR_BITMAP+640+32+13*320+4)
              !BYTE <(ADDR_BITMAP+640+32+13*320+6)
              !BYTE <(ADDR_BITMAP+640+32+14*320+0)
              !BYTE <(ADDR_BITMAP+640+32+14*320+2)
              !BYTE <(ADDR_BITMAP+640+32+14*320+4)
              !BYTE <(ADDR_BITMAP+640+32+14*320+6)
              !BYTE <(ADDR_BITMAP+640+32+15*320+0)
              !BYTE <(ADDR_BITMAP+640+32+15*320+2)
              !BYTE <(ADDR_BITMAP+640+32+15*320+4)
              !BYTE <(ADDR_BITMAP+640+32+15*320+6)

MCBM_MAP_ROWH !BYTE >(ADDR_BITMAP+640+32+ 0*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 0*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 0*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 0*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 1*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 1*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 1*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 1*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 2*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 2*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 2*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 2*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 3*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 3*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 3*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 3*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 4*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 4*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 4*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 4*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 5*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 5*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 5*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 5*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 6*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 6*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 6*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 6*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 7*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 7*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 7*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 7*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 8*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 8*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 8*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 8*320+6)
              !BYTE >(ADDR_BITMAP+640+32+ 9*320+0)
              !BYTE >(ADDR_BITMAP+640+32+ 9*320+2)
              !BYTE >(ADDR_BITMAP+640+32+ 9*320+4)
              !BYTE >(ADDR_BITMAP+640+32+ 9*320+6)
              !BYTE >(ADDR_BITMAP+640+32+10*320+0)
              !BYTE >(ADDR_BITMAP+640+32+10*320+2)
              !BYTE >(ADDR_BITMAP+640+32+10*320+4)
              !BYTE >(ADDR_BITMAP+640+32+10*320+6)
              !BYTE >(ADDR_BITMAP+640+32+11*320+0)
              !BYTE >(ADDR_BITMAP+640+32+11*320+2)
              !BYTE >(ADDR_BITMAP+640+32+11*320+4)
              !BYTE >(ADDR_BITMAP+640+32+11*320+6)
              !BYTE >(ADDR_BITMAP+640+32+12*320+0)
              !BYTE >(ADDR_BITMAP+640+32+12*320+2)
              !BYTE >(ADDR_BITMAP+640+32+12*320+4)
              !BYTE >(ADDR_BITMAP+640+32+12*320+6)
              !BYTE >(ADDR_BITMAP+640+32+13*320+0)
              !BYTE >(ADDR_BITMAP+640+32+13*320+2)
              !BYTE >(ADDR_BITMAP+640+32+13*320+4)
              !BYTE >(ADDR_BITMAP+640+32+13*320+6)
              !BYTE >(ADDR_BITMAP+640+32+14*320+0)
              !BYTE >(ADDR_BITMAP+640+32+14*320+2)
              !BYTE >(ADDR_BITMAP+640+32+14*320+4)
              !BYTE >(ADDR_BITMAP+640+32+14*320+6)
              !BYTE >(ADDR_BITMAP+640+32+15*320+0)
              !BYTE >(ADDR_BITMAP+640+32+15*320+2)
              !BYTE >(ADDR_BITMAP+640+32+15*320+4)
              !BYTE >(ADDR_BITMAP+640+32+15*320+6)

MCBM_MAP_COL_OFF !FILL 4, 0*8
                 !FILL 4, 1*8
                 !FILL 4, 2*8
                 !FILL 4, 3*8
                 !FILL 4, 4*8
                 !FILL 4, 5*8
                 !FILL 4, 6*8
                 !FILL 4, 7*8
                 !FILL 4, 8*8
                 !FILL 4, 9*8
                 !FILL 4,10*8
                 !FILL 4,11*8
                 !FILL 4,12*8
                 !FILL 4,13*8
                 !FILL 4,14*8
                 !FILL 4,15*8
                 !FILL 4,16*8
                 !FILL 4,17*8
                 !FILL 4,18*8
                 !FILL 4,19*8
                 !FILL 4,20*8
                 !FILL 4,21*8
                 !FILL 4,22*8
                 !FILL 4,23*8
                 !FILL 4,24*8
                 !FILL 4,25*8
                 !FILL 4,26*8
                 !FILL 4,27*8
                 !FILL 4,28*8
                 !FILL 4,29*8
                 !FILL 4,30*8
                 !FILL 4,31*8

MCBM_MAP_COL_MASK !FOR I, 32 {
  !BYTE %11000000, %00110000, %00001100, %00000011
}

INIT_MCBM_MAP:
  JSR STASH_GAME_SCREEN

  JSR INIT_LAST_TILE

  PHP
  SEI
  +PH MMU ; save MMU
  +STI MMU, %01111111 ; disable ROMs & IO

  LDA #0
  LDX #249
- STA ADDR_COLOR12+   0,X ; fill COLOR12 memory
  STA ADDR_COLOR12+ 250,X
  STA ADDR_COLOR12+ 500,X
  STA ADDR_COLOR12+ 750,X
  +STI MMU, %01111110
  LDA #0
  STA ADDR_COLOR3 +   0,X ; fill COLOR3 memory
  STA ADDR_COLOR3 + 250,X
  STA ADDR_COLOR3 + 500,X
  STA ADDR_COLOR3 + 750,X
  +STI MMU, %01111111 ; disable ROMs & IO
  LDA #0
  STA ADDR_BITMAP +   0,X ; fill BITMAP memory
  STA ADDR_BITMAP + 250,X
  STA ADDR_BITMAP + 500,X
  STA ADDR_BITMAP + 750,X
  STA ADDR_BITMAP +1000,X
  STA ADDR_BITMAP +1250,X
  STA ADDR_BITMAP +1500,X
  STA ADDR_BITMAP +1750,X
  STA ADDR_BITMAP +2000,X
  STA ADDR_BITMAP +2250,X
  STA ADDR_BITMAP +2500,X
  STA ADDR_BITMAP +2750,X
  STA ADDR_BITMAP +3000,X
  STA ADDR_BITMAP +3250,X
  STA ADDR_BITMAP +3500,X
  STA ADDR_BITMAP +3750,X
  STA ADDR_BITMAP +4000,X
  STA ADDR_BITMAP +4250,X
  STA ADDR_BITMAP +4500,X
  STA ADDR_BITMAP +4750,X
  STA ADDR_BITMAP +5000,X
  STA ADDR_BITMAP +5250,X
  STA ADDR_BITMAP +5500,X
  STA ADDR_BITMAP +5750,X
  STA ADDR_BITMAP +6000,X
  STA ADDR_BITMAP +6250,X
  STA ADDR_BITMAP +6500,X
  STA ADDR_BITMAP +6750,X
  STA ADDR_BITMAP +7000,X
  STA ADDR_BITMAP +7250,X
  STA ADDR_BITMAP +7500,X
  STA ADDR_BITMAP +7750,X
  CPX #0
  BEQ +
  DEX
  JMP -

+ LDA #$BF                ; dark gray & light gray
  LDX #249
- STA ADDR_COLOR12+   0,X ; fill COLOR12 memory
  STA ADDR_COLOR12+ 250,X
  STA ADDR_COLOR12+ 500,X
  STA ADDR_COLOR12+ 750,X
  CPX #0
  BEQ +
  DEX
  JMP -

+ LDA #$01                ; white
  LDX #249
- +STI MMU, %01111110
  LDA #$01
  STA ADDR_COLOR3 +   0,X ; fill COLOR3 memory
  STA ADDR_COLOR3 + 250,X
  STA ADDR_COLOR3 + 500,X
  STA ADDR_COLOR3 + 750,X
  +STI MMU, %01111111 ; disable ROMs & IO
  LDA #$01
  CPX #0
  BEQ B4_FAST_RENDER_MCBM_MAP
  DEX
  JMP -

B4_FAST_RENDER_MCBM_MAP:
  +PL MMU
  PLP

FAST_RENDER_MCBM_MAP:
  PHA
  +PHX
  +PHY
  +PHW $FB
  +PHW $FD

  PHP
  SEI
  +PH MMU ; save MMU
  +STI MMU, %01111111 ; disable ROMs & IO

  LDX #0
  +STIW $FB, ADDR_MAPDATA
  +STIW $FD, ADDR_BITMAP+32+2*320
- JSR FAST_RENDER_MCBM_MAP_ROW
  +ADDW $FB, 512
  +ADDW $FD, 320
  INX
  CPX #16
  BNE -

  +STIW $FB, MAP_SCENARIO
  +STIW $FD, 680
  
  LDY #0
- LDA MAP_TITLE, Y
  BEQ +
  +PLOT_CHAR_Y 0*40+6
  INY
  JMP -

+ LDY #0
- LDA MAP_SCENARIO, Y
  BEQ +
  +PLOT_CHAR_Y 19*40+2
  INY
  JMP -

+ LDY #0
- LDA MAP_TIME, Y
  BEQ +
  +PLOT_CHAR_Y 20*40+2
  INY
  JMP -

+ LDY #0
- LDA MAP_ROBOTS, Y
  BEQ +
  +PLOT_CHAR_Y 21*40+2
  INY
  JMP -

+ LDY #0
- LDA MAP_SECRETS, Y
  BEQ +
  +PLOT_CHAR_Y 22*40+2
  INY
  JMP -

+ LDY #0
- LDA MAP_DIFFICULTY, Y
  BEQ +
  +PLOT_CHAR_Y 23*40+2
  INY
  JMP -

  ; display map name
+ JSR C_CALC_MAP_NAME
- LDA ($FB),Y
  +PLOT_CHAR_Y 19*40+2+19
  INY
  CPY #16
  BNE -

  ;display elapsed time
  +DECWRITE 20*40+2+18, HOURS
  +DECWRITE 20*40+2+21, MINUTES
  +DECWRITE 20*40+2+24, SECONDS
  LDA #32 ;SPACE
  +PLOT_CHAR 20*40+2+18
  LDA #58 ;COLON
  +PLOT_CHAR 20*40+2+21
  +PLOT_CHAR 20*40+2+24

  ;count robots remaining
  LDX #1
  LDA #0
  STA DECNUM
- LDA UNIT_TYPE,X
  CMP #0
  BEQ +
  INC DECNUM
+ INX
  CPX #28
  BNE -
  +DECWRITE  21*40+2+19

  ;Count secrets remaining
  LDA #0
  STA DECNUM
  LDX #48
- LDA UNIT_TYPE,X
  CMP #0
  BEQ +
  INC DECNUM
+ INX
  CPX #64
  BNE -
  +DECWRITE  22*40+2+19

  ;display difficulty level
  LDY DIFF_LEVEL
  LDA DIFF_LEVEL_LEN,Y
  TAY
  LDX #0
- LDA DIFF_LEVEL_WORDS,Y
  CMP #0
  BEQ +
  +PLOT_CHAR_X  23*40+2+19
  INY
  INX
  JMP -

+ +PL MMU
  PLP

  +PLW $FD
  +PLW $FB
  +PLY
  +PLX
  PLA
  RTS

MAP_TITLE      !SCR "attack of the petscii robots",0
MAP_SCENARIO   !SCR "         scenario:",0
MAP_TIME       !SCR "     elapsed time:",0
MAP_ROBOTS     !SCR " robots remaining:",0
MAP_SECRETS    !SCR "secrets remaining:",0
MAP_DIFFICULTY !SCR "       difficulty:",0

FAST_RENDER_MCBM_MAP_ROW:
  +PHX
  +PHW $FB
  +PHW $FD
  
  LDX #0
- JSR FAST_RENDER_MCBM_MAP_CELL
  INX
  CPX #32
  BNE - 
  
  +PLW $FD
  +PLW $FB
  +PLX
  RTS

FAST_RENDER_MCBM_MAP_CELL:
  JSR FAST_RENDER_MCBM_MAP_QUAD
  JSR FAST_RENDER_MCBM_MAP_QUAD
  JSR FAST_RENDER_MCBM_MAP_QUAD
  JSR FAST_RENDER_MCBM_MAP_QUAD
  +SUBW $FB, 512-4
  RTS

FAST_RENDER_MCBM_MAP_QUAD:
  LDY #0
  LDA ($FB),Y
  TAY
  LDA RENDER_MCBM_MAP_TILE_COLORS,Y
  PHA

  LDY #1
  LDA ($FB),Y
  TAY
  PLA
  ASL
  ASL
  ORA RENDER_MCBM_MAP_TILE_COLORS,Y
  PHA
  
  LDY #2
  LDA ($FB),Y
  TAY
  PLA
  ASL
  ASL
  ORA RENDER_MCBM_MAP_TILE_COLORS,Y
  PHA
  
  LDY #3
  LDA ($FB),Y
  TAY
  PLA
  ASL
  ASL
  ORA RENDER_MCBM_MAP_TILE_COLORS,Y

  LDY #0
  STA ($FD),Y
  INY
  STA ($FD),Y
  
  +ADDW $FB, 128
  +ADDW $FD, 2
  RTS

RENDER_MCBM_MAP_TILE_COLORS:
            !BYTE 0,0,3,3,3,3,3,3 ;tiles 0-7
            !BYTE 3,0,3,3,3,3,0,3 ;tiles 8-15
            !BYTE 3,3,3,3,3,3,3,0 ;tiles 16-23
            !BYTE 2,3,3,3,3,2,0,0 ;tiles 24-31
            !BYTE 2,2,2,2,2,2,2,2 ;tiles 32-39
            !BYTE 2,2,2,2,2,2,2,2 ;tiles 40-47
            !BYTE 3,3,3,2,3,2,2,2 ;tiles 48-55
            !BYTE 3,2,2,2,2,2,2,3 ;tiles 56-63
            !BYTE 0,0,3,3,3,0,0,3 ;tiles 64-71
            !BYTE 2,0,0,3,3,0,0,3 ;tiles 72-79
            !BYTE 3,2,3,2,2,2,2,2 ;tiles 80-87
            !BYTE 2,2,3,3,3,3,3,2 ;tiles 88-95
            !BYTE 0,0,0,0,0,0,0,0 ;tiles 96-103
            !BYTE 3,3,3,2,2,2,2,0 ;tiles 104-111
            !BYTE 3,3,3,2,0,0,3,3 ;tiles 112-119
            !BYTE 3,3,1,1,1,1,1,1 ;tiles 120-127
            !BYTE 3,3,2,2,2,2,2,2 ;tiles 128-135
            !BYTE 2,2,2,2,2,2,2,2 ;tiles 136-143
            !BYTE 3,3,2,2,2,2,2,2 ;tiles 144-151
            !BYTE 2,2,2,2,2,2,2,0 ;tiles 152-159
            !BYTE 2,2,2,0,2,2,3,2 ;tiles 160-167
            !BYTE 0,2,3,2,2,2,3,2 ;tiles 168-175
            !BYTE 3,3,3,3,3,2,2,0 ;tiles 176-183
            !BYTE 3,3,3,3,3,0,3,3 ;tiles 184-191
            !BYTE 3,3,3,3,2,2,2,2 ;tiles 192-199
            !BYTE 2,2,2,2,2,1,2,2 ;tiles 200-207
            !BYTE 1,1,1,3,3,3,2,2 ;tiles 208-215
            !BYTE 3,3,3,2,3,3,3,3 ;tiles 216-223
            !BYTE 3,3,3,2,2,2,2,2 ;tiles 224-231
            !BYTE 2,2,2,2,3,3,0,0 ;tiles 232-239
            !BYTE 0,0,3,0,0,0,0,0 ;tiles 240-247
            !BYTE 0,0,0,0,0,0,0,0 ;tiles 248-255

RENDER_MCBM_MAP_TILE_MASK  !BYTE 0
RENDER_MCBM_MAP_TILE_VALUE !BYTE 0

}

