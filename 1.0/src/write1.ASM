; RapyOS 1.0 code write
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

org 0x2000
use16

mov ax,0002h
int 10h

aa:
        xor ax, ax
        int 16h
        mov ah,0x0e
        int 10h
        cmp al,1Bh
        jz exit_prog
        cmp al,12h
        jz reboot
        cmp al,0Dh
        jz enter_

jmp aa

exit_prog:
        jmp 0000:0500h
reboot:
        int 19h
enter_:
        mov ah,0x0e
        mov al,0x0A
        int 10h
        mov al,0x0D
        int 10h
        jmp aa

jmp $

p_name db 'WRITE'