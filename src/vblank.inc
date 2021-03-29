IF !DEF(__VBLANK_INC)
__VBLANK_INC SET 1

INCLUDE	"util.inc"

VBLANK_FLAG_NOP		equ %00000000

copy_oam_dma_routine: MACRO
	set_rom_bank BANK(oam_dma_source)
	ld	de, oam_dma_source
	ld	hl, h_oam_dma
	ld	c, h_oam_dma.end - h_oam_dma
	call	small_memcpy
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
