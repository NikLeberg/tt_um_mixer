<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Various inverting schmitt triggers with different thresholds are attached to an internal DAC. The voltage produced by the DAC can be controlled with the digital inputs `ui_in[7:0]`. Each schmitt trigger then presents its state on the corresponding `uo_out[7:0]` pin.

Additional free standing inverting schmitt triggers are available on the bidirectional pins. With these and external RC components simple oscillators can be built.

## How it came to be

Thanks to swiss chips sponsoring I was able to participate in the previous IHP26a run with a 8-bit floating point multiplier. There I took everything the OSS tools offer to us to squeeze a near perfect design out of very imperfect and _lazy_ HDL code. Great.

But now for this second IHP16b TT run I needed to go a level deeper: To the physical world. No nice zeros and ones but only the raw [_analoginess_](https://youtu.be/Eu_crbcBdNM?si=nth6YxzOZvTxItNz&t=135) of CMOS technology.

The initial idea was to _again_ build a multiplier. But it would multiply in the physical world! I.e. produce some voltages that by nature get multiplied together and then converted back to digital. Easy! No not so much. Just the amount of stuff necessary to make that last bit, the ADC work, is too much. Sure, [others](https://github.com/psychogenic/tt06-analog-wowa) [made](https://github.com/wulffern/tt06-sar) [some](https://github.com/htfab/flash-adc). But I'm chronically late and the design is due in a month.

So what else can we do? Analog tiles are not available for this run. But nothing prohibits us from using analog stuff inside a digital facade. So we have a digitally controlled voltage, well a DAC, which then feeds into multiple schmitt triggers each with different threshold. That way we can sort of _gauge_ the voltage that was produced internally.

The project name _Mixer_ simply stands for _mixed-signal_ and has nothing to do with the classic dual-gate MOSFET RF mixer circuit.

## The inner workings

TBD

## How to test

### Voltage-controlled Schmitt triggers

Set the internal DAC voltage via the bits `DAC[7:0]` (`ui_in[7:0]`). A value of `0b00000000` corresponds to _0 V_, whereas `0b11111111` corresponds to _1.2 V_. The current state (on or off) of each Schmitt trigger is visible in the `trigger*` bits of `uo_out[3:0]`.

Play around and try to find the on and off threshold voltages of the four Schmitt trigger variants. One approach is to start at _0 V_, sweep slowly up to _1.2 V_, and then back down to _0 V_, noting the changes of the `trigger*` bits at each step. At first, all bits should be on (because the Schmitt triggers are inverting). Then the variants 8v1, 4v1, 2v1, and finally 1v1 should turn off, in that order. On the way down, they should turn back on in the same order: 8v1 first, 1v1 last.

**Note:** Because the DAC is built from a resistor ladder, the internally produced voltage is very sensitive to the relative timing of the individual `DAC[7:0]` bits, especially the MSBs. Take great care to change all bits to the new value at the same time. If, for example, the MSB changes first and the LSBs only later, the internal voltage immediately jumps to an unintended value and only afterwards settles at the desired one. This can cause all Schmitt triggers to, well, trigger, even though their threshold voltage was never actually reached.

Expected thresholds according to the simulation models:

|     | Voff | Von  |
|-----|------|------|
| 1v1 | 0.77 | 0.43 |
| 2v1 | 0.72 | 0.47 |
| 4v1 | 0.67 | 0.51 |
| 8v1 | 0.62 | 0.53 |

### Free-standing Schmitt triggers

Three additional free-standing Schmitt triggers are available on the bidirectional pins. Use the `ST*_IN` pins as inputs and the `ST*_OUT` pins as outputs. I don't expect the internal pin mux of the TT harness to pass analog voltages to these pins, but if it does, these Schmitt triggers can be characterized very easily through it. Alternatively, a simple oscillator can be built with a few external components: connect _OUT_ to _IN_ through a resistor of a few kΩ and tie _IN_ to GND through a capacitor of a few µF.