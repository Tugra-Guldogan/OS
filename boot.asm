; Source: pg 12

mov ah, 0x0e		; scrolling teletype BIOS routine.

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $			; make loop(?)

; Padding and magic number for boot recognition

times 510-($-$$) db 0		; pad to 510 bytes
dw 0xaa55			; our magic number!
;db 0xaa,0x55			; our magic number!
;db 0x55			; our magic number!
