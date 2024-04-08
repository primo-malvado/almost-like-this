        DEVICE ZXSPECTRUM48
        include "almost-like-this.asm"

        org $6000

; >>> Quicksort routine v1.1 <<<
; by Frank Yaul 7/14/04
;
; Usage: bc->first, de->last,
;        call qsort
; Destroys: abcdefhl
;


start: 

        ld sp, stack
        ld bc, list
        ld de, stack-1

        ld hl,0
        push hl

        _do 

                ld h,b
                ld l,c
                or a
                sbc hl,de
                
                _if_not c
                        
                        pop bc
                        ld a,b
                        or c
                        ret z
                        pop de
                        
                _else
                     


                        push de
                        push bc
                        ld a,(bc)
                        ld h,a
                        dec bc
                        inc de

                        _do

                                inc bc 
                                ld a,(bc)

                                cp h
                                _continue_if c


                                _do
                                        dec de 
                                        ld a,(de)
                                        ld l,a
                                        ld a,h
                                        cp l

                                _while c

                                push hl 
                                ld h,d 
                                ld l,e
                                or a
                                sbc hl,bc

                                _break_if c

                                ld a,(bc) 
                                ld h,a
                                ld a,(de)
                                ld (bc),a
                                ld a,h
                                ld (de),a
                                pop hl 

                        _while_true

                        pop hl 
                        pop hl 
                        push bc 
                        ld b,h
                        ld c,l 
                _end_if
        _while_true


list: 

        db $61, $6A, $64, $6E, $72, $6F, $6B, $73, $75, $65, $79, $61, $74, $72, $71, $35, $34, $63

stack equ $



        SAVEBIN "dist/01.bin",start, stack-start


