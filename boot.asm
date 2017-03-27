; File: boot.asm
; Description: BootLoader
[BITS 16]

ORG 0x7C00

; BOOT
BOOT:
    CLI
    HLT

TIMES 510 - ($ - $$) DB 0

DW 0xAA55
