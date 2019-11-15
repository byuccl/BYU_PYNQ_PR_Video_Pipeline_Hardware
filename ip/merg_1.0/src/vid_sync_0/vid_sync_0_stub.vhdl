-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Mar 27 13:06:41 2018
-- Host        : DESKTOP-128QUVQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/XUP/v2_1/PYNQ-master/boards/Pynq-Z1/base/ip_repo/merg_1.0/src/vid_sync_0/vid_sync_0_stub.vhdl
-- Design      : vid_sync_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vid_sync_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_a_24_TVALID : in STD_LOGIC;
    stream_in_a_24_TREADY : out STD_LOGIC;
    stream_in_a_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_a_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_a_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_b_24_TVALID : in STD_LOGIC;
    stream_in_b_24_TREADY : out STD_LOGIC;
    stream_in_b_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_b_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_b_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_a_24_TVALID : out STD_LOGIC;
    stream_out_a_24_TREADY : in STD_LOGIC;
    stream_out_a_24_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_out_a_24_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_a_24_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_b_24_TVALID : out STD_LOGIC;
    stream_out_b_24_TREADY : in STD_LOGIC;
    stream_out_b_24_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_out_b_24_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_b_24_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end vid_sync_0;

architecture stub of vid_sync_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,stream_in_a_24_TVALID,stream_in_a_24_TREADY,stream_in_a_24_TDATA[23:0],stream_in_a_24_TLAST[0:0],stream_in_a_24_TUSER[0:0],stream_in_b_24_TVALID,stream_in_b_24_TREADY,stream_in_b_24_TDATA[23:0],stream_in_b_24_TLAST[0:0],stream_in_b_24_TUSER[0:0],stream_out_a_24_TVALID,stream_out_a_24_TREADY,stream_out_a_24_TDATA[23:0],stream_out_a_24_TLAST[0:0],stream_out_a_24_TUSER[0:0],stream_out_b_24_TVALID,stream_out_b_24_TREADY,stream_out_b_24_TDATA[23:0],stream_out_b_24_TLAST[0:0],stream_out_b_24_TUSER[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "vid_sync,Vivado 2017.4";
begin
end;
