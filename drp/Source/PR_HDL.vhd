----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2018 10:01:43 AM
-- Design Name: 
-- Module Name: PR_HDL - Behavioral
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

entity PR_HDL is
port (
        ap_clk : IN STD_LOGIC;
        ap_rst_n : IN STD_LOGIC;
        stream_in_24_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
        stream_in_24_TVALID : IN STD_LOGIC;
        stream_in_24_TREADY : OUT STD_LOGIC;
        stream_in_24_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_in_24_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_out_24_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
        stream_out_24_TVALID : OUT STD_LOGIC;
        stream_out_24_TREADY : IN STD_LOGIC;
        stream_out_24_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        stream_out_24_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
		ctl_CMD_V : IN STD_LOGIC_VECTOR (31 downto 0);
		ctl_DATA_V : IN STD_LOGIC_VECTOR (31 downto 0);
		ctl_WR_EN_V : IN STD_LOGIC_VECTOR (0 downto 0) );
end PR_HDL;

architecture Behavioral of PR_HDL is
attribute black_box : string;

attribute black_box of Behavioral : architecture is "TRUE";
begin


end Behavioral;
