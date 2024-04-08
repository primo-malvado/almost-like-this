# almost-like-this

with "almost-like-this" you can use in z80 assembly some logic structures found in higher level languages

Look at example.asm for a quick sort example 

## If-else-endif 

you can program like

```asm
        cp $03
        
        _if_not z
                ld a, $05
        _else
                ld a, $06
        _end_if
        nop
```

instead of

```asm
start:
        cp $03
        jr z, L_1778
        ld a, $05
        jr L_177A
L_1778:
        ld a, $06
L_177A:
        nop
```


## LOOPs 

you can program like

```asm
        xor a 
        _do
                inc a
                cp $0a
        _while nz

        _do 
                cp $02
                _break_if z

                cp $05
                _continue_if z

                dec a   
        _while_true
        nop


```

instead of

```asm
tart:
        xor a

L_1771:
        inc a
        cp $0A
        jr nz, L_1771

L_1776:
        cp $02
        jr z, L_1781
        cp $05
        jr z, L_1776
        dec a
        jr L_1776


L_1781:
        nop
```
