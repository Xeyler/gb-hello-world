IF !DEF(VBLANK_INC)
VBLANK_INC SET 1

copy_oam_dma_routine: MACRO
	set_rom_bank BANK(oam_dma_source)
	ld	de, oam_dma_source
	ld	hl, h_oam_dma
	ld	c, h_oam_dma.end - h_oam_dma
	call	small_memcpy
ENDM

	EXPORT	h_oam_dma
	EXPORT	h_oam_dma.end

	EXPORT	oam_dma_source
	EXPORT	w_shadow_oam

	EXPORT	h_oam_high
	EXPORT	h_lcdc
	EXPORT	h_scx
	EXPORT	h_scy
	EXPORT	h_bgp
	EXPORT	h_obp0
	EXPORT	h_obp1
ENDC