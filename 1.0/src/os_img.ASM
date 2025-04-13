; RapyOS build
; More details in README.md
; Licensed under the MIT License
; Copyright (c) 2025 A. Fonov

format binary as 'img'
macro align value { db value-1 - ($ + value-1) mod (value) dup 0 }
HEADS = 1
SPT = 6
Begin:
        file "boot1.bin",512
        file "kernel1.bin"
        align 512
        file "interface1.bin"
        align 512
        file "disks1.bin"
        align 512
        file "helloworld1.bin"
        align 512
        file "write1.bin"
        align 512