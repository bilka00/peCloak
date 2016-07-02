use32
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    mov eax, {{ decode_start }}
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    decode:
    {{ peCloak.add_fill_instructions(trash_max_count) }}
{{ Decoder }}
    inc eax
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    cmp eax, {{ decode_end }}
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    jle decode
    {{ peCloak.add_fill_instructions(trash_max_count) }}