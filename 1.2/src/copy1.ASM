; RapyOS 1.2 code copy
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

org 0x2200
use16

mov ax,0000h
mov es,ax
mov dl,1
mov bx,2500h
mov ch,0
mov cl,03h
mov dh,0
mov al,01h
mov ah,02h
int 13h
jc copy_error

mov ax,0000h
mov es,ax
mov dl,0
mov bx,2500h
mov ch,0
mov cl,09h
mov dh,0
mov al,01h
mov ah,03h
int 13h
jc copy_error

mov ah,0x0e
mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov ah,0x0e
mov al,'O'
int 10h
mov al,'K'
int 10h
mov ah,10h
int 16h
int 19h

copy_error:

mov ah,0x0e
mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov ah,0x0e
mov al,'C'
int 10h
mov al,'o'
int 10h
mov al,'p'
int 10h
mov al,'y'
int 10h
mov al,' '
int 10h
mov al,'e'
int 10h
mov al,'r'
int 10h
mov al,'r'
int 10h
mov al,'o'
int 10h
mov al,'r'
int 10h
mov ah,10h
int 16h
int 19h

p_name db 'COPY'