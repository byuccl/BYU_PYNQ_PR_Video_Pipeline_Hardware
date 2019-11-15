-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: Wilson:hls:vid_sync:1.0
-- IP Revision: 1803291714

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY vid_sync_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    stream_in_a_24_TVALID : IN STD_LOGIC;
    stream_in_a_24_TREADY : OUT STD_LOGIC;
    stream_in_a_24_TDATA : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    stream_in_a_24_TUSER : IN STD_LOGIC_VECTOR(65 DOWNTO 0);
    stream_in_a_24_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    stream_in_b_24_TVALID : IN STD_LOGIC;
    stream_in_b_24_TREADY : OUT STD_LOGIC;
    stream_in_b_24_TDATA : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    stream_in_b_24_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    stream_in_b_24_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    stream_out_a_24_TVALID : OUT STD_LOGIC;
    stream_out_a_24_TREADY : IN STD_LOGIC;
    stream_out_a_24_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    stream_out_a_24_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    stream_out_a_24_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    stream_out_b_24_TVALID : OUT STD_LOGIC;
    stream_out_b_24_TREADY : IN STD_LOGIC;
    stream_out_b_24_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    stream_out_b_24_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    stream_out_b_24_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END vid_sync_0;

ARCHITECTURE vid_sync_0_arch OF vid_sync_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF vid_sync_0_arch: ARCHITECTURE IS "yes";
  COMPONENT vid_sync IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      stream_in_a_24_TVALID : IN STD_LOGIC;
      stream_in_a_24_TREADY : OUT STD_LOGIC;
      stream_in_a_24_TDATA : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      stream_in_a_24_TUSER : IN STD_LOGIC_VECTOR(65 DOWNTO 0);
      stream_in_a_24_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      stream_in_b_24_TVALID : IN STD_LOGIC;
      stream_in_b_24_TREADY : OUT STD_LOGIC;
      stream_in_b_24_TDATA : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      stream_in_b_24_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      stream_in_b_24_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      stream_out_a_24_TVALID : OUT STD_LOGIC;
      stream_out_a_24_TREADY : IN STD_LOGIC;
      stream_out_a_24_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      stream_out_a_24_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      stream_out_a_24_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      stream_out_b_24_TVALID : OUT STD_LOGIC;
      stream_out_b_24_TREADY : IN STD_LOGIC;
      stream_out_b_24_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      stream_out_b_24_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      stream_out_b_24_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT vid_sync;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_b_24_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_b_24 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_b_24_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_b_24 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_b_24_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_b_24 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_b_24_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_b_24 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF stream_out_b_24_TVALID: SIGNAL IS "XIL_INTERFACENAME stream_out_b_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_b_24_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_b_24 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_a_24_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_a_24 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_a_24_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_a_24 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_a_24_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_a_24 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_a_24_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_a_24 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF stream_out_a_24_TVALID: SIGNAL IS "XIL_INTERFACENAME stream_out_a_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF stream_out_a_24_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_out_a_24 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_b_24_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_b_24 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_b_24_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_b_24 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_b_24_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_b_24 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_b_24_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_b_24 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF stream_in_b_24_TVALID: SIGNAL IS "XIL_INTERFACENAME stream_in_b_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_b_24_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_b_24 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_a_24_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_a_24 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_a_24_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_a_24 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_a_24_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_a_24 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_a_24_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_a_24 TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF stream_in_a_24_TVALID: SIGNAL IS "XIL_INTERFACENAME stream_in_a_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 66, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 66} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF stream_in_a_24_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 stream_in_a_24 TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_in_a_24:stream_in_b_24:stream_out_a_24:stream_out_b_24, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : vid_sync
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      stream_in_a_24_TVALID => stream_in_a_24_TVALID,
      stream_in_a_24_TREADY => stream_in_a_24_TREADY,
      stream_in_a_24_TDATA => stream_in_a_24_TDATA,
      stream_in_a_24_TUSER => stream_in_a_24_TUSER,
      stream_in_a_24_TLAST => stream_in_a_24_TLAST,
      stream_in_b_24_TVALID => stream_in_b_24_TVALID,
      stream_in_b_24_TREADY => stream_in_b_24_TREADY,
      stream_in_b_24_TDATA => stream_in_b_24_TDATA,
      stream_in_b_24_TLAST => stream_in_b_24_TLAST,
      stream_in_b_24_TUSER => stream_in_b_24_TUSER,
      stream_out_a_24_TVALID => stream_out_a_24_TVALID,
      stream_out_a_24_TREADY => stream_out_a_24_TREADY,
      stream_out_a_24_TDATA => stream_out_a_24_TDATA,
      stream_out_a_24_TLAST => stream_out_a_24_TLAST,
      stream_out_a_24_TUSER => stream_out_a_24_TUSER,
      stream_out_b_24_TVALID => stream_out_b_24_TVALID,
      stream_out_b_24_TREADY => stream_out_b_24_TREADY,
      stream_out_b_24_TDATA => stream_out_b_24_TDATA,
      stream_out_b_24_TLAST => stream_out_b_24_TLAST,
      stream_out_b_24_TUSER => stream_out_b_24_TUSER
    );
END vid_sync_0_arch;
