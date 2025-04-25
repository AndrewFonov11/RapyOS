; RapyOS 1.2 code helloworld
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

org 0x1300
use16

mov ax,0002h
int 10h

mov ah,0x0e
mov al,'H'
int 10h
mov al,'e'
int 10h
mov al,'l'
int 10h
mov al,'l'
int 10h
mov al,'o'
int 10h
mov al,' '
int 10h
mov al,'W'
int 10h
mov al,'o'
int 10h
mov al,'r'
int 10h
mov al,'l'
int 10h
mov al,'d'
int 10h

mov ah,10h
int 16h
jmp 0000:0500h

p_name db 'HELLOWORLD'