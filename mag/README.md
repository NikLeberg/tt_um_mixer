# Magic Setup

## Reference
https://tinytapeout.com/specs/analog/#draw-the-rest-of-the-owl

## Toplevel
1. Fetch https://github.com/TinyTapeout/tt-support-tools/blob/main/tech/ihp-sg13g2/def/tt_block_1x1_pgvdd.def.
2. Fetch https://github.com/TinyTapeout/tt-support-tools/blob/main/tech/ihp-sg13g2/def/analog/magic_init_project.tcl
3. Edit tcl script and change `box $x 5um $x 308um` to `box $x 5um $x 154um` in function `draw_power_stripe`.
    - This fixes a too _high_ power stripe. Script was originally built for bigger analog designs.
4. Open magic and source the tcl script: `source tcl/init_project.tcl`.
    - This generates the pin boxes as well as the power stripes.

## IP

### Schmitt Trigger (st)
1. Export netlist of parameterized st from `../xschem/strig.sch` with xschem.
2. ~~Adapt WNx and WPx parameters of generated netlist to get desired thresholds.~~
3. ~~Open Magic VSLI and do _File_ > _Import SPICE_.~~
4. Instantiate the required _devices_ directly:
    - _Devices_ > _{n/p}mos (MOSFET)_.
    - Change the default parameters as required.
    - E.g. for the stacked MOSFETS we set _Fingers_ = 2, disable _Add bottom gate contact_, enable _Connect gates together_, enable _Add guard ring_ but disable _Add bottom guard ring contact_.
5. Make the required further edits to the cell instances.
6. Flatten the currently loaded cell with `flatten <new cell name>` and then check it with `load <new cell name>`. This enables us to keep the changes to the PDK cells locally without changing the global cells.
7. Draw the rest of the owl!

| Variant | Wx1 & Wx2 [um] | Wx3 [um] | Vhl [V] | Vlh [V] |
|---------|----------------|----------|---------|---------|
| st_1v1  | 0.6            | 0.6      | ~0.77   | ~0.43   |
| st_2v1  | 1.2            | 0.6      | ~0.72   | ~0.47   |
| st_4v1  | 2.4            | 0.6      | ~0.66   | ~0.52   |

### Resistor Ladder 8-bit DAC (r2r)
Heavily inspired by: https://github.com/htfab/ttihp0p3-r2r-dac

Interesting idea: make it use a common centroid for process matching and improved accuracy https://www.ee.columbia.edu/~kinget/EE6350_S23/Group07Website/ic_layout.html

## PEX
1. Open design with Magic VSLI.
2. Run these commands in the console:`.
3. Setup ext2spice:
    ```
    extract all
    extresist all
    ext2spice hierarchy on
    ext2spice extresist on
    ext2spice scale off
    ext2spice lvs on
    ext2spice cthresh 0
    ext2spice rthresh 0
    ```
4. Then finally generate the netlist with `ext2spice`.
5. The generated netlist will have its port order shuffled. A manual post-processing is required to make them identical to the xschem schema.
6. ~~Note: The extracted MOSFET W/L values seem to be off by a factor of 2. Also the caps will likely be wrong as well?~~
    - I guess the issue was that the PDK wasn't sourced correctly? A container rebuild + running `iic-pdk ihp-sg13g2` first fixed it.
