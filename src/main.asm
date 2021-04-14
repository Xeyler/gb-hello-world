INCLUDE "hardware.inc"

INCLUDE "main.inc"
INCLUDE "vblank.inc"

INCLUDE "res/music/hUGEDriver/hUGEDriver.asm"
INCLUDE "res/music/song_table.asm"

INCLUDE "res/events/main.asm"

INCLUDE "state_handlers/cutscene.asm"
INCLUDE "state_handlers/dialogue.asm"
INCLUDE "state_handlers/loading_data.asm"
INCLUDE "state_handlers/loading_scene.asm"
INCLUDE "state_handlers/menu.asm"
INCLUDE "state_handlers/playing.asm"
INCLUDE "state_handlers/saving_data.asm"

INCLUDE "res/visual/sprites/sprite_table.asm"

SECTION "init", ROM0

init:
	di
	ld	sp, w_stack_bottom

; Call all necessary initialization macros
	copy_oam_dma_routine
	init_vblank_shadow_registers

; Zero out variables
	xor	a
	ld	[w_current_song_bank], a

; Initialize variables
	; initialize state machine
	ld	hl, main_event
	ld	a, h
	ld	[h_event_index + 1], a
	ld	a, l
	ld	[h_event_index], a

; Set up interrupts
	ld	a, IEF_VBLANK
	ld	[rIE], a

	xor	a
	ld	[rIF], a

	ei

; Enter main loop
	jp	before_main

SECTION "main", ROM0

before_main:
	ld	a, [h_lcdc]
	res	7, a
	ld	[h_lcdc], a
	ld	a, VBLANK_FLAG_UPDATE_VARS
	ld	[h_vblank_flag], a

	call	wait_for_vblank

	init_sprites

	ld	a, $80
	ld	hl, w_shadow_oam + 2
	ld	[hli], a
	xor	a
	ld	[hl], a
	ld	a, $82
	ld	hl, w_shadow_oam + 6
	ld	[hli], a
	xor	a
	ld	[hl], a

	move_objects_off_screen

	call	init_dialogue

	ld	a, [h_lcdc]
	set	7, a
	ld	[h_lcdc], a
	ld	[rLCDC], a

main:
; Update music. If `w_current_song_bank` points to bank 0, then we assume that
; no song has been selected and therefore, _hUGE_dosound is unsafe.
	ld	a, [w_current_song_bank]
	and	a
	jr	z, .skip_music
	set_rom_bank_from_a
	call	_hUGE_dosound
.skip_music:

.tick_event:
	ld	hl, h_event_index
	dereference_hl_into_hl
	ld	b, 0
	ld	c, [hl]
	inc	hl
	ld	a, h
	ld	[h_event_index + 1], a
	ld	a, l
	ld	[h_event_index], a
	ld	hl, state_jump_table
	add	hl, bc
	dereference_hl_into_hl
	jp	hl

SECTION "stack", WRAM0[STACK_LOCATION - STACK_SIZE]

	ds	STACK_SIZE
w_stack_bottom:

SECTION "main variables", WRAM0

w_input_held: db
w_input_pressed: db

w_current_song_bank: db

SECTION "main hram variables", HRAM

h_event_index: dw

SECTION "state jump table", ROM0
state_jump_table:
.state_playing::
	dw	state_playing
.state_loading_scene::
	dw	state_loading_scene
.state_dialogue::
	dw	state_dialogue
.state_menu::
	dw	state_menu
.state_cutscene::
	dw	state_cutscene
.state_saving_data::
	dw	state_saving_data
.state_loading_data::
	dw	state_loading_data

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

