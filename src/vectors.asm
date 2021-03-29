INCLUDE "hardware.inc"

SECTION "header and entrypoint", ROM0[$100]

	; 4 byte entry point
	nop
	jp	init

	; Reserve space for critical metadata(defined in project.mk). Including
	; the entry point, this area must end before 0x150!
	ds	$150 - @, 0

SECTION "vblank interrupt", ROM0[$40]
	jp	vblank_handler

SECTION "stat interrupt", ROM0[$48]
	reti

SECTION "timer interrupt", ROM0[$50]
	reti

SECTION "serial interrupt", ROM0[$58]
	reti

SECTION "joypad interrupt", ROM0[$60]
	reti

SECTION "rst00", ROM0[$00]
null:
	nop
	nop
	rst	Crash

SECTION "rst08", ROM0[$08]
	ret

SECTION "rst10", ROM0[$10]
	ret

SECTION "rst18", ROM0[$18]
	ret

SECTION "rst20", ROM0[$20]
	ret

SECTION "rst28", ROM0[$28]
	ret

SECTION "rst30", ROM0[$30]
	ret

SECTION "rst38", ROM0[$38]
; TODO: Implement user-friendly crash handler instead of busy loop?
Crash:
	di
	jr	@

