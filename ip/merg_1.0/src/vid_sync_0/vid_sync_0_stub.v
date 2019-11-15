// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 27 13:06:41 2018
// Host        : DESKTOP-128QUVQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/XUP/v2_1/PYNQ-master/boards/Pynq-Z1/base/ip_repo/merg_1.0/src/vid_sync_0/vid_sync_0_stub.v
// Design      : vid_sync_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "vid_sync,Vivado 2017.4" *)
module vid_sync_0(ap_clk, ap_rst_n, stream_in_a_24_TVALID, 
  stream_in_a_24_TREADY, stream_in_a_24_TDATA, stream_in_a_24_TLAST, 
  stream_in_a_24_TUSER, stream_in_b_24_TVALID, stream_in_b_24_TREADY, 
  stream_in_b_24_TDATA, stream_in_b_24_TLAST, stream_in_b_24_TUSER, 
  stream_out_a_24_TVALID, stream_out_a_24_TREADY, stream_out_a_24_TDATA, 
  stream_out_a_24_TLAST, stream_out_a_24_TUSER, stream_out_b_24_TVALID, 
  stream_out_b_24_TREADY, stream_out_b_24_TDATA, stream_out_b_24_TLAST, 
  stream_out_b_24_TUSER)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,stream_in_a_24_TVALID,stream_in_a_24_TREADY,stream_in_a_24_TDATA[23:0],stream_in_a_24_TLAST[0:0],stream_in_a_24_TUSER[0:0],stream_in_b_24_TVALID,stream_in_b_24_TREADY,stream_in_b_24_TDATA[23:0],stream_in_b_24_TLAST[0:0],stream_in_b_24_TUSER[0:0],stream_out_a_24_TVALID,stream_out_a_24_TREADY,stream_out_a_24_TDATA[23:0],stream_out_a_24_TLAST[0:0],stream_out_a_24_TUSER[0:0],stream_out_b_24_TVALID,stream_out_b_24_TREADY,stream_out_b_24_TDATA[23:0],stream_out_b_24_TLAST[0:0],stream_out_b_24_TUSER[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input stream_in_a_24_TVALID;
  output stream_in_a_24_TREADY;
  input [23:0]stream_in_a_24_TDATA;
  input [0:0]stream_in_a_24_TLAST;
  input [0:0]stream_in_a_24_TUSER;
  input stream_in_b_24_TVALID;
  output stream_in_b_24_TREADY;
  input [23:0]stream_in_b_24_TDATA;
  input [0:0]stream_in_b_24_TLAST;
  input [0:0]stream_in_b_24_TUSER;
  output stream_out_a_24_TVALID;
  input stream_out_a_24_TREADY;
  output [23:0]stream_out_a_24_TDATA;
  output [0:0]stream_out_a_24_TLAST;
  output [0:0]stream_out_a_24_TUSER;
  output stream_out_b_24_TVALID;
  input stream_out_b_24_TREADY;
  output [23:0]stream_out_b_24_TDATA;
  output [0:0]stream_out_b_24_TLAST;
  output [0:0]stream_out_b_24_TUSER;
endmodule
