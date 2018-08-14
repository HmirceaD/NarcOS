global loader

magic_number equ 0x1BADB002
flags equ 0x0
checksum equ -magic_number

section .text
align 4
    
    dd magic_number
    dd flags
    dd checksum

loader:
    mov eax, 0x00BADA55

.loop:
    jmp .loop
