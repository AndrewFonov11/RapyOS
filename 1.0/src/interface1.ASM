; RapyOS 1.0 code interface
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

org 0x700
use16

mov ax,0002h
int 10h

mov ah,0x0e
mov al,'R'
int 10h
mov al,'a'
int 10h
mov al,'p'
int 10h
mov al,'y'
int 10h
mov al,'O'
int 10h
mov al,'S'
int 10h
mov al,' '
int 10h
mov al,'v'
int 10h
mov al,'e'
int 10h
mov al,'r'
int 10h
mov al,' '
int 10h
mov al,'1'
int 10h
mov al,'.'
int 10h
mov al,'0'
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,'1'
int 10h
mov al,'-'
int 10h
mov al,'h'
int 10h
mov al,'e'
int 10h
mov al,'w'
int 10h
mov al,'r'
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,'2'
int 10h
mov al,'-'
int 10h
mov al,'d'
int 10h
mov al,'i'
int 10h
mov al,'s'
int 10h
mov al,'k'
int 10h
mov al,'s'
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,'3'
int 10h
mov al,'-'
int 10h
mov al,'w'
int 10h
mov al,'r'
int 10h
mov al,'i'
int 10h
mov al,'t'
int 10h
mov al,'e'
int 10h

aa:
        mov ah,10h
        int 16h
        cmp al,12h
        jz reboot
        cmp al,'1'
        jz helloworld
        cmp al,'2'
        jz disks
        cmp al,'3'
        jz write

jmp aa

reboot:
        int 19h

helloworld:
        mov ax,0000h
        mov es,ax
        mov bx,1300h
        mov ch,0
        mov cl,05h
        mov dh,0
        mov al,01h
        mov ah,02h
        int 13h
        jc error
        jmp 0000:1300h

disks:
        mov ax,0000h
        mov es,ax
        mov bx,900h
        mov ch,0
        mov cl,04h
        mov dh,0
        mov al,01h
        mov ah,02h
        int 13h
        jc error
        jmp 0000:0900h

write:
        mov ax,0000h
        mov es,ax
        mov bx,2000h
        mov ch,0
        mov cl,06h
        mov dh,0
        mov al,01h
        mov ah,02h
        int 13h
        jc error
        jmp 0000:2000h

error:

mov ah,0x0e
mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov ah,0x0e
mov al,'E'
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

p_name db 'INTERFACE'