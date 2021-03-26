IF !DEF(__UTIL_INC)
__UTIL_INC SET 1

set_rom_bank: MACRO
	; See MBC5 Pandoc documentation
	ld	a, \1
	ld	[rROMB0], a
ENDM

EXPORT	small_memset
EXPORT	memset
EXPORT	small_memcpy
EXPORT	memcpy

ENDC	; __UTIL_INC
