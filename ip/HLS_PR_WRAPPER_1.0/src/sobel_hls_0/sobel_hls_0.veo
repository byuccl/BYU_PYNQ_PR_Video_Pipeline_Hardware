// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:hls:sobel_hls:1.0
// IP Revision: 1803161117

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
sobel_hls_0 your_instance_name (
  .ap_clk(ap_clk),                              // input wire ap_clk
  .ap_rst_n(ap_rst_n),                          // input wire ap_rst_n
  .stream_in_24_TVALID(stream_in_24_TVALID),    // input wire stream_in_24_TVALID
  .stream_in_24_TREADY(stream_in_24_TREADY),    // output wire stream_in_24_TREADY
  .stream_in_24_TDATA(stream_in_24_TDATA),      // input wire [23 : 0] stream_in_24_TDATA
  .stream_in_24_TUSER(stream_in_24_TUSER),      // input wire [65 : 0] stream_in_24_TUSER
  .stream_in_24_TLAST(stream_in_24_TLAST),      // input wire [0 : 0] stream_in_24_TLAST
  .stream_out_24_TVALID(stream_out_24_TVALID),  // output wire stream_out_24_TVALID
  .stream_out_24_TREADY(stream_out_24_TREADY),  // input wire stream_out_24_TREADY
  .stream_out_24_TDATA(stream_out_24_TDATA),    // output wire [23 : 0] stream_out_24_TDATA
  .stream_out_24_TLAST(stream_out_24_TLAST),    // output wire [0 : 0] stream_out_24_TLAST
  .stream_out_24_TUSER(stream_out_24_TUSER)    // output wire [0 : 0] stream_out_24_TUSER
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file sobel_hls_0.v when simulating
// the core, sobel_hls_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

