; RapyOS 1.1 code boot
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

org 0x7c00
use16

cli
xor ax, ax
mov ds, ax
mov es, ax
mov ss, ax
mov sp, 0xFFFF
sti

mov ax,0002h
int 10h

mov ah,0x0e
mov al,'.'
int 10h
mov al,'.'
int 10h
mov al,'.'
int 10h

mov ax,0000h
mov es,ax
mov bx,500h
mov ch,0
mov cl,02h
mov dh,0
mov al,01h
mov ah,02h
int 13h
jc be
jmp 0000:0500h

be:
        mov ax,0002h
        int 10h
        mov ah,0x0e
        mov al,'!'
        int 10h
        mov al,'!'
        int 10h
        mov al,'!'
        int 10h
        mov ah,0x10
        int 16h
        int 19h

p_name db 'BOOT'

os_name db 'RapyOS'

ver_name db '1.1'

times 510 - ($ - $$) db 0
db 0x55,0xAA