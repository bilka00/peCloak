use32
    mov ah, 46
    sahf
    je Exit
    jmp Go
    Exit:
    mov ax,4c00h
    int 21h
    Go: