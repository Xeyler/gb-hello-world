IF !DEF(__MAIN_INC)
__MAIN_INC SET 1

STACK_LOCATION	EQU $E000
; Consider making this smaller after profiling stack usage.
STACK_SIZE	EQU 64

; These values are coupled directly to the state jump table in `src/main.asm`
STATE_PLAYING		EQU 0
STATE_LOADING_SCENE	EQU 2
STATE_DIALOGUE		EQU 4
STATE_MENU		EQU 6
STATE_CUTSCENE		EQU 8
STATE_SAVING_DATA	EQU 10
STATE_LOADING_DATA	EQU 12

EXPORT	init

init_sprites: MACRO
	set_rom_bank(BANK(sprite_table))
	ld	hl, $8800
	ld	de, sprite_table
	ld	bc, sprite_table.end - sprite_table
	call	memcpy
ENDM

ENDC	; __MAIN_INC
