# SPDX-License-Identifier: Apache-2.0

set TOP_LEVEL_CELL tt_um_nikleberg_mixer

# Save the layout and export GDS
# ------------------------------
save ${TOP_LEVEL_CELL}.mag
file mkdir ../gds
gds write ../gds/${TOP_LEVEL_CELL}.gds
