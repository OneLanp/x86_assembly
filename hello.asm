mov ax, 3
int 0x10 ;将显示模式摄制成文本模式

mov ax, 0xb800
mov ds, ax

mov byte [0], 'H'
mov byte [1], 11110000b

halt:
    jmp halt

times 510 - ($ - $$) db 0
db 0x55, 0xaa