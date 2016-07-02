use32
    XOR {{rand_reg}},{{rand_reg}}
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    heuristic_loop:
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    INC {{rand_reg}}
    {{ peCloak.add_fill_instructions(trash_max_count) }}
    CMP {{rand_reg}}, {{loop_limit}}
    JNZ heuristic_loop