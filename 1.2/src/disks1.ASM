; RapyOS 1.2 code disks
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

org 0x900
use16

mov ah,0x0e
mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov ah,0x0e
mov al,'1'
int 10h
mov al,'-'
int 10h
mov al,'f'
int 10h
mov al,'l'
int 10h
mov al,'o'
int 10h
mov al,'p'
int 10h
mov al,'p'
int 10h
mov al,'y'
int 10h
mov al,' '
int 10h
mov al,'b'
int 10h
mov al,'o'
int 10h
mov al,'o'
int 10h
mov al,'t'
int 10h
mov al,' '
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,'2'
int 10h
mov al,'-'
int 10h
mov al,'f'
int 10h
mov al,'l'
int 10h
mov al,'o'
int 10h
mov al,'p'
int 10h
mov al,'p'
int 10h
mov al,'y'
int 10h
mov al,' '
int 10h
mov al,'2'
int 10h
mov al,' '
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
mov al,'H'
int 10h
mov al,'D'
int 10h
mov al,'D'
int 10h
mov al,' '
int 10h
mov al,'1'
int 10h

mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov al,'4'
int 10h
mov al,'-'
int 10h
mov al,'H'
int 10h
mov al,'D'
int 10h
mov al,'D'
int 10h
mov al,' '
int 10h
mov al,'2'
int 10h

aa:
        mov ah,10h
        int 16h
        cmp al,'1'
        jz floppy_boot
        cmp al,'2'
        jz floppy_2s
        cmp al,'3'
        jz hdd_1
        cmp al,'4'
        jz hdd_2

jmp aa

floppy_boot:

mov ax,0000h
mov es,ax
mov dl,1
mov bx,7c00h
mov ch,0
mov cl,01h
mov dh,0
mov al,01h
mov ah,02h
int 13h
jc disk_error
jmp 0000:7c00h

floppy_2s:

mov ax,0000h
mov es,ax
mov dl,1
mov bx,500h
mov ch,0
mov cl,02h
mov dh,0
mov al,01h
mov ah,02h
int 13h
jc disk_error
jmp 0000:0500h

hdd_1:

mov ax,0000h
mov es,ax
mov dl,80h
mov bx,7c00h
mov ch,0
mov cl,01h
mov dh,0
mov al,01h
mov ah,02h
int 13h
jc disk_error
jmp 0000:7c00h

hdd_2:

mov ax,0000h
mov es,ax
mov dl,81h
mov bx,7c00h
mov ch,0
mov cl,01h
mov dh,0
mov al,01h
mov ah,02h
int 13h
jc disk_error
jmp 0000:7c00h

disk_error:

mov ah,0x0e
mov al,0x0A
int 10h
mov al,0x0D
int 10h

mov ah,0x0e
mov al,'D'
int 10h
mov al,'i'
int 10h
mov al,'s'
int 10h
mov al,'k'
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

p_name db 'DISKS'