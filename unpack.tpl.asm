use32
    mov eax, {{ decode_start }}
    decode:
{{ Decoder }}
    inc eax
    cmp eax, {{ decode_end }}
    jle decode