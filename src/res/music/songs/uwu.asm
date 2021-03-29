include "include/hUGE.inc"

SECTION "uwu", ROMX

uwu::
db 7
dw order_cnt
dw order1, order2, order3, order4
dw duty_instruments, wave_instruments, noise_instruments
dw routines
dw waves

order_cnt: db 36
order1: dw P19,P5,P0,P0,P0,P0,P9,P10,P11,P15,P9,P10,P16,P17,P4,P0,P4,P18
order2: dw P19,P6,P1,P1,P1,P1,P1,P1,P12,P1,P1,P1,P12,P1,P12,P1,P12,P1
order3: dw P2,P7,P2,P2,P2,P2,P2,P2,P13,P2,P2,P2,P13,P2,P13,P2,P13,P2
order4: dw P3,P8,P3,P3,P3,P3,P3,P3,P3,P3,P3,P3,P3,P3,P3,P3,P3,P3

P0:
 dn D#4,2,$000
 dn ___,0,$000
 dn ___,0,$000
 dn D#4,2,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn D#5,2,$000
 dn ___,0,$000
 dn D#5,2,$C01
 dn ___,0,$000
 dn A#4,2,$000
 dn ___,0,$000
 dn G#4,2,$000
 dn ___,0,$000
 dn F#4,2,$000
 dn F#4,2,$C01
 dn D#4,2,$000
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220
 dn D#4,2,$000
 dn ___,0,$000
 dn ___,0,$000
 dn D#4,2,$C01
 dn F#4,2,$000
 dn ___,0,$000
 dn D#5,2,$000
 dn D#5,2,$C01
 dn A#4,2,$484
 dn ___,0,$484
 dn ___,0,$484
 dn ___,0,$484
 dn D#4,2,$000
 dn ___,0,$000
 dn ___,0,$000
 dn D#4,2,$C01
 dn C#5,2,$E02
 dn D_5,2,$E02
 dn D#5,2,$000
 dn ___,0,$000
 dn D#5,2,$C01
 dn ___,0,$000
 dn A#4,2,$000
 dn ___,0,$000
 dn G#4,2,$000
 dn ___,0,$000
 dn F#4,2,$000
 dn F#4,2,$C01
 dn D#4,2,$000
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220
 dn D#4,2,$000
 dn ___,0,$000
 dn ___,0,$000
 dn D#4,2,$C01
 dn F#4,2,$000
 dn ___,0,$000
 dn C#5,2,$000
 dn C#5,2,$C01
 dn A#4,2,$484
 dn ___,0,$484
 dn F#4,2,$484
 dn ___,0,$484

P1:
 dn D#5,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn D#5,1,$C01
 dn F#5,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn F#5,1,$C01
 dn F_5,1,$000
 dn ___,0,$000
 dn D#5,1,$000
 dn D#5,1,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn C#5,1,$000
 dn C#5,1,$C01
 dn F#5,1,$000
 dn ___,0,$000
 dn C#5,1,$C06
 dn ___,0,$000
 dn F_5,1,$000
 dn ___,0,$000
 dn F#5,1,$000
 dn F#5,1,$C01
 dn D#5,1,$000
 dn D#5,1,$C01
 dn A#4,1,$000
 dn A#4,1,$C01
 dn G#4,1,$000
 dn ___,0,$000
 dn F#4,1,$000
 dn F#4,1,$C01
 dn D#5,1,$484
 dn ___,0,$484
 dn ___,0,$484
 dn ___,0,$484
 dn F#5,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn F#5,1,$C01
 dn F_5,1,$000
 dn ___,0,$000
 dn D#5,1,$000
 dn D#5,1,$C01
 dn C#5,1,$000
 dn ___,0,$000
 dn D#5,1,$000
 dn D#5,1,$C01
 dn F#5,1,$000
 dn ___,0,$000
 dn F_5,1,$C06
 dn ___,0,$000
 dn F#5,1,$000
 dn ___,0,$000
 dn A#5,1,$000
 dn A#5,1,$C01
 dn G#5,1,$000
 dn G#5,1,$C01
 dn F#5,1,$484
 dn ___,0,$484
 dn D#5,0,$330
 dn ___,0,$000
 dn C#5,1,$000
 dn ___,0,$000

P2:
 dn D#4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$C01
 dn D#4,1,$000
 dn ___,0,$C01
 dn C#5,1,$10C
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn A#4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn F#4,1,$4A4
 dn ___,0,$4A4
 dn ___,0,$220
 dn ___,0,$220
 dn F#4,1,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$E01
 dn A#4,1,$000
 dn ___,0,$000
 dn D#5,1,$3FF
 dn ___,0,$E01
 dn C#4,1,$000
 dn ___,0,$000
 dn D#4,1,$3FF
 dn ___,0,$000
 dn D#4,1,$E03
 dn D#4,1,$E03
 dn D#4,1,$E02
 dn ___,0,$000
 dn C#5,1,$10C
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn A#4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn C#5,1,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F#4,1,$000
 dn ___,0,$000
 dn G#4,1,$3FF
 dn ___,0,$C01
 dn A#4,1,$000
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220

P3:
 dn C#6,1,$F05
 dn ___,0,$000
 dn C#8,3,$F03
 dn ___,0,$000
 dn C#8,3,$F05
 dn ___,0,$000
 dn C#8,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn A_6,1,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn A_6,1,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000

P4:
 dn F#5,12,$C03
 dn ___,0,$000
 dn ___,0,$000
 dn F#5,12,$C00
 dn ___,0,$000
 dn ___,0,$000
 dn F#6,12,$C03
 dn ___,0,$000
 dn F#6,12,$C00
 dn ___,0,$000
 dn C#6,12,$C03
 dn ___,0,$000
 dn A#5,12,$C03
 dn ___,0,$000
 dn F#5,12,$C03
 dn F#5,12,$C00
 dn F#5,12,$C03
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220
 dn F#5,12,$C03
 dn ___,0,$000
 dn ___,0,$000
 dn F#5,12,$C00
 dn A#5,12,$C03
 dn ___,0,$000
 dn F#6,12,$C03
 dn F#6,12,$C00
 dn C#6,12,$C03
 dn ___,0,$484
 dn ___,0,$484
 dn ___,0,$484
 dn G#5,12,$C03
 dn ___,0,$000
 dn ___,0,$000
 dn G#5,12,$C00
 dn F#5,12,$C00
 dn G_5,12,$C00
 dn G#5,12,$C03
 dn ___,0,$000
 dn ___,0,$C00
 dn ___,0,$000
 dn G#6,12,$C03
 dn ___,0,$000
 dn D#6,12,$C03
 dn ___,0,$000
 dn B_5,12,$C03
 dn B_5,12,$C00
 dn G#5,12,$C03
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220
 dn F#5,12,$C03
 dn ___,0,$000
 dn ___,0,$000
 dn F#5,12,$C00
 dn G#5,12,$C03
 dn ___,0,$000
 dn F#5,12,$C03
 dn F#5,12,$C00
 dn D#5,12,$C03
 dn ___,0,$484
 dn C#5,12,$C03
 dn ___,0,$484

P5:
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000

P6:
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000

P7:
 dn D#4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$C01
 dn D#4,1,$000
 dn ___,0,$C01
 dn C#5,1,$10C
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn A#4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn F#4,1,$4A4
 dn ___,0,$4A4
 dn ___,0,$220
 dn ___,0,$220
 dn F#4,1,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$E01
 dn A#4,1,$000
 dn ___,0,$000
 dn D#5,1,$3FF
 dn ___,0,$E01
 dn C#4,1,$000
 dn ___,0,$000
 dn D#4,1,$3FF
 dn ___,0,$000
 dn D#4,1,$E03
 dn D#4,1,$E03
 dn D#4,1,$E02
 dn ___,0,$000
 dn C#5,1,$10C
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn A#4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$000
 dn ___,0,$C01
 dn ___,0,$000
 dn C#5,1,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F#4,1,$000
 dn ___,0,$000
 dn ___,0,$208
 dn ___,0,$208
 dn ___,0,$208
 dn ___,0,$208
 dn ___,0,$208
 dn ___,0,$208

P8:
 dn C#6,1,$F05
 dn ___,0,$000
 dn C#8,3,$F03
 dn ___,0,$000
 dn C#8,3,$F05
 dn ___,0,$000
 dn C#8,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn A_6,1,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn A_6,1,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn G_7,3,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn A_6,1,$F05
 dn ___,0,$000
 dn G_7,3,$F03
 dn ___,0,$000
 dn C#7,2,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000
 dn ___,0,$F05
 dn ___,0,$000
 dn ___,0,$F03
 dn ___,0,$000

P9:
 dn C#6,6,$104
 dn D#6,0,$308
 dn ___,0,$308
 dn ___,0,$308
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn D#6,6,$C01
 dn ___,0,$000
 dn D#6,6,$C03
 dn ___,0,$000
 dn F#6,6,$C0F
 dn ___,0,$000
 dn F#6,6,$C00
 dn ___,0,$000
 dn F_6,6,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn C#6,6,$C07
 dn C#6,6,$C00
 dn G#5,6,$C0F
 dn A_5,0,$3FF
 dn A#5,0,$3FF
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn ___,0,$434
 dn A#5,6,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn G#5,6,$C0F
 dn ___,0,$000
 dn A#5,0,$3FF
 dn ___,0,$000
 dn C#6,0,$3FF
 dn C#6,6,$C00

P10:
 dn D#6,6,$000
 dn ___,0,$000
 dn C#6,0,$3FF
 dn ___,0,$000
 dn D#6,0,$3FF
 dn D#6,6,$C00
 dn F_6,6,$000
 dn F#6,0,$310
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220
 dn F_6,6,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn D#6,0,$330
 dn ___,0,$000
 dn ___,0,$000
 dn D#6,6,$C00
 dn C#6,6,$000
 dn ___,0,$000
 dn C#6,6,$C00
 dn ___,0,$000
 dn A#5,6,$000
 dn ___,0,$000
 dn G#5,0,$3FF
 dn ___,0,$000
 dn C#6,0,$3FF
 dn A#5,6,$C00
 dn D#5,6,$108
 dn F#5,0,$308
 dn ___,0,$308
 dn ___,0,$308
 dn ___,0,$308
 dn ___,0,$000
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F#5,6,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn C#6,6,$C04
 dn C#6,6,$C00
 dn ___,0,$000
 dn ___,0,$000

P11:
 dn C#6,6,$104
 dn D#6,0,$308
 dn ___,0,$308
 dn ___,0,$308
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn D#6,6,$C01
 dn ___,0,$000
 dn D#6,6,$C03
 dn ___,0,$000
 dn F#6,6,$C0F
 dn ___,0,$000
 dn F#6,6,$C00
 dn ___,0,$000
 dn F_6,6,$400
 dn ___,0,$400
 dn D#6,6,$400
 dn ___,0,$400
 dn F#6,6,$C0F
 dn F#6,6,$C00
 dn D#6,6,$C0F
 dn E_6,0,$3FF
 dn F_6,0,$3FF
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F_6,6,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn G#5,6,$C0F
 dn ___,0,$000
 dn ___,0,$000
 dn G#5,6,$C00
 dn A#5,6,$000
 dn ___,0,$000
 dn C#6,0,$3FF
 dn ___,0,$000
 dn F#5,0,$3FF
 dn ___,0,$E03
 dn C#6,6,$E03
 dn C#6,6,$E02

P12:
 dn F#5,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn F#5,1,$C01
 dn B_5,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn B_5,1,$C01
 dn D#6,1,$000
 dn ___,0,$000
 dn B_5,1,$000
 dn B_5,1,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn F#5,1,$000
 dn F#5,1,$C01
 dn B_5,1,$000
 dn ___,0,$000
 dn D#6,1,$C06
 dn ___,0,$000
 dn D#6,1,$000
 dn ___,0,$000
 dn B_5,1,$000
 dn B_5,1,$C01
 dn D#6,1,$000
 dn D#6,1,$C01
 dn B_5,1,$000
 dn B_5,1,$C01
 dn F#5,1,$000
 dn ___,0,$000
 dn B_5,1,$000
 dn B_5,1,$C01
 dn A#5,1,$484
 dn ___,0,$484
 dn ___,0,$484
 dn ___,0,$484
 dn F_5,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn F_5,1,$C01
 dn D_5,1,$000
 dn ___,0,$000
 dn A#4,1,$000
 dn A#4,1,$C01
 dn D_5,1,$000
 dn ___,0,$000
 dn F_5,1,$000
 dn F_5,1,$C01
 dn A#5,1,$000
 dn ___,0,$000
 dn F_5,1,$C06
 dn ___,0,$000
 dn D_5,1,$000
 dn ___,0,$000
 dn A#4,1,$000
 dn A#4,1,$C01
 dn D_5,1,$000
 dn D_5,1,$C01
 dn A#4,1,$484
 dn ___,0,$484
 dn D_5,0,$330
 dn ___,0,$000
 dn D#5,1,$000
 dn ___,0,$000

P13:
 dn B_3,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$C01
 dn B_3,1,$000
 dn B_3,1,$C01
 dn A_4,1,$10E
 dn ___,0,$000
 dn A_4,1,$C01
 dn ___,0,$000
 dn A#4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$000
 dn G#4,1,$C01
 dn ___,0,$000
 dn F#4,1,$4A4
 dn ___,0,$4A4
 dn ___,0,$220
 dn ___,0,$220
 dn F#4,1,$000
 dn ___,0,$000
 dn G#4,1,$330
 dn ___,0,$E01
 dn A#4,1,$000
 dn ___,0,$000
 dn F#4,1,$3FF
 dn ___,0,$E01
 dn G#3,1,$000
 dn ___,0,$000
 dn A#3,1,$3FF
 dn ___,0,$000
 dn A#3,1,$E03
 dn A#3,1,$E03
 dn A#3,1,$E02
 dn ___,0,$000
 dn G#4,1,$10E
 dn ___,0,$000
 dn G#4,1,$C01
 dn ___,0,$000
 dn F_4,1,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn D#4,1,$330
 dn ___,0,$000
 dn D#4,1,$C01
 dn ___,0,$000
 dn F_4,1,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn G#4,1,$000
 dn ___,0,$000
 dn A#4,1,$3FF
 dn A#4,1,$C01
 dn C#5,1,$000
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220

P15:
 dn D#6,6,$000
 dn ___,0,$000
 dn C#6,0,$3FF
 dn ___,0,$000
 dn D#6,0,$3FF
 dn D#6,6,$C00
 dn F_6,6,$000
 dn F#6,0,$310
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220
 dn F_6,6,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn D#6,0,$330
 dn ___,0,$000
 dn ___,0,$000
 dn D#6,6,$C00
 dn C#6,6,$000
 dn ___,0,$000
 dn C#6,6,$C00
 dn ___,0,$000
 dn A#5,6,$400
 dn ___,0,$400
 dn A#5,6,$E02
 dn A#5,6,$E02
 dn F#6,6,$000
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F#5,6,$000
 dn G#5,0,$30F
 dn F#5,0,$30F
 dn ___,0,$30F
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F#5,6,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn D#5,6,$000
 dn D#5,6,$C00
 dn F#5,6,$000
 dn ___,0,$000
 dn G#5,0,$3FF
 dn G#5,6,$C00
 dn A#5,6,$000
 dn ___,0,$000
 dn C#6,0,$3FF
 dn ___,0,$EC1

P16:
 dn C#6,6,$104
 dn D#6,0,$308
 dn ___,0,$308
 dn ___,0,$308
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn D#6,6,$C01
 dn ___,0,$000
 dn D#6,6,$C03
 dn ___,0,$000
 dn F#6,6,$C0F
 dn ___,0,$000
 dn F#6,6,$C00
 dn ___,0,$000
 dn A_6,6,$4A4
 dn A#6,6,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F#6,6,$C07
 dn F#6,6,$C00
 dn G#5,6,$C0F
 dn A_5,0,$3FF
 dn A#5,0,$3FF
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn D#7,9,$8FE
 dn ___,0,$000
 dn C#7,9,$8EF
 dn ___,0,$000
 dn A#6,9,$8FE
 dn ___,0,$000
 dn G#6,9,$8EF
 dn ___,0,$000
 dn F#6,9,$8FE
 dn ___,0,$000
 dn G#5,6,$8FF
 dn ___,0,$000
 dn A#5,0,$3FF
 dn ___,0,$000
 dn C#6,0,$3FF
 dn ___,0,$C00

P17:
 dn D#6,6,$000
 dn ___,0,$000
 dn C#6,0,$3FF
 dn ___,0,$000
 dn D#6,0,$3FF
 dn D#6,6,$C00
 dn F_6,6,$000
 dn F#6,0,$310
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$220
 dn ___,0,$220
 dn F_6,6,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn D#6,0,$330
 dn ___,0,$000
 dn ___,0,$000
 dn F_6,6,$C00
 dn C#6,6,$000
 dn ___,0,$000
 dn C#6,6,$C00
 dn ___,0,$000
 dn A#5,6,$4A4
 dn ___,0,$4A4
 dn A#5,6,$E03
 dn A#5,6,$E03
 dn F#6,0,$3FF
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn A_5,6,$4A4
 dn A_5,6,$C0F
 dn ___,0,$000
 dn A#5,0,$324
 dn ___,0,$000
 dn F#5,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn ___,0,$4A4
 dn F#5,6,$C01
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn C#6,6,$C07
 dn D_6,0,$324
 dn D#6,6,$C09
 dn ___,0,$000
 dn ___,0,$210
 dn ___,0,$210
 dn ___,0,$220
 dn ___,0,$220
 dn ___,0,$220
 dn ___,0,$220

P18:
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn A#5,6,$000
 dn ___,0,$000
 dn C#6,6,$000
 dn ___,0,$000
 dn A#5,6,$000
 dn ___,0,$B07

P19:
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000
 dn ___,0,$000

duty_instruments:
itSquareinst1: db 8,0,241,128
itSquareinst2: db 8,192,241,128
itSquareinst3: db 8,64,247,128
itSquareinst4: db 8,128,240,128
itSquareinst5: db 8,128,240,128
itSquareinst6: db 8,128,240,128
itSquareinst7: db 8,128,240,128
itSquareinst8: db 8,128,240,128
itSquareinst9: db 8,128,241,128
itSquareinst10: db 8,128,240,128
itSquareinst11: db 8,128,240,128
itSquareinst12: db 8,128,240,128
itSquareinst13: db 8,128,240,128
itSquareinst14: db 8,128,240,128
itSquareinst15: db 8,128,240,128


wave_instruments:
itWaveinst1: db 0,32,0,128
itWaveinst2: db 0,32,0,128
itWaveinst3: db 0,32,0,128
itWaveinst4: db 0,32,0,128
itWaveinst5: db 0,32,0,128
itWaveinst6: db 0,32,0,128
itWaveinst7: db 0,32,0,128
itWaveinst8: db 0,32,0,128
itWaveinst9: db 0,32,0,128
itWaveinst10: db 0,32,0,128
itWaveinst11: db 0,32,0,128
itWaveinst12: db 0,32,0,128
itWaveinst13: db 0,32,0,128
itWaveinst14: db 0,32,0,128
itWaveinst15: db 0,32,0,128


noise_instruments:
itNoiseinst1: db 209,91,0,0,0,0,0,0
itNoiseinst2: db 194,9,0,0,0,0,0,0
itNoiseinst3: db 192,113,0,0,0,0,0,0
itNoiseinst4: db 240,0,0,0,0,0,0,0
itNoiseinst5: db 240,0,0,0,0,0,0,0
itNoiseinst6: db 240,0,0,0,0,0,0,0
itNoiseinst7: db 240,0,0,0,0,0,0,0
itNoiseinst8: db 240,0,0,0,0,0,0,0
itNoiseinst9: db 240,0,0,0,0,0,0,0
itNoiseinst10: db 240,0,0,0,0,0,0,0
itNoiseinst11: db 240,0,0,0,0,0,0,0
itNoiseinst12: db 240,0,0,0,0,0,0,0
itNoiseinst13: db 240,0,0,0,0,0,0,0
itNoiseinst14: db 240,0,0,0,0,0,0,0
itNoiseinst15: db 240,0,0,0,0,0,0,0


routines:
__hUGE_Routine_0:

__end_hUGE_Routine_0:
ret

__hUGE_Routine_1:

__end_hUGE_Routine_1:
ret

__hUGE_Routine_2:

__end_hUGE_Routine_2:
ret

__hUGE_Routine_3:

__end_hUGE_Routine_3:
ret

__hUGE_Routine_4:

__end_hUGE_Routine_4:
ret

__hUGE_Routine_5:

__end_hUGE_Routine_5:
ret

__hUGE_Routine_6:

__end_hUGE_Routine_6:
ret

__hUGE_Routine_7:

__end_hUGE_Routine_7:
ret

__hUGE_Routine_8:

__end_hUGE_Routine_8:
ret

__hUGE_Routine_9:

__end_hUGE_Routine_9:
ret

__hUGE_Routine_10:

__end_hUGE_Routine_10:
ret

__hUGE_Routine_11:

__end_hUGE_Routine_11:
ret

__hUGE_Routine_12:

__end_hUGE_Routine_12:
ret

__hUGE_Routine_13:

__end_hUGE_Routine_13:
ret

__hUGE_Routine_14:

__end_hUGE_Routine_14:
ret

__hUGE_Routine_15:

__end_hUGE_Routine_15:
ret

waves:
wave0: db 0,0,0,0,0,0,0,15,255,255,255,255,255,255,255,255
wave1: db 88,120,133,100,199,229,64,49,75,49,102,131,205,86,75,216
wave2: db 181,124,217,81,222,144,59,182,88,37,99,210,110,114,119,87
wave3: db 183,2,163,235,149,36,197,156,62,76,30,146,140,211,164,230
wave4: db 228,234,179,58,180,120,220,106,1,131,0,140,115,152,236,19
wave5: db 55,45,201,1,91,107,98,189,27,16,206,174,45,26,182,48
wave6: db 5,201,133,158,145,100,32,227,164,118,51,21,32,119,3,23
wave7: db 112,124,112,218,220,139,219,204,91,35,59,141,184,167,232,232
wave8: db 208,170,90,49,48,121,139,22,84,29,115,178,157,13,232,201
wave9: db 101,155,225,154,214,91,206,64,145,235,105,109,101,200,125,137
wave10: db 89,28,155,7,135,49,72,82,123,101,38,115,11,99,45,235
wave11: db 38,91,184,9,178,81,39,21,109,153,161,212,9,163,39,28
wave12: db 140,62,196,8,13,81,174,44,1,33,91,4,237,178,144,219
wave13: db 28,152,183,40,227,94,28,132,206,192,234,29,50,214,199,37
wave14: db 237,85,110,37,89,36,100,231,65,195,181,142,146,9,184,217
wave15: db 48,132,80,58,157,185,6,81,133,237,149,195,188,75,201,9

