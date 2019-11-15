############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS
set_top mux_operator
add_files pr.cpp
add_files pr.h
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 6 -name default
config_rtl -encoding onehot -reset control -reset_level low
csynth_design
exit
