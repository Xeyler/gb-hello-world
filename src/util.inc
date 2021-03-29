IF !DEF(__UTIL_INC)
__UTIL_INC SET 1

; see pandoc mbc5 documentation
set_rom_bank: MACRO
	ld	a, \1
	ld	[rROMB0], a
ENDM

set_rom_bank_from_a: MACRO
	ld	[rROMB0], a
ENDM

dereference_hl_into_hl: MACRO
	ld	a, [hli]
	ld	h, [hl]
	ld	l, a
ENDM

EXPORT	get_input
EXPORT	small_memset
EXPORT	memset
EXPORT	small_memcpy
EXPORT	memcpy

ENDC	; __UTIL_INC
