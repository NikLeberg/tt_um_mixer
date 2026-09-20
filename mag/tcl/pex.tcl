# SPDX-License-Identifier: Apache-2.0

# Run full R and C parasitic extraction on current design
# -------------------------------------------------------
extract all
extresist all
ext2spice hierarchy on
ext2spice extresist on
ext2spice scale off
ext2spice lvs on
ext2spice cthresh 0
ext2spice rthresh 0
ext2spice
