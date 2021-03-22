INCLUDE "hardware.inc"

SECTION "header", ROM0[$100]

	; 4 byte entry point
	di
	jp init

	; Reserve space for critical metadata(defined in project.mk). Including
	; the entry point, this area must end before 0x150!
	ds $150 - @, 0

