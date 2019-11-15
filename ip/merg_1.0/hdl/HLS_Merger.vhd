----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2018 01:21:35 PM
-- Design Name: 
-- Module Name: HLS_Merger - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HLS_Merger is
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
end HLS_Merger;

architecture Behavioral of HLS_Merger is
attribute black_box : string;
attribute black_box of Behavioral : architecture is "yes";
begin


end Behavioral;
