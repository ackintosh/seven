; File: boot.asm
; Description: BootLoader
[BITS 16]

ORG 0x7C00

; BIOS parameter blocks(FAT12)
; http://softwaretechnique.jp/OS_Development/bootloader4.html

; BS_jmpBoot
JMP BOOT
BS_jmpBoot2	DB 0x90
BS_OEMName	DB "SevenOS "
; BytesPerSector
BPB_BytsPerSec	DW 0x0200
; SectorPerCluster
BPB_SecPerClus 	DB 0x01
; ReservedSectors
BPB_RsvdSecCnt 	DW 0x0001
; TotalFATs
BPB_NumFATs 	DB 0x02
; MaxRootEntries
BPB_RootEntCnt 	DW 0x00E0
; TotalSectors
BPB_TotSec	DW 0x0B40
; MediaDescriptor
BPB_Media 	DB 0xF0
; SectorsPerFAT
BPB_FATSz16	DW 0x0009
; SectorsPerTrack
BPB_SecPerTrk 	DW 0x0012
; NumHeads
BPB_NumHeads 	DW 0x0002
; HiddenSector
BPB_HiddSec 	DD 0x00000000
; TotalSectors
BPB_TotSec32 	DD 0x00000000

; DriveNumber
BS_DrvNum 	DB 0x00
; Reserved
BS_Reserved1 	DB 0x00
; BootSignature
BS_BootSig	DB 0x29
; VolumeSerialNumber
BS_VolID	DD 0x20170327
; VolumeLabel
BS_VolLab 	DB "SevenOS    "
; FileSystemType
BS_FilSysType	DB "FAT12   "

; BOOT
BOOT:
    CLI
    HLT

TIMES 510 - ($ - $$) DB 0

DW 0xAA55
