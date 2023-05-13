subtitle "Microchip MPLAB XC8 C Compiler v2.36 (Free license) build 20220127204148 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,___lwdiv
	FNCALL	_main,_add_event
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clcd_write
	FNCALL	_main,_display_menu
	FNCALL	_main,_display_time
	FNCALL	_main,_get_time
	FNCALL	_main,_init_config
	FNCALL	_main,_password
	FNCALL	_main,_read_adc
	FNCALL	_main,_read_switches
	FNCALL	_password,_clcd_print
	FNCALL	_password,_clcd_putch
	FNCALL	_password,_clcd_write
	FNCALL	_password,_my_strcmp
	FNCALL	_password,_read_switches
	FNCALL	_init_config,_clcd_print
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_get_time,_read_ds1307
	FNCALL	_display_time,_clcd_print
	FNCALL	_display_menu,_change_password
	FNCALL	_display_menu,_clcd_print
	FNCALL	_display_menu,_clear_log
	FNCALL	_display_menu,_download_log
	FNCALL	_display_menu,_read_switches
	FNCALL	_display_menu,_set_time
	FNCALL	_display_menu,_view_log
	FNCALL	_view_log,___wmul
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_clcd_write
	FNCALL	_view_log,_read_switches
	FNCALL	_set_time,___lbdiv
	FNCALL	_set_time,___lbmod
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_putch
	FNCALL	_set_time,_clcd_write
	FNCALL	_set_time,_convertval
	FNCALL	_set_time,_read_ds1307
	FNCALL	_set_time,_read_switches
	FNCALL	_set_time,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_convertval,___lbdiv
	FNCALL	_convertval,___lbmod
	FNCALL	_download_log,___wmul
	FNCALL	_download_log,_clcd_print
	FNCALL	_download_log,_clcd_write
	FNCALL	_download_log,_puts
	FNCALL	_download_log,_read_switches
	FNCALL	_puts,_putch
	FNCALL	_clear_log,___wmul
	FNCALL	_clear_log,_clcd_print
	FNCALL	_clear_log,_clcd_write
	FNCALL	_clear_log,_read_switches
	FNCALL	_change_password,_clcd_print
	FNCALL	_change_password,_clcd_putch
	FNCALL	_change_password,_clcd_write
	FNCALL	_change_password,_read_external_eeprom
	FNCALL	_change_password,_read_switches
	FNCALL	_change_password,_write_external_eeprom
	FNCALL	_write_external_eeprom,_i2c_start
	FNCALL	_write_external_eeprom,_i2c_stop
	FNCALL	_write_external_eeprom,_i2c_write
	FNCALL	_read_switches,_scan_key
	FNCALL	_read_external_eeprom,_i2c_read
	FNCALL	_read_external_eeprom,_i2c_rep_start
	FNCALL	_read_external_eeprom,_i2c_start
	FNCALL	_read_external_eeprom,_i2c_stop
	FNCALL	_read_external_eeprom,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_no_ack
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNCALL	_add_event,___wmul
	FNROOT	_main
	global	display_menu@flag
	global	read_switches@once
	global	_str_user
	global	_menu
	global	_gear
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	451

;initializer for display_menu@flag
	dw	(01h)&0ffffh
	file	"matrix_keypad.c"
	line	90

;initializer for read_switches@once
	db	low(01h)
	file	"main.c"
	line	28

;initializer for _str_user
	db	low(030h)
	db	low(030h)
	db	low(031h)
	db	low(031h)
	db	low(0)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	line	21

;initializer for _menu
	db	low(076h)
	db	low(069h)
	db	low(065h)
	db	low(077h)
	db	low(020h)
	db	low(06Ch)
	db	low(06Fh)
	db	low(067h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	db   0
	db   0
	db   0
	db	low(063h)
	db	low(06Ch)
	db	low(065h)
	db	low(061h)
	db	low(072h)
	db	low(020h)
	db	low(06Ch)
	db	low(06Fh)
	db	low(067h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	db	low(073h)
	db	low(065h)
	db	low(074h)
	db	low(020h)
	db	low(074h)
	db	low(069h)
	db	low(06Dh)
	db	low(065h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	db	low(063h)
	db	low(068h)
	db	low(061h)
	db	low(06Eh)
	db	low(067h)
	db	low(065h)
	db	low(020h)
	db	low(070h)
	db	low(077h)
	db	low(064h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(064h)
	db	low(06Fh)
	db	low(077h)
	db	low(06Eh)
	db	low(06Ch)
	db	low(06Fh)
	db	low(061h)
	db	low(064h)
	db	low(020h)
	db	low(06Ch)
	db	low(06Fh)
	db	low(067h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	line	20

;initializer for _gear
	db	low(04Fh)
	db	low(04Eh)
	db	low(0)
	db	low(04Eh)
	db	low(055h)
	db	low(0)
	db	low(047h)
	db	low(031h)
	db	low(0)
	db	low(047h)
	db	low(032h)
	db	low(0)
	db	low(047h)
	db	low(033h)
	db	low(0)
	db	low(047h)
	db	low(034h)
	db	low(0)
	db	low(047h)
	db	low(035h)
	db	low(0)
	db	low(052h)
	db	low(047h)
	db	low(0)
	db	low(043h)
	db	low(04Fh)
	db	low(0)
	global	_clock_reg
	global	_adc_reg_val
	global	_returnvalue
	global	_log
	global	_count
	global	_delay
	global	read_switches@key
	global	_key
	global	_time
	global	_str
	global	password@flag
	global	_event
	global	_RCREG
_RCREG	set	0xFAE
	global	_TXREG
_TXREG	set	0xFAD
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ABDOVF
_ABDOVF	set	0x7DC7
	global	_ACKSTAT
_ACKSTAT	set	0x7E2E
	global	_CKE
_CKE	set	0x7E3E
	global	_VCFG1
_VCFG1	set	0x7E0D
	global	_GODONE
_GODONE	set	0x7E11
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_RD7
_RD7	set	0x7C1F
	global	_RC0
_RC0	set	0x7C10
	global	_RC2
_RC2	set	0x7C12
	global	_TXIF
_TXIF	set	0x7CF4
	global	_RB4
_RB4	set	0x7C0C
	global	_RB3
_RB3	set	0x7C0B
	global	_RB2
_RB2	set	0x7C0A
	global	_RB1
_RB1	set	0x7C09
	global	_RB7
_RB7	set	0x7C0F
	global	_RB6
_RB6	set	0x7C0E
	global	_RB5
_RB5	set	0x7C0D
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_SMP
_SMP	set	0x7E3F
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_GO
_GO	set	0x7E11
	global	_ADON
_ADON	set	0x7E10
	global	_VCFG0
_VCFG0	set	0x7E0C
	global	_ADCS2
_ADCS2	set	0x7E02
	global	_ADCS1
_ADCS1	set	0x7E01
	global	_ADCS0
_ADCS0	set	0x7E00
	global	_ACQT0
_ACQT0	set	0x7E03
	global	_ACQT1
_ACQT1	set	0x7E04
	global	_ACQT2
_ACQT2	set	0x7E05
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_ADFM
_ADFM	set	0x7E07
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_TXIE
_TXIE	set	0x7CEC
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_RBPU
_RBPU	set	0x7F8F
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_SPEN
_SPEN	set	0x7D5F
	global	_CSRC
_CSRC	set	0x7D67
	global	_PORTD
_PORTD	set	0xF83
	global	_RC1
_RC1	set	0x7C11
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_12:
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	115	;'s'
	db	32
	db	97	;'a'
	db	114	;'r'
	db	101	;'e'
	db	32
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	101	;'e'
	db	100	;'d'
	db	10
	db	13
	db	0
	
STR_7:
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	105	;'i'
	db	115	;'s'
	db	32
	db	115	;'s'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	32
	db	0
	
STR_8:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	69	;'E'
	db	86	;'V'
	db	32
	db	32
	db	82	;'R'
	db	80	;'P'
	db	77	;'M'
	db	32
	db	0
	
STR_6:
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	32
	db	0
	
STR_10:
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	0
	
STR_2:
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_1:
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_4:
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	87	;'W'
	db	114	;'r'
	db	111	;'o'
	db	110	;'n'
	db	103	;'g'
	db	0
	
STR_13:
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	115	;'s'
	db	32
	db	97	;'a'
	db	114	;'r'
	db	101	;'e'
	db	32
	db	58	;':'
	db	32
	db	10
	db	13
	db	0
	
STR_3:
	db	83	;'S'
	db	117	;'u'
	db	99	;'c'
	db	99	;'c'
	db	101	;'e'
	db	115	;'s'
	db	115	;'s'
	db	102	;'f'
	db	117	;'u'
	db	108	;'l'
	db	108	;'l'
	db	121	;'y'
	db	0
	
STR_9:
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	95	;'_'
	db	67	;'C'
	db	76	;'L'
	db	69	;'E'
	db	65	;'A'
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_5:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	0
	
STR_11:
	db	105	;'i'
	db	110	;'n'
	db	32
	db	85	;'U'
	db	65	;'A'
	db	82	;'R'
	db	84	;'T'
	db	0
	
STR_15:
	db	42
	db	32
	db	0
STR_24	equ	STR_8+0
STR_17	equ	STR_15+0
STR_19	equ	STR_15+0
STR_20	equ	STR_15+0
STR_23	equ	STR_15+0
STR_16	equ	STR_6+14
STR_18	equ	STR_6+14
STR_21	equ	STR_6+14
STR_22	equ	STR_6+14
STR_14	equ	STR_13+11
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config OSC = "XT"
	config BOREN = "OFF"
	config WDT = "OFF"
	config PBADEN = "OFF"
	config LVP = "OFF"
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMRAM,class=COMRAM,bit,space=1,noexec,lowdata
global __pbitbssCOMRAM
__pbitbssCOMRAM:
password@flag:
       ds      1
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
password@F10404:
       ds      5
	global	_clock_reg
_clock_reg:
       ds      3
	global	_adc_reg_val
_adc_reg_val:
       ds      2
	global	_returnvalue
_returnvalue:
       ds      2
	global	_log
_log:
       ds      2
	global	_count
_count:
       ds      2
	global	_delay
_delay:
       ds      2
read_switches@key:
       ds      1
	global	_key
_key:
       ds      1
	global	_time
_time:
       ds      9
	global	_str
_str:
       ds      3
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	451
display_menu@flag:
       ds      2
psect	dataCOMRAM
	file	"matrix_keypad.c"
	line	90
read_switches@once:
       ds      1
psect	dataCOMRAM
	file	"main.c"
	line	28
	global	_str_user
_str_user:
       ds      5
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	21
	global	_menu
_menu:
       ds      85
psect	dataBANK0
	file	"main.c"
	line	20
	global	_gear
_gear:
       ds      27
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
	global	_event
_event:
       ds      170
	file	"pic18F4580.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (112 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,112
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (8 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,8
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
	line	#
; Clear objects allocated to BANK1 (170 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	170
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BITCOMRAM (1 bytes)
	global __pbitbssCOMRAM
clrf	(__pbitbssCOMRAM/8+0)&0xffh,c
; Clear objects allocated to COMRAM (32 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	32
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_read_ds1307:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
??_read_switches:	; 1 bytes @ 0x0
?_clcd_write:	; 1 bytes @ 0x0
?_read_external_eeprom:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
??_init_matrix_keypad:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
?_init_i2c:	; 1 bytes @ 0x0
??_init_i2c:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
??_i2c_idle:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
??_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
??_i2c_write:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
??_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
??_i2c_no_ack:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
??_i2c_read:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_add_event:	; 1 bytes @ 0x0
?_convertval:	; 1 bytes @ 0x0
?_set_time:	; 1 bytes @ 0x0
?_change_password:	; 1 bytes @ 0x0
?_view_log:	; 1 bytes @ 0x0
?_clear_log:	; 1 bytes @ 0x0
?_download_log:	; 1 bytes @ 0x0
?_display_menu:	; 1 bytes @ 0x0
?_display_time:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
	global	?_my_strcmp
?_my_strcmp:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0x0
	global	my_strcmp@str1
my_strcmp@str1:	; 1 bytes @ 0x0
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x0
	ds   1
??_read_ds1307:	; 1 bytes @ 0x1
?_write_ds1307:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
?_write_external_eeprom:	; 1 bytes @ 0x1
??_read_external_eeprom:	; 1 bytes @ 0x1
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0x1
	global	read_ds1307@address
read_ds1307@address:	; 1 bytes @ 0x1
	global	my_strcmp@str2
my_strcmp@str2:	; 1 bytes @ 0x1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	global	write_external_eeprom@data
write_external_eeprom@data:	; 1 bytes @ 0x1
	global	read_external_eeprom@address
read_external_eeprom@address:	; 1 bytes @ 0x1
	ds   1
??_write_ds1307:	; 1 bytes @ 0x2
??_write_external_eeprom:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
??_my_strcmp:	; 1 bytes @ 0x2
	global	write_ds1307@address
write_ds1307@address:	; 1 bytes @ 0x2
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x2
	global	write_external_eeprom@address
write_external_eeprom@address:	; 1 bytes @ 0x2
	global	read_external_eeprom@data
read_external_eeprom@data:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds   1
??_init_ds1307:	; 1 bytes @ 0x3
??_get_time:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	ds   1
??___wmul:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
??___awmod:	; 1 bytes @ 0x4
??___lbdiv:	; 1 bytes @ 0x4
??___lbmod:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds   1
?_clcd_print:	; 1 bytes @ 0x6
??_add_event:	; 1 bytes @ 0x6
?_puts:	; 2 bytes @ 0x6
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x6
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	puts@s
puts@s:	; 2 bytes @ 0x6
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   1
?_clcd_putch:	; 1 bytes @ 0x7
??_convertval:	; 1 bytes @ 0x7
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x7
	global	convertval@rem
convertval@rem:	; 1 bytes @ 0x7
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x7
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x7
	ds   1
??_clcd_putch:	; 1 bytes @ 0x8
??_puts:	; 1 bytes @ 0x8
	global	convertval@num
convertval@num:	; 1 bytes @ 0x8
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x8
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x8
	global	add_event@i
add_event@i:	; 2 bytes @ 0x8
	ds   1
??_clcd_print:	; 1 bytes @ 0x9
??_change_password:	; 1 bytes @ 0x9
??_view_log:	; 1 bytes @ 0x9
??_clear_log:	; 1 bytes @ 0x9
??_download_log:	; 1 bytes @ 0x9
??_display_time:	; 1 bytes @ 0x9
??_init_config:	; 1 bytes @ 0x9
	global	?_password
?_password:	; 2 bytes @ 0x9
	global	convertval@val
convertval@val:	; 1 bytes @ 0x9
	global	download_log@key
download_log@key:	; 1 bytes @ 0x9
	global	change_password@j
change_password@j:	; 2 bytes @ 0x9
	global	view_log@i
view_log@i:	; 2 bytes @ 0x9
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x9
	ds   1
??_set_time:	; 1 bytes @ 0xA
	global	add_event@j
add_event@j:	; 2 bytes @ 0xA
	global	download_log@i
download_log@i:	; 2 bytes @ 0xA
	ds   1
??_password:	; 1 bytes @ 0xB
??___lwdiv:	; 1 bytes @ 0xB
	global	change_password@pwd_key
change_password@pwd_key:	; 1 bytes @ 0xB
	global	clear_log@clr
clear_log@clr:	; 1 bytes @ 0xB
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	global	set_time@wait_209
set_time@wait_209:	; 4 bytes @ 0xB
	global	password@str_pass
password@str_pass:	; 5 bytes @ 0xB
	ds   1
	global	change_password@change
change_password@change:	; 2 bytes @ 0xC
	global	clear_log@i
clear_log@i:	; 2 bytes @ 0xC
	ds   1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds   1
	global	clear_log@j
clear_log@j:	; 2 bytes @ 0xE
	ds   1
	global	set_time@prekey
set_time@prekey:	; 1 bytes @ 0xF
	ds   1
	global	set_time@SEC
set_time@SEC:	; 1 bytes @ 0x10
	global	password@wait
password@wait:	; 4 bytes @ 0x10
	ds   1
	global	set_time@MIN
set_time@MIN:	; 1 bytes @ 0x11
	ds   1
	global	set_time@HOUR
set_time@HOUR:	; 1 bytes @ 0x12
	ds   1
	global	set_time@key
set_time@key:	; 1 bytes @ 0x13
	ds   1
	global	set_time@secs
set_time@secs:	; 1 bytes @ 0x14
	global	password@wait_189
password@wait_189:	; 4 bytes @ 0x14
	ds   1
	global	set_time@mins
set_time@mins:	; 1 bytes @ 0x15
	ds   1
	global	set_time@hour
set_time@hour:	; 1 bytes @ 0x16
	ds   1
	global	set_time@flag
set_time@flag:	; 4 bytes @ 0x17
	ds   1
	global	password@key
password@key:	; 1 bytes @ 0x18
	ds   1
	global	password@i
password@i:	; 2 bytes @ 0x19
	ds   2
??_display_menu:	; 1 bytes @ 0x1B
	ds   1
	global	display_menu@lkey
display_menu@lkey:	; 1 bytes @ 0x1C
	ds   1
	global	display_menu@key
display_menu@key:	; 1 bytes @ 0x1D
	ds   1
	global	display_menu@i
display_menu@i:	; 2 bytes @ 0x1E
	ds   2
??_main:	; 1 bytes @ 0x20
	ds   1
	global	main@i
main@i:	; 2 bytes @ 0x21
	ds   2
;!
;!Data Sizes:
;!    Strings     198
;!    Constant    0
;!    Data        120
;!    BSS         202
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     35      76
;!    BANK0           160      0     112
;!    BANK1           256      0     170
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 170
;!		 -> STR_24(CODE[18]), STR_23(CODE[3]), STR_22(CODE[3]), STR_21(CODE[3]), 
;!		 -> STR_20(CODE[3]), STR_19(CODE[3]), STR_18(CODE[3]), STR_17(CODE[3]), 
;!		 -> STR_16(CODE[3]), menu(BANK0[85]), STR_15(CODE[3]), STR_11(CODE[8]), 
;!		 -> STR_10(CODE[17]), STR_9(CODE[12]), STR_8(CODE[18]), STR_7(CODE[18]), 
;!		 -> STR_6(CODE[17]), STR_5(CODE[9]), STR_4(CODE[15]), STR_3(CODE[13]), 
;!		 -> STR_2(CODE[17]), STR_1(CODE[15]), str(COMRAM[3]), gear(BANK0[27]), 
;!		 -> time(COMRAM[9]), event(BANK1[170]), 
;!
;!    puts@s	PTR const unsigned char  size(2) Largest target is 170
;!		 -> STR_14(CODE[3]), STR_13(CODE[14]), STR_12(CODE[22]), event(BANK1[170]), 
;!
;!    my_strcmp@str2	PTR unsigned char  size(1) Largest target is 5
;!		 -> password@str_pass(COMRAM[5]), 
;!
;!    my_strcmp@str1	PTR unsigned char  size(1) Largest target is 5
;!		 -> str_user(COMRAM[5]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_display_menu
;!    _password->_clcd_print
;!    _password->_clcd_putch
;!    _init_config->_clcd_print
;!    _init_ds1307->_read_ds1307
;!    _init_ds1307->_write_ds1307
;!    _init_clcd->_clcd_write
;!    _get_time->_read_ds1307
;!    _display_time->_clcd_print
;!    _display_menu->_set_time
;!    _view_log->_clcd_print
;!    _set_time->_convertval
;!    _write_ds1307->_i2c_write
;!    _read_ds1307->_i2c_write
;!    _convertval->___lbdiv
;!    _convertval->___lbmod
;!    ___lbmod->_read_ds1307
;!    ___lbdiv->_read_ds1307
;!    _download_log->_clcd_print
;!    _puts->___wmul
;!    _clear_log->_clcd_print
;!    _change_password->_clcd_print
;!    _change_password->_clcd_putch
;!    _write_external_eeprom->_i2c_write
;!    _read_external_eeprom->_i2c_write
;!    _clcd_putch->___lbdiv
;!    _clcd_putch->___lbmod
;!    _clcd_print->___wmul
;!    _add_event->___wmul
;!    ___lwdiv->_read_adc
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0  110931
;!                                             32 COMRAM     3     3      0
;!                            ___awdiv
;!                            ___awmod
;!                            ___lwdiv
;!                          _add_event
;!                         _clcd_print
;!                         _clcd_write
;!                       _display_menu
;!                       _display_time
;!                           _get_time
;!                        _init_config
;!                           _password
;!                           _read_adc
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (1) _read_adc                                             7     5      2      45
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _password                                            18    16      2   12031
;!                                              9 COMRAM    18    16      2
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                          _my_strcmp
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _my_strcmp                                            4     2      2     330
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    9401
;!                         _clcd_print
;!                           _init_adc
;!                          _init_clcd
;!                        _init_ds1307
;!                           _init_i2c
;!                 _init_matrix_keypad
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0     734
;!                                              3 COMRAM     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0    1640
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_time                                             0     0      0      67
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (1) _display_time                                         0     0      0    7027
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _display_menu                                         5     5      0   69663
;!                                             27 COMRAM     5     5      0
;!                    _change_password
;!                         _clcd_print
;!                          _clear_log
;!                       _download_log
;!                      _read_switches
;!                           _set_time
;!                           _view_log
;! ---------------------------------------------------------------------------------
;! (2) _view_log                                             2     2      0   11209
;!                                              9 COMRAM     2     2      0
;!                             ___wmul
;!                         _clcd_print
;!                         _clcd_write
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _set_time                                            34    34      0   15627
;!                                             10 COMRAM    17    17      0
;!                            ___lbdiv
;!                            ___lbmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                         _convertval
;!                        _read_ds1307
;!                      _read_switches
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _write_ds1307                                         2     1      1     598
;!                                              1 COMRAM     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _convertval                                           3     3      0    1521
;!                                              7 COMRAM     3     3      0
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (4) ___lbmod                                              4     3      1     691
;!                                              3 COMRAM     4     3      1
;!                        _read_ds1307 (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lbdiv                                              4     3      1     694
;!                                              3 COMRAM     4     3      1
;!                        _read_ds1307 (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _download_log                                         3     3      0   11600
;!                                              9 COMRAM     3     3      0
;!                             ___wmul
;!                         _clcd_print
;!                         _clcd_write
;!                               _puts
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (3) _puts                                                 2     0      2     371
;!                                              6 COMRAM     2     0      2
;!                             ___wmul (ARG)
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _clear_log                                            7     7      0   11297
;!                                              9 COMRAM     7     7      0
;!                             ___wmul
;!                         _clcd_print
;!                         _clcd_write
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _change_password                                      5     5      0   12385
;!                                              9 COMRAM     5     5      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!               _read_external_eeprom
;!                      _read_switches
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (3) _write_external_eeprom                                2     1      1     674
;!                                              1 COMRAM     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (1) _read_switches                                        1     1      0      44
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (2) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _read_external_eeprom                                 2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_write                                            1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             0     0      0       0
;!                         _i2c_no_ack
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (5) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2c_no_ack                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1    2596
;!                                              7 COMRAM     2     1      1
;!                            ___lbdiv (ARG)
;!                            ___lbmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           3     0      3    7027
;!                                              6 COMRAM     3     0      3
;!                             ___wmul (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_write                                           2     1      1    1640
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _add_event                                            6     6      0    2704
;!                                              6 COMRAM     6     6      0
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4    2427
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     314
;!                                              7 COMRAM     7     3      4
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4     448
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4     452
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awdiv
;!   ___awmod
;!   ___lwdiv
;!     _read_adc (ARG)
;!   _add_event
;!     ___wmul
;!   _clcd_print
;!     ___wmul (ARG)
;!     _clcd_write (ARG)
;!   _clcd_write
;!   _display_menu
;!     _change_password
;!       _clcd_print
;!       _clcd_putch
;!         ___lbdiv (ARG)
;!           _read_ds1307 (ARG)
;!             _i2c_read
;!               _i2c_no_ack
;!               _i2c_rx_mode
;!                 _i2c_idle
;!             _i2c_rep_start
;!               _i2c_idle
;!             _i2c_start
;!               _i2c_idle
;!             _i2c_stop
;!               _i2c_idle
;!             _i2c_write
;!               _i2c_idle
;!         ___lbmod (ARG)
;!           _read_ds1307 (ARG)
;!         _clcd_write (ARG)
;!       _clcd_write
;!       _read_external_eeprom
;!         _i2c_read
;!         _i2c_rep_start
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!       _read_switches
;!         _scan_key
;!       _write_external_eeprom
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _clcd_print
;!     _clear_log
;!       ___wmul
;!       _clcd_print
;!       _clcd_write
;!       _read_switches
;!     _download_log
;!       ___wmul
;!       _clcd_print
;!       _clcd_write
;!       _puts
;!         ___wmul (ARG)
;!         _putch (ARG)
;!       _read_switches
;!     _read_switches
;!     _set_time
;!       ___lbdiv
;!       ___lbmod
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _convertval
;!         ___lbdiv
;!         ___lbmod
;!       _read_ds1307
;!       _read_switches
;!       _write_ds1307
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _view_log
;!       ___wmul
;!       _clcd_print
;!       _clcd_write
;!       _read_switches
;!   _display_time
;!     _clcd_print
;!   _get_time
;!     _read_ds1307
;!   _init_config
;!     _clcd_print
;!     _init_adc
;!     _init_clcd
;!       _clcd_write
;!     _init_ds1307
;!       _read_ds1307
;!       _write_ds1307
;!     _init_i2c
;!     _init_matrix_keypad
;!   _password
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _my_strcmp
;!     _read_switches
;!   _read_adc
;!   _read_switches
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      26        0.0%
;!BITBIGSFRlll       281      0       0      24        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      AA       7       66.4%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      70       5       70.0%
;!BITCOMRAM           5F      0       1       0        1.1%
;!COMRAM              5F     23      4C       1       80.0%
;!BITBIGSFRhhhhhl     27      0       0      17        0.0%
;!BITBIGSFRllh         F      0       0      23        0.0%
;!BITBIGSFRhhhhhh      E      0       0      16        0.0%
;!BITBIGSFRlhhhl       9      0       0      20        0.0%
;!BITBIGSFRlhhhhl      8      0       0      19        0.0%
;!BITBIGSFRlhhhhh      7      0       0      18        0.0%
;!BITBIGSFRlhl         7      0       0      22        0.0%
;!BITBIGSFRlhhl        2      0       0      21        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     166      25        0.0%
;!DATA                 0      0     166       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 635 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   33[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___lwdiv
;;		_add_event
;;		_clcd_print
;;		_clcd_write
;;		_display_menu
;;		_display_time
;;		_get_time
;;		_init_config
;;		_password
;;		_read_adc
;;		_read_switches
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	635
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	635
	
_main:
;incstack = 0
	callstack 25
	line	638
	
l3313:
;main.c: 638: init_config();
	call	_init_config	;wreg free
	line	642
	
l3315:
;main.c: 641: {;main.c: 642: adc_reg_val = ((read_adc(0x04)) / 10);
	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:___lwdiv@dividend)
	movff	1+?_read_adc,(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:_adc_reg_val)
	movff	1+?___lwdiv,(c:_adc_reg_val+1)
	line	644
	
l3317:
;main.c: 644: if(adc_reg_val >= 100)
	btfsc	((c:_adc_reg_val+1))^00h,c,7
	goto	u2621
	movf	((c:_adc_reg_val+1))^00h,c,w
	bnz	u2620
	movlw	100
	subwf	 ((c:_adc_reg_val))^00h,c,w
	btfss	status,0
	goto	u2621
	goto	u2620

u2621:
	goto	l349
u2620:
	line	646
	
l3319:
;main.c: 645: {;main.c: 646: adc_reg_val = 99;
	movlw	high(063h)
	movwf	((c:_adc_reg_val+1))^00h,c
	movlw	low(063h)
	movwf	((c:_adc_reg_val))^00h,c
	line	647
	
l349:
	line	649
;main.c: 647: };main.c: 649: str[2] = '\0';
	movlw	low(0)
	movwf	(0+((c:_str)+02h))^00h,c
	line	651
;main.c: 651: for(int i=1; i>=0; i--)
	movlw	high(01h)
	movwf	((c:main@i+1))^00h,c
	movlw	low(01h)
	movwf	((c:main@i))^00h,c
	line	653
	
l3325:
;main.c: 652: {;main.c: 653: str[i] = (adc_reg_val % 10) + '0';
	movf	((c:main@i))^00h,c,w
	addlw	low(_str)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_adc_reg_val),(c:___awmod@dividend)
	movff	(c:_adc_reg_val+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	654
	
l3327:
;main.c: 654: adc_reg_val = adc_reg_val / 10 ;
	movff	(c:_adc_reg_val),(c:___awdiv@dividend)
	movff	(c:_adc_reg_val+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:_adc_reg_val)
	movff	1+?___awdiv,(c:_adc_reg_val+1)
	line	651
	
l3329:
	decf	((c:main@i))^00h,c
	btfss	status,0
	decf	((c:main@i+1))^00h,c
	
l3331:
	btfsc	((c:main@i+1))^00h,c,7
	goto	u2630
	goto	u2631

u2631:
	goto	l3325
u2630:
	line	657
	
l3333:
;main.c: 655: };main.c: 657: clcd_print(str, (0xC0 + (14)));
		movlw	low(_str)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CEh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	659
	
l3335:
;main.c: 659: get_time();
	call	_get_time	;wreg free
	line	660
	
l3337:
;main.c: 660: display_time();
	call	_display_time	;wreg free
	line	662
;main.c: 662: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:_key))^00h,c
	line	665
	
l3339:
;main.c: 665: if(key == 1)
		decf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2641
	goto	u2640

u2641:
	goto	l3345
u2640:
	line	667
	
l3341:
;main.c: 666: {;main.c: 667: count = 8;
	movlw	high(08h)
	movwf	((c:_count+1))^00h,c
	movlw	low(08h)
	movwf	((c:_count))^00h,c
	line	668
	
l3343:
;main.c: 668: add_event();
	call	_add_event	;wreg free
	line	672
	
l3345:
;main.c: 669: };main.c: 672: if(key == 2)
		movlw	2
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2651
	goto	u2650

u2651:
	goto	l3353
u2650:
	line	674
	
l3347:
;main.c: 673: {;main.c: 674: if(count<7)
	btfsc	((c:_count+1))^00h,c,7
	goto	u2660
	movf	((c:_count+1))^00h,c,w
	bnz	u2661
	movlw	7
	subwf	 ((c:_count))^00h,c,w
	btfsc	status,0
	goto	u2661
	goto	u2660

u2661:
	goto	l3351
u2660:
	line	675
	
l3349:
;main.c: 675: count++;
	infsnz	((c:_count))^00h,c
	incf	((c:_count+1))^00h,c
	line	676
	
l3351:
;main.c: 676: add_event();
	call	_add_event	;wreg free
	line	680
	
l3353:
;main.c: 677: };main.c: 680: if(key == 3)
		movlw	3
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2671
	goto	u2670

u2671:
	goto	l3361
u2670:
	line	683
	
l3355:
;main.c: 681: {;main.c: 683: if(count > 1)
	btfsc	((c:_count+1))^00h,c,7
	goto	u2681
	movf	((c:_count+1))^00h,c,w
	bnz	u2680
	movlw	2
	subwf	 ((c:_count))^00h,c,w
	btfss	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l3359
u2680:
	line	684
	
l3357:
;main.c: 684: count--;
	decf	((c:_count))^00h,c
	btfss	status,0
	decf	((c:_count+1))^00h,c
	line	685
	
l3359:
;main.c: 685: add_event();
	call	_add_event	;wreg free
	line	688
	
l3361:
;main.c: 686: };main.c: 688: clcd_print(gear[count], (0xC0 + (10)));
	movf	((c:_count))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_gear)
	movwf	(??_main+0+0)^00h,c
		movff	(??_main+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CAh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	689
	
l3363:
;main.c: 689: if(key == 11)
		movlw	11
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2691
	goto	u2690

u2691:
	goto	l3315
u2690:
	line	691
	
l3365:
;main.c: 690: {;main.c: 691: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	692
	
l3367:
;main.c: 692: returnvalue = password();
	call	_password	;wreg free
	movff	0+?_password,(c:_returnvalue)
	movff	1+?_password,(c:_returnvalue+1)
	line	693
	
l3369:
;main.c: 693: if(returnvalue == 1)
		decf	((c:_returnvalue))^00h,c,w
iorwf	((c:_returnvalue+1))^00h,c,w
	btfss	status,2
	goto	u2701
	goto	u2700

u2701:
	goto	l3315
u2700:
	line	695
	
l3371:
;main.c: 694: {;main.c: 695: display_menu();
	call	_display_menu	;wreg free
	goto	l3315
	global	start
	goto	start
	callstack 0
	line	699
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 44 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[COMRAM] unsigned char 
;;  reg_val         2    4[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	44
global __ptext1
__ptext1:
psect	text1
	file	"adc.c"
	line	44
	
_read_adc:
;incstack = 0
	callstack 30
;read_adc@channel stored from wreg
	movwf	((c:read_adc@channel))^00h,c
	line	50
	
l2949:
;adc.c: 46: unsigned short reg_val;;adc.c: 50: ADCON0 = (ADCON0 & 0xC3) | (channel << 2);
	movff	(c:read_adc@channel),??_read_adc+0+0
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c

	movf	((c:4034))^0f00h,c,w	;volatile
	andlw	low(0C3h)
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	53
	
l2951:
;adc.c: 53: GO = 1;
	bsf	c:(32273/8),(32273)&7	;volatile
	line	54
;adc.c: 54: while (GO);
	
l36:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u2121
	goto	u2120
u2121:
	goto	l36
u2120:
	line	55
	
l2953:
;adc.c: 55: reg_val = (ADRESH << 8) | ADRESL;
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_read_adc+0+0	;volatile
	clrf	(??_read_adc+0+0+1)^00h,c
	movff	??_read_adc+0+0,??_read_adc+0+1
	clrf	(??_read_adc+0+0)^00h,c
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:read_adc@reg_val))^00h,c
	movf	(??_read_adc+0+1)^00h,c,w
	movwf	1+((c:read_adc@reg_val))^00h,c
	line	57
	
l2955:
;adc.c: 57: return reg_val;
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	58
	
l39:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	_password

;; *************** function _password *****************
;; Defined at:
;;		line 88 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            4   20[COMRAM] long 
;;  wait            4   16[COMRAM] long 
;;  str_pass        5   11[COMRAM] unsigned char [5]
;;  i               2   25[COMRAM] short 
;;  key             1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:        16       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        18       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_my_strcmp
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	88
global __ptext2
__ptext2:
psect	text2
	file	"main.c"
	line	88
	
_password:
;incstack = 0
	callstack 28
	line	90
	
l3009:
;main.c: 90: short i = 0;
	movlw	high(0)
	movwf	((c:password@i+1))^00h,c
	movlw	low(0)
	movwf	((c:password@i))^00h,c
	line	93
	
l3011:
;main.c: 91: static bit flag = 0;;main.c: 92: char key;;main.c: 93: char str_pass[5]="";
	lfsr	2,(password@str_pass)
	movlw	5-1
u2181:
	clrf	postinc2
	decf	wreg
	bc	u2181
	line	96
	
l3013:
;main.c: 95: {;main.c: 96: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:password@key))^00h,c
	line	97
	
l3015:
;main.c: 97: if(i < 4)
	btfsc	((c:password@i+1))^00h,c,7
	goto	u2190
	movf	((c:password@i+1))^00h,c,w
	bnz	u2191
	movlw	4
	subwf	 ((c:password@i))^00h,c,w
	btfsc	status,0
	goto	u2191
	goto	u2190

u2191:
	goto	l3035
u2190:
	line	99
	
l3017:
;main.c: 98: {;main.c: 99: clcd_print("ENTER PASSWORD" , (0x80 + (0)));
		movlw	low(STR_1)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	100
	
l3019:
;main.c: 100: if(key == 11)
		movlw	11
	xorwf	((c:password@key))^00h,c,w
	btfss	status,2
	goto	u2201
	goto	u2200

u2201:
	goto	l3027
u2200:
	line	102
	
l3021:
;main.c: 101: {;main.c: 102: str_pass[i++] = '1';
	movf	((c:password@i))^00h,c,w
	addlw	low(password@str_pass)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	
l3023:
	infsnz	((c:password@i))^00h,c
	incf	((c:password@i+1))^00h,c
	line	103
	
l3025:
;main.c: 103: clcd_putch('*' , (0xC0 + (i)));
	movf	((c:password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	105
	
l3027:
;main.c: 104: };main.c: 105: if(key == 12)
		movlw	12
	xorwf	((c:password@key))^00h,c,w
	btfss	status,2
	goto	u2211
	goto	u2210

u2211:
	goto	l3035
u2210:
	line	107
	
l3029:
;main.c: 106: {;main.c: 107: str_pass[i++] = '0';
	movf	((c:password@i))^00h,c,w
	addlw	low(password@str_pass)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l3031:
	infsnz	((c:password@i))^00h,c
	incf	((c:password@i+1))^00h,c
	line	108
	
l3033:
;main.c: 108: clcd_putch('*' , (0xC0 + (i)));
	movf	((c:password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	112
	
l3035:
;main.c: 109: };main.c: 110: };main.c: 112: if(i == 4)
		movlw	4
	xorwf	((c:password@i))^00h,c,w
iorwf	((c:password@i+1))^00h,c,w
	btfss	status,2
	goto	u2221
	goto	u2220

u2221:
	goto	l3041
u2220:
	line	114
	
l3037:
;main.c: 113: {;main.c: 114: str_pass[i] = '\0';
	movf	((c:password@i))^00h,c,w
	addlw	low(password@str_pass)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	115
	
l3039:
;main.c: 115: flag = 1;
	bsf	(password@flag/8)^00h,c,(password@flag)&7
	line	118
	
l3041:
;main.c: 116: };main.c: 118: if(flag)
	btfss	(password@flag/8)^00h,c,(password@flag)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l3013
u2230:
	line	121
	
l3043:
;main.c: 119: {;main.c: 121: if(my_strcmp(str_user , str_pass) == 0)
		movlw	low(_str_user)
	movwf	((c:my_strcmp@str1))^00h,c

		movlw	low(password@str_pass)
	movwf	((c:my_strcmp@str2))^00h,c

	call	_my_strcmp	;wreg free
	movf	(0+?_my_strcmp)^00h,c,w
iorwf	(1+?_my_strcmp)^00h,c,w
	btfss	status,2
	goto	u2241
	goto	u2240

u2241:
	goto	l3065
u2240:
	line	123
	
l3045:
;main.c: 122: {;main.c: 123: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	124
	
l3047:
;main.c: 124: clcd_print("Password Entered" , (0x80 + (0)));
		movlw	low(STR_2)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	125
	
l3049:
;main.c: 125: clcd_print("Successfully" , (0xC0 + (4)));
		movlw	low(STR_3)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	126
	
l3051:
;main.c: 126: for(long wait = 0 ; wait < 50000 ; wait++);
	movlw	low(0)
	movwf	((c:password@wait))^00h,c
	movlw	high(0)
	movwf	((c:password@wait+1))^00h,c
	movlw	low highword(0)
	movwf	((c:password@wait+2))^00h,c
	movlw	high highword(0)
	movwf	((c:password@wait+3))^00h,c
	
l3057:
	movlw	low(01h)
	addwf	((c:password@wait))^00h,c
	movlw	0
	addwfc	((c:password@wait+1))^00h,c
	addwfc	((c:password@wait+2))^00h,c
	addwfc	((c:password@wait+3))^00h,c
	btfsc	((c:password@wait+3))^00h,c,7
	goto	u2251
	movf	((c:password@wait+3))^00h,c,w
	iorwf	((c:password@wait+2))^00h,c,w
	bnz	u2250
	movlw	80
	subwf	 ((c:password@wait))^00h,c,w
	movlw	195
	subwfb	((c:password@wait+1))^00h,c,w
	btfss	status,0
	goto	u2251
	goto	u2250

u2251:
	goto	l3057
u2250:
	line	127
	
l3059:
;main.c: 127: return 1;
	movlw	high(01h)
	movwf	((c:?_password+1))^00h,c
	movlw	low(01h)
	movwf	((c:?_password))^00h,c
	goto	l223
	line	131
	
l3065:
;main.c: 129: else;main.c: 130: {;main.c: 131: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	132
	
l3067:
;main.c: 132: clcd_print("Password Wrong" , (0x80 + (0)));
		movlw	low(STR_4)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	134
	
l3069:
;main.c: 134: for(long wait=0;wait<500000;wait++);
	movlw	low(0)
	movwf	((c:password@wait_189))^00h,c
	movlw	high(0)
	movwf	((c:password@wait_189+1))^00h,c
	movlw	low highword(0)
	movwf	((c:password@wait_189+2))^00h,c
	movlw	high highword(0)
	movwf	((c:password@wait_189+3))^00h,c
	
l3075:
	movlw	low(01h)
	addwf	((c:password@wait_189))^00h,c
	movlw	0
	addwfc	((c:password@wait_189+1))^00h,c
	addwfc	((c:password@wait_189+2))^00h,c
	addwfc	((c:password@wait_189+3))^00h,c
	btfsc	((c:password@wait_189+3))^00h,c,7
	goto	u2261
	movf	((c:password@wait_189+3))^00h,c,w
	bnz	u2260
	movlw	32
	subwf	 ((c:password@wait_189))^00h,c,w
	movlw	161
	subwfb	((c:password@wait_189+1))^00h,c,w
	movlw	7
	subwfb	((c:password@wait_189+2))^00h,c,w
	btfss	status,0
	goto	u2261
	goto	u2260

u2261:
	goto	l3075
u2260:
	line	136
	
l3077:
;main.c: 135: {;main.c: 136: i = 0;
	movlw	high(0)
	movwf	((c:password@i+1))^00h,c
	movlw	low(0)
	movwf	((c:password@i))^00h,c
	line	137
	
l3079:
;main.c: 137: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	141
	
l3081:
;main.c: 138: };main.c: 139: };main.c: 141: flag = 0;
	bcf	(password@flag/8)^00h,c,(password@flag)&7
	goto	l3013
	line	144
	
l223:
	return	;funcret
	callstack 0
GLOBAL	__end_of_password
	__end_of_password:
	signat	_password,90
	global	_my_strcmp

;; *************** function _my_strcmp *****************
;; Defined at:
;;		line 77 in file "main.c"
;; Parameters:    Size  Location     Type
;;  str1            1    0[COMRAM] PTR unsigned char 
;;		 -> str_user(5), 
;;  str2            1    1[COMRAM] PTR unsigned char 
;;		 -> password@str_pass(5), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_password
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	77
global __ptext3
__ptext3:
psect	text3
	file	"main.c"
	line	77
	
_my_strcmp:
;incstack = 0
	callstack 29
	line	79
	
l2647:
;main.c: 79: while(*str1 && *str2)
	goto	l2657
	line	81
	
l2649:
;main.c: 80: {;main.c: 81: if(*str1 != *str2)
	movf	((c:my_strcmp@str2))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:my_strcmp@str1))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movf	postinc2,w
xorwf	postinc1,w
	btfsc	status,2
	goto	u1681
	goto	u1680

u1681:
	goto	l2655
u1680:
	line	82
	
l2651:
;main.c: 82: return *str1 - *str2;
	movf	((c:my_strcmp@str1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_my_strcmp+0+0)^00h,c
	movf	((c:my_strcmp@str2))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_my_strcmp+1+0)^00h,c
	movf	((??_my_strcmp+1+0))^00h,c,w
	subwf	((??_my_strcmp+0+0))^00h,c,w
	movwf	((c:?_my_strcmp))^00h,c
	clrf	1+((c:?_my_strcmp))^00h,c
	btfss	status,0
	decf	1+((c:?_my_strcmp))^00h,c
	
	goto	l204
	line	83
	
l2655:
;main.c: 83: str1++;
	incf	((c:my_strcmp@str1))^00h,c
	line	84
;main.c: 84: str2++;
	incf	((c:my_strcmp@str2))^00h,c
	line	79
	
l2657:
	movf	((c:my_strcmp@str1))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l2651
u1690:
	
l2659:
	movf	((c:my_strcmp@str2))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2649
u1700:
	goto	l2651
	line	87
	
l204:
	return	;funcret
	callstack 0
GLOBAL	__end_of_my_strcmp
	__end_of_my_strcmp:
	signat	_my_strcmp,8314
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 625 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_clcd_print
;;		_init_adc
;;		_init_clcd
;;		_init_ds1307
;;		_init_i2c
;;		_init_matrix_keypad
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	625
global __ptext4
__ptext4:
psect	text4
	file	"main.c"
	line	625
	
_init_config:
;incstack = 0
	callstack 25
	line	627
	
l3201:
;main.c: 627: init_clcd();
	call	_init_clcd	;wreg free
	line	628
	
l3203:
;main.c: 628: init_i2c();
	call	_init_i2c	;wreg free
	line	629
	
l3205:
;main.c: 629: init_ds1307();
	call	_init_ds1307	;wreg free
	line	630
;main.c: 630: init_adc();
	call	_init_adc	;wreg free
	line	631
	
l3207:
;main.c: 631: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	632
	
l3209:
;main.c: 632: clcd_print("TIME     EV  RPM ", (0x80 + (0)));
		movlw	low(STR_24)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	633
	
l343:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 4 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	4
global __ptext5
__ptext5:
psect	text5
	file	"matrix_keypad.c"
	line	4
	
_init_matrix_keypad:
;incstack = 0
	callstack 29
	line	7
	
l2943:
;matrix_keypad.c: 7: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	10
;matrix_keypad.c: 10: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	13
	
l2945:
;matrix_keypad.c: 13: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	15
	
l2947:
;matrix_keypad.c: 15: PORTB = PORTB | 0xE0;
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	16
	
l386:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 3 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	3
global __ptext6
__ptext6:
psect	text6
	file	"i2c.c"
	line	3
	
_init_i2c:
;incstack = 0
	callstack 29
	line	6
	
l2621:
;i2c.c: 6: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	7
;i2c.c: 7: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	9
	
l2623:
;i2c.c: 9: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038))^0f00h,c	;volatile
	line	11
;i2c.c: 11: SSPADD = 0x31;
	movlw	low(031h)
	movwf	((c:4040))^0f00h,c	;volatile
	line	13
	
l2625:
;i2c.c: 13: CKE = 0;
	bcf	c:(32318/8),(32318)&7	;volatile
	line	15
	
l2627:
;i2c.c: 15: SMP = 1;
	bsf	c:(32319/8),(32319)&7	;volatile
	line	17
	
l2629:
;i2c.c: 17: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	19
	
l2631:
;i2c.c: 19: BCLIF = 0;
	bcf	c:(32011/8),(32011)&7	;volatile
	line	20
	
l74:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 12 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	12
global __ptext7
__ptext7:
psect	text7
	file	"ds1307.c"
	line	12
	
_init_ds1307:
;incstack = 0
	callstack 25
	line	17
	
l2633:
;ds1307.c: 14: unsigned char dummy;;ds1307.c: 17: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	18
	
l2635:
;ds1307.c: 18: write_ds1307(0x00, dummy | 0x80);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	21
	
l2637:
;ds1307.c: 21: dummy = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	22
	
l2639:
;ds1307.c: 22: write_ds1307(0x02, dummy | 0x00);
	movff	(c:init_ds1307@dummy),(c:write_ds1307@data)
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	37
	
l2641:
;ds1307.c: 37: write_ds1307(0x07, 0x93);
	movlw	low(093h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(07h)&0ffh
	
	call	_write_ds1307
	line	40
	
l2643:
;ds1307.c: 40: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	41
	
l2645:
;ds1307.c: 41: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	43
	
l122:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 27 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	27
global __ptext8
__ptext8:
psect	text8
	file	"clcd.c"
	line	27
	
_init_clcd:
;incstack = 0
	callstack 28
	line	30
	
l2929:
;clcd.c: 30: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	32
	
l2931:
;clcd.c: 32: TRISC = TRISC & 0xF8;
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	34
	
l2933:
;clcd.c: 34: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	36
	
l2935:
;clcd.c: 36: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	37
	
l2937:
;clcd.c: 37: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	38
	
l2939:
;clcd.c: 38: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	39
	
l2941:
;clcd.c: 39: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	40
	
l532:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 4 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	4
global __ptext9
__ptext9:
psect	text9
	file	"adc.c"
	line	4
	
_init_adc:
;incstack = 0
	callstack 29
	line	7
	
l2615:
;adc.c: 7: ADFM = 1;
	bsf	c:(32263/8),(32263)&7	;volatile
	line	13
;adc.c: 13: ACQT2 = 1;
	bsf	c:(32261/8),(32261)&7	;volatile
	line	14
;adc.c: 14: ACQT1 = 0;
	bcf	c:(32260/8),(32260)&7	;volatile
	line	15
;adc.c: 15: ACQT0 = 0;
	bcf	c:(32259/8),(32259)&7	;volatile
	line	21
;adc.c: 21: ADCS0 = 0;
	bcf	c:(32256/8),(32256)&7	;volatile
	line	22
;adc.c: 22: ADCS1 = 1;
	bsf	c:(32257/8),(32257)&7	;volatile
	line	23
;adc.c: 23: ADCS2 = 0;
	bcf	c:(32258/8),(32258)&7	;volatile
	line	26
;adc.c: 26: GODONE = 0;
	bcf	c:(32273/8),(32273)&7	;volatile
	line	32
;adc.c: 32: VCFG1 = 0;
	bcf	c:(32269/8),(32269)&7	;volatile
	line	34
;adc.c: 34: VCFG0 = 0;
	bcf	c:(32268/8),(32268)&7	;volatile
	line	37
	
l2617:
;adc.c: 37: ADRESH = 0;
	movlw	low(0)
	movwf	((c:4036))^0f00h,c	;volatile
	line	38
;adc.c: 38: ADRESL = 0;
	movlw	low(0)
	movwf	((c:4035))^0f00h,c	;volatile
	line	41
	
l2619:
;adc.c: 41: ADON = 1;
	bsf	c:(32272/8),(32272)&7	;volatile
	line	42
	
l33:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 580 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	580
global __ptext10
__ptext10:
psect	text10
	file	"main.c"
	line	580
	
_get_time:
;incstack = 0
	callstack 26
	line	582
	
l3183:
;main.c: 582: clock_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:_clock_reg))^00h,c
	line	583
;main.c: 583: clock_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+01h))^00h,c
	line	584
;main.c: 584: clock_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+02h))^00h,c
	line	586
	
l3185:
;main.c: 586: if (clock_reg[0] & 0x40)
	
	btfss	((c:_clock_reg))^00h,c,(6)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l3189
u2460:
	line	588
	
l3187:
;main.c: 587: {;main.c: 588: time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(01h)
	addlw	low(030h)
	movwf	((c:_time))^00h,c
	line	589
;main.c: 589: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+01h))^00h,c
	line	590
;main.c: 590: }
	goto	l3191
	line	593
	
l3189:
;main.c: 591: else;main.c: 592: {;main.c: 593: time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(03h)
	addlw	low(030h)
	movwf	((c:_time))^00h,c
	line	594
;main.c: 594: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+01h))^00h,c
	line	596
	
l3191:
;main.c: 595: };main.c: 596: time[2] = ':';
	movlw	low(03Ah)
	movwf	(0+((c:_time)+02h))^00h,c
	line	597
	
l3193:
;main.c: 597: time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+03h))^00h,c
	line	598
	
l3195:
;main.c: 598: time[4] = '0' + (clock_reg[1] & 0x0F);
	movf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+04h))^00h,c
	line	599
	
l3197:
;main.c: 599: time[5] = ':';
	movlw	low(03Ah)
	movwf	(0+((c:_time)+05h))^00h,c
	line	600
;main.c: 600: time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+06h))^00h,c
	line	601
;main.c: 601: time[7] = '0' + (clock_reg[2] & 0x0F);
	movf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+07h))^00h,c
	line	602
	
l3199:
;main.c: 602: time[8] = '\0';
	movlw	low(0)
	movwf	(0+((c:_time)+08h))^00h,c
	line	603
	
l340:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,89
	global	_display_time

;; *************** function _display_time *****************
;; Defined at:
;;		line 563 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	563
global __ptext11
__ptext11:
psect	text11
	file	"main.c"
	line	563
	
_display_time:
;incstack = 0
	callstack 28
	line	565
	
l3181:
;main.c: 565: clcd_print(time, (0xC0 + (0)));
		movlw	low(_time)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	578
	
l335:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_time
	__end_of_display_time:
	signat	_display_time,89
	global	_display_menu

;; *************** function _display_menu *****************
;; Defined at:
;;		line 449 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   30[COMRAM] unsigned int 
;;  key             1   29[COMRAM] unsigned char 
;;  lkey            1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_change_password
;;		_clcd_print
;;		_clear_log
;;		_download_log
;;		_read_switches
;;		_set_time
;;		_view_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	line	449
global __ptext12
__ptext12:
psect	text12
	file	"main.c"
	line	449
	
_display_menu:
;incstack = 0
	callstack 25
	line	453
	
l3083:
;main.c: 451: static int flag = 1;;main.c: 452: unsigned char lkey , key;;main.c: 453: unsigned int i = 0;
	movlw	high(0)
	movwf	((c:display_menu@i+1))^00h,c
	movlw	low(0)
	movwf	((c:display_menu@i))^00h,c
	line	456
	
l3085:
;main.c: 455: {;main.c: 456: if(i == 0 && flag)
	movf	((c:display_menu@i))^00h,c,w
iorwf	((c:display_menu@i+1))^00h,c,w
	btfss	status,2
	goto	u2271
	goto	u2270

u2271:
	goto	l3095
u2270:
	
l3087:
	movf	((c:display_menu@flag))^00h,c,w
iorwf	((c:display_menu@flag+1))^00h,c,w
	btfsc	status,2
	goto	u2281
	goto	u2280

u2281:
	goto	l3095
u2280:
	line	458
	
l3089:
;main.c: 457: {;main.c: 458: clcd_print("* " , (0x80 + (0)));
		movlw	low(STR_15)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	459
	
l3091:
;main.c: 459: clcd_print(menu[i] , (0x80 + (2)));
	movf	((c:display_menu@i))^00h,c,w
	mullw	011h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu)
	movwf	(??_display_menu+0+0)^00h,c
		movff	(??_display_menu+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	460
	
l3093:
;main.c: 460: clcd_print(menu[i+1] , (0xC0 + (2)));
	movf	((c:display_menu@i))^00h,c,w
	mullw	011h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu+011h)
	movwf	(??_display_menu+0+0)^00h,c
		movff	(??_display_menu+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	463
	
l3095:
;main.c: 461: };main.c: 463: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:display_menu@key))^00h,c
	line	464
	
l3097:
;main.c: 464: lkey = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:display_menu@lkey))^00h,c
	line	466
	
l3099:
;main.c: 466: if(key == 12 && i <= 4 && flag)
		movlw	12
	xorwf	((c:display_menu@key))^00h,c,w
	btfss	status,2
	goto	u2291
	goto	u2290

u2291:
	goto	l3121
u2290:
	
l3101:
		movf	((c:display_menu@i+1))^00h,c,w
	bnz	u2301
	movlw	5
	subwf	 ((c:display_menu@i))^00h,c,w
	btfsc	status,0
	goto	u2301
	goto	u2300

u2301:
	goto	l3121
u2300:
	
l3103:
	movf	((c:display_menu@flag))^00h,c,w
iorwf	((c:display_menu@flag+1))^00h,c,w
	btfsc	status,2
	goto	u2311
	goto	u2310

u2311:
	goto	l3121
u2310:
	line	468
	
l3105:
;main.c: 467: {;main.c: 468: if(i >= 5)
		movf	((c:display_menu@i+1))^00h,c,w
	bnz	u2320
	movlw	5
	subwf	 ((c:display_menu@i))^00h,c,w
	btfss	status,0
	goto	u2321
	goto	u2320

u2321:
	goto	l3109
u2320:
	line	469
	
l3107:
;main.c: 469: i = 4;
	movlw	high(04h)
	movwf	((c:display_menu@i+1))^00h,c
	movlw	low(04h)
	movwf	((c:display_menu@i))^00h,c
	line	470
	
l3109:
;main.c: 470: i++;
	infsnz	((c:display_menu@i))^00h,c
	incf	((c:display_menu@i+1))^00h,c
	line	472
	
l3111:
;main.c: 472: if(i < 5)
		movf	((c:display_menu@i+1))^00h,c,w
	bnz	u2331
	movlw	5
	subwf	 ((c:display_menu@i))^00h,c,w
	btfsc	status,0
	goto	u2331
	goto	u2330

u2331:
	goto	l3119
u2330:
	line	474
	
l3113:
;main.c: 473: {;main.c: 474: clcd_print(menu[i-1] , (0x80 + (2)));
	movf	((c:display_menu@i))^00h,c,w
	mullw	011h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu+0EFh)
	movwf	(??_display_menu+0+0)^00h,c
		movff	(??_display_menu+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	475
;main.c: 475: clcd_print(menu[i] , (0xC0 + (2)));
	movf	((c:display_menu@i))^00h,c,w
	mullw	011h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu)
	movwf	(??_display_menu+0+0)^00h,c
		movff	(??_display_menu+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	476
	
l3115:
;main.c: 476: clcd_print("  " , (0x80 + (0)));
		movlw	low(STR_16)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	477
	
l3117:
;main.c: 477: clcd_print("* " , (0xC0 + (0)));
		movlw	low(STR_17)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	478
;main.c: 478: }
	goto	l3121
	line	482
	
l3119:
;main.c: 480: else;main.c: 481: {;main.c: 482: clcd_print(menu[3] , (0x80 + (2)));
		movlw	low(_menu+033h)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	483
;main.c: 483: clcd_print(menu[4] , (0xC0 + (2)));
		movlw	low(_menu+044h)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	484
;main.c: 484: clcd_print("  " , (0x80 + (0)));
		movlw	low(STR_18)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	485
;main.c: 485: clcd_print("* " , (0xC0 + (0)));
		movlw	low(STR_19)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	491
	
l3121:
;main.c: 486: };main.c: 489: };main.c: 491: if(key == 11 && i > 0 && flag)
		movlw	11
	xorwf	((c:display_menu@key))^00h,c,w
	btfss	status,2
	goto	u2341
	goto	u2340

u2341:
	goto	l3141
u2340:
	
l3123:
	movf	((c:display_menu@i))^00h,c,w
iorwf	((c:display_menu@i+1))^00h,c,w
	btfsc	status,2
	goto	u2351
	goto	u2350

u2351:
	goto	l3141
u2350:
	
l3125:
	movf	((c:display_menu@flag))^00h,c,w
iorwf	((c:display_menu@flag+1))^00h,c,w
	btfsc	status,2
	goto	u2361
	goto	u2360

u2361:
	goto	l3141
u2360:
	line	493
	
l3127:
;main.c: 492: {;main.c: 493: if(i < 5)
		movf	((c:display_menu@i+1))^00h,c,w
	bnz	u2371
	movlw	5
	subwf	 ((c:display_menu@i))^00h,c,w
	btfsc	status,0
	goto	u2371
	goto	u2370

u2371:
	goto	l3135
u2370:
	line	495
	
l3129:
;main.c: 494: {;main.c: 495: clcd_print("* " , (0x80 + (0)));
		movlw	low(STR_20)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	496
	
l3131:
;main.c: 496: clcd_print(menu[i-1] , (0x80 + (2)));
	movf	((c:display_menu@i))^00h,c,w
	mullw	011h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu+0EFh)
	movwf	(??_display_menu+0+0)^00h,c
		movff	(??_display_menu+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	497
	
l3133:
;main.c: 497: clcd_print("  " , (0xC0 + (0)));
		movlw	low(STR_21)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	498
;main.c: 498: clcd_print(menu[i] , (0xC0 + (2)));
	movf	((c:display_menu@i))^00h,c,w
	mullw	011h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu)
	movwf	(??_display_menu+0+0)^00h,c
		movff	(??_display_menu+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	499
;main.c: 499: }
	goto	l3137
	line	502
	
l3135:
;main.c: 500: else;main.c: 501: {;main.c: 502: clcd_print(menu[3] , (0x80 + (2)));
		movlw	low(_menu+033h)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	503
;main.c: 503: clcd_print(menu[4] , (0xC0 + (2)));
		movlw	low(_menu+044h)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	504
;main.c: 504: clcd_print("  " , (0x80 + (0)));
		movlw	low(STR_22)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	505
;main.c: 505: clcd_print("* " , (0xC0 + (0)));
		movlw	low(STR_23)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	508
	
l3137:
;main.c: 506: };main.c: 508: i--;
	decf	((c:display_menu@i))^00h,c
	btfss	status,0
	decf	((c:display_menu@i+1))^00h,c
	line	513
;main.c: 510: if(i < 0)
	
l3141:
;main.c: 512: };main.c: 513: if(lkey == 11 && delay++ == 50000)
		movlw	11
	xorwf	((c:display_menu@lkey))^00h,c,w
	btfss	status,2
	goto	u2381
	goto	u2380

u2381:
	goto	l3177
u2380:
	
l3143:
	infsnz	((c:_delay))^00h,c
	incf	((c:_delay+1))^00h,c
		movlw	81
	xorwf	((c:_delay))^00h,c,w
	bnz	u2391
	movlw	195
	xorwf	((c:_delay+1))^00h,c,w
	btfss	status,2
	goto	u2391
	goto	u2390

u2391:
	goto	l3177
u2390:
	line	515
	
l3145:
;main.c: 514: {;main.c: 515: flag = 1;
	movlw	high(01h)
	movwf	((c:display_menu@flag+1))^00h,c
	movlw	low(01h)
	movwf	((c:display_menu@flag))^00h,c
	line	516
;main.c: 516: delay = 0;
	movlw	high(0)
	movwf	((c:_delay+1))^00h,c
	movlw	low(0)
	movwf	((c:_delay))^00h,c
	line	518
	
l3147:
;main.c: 518: i--;
	decf	((c:display_menu@i))^00h,c
	btfss	status,0
	decf	((c:display_menu@i+1))^00h,c
	line	520
	
l3149:
;main.c: 520: if(i == 0)
	movf	((c:display_menu@i))^00h,c,w
iorwf	((c:display_menu@i+1))^00h,c,w
	btfss	status,2
	goto	u2401
	goto	u2400

u2401:
	goto	l3153
u2400:
	line	522
	
l3151:
;main.c: 521: {;main.c: 522: view_log();
	call	_view_log	;wreg free
	line	525
	
l3153:
;main.c: 523: };main.c: 525: if(i == 1)
		decf	((c:display_menu@i))^00h,c,w
iorwf	((c:display_menu@i+1))^00h,c,w
	btfss	status,2
	goto	u2411
	goto	u2410

u2411:
	goto	l3159
u2410:
	line	527
	
l3155:
;main.c: 526: {;main.c: 527: clear_log();
	call	_clear_log	;wreg free
	line	528
	
l3157:
;main.c: 528: i = 0;
	movlw	high(0)
	movwf	((c:display_menu@i+1))^00h,c
	movlw	low(0)
	movwf	((c:display_menu@i))^00h,c
	line	531
	
l3159:
;main.c: 529: };main.c: 531: if(i == 2)
		movlw	2
	xorwf	((c:display_menu@i))^00h,c,w
iorwf	((c:display_menu@i+1))^00h,c,w
	btfss	status,2
	goto	u2421
	goto	u2420

u2421:
	goto	l3165
u2420:
	line	534
	
l3161:
;main.c: 533: {;main.c: 534: set_time();
	call	_set_time	;wreg free
	line	535
	
l3163:
;main.c: 535: i = 0;
	movlw	high(0)
	movwf	((c:display_menu@i+1))^00h,c
	movlw	low(0)
	movwf	((c:display_menu@i))^00h,c
	line	538
	
l3165:
;main.c: 536: };main.c: 538: if(i == 3)
		movlw	3
	xorwf	((c:display_menu@i))^00h,c,w
iorwf	((c:display_menu@i+1))^00h,c,w
	btfss	status,2
	goto	u2431
	goto	u2430

u2431:
	goto	l3171
u2430:
	line	540
	
l3167:
;main.c: 539: {;main.c: 540: change_password();
	call	_change_password	;wreg free
	line	541
	
l3169:
;main.c: 541: i = 0;
	movlw	high(0)
	movwf	((c:display_menu@i+1))^00h,c
	movlw	low(0)
	movwf	((c:display_menu@i))^00h,c
	line	544
	
l3171:
;main.c: 542: };main.c: 544: if(i == 4)
		movlw	4
	xorwf	((c:display_menu@i))^00h,c,w
iorwf	((c:display_menu@i+1))^00h,c,w
	btfss	status,2
	goto	u2441
	goto	u2440

u2441:
	goto	l3177
u2440:
	line	546
	
l3173:
;main.c: 545: {;main.c: 546: download_log();
	call	_download_log	;wreg free
	line	547
	
l3175:
;main.c: 547: i = 0;
	movlw	high(0)
	movwf	((c:display_menu@i+1))^00h,c
	movlw	low(0)
	movwf	((c:display_menu@i))^00h,c
	line	551
	
l3177:
;main.c: 548: };main.c: 549: };main.c: 551: if(key == 10)
		movlw	10
	xorwf	((c:display_menu@key))^00h,c,w
	btfss	status,2
	goto	u2451
	goto	u2450

u2451:
	goto	l3085
u2450:
	line	557
	
l332:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_menu
	__end_of_display_menu:
	signat	_display_menu,89
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 342 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___wmul
;;		_clcd_print
;;		_clcd_write
;;		_read_switches
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	line	342
global __ptext13
__ptext13:
psect	text13
	file	"main.c"
	line	342
	
_view_log:
;incstack = 0
	callstack 27
	line	344
	
l2839:
;main.c: 344: int i = 0;
	movlw	high(0)
	movwf	((c:view_log@i+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@i))^00h,c
	line	348
	
l2841:
;main.c: 347: {;main.c: 348: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:_key))^00h,c
	line	351
	
l2843:
;main.c: 351: if(key == 11)
		movlw	11
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2021
	goto	u2020

u2021:
	goto	l2851
u2020:
	line	353
	
l2845:
;main.c: 352: {;main.c: 353: i++;
	infsnz	((c:view_log@i))^00h,c
	incf	((c:view_log@i+1))^00h,c
	line	354
	
l2847:
;main.c: 354: if(i == 10)
		movlw	10
	xorwf	((c:view_log@i))^00h,c,w
iorwf	((c:view_log@i+1))^00h,c,w
	btfss	status,2
	goto	u2031
	goto	u2030

u2031:
	goto	l2851
u2030:
	line	355
	
l2849:
;main.c: 355: i = 0;
	movlw	high(0)
	movwf	((c:view_log@i+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@i))^00h,c
	line	359
	
l2851:
;main.c: 356: };main.c: 359: if(key == 12)
		movlw	12
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2041
	goto	u2040

u2041:
	goto	l2859
u2040:
	line	361
	
l2853:
;main.c: 360: {;main.c: 361: i--;
	decf	((c:view_log@i))^00h,c
	btfss	status,0
	decf	((c:view_log@i+1))^00h,c
	line	362
	
l2855:
;main.c: 362: if(i == -1)
		incf	((c:view_log@i))^00h,c,w
	bnz	u2051
	incf	((c:view_log@i+1))^00h,c,w
	btfss	status,2
	goto	u2051
	goto	u2050

u2051:
	goto	l2859
u2050:
	line	363
	
l2857:
;main.c: 363: i = 9;
	movlw	high(09h)
	movwf	((c:view_log@i+1))^00h,c
	movlw	low(09h)
	movwf	((c:view_log@i))^00h,c
	line	367
	
l2859:
;main.c: 364: };main.c: 367: if(key == 10)
		movlw	10
	xorwf	((c:_key))^00h,c,w
	btfss	status,2
	goto	u2061
	goto	u2060

u2061:
	goto	l2863
u2060:
	line	369
	
l2861:
;main.c: 368: {;main.c: 369: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	370
;main.c: 370: break;
	goto	l288
	line	374
	
l2863:
;main.c: 371: };main.c: 374: clcd_print("TIME     EV  RPM " , (0x80 + (0)));
		movlw	low(STR_8)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	375
	
l2865:
;main.c: 375: clcd_print(event[i] , (0xC0 + (0)));
	movff	(c:view_log@i),(c:___wmul@multiplier)
	movff	(c:view_log@i+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_event)
	addwf	(0+?___wmul)^00h,c,w
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(_event)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+((c:clcd_print@data))^00h,c
	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l2841
	line	378
	
l288:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,89
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 161 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            4   11[COMRAM] unsigned long 
;;  time           10    0        unsigned char [10]
;;  flag            4   23[COMRAM] unsigned long 
;;  wait            4    0        unsigned long 
;;  clock_reg       3    0        unsigned char [3]
;;  hour            1   22[COMRAM] unsigned char 
;;  mins            1   21[COMRAM] unsigned char 
;;  secs            1   20[COMRAM] unsigned char 
;;  key             1   19[COMRAM] unsigned char 
;;  HOUR            1   18[COMRAM] unsigned char 
;;  MIN             1   17[COMRAM] unsigned char 
;;  SEC             1   16[COMRAM] unsigned char 
;;  prekey          1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        16       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___lbdiv
;;		___lbmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_convertval
;;		_read_ds1307
;;		_read_switches
;;		_write_ds1307
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	161
global __ptext14
__ptext14:
psect	text14
	file	"main.c"
	line	161
	
_set_time:
;incstack = 0
	callstack 25
	line	163
	
l2665:
	movlw	low(0)
	movwf	((c:set_time@flag))^00h,c
	movlw	high(0)
	movwf	((c:set_time@flag+1))^00h,c
	movlw	low highword(0)
	movwf	((c:set_time@flag+2))^00h,c
	movlw	high highword(0)
	movwf	((c:set_time@flag+3))^00h,c
	line	166
	
l2667:
;main.c: 164: char clock_reg[3];;main.c: 165: unsigned char key , prekey, time[10];;main.c: 166: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	171
	
l2669:
;main.c: 167: char secs , mins , hour, SEC , MIN , HOUR;;main.c: 171: hour = (read_ds1307(0x02) / 10) << 4 & 0x01;
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	
	call	___lbdiv
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	andlw	low(01h)
	movwf	((c:set_time@hour))^00h,c
	line	172
	
l2671:
;main.c: 172: hour = ((read_ds1307(0x02) % 10) & 0x0f) | hour;
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	
	call	___lbmod
	andlw	low(0Fh)
	iorwf	((c:set_time@hour))^00h,c,w
	movwf	((c:set_time@hour))^00h,c
	line	173
	
l2673:
;main.c: 173: mins = (read_ds1307(0x01) / 10) << 4;
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	
	call	___lbdiv
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:set_time@mins))^00h,c
	line	174
	
l2675:
;main.c: 174: mins = ((read_ds1307(0x01) % 10) & 0x0f) | mins;
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	
	call	___lbmod
	andlw	low(0Fh)
	iorwf	((c:set_time@mins))^00h,c,w
	movwf	((c:set_time@mins))^00h,c
	line	175
	
l2677:
;main.c: 175: secs = (read_ds1307(0x00) / 10) << 4;
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movlw	(0)&0ffh
	
	call	_read_ds1307
	
	call	___lbdiv
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	movwf	((c:set_time@secs))^00h,c
	line	176
	
l2679:
;main.c: 176: secs = ((read_ds1307(0x00) % 10) & 0x0f) | secs;
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movlw	(0)&0ffh
	
	call	_read_ds1307
	
	call	___lbmod
	andlw	low(0Fh)
	iorwf	((c:set_time@secs))^00h,c,w
	movwf	((c:set_time@secs))^00h,c
	line	181
	
l2681:
;main.c: 179: {;main.c: 181: clcd_print("TIME SET" , (0x80 + (4)));
		movlw	low(STR_5)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(084h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	182
	
l2683:
;main.c: 182: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:set_time@key))^00h,c
	line	183
	
l2685:
;main.c: 183: prekey = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:set_time@prekey))^00h,c
	line	186
	
l2687:
;main.c: 186: if(key == 11)
		movlw	11
	xorwf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u1711
	goto	u1710

u1711:
	goto	l2707
u1710:
	line	188
	
l2689:
;main.c: 187: {;main.c: 188: if(flag == 0)
	movf	((c:set_time@flag))^00h,c,w
iorwf	((c:set_time@flag+1))^00h,c,w
iorwf	((c:set_time@flag+2))^00h,c,w
iorwf	((c:set_time@flag+3))^00h,c,w
	btfss	status,2
	goto	u1721
	goto	u1720

u1721:
	goto	l2695
u1720:
	line	191
	
l2691:
;main.c: 189: {;main.c: 191: if(secs++ == 59)
	incf	((c:set_time@secs))^00h,c
		movlw	60
	xorwf	((c:set_time@secs))^00h,c,w
	btfss	status,2
	goto	u1731
	goto	u1730

u1731:
	goto	l2695
u1730:
	line	192
	
l2693:
;main.c: 192: secs = 0;
	movlw	low(0)
	movwf	((c:set_time@secs))^00h,c
	line	195
	
l2695:
;main.c: 193: };main.c: 195: if(flag == 1)
		decf	((c:set_time@flag))^00h,c,w
iorwf	((c:set_time@flag+1))^00h,c,w
iorwf	((c:set_time@flag+2))^00h,c,w
iorwf	((c:set_time@flag+3))^00h,c,w
	btfss	status,2
	goto	u1741
	goto	u1740

u1741:
	goto	l2701
u1740:
	line	198
	
l2697:
;main.c: 196: {;main.c: 198: if(mins++ == 59)
	incf	((c:set_time@mins))^00h,c
		movlw	60
	xorwf	((c:set_time@mins))^00h,c,w
	btfss	status,2
	goto	u1751
	goto	u1750

u1751:
	goto	l2701
u1750:
	line	199
	
l2699:
;main.c: 199: mins = 0;
	movlw	low(0)
	movwf	((c:set_time@mins))^00h,c
	line	202
	
l2701:
;main.c: 200: };main.c: 202: if(flag == 2)
		movlw	2
	xorwf	((c:set_time@flag))^00h,c,w
iorwf	((c:set_time@flag+1))^00h,c,w
iorwf	((c:set_time@flag+2))^00h,c,w
iorwf	((c:set_time@flag+3))^00h,c,w
	btfss	status,2
	goto	u1761
	goto	u1760

u1761:
	goto	l2707
u1760:
	line	205
	
l2703:
;main.c: 203: {;main.c: 205: if(hour++ == 12)
	incf	((c:set_time@hour))^00h,c
		movlw	13
	xorwf	((c:set_time@hour))^00h,c,w
	btfss	status,2
	goto	u1771
	goto	u1770

u1771:
	goto	l2707
u1770:
	line	206
	
l2705:
;main.c: 206: hour = 0;
	movlw	low(0)
	movwf	((c:set_time@hour))^00h,c
	line	211
	
l2707:
;main.c: 207: };main.c: 208: };main.c: 211: if(key == 12)
		movlw	12
	xorwf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u1781
	goto	u1780

u1781:
	goto	l2727
u1780:
	line	213
	
l2709:
;main.c: 212: {;main.c: 213: if(flag == 0)
	movf	((c:set_time@flag))^00h,c,w
iorwf	((c:set_time@flag+1))^00h,c,w
iorwf	((c:set_time@flag+2))^00h,c,w
iorwf	((c:set_time@flag+3))^00h,c,w
	btfss	status,2
	goto	u1791
	goto	u1790

u1791:
	goto	l2715
u1790:
	line	216
	
l2711:
;main.c: 214: {;main.c: 216: if(secs-- == 0)
	decf	((c:set_time@secs))^00h,c
		incf	((c:set_time@secs))^00h,c,w
	btfss	status,2
	goto	u1801
	goto	u1800

u1801:
	goto	l2715
u1800:
	line	217
	
l2713:
;main.c: 217: secs = 59;
	movlw	low(03Bh)
	movwf	((c:set_time@secs))^00h,c
	line	220
	
l2715:
;main.c: 218: };main.c: 220: if(flag == 1)
		decf	((c:set_time@flag))^00h,c,w
iorwf	((c:set_time@flag+1))^00h,c,w
iorwf	((c:set_time@flag+2))^00h,c,w
iorwf	((c:set_time@flag+3))^00h,c,w
	btfss	status,2
	goto	u1811
	goto	u1810

u1811:
	goto	l2721
u1810:
	line	223
	
l2717:
;main.c: 221: {;main.c: 223: if(mins-- == 0)
	decf	((c:set_time@mins))^00h,c
		incf	((c:set_time@mins))^00h,c,w
	btfss	status,2
	goto	u1821
	goto	u1820

u1821:
	goto	l2721
u1820:
	line	224
	
l2719:
;main.c: 224: mins = 59;
	movlw	low(03Bh)
	movwf	((c:set_time@mins))^00h,c
	line	227
	
l2721:
;main.c: 225: };main.c: 227: if(flag == 2)
		movlw	2
	xorwf	((c:set_time@flag))^00h,c,w
iorwf	((c:set_time@flag+1))^00h,c,w
iorwf	((c:set_time@flag+2))^00h,c,w
iorwf	((c:set_time@flag+3))^00h,c,w
	btfss	status,2
	goto	u1831
	goto	u1830

u1831:
	goto	l2727
u1830:
	line	230
	
l2723:
;main.c: 228: {;main.c: 230: if(hour-- == 0)
	decf	((c:set_time@hour))^00h,c
		incf	((c:set_time@hour))^00h,c,w
	btfss	status,2
	goto	u1841
	goto	u1840

u1841:
	goto	l2727
u1840:
	line	231
	
l2725:
;main.c: 231: hour = 12;
	movlw	low(0Ch)
	movwf	((c:set_time@hour))^00h,c
	line	236
	
l2727:
;main.c: 232: };main.c: 233: };main.c: 236: if(prekey == 9 )
		movlw	9
	xorwf	((c:set_time@prekey))^00h,c,w
	btfss	status,2
	goto	u1851
	goto	u1850

u1851:
	goto	l2737
u1850:
	line	238
	
l2729:
	line	239
	
l2731:
;main.c: 239: flag++;
	movlw	low(01h)
	addwf	((c:set_time@flag))^00h,c
	movlw	0
	addwfc	((c:set_time@flag+1))^00h,c
	addwfc	((c:set_time@flag+2))^00h,c
	addwfc	((c:set_time@flag+3))^00h,c
	line	240
	
l2733:
;main.c: 240: if(flag > 2)
		movf	((c:set_time@flag+3))^00h,c,w
	iorwf	((c:set_time@flag+2))^00h,c,w
	iorwf	((c:set_time@flag+1))^00h,c,w
	bnz	u1860
	movlw	3
	subwf	 ((c:set_time@flag))^00h,c,w
	btfss	status,0
	goto	u1861
	goto	u1860

u1861:
	goto	l2737
u1860:
	line	241
	
l2735:
;main.c: 241: flag = 0;
	movlw	low(0)
	movwf	((c:set_time@flag))^00h,c
	movlw	high(0)
	movwf	((c:set_time@flag+1))^00h,c
	movlw	low highword(0)
	movwf	((c:set_time@flag+2))^00h,c
	movlw	high highword(0)
	movwf	((c:set_time@flag+3))^00h,c
	line	245
	
l2737:
;main.c: 242: };main.c: 245: if(key == 10)
		movlw	10
	xorwf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u1871
	goto	u1870

u1871:
	goto	l2741
u1870:
	line	247
	
l2739:
;main.c: 246: {;main.c: 247: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	248
;main.c: 248: break;
	goto	l257
	line	252
	
l2741:
;main.c: 249: };main.c: 252: SEC = convertval(secs);
	movf	((c:set_time@secs))^00h,c,w
	
	call	_convertval
	movwf	((c:set_time@SEC))^00h,c
	line	253
;main.c: 253: MIN = convertval(mins);
	movf	((c:set_time@mins))^00h,c,w
	
	call	_convertval
	movwf	((c:set_time@MIN))^00h,c
	line	254
;main.c: 254: HOUR = convertval(hour);
	movf	((c:set_time@hour))^00h,c,w
	
	call	_convertval
	movwf	((c:set_time@HOUR))^00h,c
	line	257
	
l2743:
;main.c: 257: write_ds1307(0x00 , SEC | 0x00);
	movff	(c:set_time@SEC),(c:write_ds1307@data)
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	258
	
l2745:
;main.c: 258: write_ds1307(0x01, MIN | 0x00);
	movff	(c:set_time@MIN),(c:write_ds1307@data)
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	259
	
l2747:
;main.c: 259: write_ds1307(0x02 , HOUR | 0x00);
	movff	(c:set_time@HOUR),(c:write_ds1307@data)
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	261
	
l2749:
;main.c: 261: for(unsigned long wait = 100000; wait--;);
	movlw	low(0186A0h)
	movwf	((c:set_time@wait_209))^00h,c
	movlw	high(0186A0h)
	movwf	((c:set_time@wait_209+1))^00h,c
	movlw	low highword(0186A0h)
	movwf	((c:set_time@wait_209+2))^00h,c
	movlw	high highword(0186A0h)
	movwf	((c:set_time@wait_209+3))^00h,c
	
l2751:
	decf	((c:set_time@wait_209))^00h,c
	movlw	0
	subwfb	((c:set_time@wait_209+1))^00h,c
	subwfb	((c:set_time@wait_209+2))^00h,c
	subwfb	((c:set_time@wait_209+3))^00h,c
		incf	((c:set_time@wait_209))^00h,c,w
	bnz	u1881
	incf	((c:set_time@wait_209+1))^00h,c,w
	bnz	u1881
	incf	((c:set_time@wait_209+2))^00h,c,w
	bnz	u1881
	incf	((c:set_time@wait_209+3))^00h,c,w
	btfss	status,2
	goto	u1881
	goto	u1880

u1881:
	goto	l2751
u1880:
	line	262
	
l2753:
;main.c: 262: clcd_putch(hour / 10 + '0', (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:set_time@hour))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	
	call	_clcd_putch
	line	263
;main.c: 263: clcd_putch(hour % 10 + '0', (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:set_time@hour))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	
	call	_clcd_putch
	line	264
	
l2755:
;main.c: 264: clcd_putch(':', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	265
	
l2757:
;main.c: 265: clcd_putch(mins / 10 + '0', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:set_time@mins))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	
	call	_clcd_putch
	line	266
	
l2759:
;main.c: 266: clcd_putch(mins % 10 + '0', (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:set_time@mins))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	
	call	_clcd_putch
	line	267
	
l2761:
;main.c: 267: clcd_putch(':', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	268
;main.c: 268: clcd_putch(secs / 10 + '0', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:set_time@secs))^00h,c,w
	
	call	___lbdiv
	addlw	low(030h)
	
	call	_clcd_putch
	line	269
;main.c: 269: clcd_putch(secs % 10 + '0', (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:set_time@secs))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	
	call	_clcd_putch
	goto	l2681
	line	271
	
l257:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 45 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	45
global __ptext15
__ptext15:
psect	text15
	file	"ds1307.c"
	line	45
	
_write_ds1307:
;incstack = 0
	callstack 26
;write_ds1307@address stored from wreg
	movwf	((c:write_ds1307@address))^00h,c
	line	47
	
l2521:
;ds1307.c: 47: i2c_start();
	call	_i2c_start	;wreg free
	line	48
	
l2523:
;ds1307.c: 48: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	49
	
l2525:
;ds1307.c: 49: i2c_write(address);
	movf	((c:write_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	50
	
l2527:
;ds1307.c: 50: i2c_write(data);
	movf	((c:write_ds1307@data))^00h,c,w
	
	call	_i2c_write
	line	51
	
l2529:
;ds1307.c: 51: i2c_stop();
	call	_i2c_stop	;wreg free
	line	52
	
l125:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 54 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_set_time
;;		_get_time
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	line	54
global __ptext16
__ptext16:
psect	text16
	file	"ds1307.c"
	line	54
	
_read_ds1307:
;incstack = 0
	callstack 25
;read_ds1307@address stored from wreg
	movwf	((c:read_ds1307@address))^00h,c
	line	58
	
l2507:
;ds1307.c: 56: unsigned char data;;ds1307.c: 58: i2c_start();
	call	_i2c_start	;wreg free
	line	59
	
l2509:
;ds1307.c: 59: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	60
	
l2511:
;ds1307.c: 60: i2c_write(address);
	movf	((c:read_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	61
	
l2513:
;ds1307.c: 61: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	62
	
l2515:
;ds1307.c: 62: i2c_write(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	63
;ds1307.c: 63: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_ds1307@data))^00h,c
	line	64
	
l2517:
;ds1307.c: 64: i2c_stop();
	call	_i2c_stop	;wreg free
	line	66
;ds1307.c: 66: return data;
	movf	((c:read_ds1307@data))^00h,c,w
	line	67
	
l128:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_convertval

;; *************** function _convertval *****************
;; Defined at:
;;		line 149 in file "main.c"
;; Parameters:    Size  Location     Type
;;  val             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             1    9[COMRAM] unsigned char 
;;  num             1    8[COMRAM] unsigned char 
;;  rem             1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	149
global __ptext17
__ptext17:
psect	text17
	file	"main.c"
	line	149
	
_convertval:
;incstack = 0
	callstack 27
;convertval@val stored from wreg
	movwf	((c:convertval@val))^00h,c
	line	152
	
l2567:
;main.c: 151: char rem, num;;main.c: 152: rem = val % 10;
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:convertval@val))^00h,c,w
	
	call	___lbmod
	movwf	((c:convertval@rem))^00h,c
	line	153
;main.c: 153: num = val / 10;
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:convertval@val))^00h,c,w
	
	call	___lbdiv
	movwf	((c:convertval@num))^00h,c
	line	154
	
l2569:
;main.c: 154: val = rem;
	movff	(c:convertval@rem),(c:convertval@val)
	line	155
	
l2571:
;main.c: 155: val = num << 4 | val;
	swapf	((c:convertval@num))^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:convertval@val))^00h,c,w
	movwf	((c:convertval@val))^00h,c
	line	156
	
l2573:
;main.c: 156: return val;
	movf	((c:convertval@val))^00h,c,w
	line	157
	
l231:
	return	;funcret
	callstack 0
GLOBAL	__end_of_convertval
	__end_of_convertval:
	signat	_convertval,4217
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMRAM] unsigned char 
;;  rem             1    6[COMRAM] unsigned char 
;;  counter         1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_convertval
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbmod.c"
	line	4
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbmod.c"
	line	4
	
___lbmod:
;incstack = 0
	callstack 27
;___lbmod@dividend stored from wreg
	movwf	((c:___lbmod@dividend))^00h,c
	line	9
	
l2491:
	movlw	low(08h)
	movwf	((c:___lbmod@counter))^00h,c
	line	10
	movlw	low(0)
	movwf	((c:___lbmod@rem))^00h,c
	line	12
	
l2493:
	bcf	status,0
	rlcf	((c:___lbmod@dividend))^00h,c,w
	rlcf	((c:___lbmod@rem))^00h,c,w
	movwf	((c:___lbmod@rem))^00h,c
	line	13
	
l2495:
	bcf status,0
	rlcf	((c:___lbmod@dividend))^00h,c

	line	14
	
l2497:
		movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c,w
	btfss	status,0
	goto	u1561
	goto	u1560

u1561:
	goto	l2501
u1560:
	line	15
	
l2499:
	movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c
	line	16
	
l2501:
	decfsz	((c:___lbmod@counter))^00h,c
	
	goto	l2493
	line	17
	
l2503:
	movf	((c:___lbmod@rem))^00h,c,w
	line	18
	
l960:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMRAM] unsigned char 
;;  quotient        1    6[COMRAM] unsigned char 
;;  counter         1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_convertval
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbdiv.c"
	line	4
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbdiv.c"
	line	4
	
___lbdiv:
;incstack = 0
	callstack 27
;___lbdiv@dividend stored from wreg
	movwf	((c:___lbdiv@dividend))^00h,c
	line	9
	
l2465:
	movlw	low(0)
	movwf	((c:___lbdiv@quotient))^00h,c
	line	10
	
l2467:
	movf	((c:___lbdiv@divisor))^00h,c,w
	btfsc	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l2487
u1530:
	line	11
	
l2469:
	movlw	low(01h)
	movwf	((c:___lbdiv@counter))^00h,c
	line	12
	goto	l2475
	line	13
	
l2471:
	bcf status,0
	rlcf	((c:___lbdiv@divisor))^00h,c

	line	14
	
l2473:
	incf	((c:___lbdiv@counter))^00h,c
	line	12
	
l2475:
	
	btfss	((c:___lbdiv@divisor))^00h,c,(7)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l2471
u1540:
	line	17
	
l2477:
	bcf status,0
	rlcf	((c:___lbdiv@quotient))^00h,c

	line	18
		movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c,w
	btfss	status,0
	goto	u1551
	goto	u1550

u1551:
	goto	l2483
u1550:
	line	19
	
l2479:
	movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c
	line	20
	
l2481:
	bsf	(0+(0/8)+(c:___lbdiv@quotient))^00h,c,(0)&7
	line	22
	
l2483:
	bcf status,0
	rrcf	((c:___lbdiv@divisor))^00h,c

	line	23
	
l2485:
	decfsz	((c:___lbdiv@counter))^00h,c
	
	goto	l2477
	line	25
	
l2487:
	movf	((c:___lbdiv@quotient))^00h,c,w
	line	26
	
l954:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_download_log

;; *************** function _download_log *****************
;; Defined at:
;;		line 414 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[COMRAM] int 
;;  key             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___wmul
;;		_clcd_print
;;		_clcd_write
;;		_puts
;;		_read_switches
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	414
global __ptext20
__ptext20:
psect	text20
	file	"main.c"
	line	414
	
_download_log:
;incstack = 0
	callstack 27
	line	417
	
l2899:
;main.c: 416: char key;;main.c: 417: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	418
	
l2901:
;main.c: 418: clcd_print("Downloading LOGS" , (0x80 + (0)));
		movlw	low(STR_10)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	419
	
l2903:
;main.c: 419: clcd_print("in UART" , (0xC0 + (5)));
		movlw	low(STR_11)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C5h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	421
	
l2905:
;main.c: 421: puts("Logs are Downloaded\n\r");
		movlw	low(STR_12)
	movwf	((c:puts@s))^00h,c
	movf	((c:puts@s))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	422
	
l2907:
;main.c: 422: puts("Logs are : \n\r");
		movlw	low(STR_13)
	movwf	((c:puts@s))^00h,c
	movf	((c:puts@s))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	425
	
l2909:
;main.c: 425: for(int i = 0 ; i < 10 ; i++)
	movlw	high(0)
	movwf	((c:download_log@i+1))^00h,c
	movlw	low(0)
	movwf	((c:download_log@i))^00h,c
	line	427
	
l2915:
;main.c: 426: {;main.c: 427: puts(event[i]);
	movff	(c:download_log@i),(c:___wmul@multiplier)
	movff	(c:download_log@i+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_event)
	addwf	(0+?___wmul)^00h,c,w
	movwf	((c:puts@s))^00h,c
	movlw	high(_event)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+((c:puts@s))^00h,c
	call	_puts	;wreg free
	line	428
	
l2917:
;main.c: 428: puts("\n\r");
		movlw	low(STR_14)
	movwf	((c:puts@s))^00h,c
	movf	((c:puts@s))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	425
	
l2919:
	infsnz	((c:download_log@i))^00h,c
	incf	((c:download_log@i+1))^00h,c
	
l2921:
	btfsc	((c:download_log@i+1))^00h,c,7
	goto	u2101
	movf	((c:download_log@i+1))^00h,c,w
	bnz	u2100
	movlw	10
	subwf	 ((c:download_log@i))^00h,c,w
	btfss	status,0
	goto	u2101
	goto	u2100

u2101:
	goto	l2915
u2100:
	line	434
	
l2923:
;main.c: 433: {;main.c: 434: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:download_log@key))^00h,c
	line	436
	
l2925:
;main.c: 436: if(key == 10)
		movlw	10
	xorwf	((c:download_log@key))^00h,c,w
	btfss	status,2
	goto	u2111
	goto	u2110

u2111:
	goto	l2923
u2110:
	line	438
	
l2927:
;main.c: 437: {;main.c: 438: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	443
;main.c: 439: break;
	
l308:
	return	;funcret
	callstack 0
GLOBAL	__end_of_download_log
	__end_of_download_log:
	signat	_download_log,89
	global	_puts

;; *************** function _puts *****************
;; Defined at:
;;		line 90 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  s               2    6[COMRAM] PTR const unsigned char 
;;		 -> STR_14(3), STR_13(14), STR_12(22), event(170), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    6[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_download_log
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	90
global __ptext21
__ptext21:
psect	text21
	file	"uart.c"
	line	90
	
_puts:
;incstack = 0
	callstack 27
	line	92
	
l2601:
;uart.c: 92: while(*s)
	goto	l2607
	line	94
	
l2603:
;uart.c: 93: {;uart.c: 94: putch(*s++);
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1657
	tblrd	*
	
	movf	tablat,w
	bra	u1650
u1657:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1650:
	
	call	_putch
	
l2605:
	infsnz	((c:puts@s))^00h,c
	incf	((c:puts@s+1))^00h,c
	line	92
	
l2607:
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1667
	tblrd	*
	
	movf	tablat,w
	bra	u1660
u1667:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1660:
	iorlw	0
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l2603
u1670:
	line	98
	
l499:
	return	;funcret
	callstack 0
GLOBAL	__end_of_puts
	__end_of_puts:
	signat	_puts,4218
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 79 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_puts
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	line	79
global __ptext22
__ptext22:
psect	text22
	file	"uart.c"
	line	79
	
_putch:
;incstack = 0
	callstack 27
;putch@byte stored from wreg
	movwf	((c:putch@byte))^00h,c
	line	83
	
l2461:
	line	86
;uart.c: 83: while(!TXIF)
	
l490:
	line	83
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u1521
	goto	u1520
u1521:
	goto	l490
u1520:
	line	87
	
l2463:
;uart.c: 86: };uart.c: 87: TXREG = byte;
	movff	(c:putch@byte),(c:4013)	;volatile
	line	88
	
l493:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_clear_log

;; *************** function _clear_log *****************
;; Defined at:
;;		line 382 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   14[COMRAM] int 
;;  i               2   12[COMRAM] int 
;;  clr             1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___wmul
;;		_clcd_print
;;		_clcd_write
;;		_read_switches
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	382
global __ptext23
__ptext23:
psect	text23
	file	"main.c"
	line	382
	
_clear_log:
;incstack = 0
	callstack 27
	line	388
	
l2867:
;main.c: 384: unsigned char clr;;main.c: 385: int i , j;;main.c: 388: for(i = 0 ; i < 10 ; i++)
	movlw	high(0)
	movwf	((c:clear_log@i+1))^00h,c
	movlw	low(0)
	movwf	((c:clear_log@i))^00h,c
	line	390
	
l2873:
;main.c: 389: {;main.c: 390: for(j = 0 ; j < 18 ; j++)
	movlw	high(0)
	movwf	((c:clear_log@j+1))^00h,c
	movlw	low(0)
	movwf	((c:clear_log@j))^00h,c
	line	392
	
l2879:
;main.c: 391: {;main.c: 392: event[i][j] = 0;
	movff	(c:clear_log@i),(c:___wmul@multiplier)
	movff	(c:clear_log@i+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low((_event))
	movwf	(??_clear_log+0+0)^00h,c
	movlw	high((_event))
	movwf	1+(??_clear_log+0+0)^00h,c
	movf	(0+?___wmul)^00h,c,w
	addwf	(??_clear_log+0+0)^00h,c
	movf	(1+?___wmul)^00h,c,w
	addwfc	(??_clear_log+0+1)^00h,c
	movf	((c:clear_log@j))^00h,c,w
	addwf	(??_clear_log+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:clear_log@j+1))^00h,c,w
	addwfc	(??_clear_log+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	390
	
l2881:
	infsnz	((c:clear_log@j))^00h,c
	incf	((c:clear_log@j+1))^00h,c
	
l2883:
	btfsc	((c:clear_log@j+1))^00h,c,7
	goto	u2071
	movf	((c:clear_log@j+1))^00h,c,w
	bnz	u2070
	movlw	18
	subwf	 ((c:clear_log@j))^00h,c,w
	btfss	status,0
	goto	u2071
	goto	u2070

u2071:
	goto	l2879
u2070:
	line	388
	
l2885:
	infsnz	((c:clear_log@i))^00h,c
	incf	((c:clear_log@i+1))^00h,c
	
l2887:
	btfsc	((c:clear_log@i+1))^00h,c,7
	goto	u2081
	movf	((c:clear_log@i+1))^00h,c,w
	bnz	u2080
	movlw	10
	subwf	 ((c:clear_log@i))^00h,c,w
	btfss	status,0
	goto	u2081
	goto	u2080

u2081:
	goto	l2873
u2080:
	line	396
	
l2889:
;main.c: 393: };main.c: 394: };main.c: 396: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	397
	
l2891:
;main.c: 397: clcd_print("LOG_CLEARED" , (0x80 + (2)));
		movlw	low(STR_9)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	400
	
l2893:
;main.c: 399: {;main.c: 400: clr = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:clear_log@clr))^00h,c
	line	403
	
l2895:
;main.c: 403: if(clr == 10)
		movlw	10
	xorwf	((c:clear_log@clr))^00h,c,w
	btfss	status,2
	goto	u2091
	goto	u2090

u2091:
	goto	l2893
u2090:
	line	405
	
l2897:
;main.c: 404: {;main.c: 405: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	409
;main.c: 406: break;
	
l299:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clear_log
	__end_of_clear_log:
	signat	_clear_log,89
	global	_change_password

;; *************** function _change_password *****************
;; Defined at:
;;		line 276 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  change          2   12[COMRAM] int 
;;  j               2    9[COMRAM] int 
;;  pwd_key         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_external_eeprom
;;		_read_switches
;;		_write_external_eeprom
;; This function is called by:
;;		_display_menu
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	line	276
global __ptext24
__ptext24:
psect	text24
	file	"main.c"
	line	276
	
_change_password:
;incstack = 0
	callstack 25
	line	279
	
l2763:
;main.c: 278: unsigned char pwd_key;;main.c: 279: int change = 0 , j = 0;
	movlw	high(0)
	movwf	((c:change_password@change+1))^00h,c
	movlw	low(0)
	movwf	((c:change_password@change))^00h,c
	movlw	high(0)
	movwf	((c:change_password@j+1))^00h,c
	movlw	low(0)
	movwf	((c:change_password@j))^00h,c
	line	280
	
l2765:
;main.c: 280: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	281
	
l2767:
;main.c: 281: clcd_print("Enter Password  ",(0x80 + (0)));
		movlw	low(STR_6)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	285
	
l2769:
;main.c: 284: {;main.c: 285: pwd_key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:change_password@pwd_key))^00h,c
	line	287
	
l2771:
;main.c: 287: if( change < 4)
	btfsc	((c:change_password@change+1))^00h,c,7
	goto	u1890
	movf	((c:change_password@change+1))^00h,c,w
	bnz	u1891
	movlw	4
	subwf	 ((c:change_password@change))^00h,c,w
	btfsc	status,0
	goto	u1891
	goto	u1890

u1891:
	goto	l2821
u1890:
	line	290
	
l2773:
;main.c: 288: {;main.c: 290: if(pwd_key == 11)
		movlw	11
	xorwf	((c:change_password@pwd_key))^00h,c,w
	btfss	status,2
	goto	u1901
	goto	u1900

u1901:
	goto	l2797
u1900:
	line	292
	
l2775:
;main.c: 291: {;main.c: 292: if(change == 0)
	movf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1911
	goto	u1910

u1911:
	goto	l2779
u1910:
	line	293
	
l2777:
;main.c: 293: write_external_eeprom(0x00,'1');
	movlw	low(031h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_external_eeprom
	line	294
	
l2779:
;main.c: 294: if( change == 1)
		decf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1921
	goto	u1920

u1921:
	goto	l2783
u1920:
	line	295
	
l2781:
;main.c: 295: write_external_eeprom(0x01,'1');
	movlw	low(031h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(01h)&0ffh
	
	call	_write_external_eeprom
	line	296
	
l2783:
;main.c: 296: if(change == 2)
		movlw	2
	xorwf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1931
	goto	u1930

u1931:
	goto	l2787
u1930:
	line	297
	
l2785:
;main.c: 297: write_external_eeprom(0x02,'1');
	movlw	low(031h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_external_eeprom
	line	298
	
l2787:
;main.c: 298: if(change == 3)
		movlw	3
	xorwf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1941
	goto	u1940

u1941:
	goto	l2791
u1940:
	line	299
	
l2789:
;main.c: 299: write_external_eeprom(0x03,'1');
	movlw	low(031h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(03h)&0ffh
	
	call	_write_external_eeprom
	line	300
	
l2791:
;main.c: 300: clcd_putch('*' , (0xC0 + (j++)));
	movf	((c:change_password@j))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l2793:
	infsnz	((c:change_password@j))^00h,c
	incf	((c:change_password@j+1))^00h,c
	line	301
	
l2795:
;main.c: 301: change++;
	infsnz	((c:change_password@change))^00h,c
	incf	((c:change_password@change+1))^00h,c
	line	302
;main.c: 302: }
	goto	l2821
	line	305
	
l2797:
;main.c: 305: else if(pwd_key == 12)
		movlw	12
	xorwf	((c:change_password@pwd_key))^00h,c,w
	btfss	status,2
	goto	u1951
	goto	u1950

u1951:
	goto	l2821
u1950:
	line	307
	
l2799:
;main.c: 306: {;main.c: 307: if(change == 0)
	movf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1961
	goto	u1960

u1961:
	goto	l2803
u1960:
	line	308
	
l2801:
;main.c: 308: write_external_eeprom(0x00,'0');
	movlw	low(030h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_external_eeprom
	line	309
	
l2803:
;main.c: 309: if( change == 1)
		decf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1971
	goto	u1970

u1971:
	goto	l2807
u1970:
	line	310
	
l2805:
;main.c: 310: write_external_eeprom(0x01,'0');
	movlw	low(030h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(01h)&0ffh
	
	call	_write_external_eeprom
	line	311
	
l2807:
;main.c: 311: if( change== 2)
		movlw	2
	xorwf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1981
	goto	u1980

u1981:
	goto	l2811
u1980:
	line	312
	
l2809:
;main.c: 312: write_external_eeprom(0x02,'0');
	movlw	low(030h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_external_eeprom
	line	313
	
l2811:
;main.c: 313: if( change== 3)
		movlw	3
	xorwf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u1991
	goto	u1990

u1991:
	goto	l2815
u1990:
	line	314
	
l2813:
;main.c: 314: write_external_eeprom(0x03,'0');
	movlw	low(030h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(03h)&0ffh
	
	call	_write_external_eeprom
	line	315
	
l2815:
;main.c: 315: clcd_putch('*' , (0xC0 + (j++)));
	movf	((c:change_password@j))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l2793
	line	321
	
l2821:
;main.c: 317: };main.c: 318: };main.c: 321: if(change == 4)
		movlw	4
	xorwf	((c:change_password@change))^00h,c,w
iorwf	((c:change_password@change+1))^00h,c,w
	btfss	status,2
	goto	u2001
	goto	u2000

u2001:
	goto	l2835
u2000:
	line	323
	
l2823:
;main.c: 322: {;main.c: 323: clcd_print("Password is set  ",(0xC0 + (0)));
		movlw	low(STR_7)
	movwf	((c:clcd_print@data))^00h,c
	movf	((c:clcd_print@data))^00h,c,w
	btfss	status,2
	movlw	high(__smallconst)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	324
	
l2825:
;main.c: 324: str_user[0] = read_external_eeprom(0x00);
	movlw	(0)&0ffh
	
	call	_read_external_eeprom
	movwf	((c:_str_user))^00h,c
	line	325
	
l2827:
;main.c: 325: str_user[1] = read_external_eeprom(0x01);
	movlw	(01h)&0ffh
	
	call	_read_external_eeprom
	movwf	(0+((c:_str_user)+01h))^00h,c
	line	326
	
l2829:
;main.c: 326: str_user[2] = read_external_eeprom(0x02);
	movlw	(02h)&0ffh
	
	call	_read_external_eeprom
	movwf	(0+((c:_str_user)+02h))^00h,c
	line	327
	
l2831:
;main.c: 327: str_user[3] = read_external_eeprom(0x03);
	movlw	(03h)&0ffh
	
	call	_read_external_eeprom
	movwf	(0+((c:_str_user)+03h))^00h,c
	line	328
	
l2833:
;main.c: 328: str_user[4] = '\0';
	movlw	low(0)
	movwf	(0+((c:_str_user)+04h))^00h,c
	line	332
	
l2835:
;main.c: 329: };main.c: 332: if(pwd_key == 10)
		movlw	10
	xorwf	((c:change_password@pwd_key))^00h,c,w
	btfss	status,2
	goto	u2011
	goto	u2010

u2011:
	goto	l2769
u2010:
	line	334
	
l2837:
;main.c: 333: {;main.c: 334: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	338
;main.c: 335: break;
	
l277:
	return	;funcret
	callstack 0
GLOBAL	__end_of_change_password
	__end_of_change_password:
	signat	_change_password,89
	global	_write_external_eeprom

;; *************** function _write_external_eeprom *****************
;; Defined at:
;;		line 5 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	file	"external_eeprom.c"
	line	5
global __ptext25
__ptext25:
psect	text25
	file	"external_eeprom.c"
	line	5
	
_write_external_eeprom:
;incstack = 0
	callstack 26
;write_external_eeprom@address stored from wreg
	movwf	((c:write_external_eeprom@address))^00h,c
	line	7
	
l2577:
;external_eeprom.c: 7: i2c_start();
	call	_i2c_start	;wreg free
	line	8
	
l2579:
;external_eeprom.c: 8: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	9
	
l2581:
;external_eeprom.c: 9: i2c_write(address);
	movf	((c:write_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	10
	
l2583:
;external_eeprom.c: 10: i2c_write(data);
	movf	((c:write_external_eeprom@data))^00h,c,w
	
	call	_i2c_write
	line	11
	
l2585:
;external_eeprom.c: 11: i2c_stop();
	call	_i2c_stop	;wreg free
	line	12
	
l554:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_external_eeprom
	__end_of_write_external_eeprom:
	signat	_write_external_eeprom,8313
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 88 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_password
;;		_set_time
;;		_change_password
;;		_view_log
;;		_clear_log
;;		_download_log
;;		_display_menu
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	88
global __ptext26
__ptext26:
psect	text26
	file	"matrix_keypad.c"
	line	88
	
_read_switches:
;incstack = 0
	callstack 29
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type))^00h,c
	line	92
	
l2531:
;matrix_keypad.c: 90: static unsigned char once = 1;;matrix_keypad.c: 91: static unsigned char key;;matrix_keypad.c: 92: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key))^00h,c
	line	94
	
l2533:
;matrix_keypad.c: 94: if (detection_type == 1)
		decf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u1571
	goto	u1570

u1571:
	goto	l2547
u1570:
	line	96
	
l2535:
;matrix_keypad.c: 95: {;matrix_keypad.c: 96: if(key != 0xFF && once)
		incf	((c:read_switches@key))^00h,c,w
	btfsc	status,2
	goto	u1581
	goto	u1580

u1581:
	goto	l2543
u1580:
	
l2537:
	movf	((c:read_switches@once))^00h,c,w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2543
u1590:
	line	98
	
l2539:
;matrix_keypad.c: 97: {;matrix_keypad.c: 98: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once))^00h,c
	line	99
;matrix_keypad.c: 99: return key;
	movf	((c:read_switches@key))^00h,c,w
	goto	l419
	line	101
	
l2543:
;matrix_keypad.c: 100: };matrix_keypad.c: 101: if(key == 0xFF)
		incf	((c:read_switches@key))^00h,c,w
	btfss	status,2
	goto	u1601
	goto	u1600

u1601:
	goto	l2553
u1600:
	line	102
	
l2545:
;matrix_keypad.c: 102: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once))^00h,c
	goto	l2553
	line	104
	
l2547:
;matrix_keypad.c: 104: else if (detection_type == 0)
	movf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2553
u1610:
	line	106
	
l2549:
;matrix_keypad.c: 105: {;matrix_keypad.c: 106: return scan_key();
	call	_scan_key	;wreg free
	goto	l419
	line	109
	
l2553:
;matrix_keypad.c: 107: };matrix_keypad.c: 109: return 0xFF;
	movlw	(0FFh)&0ffh
	line	110
	
l419:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 18 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	line	18
global __ptext27
__ptext27:
psect	text27
	file	"matrix_keypad.c"
	line	18
	
_scan_key:
;incstack = 0
	callstack 29
	line	20
	
l2389:
;matrix_keypad.c: 20: RB5 = 0;
	bcf	c:(31757/8),(31757)&7	;volatile
	line	21
;matrix_keypad.c: 21: RB6 = 1;
	bsf	c:(31758/8),(31758)&7	;volatile
	line	22
;matrix_keypad.c: 22: RB7 = 1;
	bsf	c:(31759/8),(31759)&7	;volatile
	line	24
;matrix_keypad.c: 24: if (RB1 == 0)
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l389
u1400:
	line	26
	
l2391:
;matrix_keypad.c: 25: {;matrix_keypad.c: 26: return 1;
	movlw	(01h)&0ffh
	goto	l390
	line	28
	
l389:
;matrix_keypad.c: 28: else if (RB2 == 0)
	btfsc	c:(31754/8),(31754)&7	;volatile
	goto	u1411
	goto	u1410
u1411:
	goto	l392
u1410:
	line	30
	
l2397:
;matrix_keypad.c: 29: {;matrix_keypad.c: 30: return 4;
	movlw	(04h)&0ffh
	goto	l390
	line	32
	
l392:
;matrix_keypad.c: 32: else if (RB3 == 0)
	btfsc	c:(31755/8),(31755)&7	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l394
u1420:
	line	34
	
l2403:
;matrix_keypad.c: 33: {;matrix_keypad.c: 34: return 7;
	movlw	(07h)&0ffh
	goto	l390
	line	36
	
l394:
;matrix_keypad.c: 36: else if (RB4 == 0)
	btfsc	c:(31756/8),(31756)&7	;volatile
	goto	u1431
	goto	u1430
u1431:
	goto	l391
u1430:
	line	38
	
l2409:
;matrix_keypad.c: 37: {;matrix_keypad.c: 38: return 10;
	movlw	(0Ah)&0ffh
	goto	l390
	line	41
	
l391:
;matrix_keypad.c: 39: };matrix_keypad.c: 41: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	line	42
;matrix_keypad.c: 42: RB6 = 0;
	bcf	c:(31758/8),(31758)&7	;volatile
	line	43
;matrix_keypad.c: 43: RB7 = 1;
	bsf	c:(31759/8),(31759)&7	;volatile
	line	45
;matrix_keypad.c: 45: if (RB1 == 0)
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u1441
	goto	u1440
u1441:
	goto	l397
u1440:
	line	47
	
l2413:
;matrix_keypad.c: 46: {;matrix_keypad.c: 47: return 2;
	movlw	(02h)&0ffh
	goto	l390
	line	49
	
l397:
;matrix_keypad.c: 49: else if (RB2 == 0)
	btfsc	c:(31754/8),(31754)&7	;volatile
	goto	u1451
	goto	u1450
u1451:
	goto	l399
u1450:
	line	51
	
l2419:
;matrix_keypad.c: 50: {;matrix_keypad.c: 51: return 5;
	movlw	(05h)&0ffh
	goto	l390
	line	53
	
l399:
;matrix_keypad.c: 53: else if (RB3 == 0)
	btfsc	c:(31755/8),(31755)&7	;volatile
	goto	u1461
	goto	u1460
u1461:
	goto	l401
u1460:
	line	55
	
l2425:
;matrix_keypad.c: 54: {;matrix_keypad.c: 55: return 8;
	movlw	(08h)&0ffh
	goto	l390
	line	57
	
l401:
;matrix_keypad.c: 57: else if (RB4 == 0)
	btfsc	c:(31756/8),(31756)&7	;volatile
	goto	u1471
	goto	u1470
u1471:
	goto	l398
u1470:
	line	59
	
l2431:
;matrix_keypad.c: 58: {;matrix_keypad.c: 59: return 11;
	movlw	(0Bh)&0ffh
	goto	l390
	line	62
	
l398:
;matrix_keypad.c: 60: };matrix_keypad.c: 62: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	line	63
;matrix_keypad.c: 63: RB6 = 1;
	bsf	c:(31758/8),(31758)&7	;volatile
	line	64
;matrix_keypad.c: 64: RB7 = 0;
	bcf	c:(31759/8),(31759)&7	;volatile
	line	66
;matrix_keypad.c: 66: RB7 = 0;
	bcf	c:(31759/8),(31759)&7	;volatile
	line	68
;matrix_keypad.c: 68: if (RB1 == 0)
	btfsc	c:(31753/8),(31753)&7	;volatile
	goto	u1481
	goto	u1480
u1481:
	goto	l404
u1480:
	line	70
	
l2435:
;matrix_keypad.c: 69: {;matrix_keypad.c: 70: return 3;
	movlw	(03h)&0ffh
	goto	l390
	line	72
	
l404:
;matrix_keypad.c: 72: else if (RB2 == 0)
	btfsc	c:(31754/8),(31754)&7	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l406
u1490:
	line	74
	
l2441:
;matrix_keypad.c: 73: {;matrix_keypad.c: 74: return 6;
	movlw	(06h)&0ffh
	goto	l390
	line	76
	
l406:
;matrix_keypad.c: 76: else if (RB3 == 0)
	btfsc	c:(31755/8),(31755)&7	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l408
u1500:
	line	78
	
l2447:
;matrix_keypad.c: 77: {;matrix_keypad.c: 78: return 9;
	movlw	(09h)&0ffh
	goto	l390
	line	80
	
l408:
;matrix_keypad.c: 80: else if (RB4 == 0)
	btfsc	c:(31756/8),(31756)&7	;volatile
	goto	u1511
	goto	u1510
u1511:
	goto	l407
u1510:
	line	82
	
l2453:
;matrix_keypad.c: 81: {;matrix_keypad.c: 82: return 12;
	movlw	(0Ch)&0ffh
	goto	l390
	line	85
	
l407:
	
l2457:
;matrix_keypad.c: 83: };matrix_keypad.c: 85: return 0xFF;
	movlw	(0FFh)&0ffh
	line	86
	
l390:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_read_external_eeprom

;; *************** function _read_external_eeprom *****************
;; Defined at:
;;		line 14 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"external_eeprom.c"
	line	14
global __ptext28
__ptext28:
psect	text28
	file	"external_eeprom.c"
	line	14
	
_read_external_eeprom:
;incstack = 0
	callstack 25
;read_external_eeprom@address stored from wreg
	movwf	((c:read_external_eeprom@address))^00h,c
	line	18
	
l2587:
;external_eeprom.c: 16: unsigned char data;;external_eeprom.c: 18: i2c_start();
	call	_i2c_start	;wreg free
	line	19
	
l2589:
;external_eeprom.c: 19: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	20
	
l2591:
;external_eeprom.c: 20: i2c_write(address);
	movf	((c:read_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	21
	
l2593:
;external_eeprom.c: 21: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	22
	
l2595:
;external_eeprom.c: 22: i2c_write(0xA1);
	movlw	(0A1h)&0ffh
	
	call	_i2c_write
	line	23
;external_eeprom.c: 23: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_external_eeprom@data))^00h,c
	line	24
	
l2597:
;external_eeprom.c: 24: i2c_stop();
	call	_i2c_stop	;wreg free
	line	26
;external_eeprom.c: 26: return data;
	movf	((c:read_external_eeprom@data))^00h,c,w
	line	27
	
l557:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_external_eeprom
	__end_of_read_external_eeprom:
	signat	_read_external_eeprom,4217
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 54 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	54
global __ptext29
__ptext29:
psect	text29
	file	"i2c.c"
	line	54
	
_i2c_write:
;incstack = 0
	callstack 26
;i2c_write@data stored from wreg
	movwf	((c:i2c_write@data))^00h,c
	line	56
	
l2359:
;i2c.c: 56: SSPBUF = data;
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	57
	
l2361:
;i2c.c: 57: i2c_idle();
	call	_i2c_idle	;wreg free
	line	58
	
l96:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 42 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	line	42
global __ptext30
__ptext30:
psect	text30
	file	"i2c.c"
	line	42
	
_i2c_stop:
;incstack = 0
	callstack 26
	line	44
	
l2351:
;i2c.c: 44: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	45
	
l2353:
;i2c.c: 45: i2c_idle();
	call	_i2c_idle	;wreg free
	line	46
	
l90:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 36 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	line	36
global __ptext31
__ptext31:
psect	text31
	file	"i2c.c"
	line	36
	
_i2c_start:
;incstack = 0
	callstack 26
	line	38
	
l2347:
;i2c.c: 38: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	39
	
l2349:
;i2c.c: 39: i2c_idle();
	call	_i2c_idle	;wreg free
	line	40
	
l87:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 48 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	line	48
global __ptext32
__ptext32:
psect	text32
	file	"i2c.c"
	line	48
	
_i2c_rep_start:
;incstack = 0
	callstack 26
	line	50
	
l2355:
;i2c.c: 50: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	51
	
l2357:
;i2c.c: 51: i2c_idle();
	call	_i2c_idle	;wreg free
	line	52
	
l93:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 72 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_rx_mode
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	line	72
global __ptext33
__ptext33:
psect	text33
	file	"i2c.c"
	line	72
	
_i2c_read:
;incstack = 0
	callstack 25
	line	74
	
l2363:
;i2c.c: 74: i2c_rx_mode();
	call	_i2c_rx_mode	;wreg free
	line	75
;i2c.c: 75: i2c_no_ack();
	call	_i2c_no_ack	;wreg free
	line	77
	
l2365:
;i2c.c: 77: return SSPBUF;
	movf	((c:4041))^0f00h,c,w	;volatile
	line	78
	
l105:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 60 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	line	60
global __ptext34
__ptext34:
psect	text34
	file	"i2c.c"
	line	60
	
_i2c_rx_mode:
;incstack = 0
	callstack 25
	line	62
	
l2341:
;i2c.c: 62: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	63
	
l2343:
;i2c.c: 63: i2c_idle();
	call	_i2c_idle	;wreg free
	line	64
	
l99:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 22 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	line	22
global __ptext35
__ptext35:
psect	text35
	file	"i2c.c"
	line	22
	
_i2c_idle:
;incstack = 0
	callstack 26
	line	24
	
l2339:
;i2c.c: 24: while (!SSPIF);
	
l77:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1361
	goto	u1360
u1361:
	goto	l77
u1360:
	
l79:
	line	25
;i2c.c: 25: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	26
	
l80:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 66 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	line	66
global __ptext36
__ptext36:
psect	text36
	file	"i2c.c"
	line	66
	
_i2c_no_ack:
;incstack = 0
	callstack 26
	line	68
	
l2345:
;i2c.c: 68: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	69
;i2c.c: 69: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	70
	
l102:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 51 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    7[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_password
;;		_set_time
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	51
global __ptext37
__ptext37:
psect	text37
	file	"clcd.c"
	line	51
	
_clcd_putch:
;incstack = 0
	callstack 28
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data))^00h,c
	line	53
	
l2565:
;clcd.c: 53: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@addr))^00h,c,w
	
	call	_clcd_write
	line	54
;clcd.c: 54: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@data))^00h,c,w
	
	call	_clcd_write
	line	55
	
l541:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 42 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2    6[COMRAM] PTR const unsigned char 
;;		 -> STR_24(18), STR_23(3), STR_22(3), STR_21(3), 
;;		 -> STR_20(3), STR_19(3), STR_18(3), STR_17(3), 
;;		 -> STR_16(3), menu(85), STR_15(3), STR_11(8), 
;;		 -> STR_10(17), STR_9(12), STR_8(18), STR_7(18), 
;;		 -> STR_6(17), STR_5(9), STR_4(15), STR_3(13), 
;;		 -> STR_2(17), STR_1(15), str(3), gear(27), 
;;		 -> time(9), event(170), 
;;  addr            1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_password
;;		_set_time
;;		_change_password
;;		_view_log
;;		_clear_log
;;		_download_log
;;		_display_menu
;;		_display_time
;;		_init_config
;;		_main
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	42
global __ptext38
__ptext38:
psect	text38
	file	"clcd.c"
	line	42
	
_clcd_print:
;incstack = 0
	callstack 28
	line	44
	
l2557:
;clcd.c: 44: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	45
;clcd.c: 45: while (*data != '\0')
	goto	l2563
	line	47
	
l2559:
;clcd.c: 46: {;clcd.c: 47: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1627
	tblrd	*
	
	movf	tablat,w
	bra	u1620
u1627:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1620:
	
	call	_clcd_write
	
l2561:
	infsnz	((c:clcd_print@data))^00h,c
	incf	((c:clcd_print@data+1))^00h,c
	line	45
	
l2563:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1637
	tblrd	*
	
	movf	tablat,w
	bra	u1630
u1637:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1630:
	iorlw	0
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l2559
u1640:
	line	49
	
l538:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 4 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_password
;;		_set_time
;;		_change_password
;;		_view_log
;;		_clear_log
;;		_download_log
;;		_main
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	4
global __ptext39
__ptext39:
psect	text39
	file	"clcd.c"
	line	4
	
_clcd_write:
;incstack = 0
	callstack 29
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte))^00h,c
	line	6
	
l2369:
;clcd.c: 6: RC1 = control_bit;
	btfsc	((c:clcd_write@control_bit))^00h,c,0
	goto	u1371
	goto	u1370
u1371:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u1385
u1370:
	bcf	c:(31761/8),(31761)&7	;volatile
u1385:
	line	7
	
l2371:
;clcd.c: 7: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	10
	
l2373:
;clcd.c: 10: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	11
	
l2375:
;clcd.c: 11: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	13
	
l2377:
;clcd.c: 13: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	14
	
l2379:
;clcd.c: 14: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	15
	
l2381:
;clcd.c: 15: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	19
	
l2383:
;clcd.c: 18: {;clcd.c: 19: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	20
	
l2385:
;clcd.c: 20: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	21
	
l2387:
;clcd.c: 21: } while (RD7);
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l2383
u1390:
	
l528:
	line	23
;clcd.c: 23: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	24
;clcd.c: 24: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	25
	
l529:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	_add_event

;; *************** function _add_event *****************
;; Defined at:
;;		line 39 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   10[COMRAM] int 
;;  i               2    8[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	39
global __ptext40
__ptext40:
psect	text40
	file	"main.c"
	line	39
	
_add_event:
;incstack = 0
	callstack 29
	line	41
	
l2959:
;main.c: 41: int i = 0 , j = 0;
	movlw	high(0)
	movwf	((c:add_event@i+1))^00h,c
	movlw	low(0)
	movwf	((c:add_event@i))^00h,c
	line	43
	
l2961:
;main.c: 43: if(log < 10)
	btfsc	((c:_log+1))^00h,c,7
	goto	u2130
	movf	((c:_log+1))^00h,c,w
	bnz	u2131
	movlw	10
	subwf	 ((c:_log))^00h,c,w
	btfsc	status,0
	goto	u2131
	goto	u2130

u2131:
	goto	l3005
u2130:
	line	46
	
l2963:
;main.c: 44: {;main.c: 46: for(j=0 ; time[j] != '\0' ; j++)
	movlw	high(0)
	movwf	((c:add_event@j+1))^00h,c
	movlw	low(0)
	movwf	((c:add_event@j))^00h,c
	goto	l2971
	line	48
	
l2965:
;main.c: 47: {;main.c: 48: event[log][i++] = time[j];
	movf	((c:add_event@j))^00h,c,w
	addlw	low(_time)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_log),(c:___wmul@multiplier)
	movff	(c:_log+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low((_event))
	movwf	(??_add_event+0+0)^00h,c
	movlw	high((_event))
	movwf	1+(??_add_event+0+0)^00h,c
	movf	(0+?___wmul)^00h,c,w
	addwf	(??_add_event+0+0)^00h,c
	movf	(1+?___wmul)^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c
	movf	((c:add_event@i))^00h,c,w
	addwf	(??_add_event+0+0)^00h,c,w
	movwf	c:fsr1l
	movf	((c:add_event@i+1))^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	
l2967:
	infsnz	((c:add_event@i))^00h,c
	incf	((c:add_event@i+1))^00h,c
	line	46
	
l2969:
	infsnz	((c:add_event@j))^00h,c
	incf	((c:add_event@j+1))^00h,c
	
l2971:
	movf	((c:add_event@j))^00h,c,w
	addlw	low(_time)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l2965
u2140:
	line	50
	
l2973:
;main.c: 49: };main.c: 50: event[log][i++] = ' ';
	movff	(c:_log),(c:___wmul@multiplier)
	movff	(c:_log+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low((_event))
	movwf	(??_add_event+0+0)^00h,c
	movlw	high((_event))
	movwf	1+(??_add_event+0+0)^00h,c
	movf	(0+?___wmul)^00h,c,w
	addwf	(??_add_event+0+0)^00h,c
	movf	(1+?___wmul)^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c
	movf	((c:add_event@i))^00h,c,w
	addwf	(??_add_event+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:add_event@i+1))^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(020h)
	movwf	indf2
	
l2975:
	infsnz	((c:add_event@i))^00h,c
	incf	((c:add_event@i+1))^00h,c
	line	53
	
l2977:
;main.c: 53: for(j=0 ; gear[count][j] != '\0' ; j++)
	movlw	high(0)
	movwf	((c:add_event@j+1))^00h,c
	movlw	low(0)
	movwf	((c:add_event@j))^00h,c
	goto	l2985
	line	55
	
l2979:
;main.c: 54: {;main.c: 55: event[log][i++] = gear[count][j];
	movf	((c:_count))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_gear)
	addwf	((c:add_event@j))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_log),(c:___wmul@multiplier)
	movff	(c:_log+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low((_event))
	movwf	(??_add_event+0+0)^00h,c
	movlw	high((_event))
	movwf	1+(??_add_event+0+0)^00h,c
	movf	(0+?___wmul)^00h,c,w
	addwf	(??_add_event+0+0)^00h,c
	movf	(1+?___wmul)^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c
	movf	((c:add_event@i))^00h,c,w
	addwf	(??_add_event+0+0)^00h,c,w
	movwf	c:fsr1l
	movf	((c:add_event@i+1))^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	
l2981:
	infsnz	((c:add_event@i))^00h,c
	incf	((c:add_event@i+1))^00h,c
	line	53
	
l2983:
	infsnz	((c:add_event@j))^00h,c
	incf	((c:add_event@j+1))^00h,c
	
l2985:
	movf	((c:_count))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_gear)
	addwf	((c:add_event@j))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l2979
u2150:
	line	57
	
l2987:
;main.c: 56: };main.c: 57: event[log][i++] = ' ';
	movff	(c:_log),(c:___wmul@multiplier)
	movff	(c:_log+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low((_event))
	movwf	(??_add_event+0+0)^00h,c
	movlw	high((_event))
	movwf	1+(??_add_event+0+0)^00h,c
	movf	(0+?___wmul)^00h,c,w
	addwf	(??_add_event+0+0)^00h,c
	movf	(1+?___wmul)^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c
	movf	((c:add_event@i))^00h,c,w
	addwf	(??_add_event+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:add_event@i+1))^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(020h)
	movwf	indf2
	
l2989:
	infsnz	((c:add_event@i))^00h,c
	incf	((c:add_event@i+1))^00h,c
	line	60
	
l2991:
;main.c: 60: for(j=0 ; str[j] != '\0' ; j++)
	movlw	high(0)
	movwf	((c:add_event@j+1))^00h,c
	movlw	low(0)
	movwf	((c:add_event@j))^00h,c
	goto	l2999
	line	62
	
l2993:
;main.c: 61: {;main.c: 62: event[log][i++] = str[j];
	movf	((c:add_event@j))^00h,c,w
	addlw	low(_str)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_log),(c:___wmul@multiplier)
	movff	(c:_log+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low((_event))
	movwf	(??_add_event+0+0)^00h,c
	movlw	high((_event))
	movwf	1+(??_add_event+0+0)^00h,c
	movf	(0+?___wmul)^00h,c,w
	addwf	(??_add_event+0+0)^00h,c
	movf	(1+?___wmul)^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c
	movf	((c:add_event@i))^00h,c,w
	addwf	(??_add_event+0+0)^00h,c,w
	movwf	c:fsr1l
	movf	((c:add_event@i+1))^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	
l2995:
	infsnz	((c:add_event@i))^00h,c
	incf	((c:add_event@i+1))^00h,c
	line	60
	
l2997:
	infsnz	((c:add_event@j))^00h,c
	incf	((c:add_event@j+1))^00h,c
	
l2999:
	movf	((c:add_event@j))^00h,c,w
	addlw	low(_str)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l2993
u2160:
	line	65
	
l3001:
;main.c: 63: };main.c: 65: event[log][i] = '\0';
	movff	(c:_log),(c:___wmul@multiplier)
	movff	(c:_log+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low((_event))
	movwf	(??_add_event+0+0)^00h,c
	movlw	high((_event))
	movwf	1+(??_add_event+0+0)^00h,c
	movf	(0+?___wmul)^00h,c,w
	addwf	(??_add_event+0+0)^00h,c
	movf	(1+?___wmul)^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c
	movf	((c:add_event@i))^00h,c,w
	addwf	(??_add_event+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:add_event@i+1))^00h,c,w
	addwfc	(??_add_event+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	66
	
l3003:
;main.c: 66: log++;
	infsnz	((c:_log))^00h,c
	incf	((c:_log+1))^00h,c
	line	70
	
l3005:
;main.c: 67: };main.c: 70: if(log == 10)
		movlw	10
	xorwf	((c:_log))^00h,c,w
iorwf	((c:_log+1))^00h,c,w
	btfss	status,2
	goto	u2171
	goto	u2170

u2171:
	goto	l198
u2170:
	line	71
	
l3007:
;main.c: 71: log = 0;
	movlw	high(0)
	movwf	((c:_log+1))^00h,c
	movlw	low(0)
	movwf	((c:_log))^00h,c
	line	72
	
l198:
	return	;funcret
	callstack 0
GLOBAL	__end_of_add_event
	__end_of_add_event:
	signat	_add_event,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_add_event
;;		_view_log
;;		_clear_log
;;		_download_log
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext41
__ptext41:
psect	text41
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\Umul16.c"
	line	15
	
___wmul:
;incstack = 0
	callstack 28
	line	37
	
l2609:
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	52
	
l2611:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	line	53
	
l560:
	return	;funcret
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    7[COMRAM] unsigned int 
;;  divisor         2    9[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[COMRAM] unsigned int 
;;  counter         1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	7
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 30
	line	13
	
l3291:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l3293:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2591
	goto	u2590

u2591:
	goto	l1039
u2590:
	line	15
	
l3295:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l3299
	line	17
	
l3297:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l3299:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l3297
u2600:
	line	21
	
l3301:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l3303:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2611
	goto	u2610

u2611:
	goto	l3309
u2610:
	line	23
	
l3305:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l3307:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l3309:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l3311:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l3301
	line	28
	
l1039:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l1046:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awmod.c"
	line	7
global __ptext43
__ptext43:
psect	text43
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 30
	line	12
	
l3255:
	movlw	low(0)
	movwf	((c:___awmod@sign))^00h,c
	line	13
	
l3257:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u2530
	goto	u2531

u2531:
	goto	l3263
u2530:
	line	14
	
l3259:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l3261:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l3263:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u2540
	goto	u2541

u2541:
	goto	l3267
u2540:
	line	18
	
l3265:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l3267:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2551
	goto	u2550

u2551:
	goto	l3283
u2550:
	line	20
	
l3269:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l3273
	line	22
	
l3271:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l3273:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3271
u2560:
	line	26
	
l3275:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2571
	goto	u2570

u2571:
	goto	l3279
u2570:
	line	27
	
l3277:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l3279:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l3281:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l3275
	line	31
	
l3283:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3287
u2580:
	line	32
	
l3285:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l3287:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l804:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awdiv.c"
	line	7
global __ptext44
__ptext44:
psect	text44
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 30
	line	13
	
l3211:
	movlw	low(0)
	movwf	((c:___awdiv@sign))^00h,c
	line	14
	
l3213:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u2470
	goto	u2471

u2471:
	goto	l3219
u2470:
	line	15
	
l3215:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l3217:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l3219:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u2480
	goto	u2481

u2481:
	goto	l3225
u2480:
	line	19
	
l3221:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l3223:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l3225:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l3227:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2491
	goto	u2490

u2491:
	goto	l3247
u2490:
	line	24
	
l3229:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l3233
	line	26
	
l3231:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l3233:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l3231
u2500:
	line	30
	
l3235:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l3237:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2511
	goto	u2510

u2511:
	goto	l3243
u2510:
	line	32
	
l3239:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l3241:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l3243:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l3245:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l3235
	line	38
	
l3247:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l3251
u2520:
	line	39
	
l3249:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l3251:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l791:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
