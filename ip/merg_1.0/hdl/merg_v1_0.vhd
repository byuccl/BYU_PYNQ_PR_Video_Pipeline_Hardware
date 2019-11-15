library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity merg_v1_0 is
	port (
		-- Users to add ports here
        ap_clk : in std_logic;
        ap_rst_n : IN STD_LOGIC;
        ctl_CMD_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        ctl_DATA_V : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        ctl_WR_EN_V : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(23 downto 0);
        s00_axis_tuser  : in std_logic_vector(0 downto 0);
        s00_axis_tlast  : in std_logic_vector(0 downto 0);
		s00_axis_tvalid	: in std_logic;

		-- Ports of Axi Slave Bus Interface S01_AXIS
		s01_axis_tready	: out std_logic;
		s01_axis_tdata	: in std_logic_vector(23 downto 0);
		s01_axis_tuser  : in std_logic_vector(0 downto 0);
        s01_axis_tlast  : in std_logic_vector(0 downto 0);
		s01_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(23 downto 0);
		m00_axis_tuser  : out std_logic_vector(0 downto 0);
        m00_axis_tlast    : out std_logic_vector(0 downto 0);
		m00_axis_tready	: in std_logic;

		-- Ports of Axi Master Bus Interface M01_AXIS
		m01_axis_tvalid	: out std_logic;
		m01_axis_tdata	: out std_logic_vector(23 downto 0);
		m01_axis_tuser  : out std_logic_vector(0 downto 0);
		m01_axis_tlast	: out std_logic_vector(0 downto 0);
		m01_axis_tready	: in std_logic
	);
end merg_v1_0;

architecture arch_imp of merg_v1_0 is
component stream_sync is
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
end component stream_sync;

COMPONENT HLS_Merger
    Port (     
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
END COMPONENT;
COMPONENT fifo_merg
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
signal       stream_out_a_24_TDATA :  STD_LOGIC_VECTOR (23 downto 0);
signal       stream_out_a_24_TVALID :  STD_LOGIC;
signal       stream_out_a_24_TREADY :  STD_LOGIC;
signal       stream_out_a_24_TUSER :  STD_LOGIC_VECTOR (0 downto 0);
signal       stream_IN_a_24_TUSER_BLACK_BOX :  STD_LOGIC_VECTOR (65 downto 0);
signal       stream_out_a_24_TLAST :  STD_LOGIC_VECTOR (0 downto 0);
signal       stream_out_b_24_TDATA :  STD_LOGIC_VECTOR (23 downto 0);
signal       stream_out_b_24_TVALID :  STD_LOGIC;
signal       stream_out_b_24_TREADY :  STD_LOGIC;
signal       stream_out_b_24_TUSER :  STD_LOGIC_VECTOR (0 downto 0);
signal       stream_out_b_24_TLAST :  STD_LOGIC_VECTOR (0 downto 0);
signal rst_fifo : std_logic;
signal resync : std_logic;
signal rst_hls_n : std_logic;
signal we_hls_n : std_logic;
signal we_hls : STD_LOGIC_VECTOR(0 DOWNTO 0);
signal fifo_rd : std_logic;
signal hls_ready : std_logic;
signal d_in : STD_LOGIC_VECTOR(63 DOWNTO 0);
signal d_out : STD_LOGIC_VECTOR(63 DOWNTO 0);
signal hls_in_user : STD_LOGIC_VECTOR(65 DOWNTO 0);
begin
sync : stream_sync
  PORT MAP (
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    state_out=> open,
    rst_state => resync,
    stream_in_a_24_TDATA => s00_axis_tdata,
    stream_in_a_24_TVALID =>s00_axis_tvalid,
    stream_in_a_24_TREADY =>s00_axis_tready,
    stream_in_a_24_TUSER =>s00_axis_tuser,
    stream_in_a_24_TLAST =>s00_axis_tlast,
    stream_in_b_24_TDATA =>s01_axis_tdata,
    stream_in_b_24_TVALID =>s01_axis_tvalid,
    stream_in_b_24_TREADY =>s01_axis_tready,
    stream_in_b_24_TUSER =>s01_axis_tuser,
    stream_in_b_24_TLAST =>s01_axis_tlast,
    stream_out_a_24_TDATA =>stream_out_a_24_TDATA,
    stream_out_a_24_TVALID =>stream_out_a_24_TVALID,
    stream_out_a_24_TREADY =>stream_out_a_24_TREADY,
    stream_out_a_24_TUSER =>stream_out_a_24_TUSER,
    stream_out_a_24_TLAST =>stream_out_a_24_TLAST,
    stream_out_b_24_TDATA =>stream_out_b_24_TDATA,
    stream_out_b_24_TVALID =>stream_out_b_24_TVALID,
    stream_out_b_24_TREADY =>stream_out_b_24_TREADY,
    stream_out_b_24_TUSER =>stream_out_b_24_TUSER,
    stream_out_b_24_TLAST =>stream_out_b_24_TLAST
    
  );
  
    --stream_IN_a_24_TUSER_BLACK_BOX(65) <= stream_out_a_24_TUSER(0);
    stream_IN_a_24_TUSER_BLACK_BOX <= stream_out_a_24_TUSER & we_hls & d_out;
    rst_fifo <=  not ap_rst_n;
    resync <= '1' when ctl_WR_EN_V(0) = '1' and d_in = X"FFFFFFFFFFFFFFFF" else '0';
    d_in <= ctl_CMD_V & ctl_DATA_V;
    we_hls(0) <=not  we_hls_n;
    fifo_rd <= stream_out_a_24_TVALID and stream_out_a_24_TREADY;
    rst_hls_n <= ap_rst_n;
    
  fifo_0 : fifo_merg
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
  
  
PR_BLACK_BOX : HLS_Merger
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      stream_in_a_24_TVALID => stream_out_a_24_TVALID,
      stream_in_a_24_TREADY => stream_out_a_24_TREADY,
      stream_in_a_24_TDATA => stream_out_a_24_TDATA,
      stream_in_a_24_TLAST => stream_out_a_24_TLAST,
      stream_in_a_24_TUSER => stream_IN_a_24_TUSER_BLACK_BOX,--needs to be bigger
      stream_in_b_24_TVALID => stream_out_b_24_TVALID,
      stream_in_b_24_TREADY => stream_out_b_24_TREADY,
      stream_in_b_24_TDATA => stream_out_b_24_TDATA,
      stream_in_b_24_TLAST => stream_out_b_24_TLAST,
      stream_in_b_24_TUSER => stream_out_b_24_TUSER,
      stream_out_a_24_TVALID => m00_axis_tvalid,
      stream_out_a_24_TREADY => m00_axis_tready,
      stream_out_a_24_TDATA => m00_axis_tdata,
      stream_out_a_24_TLAST => m00_axis_tlast,
      stream_out_a_24_TUSER => m00_axis_tuser,
      stream_out_b_24_TVALID => m01_axis_tvalid,
      stream_out_b_24_TREADY => m01_axis_tready,
      stream_out_b_24_TDATA => m01_axis_tdata,
      stream_out_b_24_TLAST => m01_axis_tlast,
      stream_out_b_24_TUSER => m01_axis_tuser
    );
end arch_imp;
