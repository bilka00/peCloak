use32
    XOR {{rand_reg}},{{rand_reg}}
    heuristic_loop:
    INC {{rand_reg}}
    CMP {{rand_reg}}, {{loop_limit}}
    JNZ heuristic_loop