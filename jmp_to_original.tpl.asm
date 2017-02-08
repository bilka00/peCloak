use32
    ;mov eax, {{ go }}
    ;jmp eax
    pshufw mm1, mm2, 10
    emms
    mov ah, 46
    sahf
    je Exit
    ;;;;;
    mov eax,11b
	xor edx,edx
	mov gs,ax
    @@:
	    mov dx,gs
	    shr edx,1
	jc @b

	mov gs,ax
	mov ax,gs
	lea eax,[eax + edx + ( {{ go }} - 11b)]
	jmp eax
    Exit:
    mov ax,4c00h
    int 21h
    ;push 0
    ;call dword [imports["ExitProcess"]]

    ;mov     dx, cs
    ;mov     ax, gs
    ;arpl    dx, ax
    ;jnz     Exit