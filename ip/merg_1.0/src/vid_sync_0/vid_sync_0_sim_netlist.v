// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Mar 27 13:06:41 2018
// Host        : DESKTOP-128QUVQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/XUP/v2_1/PYNQ-master/boards/Pynq-Z1/base/ip_repo/merg_1.0/src/vid_sync_0/vid_sync_0_sim_netlist.v
// Design      : vid_sync_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vid_sync_0,vid_sync,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "vid_sync,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module vid_sync_0
   (ap_clk,
    ap_rst_n,
    stream_in_a_24_TVALID,
    stream_in_a_24_TREADY,
    stream_in_a_24_TDATA,
    stream_in_a_24_TLAST,
    stream_in_a_24_TUSER,
    stream_in_b_24_TVALID,
    stream_in_b_24_TREADY,
    stream_in_b_24_TDATA,
    stream_in_b_24_TLAST,
    stream_in_b_24_TUSER,
    stream_out_a_24_TVALID,
    stream_out_a_24_TREADY,
    stream_out_a_24_TDATA,
    stream_out_a_24_TLAST,
    stream_out_a_24_TUSER,
    stream_out_b_24_TVALID,
    stream_out_b_24_TREADY,
    stream_out_b_24_TDATA,
    stream_out_b_24_TLAST,
    stream_out_b_24_TUSER);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_in_a_24:stream_in_b_24:stream_out_a_24:stream_out_b_24, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_a_24 TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME stream_in_a_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *) input stream_in_a_24_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_a_24 TREADY" *) output stream_in_a_24_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_a_24 TDATA" *) input [23:0]stream_in_a_24_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_a_24 TLAST" *) input [0:0]stream_in_a_24_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_a_24 TUSER" *) input [0:0]stream_in_a_24_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_b_24 TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME stream_in_b_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *) input stream_in_b_24_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_b_24 TREADY" *) output stream_in_b_24_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_b_24 TDATA" *) input [23:0]stream_in_b_24_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_b_24 TLAST" *) input [0:0]stream_in_b_24_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_in_b_24 TUSER" *) input [0:0]stream_in_b_24_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_a_24 TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME stream_out_a_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *) output stream_out_a_24_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_a_24 TREADY" *) input stream_out_a_24_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_a_24 TDATA" *) output [23:0]stream_out_a_24_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_a_24 TLAST" *) output [0:0]stream_out_a_24_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_a_24 TUSER" *) output [0:0]stream_out_a_24_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_b_24 TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME stream_out_b_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000" *) output stream_out_b_24_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_b_24 TREADY" *) input stream_out_b_24_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_b_24 TDATA" *) output [23:0]stream_out_b_24_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_b_24 TLAST" *) output [0:0]stream_out_b_24_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 stream_out_b_24 TUSER" *) output [0:0]stream_out_b_24_TUSER;

  wire ap_clk;
  wire ap_rst_n;
  wire [23:0]stream_in_a_24_TDATA;
  wire [0:0]stream_in_a_24_TLAST;
  wire stream_in_a_24_TREADY;
  wire [0:0]stream_in_a_24_TUSER;
  wire stream_in_a_24_TVALID;
  wire [23:0]stream_in_b_24_TDATA;
  wire [0:0]stream_in_b_24_TLAST;
  wire stream_in_b_24_TREADY;
  wire [0:0]stream_in_b_24_TUSER;
  wire stream_in_b_24_TVALID;
  wire [23:0]stream_out_a_24_TDATA;
  wire [0:0]stream_out_a_24_TLAST;
  wire stream_out_a_24_TREADY;
  wire [0:0]stream_out_a_24_TUSER;
  wire stream_out_a_24_TVALID;
  wire [23:0]stream_out_b_24_TDATA;
  wire [0:0]stream_out_b_24_TLAST;
  wire stream_out_b_24_TREADY;
  wire [0:0]stream_out_b_24_TUSER;
  wire stream_out_b_24_TVALID;

  vid_sync_0_vid_sync U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .stream_in_a_24_TDATA(stream_in_a_24_TDATA),
        .stream_in_a_24_TLAST(stream_in_a_24_TLAST),
        .stream_in_a_24_TREADY(stream_in_a_24_TREADY),
        .stream_in_a_24_TUSER(stream_in_a_24_TUSER),
        .stream_in_a_24_TVALID(stream_in_a_24_TVALID),
        .stream_in_b_24_TDATA(stream_in_b_24_TDATA),
        .stream_in_b_24_TLAST(stream_in_b_24_TLAST),
        .stream_in_b_24_TREADY(stream_in_b_24_TREADY),
        .stream_in_b_24_TUSER(stream_in_b_24_TUSER),
        .stream_in_b_24_TVALID(stream_in_b_24_TVALID),
        .stream_out_a_24_TDATA(stream_out_a_24_TDATA),
        .stream_out_a_24_TLAST(stream_out_a_24_TLAST),
        .stream_out_a_24_TREADY(stream_out_a_24_TREADY),
        .stream_out_a_24_TUSER(stream_out_a_24_TUSER),
        .stream_out_a_24_TVALID(stream_out_a_24_TVALID),
        .stream_out_b_24_TDATA(stream_out_b_24_TDATA),
        .stream_out_b_24_TLAST(stream_out_b_24_TLAST),
        .stream_out_b_24_TREADY(stream_out_b_24_TREADY),
        .stream_out_b_24_TUSER(stream_out_b_24_TUSER),
        .stream_out_b_24_TVALID(stream_out_b_24_TVALID));
endmodule

(* ORIG_REF_NAME = "vid_sync" *) 
module vid_sync_0_vid_sync
   (ap_clk,
    ap_rst_n,
    stream_in_a_24_TDATA,
    stream_in_a_24_TVALID,
    stream_in_a_24_TREADY,
    stream_in_a_24_TUSER,
    stream_in_a_24_TLAST,
    stream_in_b_24_TDATA,
    stream_in_b_24_TVALID,
    stream_in_b_24_TREADY,
    stream_in_b_24_TUSER,
    stream_in_b_24_TLAST,
    stream_out_a_24_TDATA,
    stream_out_a_24_TVALID,
    stream_out_a_24_TREADY,
    stream_out_a_24_TUSER,
    stream_out_a_24_TLAST,
    stream_out_b_24_TDATA,
    stream_out_b_24_TVALID,
    stream_out_b_24_TREADY,
    stream_out_b_24_TUSER,
    stream_out_b_24_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [23:0]stream_in_a_24_TDATA;
  input stream_in_a_24_TVALID;
  output stream_in_a_24_TREADY;
  input [0:0]stream_in_a_24_TUSER;
  input [0:0]stream_in_a_24_TLAST;
  input [23:0]stream_in_b_24_TDATA;
  input stream_in_b_24_TVALID;
  output stream_in_b_24_TREADY;
  input [0:0]stream_in_b_24_TUSER;
  input [0:0]stream_in_b_24_TLAST;
  output [23:0]stream_out_a_24_TDATA;
  output stream_out_a_24_TVALID;
  input stream_out_a_24_TREADY;
  output [0:0]stream_out_a_24_TUSER;
  output [0:0]stream_out_a_24_TLAST;
  output [23:0]stream_out_b_24_TDATA;
  output stream_out_b_24_TVALID;
  input stream_out_b_24_TREADY;
  output [0:0]stream_out_b_24_TUSER;
  output [0:0]stream_out_b_24_TLAST;

  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [23:0]stream_in_a_24_TDATA;
  wire [0:0]stream_in_a_24_TLAST;
  wire stream_in_a_24_TREADY;
  wire [0:0]stream_in_a_24_TUSER;
  wire stream_in_a_24_TVALID;
  wire stream_in_a_24_data_V_0_ack_in;
  wire [23:0]stream_in_a_24_data_V_0_data_out;
  wire stream_in_a_24_data_V_0_load_A;
  wire stream_in_a_24_data_V_0_load_B;
  wire [23:0]stream_in_a_24_data_V_0_payload_A;
  wire [23:0]stream_in_a_24_data_V_0_payload_B;
  wire stream_in_a_24_data_V_0_sel;
  wire stream_in_a_24_data_V_0_sel_rd_i_1_n_0;
  wire stream_in_a_24_data_V_0_sel_wr;
  wire stream_in_a_24_data_V_0_sel_wr_i_1_n_0;
  wire [1:1]stream_in_a_24_data_V_0_state;
  wire \stream_in_a_24_data_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_a_24_data_V_0_state_reg_n_0_[0] ;
  wire stream_in_a_24_last_V_0_data_out;
  wire stream_in_a_24_last_V_0_payload_A;
  wire \stream_in_a_24_last_V_0_payload_A[0]_i_1_n_0 ;
  wire stream_in_a_24_last_V_0_payload_B;
  wire \stream_in_a_24_last_V_0_payload_B[0]_i_1_n_0 ;
  wire stream_in_a_24_last_V_0_sel;
  wire stream_in_a_24_last_V_0_sel_rd_i_1_n_0;
  wire stream_in_a_24_last_V_0_sel_wr;
  wire stream_in_a_24_last_V_0_sel_wr_i_1_n_0;
  wire [1:1]stream_in_a_24_last_V_0_state;
  wire \stream_in_a_24_last_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_a_24_last_V_0_state[1]_i_3_n_0 ;
  wire \stream_in_a_24_last_V_0_state[1]_i_4_n_0 ;
  wire \stream_in_a_24_last_V_0_state_reg_n_0_[0] ;
  wire stream_in_a_24_user_V_0_ack_in;
  wire stream_in_a_24_user_V_0_data_out;
  wire stream_in_a_24_user_V_0_payload_A;
  wire \stream_in_a_24_user_V_0_payload_A[0]_i_1_n_0 ;
  wire stream_in_a_24_user_V_0_payload_B;
  wire \stream_in_a_24_user_V_0_payload_B[0]_i_1_n_0 ;
  wire stream_in_a_24_user_V_0_sel;
  wire stream_in_a_24_user_V_0_sel_rd_i_1_n_0;
  wire stream_in_a_24_user_V_0_sel_wr;
  wire stream_in_a_24_user_V_0_sel_wr_i_1_n_0;
  wire [1:1]stream_in_a_24_user_V_0_state;
  wire \stream_in_a_24_user_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_a_24_user_V_0_state_reg_n_0_[0] ;
  wire [23:0]stream_in_b_24_TDATA;
  wire stream_in_b_24_TREADY;
  wire stream_in_b_24_TVALID;
  wire stream_in_b_24_data_V_0_ack_in;
  wire stream_in_b_24_data_V_0_load_A;
  wire stream_in_b_24_data_V_0_load_B;
  wire [23:0]stream_in_b_24_data_V_0_payload_A;
  wire [23:0]stream_in_b_24_data_V_0_payload_B;
  wire stream_in_b_24_data_V_0_sel;
  wire stream_in_b_24_data_V_0_sel_rd_i_1_n_0;
  wire stream_in_b_24_data_V_0_sel_wr;
  wire stream_in_b_24_data_V_0_sel_wr_i_1_n_0;
  wire [1:1]stream_in_b_24_data_V_0_state;
  wire \stream_in_b_24_data_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_b_24_data_V_0_state_reg_n_0_[0] ;
  wire [1:1]stream_in_b_24_last_V_0_state;
  wire \stream_in_b_24_last_V_0_state[0]_i_1_n_0 ;
  wire \stream_in_b_24_last_V_0_state_reg_n_0_[0] ;
  wire [23:0]stream_out_a_24_TDATA;
  wire [0:0]stream_out_a_24_TLAST;
  wire stream_out_a_24_TREADY;
  wire [0:0]stream_out_a_24_TUSER;
  wire stream_out_a_24_TVALID;
  wire stream_out_a_24_data_V_1_ack_in;
  wire stream_out_a_24_data_V_1_load_A;
  wire stream_out_a_24_data_V_1_load_B;
  wire [23:0]stream_out_a_24_data_V_1_payload_A;
  wire [23:0]stream_out_a_24_data_V_1_payload_B;
  wire stream_out_a_24_data_V_1_sel;
  wire stream_out_a_24_data_V_1_sel_rd_i_1_n_0;
  wire stream_out_a_24_data_V_1_sel_wr;
  wire stream_out_a_24_data_V_1_sel_wr034_out;
  wire stream_out_a_24_data_V_1_sel_wr_i_1_n_0;
  wire \stream_out_a_24_data_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_a_24_data_V_1_state[1]_i_1_n_0 ;
  wire \stream_out_a_24_data_V_1_state_reg_n_0_[0] ;
  wire stream_out_a_24_last_V_1_ack_in;
  wire stream_out_a_24_last_V_1_payload_A;
  wire \stream_out_a_24_last_V_1_payload_A[0]_i_1_n_0 ;
  wire stream_out_a_24_last_V_1_payload_B;
  wire \stream_out_a_24_last_V_1_payload_B[0]_i_1_n_0 ;
  wire stream_out_a_24_last_V_1_sel;
  wire stream_out_a_24_last_V_1_sel_rd_i_1_n_0;
  wire stream_out_a_24_last_V_1_sel_wr;
  wire stream_out_a_24_last_V_1_sel_wr_i_1_n_0;
  wire \stream_out_a_24_last_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_a_24_last_V_1_state[0]_i_2_n_0 ;
  wire \stream_out_a_24_last_V_1_state[1]_i_1_n_0 ;
  wire stream_out_a_24_user_V_1_ack_in;
  wire stream_out_a_24_user_V_1_payload_A;
  wire \stream_out_a_24_user_V_1_payload_A[0]_i_1_n_0 ;
  wire stream_out_a_24_user_V_1_payload_B;
  wire \stream_out_a_24_user_V_1_payload_B[0]_i_1_n_0 ;
  wire stream_out_a_24_user_V_1_sel;
  wire stream_out_a_24_user_V_1_sel_rd_i_1_n_0;
  wire stream_out_a_24_user_V_1_sel_wr;
  wire stream_out_a_24_user_V_1_sel_wr_i_1_n_0;
  wire \stream_out_a_24_user_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_a_24_user_V_1_state[1]_i_1_n_0 ;
  wire \stream_out_a_24_user_V_1_state_reg_n_0_[0] ;
  wire [23:0]stream_out_b_24_TDATA;
  wire [0:0]stream_out_b_24_TLAST;
  wire stream_out_b_24_TREADY;
  wire [0:0]stream_out_b_24_TUSER;
  wire stream_out_b_24_TVALID;
  wire stream_out_b_24_data_V_1_ack_in;
  wire stream_out_b_24_data_V_1_load_A;
  wire stream_out_b_24_data_V_1_load_B;
  wire [23:0]stream_out_b_24_data_V_1_payload_A;
  wire [23:0]stream_out_b_24_data_V_1_payload_B;
  wire stream_out_b_24_data_V_1_sel;
  wire stream_out_b_24_data_V_1_sel_rd_i_1_n_0;
  wire stream_out_b_24_data_V_1_sel_wr;
  wire stream_out_b_24_data_V_1_sel_wr_i_1_n_0;
  wire \stream_out_b_24_data_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_b_24_data_V_1_state[1]_i_1_n_0 ;
  wire \stream_out_b_24_data_V_1_state_reg_n_0_[0] ;
  wire stream_out_b_24_last_V_1_ack_in;
  wire stream_out_b_24_last_V_1_payload_A;
  wire \stream_out_b_24_last_V_1_payload_A[0]_i_1_n_0 ;
  wire stream_out_b_24_last_V_1_payload_B;
  wire \stream_out_b_24_last_V_1_payload_B[0]_i_1_n_0 ;
  wire stream_out_b_24_last_V_1_sel;
  wire stream_out_b_24_last_V_1_sel_rd_i_1_n_0;
  wire stream_out_b_24_last_V_1_sel_wr;
  wire stream_out_b_24_last_V_1_sel_wr_i_1_n_0;
  wire \stream_out_b_24_last_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_b_24_last_V_1_state[1]_i_1_n_0 ;
  wire stream_out_b_24_user_V_1_ack_in;
  wire stream_out_b_24_user_V_1_payload_A;
  wire \stream_out_b_24_user_V_1_payload_A[0]_i_1_n_0 ;
  wire stream_out_b_24_user_V_1_payload_B;
  wire \stream_out_b_24_user_V_1_payload_B[0]_i_1_n_0 ;
  wire stream_out_b_24_user_V_1_sel;
  wire stream_out_b_24_user_V_1_sel_rd_i_1_n_0;
  wire stream_out_b_24_user_V_1_sel_wr;
  wire stream_out_b_24_user_V_1_sel_wr_i_1_n_0;
  wire \stream_out_b_24_user_V_1_state[0]_i_1_n_0 ;
  wire \stream_out_b_24_user_V_1_state[1]_i_1_n_0 ;
  wire \stream_out_b_24_user_V_1_state_reg_n_0_[0] ;
  wire [23:0]tmpa_V_1_fu_146_p3;
  wire [23:0]tmpd_V;
  wire vid_id;
  wire vid_id_assign_fu_140_p2;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I3(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_in_a_24_data_V_0_payload_A[23]_i_1 
       (.I0(\stream_in_a_24_data_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_a_24_data_V_0_ack_in),
        .I2(stream_in_a_24_data_V_0_sel_wr),
        .O(stream_in_a_24_data_V_0_load_A));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[0]),
        .Q(stream_in_a_24_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[10]),
        .Q(stream_in_a_24_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[11]),
        .Q(stream_in_a_24_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[12]),
        .Q(stream_in_a_24_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[13]),
        .Q(stream_in_a_24_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[14]),
        .Q(stream_in_a_24_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[15]),
        .Q(stream_in_a_24_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[16]),
        .Q(stream_in_a_24_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[17]),
        .Q(stream_in_a_24_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[18]),
        .Q(stream_in_a_24_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[19]),
        .Q(stream_in_a_24_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[1]),
        .Q(stream_in_a_24_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[20]),
        .Q(stream_in_a_24_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[21]),
        .Q(stream_in_a_24_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[22]),
        .Q(stream_in_a_24_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[23]),
        .Q(stream_in_a_24_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[2]),
        .Q(stream_in_a_24_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[3]),
        .Q(stream_in_a_24_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[4]),
        .Q(stream_in_a_24_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[5]),
        .Q(stream_in_a_24_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[6]),
        .Q(stream_in_a_24_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[7]),
        .Q(stream_in_a_24_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[8]),
        .Q(stream_in_a_24_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_A),
        .D(stream_in_a_24_TDATA[9]),
        .Q(stream_in_a_24_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \stream_in_a_24_data_V_0_payload_B[23]_i_1 
       (.I0(\stream_in_a_24_data_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_a_24_data_V_0_ack_in),
        .I2(stream_in_a_24_data_V_0_sel_wr),
        .O(stream_in_a_24_data_V_0_load_B));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[0]),
        .Q(stream_in_a_24_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[10]),
        .Q(stream_in_a_24_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[11]),
        .Q(stream_in_a_24_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[12]),
        .Q(stream_in_a_24_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[13]),
        .Q(stream_in_a_24_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[14]),
        .Q(stream_in_a_24_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[15]),
        .Q(stream_in_a_24_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[16]),
        .Q(stream_in_a_24_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[17]),
        .Q(stream_in_a_24_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[18]),
        .Q(stream_in_a_24_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[19]),
        .Q(stream_in_a_24_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[1]),
        .Q(stream_in_a_24_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[20]),
        .Q(stream_in_a_24_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[21]),
        .Q(stream_in_a_24_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[22]),
        .Q(stream_in_a_24_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[23]),
        .Q(stream_in_a_24_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[2]),
        .Q(stream_in_a_24_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[3]),
        .Q(stream_in_a_24_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[4]),
        .Q(stream_in_a_24_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[5]),
        .Q(stream_in_a_24_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[6]),
        .Q(stream_in_a_24_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[7]),
        .Q(stream_in_a_24_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[8]),
        .Q(stream_in_a_24_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \stream_in_a_24_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(stream_in_a_24_data_V_0_load_B),
        .D(stream_in_a_24_TDATA[9]),
        .Q(stream_in_a_24_data_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    stream_in_a_24_data_V_0_sel_rd_i_1
       (.I0(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(stream_in_a_24_data_V_0_sel),
        .O(stream_in_a_24_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_a_24_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_data_V_0_sel_rd_i_1_n_0),
        .Q(stream_in_a_24_data_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    stream_in_a_24_data_V_0_sel_wr_i_1
       (.I0(stream_in_a_24_data_V_0_ack_in),
        .I1(stream_in_a_24_TVALID),
        .I2(stream_in_a_24_data_V_0_sel_wr),
        .O(stream_in_a_24_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_a_24_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_data_V_0_sel_wr_i_1_n_0),
        .Q(stream_in_a_24_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF800D800F800F800)) 
    \stream_in_a_24_data_V_0_state[0]_i_1 
       (.I0(stream_in_a_24_data_V_0_ack_in),
        .I1(stream_in_a_24_TVALID),
        .I2(\stream_in_a_24_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .O(\stream_in_a_24_data_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \stream_in_a_24_data_V_0_state[1]_i_1 
       (.I0(\stream_in_a_24_data_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_a_24_data_V_0_ack_in),
        .I2(stream_in_a_24_TVALID),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(stream_in_a_24_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_a_24_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_a_24_data_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_a_24_data_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_a_24_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_data_V_0_state),
        .Q(stream_in_a_24_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \stream_in_a_24_last_V_0_payload_A[0]_i_1 
       (.I0(stream_in_a_24_TLAST),
        .I1(\stream_in_a_24_last_V_0_state_reg_n_0_[0] ),
        .I2(stream_in_a_24_TREADY),
        .I3(stream_in_a_24_last_V_0_sel_wr),
        .I4(stream_in_a_24_last_V_0_payload_A),
        .O(\stream_in_a_24_last_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \stream_in_a_24_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_a_24_last_V_0_payload_A[0]_i_1_n_0 ),
        .Q(stream_in_a_24_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \stream_in_a_24_last_V_0_payload_B[0]_i_1 
       (.I0(stream_in_a_24_TLAST),
        .I1(\stream_in_a_24_last_V_0_state_reg_n_0_[0] ),
        .I2(stream_in_a_24_TREADY),
        .I3(stream_in_a_24_last_V_0_sel_wr),
        .I4(stream_in_a_24_last_V_0_payload_B),
        .O(\stream_in_a_24_last_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \stream_in_a_24_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_a_24_last_V_0_payload_B[0]_i_1_n_0 ),
        .Q(stream_in_a_24_last_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    stream_in_a_24_last_V_0_sel_rd_i_1
       (.I0(\stream_in_a_24_last_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(stream_in_a_24_last_V_0_sel),
        .O(stream_in_a_24_last_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_a_24_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_last_V_0_sel_rd_i_1_n_0),
        .Q(stream_in_a_24_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_in_a_24_last_V_0_sel_wr_i_1
       (.I0(stream_in_a_24_TREADY),
        .I1(stream_in_a_24_TVALID),
        .I2(stream_in_a_24_last_V_0_sel_wr),
        .O(stream_in_a_24_last_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_a_24_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_last_V_0_sel_wr_i_1_n_0),
        .Q(stream_in_a_24_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF800D800F800F800)) 
    \stream_in_a_24_last_V_0_state[0]_i_1 
       (.I0(stream_in_a_24_TREADY),
        .I1(stream_in_a_24_TVALID),
        .I2(\stream_in_a_24_last_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .O(\stream_in_a_24_last_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_in_a_24_last_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \stream_in_a_24_last_V_0_state[1]_i_2 
       (.I0(\stream_in_a_24_last_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_a_24_TREADY),
        .I2(stream_in_a_24_TVALID),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(stream_in_a_24_last_V_0_state));
  LUT6 #(
    .INIT(64'h7070FFF0FFF0FFF0)) 
    \stream_in_a_24_last_V_0_state[1]_i_3 
       (.I0(\stream_in_b_24_data_V_0_state_reg_n_0_[0] ),
        .I1(\stream_in_a_24_data_V_0_state_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(stream_out_a_24_data_V_1_ack_in),
        .I5(stream_out_b_24_data_V_1_ack_in),
        .O(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \stream_in_a_24_last_V_0_state[1]_i_4 
       (.I0(stream_out_b_24_user_V_1_ack_in),
        .I1(stream_out_b_24_last_V_1_ack_in),
        .I2(stream_out_a_24_user_V_1_ack_in),
        .I3(stream_out_a_24_last_V_1_ack_in),
        .I4(ap_enable_reg_pp0_iter2),
        .O(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_a_24_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_a_24_last_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_a_24_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_a_24_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_last_V_0_state),
        .Q(stream_in_a_24_TREADY),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \stream_in_a_24_user_V_0_payload_A[0]_i_1 
       (.I0(stream_in_a_24_TUSER),
        .I1(\stream_in_a_24_user_V_0_state_reg_n_0_[0] ),
        .I2(stream_in_a_24_user_V_0_ack_in),
        .I3(stream_in_a_24_user_V_0_sel_wr),
        .I4(stream_in_a_24_user_V_0_payload_A),
        .O(\stream_in_a_24_user_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \stream_in_a_24_user_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_a_24_user_V_0_payload_A[0]_i_1_n_0 ),
        .Q(stream_in_a_24_user_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \stream_in_a_24_user_V_0_payload_B[0]_i_1 
       (.I0(stream_in_a_24_TUSER),
        .I1(\stream_in_a_24_user_V_0_state_reg_n_0_[0] ),
        .I2(stream_in_a_24_user_V_0_ack_in),
        .I3(stream_in_a_24_user_V_0_sel_wr),
        .I4(stream_in_a_24_user_V_0_payload_B),
        .O(\stream_in_a_24_user_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \stream_in_a_24_user_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_a_24_user_V_0_payload_B[0]_i_1_n_0 ),
        .Q(stream_in_a_24_user_V_0_payload_B),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    stream_in_a_24_user_V_0_sel_rd_i_1
       (.I0(\stream_in_a_24_user_V_0_state_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(stream_in_a_24_user_V_0_sel),
        .O(stream_in_a_24_user_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_a_24_user_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_user_V_0_sel_rd_i_1_n_0),
        .Q(stream_in_a_24_user_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_in_a_24_user_V_0_sel_wr_i_1
       (.I0(stream_in_a_24_user_V_0_ack_in),
        .I1(stream_in_a_24_TVALID),
        .I2(stream_in_a_24_user_V_0_sel_wr),
        .O(stream_in_a_24_user_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_a_24_user_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_user_V_0_sel_wr_i_1_n_0),
        .Q(stream_in_a_24_user_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF800D800F800F800)) 
    \stream_in_a_24_user_V_0_state[0]_i_1 
       (.I0(stream_in_a_24_user_V_0_ack_in),
        .I1(stream_in_a_24_TVALID),
        .I2(\stream_in_a_24_user_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .O(\stream_in_a_24_user_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \stream_in_a_24_user_V_0_state[1]_i_1 
       (.I0(\stream_in_a_24_user_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_a_24_user_V_0_ack_in),
        .I2(stream_in_a_24_TVALID),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(stream_in_a_24_user_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_a_24_user_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_a_24_user_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_a_24_user_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_a_24_user_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_a_24_user_V_0_state),
        .Q(stream_in_a_24_user_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_in_b_24_data_V_0_payload_A[23]_i_1 
       (.I0(\stream_in_b_24_data_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_b_24_data_V_0_ack_in),
        .I2(stream_in_b_24_data_V_0_sel_wr),
        .O(stream_in_b_24_data_V_0_load_A));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[0]),
        .Q(stream_in_b_24_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[10]),
        .Q(stream_in_b_24_data_V_0_payload_A[10]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[11]),
        .Q(stream_in_b_24_data_V_0_payload_A[11]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[12]),
        .Q(stream_in_b_24_data_V_0_payload_A[12]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[13]),
        .Q(stream_in_b_24_data_V_0_payload_A[13]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[14]),
        .Q(stream_in_b_24_data_V_0_payload_A[14]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[15]),
        .Q(stream_in_b_24_data_V_0_payload_A[15]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[16]),
        .Q(stream_in_b_24_data_V_0_payload_A[16]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[17]),
        .Q(stream_in_b_24_data_V_0_payload_A[17]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[18]),
        .Q(stream_in_b_24_data_V_0_payload_A[18]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[19]),
        .Q(stream_in_b_24_data_V_0_payload_A[19]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[1]),
        .Q(stream_in_b_24_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[20]),
        .Q(stream_in_b_24_data_V_0_payload_A[20]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[21]),
        .Q(stream_in_b_24_data_V_0_payload_A[21]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[22]),
        .Q(stream_in_b_24_data_V_0_payload_A[22]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[23]),
        .Q(stream_in_b_24_data_V_0_payload_A[23]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[2]),
        .Q(stream_in_b_24_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[3]),
        .Q(stream_in_b_24_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[4]),
        .Q(stream_in_b_24_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[5]),
        .Q(stream_in_b_24_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[6]),
        .Q(stream_in_b_24_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[7]),
        .Q(stream_in_b_24_data_V_0_payload_A[7]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[8]),
        .Q(stream_in_b_24_data_V_0_payload_A[8]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_A),
        .D(stream_in_b_24_TDATA[9]),
        .Q(stream_in_b_24_data_V_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \stream_in_b_24_data_V_0_payload_B[23]_i_1 
       (.I0(\stream_in_b_24_data_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_b_24_data_V_0_ack_in),
        .I2(stream_in_b_24_data_V_0_sel_wr),
        .O(stream_in_b_24_data_V_0_load_B));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[0]),
        .Q(stream_in_b_24_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[10]),
        .Q(stream_in_b_24_data_V_0_payload_B[10]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[11]),
        .Q(stream_in_b_24_data_V_0_payload_B[11]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[12]),
        .Q(stream_in_b_24_data_V_0_payload_B[12]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[13]),
        .Q(stream_in_b_24_data_V_0_payload_B[13]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[14]),
        .Q(stream_in_b_24_data_V_0_payload_B[14]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[15]),
        .Q(stream_in_b_24_data_V_0_payload_B[15]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[16]),
        .Q(stream_in_b_24_data_V_0_payload_B[16]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[17]),
        .Q(stream_in_b_24_data_V_0_payload_B[17]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[18]),
        .Q(stream_in_b_24_data_V_0_payload_B[18]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[19]),
        .Q(stream_in_b_24_data_V_0_payload_B[19]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[1]),
        .Q(stream_in_b_24_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[20]),
        .Q(stream_in_b_24_data_V_0_payload_B[20]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[21]),
        .Q(stream_in_b_24_data_V_0_payload_B[21]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[22]),
        .Q(stream_in_b_24_data_V_0_payload_B[22]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[23]),
        .Q(stream_in_b_24_data_V_0_payload_B[23]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[2]),
        .Q(stream_in_b_24_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[3]),
        .Q(stream_in_b_24_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[4]),
        .Q(stream_in_b_24_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[5]),
        .Q(stream_in_b_24_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[6]),
        .Q(stream_in_b_24_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[7]),
        .Q(stream_in_b_24_data_V_0_payload_B[7]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[8]),
        .Q(stream_in_b_24_data_V_0_payload_B[8]),
        .R(1'b0));
  FDRE \stream_in_b_24_data_V_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(stream_in_b_24_data_V_0_load_B),
        .D(stream_in_b_24_TDATA[9]),
        .Q(stream_in_b_24_data_V_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    stream_in_b_24_data_V_0_sel_rd_i_1
       (.I0(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(stream_in_b_24_data_V_0_sel),
        .O(stream_in_b_24_data_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_b_24_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_b_24_data_V_0_sel_rd_i_1_n_0),
        .Q(stream_in_b_24_data_V_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    stream_in_b_24_data_V_0_sel_wr_i_1
       (.I0(stream_in_b_24_data_V_0_ack_in),
        .I1(stream_in_b_24_TVALID),
        .I2(stream_in_b_24_data_V_0_sel_wr),
        .O(stream_in_b_24_data_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_in_b_24_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_b_24_data_V_0_sel_wr_i_1_n_0),
        .Q(stream_in_b_24_data_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF800D800F800F800)) 
    \stream_in_b_24_data_V_0_state[0]_i_1 
       (.I0(stream_in_b_24_data_V_0_ack_in),
        .I1(stream_in_b_24_TVALID),
        .I2(\stream_in_b_24_data_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .O(\stream_in_b_24_data_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \stream_in_b_24_data_V_0_state[1]_i_1 
       (.I0(\stream_in_b_24_data_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_b_24_data_V_0_ack_in),
        .I2(stream_in_b_24_TVALID),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(stream_in_b_24_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_b_24_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_b_24_data_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_b_24_data_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_b_24_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_b_24_data_V_0_state),
        .Q(stream_in_b_24_data_V_0_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF800D800F800F800)) 
    \stream_in_b_24_last_V_0_state[0]_i_1 
       (.I0(stream_in_b_24_TREADY),
        .I1(stream_in_b_24_TVALID),
        .I2(\stream_in_b_24_last_V_0_state_reg_n_0_[0] ),
        .I3(ap_rst_n),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .O(\stream_in_b_24_last_V_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5DFF5D5D5D5D5D5D)) 
    \stream_in_b_24_last_V_0_state[1]_i_1 
       (.I0(\stream_in_b_24_last_V_0_state_reg_n_0_[0] ),
        .I1(stream_in_b_24_TREADY),
        .I2(stream_in_b_24_TVALID),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(stream_in_b_24_last_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_b_24_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_in_b_24_last_V_0_state[0]_i_1_n_0 ),
        .Q(\stream_in_b_24_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_in_b_24_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_in_b_24_last_V_0_state),
        .Q(stream_in_b_24_TREADY),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[0]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[0]),
        .I1(stream_out_a_24_data_V_1_payload_A[0]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[10]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[10]),
        .I1(stream_out_a_24_data_V_1_payload_A[10]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[11]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[11]),
        .I1(stream_out_a_24_data_V_1_payload_A[11]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[12]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[12]),
        .I1(stream_out_a_24_data_V_1_payload_A[12]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[13]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[13]),
        .I1(stream_out_a_24_data_V_1_payload_A[13]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[14]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[14]),
        .I1(stream_out_a_24_data_V_1_payload_A[14]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[15]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[15]),
        .I1(stream_out_a_24_data_V_1_payload_A[15]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[16]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[16]),
        .I1(stream_out_a_24_data_V_1_payload_A[16]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[17]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[17]),
        .I1(stream_out_a_24_data_V_1_payload_A[17]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[18]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[18]),
        .I1(stream_out_a_24_data_V_1_payload_A[18]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[19]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[19]),
        .I1(stream_out_a_24_data_V_1_payload_A[19]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[1]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[1]),
        .I1(stream_out_a_24_data_V_1_payload_A[1]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[20]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[20]),
        .I1(stream_out_a_24_data_V_1_payload_A[20]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[21]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[21]),
        .I1(stream_out_a_24_data_V_1_payload_A[21]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[22]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[22]),
        .I1(stream_out_a_24_data_V_1_payload_A[22]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[23]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[23]),
        .I1(stream_out_a_24_data_V_1_payload_A[23]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[2]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[2]),
        .I1(stream_out_a_24_data_V_1_payload_A[2]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[3]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[3]),
        .I1(stream_out_a_24_data_V_1_payload_A[3]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[4]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[4]),
        .I1(stream_out_a_24_data_V_1_payload_A[4]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[5]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[5]),
        .I1(stream_out_a_24_data_V_1_payload_A[5]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[6]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[6]),
        .I1(stream_out_a_24_data_V_1_payload_A[6]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[7]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[7]),
        .I1(stream_out_a_24_data_V_1_payload_A[7]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[8]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[8]),
        .I1(stream_out_a_24_data_V_1_payload_A[8]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_a_24_TDATA[9]_INST_0 
       (.I0(stream_out_a_24_data_V_1_payload_B[9]),
        .I1(stream_out_a_24_data_V_1_payload_A[9]),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_TDATA[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_out_a_24_TLAST[0]_INST_0 
       (.I0(stream_out_a_24_last_V_1_payload_B),
        .I1(stream_out_a_24_last_V_1_sel),
        .I2(stream_out_a_24_last_V_1_payload_A),
        .O(stream_out_a_24_TLAST));
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_out_a_24_TUSER[0]_INST_0 
       (.I0(stream_out_a_24_user_V_1_payload_B),
        .I1(stream_out_a_24_user_V_1_sel),
        .I2(stream_out_a_24_user_V_1_payload_A),
        .O(stream_out_a_24_TUSER));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_out_a_24_data_V_1_payload_A[23]_i_1 
       (.I0(\stream_out_a_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_a_24_data_V_1_ack_in),
        .I2(stream_out_a_24_data_V_1_sel_wr),
        .O(stream_out_a_24_data_V_1_load_A));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[0]),
        .Q(stream_out_a_24_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[10]),
        .Q(stream_out_a_24_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[11]),
        .Q(stream_out_a_24_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[12]),
        .Q(stream_out_a_24_data_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[13]),
        .Q(stream_out_a_24_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[14]),
        .Q(stream_out_a_24_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[15]),
        .Q(stream_out_a_24_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[16]),
        .Q(stream_out_a_24_data_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[17]),
        .Q(stream_out_a_24_data_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[18]),
        .Q(stream_out_a_24_data_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[19]),
        .Q(stream_out_a_24_data_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[1]),
        .Q(stream_out_a_24_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[20]),
        .Q(stream_out_a_24_data_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[21]),
        .Q(stream_out_a_24_data_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[22]),
        .Q(stream_out_a_24_data_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[23]),
        .Q(stream_out_a_24_data_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[2]),
        .Q(stream_out_a_24_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[3]),
        .Q(stream_out_a_24_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[4]),
        .Q(stream_out_a_24_data_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[5]),
        .Q(stream_out_a_24_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[6]),
        .Q(stream_out_a_24_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[7]),
        .Q(stream_out_a_24_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[8]),
        .Q(stream_out_a_24_data_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_A),
        .D(tmpd_V[9]),
        .Q(stream_out_a_24_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \stream_out_a_24_data_V_1_payload_B[23]_i_1 
       (.I0(\stream_out_a_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_a_24_data_V_1_ack_in),
        .I2(stream_out_a_24_data_V_1_sel_wr),
        .O(stream_out_a_24_data_V_1_load_B));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[0]),
        .Q(stream_out_a_24_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[10]),
        .Q(stream_out_a_24_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[11]),
        .Q(stream_out_a_24_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[12]),
        .Q(stream_out_a_24_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[13]),
        .Q(stream_out_a_24_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[14]),
        .Q(stream_out_a_24_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[15]),
        .Q(stream_out_a_24_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[16]),
        .Q(stream_out_a_24_data_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[17]),
        .Q(stream_out_a_24_data_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[18]),
        .Q(stream_out_a_24_data_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[19]),
        .Q(stream_out_a_24_data_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[1]),
        .Q(stream_out_a_24_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[20]),
        .Q(stream_out_a_24_data_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[21]),
        .Q(stream_out_a_24_data_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[22]),
        .Q(stream_out_a_24_data_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[23]),
        .Q(stream_out_a_24_data_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[2]),
        .Q(stream_out_a_24_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[3]),
        .Q(stream_out_a_24_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[4]),
        .Q(stream_out_a_24_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[5]),
        .Q(stream_out_a_24_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[6]),
        .Q(stream_out_a_24_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[7]),
        .Q(stream_out_a_24_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[8]),
        .Q(stream_out_a_24_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \stream_out_a_24_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_load_B),
        .D(tmpd_V[9]),
        .Q(stream_out_a_24_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_a_24_data_V_1_sel_rd_i_1
       (.I0(\stream_out_a_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_a_24_TREADY),
        .I2(stream_out_a_24_data_V_1_sel),
        .O(stream_out_a_24_data_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_a_24_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_a_24_data_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_a_24_data_V_1_sel),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hBF40)) 
    stream_out_a_24_data_V_1_sel_wr_i_1
       (.I0(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(stream_out_a_24_data_V_1_sel_wr),
        .O(stream_out_a_24_data_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_a_24_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_a_24_data_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_a_24_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h4FFF444400000000)) 
    \stream_out_a_24_data_V_1_state[0]_i_1 
       (.I0(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I1(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .I2(stream_out_a_24_data_V_1_ack_in),
        .I3(stream_out_a_24_TREADY),
        .I4(\stream_out_a_24_data_V_1_state_reg_n_0_[0] ),
        .I5(ap_rst_n),
        .O(\stream_out_a_24_data_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    \stream_out_a_24_data_V_1_state[1]_i_1 
       (.I0(\stream_out_a_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_a_24_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(stream_out_a_24_data_V_1_ack_in),
        .O(\stream_out_a_24_data_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_a_24_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_data_V_1_state[0]_i_1_n_0 ),
        .Q(\stream_out_a_24_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_a_24_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_data_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_a_24_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \stream_out_a_24_last_V_1_payload_A[0]_i_1 
       (.I0(stream_in_a_24_last_V_0_data_out),
        .I1(stream_out_a_24_TVALID),
        .I2(stream_out_a_24_last_V_1_ack_in),
        .I3(stream_out_a_24_last_V_1_sel_wr),
        .I4(stream_out_a_24_last_V_1_payload_A),
        .O(\stream_out_a_24_last_V_1_payload_A[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_out_a_24_last_V_1_payload_A[0]_i_2 
       (.I0(stream_in_a_24_last_V_0_payload_B),
        .I1(stream_in_a_24_last_V_0_sel),
        .I2(stream_in_a_24_last_V_0_payload_A),
        .O(stream_in_a_24_last_V_0_data_out));
  FDRE \stream_out_a_24_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(stream_out_a_24_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \stream_out_a_24_last_V_1_payload_B[0]_i_1 
       (.I0(stream_in_a_24_last_V_0_data_out),
        .I1(stream_out_a_24_TVALID),
        .I2(stream_out_a_24_last_V_1_ack_in),
        .I3(stream_out_a_24_last_V_1_sel_wr),
        .I4(stream_out_a_24_last_V_1_payload_B),
        .O(\stream_out_a_24_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \stream_out_a_24_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(stream_out_a_24_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_a_24_last_V_1_sel_rd_i_1
       (.I0(stream_out_a_24_TVALID),
        .I1(stream_out_a_24_TREADY),
        .I2(stream_out_a_24_last_V_1_sel),
        .O(stream_out_a_24_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_a_24_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_a_24_last_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_a_24_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    stream_out_a_24_last_V_1_sel_wr_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I3(stream_out_a_24_last_V_1_ack_in),
        .I4(stream_out_a_24_last_V_1_sel_wr),
        .O(stream_out_a_24_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_a_24_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_a_24_last_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_a_24_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2AFA2A2A00000000)) 
    \stream_out_a_24_last_V_1_state[0]_i_1 
       (.I0(stream_out_a_24_TVALID),
        .I1(stream_out_a_24_TREADY),
        .I2(stream_out_a_24_last_V_1_ack_in),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .I5(ap_rst_n),
        .O(\stream_out_a_24_last_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD555555500000000)) 
    \stream_out_a_24_last_V_1_state[0]_i_2 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(stream_out_a_24_last_V_1_ack_in),
        .I2(stream_out_a_24_user_V_1_ack_in),
        .I3(stream_out_b_24_last_V_1_ack_in),
        .I4(stream_out_b_24_user_V_1_ack_in),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF700FFFFFFFF)) 
    \stream_out_a_24_last_V_1_state[1]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I3(stream_out_a_24_last_V_1_ack_in),
        .I4(stream_out_a_24_TREADY),
        .I5(stream_out_a_24_TVALID),
        .O(\stream_out_a_24_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_a_24_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_last_V_1_state[0]_i_1_n_0 ),
        .Q(stream_out_a_24_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_a_24_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_last_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_a_24_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \stream_out_a_24_user_V_1_payload_A[0]_i_1 
       (.I0(stream_in_a_24_user_V_0_data_out),
        .I1(\stream_out_a_24_user_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_a_24_user_V_1_ack_in),
        .I3(stream_out_a_24_user_V_1_sel_wr),
        .I4(stream_out_a_24_user_V_1_payload_A),
        .O(\stream_out_a_24_user_V_1_payload_A[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_out_a_24_user_V_1_payload_A[0]_i_2 
       (.I0(stream_in_a_24_user_V_0_payload_B),
        .I1(stream_in_a_24_user_V_0_sel),
        .I2(stream_in_a_24_user_V_0_payload_A),
        .O(stream_in_a_24_user_V_0_data_out));
  FDRE \stream_out_a_24_user_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_user_V_1_payload_A[0]_i_1_n_0 ),
        .Q(stream_out_a_24_user_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \stream_out_a_24_user_V_1_payload_B[0]_i_1 
       (.I0(stream_in_a_24_user_V_0_data_out),
        .I1(\stream_out_a_24_user_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_a_24_user_V_1_ack_in),
        .I3(stream_out_a_24_user_V_1_sel_wr),
        .I4(stream_out_a_24_user_V_1_payload_B),
        .O(\stream_out_a_24_user_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \stream_out_a_24_user_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_user_V_1_payload_B[0]_i_1_n_0 ),
        .Q(stream_out_a_24_user_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_a_24_user_V_1_sel_rd_i_1
       (.I0(\stream_out_a_24_user_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_a_24_TREADY),
        .I2(stream_out_a_24_user_V_1_sel),
        .O(stream_out_a_24_user_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_a_24_user_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_a_24_user_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_a_24_user_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    stream_out_a_24_user_V_1_sel_wr_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I3(stream_out_a_24_user_V_1_ack_in),
        .I4(stream_out_a_24_user_V_1_sel_wr),
        .O(stream_out_a_24_user_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_a_24_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_a_24_user_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_a_24_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2AFA2A2A00000000)) 
    \stream_out_a_24_user_V_1_state[0]_i_1 
       (.I0(\stream_out_a_24_user_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_a_24_TREADY),
        .I2(stream_out_a_24_user_V_1_ack_in),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .I5(ap_rst_n),
        .O(\stream_out_a_24_user_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    \stream_out_a_24_user_V_1_state[1]_i_1 
       (.I0(\stream_out_a_24_user_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_a_24_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(stream_out_a_24_user_V_1_ack_in),
        .O(\stream_out_a_24_user_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_a_24_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_user_V_1_state[0]_i_1_n_0 ),
        .Q(\stream_out_a_24_user_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_a_24_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_a_24_user_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_a_24_user_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[0]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[0]),
        .I1(stream_out_b_24_data_V_1_payload_A[0]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[10]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[10]),
        .I1(stream_out_b_24_data_V_1_payload_A[10]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[11]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[11]),
        .I1(stream_out_b_24_data_V_1_payload_A[11]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[12]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[12]),
        .I1(stream_out_b_24_data_V_1_payload_A[12]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[13]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[13]),
        .I1(stream_out_b_24_data_V_1_payload_A[13]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[14]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[14]),
        .I1(stream_out_b_24_data_V_1_payload_A[14]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[15]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[15]),
        .I1(stream_out_b_24_data_V_1_payload_A[15]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[16]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[16]),
        .I1(stream_out_b_24_data_V_1_payload_A[16]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[17]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[17]),
        .I1(stream_out_b_24_data_V_1_payload_A[17]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[18]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[18]),
        .I1(stream_out_b_24_data_V_1_payload_A[18]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[19]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[19]),
        .I1(stream_out_b_24_data_V_1_payload_A[19]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[1]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[1]),
        .I1(stream_out_b_24_data_V_1_payload_A[1]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[20]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[20]),
        .I1(stream_out_b_24_data_V_1_payload_A[20]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[21]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[21]),
        .I1(stream_out_b_24_data_V_1_payload_A[21]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[22]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[22]),
        .I1(stream_out_b_24_data_V_1_payload_A[22]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[23]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[23]),
        .I1(stream_out_b_24_data_V_1_payload_A[23]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[2]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[2]),
        .I1(stream_out_b_24_data_V_1_payload_A[2]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[3]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[3]),
        .I1(stream_out_b_24_data_V_1_payload_A[3]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[4]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[4]),
        .I1(stream_out_b_24_data_V_1_payload_A[4]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[5]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[5]),
        .I1(stream_out_b_24_data_V_1_payload_A[5]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[6]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[6]),
        .I1(stream_out_b_24_data_V_1_payload_A[6]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[7]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[7]),
        .I1(stream_out_b_24_data_V_1_payload_A[7]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[8]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[8]),
        .I1(stream_out_b_24_data_V_1_payload_A[8]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \stream_out_b_24_TDATA[9]_INST_0 
       (.I0(stream_out_b_24_data_V_1_payload_B[9]),
        .I1(stream_out_b_24_data_V_1_payload_A[9]),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_TDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_out_b_24_TLAST[0]_INST_0 
       (.I0(stream_out_b_24_last_V_1_payload_B),
        .I1(stream_out_b_24_last_V_1_sel),
        .I2(stream_out_b_24_last_V_1_payload_A),
        .O(stream_out_b_24_TLAST));
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_out_b_24_TUSER[0]_INST_0 
       (.I0(stream_out_b_24_user_V_1_payload_B),
        .I1(stream_out_b_24_user_V_1_sel),
        .I2(stream_out_b_24_user_V_1_payload_A),
        .O(stream_out_b_24_TUSER));
  LUT3 #(
    .INIT(8'h0D)) 
    \stream_out_b_24_data_V_1_payload_A[23]_i_1 
       (.I0(\stream_out_b_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_b_24_data_V_1_ack_in),
        .I2(stream_out_b_24_data_V_1_sel_wr),
        .O(stream_out_b_24_data_V_1_load_A));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[0]),
        .Q(stream_out_b_24_data_V_1_payload_A[0]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[10]),
        .Q(stream_out_b_24_data_V_1_payload_A[10]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[11]),
        .Q(stream_out_b_24_data_V_1_payload_A[11]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[12]),
        .Q(stream_out_b_24_data_V_1_payload_A[12]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[13]),
        .Q(stream_out_b_24_data_V_1_payload_A[13]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[14]),
        .Q(stream_out_b_24_data_V_1_payload_A[14]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[15]),
        .Q(stream_out_b_24_data_V_1_payload_A[15]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[16]),
        .Q(stream_out_b_24_data_V_1_payload_A[16]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[17]),
        .Q(stream_out_b_24_data_V_1_payload_A[17]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[18]),
        .Q(stream_out_b_24_data_V_1_payload_A[18]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[19]),
        .Q(stream_out_b_24_data_V_1_payload_A[19]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[1]),
        .Q(stream_out_b_24_data_V_1_payload_A[1]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[20]),
        .Q(stream_out_b_24_data_V_1_payload_A[20]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[21]),
        .Q(stream_out_b_24_data_V_1_payload_A[21]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[22]),
        .Q(stream_out_b_24_data_V_1_payload_A[22]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[23]),
        .Q(stream_out_b_24_data_V_1_payload_A[23]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[2]),
        .Q(stream_out_b_24_data_V_1_payload_A[2]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[3]),
        .Q(stream_out_b_24_data_V_1_payload_A[3]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[4]),
        .Q(stream_out_b_24_data_V_1_payload_A[4]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[5]),
        .Q(stream_out_b_24_data_V_1_payload_A[5]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[6]),
        .Q(stream_out_b_24_data_V_1_payload_A[6]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[7]),
        .Q(stream_out_b_24_data_V_1_payload_A[7]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[8]),
        .Q(stream_out_b_24_data_V_1_payload_A[8]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_A),
        .D(tmpd_V[9]),
        .Q(stream_out_b_24_data_V_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \stream_out_b_24_data_V_1_payload_B[23]_i_1 
       (.I0(\stream_out_b_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_b_24_data_V_1_ack_in),
        .I2(stream_out_b_24_data_V_1_sel_wr),
        .O(stream_out_b_24_data_V_1_load_B));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[0]),
        .Q(stream_out_b_24_data_V_1_payload_B[0]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[10]),
        .Q(stream_out_b_24_data_V_1_payload_B[10]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[11]),
        .Q(stream_out_b_24_data_V_1_payload_B[11]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[12]),
        .Q(stream_out_b_24_data_V_1_payload_B[12]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[13]),
        .Q(stream_out_b_24_data_V_1_payload_B[13]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[14]),
        .Q(stream_out_b_24_data_V_1_payload_B[14]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[15]),
        .Q(stream_out_b_24_data_V_1_payload_B[15]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[16]),
        .Q(stream_out_b_24_data_V_1_payload_B[16]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[17]),
        .Q(stream_out_b_24_data_V_1_payload_B[17]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[18]),
        .Q(stream_out_b_24_data_V_1_payload_B[18]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[19]),
        .Q(stream_out_b_24_data_V_1_payload_B[19]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[1]),
        .Q(stream_out_b_24_data_V_1_payload_B[1]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[20]),
        .Q(stream_out_b_24_data_V_1_payload_B[20]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[21]),
        .Q(stream_out_b_24_data_V_1_payload_B[21]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[22]),
        .Q(stream_out_b_24_data_V_1_payload_B[22]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[23]),
        .Q(stream_out_b_24_data_V_1_payload_B[23]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[2]),
        .Q(stream_out_b_24_data_V_1_payload_B[2]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[3]),
        .Q(stream_out_b_24_data_V_1_payload_B[3]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[4]),
        .Q(stream_out_b_24_data_V_1_payload_B[4]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[5]),
        .Q(stream_out_b_24_data_V_1_payload_B[5]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[6]),
        .Q(stream_out_b_24_data_V_1_payload_B[6]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[7]),
        .Q(stream_out_b_24_data_V_1_payload_B[7]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[8]),
        .Q(stream_out_b_24_data_V_1_payload_B[8]),
        .R(1'b0));
  FDRE \stream_out_b_24_data_V_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(stream_out_b_24_data_V_1_load_B),
        .D(tmpd_V[9]),
        .Q(stream_out_b_24_data_V_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_b_24_data_V_1_sel_rd_i_1
       (.I0(\stream_out_b_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_b_24_TREADY),
        .I2(stream_out_b_24_data_V_1_sel),
        .O(stream_out_b_24_data_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_b_24_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_b_24_data_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_b_24_data_V_1_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    stream_out_b_24_data_V_1_sel_wr_i_1
       (.I0(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(stream_out_b_24_data_V_1_sel_wr),
        .O(stream_out_b_24_data_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_b_24_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_b_24_data_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_b_24_data_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h4FFF444400000000)) 
    \stream_out_b_24_data_V_1_state[0]_i_1 
       (.I0(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I1(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .I2(stream_out_b_24_data_V_1_ack_in),
        .I3(stream_out_b_24_TREADY),
        .I4(\stream_out_b_24_data_V_1_state_reg_n_0_[0] ),
        .I5(ap_rst_n),
        .O(\stream_out_b_24_data_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    \stream_out_b_24_data_V_1_state[1]_i_1 
       (.I0(\stream_out_b_24_data_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_b_24_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(stream_out_b_24_data_V_1_ack_in),
        .O(\stream_out_b_24_data_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_b_24_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_data_V_1_state[0]_i_1_n_0 ),
        .Q(\stream_out_b_24_data_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_b_24_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_data_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_b_24_data_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \stream_out_b_24_last_V_1_payload_A[0]_i_1 
       (.I0(stream_in_a_24_last_V_0_data_out),
        .I1(stream_out_b_24_TVALID),
        .I2(stream_out_b_24_last_V_1_ack_in),
        .I3(stream_out_b_24_last_V_1_sel_wr),
        .I4(stream_out_b_24_last_V_1_payload_A),
        .O(\stream_out_b_24_last_V_1_payload_A[0]_i_1_n_0 ));
  FDRE \stream_out_b_24_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(stream_out_b_24_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \stream_out_b_24_last_V_1_payload_B[0]_i_1 
       (.I0(stream_in_a_24_last_V_0_data_out),
        .I1(stream_out_b_24_TVALID),
        .I2(stream_out_b_24_last_V_1_ack_in),
        .I3(stream_out_b_24_last_V_1_sel_wr),
        .I4(stream_out_b_24_last_V_1_payload_B),
        .O(\stream_out_b_24_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \stream_out_b_24_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(stream_out_b_24_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_b_24_last_V_1_sel_rd_i_1
       (.I0(stream_out_b_24_TVALID),
        .I1(stream_out_b_24_TREADY),
        .I2(stream_out_b_24_last_V_1_sel),
        .O(stream_out_b_24_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_b_24_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_b_24_last_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_b_24_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    stream_out_b_24_last_V_1_sel_wr_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I3(stream_out_b_24_last_V_1_ack_in),
        .I4(stream_out_b_24_last_V_1_sel_wr),
        .O(stream_out_b_24_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_b_24_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_b_24_last_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_b_24_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2AFA2A2A00000000)) 
    \stream_out_b_24_last_V_1_state[0]_i_1 
       (.I0(stream_out_b_24_TVALID),
        .I1(stream_out_b_24_TREADY),
        .I2(stream_out_b_24_last_V_1_ack_in),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .I5(ap_rst_n),
        .O(\stream_out_b_24_last_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF700FFFFFFFF)) 
    \stream_out_b_24_last_V_1_state[1]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I3(stream_out_b_24_last_V_1_ack_in),
        .I4(stream_out_b_24_TREADY),
        .I5(stream_out_b_24_TVALID),
        .O(\stream_out_b_24_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_b_24_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_last_V_1_state[0]_i_1_n_0 ),
        .Q(stream_out_b_24_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_b_24_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_last_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_b_24_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \stream_out_b_24_user_V_1_payload_A[0]_i_1 
       (.I0(stream_in_a_24_user_V_0_data_out),
        .I1(\stream_out_b_24_user_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_b_24_user_V_1_ack_in),
        .I3(stream_out_b_24_user_V_1_sel_wr),
        .I4(stream_out_b_24_user_V_1_payload_A),
        .O(\stream_out_b_24_user_V_1_payload_A[0]_i_1_n_0 ));
  FDRE \stream_out_b_24_user_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_user_V_1_payload_A[0]_i_1_n_0 ),
        .Q(stream_out_b_24_user_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \stream_out_b_24_user_V_1_payload_B[0]_i_1 
       (.I0(stream_in_a_24_user_V_0_data_out),
        .I1(\stream_out_b_24_user_V_1_state_reg_n_0_[0] ),
        .I2(stream_out_b_24_user_V_1_ack_in),
        .I3(stream_out_b_24_user_V_1_sel_wr),
        .I4(stream_out_b_24_user_V_1_payload_B),
        .O(\stream_out_b_24_user_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \stream_out_b_24_user_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_user_V_1_payload_B[0]_i_1_n_0 ),
        .Q(stream_out_b_24_user_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    stream_out_b_24_user_V_1_sel_rd_i_1
       (.I0(\stream_out_b_24_user_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_b_24_TREADY),
        .I2(stream_out_b_24_user_V_1_sel),
        .O(stream_out_b_24_user_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_b_24_user_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_b_24_user_V_1_sel_rd_i_1_n_0),
        .Q(stream_out_b_24_user_V_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    stream_out_b_24_user_V_1_sel_wr_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I3(stream_out_b_24_user_V_1_ack_in),
        .I4(stream_out_b_24_user_V_1_sel_wr),
        .O(stream_out_b_24_user_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stream_out_b_24_user_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(stream_out_b_24_user_V_1_sel_wr_i_1_n_0),
        .Q(stream_out_b_24_user_V_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2AFA2A2A00000000)) 
    \stream_out_b_24_user_V_1_state[0]_i_1 
       (.I0(\stream_out_b_24_user_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_b_24_TREADY),
        .I2(stream_out_b_24_user_V_1_ack_in),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I4(\stream_out_a_24_last_V_1_state[0]_i_2_n_0 ),
        .I5(ap_rst_n),
        .O(\stream_out_b_24_user_V_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    \stream_out_b_24_user_V_1_state[1]_i_1 
       (.I0(\stream_out_b_24_user_V_1_state_reg_n_0_[0] ),
        .I1(stream_out_b_24_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I4(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .I5(stream_out_b_24_user_V_1_ack_in),
        .O(\stream_out_b_24_user_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_b_24_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_user_V_1_state[0]_i_1_n_0 ),
        .Q(\stream_out_b_24_user_V_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_out_b_24_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\stream_out_b_24_user_V_1_state[1]_i_1_n_0 ),
        .Q(stream_out_b_24_user_V_1_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[0]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[0]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[0]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[0]),
        .O(tmpa_V_1_fu_146_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[0]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[0]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[0]),
        .O(stream_in_a_24_data_V_0_data_out[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[10]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[10]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[10]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[10]),
        .O(tmpa_V_1_fu_146_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[10]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[10]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[10]),
        .O(stream_in_a_24_data_V_0_data_out[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[11]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[11]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[11]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[11]),
        .O(tmpa_V_1_fu_146_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[11]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[11]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[11]),
        .O(stream_in_a_24_data_V_0_data_out[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[12]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[12]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[12]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[12]),
        .O(tmpa_V_1_fu_146_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[12]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[12]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[12]),
        .O(stream_in_a_24_data_V_0_data_out[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[13]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[13]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[13]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[13]),
        .O(tmpa_V_1_fu_146_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[13]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[13]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[13]),
        .O(stream_in_a_24_data_V_0_data_out[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[14]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[14]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[14]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[14]),
        .O(tmpa_V_1_fu_146_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[14]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[14]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[14]),
        .O(stream_in_a_24_data_V_0_data_out[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[15]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[15]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[15]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[15]),
        .O(tmpa_V_1_fu_146_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[15]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[15]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[15]),
        .O(stream_in_a_24_data_V_0_data_out[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[16]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[16]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[16]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[16]),
        .O(tmpa_V_1_fu_146_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[16]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[16]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[16]),
        .O(stream_in_a_24_data_V_0_data_out[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[17]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[17]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[17]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[17]),
        .O(tmpa_V_1_fu_146_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[17]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[17]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[17]),
        .O(stream_in_a_24_data_V_0_data_out[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[18]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[18]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[18]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[18]),
        .O(tmpa_V_1_fu_146_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[18]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[18]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[18]),
        .O(stream_in_a_24_data_V_0_data_out[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[19]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[19]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[19]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[19]),
        .O(tmpa_V_1_fu_146_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[19]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[19]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[19]),
        .O(stream_in_a_24_data_V_0_data_out[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[1]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[1]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[1]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[1]),
        .O(tmpa_V_1_fu_146_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[1]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[1]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[1]),
        .O(stream_in_a_24_data_V_0_data_out[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[20]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[20]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[20]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[20]),
        .O(tmpa_V_1_fu_146_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[20]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[20]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[20]),
        .O(stream_in_a_24_data_V_0_data_out[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[21]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[21]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[21]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[21]),
        .O(tmpa_V_1_fu_146_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[21]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[21]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[21]),
        .O(stream_in_a_24_data_V_0_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[22]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[22]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[22]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[22]),
        .O(tmpa_V_1_fu_146_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[22]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[22]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[22]),
        .O(stream_in_a_24_data_V_0_data_out[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[23]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[23]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[23]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[23]),
        .O(tmpa_V_1_fu_146_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[23]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[23]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[23]),
        .O(stream_in_a_24_data_V_0_data_out[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[2]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[2]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[2]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[2]),
        .O(tmpa_V_1_fu_146_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[2]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[2]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[2]),
        .O(stream_in_a_24_data_V_0_data_out[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[3]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[3]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[3]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[3]),
        .O(tmpa_V_1_fu_146_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[3]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[3]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[3]),
        .O(stream_in_a_24_data_V_0_data_out[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[4]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[4]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[4]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[4]),
        .O(tmpa_V_1_fu_146_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[4]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[4]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[4]),
        .O(stream_in_a_24_data_V_0_data_out[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[5]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[5]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[5]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[5]),
        .O(tmpa_V_1_fu_146_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[5]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[5]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[5]),
        .O(stream_in_a_24_data_V_0_data_out[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[6]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[6]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[6]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[6]),
        .O(tmpa_V_1_fu_146_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[6]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[6]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[6]),
        .O(stream_in_a_24_data_V_0_data_out[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[7]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[7]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[7]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[7]),
        .O(tmpa_V_1_fu_146_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[7]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[7]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[7]),
        .O(stream_in_a_24_data_V_0_data_out[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[8]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[8]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[8]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[8]),
        .O(tmpa_V_1_fu_146_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[8]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[8]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[8]),
        .O(stream_in_a_24_data_V_0_data_out[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \tmpc_V[9]_i_1 
       (.I0(stream_in_b_24_data_V_0_payload_B[9]),
        .I1(stream_in_b_24_data_V_0_sel),
        .I2(stream_in_b_24_data_V_0_payload_A[9]),
        .I3(vid_id),
        .I4(stream_in_a_24_data_V_0_data_out[9]),
        .O(tmpa_V_1_fu_146_p3[9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmpc_V[9]_i_2 
       (.I0(stream_in_a_24_data_V_0_payload_B[9]),
        .I1(stream_in_a_24_data_V_0_sel),
        .I2(stream_in_a_24_data_V_0_payload_A[9]),
        .O(stream_in_a_24_data_V_0_data_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[0]),
        .Q(tmpd_V[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[10] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[10]),
        .Q(tmpd_V[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[11] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[11]),
        .Q(tmpd_V[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[12] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[12]),
        .Q(tmpd_V[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[13] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[13]),
        .Q(tmpd_V[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[14] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[14]),
        .Q(tmpd_V[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[15] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[15]),
        .Q(tmpd_V[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[16] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[16]),
        .Q(tmpd_V[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[17] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[17]),
        .Q(tmpd_V[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[18] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[18]),
        .Q(tmpd_V[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[19] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[19]),
        .Q(tmpd_V[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[1] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[1]),
        .Q(tmpd_V[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[20] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[20]),
        .Q(tmpd_V[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[21] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[21]),
        .Q(tmpd_V[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[22] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[22]),
        .Q(tmpd_V[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[23] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[23]),
        .Q(tmpd_V[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[2] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[2]),
        .Q(tmpd_V[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[3] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[3]),
        .Q(tmpd_V[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[4] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[4]),
        .Q(tmpd_V[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[5] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[5]),
        .Q(tmpd_V[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[6] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[6]),
        .Q(tmpd_V[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[7] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[7]),
        .Q(tmpd_V[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[8] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[8]),
        .Q(tmpd_V[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmpc_V_reg[9] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(tmpa_V_1_fu_146_p3[9]),
        .Q(tmpd_V[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \vid_id[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\stream_in_a_24_last_V_0_state[1]_i_4_n_0 ),
        .I2(\stream_in_a_24_last_V_0_state[1]_i_3_n_0 ),
        .O(stream_out_a_24_data_V_1_sel_wr034_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vid_id[0]_i_2 
       (.I0(vid_id),
        .O(vid_id_assign_fu_140_p2));
  FDRE #(
    .INIT(1'b0)) 
    \vid_id_reg[0] 
       (.C(ap_clk),
        .CE(stream_out_a_24_data_V_1_sel_wr034_out),
        .D(vid_id_assign_fu_140_p2),
        .Q(vid_id),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
