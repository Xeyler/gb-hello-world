IF !DEF(__MAIN_INC)
__MAIN_INC SET 1

STACK_LOCATION	EQU $E000
; Consider making this smaller after profiling stack usage.
STACK_SIZE	EQU 64

; These values are coupled directly to the state jump table in `src/main.asm`
STATE_PLAYING		EQU 0
STATE_LOADING_SCENE	EQU 2
STATE_DIALOGUE		EQU 4
STATE_MENU		EQU 6
STATE_CUTSCENE		EQU 8
STATE_SAVING_DATA	EQU 10
STATE_LOADING_DATA	EQU 12

EXPORT	init

ENDC	; __MAIN_INC
