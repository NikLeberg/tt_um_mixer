#!/usr/bin/env python3
"""PWL stimulus for the 8-bit R-2R ladder: triangle sweep 0 -> 255 -> 0."""

NBITS = 8
VDD   = 1.2
TSTEP = 7.8125e-6      # time per code
TEDGE = 1e-9           # bit transition time (must be << TSTEP)

codes = (list(range(256)) + list(range(254, -1, -1)))
TEND  = len(codes) * TSTEP


def pwl_points(bit):
    prev = (codes[0] >> bit) & 1
    pts = [(0.0, prev)]
    for k, c in enumerate(codes[1:], start=1):
        cur = (c >> bit) & 1
        if cur != prev:
            t = k * TSTEP
            pts.append((t, prev))            # hold old value up to the edge
            pts.append((t + TEDGE, cur))     # then ramp to the new one
            prev = cur
    pts.append((TEND, prev))
    return pts


with open("simulations/8bit_triangle.spice", "w") as f:
    f.write(f"* triangle 0..255..0, {len(codes)} codes, tend = {TEND*1e3:.4f} ms\n")
    for bit in range(NBITS):
        body = " ".join(f"{t:.10g} {v*VDD:g}" for t, v in pwl_points(bit))
        f.write(f"Vb{bit} Vb{bit} 0 pwl({body})\n")

print(f"tend = {TEND*1e3:.4f} ms  ({len(codes)} codes)")
