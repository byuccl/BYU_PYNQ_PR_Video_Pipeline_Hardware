----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2018 11:19:42 AM
-- Design Name: 
-- Module Name: stream_sync - Behavioral
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

entity stream_sync is
    Port (     
        ap_clk : IN STD_LOGIC;
        ap_rst_n : IN STD_LOGIC;
        state_out: out std_logic_vector (2 downto 0);
        rst_state : in std_logic;
        stream_in_a_24_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
        stream_in_a_24_TVALID : IN STD_LOGIC;
        stream_in_a_24_TREADY : OUT STD_LOGIC;
        stream_in_a_24_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_in_a_24_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_in_b_24_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
        stream_in_b_24_TVALID : IN STD_LOGIC;
        stream_in_b_24_TREADY : OUT STD_LOGIC;
        stream_in_b_24_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_in_b_24_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        stream_out_a_24_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
        stream_out_a_24_TVALID : OUT STD_LOGIC;
        stream_out_a_24_TREADY : IN STD_LOGIC;
        stream_out_a_24_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        stream_out_a_24_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        stream_out_b_24_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
        stream_out_b_24_TVALID : OUT STD_LOGIC;
        stream_out_b_24_TREADY : IN STD_LOGIC;
        stream_out_b_24_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        stream_out_b_24_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0)
        );
end stream_sync;

architecture Behavioral of stream_sync is

  ATTRIBUTE X_INTERFACE_INFO : STRING;

    ATTRIBUTE X_INTERFACE_INFO of stream_in_a_24_TDATA: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_a TDATA";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_a_24_TLAST: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_a TLAST";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_a_24_TUSER: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_a TUSER";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_a_24_TVALID: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_a TVALID";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_a_24_TREADY: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_a TREADY";
  
  
    ATTRIBUTE X_INTERFACE_INFO of stream_out_a_24_TDATA: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_a TDATA";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_a_24_TLAST: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_a TLAST";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_a_24_TUSER: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_a TUSER";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_a_24_TVALID: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_a TVALID";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_a_24_TREADY: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_a TREADY";
    
    ATTRIBUTE X_INTERFACE_INFO of stream_in_b_24_TDATA: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_b TDATA";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_b_24_TLAST: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_b TLAST";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_b_24_TUSER: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_b TUSER";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_b_24_TVALID: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_b TVALID";
    ATTRIBUTE X_INTERFACE_INFO of stream_in_b_24_TREADY: SIGNAL is "xilinx.com:interface:axis:1.0 stream_in_b TREADY";
    
    
    ATTRIBUTE X_INTERFACE_INFO of stream_out_b_24_TDATA: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_b TDATA";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_b_24_TLAST: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_b TLAST";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_b_24_TUSER: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_b TUSER";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_b_24_TVALID: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_b TVALID";
    ATTRIBUTE X_INTERFACE_INFO of stream_out_b_24_TREADY: SIGNAL is "xilinx.com:interface:axis:1.0 stream_out_b TREADY";
    
    


    TYPE State_type IS (SYNC_B, SYNC_A, GO); -- the 4 different states
	SIGNAL State, State_next : State_Type;   -- Create a signal that uses 
begin

process (ap_clk)
begin
    if rising_edge(ap_clk) then
        State <= State_next;
        if(ap_rst_n = '0') then
            State <= SYNC_B;
        end if;
    end if;

end process;

process (State,stream_in_a_24_TUSER,stream_in_b_24_TUSER,
stream_out_a_24_TREADY,stream_out_b_24_TREADY,
stream_in_a_24_TVALID, stream_in_b_24_TVALID,rst_state)
begin

    State_next <= State;
    stream_in_a_24_TREADY <= '1';
    stream_in_b_24_TREADY <= '1';
    stream_out_a_24_TVALID <= '0';
    stream_out_b_24_TVALID <= '0';
    state_out <= "000";
    Case State is
        When SYNC_B =>
         state_out <= "001";
         stream_in_a_24_TREADY <= '1';
         stream_in_b_24_TREADY <= '1';
         if(stream_in_b_24_TUSER(0) = '1' and stream_in_b_24_TVALID = '1') then
            State_next <= SYNC_A;
            stream_in_b_24_TREADY <= '0';
            if(stream_in_a_24_TUSER(0) = '1' and stream_in_a_24_TVALID = '1') then
                State_next <= GO;
                stream_in_a_24_TREADY <= '0';
            end if;
         end if;
        When SYNC_A =>
         state_out <= "010";
         stream_in_a_24_TREADY <= '1';
         stream_in_b_24_TREADY <= '0';
         if(stream_in_a_24_TUSER(0) = '1' and stream_in_a_24_TVALID = '1') then
             State_next <= GO;
              stream_in_a_24_TREADY <= '0';
          end if;
          if( rst_state = '1') then
             State_next <= SYNC_B;
             stream_in_a_24_TREADY <= '1';
             stream_in_b_24_TREADY <= '1';
         end if;
        When GO =>
         state_out <= "100";
         stream_in_a_24_TREADY <= stream_out_a_24_TREADY and stream_out_b_24_TREADY and stream_in_a_24_TVALID and stream_in_b_24_TVALID;
         stream_in_b_24_TREADY <= stream_out_a_24_TREADY and stream_out_b_24_TREADY and stream_in_a_24_TVALID and stream_in_b_24_TVALID;
         stream_out_a_24_TVALID <= stream_out_a_24_TREADY and stream_out_b_24_TREADY and stream_in_a_24_TVALID and stream_in_b_24_TVALID;
         stream_out_b_24_TVALID <= stream_out_a_24_TREADY and stream_out_b_24_TREADY and stream_in_a_24_TVALID and stream_in_b_24_TVALID;
        if( rst_state = '1') then
            State_next <= SYNC_B;
            stream_in_a_24_TREADY <= '1';
            stream_in_b_24_TREADY <= '1';
        end if;
        if(stream_in_a_24_TUSER(0) /= stream_in_b_24_TUSER(0) and stream_in_a_24_TVALID = '1' and stream_in_b_24_TVALID = '1') then
            State_next <= SYNC_B;
        end if;
        When Others => State_next <= SYNC_B;
    end case;
        


end process;

    stream_out_a_24_TDATA <= stream_in_a_24_TDATA;
    stream_out_a_24_TUSER <= stream_in_a_24_TUSER;
    stream_out_a_24_TLAST <= stream_in_a_24_TLAST;
    stream_out_b_24_TDATA <= stream_in_b_24_TDATA;
    stream_out_b_24_TUSER <= stream_in_b_24_TUSER;
    stream_out_b_24_TLAST <= stream_in_b_24_TLAST;


end Behavioral;
