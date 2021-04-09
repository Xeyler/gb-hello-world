IF !DEF(__VBLANK_INC)
__VBLANK_INC SET 1

INCLUDE	"util.inc"

VBLANK_FLAG_UPDATE_VARS	equ %00000000

copy_oam_dma_routine: MACRO
	set_rom_bank BANK(oam_dma_source)
	ld	de, oam_dma_source
	ld	hl, h_oam_dma
	ld	c, h_oam_dma.end - h_oam_dma
	call	small_memcpy
ENDM

init_vblank_shadow_registers: MACRO
	ld	a, LCDCF_ON | LCDCF_BG8000 | LCDCF_BGON
	ld	[h_lcdc], a
	xor	a
	ld	[h_scy], a
	ld	[h_scx], a
	ld	[h_obp0], a
	ld	[h_obp1], a
	ld	a, %11100100
	ld	[h_bgp], a
ENDM

EXPORT	wait_for_vblank
EXPORT	vblank_handler

EXPORT	oam_dma_source
EXPORT	w_shadow_oam

EXPORT	h_vblank_flag
EXPORT	h_oam_dma
EXPORT	h_oam_dma.end
EXPORT	h_oam_high
EXPORT	h_lcdc
EXPORT	h_scx
EXPORT	h_scy
EXPORT	h_bgp
EXPORT	h_obp0
EXPORT	h_obp1

ENDC	; __VBLANK_INC
