library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HLS_PR_WRAPPER_v1_0 is
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line
         ap_clk : IN STD_LOGIC;
         ap_rst_n : IN STD_LOGIC;
         ctl_CMD_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
         ctl_DATA_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
         ctl_WR_EN_V : IN STD_LOGIC_VECTOR(0 DOWNTO 0);

		-- Ports of Axi Master Bus Interface M00_AXIS

		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(24-1 downto 0);
		m00_axis_tuser  : out std_logic_vector(0 downto 0);
		m00_axis_tlast	: out std_logic_vector(0 downto 0);
		m00_axis_tready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS

		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(24-1 downto 0);
		s00_axis_tuser  : in std_logic_vector(0 downto 0);
		s00_axis_tlast	: in std_logic_vector(0 downto 0);
		s00_axis_tvalid	: in std_logic
	);
end HLS_PR_WRAPPER_v1_0;

architecture arch_imp of HLS_PR_WRAPPER_v1_0 is
COMPONENT sobel_hls_black_box
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
END COMPONENT;
COMPONENT fifo_generator_0
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;
signal rst_fifo : std_logic;
signal we_hls_n : std_logic;
signal we_hls : STD_LOGIC_VECTOR(0 DOWNTO 0);
signal fifo_rd : std_logic;
signal hls_ready : std_logic;
signal d_in : STD_LOGIC_VECTOR(63 DOWNTO 0);
signal d_out : STD_LOGIC_VECTOR(63 DOWNTO 0);
signal hls_in_user : STD_LOGIC_VECTOR(65 DOWNTO 0);
begin

--Need to make black box in future
HLS_PR : sobel_hls_black_box
  PORT MAP (
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    stream_in_24_TVALID => s00_axis_tvalid,
    stream_in_24_TREADY => hls_ready,
    stream_in_24_TDATA => s00_axis_tdata,
    stream_in_24_TLAST => s00_axis_tlast,
    stream_in_24_TUSER => hls_in_user,
    stream_out_24_TVALID => m00_axis_tvalid,
    stream_out_24_TREADY => m00_axis_tready,
    stream_out_24_TDATA => m00_axis_tdata,
    stream_out_24_TLAST => m00_axis_tlast,
    stream_out_24_TUSER => m00_axis_tuser
    
  );
  rst_fifo <= not ap_rst_n;
  d_in <= ctl_CMD_V & ctl_DATA_V;
  hls_in_user <= s00_axis_tuser & we_hls & d_out;
  we_hls(0) <=not  we_hls_n;
  fifo_rd <= s00_axis_tvalid and hls_ready;
  s00_axis_tready <= hls_ready;
  
  fifo_0 : fifo_generator_0
    PORT MAP (
      clk => ap_clk,
      srst => rst_fifo,
      din => d_in,
      wr_en => ctl_WR_EN_V(0),
      rd_en => fifo_rd,
      dout => d_out,
      full => open,
      empty => we_hls_n
    );
end arch_imp;
