;	$Id: h_pina.asm,v 1.1 97/04/07 12:04:05 newdeal Exp $
;[]-----------------------------------------------------------------[]
;|      H_PINA.ASM -- long pointer routines                          |
;[]-----------------------------------------------------------------[]

;
;       C/C++ Run Time Library - Version 5.0
; 
;       Copyright (c) 1987, 1992 by Borland International
;       All Rights Reserved.
; 

                INCLUDE rules.asi

; calls to these routines are generated by the compiler to perform
; arithmetic operations on long pointers.

_TEXT           SEGMENT BYTE PUBLIC 'CODE'
                ASSUME  CS:_TEXT

                public  PINA@
                public  F_PINA@
                public  N_PINA@

N_PINA@		proc	near
                pop     cx                      ;fix up far return
                push    cs
                push    cx
		.fall_thru
N_PINA@		endp

PINA@		proc	far
		.fall_thru
PINA@		endp
F_PINA@		proc	far
;
;               Pointer to memory cell to increment is in es:bx
;               Increment amount is ax
;               This routine trashes cl

                mov     cl,4
                add     ax,es:[bx]
                mov     dx,ax
                jc      inacarry
                shr     dx,cl
                add     dx,es:2[bx]
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
inacarry:
                shr     dx,cl
                add     dx,es:2[bx]
                add     dx,1000H
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
F_PINA@		endp

                public  PDEA@
                public  F_PDEA@
                public  N_PDEA@

N_PDEA@		proc	near
                pop     cx                      ;fix up far return
                push    cs
                push    cx
		.fall_thru
N_PDEA@		endp

PDEA@		proc	far
		.fall_thru
PDEA@		endp
F_PDEA@		proc	far
;
;               Pointer to memory cell to increment is in es:bx
;               Decrement amount is ax
;               This routine trashes cl

                mov     cl,4
                mov     dx,es:[bx]
                sub     dx,ax
                mov     ax,dx
                jc      deacarry
                shr     dx,cl
                add     dx,es:2[bx]
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
deacarry:
                shr     dx,cl
                add     dx,es:2[bx]
                sub     dx,1000H
                and     ax,0fh
                xchg    es:[bx],ax
                xchg    es:2[bx],dx
                ret
F_PDEA@		endp

_TEXT           ENDS


