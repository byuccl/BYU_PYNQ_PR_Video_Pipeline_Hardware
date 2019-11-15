----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2018 11:19:48 AM
-- Design Name: 
-- Module Name: sobel_hls_black_box - Behavioral
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

entity sobel_hls_black_box is
     PORT (
  ap_clk : IN STD_LOGIC;
  ap_rst_n : IN STD_LOGIC;
  stream_in_24_TVALID : IN STD_LOGIC;
  stream_in_24_TREADY : OUT STD_LOGIC;
  stream_in_24_TDATA : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
  stream_in_24_TUSER : IN STD_LOGIC_VECTOR(65 DOWNTO 0);
  stream_in_24_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
  stream_out_24_TVALID : OUT STD_LOGIC;
  stream_out_24_TREADY : IN STD_LOGIC;
  stream_out_24_TDATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
  stream_out_24_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
  stream_out_24_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
);
end sobel_hls_black_box;

architecture Behavioral of sobel_hls_black_box is
attribute black_box : string;
attribute black_box of Behavioral : architecture is "yes";
begin
end Behavioral;
