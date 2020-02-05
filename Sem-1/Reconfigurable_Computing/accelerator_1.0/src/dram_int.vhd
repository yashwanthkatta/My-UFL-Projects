--Yashwanth Katta         - 3451 7972
--Avinash Ayalasomayajula - 0699 6946
--University of Florida
library ieee;
use ieee.std_logic_1164.all;

use work.config_pkg.all;
use work.user_pkg.all;

  
entity dram_int is

port(
	
	 dram_clk   : in  std_logic;
	 user_clk   : in  std_logic;
	 rst        : in  std_logic;
	 clear      : in  std_logic;
	 go         : in  std_logic;
	 rd_en      : in  std_logic;
	 stall      : in  std_logic;
	 start_addr : in  std_logic_vector(14 downto 0);
	 size       : in  std_logic_vector(16 downto 0);
	 valid      : out std_logic;
	 data       : out std_logic_vector(15 downto 0);
	 done       : out std_logic;

	 dram_ready    : in  std_logic;
	 dram_rd_en    : out std_logic;
	 dram_rd_addr  : out std_logic_vector(14 downto 0);
	 dram_rd_data  : in  std_logic_vector(31 downto 0);
	 dram_rd_valid : in  std_logic;
	 dram_rd_flush : out std_logic
	 );
	 
end dram_int;

architecture interface of dram_int is

signal user_size_en : std_logic;
signal user_addr_en : std_logic;
signal go_h, acko : std_logic;
signal rcv_h : std_logic;
signal dram_reg_en : std_logic;
signal out_user_size : std_logic_vector(16 downto 0);
signal out_user_addr : std_logic_vector(14 downto 0);
signal prg : std_logic ;
signal clear_addr : std_logic;
signal Addr_Size : std_logic_vector(16 downto 0);
signal Addr_addr : std_logic_vector(14 downto 0);
signal valid_user : std_logic;
signal temp_data : std_logic_vector(31 downto 0);
signal not_empty : std_logic;
signal full : std_logic;
begin


U_SIZE_U : entity work.reg 
	generic map ( width => 17)
	port map(
		clk => user_clk,
		rst => rst,
		en => user_size_en,
		input => size,
		output => out_user_size
);
    
U_SIZE_D : entity work.reg 
	generic map ( width => 17 )
	port map(
		clk => dram_clk,
		rst => rst,
		en => dram_reg_en,
		input => out_user_size,
		output => Addr_Size
);

U_ADDR_U : entity work.reg 
	generic map ( width => 15 )
	port map(
		clk => user_clk,
		rst => rst,
		en => user_addr_en,
		input => start_addr,
		output => out_user_addr
);
    
U_ADDR_D : entity work.reg 
	generic map ( width => 15 )
	port map(
		clk => dram_clk,
		rst => rst,
		en => dram_reg_en,
		input => out_user_addr,
		output =>Addr_addr
);

U_ADDR: entity work.ADD_Gen
	port map(
		go => dram_reg_en,
		dram_clk => dram_clk,
		rst => rst,
		clear => clear_addr, 
		size => Addr_Size,
		start_addr => Addr_addr,
		dram_ready => dram_ready,
		dram_rd_en => dram_rd_en,
		dram_rd_addr => dram_rd_addr,
		flush => dram_rd_flush,
		prog_full => prg
);	

U_Controller : entity work.ctrl_dma

port map(
	go => go,
	user_clk => user_clk,
	rst => rst,
	clear => clear,
	size_en => user_size_en,
	addr_en => user_addr_en,
	send_h => go_h,
	ack => rcv_h
	); 


U_Handshake: entity work.handshake
	port map (
		clk_src   => user_clk,
		clk_dest  => dram_clk,
		rst       => rst,
		go        => go_h,
		delay_ack => '0',
		rcv       => dram_reg_en,
		ack       => rcv_h
		);

 U_CLR_HANDSHAKE : entity work.handshake
	 port map (
		 clk_src   => user_clk,
		 clk_dest  => dram_clk,
		 rst       => rst,
		 go        => clear,
		 delay_ack => '0',
		 rcv       => clear_addr,
		 ack       => acko
		 );
	
 
		temp_data <=  dram_rd_data(15 downto 0) & dram_rd_data(31 downto 16);
		
U_FIFO: entity work.fifo
	port map( 
    rst => rst,
    wr_clk => dram_clk,
    rd_clk => user_clk,
    din => temp_data,
    wr_en => dram_rd_valid,
    rd_en => rd_en,
    dout => data,
    empty => valid_user,
    prog_full => prg,
	full => full
     );

	 valid <= not valid_user;
  
  U_COUNTER: entity work.count_dma
        port map(
        user_clk  => user_clk,
        rst  => rst,
        rd_en=> rd_en,
        clear => clear,
        size => out_user_size,
		empty => not_empty,
        done => done
         );
 
 not_empty <= not valid_user;
 
 end interface;