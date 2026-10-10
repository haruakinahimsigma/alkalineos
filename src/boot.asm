; Alkaline OS — first boot sector
; BIOS loads this 512-byte sector at physical address 0x7C00.
; Build with: nasm -f bin src/boot.asm -o build/alkaline-os.img

BITS 16
ORG 0x7C00

start:
    cli
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7C00
    sti
    cld

    mov si, message
.print:
    lodsb
    test al, al
    jz .halt
    mov ah, 0x0E
    mov bh, 0x00
    mov bl, 0x07
    int 0x10
    jmp .print

.halt:
    cli
.loop:
    hlt
    jmp .loop

message:
    db 13, 10
    db 'Alkaline OS', 13, 10
    db 'Booted successfully!', 13, 10
    db 'This is the first step.', 13, 10, 0

; BIOS boot signature at bytes 510-511.
times 510-($-$$) db 0
dw 0xAA55
