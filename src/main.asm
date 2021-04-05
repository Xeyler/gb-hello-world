INCLUDE "hardware.inc"

INCLUDE "main.inc"
INCLUDE "vblank.inc"

INCLUDE "res/music/hUGEDriver/hUGEDriver.asm"
INCLUDE "res/music/song_table.asm"

INCLUDE "res/scenes/tilemaps/map.asm"
INCLUDE "res/scenes/metatilesets/metatiles.asm"
INCBIN "res/scenes/tilesets/test.bin"

INCLUDE "res/visual/variable-width-font/font.asm"

SECTION "init", ROM0

init:
	di
	ld	sp, w_stack_bottom

; Call all necessary initialization functions
	copy_oam_dma_routine

; Zero out variables
	xor	a
	ld	[w_current_song_bank], a

; Set up interrupts
	ld	a, IEF_VBLANK
	ld	[rIE], a

	xor	a
	ld	[rIF], a

	ei

; Enter main loop
	jp	main

SECTION "main", ROM0

main:
; Update music. If `w_current_song_bank` points to bank 0, then we assume that
; no song has been selected and therefore, _hUGE_dosound is unsafe.
	ld	a, [w_current_song_bank]
	and	a
	jr	z, .skip_music
	set_rom_bank_from_a
	call	_hUGE_dosound
.skip_music:

; Get input state
	; hold last input state in register c
	ld	a, [w_input_held]
	ld	c, a

	; save new input state to ram
	call	get_input
	ld	[w_input_held], a

	; compute and save newly pressed buttons
	ld	b, a
	xor	c
	and	b
	ld	[w_input_pressed], a

.tick_event:
	

; Wait for vblank to update screen and repeat
	ld	a, VBLANK_FLAG_NOP
	ld	[h_vblank_flag], a
	call	wait_for_vblank

	jp	main

; HL = pointer to song 'struct' containing a u8 bank number and a pointer to
; the song data. See `res/music/song_table.asm`
;; Ex:
;	ld	hl, song_table.{song_name}
;	jp	play_song
play_song:
	; zero out each channel
	xor	a
	ld	[rAUDENA], a

	ld	a, AUDENA_ON
	ld	[rAUDENA], a
	ld	a, $FF
	ld	[rAUDTERM], a
	ld	a, $77
	ld	[rAUDVOL], a

	set_rom_bank BANK(song_table)
	ld	a, [hli]
	ld	[w_current_song_bank], a
	set_rom_bank_from_a

	dereference_hl_into_hl

	call	hUGE_init

	ret

SECTION "stack", WRAM0[STACK_LOCATION - STACK_SIZE]

	ds	STACK_SIZE
w_stack_bottom:

SECTION "main variables", WRAM0

w_input_held: db
w_input_pressed: db

w_current_song_bank: db
