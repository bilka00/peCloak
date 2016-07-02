use32
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    mov eax, {{ decode_start }}
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    decode:
{{ Decoder }}
    inc eax
    cmp eax, {{ decode_end }}
    jle decode
    {{ peCloak.add_fill_instructions(trash_max_count) }}