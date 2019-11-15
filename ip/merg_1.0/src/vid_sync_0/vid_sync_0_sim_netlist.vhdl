-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Tue Mar 27 13:06:41 2018
-- Host        : DESKTOP-128QUVQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/XUP/v2_1/PYNQ-master/boards/Pynq-Z1/base/ip_repo/merg_1.0/src/vid_sync_0/vid_sync_0_sim_netlist.vhdl
-- Design      : vid_sync_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vid_sync_0_vid_sync is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_a_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_a_24_TVALID : in STD_LOGIC;
    stream_in_a_24_TREADY : out STD_LOGIC;
    stream_in_a_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_a_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_b_24_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_b_24_TVALID : in STD_LOGIC;
    stream_in_b_24_TREADY : out STD_LOGIC;
    stream_in_b_24_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_b_24_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_a_24_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_out_a_24_TVALID : out STD_LOGIC;
    stream_out_a_24_TREADY : in STD_LOGIC;
    stream_out_a_24_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_a_24_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_b_24_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_out_b_24_TVALID : out STD_LOGIC;
    stream_out_b_24_TREADY : in STD_LOGIC;
    stream_out_b_24_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_b_24_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vid_sync_0_vid_sync : entity is "vid_sync";
end vid_sync_0_vid_sync;

architecture STRUCTURE of vid_sync_0_vid_sync is
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal \^stream_in_a_24_tready\ : STD_LOGIC;
  signal stream_in_a_24_data_V_0_ack_in : STD_LOGIC;
  signal stream_in_a_24_data_V_0_data_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_in_a_24_data_V_0_load_A : STD_LOGIC;
  signal stream_in_a_24_data_V_0_load_B : STD_LOGIC;
  signal stream_in_a_24_data_V_0_payload_A : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_in_a_24_data_V_0_payload_B : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_in_a_24_data_V_0_sel : STD_LOGIC;
  signal stream_in_a_24_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_in_a_24_data_V_0_sel_wr : STD_LOGIC;
  signal stream_in_a_24_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal stream_in_a_24_data_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \stream_in_a_24_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_a_24_data_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_in_a_24_last_V_0_data_out : STD_LOGIC;
  signal stream_in_a_24_last_V_0_payload_A : STD_LOGIC;
  signal \stream_in_a_24_last_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_a_24_last_V_0_payload_B : STD_LOGIC;
  signal \stream_in_a_24_last_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_a_24_last_V_0_sel : STD_LOGIC;
  signal stream_in_a_24_last_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_in_a_24_last_V_0_sel_wr : STD_LOGIC;
  signal stream_in_a_24_last_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal stream_in_a_24_last_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \stream_in_a_24_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_a_24_last_V_0_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \stream_in_a_24_last_V_0_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \stream_in_a_24_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_in_a_24_user_V_0_ack_in : STD_LOGIC;
  signal stream_in_a_24_user_V_0_data_out : STD_LOGIC;
  signal stream_in_a_24_user_V_0_payload_A : STD_LOGIC;
  signal \stream_in_a_24_user_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_a_24_user_V_0_payload_B : STD_LOGIC;
  signal \stream_in_a_24_user_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_in_a_24_user_V_0_sel : STD_LOGIC;
  signal stream_in_a_24_user_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_in_a_24_user_V_0_sel_wr : STD_LOGIC;
  signal stream_in_a_24_user_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal stream_in_a_24_user_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \stream_in_a_24_user_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_a_24_user_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^stream_in_b_24_tready\ : STD_LOGIC;
  signal stream_in_b_24_data_V_0_ack_in : STD_LOGIC;
  signal stream_in_b_24_data_V_0_load_A : STD_LOGIC;
  signal stream_in_b_24_data_V_0_load_B : STD_LOGIC;
  signal stream_in_b_24_data_V_0_payload_A : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_in_b_24_data_V_0_payload_B : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_in_b_24_data_V_0_sel : STD_LOGIC;
  signal stream_in_b_24_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_in_b_24_data_V_0_sel_wr : STD_LOGIC;
  signal stream_in_b_24_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal stream_in_b_24_data_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \stream_in_b_24_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_b_24_data_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_in_b_24_last_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \stream_in_b_24_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_in_b_24_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^stream_out_a_24_tvalid\ : STD_LOGIC;
  signal stream_out_a_24_data_V_1_ack_in : STD_LOGIC;
  signal stream_out_a_24_data_V_1_load_A : STD_LOGIC;
  signal stream_out_a_24_data_V_1_load_B : STD_LOGIC;
  signal stream_out_a_24_data_V_1_payload_A : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_out_a_24_data_V_1_payload_B : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_out_a_24_data_V_1_sel : STD_LOGIC;
  signal stream_out_a_24_data_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_a_24_data_V_1_sel_wr : STD_LOGIC;
  signal stream_out_a_24_data_V_1_sel_wr034_out : STD_LOGIC;
  signal stream_out_a_24_data_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_a_24_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_a_24_data_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_a_24_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_out_a_24_last_V_1_ack_in : STD_LOGIC;
  signal stream_out_a_24_last_V_1_payload_A : STD_LOGIC;
  signal \stream_out_a_24_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_a_24_last_V_1_payload_B : STD_LOGIC;
  signal \stream_out_a_24_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_a_24_last_V_1_sel : STD_LOGIC;
  signal stream_out_a_24_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_a_24_last_V_1_sel_wr : STD_LOGIC;
  signal stream_out_a_24_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_a_24_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_a_24_last_V_1_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \stream_out_a_24_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_a_24_user_V_1_ack_in : STD_LOGIC;
  signal stream_out_a_24_user_V_1_payload_A : STD_LOGIC;
  signal \stream_out_a_24_user_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_a_24_user_V_1_payload_B : STD_LOGIC;
  signal \stream_out_a_24_user_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_a_24_user_V_1_sel : STD_LOGIC;
  signal stream_out_a_24_user_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_a_24_user_V_1_sel_wr : STD_LOGIC;
  signal stream_out_a_24_user_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_a_24_user_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_a_24_user_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_a_24_user_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^stream_out_b_24_tvalid\ : STD_LOGIC;
  signal stream_out_b_24_data_V_1_ack_in : STD_LOGIC;
  signal stream_out_b_24_data_V_1_load_A : STD_LOGIC;
  signal stream_out_b_24_data_V_1_load_B : STD_LOGIC;
  signal stream_out_b_24_data_V_1_payload_A : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_out_b_24_data_V_1_payload_B : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stream_out_b_24_data_V_1_sel : STD_LOGIC;
  signal stream_out_b_24_data_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_b_24_data_V_1_sel_wr : STD_LOGIC;
  signal stream_out_b_24_data_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_b_24_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_b_24_data_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_b_24_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal stream_out_b_24_last_V_1_ack_in : STD_LOGIC;
  signal stream_out_b_24_last_V_1_payload_A : STD_LOGIC;
  signal \stream_out_b_24_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_b_24_last_V_1_payload_B : STD_LOGIC;
  signal \stream_out_b_24_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_b_24_last_V_1_sel : STD_LOGIC;
  signal stream_out_b_24_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_b_24_last_V_1_sel_wr : STD_LOGIC;
  signal stream_out_b_24_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_b_24_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_b_24_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_b_24_user_V_1_ack_in : STD_LOGIC;
  signal stream_out_b_24_user_V_1_payload_A : STD_LOGIC;
  signal \stream_out_b_24_user_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_b_24_user_V_1_payload_B : STD_LOGIC;
  signal \stream_out_b_24_user_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal stream_out_b_24_user_V_1_sel : STD_LOGIC;
  signal stream_out_b_24_user_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal stream_out_b_24_user_V_1_sel_wr : STD_LOGIC;
  signal stream_out_b_24_user_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \stream_out_b_24_user_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_b_24_user_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_out_b_24_user_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal tmpa_V_1_fu_146_p3 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tmpd_V : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal vid_id : STD_LOGIC;
  signal vid_id_assign_fu_140_p2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter2_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of stream_in_a_24_data_V_0_sel_rd_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of stream_in_a_24_last_V_0_sel_wr_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of stream_in_a_24_user_V_0_sel_wr_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of stream_in_b_24_data_V_0_sel_rd_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[0]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[10]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[11]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[12]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[13]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[14]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[15]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[16]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[17]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[18]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[19]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[1]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[20]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[21]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[22]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[2]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[3]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[4]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[5]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[6]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[7]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[8]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \stream_out_a_24_TDATA[9]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of stream_out_a_24_data_V_1_sel_rd_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of stream_out_a_24_last_V_1_sel_rd_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of stream_out_a_24_user_V_1_sel_rd_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of stream_out_a_24_user_V_1_sel_wr_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[0]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[10]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[11]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[12]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[13]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[14]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[15]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[16]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[17]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[18]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[19]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[1]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[20]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[21]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[22]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[23]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[2]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[3]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[4]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[5]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[6]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[7]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[8]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \stream_out_b_24_TDATA[9]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \stream_out_b_24_TLAST[0]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of stream_out_b_24_data_V_1_sel_rd_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of stream_out_b_24_data_V_1_sel_wr_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of stream_out_b_24_last_V_1_sel_rd_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of stream_out_b_24_user_V_1_sel_rd_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tmpc_V[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmpc_V[10]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tmpc_V[11]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tmpc_V[12]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tmpc_V[13]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmpc_V[14]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmpc_V[15]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tmpc_V[16]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmpc_V[17]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmpc_V[18]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmpc_V[19]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tmpc_V[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tmpc_V[20]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmpc_V[21]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmpc_V[22]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tmpc_V[22]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tmpc_V[23]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tmpc_V[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmpc_V[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tmpc_V[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tmpc_V[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmpc_V[6]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmpc_V[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmpc_V[8]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmpc_V[9]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \vid_id[0]_i_2\ : label is "soft_lutpair1";
begin
  stream_in_a_24_TREADY <= \^stream_in_a_24_tready\;
  stream_in_b_24_TREADY <= \^stream_in_b_24_tready\;
  stream_out_a_24_TVALID <= \^stream_out_a_24_tvalid\;
  stream_out_b_24_TVALID <= \^stream_out_b_24_tvalid\;
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_enable_reg_pp0_iter1_i_1_n_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_0,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I3 => ap_enable_reg_pp0_iter2,
      O => ap_enable_reg_pp0_iter2_i_1_n_0
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_0,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_rst_n_inv
    );
\stream_in_a_24_data_V_0_payload_A[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \stream_in_a_24_data_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_a_24_data_V_0_ack_in,
      I2 => stream_in_a_24_data_V_0_sel_wr,
      O => stream_in_a_24_data_V_0_load_A
    );
\stream_in_a_24_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(0),
      Q => stream_in_a_24_data_V_0_payload_A(0),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(10),
      Q => stream_in_a_24_data_V_0_payload_A(10),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(11),
      Q => stream_in_a_24_data_V_0_payload_A(11),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(12),
      Q => stream_in_a_24_data_V_0_payload_A(12),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(13),
      Q => stream_in_a_24_data_V_0_payload_A(13),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(14),
      Q => stream_in_a_24_data_V_0_payload_A(14),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(15),
      Q => stream_in_a_24_data_V_0_payload_A(15),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(16),
      Q => stream_in_a_24_data_V_0_payload_A(16),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(17),
      Q => stream_in_a_24_data_V_0_payload_A(17),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(18),
      Q => stream_in_a_24_data_V_0_payload_A(18),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(19),
      Q => stream_in_a_24_data_V_0_payload_A(19),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(1),
      Q => stream_in_a_24_data_V_0_payload_A(1),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(20),
      Q => stream_in_a_24_data_V_0_payload_A(20),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(21),
      Q => stream_in_a_24_data_V_0_payload_A(21),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(22),
      Q => stream_in_a_24_data_V_0_payload_A(22),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(23),
      Q => stream_in_a_24_data_V_0_payload_A(23),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(2),
      Q => stream_in_a_24_data_V_0_payload_A(2),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(3),
      Q => stream_in_a_24_data_V_0_payload_A(3),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(4),
      Q => stream_in_a_24_data_V_0_payload_A(4),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(5),
      Q => stream_in_a_24_data_V_0_payload_A(5),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(6),
      Q => stream_in_a_24_data_V_0_payload_A(6),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(7),
      Q => stream_in_a_24_data_V_0_payload_A(7),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(8),
      Q => stream_in_a_24_data_V_0_payload_A(8),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_A,
      D => stream_in_a_24_TDATA(9),
      Q => stream_in_a_24_data_V_0_payload_A(9),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \stream_in_a_24_data_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_a_24_data_V_0_ack_in,
      I2 => stream_in_a_24_data_V_0_sel_wr,
      O => stream_in_a_24_data_V_0_load_B
    );
\stream_in_a_24_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(0),
      Q => stream_in_a_24_data_V_0_payload_B(0),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(10),
      Q => stream_in_a_24_data_V_0_payload_B(10),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(11),
      Q => stream_in_a_24_data_V_0_payload_B(11),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(12),
      Q => stream_in_a_24_data_V_0_payload_B(12),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(13),
      Q => stream_in_a_24_data_V_0_payload_B(13),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(14),
      Q => stream_in_a_24_data_V_0_payload_B(14),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(15),
      Q => stream_in_a_24_data_V_0_payload_B(15),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(16),
      Q => stream_in_a_24_data_V_0_payload_B(16),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(17),
      Q => stream_in_a_24_data_V_0_payload_B(17),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(18),
      Q => stream_in_a_24_data_V_0_payload_B(18),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(19),
      Q => stream_in_a_24_data_V_0_payload_B(19),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(1),
      Q => stream_in_a_24_data_V_0_payload_B(1),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(20),
      Q => stream_in_a_24_data_V_0_payload_B(20),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(21),
      Q => stream_in_a_24_data_V_0_payload_B(21),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(22),
      Q => stream_in_a_24_data_V_0_payload_B(22),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(23),
      Q => stream_in_a_24_data_V_0_payload_B(23),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(2),
      Q => stream_in_a_24_data_V_0_payload_B(2),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(3),
      Q => stream_in_a_24_data_V_0_payload_B(3),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(4),
      Q => stream_in_a_24_data_V_0_payload_B(4),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(5),
      Q => stream_in_a_24_data_V_0_payload_B(5),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(6),
      Q => stream_in_a_24_data_V_0_payload_B(6),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(7),
      Q => stream_in_a_24_data_V_0_payload_B(7),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(8),
      Q => stream_in_a_24_data_V_0_payload_B(8),
      R => '0'
    );
\stream_in_a_24_data_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_a_24_data_V_0_load_B,
      D => stream_in_a_24_TDATA(9),
      Q => stream_in_a_24_data_V_0_payload_B(9),
      R => '0'
    );
stream_in_a_24_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => stream_in_a_24_data_V_0_sel,
      O => stream_in_a_24_data_V_0_sel_rd_i_1_n_0
    );
stream_in_a_24_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_data_V_0_sel_rd_i_1_n_0,
      Q => stream_in_a_24_data_V_0_sel,
      R => ap_rst_n_inv
    );
stream_in_a_24_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_ack_in,
      I1 => stream_in_a_24_TVALID,
      I2 => stream_in_a_24_data_V_0_sel_wr,
      O => stream_in_a_24_data_V_0_sel_wr_i_1_n_0
    );
stream_in_a_24_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_data_V_0_sel_wr_i_1_n_0,
      Q => stream_in_a_24_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\stream_in_a_24_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800D800F800F800"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_ack_in,
      I1 => stream_in_a_24_TVALID,
      I2 => \stream_in_a_24_data_V_0_state_reg_n_0_[0]\,
      I3 => ap_rst_n,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      O => \stream_in_a_24_data_V_0_state[0]_i_1_n_0\
    );
\stream_in_a_24_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFF5D5D5D5D5D5D"
    )
        port map (
      I0 => \stream_in_a_24_data_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_a_24_data_V_0_ack_in,
      I2 => stream_in_a_24_TVALID,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I5 => ap_enable_reg_pp0_iter1,
      O => stream_in_a_24_data_V_0_state(1)
    );
\stream_in_a_24_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_a_24_data_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_a_24_data_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_a_24_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_data_V_0_state(1),
      Q => stream_in_a_24_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\stream_in_a_24_last_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => stream_in_a_24_TLAST(0),
      I1 => \stream_in_a_24_last_V_0_state_reg_n_0_[0]\,
      I2 => \^stream_in_a_24_tready\,
      I3 => stream_in_a_24_last_V_0_sel_wr,
      I4 => stream_in_a_24_last_V_0_payload_A,
      O => \stream_in_a_24_last_V_0_payload_A[0]_i_1_n_0\
    );
\stream_in_a_24_last_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_a_24_last_V_0_payload_A[0]_i_1_n_0\,
      Q => stream_in_a_24_last_V_0_payload_A,
      R => '0'
    );
\stream_in_a_24_last_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => stream_in_a_24_TLAST(0),
      I1 => \stream_in_a_24_last_V_0_state_reg_n_0_[0]\,
      I2 => \^stream_in_a_24_tready\,
      I3 => stream_in_a_24_last_V_0_sel_wr,
      I4 => stream_in_a_24_last_V_0_payload_B,
      O => \stream_in_a_24_last_V_0_payload_B[0]_i_1_n_0\
    );
\stream_in_a_24_last_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_a_24_last_V_0_payload_B[0]_i_1_n_0\,
      Q => stream_in_a_24_last_V_0_payload_B,
      R => '0'
    );
stream_in_a_24_last_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => stream_in_a_24_last_V_0_sel,
      O => stream_in_a_24_last_V_0_sel_rd_i_1_n_0
    );
stream_in_a_24_last_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_last_V_0_sel_rd_i_1_n_0,
      Q => stream_in_a_24_last_V_0_sel,
      R => ap_rst_n_inv
    );
stream_in_a_24_last_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^stream_in_a_24_tready\,
      I1 => stream_in_a_24_TVALID,
      I2 => stream_in_a_24_last_V_0_sel_wr,
      O => stream_in_a_24_last_V_0_sel_wr_i_1_n_0
    );
stream_in_a_24_last_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_last_V_0_sel_wr_i_1_n_0,
      Q => stream_in_a_24_last_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\stream_in_a_24_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800D800F800F800"
    )
        port map (
      I0 => \^stream_in_a_24_tready\,
      I1 => stream_in_a_24_TVALID,
      I2 => \stream_in_a_24_last_V_0_state_reg_n_0_[0]\,
      I3 => ap_rst_n,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      O => \stream_in_a_24_last_V_0_state[0]_i_1_n_0\
    );
\stream_in_a_24_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\stream_in_a_24_last_V_0_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFF5D5D5D5D5D5D"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state_reg_n_0_[0]\,
      I1 => \^stream_in_a_24_tready\,
      I2 => stream_in_a_24_TVALID,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I5 => ap_enable_reg_pp0_iter1,
      O => stream_in_a_24_last_V_0_state(1)
    );
\stream_in_a_24_last_V_0_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070FFF0FFF0FFF0"
    )
        port map (
      I0 => \stream_in_b_24_data_V_0_state_reg_n_0_[0]\,
      I1 => \stream_in_a_24_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_enable_reg_pp0_iter2,
      I4 => stream_out_a_24_data_V_1_ack_in,
      I5 => stream_out_b_24_data_V_1_ack_in,
      O => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\
    );
\stream_in_a_24_last_V_0_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => stream_out_b_24_user_V_1_ack_in,
      I1 => stream_out_b_24_last_V_1_ack_in,
      I2 => stream_out_a_24_user_V_1_ack_in,
      I3 => stream_out_a_24_last_V_1_ack_in,
      I4 => ap_enable_reg_pp0_iter2,
      O => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\
    );
\stream_in_a_24_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_a_24_last_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_a_24_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_a_24_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_last_V_0_state(1),
      Q => \^stream_in_a_24_tready\,
      R => ap_rst_n_inv
    );
\stream_in_a_24_user_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => stream_in_a_24_TUSER(0),
      I1 => \stream_in_a_24_user_V_0_state_reg_n_0_[0]\,
      I2 => stream_in_a_24_user_V_0_ack_in,
      I3 => stream_in_a_24_user_V_0_sel_wr,
      I4 => stream_in_a_24_user_V_0_payload_A,
      O => \stream_in_a_24_user_V_0_payload_A[0]_i_1_n_0\
    );
\stream_in_a_24_user_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_a_24_user_V_0_payload_A[0]_i_1_n_0\,
      Q => stream_in_a_24_user_V_0_payload_A,
      R => '0'
    );
\stream_in_a_24_user_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => stream_in_a_24_TUSER(0),
      I1 => \stream_in_a_24_user_V_0_state_reg_n_0_[0]\,
      I2 => stream_in_a_24_user_V_0_ack_in,
      I3 => stream_in_a_24_user_V_0_sel_wr,
      I4 => stream_in_a_24_user_V_0_payload_B,
      O => \stream_in_a_24_user_V_0_payload_B[0]_i_1_n_0\
    );
\stream_in_a_24_user_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_a_24_user_V_0_payload_B[0]_i_1_n_0\,
      Q => stream_in_a_24_user_V_0_payload_B,
      R => '0'
    );
stream_in_a_24_user_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \stream_in_a_24_user_V_0_state_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => stream_in_a_24_user_V_0_sel,
      O => stream_in_a_24_user_V_0_sel_rd_i_1_n_0
    );
stream_in_a_24_user_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_user_V_0_sel_rd_i_1_n_0,
      Q => stream_in_a_24_user_V_0_sel,
      R => ap_rst_n_inv
    );
stream_in_a_24_user_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_in_a_24_user_V_0_ack_in,
      I1 => stream_in_a_24_TVALID,
      I2 => stream_in_a_24_user_V_0_sel_wr,
      O => stream_in_a_24_user_V_0_sel_wr_i_1_n_0
    );
stream_in_a_24_user_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_user_V_0_sel_wr_i_1_n_0,
      Q => stream_in_a_24_user_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\stream_in_a_24_user_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800D800F800F800"
    )
        port map (
      I0 => stream_in_a_24_user_V_0_ack_in,
      I1 => stream_in_a_24_TVALID,
      I2 => \stream_in_a_24_user_V_0_state_reg_n_0_[0]\,
      I3 => ap_rst_n,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      O => \stream_in_a_24_user_V_0_state[0]_i_1_n_0\
    );
\stream_in_a_24_user_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFF5D5D5D5D5D5D"
    )
        port map (
      I0 => \stream_in_a_24_user_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_a_24_user_V_0_ack_in,
      I2 => stream_in_a_24_TVALID,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I5 => ap_enable_reg_pp0_iter1,
      O => stream_in_a_24_user_V_0_state(1)
    );
\stream_in_a_24_user_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_a_24_user_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_a_24_user_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_a_24_user_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_a_24_user_V_0_state(1),
      Q => stream_in_a_24_user_V_0_ack_in,
      R => ap_rst_n_inv
    );
\stream_in_b_24_data_V_0_payload_A[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \stream_in_b_24_data_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_b_24_data_V_0_ack_in,
      I2 => stream_in_b_24_data_V_0_sel_wr,
      O => stream_in_b_24_data_V_0_load_A
    );
\stream_in_b_24_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(0),
      Q => stream_in_b_24_data_V_0_payload_A(0),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(10),
      Q => stream_in_b_24_data_V_0_payload_A(10),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(11),
      Q => stream_in_b_24_data_V_0_payload_A(11),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(12),
      Q => stream_in_b_24_data_V_0_payload_A(12),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(13),
      Q => stream_in_b_24_data_V_0_payload_A(13),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(14),
      Q => stream_in_b_24_data_V_0_payload_A(14),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(15),
      Q => stream_in_b_24_data_V_0_payload_A(15),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(16),
      Q => stream_in_b_24_data_V_0_payload_A(16),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(17),
      Q => stream_in_b_24_data_V_0_payload_A(17),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(18),
      Q => stream_in_b_24_data_V_0_payload_A(18),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(19),
      Q => stream_in_b_24_data_V_0_payload_A(19),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(1),
      Q => stream_in_b_24_data_V_0_payload_A(1),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(20),
      Q => stream_in_b_24_data_V_0_payload_A(20),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(21),
      Q => stream_in_b_24_data_V_0_payload_A(21),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(22),
      Q => stream_in_b_24_data_V_0_payload_A(22),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(23),
      Q => stream_in_b_24_data_V_0_payload_A(23),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(2),
      Q => stream_in_b_24_data_V_0_payload_A(2),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(3),
      Q => stream_in_b_24_data_V_0_payload_A(3),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(4),
      Q => stream_in_b_24_data_V_0_payload_A(4),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(5),
      Q => stream_in_b_24_data_V_0_payload_A(5),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(6),
      Q => stream_in_b_24_data_V_0_payload_A(6),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(7),
      Q => stream_in_b_24_data_V_0_payload_A(7),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(8),
      Q => stream_in_b_24_data_V_0_payload_A(8),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_A,
      D => stream_in_b_24_TDATA(9),
      Q => stream_in_b_24_data_V_0_payload_A(9),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \stream_in_b_24_data_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_b_24_data_V_0_ack_in,
      I2 => stream_in_b_24_data_V_0_sel_wr,
      O => stream_in_b_24_data_V_0_load_B
    );
\stream_in_b_24_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(0),
      Q => stream_in_b_24_data_V_0_payload_B(0),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(10),
      Q => stream_in_b_24_data_V_0_payload_B(10),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(11),
      Q => stream_in_b_24_data_V_0_payload_B(11),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(12),
      Q => stream_in_b_24_data_V_0_payload_B(12),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(13),
      Q => stream_in_b_24_data_V_0_payload_B(13),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(14),
      Q => stream_in_b_24_data_V_0_payload_B(14),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(15),
      Q => stream_in_b_24_data_V_0_payload_B(15),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(16),
      Q => stream_in_b_24_data_V_0_payload_B(16),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(17),
      Q => stream_in_b_24_data_V_0_payload_B(17),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(18),
      Q => stream_in_b_24_data_V_0_payload_B(18),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(19),
      Q => stream_in_b_24_data_V_0_payload_B(19),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(1),
      Q => stream_in_b_24_data_V_0_payload_B(1),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(20),
      Q => stream_in_b_24_data_V_0_payload_B(20),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(21),
      Q => stream_in_b_24_data_V_0_payload_B(21),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(22),
      Q => stream_in_b_24_data_V_0_payload_B(22),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(23),
      Q => stream_in_b_24_data_V_0_payload_B(23),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(2),
      Q => stream_in_b_24_data_V_0_payload_B(2),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(3),
      Q => stream_in_b_24_data_V_0_payload_B(3),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(4),
      Q => stream_in_b_24_data_V_0_payload_B(4),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(5),
      Q => stream_in_b_24_data_V_0_payload_B(5),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(6),
      Q => stream_in_b_24_data_V_0_payload_B(6),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(7),
      Q => stream_in_b_24_data_V_0_payload_B(7),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(8),
      Q => stream_in_b_24_data_V_0_payload_B(8),
      R => '0'
    );
\stream_in_b_24_data_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_in_b_24_data_V_0_load_B,
      D => stream_in_b_24_TDATA(9),
      Q => stream_in_b_24_data_V_0_payload_B(9),
      R => '0'
    );
stream_in_b_24_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => stream_in_b_24_data_V_0_sel,
      O => stream_in_b_24_data_V_0_sel_rd_i_1_n_0
    );
stream_in_b_24_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_b_24_data_V_0_sel_rd_i_1_n_0,
      Q => stream_in_b_24_data_V_0_sel,
      R => ap_rst_n_inv
    );
stream_in_b_24_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_ack_in,
      I1 => stream_in_b_24_TVALID,
      I2 => stream_in_b_24_data_V_0_sel_wr,
      O => stream_in_b_24_data_V_0_sel_wr_i_1_n_0
    );
stream_in_b_24_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_b_24_data_V_0_sel_wr_i_1_n_0,
      Q => stream_in_b_24_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\stream_in_b_24_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800D800F800F800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_ack_in,
      I1 => stream_in_b_24_TVALID,
      I2 => \stream_in_b_24_data_V_0_state_reg_n_0_[0]\,
      I3 => ap_rst_n,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      O => \stream_in_b_24_data_V_0_state[0]_i_1_n_0\
    );
\stream_in_b_24_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFF5D5D5D5D5D5D"
    )
        port map (
      I0 => \stream_in_b_24_data_V_0_state_reg_n_0_[0]\,
      I1 => stream_in_b_24_data_V_0_ack_in,
      I2 => stream_in_b_24_TVALID,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I5 => ap_enable_reg_pp0_iter1,
      O => stream_in_b_24_data_V_0_state(1)
    );
\stream_in_b_24_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_b_24_data_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_b_24_data_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_b_24_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_b_24_data_V_0_state(1),
      Q => stream_in_b_24_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\stream_in_b_24_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800D800F800F800"
    )
        port map (
      I0 => \^stream_in_b_24_tready\,
      I1 => stream_in_b_24_TVALID,
      I2 => \stream_in_b_24_last_V_0_state_reg_n_0_[0]\,
      I3 => ap_rst_n,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      O => \stream_in_b_24_last_V_0_state[0]_i_1_n_0\
    );
\stream_in_b_24_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFF5D5D5D5D5D5D"
    )
        port map (
      I0 => \stream_in_b_24_last_V_0_state_reg_n_0_[0]\,
      I1 => \^stream_in_b_24_tready\,
      I2 => stream_in_b_24_TVALID,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I5 => ap_enable_reg_pp0_iter1,
      O => stream_in_b_24_last_V_0_state(1)
    );
\stream_in_b_24_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_in_b_24_last_V_0_state[0]_i_1_n_0\,
      Q => \stream_in_b_24_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_in_b_24_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_in_b_24_last_V_0_state(1),
      Q => \^stream_in_b_24_tready\,
      R => ap_rst_n_inv
    );
\stream_out_a_24_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(0),
      I1 => stream_out_a_24_data_V_1_payload_A(0),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(0)
    );
\stream_out_a_24_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(10),
      I1 => stream_out_a_24_data_V_1_payload_A(10),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(10)
    );
\stream_out_a_24_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(11),
      I1 => stream_out_a_24_data_V_1_payload_A(11),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(11)
    );
\stream_out_a_24_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(12),
      I1 => stream_out_a_24_data_V_1_payload_A(12),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(12)
    );
\stream_out_a_24_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(13),
      I1 => stream_out_a_24_data_V_1_payload_A(13),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(13)
    );
\stream_out_a_24_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(14),
      I1 => stream_out_a_24_data_V_1_payload_A(14),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(14)
    );
\stream_out_a_24_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(15),
      I1 => stream_out_a_24_data_V_1_payload_A(15),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(15)
    );
\stream_out_a_24_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(16),
      I1 => stream_out_a_24_data_V_1_payload_A(16),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(16)
    );
\stream_out_a_24_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(17),
      I1 => stream_out_a_24_data_V_1_payload_A(17),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(17)
    );
\stream_out_a_24_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(18),
      I1 => stream_out_a_24_data_V_1_payload_A(18),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(18)
    );
\stream_out_a_24_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(19),
      I1 => stream_out_a_24_data_V_1_payload_A(19),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(19)
    );
\stream_out_a_24_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(1),
      I1 => stream_out_a_24_data_V_1_payload_A(1),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(1)
    );
\stream_out_a_24_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(20),
      I1 => stream_out_a_24_data_V_1_payload_A(20),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(20)
    );
\stream_out_a_24_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(21),
      I1 => stream_out_a_24_data_V_1_payload_A(21),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(21)
    );
\stream_out_a_24_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(22),
      I1 => stream_out_a_24_data_V_1_payload_A(22),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(22)
    );
\stream_out_a_24_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(23),
      I1 => stream_out_a_24_data_V_1_payload_A(23),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(23)
    );
\stream_out_a_24_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(2),
      I1 => stream_out_a_24_data_V_1_payload_A(2),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(2)
    );
\stream_out_a_24_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(3),
      I1 => stream_out_a_24_data_V_1_payload_A(3),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(3)
    );
\stream_out_a_24_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(4),
      I1 => stream_out_a_24_data_V_1_payload_A(4),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(4)
    );
\stream_out_a_24_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(5),
      I1 => stream_out_a_24_data_V_1_payload_A(5),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(5)
    );
\stream_out_a_24_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(6),
      I1 => stream_out_a_24_data_V_1_payload_A(6),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(6)
    );
\stream_out_a_24_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(7),
      I1 => stream_out_a_24_data_V_1_payload_A(7),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(7)
    );
\stream_out_a_24_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(8),
      I1 => stream_out_a_24_data_V_1_payload_A(8),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(8)
    );
\stream_out_a_24_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_a_24_data_V_1_payload_B(9),
      I1 => stream_out_a_24_data_V_1_payload_A(9),
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_TDATA(9)
    );
\stream_out_a_24_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_out_a_24_last_V_1_payload_B,
      I1 => stream_out_a_24_last_V_1_sel,
      I2 => stream_out_a_24_last_V_1_payload_A,
      O => stream_out_a_24_TLAST(0)
    );
\stream_out_a_24_TUSER[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_out_a_24_user_V_1_payload_B,
      I1 => stream_out_a_24_user_V_1_sel,
      I2 => stream_out_a_24_user_V_1_payload_A,
      O => stream_out_a_24_TUSER(0)
    );
\stream_out_a_24_data_V_1_payload_A[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \stream_out_a_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_a_24_data_V_1_ack_in,
      I2 => stream_out_a_24_data_V_1_sel_wr,
      O => stream_out_a_24_data_V_1_load_A
    );
\stream_out_a_24_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(0),
      Q => stream_out_a_24_data_V_1_payload_A(0),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(10),
      Q => stream_out_a_24_data_V_1_payload_A(10),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(11),
      Q => stream_out_a_24_data_V_1_payload_A(11),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(12),
      Q => stream_out_a_24_data_V_1_payload_A(12),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(13),
      Q => stream_out_a_24_data_V_1_payload_A(13),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(14),
      Q => stream_out_a_24_data_V_1_payload_A(14),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(15),
      Q => stream_out_a_24_data_V_1_payload_A(15),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(16),
      Q => stream_out_a_24_data_V_1_payload_A(16),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(17),
      Q => stream_out_a_24_data_V_1_payload_A(17),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(18),
      Q => stream_out_a_24_data_V_1_payload_A(18),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(19),
      Q => stream_out_a_24_data_V_1_payload_A(19),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(1),
      Q => stream_out_a_24_data_V_1_payload_A(1),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(20),
      Q => stream_out_a_24_data_V_1_payload_A(20),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(21),
      Q => stream_out_a_24_data_V_1_payload_A(21),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(22),
      Q => stream_out_a_24_data_V_1_payload_A(22),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(23),
      Q => stream_out_a_24_data_V_1_payload_A(23),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(2),
      Q => stream_out_a_24_data_V_1_payload_A(2),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(3),
      Q => stream_out_a_24_data_V_1_payload_A(3),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(4),
      Q => stream_out_a_24_data_V_1_payload_A(4),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(5),
      Q => stream_out_a_24_data_V_1_payload_A(5),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(6),
      Q => stream_out_a_24_data_V_1_payload_A(6),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(7),
      Q => stream_out_a_24_data_V_1_payload_A(7),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(8),
      Q => stream_out_a_24_data_V_1_payload_A(8),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_A,
      D => tmpd_V(9),
      Q => stream_out_a_24_data_V_1_payload_A(9),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \stream_out_a_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_a_24_data_V_1_ack_in,
      I2 => stream_out_a_24_data_V_1_sel_wr,
      O => stream_out_a_24_data_V_1_load_B
    );
\stream_out_a_24_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(0),
      Q => stream_out_a_24_data_V_1_payload_B(0),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(10),
      Q => stream_out_a_24_data_V_1_payload_B(10),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(11),
      Q => stream_out_a_24_data_V_1_payload_B(11),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(12),
      Q => stream_out_a_24_data_V_1_payload_B(12),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(13),
      Q => stream_out_a_24_data_V_1_payload_B(13),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(14),
      Q => stream_out_a_24_data_V_1_payload_B(14),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(15),
      Q => stream_out_a_24_data_V_1_payload_B(15),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(16),
      Q => stream_out_a_24_data_V_1_payload_B(16),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(17),
      Q => stream_out_a_24_data_V_1_payload_B(17),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(18),
      Q => stream_out_a_24_data_V_1_payload_B(18),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(19),
      Q => stream_out_a_24_data_V_1_payload_B(19),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(1),
      Q => stream_out_a_24_data_V_1_payload_B(1),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(20),
      Q => stream_out_a_24_data_V_1_payload_B(20),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(21),
      Q => stream_out_a_24_data_V_1_payload_B(21),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(22),
      Q => stream_out_a_24_data_V_1_payload_B(22),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(23),
      Q => stream_out_a_24_data_V_1_payload_B(23),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(2),
      Q => stream_out_a_24_data_V_1_payload_B(2),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(3),
      Q => stream_out_a_24_data_V_1_payload_B(3),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(4),
      Q => stream_out_a_24_data_V_1_payload_B(4),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(5),
      Q => stream_out_a_24_data_V_1_payload_B(5),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(6),
      Q => stream_out_a_24_data_V_1_payload_B(6),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(7),
      Q => stream_out_a_24_data_V_1_payload_B(7),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(8),
      Q => stream_out_a_24_data_V_1_payload_B(8),
      R => '0'
    );
\stream_out_a_24_data_V_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_load_B,
      D => tmpd_V(9),
      Q => stream_out_a_24_data_V_1_payload_B(9),
      R => '0'
    );
stream_out_a_24_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \stream_out_a_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_a_24_TREADY,
      I2 => stream_out_a_24_data_V_1_sel,
      O => stream_out_a_24_data_V_1_sel_rd_i_1_n_0
    );
stream_out_a_24_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_a_24_data_V_1_sel_rd_i_1_n_0,
      Q => stream_out_a_24_data_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_a_24_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => stream_out_a_24_data_V_1_sel_wr,
      O => stream_out_a_24_data_V_1_sel_wr_i_1_n_0
    );
stream_out_a_24_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_a_24_data_V_1_sel_wr_i_1_n_0,
      Q => stream_out_a_24_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_a_24_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF444400000000"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I1 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      I2 => stream_out_a_24_data_V_1_ack_in,
      I3 => stream_out_a_24_TREADY,
      I4 => \stream_out_a_24_data_V_1_state_reg_n_0_[0]\,
      I5 => ap_rst_n,
      O => \stream_out_a_24_data_V_1_state[0]_i_1_n_0\
    );
\stream_out_a_24_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \stream_out_a_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_a_24_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => stream_out_a_24_data_V_1_ack_in,
      O => \stream_out_a_24_data_V_1_state[1]_i_1_n_0\
    );
\stream_out_a_24_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_data_V_1_state[0]_i_1_n_0\,
      Q => \stream_out_a_24_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_out_a_24_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_data_V_1_state[1]_i_1_n_0\,
      Q => stream_out_a_24_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\stream_out_a_24_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => stream_in_a_24_last_V_0_data_out,
      I1 => \^stream_out_a_24_tvalid\,
      I2 => stream_out_a_24_last_V_1_ack_in,
      I3 => stream_out_a_24_last_V_1_sel_wr,
      I4 => stream_out_a_24_last_V_1_payload_A,
      O => \stream_out_a_24_last_V_1_payload_A[0]_i_1_n_0\
    );
\stream_out_a_24_last_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_last_V_0_payload_B,
      I1 => stream_in_a_24_last_V_0_sel,
      I2 => stream_in_a_24_last_V_0_payload_A,
      O => stream_in_a_24_last_V_0_data_out
    );
\stream_out_a_24_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_last_V_1_payload_A[0]_i_1_n_0\,
      Q => stream_out_a_24_last_V_1_payload_A,
      R => '0'
    );
\stream_out_a_24_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => stream_in_a_24_last_V_0_data_out,
      I1 => \^stream_out_a_24_tvalid\,
      I2 => stream_out_a_24_last_V_1_ack_in,
      I3 => stream_out_a_24_last_V_1_sel_wr,
      I4 => stream_out_a_24_last_V_1_payload_B,
      O => \stream_out_a_24_last_V_1_payload_B[0]_i_1_n_0\
    );
\stream_out_a_24_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_last_V_1_payload_B[0]_i_1_n_0\,
      Q => stream_out_a_24_last_V_1_payload_B,
      R => '0'
    );
stream_out_a_24_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^stream_out_a_24_tvalid\,
      I1 => stream_out_a_24_TREADY,
      I2 => stream_out_a_24_last_V_1_sel,
      O => stream_out_a_24_last_V_1_sel_rd_i_1_n_0
    );
stream_out_a_24_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_a_24_last_V_1_sel_rd_i_1_n_0,
      Q => stream_out_a_24_last_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_a_24_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I3 => stream_out_a_24_last_V_1_ack_in,
      I4 => stream_out_a_24_last_V_1_sel_wr,
      O => stream_out_a_24_last_V_1_sel_wr_i_1_n_0
    );
stream_out_a_24_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_a_24_last_V_1_sel_wr_i_1_n_0,
      Q => stream_out_a_24_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_a_24_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFA2A2A00000000"
    )
        port map (
      I0 => \^stream_out_a_24_tvalid\,
      I1 => stream_out_a_24_TREADY,
      I2 => stream_out_a_24_last_V_1_ack_in,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      I5 => ap_rst_n,
      O => \stream_out_a_24_last_V_1_state[0]_i_1_n_0\
    );
\stream_out_a_24_last_V_1_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555555500000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => stream_out_a_24_last_V_1_ack_in,
      I2 => stream_out_a_24_user_V_1_ack_in,
      I3 => stream_out_b_24_last_V_1_ack_in,
      I4 => stream_out_b_24_user_V_1_ack_in,
      I5 => ap_enable_reg_pp0_iter1,
      O => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\
    );
\stream_out_a_24_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF700FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I3 => stream_out_a_24_last_V_1_ack_in,
      I4 => stream_out_a_24_TREADY,
      I5 => \^stream_out_a_24_tvalid\,
      O => \stream_out_a_24_last_V_1_state[1]_i_1_n_0\
    );
\stream_out_a_24_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_last_V_1_state[0]_i_1_n_0\,
      Q => \^stream_out_a_24_tvalid\,
      R => '0'
    );
\stream_out_a_24_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_last_V_1_state[1]_i_1_n_0\,
      Q => stream_out_a_24_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\stream_out_a_24_user_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => stream_in_a_24_user_V_0_data_out,
      I1 => \stream_out_a_24_user_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_a_24_user_V_1_ack_in,
      I3 => stream_out_a_24_user_V_1_sel_wr,
      I4 => stream_out_a_24_user_V_1_payload_A,
      O => \stream_out_a_24_user_V_1_payload_A[0]_i_1_n_0\
    );
\stream_out_a_24_user_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_user_V_0_payload_B,
      I1 => stream_in_a_24_user_V_0_sel,
      I2 => stream_in_a_24_user_V_0_payload_A,
      O => stream_in_a_24_user_V_0_data_out
    );
\stream_out_a_24_user_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_user_V_1_payload_A[0]_i_1_n_0\,
      Q => stream_out_a_24_user_V_1_payload_A,
      R => '0'
    );
\stream_out_a_24_user_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => stream_in_a_24_user_V_0_data_out,
      I1 => \stream_out_a_24_user_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_a_24_user_V_1_ack_in,
      I3 => stream_out_a_24_user_V_1_sel_wr,
      I4 => stream_out_a_24_user_V_1_payload_B,
      O => \stream_out_a_24_user_V_1_payload_B[0]_i_1_n_0\
    );
\stream_out_a_24_user_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_user_V_1_payload_B[0]_i_1_n_0\,
      Q => stream_out_a_24_user_V_1_payload_B,
      R => '0'
    );
stream_out_a_24_user_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \stream_out_a_24_user_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_a_24_TREADY,
      I2 => stream_out_a_24_user_V_1_sel,
      O => stream_out_a_24_user_V_1_sel_rd_i_1_n_0
    );
stream_out_a_24_user_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_a_24_user_V_1_sel_rd_i_1_n_0,
      Q => stream_out_a_24_user_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_a_24_user_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I3 => stream_out_a_24_user_V_1_ack_in,
      I4 => stream_out_a_24_user_V_1_sel_wr,
      O => stream_out_a_24_user_V_1_sel_wr_i_1_n_0
    );
stream_out_a_24_user_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_a_24_user_V_1_sel_wr_i_1_n_0,
      Q => stream_out_a_24_user_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_a_24_user_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFA2A2A00000000"
    )
        port map (
      I0 => \stream_out_a_24_user_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_a_24_TREADY,
      I2 => stream_out_a_24_user_V_1_ack_in,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      I5 => ap_rst_n,
      O => \stream_out_a_24_user_V_1_state[0]_i_1_n_0\
    );
\stream_out_a_24_user_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \stream_out_a_24_user_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_a_24_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => stream_out_a_24_user_V_1_ack_in,
      O => \stream_out_a_24_user_V_1_state[1]_i_1_n_0\
    );
\stream_out_a_24_user_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_user_V_1_state[0]_i_1_n_0\,
      Q => \stream_out_a_24_user_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_out_a_24_user_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_a_24_user_V_1_state[1]_i_1_n_0\,
      Q => stream_out_a_24_user_V_1_ack_in,
      R => ap_rst_n_inv
    );
\stream_out_b_24_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(0),
      I1 => stream_out_b_24_data_V_1_payload_A(0),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(0)
    );
\stream_out_b_24_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(10),
      I1 => stream_out_b_24_data_V_1_payload_A(10),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(10)
    );
\stream_out_b_24_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(11),
      I1 => stream_out_b_24_data_V_1_payload_A(11),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(11)
    );
\stream_out_b_24_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(12),
      I1 => stream_out_b_24_data_V_1_payload_A(12),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(12)
    );
\stream_out_b_24_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(13),
      I1 => stream_out_b_24_data_V_1_payload_A(13),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(13)
    );
\stream_out_b_24_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(14),
      I1 => stream_out_b_24_data_V_1_payload_A(14),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(14)
    );
\stream_out_b_24_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(15),
      I1 => stream_out_b_24_data_V_1_payload_A(15),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(15)
    );
\stream_out_b_24_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(16),
      I1 => stream_out_b_24_data_V_1_payload_A(16),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(16)
    );
\stream_out_b_24_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(17),
      I1 => stream_out_b_24_data_V_1_payload_A(17),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(17)
    );
\stream_out_b_24_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(18),
      I1 => stream_out_b_24_data_V_1_payload_A(18),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(18)
    );
\stream_out_b_24_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(19),
      I1 => stream_out_b_24_data_V_1_payload_A(19),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(19)
    );
\stream_out_b_24_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(1),
      I1 => stream_out_b_24_data_V_1_payload_A(1),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(1)
    );
\stream_out_b_24_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(20),
      I1 => stream_out_b_24_data_V_1_payload_A(20),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(20)
    );
\stream_out_b_24_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(21),
      I1 => stream_out_b_24_data_V_1_payload_A(21),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(21)
    );
\stream_out_b_24_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(22),
      I1 => stream_out_b_24_data_V_1_payload_A(22),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(22)
    );
\stream_out_b_24_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(23),
      I1 => stream_out_b_24_data_V_1_payload_A(23),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(23)
    );
\stream_out_b_24_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(2),
      I1 => stream_out_b_24_data_V_1_payload_A(2),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(2)
    );
\stream_out_b_24_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(3),
      I1 => stream_out_b_24_data_V_1_payload_A(3),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(3)
    );
\stream_out_b_24_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(4),
      I1 => stream_out_b_24_data_V_1_payload_A(4),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(4)
    );
\stream_out_b_24_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(5),
      I1 => stream_out_b_24_data_V_1_payload_A(5),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(5)
    );
\stream_out_b_24_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(6),
      I1 => stream_out_b_24_data_V_1_payload_A(6),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(6)
    );
\stream_out_b_24_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(7),
      I1 => stream_out_b_24_data_V_1_payload_A(7),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(7)
    );
\stream_out_b_24_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(8),
      I1 => stream_out_b_24_data_V_1_payload_A(8),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(8)
    );
\stream_out_b_24_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => stream_out_b_24_data_V_1_payload_B(9),
      I1 => stream_out_b_24_data_V_1_payload_A(9),
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_TDATA(9)
    );
\stream_out_b_24_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_out_b_24_last_V_1_payload_B,
      I1 => stream_out_b_24_last_V_1_sel,
      I2 => stream_out_b_24_last_V_1_payload_A,
      O => stream_out_b_24_TLAST(0)
    );
\stream_out_b_24_TUSER[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_out_b_24_user_V_1_payload_B,
      I1 => stream_out_b_24_user_V_1_sel,
      I2 => stream_out_b_24_user_V_1_payload_A,
      O => stream_out_b_24_TUSER(0)
    );
\stream_out_b_24_data_V_1_payload_A[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \stream_out_b_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_b_24_data_V_1_ack_in,
      I2 => stream_out_b_24_data_V_1_sel_wr,
      O => stream_out_b_24_data_V_1_load_A
    );
\stream_out_b_24_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(0),
      Q => stream_out_b_24_data_V_1_payload_A(0),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(10),
      Q => stream_out_b_24_data_V_1_payload_A(10),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(11),
      Q => stream_out_b_24_data_V_1_payload_A(11),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(12),
      Q => stream_out_b_24_data_V_1_payload_A(12),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(13),
      Q => stream_out_b_24_data_V_1_payload_A(13),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(14),
      Q => stream_out_b_24_data_V_1_payload_A(14),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(15),
      Q => stream_out_b_24_data_V_1_payload_A(15),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(16),
      Q => stream_out_b_24_data_V_1_payload_A(16),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(17),
      Q => stream_out_b_24_data_V_1_payload_A(17),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(18),
      Q => stream_out_b_24_data_V_1_payload_A(18),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(19),
      Q => stream_out_b_24_data_V_1_payload_A(19),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(1),
      Q => stream_out_b_24_data_V_1_payload_A(1),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(20),
      Q => stream_out_b_24_data_V_1_payload_A(20),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(21),
      Q => stream_out_b_24_data_V_1_payload_A(21),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(22),
      Q => stream_out_b_24_data_V_1_payload_A(22),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(23),
      Q => stream_out_b_24_data_V_1_payload_A(23),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(2),
      Q => stream_out_b_24_data_V_1_payload_A(2),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(3),
      Q => stream_out_b_24_data_V_1_payload_A(3),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(4),
      Q => stream_out_b_24_data_V_1_payload_A(4),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(5),
      Q => stream_out_b_24_data_V_1_payload_A(5),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(6),
      Q => stream_out_b_24_data_V_1_payload_A(6),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(7),
      Q => stream_out_b_24_data_V_1_payload_A(7),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(8),
      Q => stream_out_b_24_data_V_1_payload_A(8),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_A,
      D => tmpd_V(9),
      Q => stream_out_b_24_data_V_1_payload_A(9),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \stream_out_b_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_b_24_data_V_1_ack_in,
      I2 => stream_out_b_24_data_V_1_sel_wr,
      O => stream_out_b_24_data_V_1_load_B
    );
\stream_out_b_24_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(0),
      Q => stream_out_b_24_data_V_1_payload_B(0),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(10),
      Q => stream_out_b_24_data_V_1_payload_B(10),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(11),
      Q => stream_out_b_24_data_V_1_payload_B(11),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(12),
      Q => stream_out_b_24_data_V_1_payload_B(12),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(13),
      Q => stream_out_b_24_data_V_1_payload_B(13),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(14),
      Q => stream_out_b_24_data_V_1_payload_B(14),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(15),
      Q => stream_out_b_24_data_V_1_payload_B(15),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(16),
      Q => stream_out_b_24_data_V_1_payload_B(16),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(17),
      Q => stream_out_b_24_data_V_1_payload_B(17),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(18),
      Q => stream_out_b_24_data_V_1_payload_B(18),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(19),
      Q => stream_out_b_24_data_V_1_payload_B(19),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(1),
      Q => stream_out_b_24_data_V_1_payload_B(1),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(20),
      Q => stream_out_b_24_data_V_1_payload_B(20),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(21),
      Q => stream_out_b_24_data_V_1_payload_B(21),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(22),
      Q => stream_out_b_24_data_V_1_payload_B(22),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(23),
      Q => stream_out_b_24_data_V_1_payload_B(23),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(2),
      Q => stream_out_b_24_data_V_1_payload_B(2),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(3),
      Q => stream_out_b_24_data_V_1_payload_B(3),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(4),
      Q => stream_out_b_24_data_V_1_payload_B(4),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(5),
      Q => stream_out_b_24_data_V_1_payload_B(5),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(6),
      Q => stream_out_b_24_data_V_1_payload_B(6),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(7),
      Q => stream_out_b_24_data_V_1_payload_B(7),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(8),
      Q => stream_out_b_24_data_V_1_payload_B(8),
      R => '0'
    );
\stream_out_b_24_data_V_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => stream_out_b_24_data_V_1_load_B,
      D => tmpd_V(9),
      Q => stream_out_b_24_data_V_1_payload_B(9),
      R => '0'
    );
stream_out_b_24_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \stream_out_b_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_b_24_TREADY,
      I2 => stream_out_b_24_data_V_1_sel,
      O => stream_out_b_24_data_V_1_sel_rd_i_1_n_0
    );
stream_out_b_24_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_b_24_data_V_1_sel_rd_i_1_n_0,
      Q => stream_out_b_24_data_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_b_24_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => stream_out_b_24_data_V_1_sel_wr,
      O => stream_out_b_24_data_V_1_sel_wr_i_1_n_0
    );
stream_out_b_24_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_b_24_data_V_1_sel_wr_i_1_n_0,
      Q => stream_out_b_24_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_b_24_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF444400000000"
    )
        port map (
      I0 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I1 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      I2 => stream_out_b_24_data_V_1_ack_in,
      I3 => stream_out_b_24_TREADY,
      I4 => \stream_out_b_24_data_V_1_state_reg_n_0_[0]\,
      I5 => ap_rst_n,
      O => \stream_out_b_24_data_V_1_state[0]_i_1_n_0\
    );
\stream_out_b_24_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \stream_out_b_24_data_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_b_24_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => stream_out_b_24_data_V_1_ack_in,
      O => \stream_out_b_24_data_V_1_state[1]_i_1_n_0\
    );
\stream_out_b_24_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_data_V_1_state[0]_i_1_n_0\,
      Q => \stream_out_b_24_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_out_b_24_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_data_V_1_state[1]_i_1_n_0\,
      Q => stream_out_b_24_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\stream_out_b_24_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => stream_in_a_24_last_V_0_data_out,
      I1 => \^stream_out_b_24_tvalid\,
      I2 => stream_out_b_24_last_V_1_ack_in,
      I3 => stream_out_b_24_last_V_1_sel_wr,
      I4 => stream_out_b_24_last_V_1_payload_A,
      O => \stream_out_b_24_last_V_1_payload_A[0]_i_1_n_0\
    );
\stream_out_b_24_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_last_V_1_payload_A[0]_i_1_n_0\,
      Q => stream_out_b_24_last_V_1_payload_A,
      R => '0'
    );
\stream_out_b_24_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => stream_in_a_24_last_V_0_data_out,
      I1 => \^stream_out_b_24_tvalid\,
      I2 => stream_out_b_24_last_V_1_ack_in,
      I3 => stream_out_b_24_last_V_1_sel_wr,
      I4 => stream_out_b_24_last_V_1_payload_B,
      O => \stream_out_b_24_last_V_1_payload_B[0]_i_1_n_0\
    );
\stream_out_b_24_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_last_V_1_payload_B[0]_i_1_n_0\,
      Q => stream_out_b_24_last_V_1_payload_B,
      R => '0'
    );
stream_out_b_24_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^stream_out_b_24_tvalid\,
      I1 => stream_out_b_24_TREADY,
      I2 => stream_out_b_24_last_V_1_sel,
      O => stream_out_b_24_last_V_1_sel_rd_i_1_n_0
    );
stream_out_b_24_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_b_24_last_V_1_sel_rd_i_1_n_0,
      Q => stream_out_b_24_last_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_b_24_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I3 => stream_out_b_24_last_V_1_ack_in,
      I4 => stream_out_b_24_last_V_1_sel_wr,
      O => stream_out_b_24_last_V_1_sel_wr_i_1_n_0
    );
stream_out_b_24_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_b_24_last_V_1_sel_wr_i_1_n_0,
      Q => stream_out_b_24_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_b_24_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFA2A2A00000000"
    )
        port map (
      I0 => \^stream_out_b_24_tvalid\,
      I1 => stream_out_b_24_TREADY,
      I2 => stream_out_b_24_last_V_1_ack_in,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      I5 => ap_rst_n,
      O => \stream_out_b_24_last_V_1_state[0]_i_1_n_0\
    );
\stream_out_b_24_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF700FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I3 => stream_out_b_24_last_V_1_ack_in,
      I4 => stream_out_b_24_TREADY,
      I5 => \^stream_out_b_24_tvalid\,
      O => \stream_out_b_24_last_V_1_state[1]_i_1_n_0\
    );
\stream_out_b_24_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_last_V_1_state[0]_i_1_n_0\,
      Q => \^stream_out_b_24_tvalid\,
      R => '0'
    );
\stream_out_b_24_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_last_V_1_state[1]_i_1_n_0\,
      Q => stream_out_b_24_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\stream_out_b_24_user_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => stream_in_a_24_user_V_0_data_out,
      I1 => \stream_out_b_24_user_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_b_24_user_V_1_ack_in,
      I3 => stream_out_b_24_user_V_1_sel_wr,
      I4 => stream_out_b_24_user_V_1_payload_A,
      O => \stream_out_b_24_user_V_1_payload_A[0]_i_1_n_0\
    );
\stream_out_b_24_user_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_user_V_1_payload_A[0]_i_1_n_0\,
      Q => stream_out_b_24_user_V_1_payload_A,
      R => '0'
    );
\stream_out_b_24_user_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFA200"
    )
        port map (
      I0 => stream_in_a_24_user_V_0_data_out,
      I1 => \stream_out_b_24_user_V_1_state_reg_n_0_[0]\,
      I2 => stream_out_b_24_user_V_1_ack_in,
      I3 => stream_out_b_24_user_V_1_sel_wr,
      I4 => stream_out_b_24_user_V_1_payload_B,
      O => \stream_out_b_24_user_V_1_payload_B[0]_i_1_n_0\
    );
\stream_out_b_24_user_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_user_V_1_payload_B[0]_i_1_n_0\,
      Q => stream_out_b_24_user_V_1_payload_B,
      R => '0'
    );
stream_out_b_24_user_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \stream_out_b_24_user_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_b_24_TREADY,
      I2 => stream_out_b_24_user_V_1_sel,
      O => stream_out_b_24_user_V_1_sel_rd_i_1_n_0
    );
stream_out_b_24_user_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_b_24_user_V_1_sel_rd_i_1_n_0,
      Q => stream_out_b_24_user_V_1_sel,
      R => ap_rst_n_inv
    );
stream_out_b_24_user_V_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I3 => stream_out_b_24_user_V_1_ack_in,
      I4 => stream_out_b_24_user_V_1_sel_wr,
      O => stream_out_b_24_user_V_1_sel_wr_i_1_n_0
    );
stream_out_b_24_user_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => stream_out_b_24_user_V_1_sel_wr_i_1_n_0,
      Q => stream_out_b_24_user_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\stream_out_b_24_user_V_1_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AFA2A2A00000000"
    )
        port map (
      I0 => \stream_out_b_24_user_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_b_24_TREADY,
      I2 => stream_out_b_24_user_V_1_ack_in,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I4 => \stream_out_a_24_last_V_1_state[0]_i_2_n_0\,
      I5 => ap_rst_n,
      O => \stream_out_b_24_user_V_1_state[0]_i_1_n_0\
    );
\stream_out_b_24_user_V_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \stream_out_b_24_user_V_1_state_reg_n_0_[0]\,
      I1 => stream_out_b_24_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I4 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      I5 => stream_out_b_24_user_V_1_ack_in,
      O => \stream_out_b_24_user_V_1_state[1]_i_1_n_0\
    );
\stream_out_b_24_user_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_user_V_1_state[0]_i_1_n_0\,
      Q => \stream_out_b_24_user_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\stream_out_b_24_user_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \stream_out_b_24_user_V_1_state[1]_i_1_n_0\,
      Q => stream_out_b_24_user_V_1_ack_in,
      R => ap_rst_n_inv
    );
\tmpc_V[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(0),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(0),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(0),
      O => tmpa_V_1_fu_146_p3(0)
    );
\tmpc_V[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(0),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(0),
      O => stream_in_a_24_data_V_0_data_out(0)
    );
\tmpc_V[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(10),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(10),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(10),
      O => tmpa_V_1_fu_146_p3(10)
    );
\tmpc_V[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(10),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(10),
      O => stream_in_a_24_data_V_0_data_out(10)
    );
\tmpc_V[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(11),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(11),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(11),
      O => tmpa_V_1_fu_146_p3(11)
    );
\tmpc_V[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(11),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(11),
      O => stream_in_a_24_data_V_0_data_out(11)
    );
\tmpc_V[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(12),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(12),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(12),
      O => tmpa_V_1_fu_146_p3(12)
    );
\tmpc_V[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(12),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(12),
      O => stream_in_a_24_data_V_0_data_out(12)
    );
\tmpc_V[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(13),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(13),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(13),
      O => tmpa_V_1_fu_146_p3(13)
    );
\tmpc_V[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(13),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(13),
      O => stream_in_a_24_data_V_0_data_out(13)
    );
\tmpc_V[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(14),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(14),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(14),
      O => tmpa_V_1_fu_146_p3(14)
    );
\tmpc_V[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(14),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(14),
      O => stream_in_a_24_data_V_0_data_out(14)
    );
\tmpc_V[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(15),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(15),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(15),
      O => tmpa_V_1_fu_146_p3(15)
    );
\tmpc_V[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(15),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(15),
      O => stream_in_a_24_data_V_0_data_out(15)
    );
\tmpc_V[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(16),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(16),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(16),
      O => tmpa_V_1_fu_146_p3(16)
    );
\tmpc_V[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(16),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(16),
      O => stream_in_a_24_data_V_0_data_out(16)
    );
\tmpc_V[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(17),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(17),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(17),
      O => tmpa_V_1_fu_146_p3(17)
    );
\tmpc_V[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(17),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(17),
      O => stream_in_a_24_data_V_0_data_out(17)
    );
\tmpc_V[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(18),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(18),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(18),
      O => tmpa_V_1_fu_146_p3(18)
    );
\tmpc_V[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(18),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(18),
      O => stream_in_a_24_data_V_0_data_out(18)
    );
\tmpc_V[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(19),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(19),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(19),
      O => tmpa_V_1_fu_146_p3(19)
    );
\tmpc_V[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(19),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(19),
      O => stream_in_a_24_data_V_0_data_out(19)
    );
\tmpc_V[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(1),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(1),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(1),
      O => tmpa_V_1_fu_146_p3(1)
    );
\tmpc_V[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(1),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(1),
      O => stream_in_a_24_data_V_0_data_out(1)
    );
\tmpc_V[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(20),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(20),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(20),
      O => tmpa_V_1_fu_146_p3(20)
    );
\tmpc_V[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(20),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(20),
      O => stream_in_a_24_data_V_0_data_out(20)
    );
\tmpc_V[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(21),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(21),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(21),
      O => tmpa_V_1_fu_146_p3(21)
    );
\tmpc_V[21]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(21),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(21),
      O => stream_in_a_24_data_V_0_data_out(21)
    );
\tmpc_V[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(22),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(22),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(22),
      O => tmpa_V_1_fu_146_p3(22)
    );
\tmpc_V[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(22),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(22),
      O => stream_in_a_24_data_V_0_data_out(22)
    );
\tmpc_V[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(23),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(23),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(23),
      O => tmpa_V_1_fu_146_p3(23)
    );
\tmpc_V[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(23),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(23),
      O => stream_in_a_24_data_V_0_data_out(23)
    );
\tmpc_V[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(2),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(2),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(2),
      O => tmpa_V_1_fu_146_p3(2)
    );
\tmpc_V[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(2),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(2),
      O => stream_in_a_24_data_V_0_data_out(2)
    );
\tmpc_V[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(3),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(3),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(3),
      O => tmpa_V_1_fu_146_p3(3)
    );
\tmpc_V[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(3),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(3),
      O => stream_in_a_24_data_V_0_data_out(3)
    );
\tmpc_V[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(4),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(4),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(4),
      O => tmpa_V_1_fu_146_p3(4)
    );
\tmpc_V[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(4),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(4),
      O => stream_in_a_24_data_V_0_data_out(4)
    );
\tmpc_V[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(5),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(5),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(5),
      O => tmpa_V_1_fu_146_p3(5)
    );
\tmpc_V[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(5),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(5),
      O => stream_in_a_24_data_V_0_data_out(5)
    );
\tmpc_V[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(6),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(6),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(6),
      O => tmpa_V_1_fu_146_p3(6)
    );
\tmpc_V[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(6),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(6),
      O => stream_in_a_24_data_V_0_data_out(6)
    );
\tmpc_V[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(7),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(7),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(7),
      O => tmpa_V_1_fu_146_p3(7)
    );
\tmpc_V[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(7),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(7),
      O => stream_in_a_24_data_V_0_data_out(7)
    );
\tmpc_V[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(8),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(8),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(8),
      O => tmpa_V_1_fu_146_p3(8)
    );
\tmpc_V[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(8),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(8),
      O => stream_in_a_24_data_V_0_data_out(8)
    );
\tmpc_V[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => stream_in_b_24_data_V_0_payload_B(9),
      I1 => stream_in_b_24_data_V_0_sel,
      I2 => stream_in_b_24_data_V_0_payload_A(9),
      I3 => vid_id,
      I4 => stream_in_a_24_data_V_0_data_out(9),
      O => tmpa_V_1_fu_146_p3(9)
    );
\tmpc_V[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stream_in_a_24_data_V_0_payload_B(9),
      I1 => stream_in_a_24_data_V_0_sel,
      I2 => stream_in_a_24_data_V_0_payload_A(9),
      O => stream_in_a_24_data_V_0_data_out(9)
    );
\tmpc_V_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(0),
      Q => tmpd_V(0),
      R => '0'
    );
\tmpc_V_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(10),
      Q => tmpd_V(10),
      R => '0'
    );
\tmpc_V_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(11),
      Q => tmpd_V(11),
      R => '0'
    );
\tmpc_V_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(12),
      Q => tmpd_V(12),
      R => '0'
    );
\tmpc_V_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(13),
      Q => tmpd_V(13),
      R => '0'
    );
\tmpc_V_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(14),
      Q => tmpd_V(14),
      R => '0'
    );
\tmpc_V_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(15),
      Q => tmpd_V(15),
      R => '0'
    );
\tmpc_V_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(16),
      Q => tmpd_V(16),
      R => '0'
    );
\tmpc_V_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(17),
      Q => tmpd_V(17),
      R => '0'
    );
\tmpc_V_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(18),
      Q => tmpd_V(18),
      R => '0'
    );
\tmpc_V_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(19),
      Q => tmpd_V(19),
      R => '0'
    );
\tmpc_V_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(1),
      Q => tmpd_V(1),
      R => '0'
    );
\tmpc_V_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(20),
      Q => tmpd_V(20),
      R => '0'
    );
\tmpc_V_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(21),
      Q => tmpd_V(21),
      R => '0'
    );
\tmpc_V_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(22),
      Q => tmpd_V(22),
      R => '0'
    );
\tmpc_V_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(23),
      Q => tmpd_V(23),
      R => '0'
    );
\tmpc_V_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(2),
      Q => tmpd_V(2),
      R => '0'
    );
\tmpc_V_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(3),
      Q => tmpd_V(3),
      R => '0'
    );
\tmpc_V_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(4),
      Q => tmpd_V(4),
      R => '0'
    );
\tmpc_V_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(5),
      Q => tmpd_V(5),
      R => '0'
    );
\tmpc_V_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(6),
      Q => tmpd_V(6),
      R => '0'
    );
\tmpc_V_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(7),
      Q => tmpd_V(7),
      R => '0'
    );
\tmpc_V_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(8),
      Q => tmpd_V(8),
      R => '0'
    );
\tmpc_V_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => tmpa_V_1_fu_146_p3(9),
      Q => tmpd_V(9),
      R => '0'
    );
\vid_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \stream_in_a_24_last_V_0_state[1]_i_4_n_0\,
      I2 => \stream_in_a_24_last_V_0_state[1]_i_3_n_0\,
      O => stream_out_a_24_data_V_1_sel_wr034_out
    );
\vid_id[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_id,
      O => vid_id_assign_fu_140_p2
    );
\vid_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => stream_out_a_24_data_V_1_sel_wr034_out,
      D => vid_id_assign_fu_140_p2,
      Q => vid_id,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vid_sync_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vid_sync_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vid_sync_0 : entity is "vid_sync_0,vid_sync,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of vid_sync_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of vid_sync_0 : entity is "vid_sync,Vivado 2017.4";
end vid_sync_0;

architecture STRUCTURE of vid_sync_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_in_a_24:stream_in_b_24:stream_out_a_24:stream_out_b_24, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute x_interface_parameter of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute x_interface_info of stream_in_a_24_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_in_a_24 TREADY";
  attribute x_interface_info of stream_in_a_24_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_in_a_24 TVALID";
  attribute x_interface_parameter of stream_in_a_24_TVALID : signal is "XIL_INTERFACENAME stream_in_a_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of stream_in_b_24_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_in_b_24 TREADY";
  attribute x_interface_info of stream_in_b_24_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_in_b_24 TVALID";
  attribute x_interface_parameter of stream_in_b_24_TVALID : signal is "XIL_INTERFACENAME stream_in_b_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of stream_out_a_24_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_out_a_24 TREADY";
  attribute x_interface_info of stream_out_a_24_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_out_a_24 TVALID";
  attribute x_interface_parameter of stream_out_a_24_TVALID : signal is "XIL_INTERFACENAME stream_out_a_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of stream_out_b_24_TREADY : signal is "xilinx.com:interface:axis:1.0 stream_out_b_24 TREADY";
  attribute x_interface_info of stream_out_b_24_TVALID : signal is "xilinx.com:interface:axis:1.0 stream_out_b_24 TVALID";
  attribute x_interface_parameter of stream_out_b_24_TVALID : signal is "XIL_INTERFACENAME stream_out_b_24, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of stream_in_a_24_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_in_a_24 TDATA";
  attribute x_interface_info of stream_in_a_24_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_in_a_24 TLAST";
  attribute x_interface_info of stream_in_a_24_TUSER : signal is "xilinx.com:interface:axis:1.0 stream_in_a_24 TUSER";
  attribute x_interface_info of stream_in_b_24_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_in_b_24 TDATA";
  attribute x_interface_info of stream_in_b_24_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_in_b_24 TLAST";
  attribute x_interface_info of stream_in_b_24_TUSER : signal is "xilinx.com:interface:axis:1.0 stream_in_b_24 TUSER";
  attribute x_interface_info of stream_out_a_24_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_out_a_24 TDATA";
  attribute x_interface_info of stream_out_a_24_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_out_a_24 TLAST";
  attribute x_interface_info of stream_out_a_24_TUSER : signal is "xilinx.com:interface:axis:1.0 stream_out_a_24 TUSER";
  attribute x_interface_info of stream_out_b_24_TDATA : signal is "xilinx.com:interface:axis:1.0 stream_out_b_24 TDATA";
  attribute x_interface_info of stream_out_b_24_TLAST : signal is "xilinx.com:interface:axis:1.0 stream_out_b_24 TLAST";
  attribute x_interface_info of stream_out_b_24_TUSER : signal is "xilinx.com:interface:axis:1.0 stream_out_b_24 TUSER";
begin
U0: entity work.vid_sync_0_vid_sync
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      stream_in_a_24_TDATA(23 downto 0) => stream_in_a_24_TDATA(23 downto 0),
      stream_in_a_24_TLAST(0) => stream_in_a_24_TLAST(0),
      stream_in_a_24_TREADY => stream_in_a_24_TREADY,
      stream_in_a_24_TUSER(0) => stream_in_a_24_TUSER(0),
      stream_in_a_24_TVALID => stream_in_a_24_TVALID,
      stream_in_b_24_TDATA(23 downto 0) => stream_in_b_24_TDATA(23 downto 0),
      stream_in_b_24_TLAST(0) => stream_in_b_24_TLAST(0),
      stream_in_b_24_TREADY => stream_in_b_24_TREADY,
      stream_in_b_24_TUSER(0) => stream_in_b_24_TUSER(0),
      stream_in_b_24_TVALID => stream_in_b_24_TVALID,
      stream_out_a_24_TDATA(23 downto 0) => stream_out_a_24_TDATA(23 downto 0),
      stream_out_a_24_TLAST(0) => stream_out_a_24_TLAST(0),
      stream_out_a_24_TREADY => stream_out_a_24_TREADY,
      stream_out_a_24_TUSER(0) => stream_out_a_24_TUSER(0),
      stream_out_a_24_TVALID => stream_out_a_24_TVALID,
      stream_out_b_24_TDATA(23 downto 0) => stream_out_b_24_TDATA(23 downto 0),
      stream_out_b_24_TLAST(0) => stream_out_b_24_TLAST(0),
      stream_out_b_24_TREADY => stream_out_b_24_TREADY,
      stream_out_b_24_TUSER(0) => stream_out_b_24_TUSER(0),
      stream_out_b_24_TVALID => stream_out_b_24_TVALID
    );
end STRUCTURE;
