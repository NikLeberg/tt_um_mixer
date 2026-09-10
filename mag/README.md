# Magic Setup

## Reference
https://tinytapeout.com/specs/analog/#draw-the-rest-of-the-owl

## Steps
1. Fetch https://github.com/TinyTapeout/tt-support-tools/blob/main/tech/ihp-sg13g2/def/tt_block_1x1_pgvdd.def.
2. Fetch https://github.com/TinyTapeout/tt-support-tools/blob/main/tech/ihp-sg13g2/def/analog/magic_init_project.tcl
3. Edit tcl script and change `box $x 5um $x 308um` to `box $x 5um $x 154um` in function `draw_power_stripe`.
    - This fixes a too _high_ power stripe. Script was originally built for bigger analog designs.
4. Open magic and source the tcl script.
    - This generates the pin boxes as well as the power stipes.
