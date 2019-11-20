################################################################
# Brigham Young University Video Filtering Base Design
# 
# build_static_design.tcl
# Version 1.0
# Last Modified: February 24, 2017
################################################################

source ./part_gen.tcl
gen_mux gscreen
gen_filter image
gen_filter sobel
gen_filter ascii

open_checkpoint ./Static/top.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_0/U0/HLS_PR Synth/image.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_1/U0/HLS_PR Synth/sobel.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_2/U0/HLS_PR Synth/sobel.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_3/U0/HLS_PR Synth/sobel.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_4/U0/HLS_PR Synth/ascii.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_5/U0/HLS_PR Synth/ascii.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_6/U0/HLS_PR Synth/ascii.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_7/U0/HLS_PR Synth/ascii.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_8/U0/HLS_PR Synth/ascii.dcp
read_checkpoint -cell system_i/video/HLS_PR_WRAPPER_9/U0/HLS_PR Synth/ascii.dcp

read_checkpoint -cell system_i/video/HLS_Merger_0/U0/PR_BLACK_BOX Synth/gscreen.dcp

set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_0/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_1/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_2/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_3/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_4/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_5/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_6/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_7/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_8/U0/HLS_PR]
set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_PR_WRAPPER_9/U0/HLS_PR]

set_property HD.RECONFIGURABLE 1 [get_cells system_i/video/HLS_Merger_0/U0/PR_BLACK_BOX]

write_checkpoint -force ./Checkpoint/pr_block_design.dcp

create_pblock L0
resize_pblock L0 -add {SLICE_X28Y100:SLICE_X55Y149 DSP48_X2Y40:DSP48_X2Y59 RAMB18_X2Y40:RAMB18_X3Y59 RAMB36_X2Y20:RAMB36_X3Y29} 
add_cells_to_pblock L0 [get_cells [list system_i/video/HLS_PR_WRAPPER_0/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks L0]
set_property SNAPPING_MODE ON [get_pblocks L0]

create_pblock M0
resize_pblock M0 -add {SLICE_X98Y0:SLICE_X113Y49 DSP48_X4Y0:DSP48_X4Y19 RAMB18_X5Y0:RAMB18_X5Y19 RAMB36_X5Y0:RAMB36_X5Y9}
add_cells_to_pblock M0 [get_cells [list system_i/video/HLS_PR_WRAPPER_1/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks M0]
set_property SNAPPING_MODE ON [get_pblocks M0]

create_pblock M1
resize_pblock M1 -add {SLICE_X82Y0:SLICE_X97Y49 DSP48_X3Y0:DSP48_X3Y19 RAMB18_X4Y0:RAMB18_X4Y19 RAMB36_X4Y0:RAMB36_X4Y9}
add_cells_to_pblock M1 [get_cells [list system_i/video/HLS_PR_WRAPPER_2/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks M1]
set_property SNAPPING_MODE ON [get_pblocks M1]

create_pblock M2
resize_pblock M2 -add {SLICE_X12Y0:SLICE_X27Y49 DSP48_X1Y0:DSP48_X1Y19 RAMB18_X1Y0:RAMB18_X1Y19 RAMB36_X1Y0:RAMB36_X1Y9}
add_cells_to_pblock M2 [get_cells [list system_i/video/HLS_PR_WRAPPER_3/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks M2]
set_property SNAPPING_MODE ON [get_pblocks M2]

create_pblock S0
resize_pblock S0 -add {SLICE_X0Y0:SLICE_X11Y49 DSP48_X0Y0:DSP48_X0Y19 RAMB18_X0Y0:RAMB18_X0Y19 RAMB36_X0Y0:RAMB36_X0Y9}
add_cells_to_pblock S0 [get_cells [list system_i/video/HLS_PR_WRAPPER_4/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks S0]
set_property SNAPPING_MODE ON [get_pblocks S0]

create_pblock S1
resize_pblock S1 -add {SLICE_X28Y50:SLICE_X39Y99 DSP48_X2Y20:DSP48_X2Y39 RAMB18_X2Y20:RAMB18_X2Y39 RAMB36_X2Y10:RAMB36_X2Y19}
add_cells_to_pblock S1 [get_cells [list system_i/video/HLS_PR_WRAPPER_5/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks S1]
set_property SNAPPING_MODE ON [get_pblocks S1]

create_pblock S2
resize_pblock S2 -add {SLICE_X82Y100:SLICE_X93Y149 DSP48_X3Y40:DSP48_X3Y59 RAMB18_X4Y40:RAMB18_X4Y59 RAMB36_X4Y20:RAMB36_X4Y29}
add_cells_to_pblock S2 [get_cells [list system_i/video/HLS_PR_WRAPPER_6/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks S2]
set_property SNAPPING_MODE ON [get_pblocks S2]

create_pblock S3
resize_pblock S3 -add {SLICE_X94Y100:SLICE_X105Y149 DSP48_X4Y40:DSP48_X4Y59 RAMB18_X5Y40:RAMB18_X5Y59 RAMB36_X5Y20:RAMB36_X5Y29}
add_cells_to_pblock S3 [get_cells [list system_i/video/HLS_PR_WRAPPER_7/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks S3]
set_property SNAPPING_MODE ON [get_pblocks S3]

create_pblock S4
resize_pblock S4 -add {SLICE_X82Y50:SLICE_X93Y99 DSP48_X3Y20:DSP48_X3Y39 RAMB18_X4Y20:RAMB18_X4Y39 RAMB36_X4Y10:RAMB36_X4Y19}
add_cells_to_pblock S4 [get_cells [list system_i/video/HLS_PR_WRAPPER_8/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks S4]
set_property SNAPPING_MODE ON [get_pblocks S4]

create_pblock S5
resize_pblock S5 -add {SLICE_X94Y50:SLICE_X105Y99 DSP48_X4Y20:DSP48_X4Y39 RAMB18_X5Y20:RAMB18_X5Y39 RAMB36_X5Y10:RAMB36_X5Y19}
add_cells_to_pblock S5 [get_cells [list system_i/video/HLS_PR_WRAPPER_9/U0/HLS_PR]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks S5]
set_property SNAPPING_MODE ON [get_pblocks S5]

create_pblock MUX
resize_pblock MUX  -add SLICE_X74Y0:SLICE_X81Y49
add_cells_to_pblock MUX [get_cells [list system_i/video/HLS_Merger_0/U0/PR_BLACK_BOX]] -clear_locs
set_property RESET_AFTER_RECONFIG true [get_pblocks MUX]
set_property SNAPPING_MODE ON [get_pblocks MUX]

read_xdc Const/top.xdc
read_xdc Const/1080p.xdc

opt_design
place_design
#phys_opt_design 
route_design 
# -directive Explore -tns_cleanup
phys_opt_design -directive AggressiveExplore

write_checkpoint -force Implement/pass_route_design.dcp
report_utilization -file Implement/pass_utilization.rpt
report_power -file Implement/pass_power.rpt

write_bitstream -file Bitstreams/video.bit -force

update_design -cells system_i/video/HLS_PR_WRAPPER_0/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_1/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_2/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_3/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_4/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_5/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_6/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_7/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_8/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_PR_WRAPPER_9/U0/HLS_PR -black_box
update_design -cells system_i/video/HLS_Merger_0/U0/PR_BLACK_BOX -black_box
lock_design -level routing

report_utilization -file Implement/static_utilization.rpt
report_power -file Implement/static_power.rpt


write_checkpoint -force Checkpoint/static_route_design.dcp
close_project