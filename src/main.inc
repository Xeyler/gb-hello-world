IF !DEF(__MAIN_INC)
__MAIN_INC SET 1

STACK_LOCATION	EQU $E000
; Consider making this smaller after profiling stack usage.
STACK_SIZE	EQU 64

EXPORT	init

ENDC	; __MAIN_INC
