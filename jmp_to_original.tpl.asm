use32
    ;mov eax, {{ go }}
    ;jmp eax
    pshufw mm1, mm2, 10
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    emms
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    mov ah, 46
    sahf
    je Exit
    ;;;;;
    mov eax,11b
	xor edx,edx
	{{ peCloak.add_fill_instructions(trash_max_count) }}
	mov gs,ax
    @@:
	    mov dx,gs
	    shr edx,1
	jc @b

	mov gs,ax
	mov ax,gs

	lea eax,[eax + edx + ( {{ go }} - 11b)]
	{{ peCloak.add_fill_instructions(trash_max_count) }}
	jmp eax
    Exit:
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    mov ax,4c00h
    int 21h
    ;push 0
    ;call dword [imports["ExitProcess"]]

    ;mov     dx, cs
    ;mov     ax, gs
    ;arpl    dx, ax
    ;jnz     Exit