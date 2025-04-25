; RapyOS 1.2 code kernel
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

org 0x500
use16

mov ax,0002h
int 10h

mov ax,0000h
mov es,ax
mov bx,700h
mov ch,0
mov cl,03h
mov dh,0
mov al,02h
mov ah,02h
int 13h
jc error
jmp 0000:0700h

error:

mov ah,0x0e
mov al,'K'
int 10h
mov al,'e'
int 10h
mov al,'r'
int 10h
mov al,'n'
int 10h
mov al,'e'
int 10h
mov al,'l'
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

p_name db 'KERNEL'