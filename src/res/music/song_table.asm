add_song: MACRO
.\1::
	db	BANK(\1)
	dw	\1

; The song bank must be representable with a single byte
ASSERT	BANK(\1) <= $FF

ENDM

SECTION "song table", ROMX
song_table::
	add_song	ryukenden
	add_song	wild_pokemon_appear
	add_song	uwu
