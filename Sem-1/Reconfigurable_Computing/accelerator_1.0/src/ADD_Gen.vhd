--Yashwanth Katta         - 3451 7972
--Avinash Ayalasomayajula - 0699 6946


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all;

entity ADD_Gen is
  
  port (	
			 dram_clk, go, rst, clear   : in  std_logic;
			 size       : in std_logic_vector(16 downto 0);
             prog_full  : in  std_logic;
             start_addr : in  std_logic_vector(14 downto 0);
             dram_ready : in  std_logic;
             dram_rd_en    : out std_logic;
             dram_rd_addr  : out std_logic_vector(14 downto 0);
             flush : out std_logic
			 
             );
 end ADD_Gen; 

architecture address_generate of ADD_Gen is

  type state_type is (INIT_S,CHECK_S, GEN_S);
  signal state, next_state : state_type;
   
   --Since we are using a two process FSM we have to add signals to make sure the inputs aren't being operated ON. 
   
  signal addr_s  : std_logic_vector(14 downto 0);
  signal size_s, next_size_s : unsigned(16 downto 0);
  signal count_addr :unsigned(16 downto 0);
   signal next_addr_s    : std_logic_vector(14 downto 0);
  signal next_count_addr    :unsigned(16 downto 0);
   
begin  

  process (dram_clk, rst, clear)
  begin
    if (rst = '1') then
      state    <= INIT_S;
	  addr_s   <= (others => '0');
	  count_addr    <=  (others => '0');
	  size_s <= (others => '0');
    elsif (rising_edge(dram_clk)) then
    if(clear = '1')then
     state    <= INIT_S;
          addr_s   <= (others => '0');
          count_addr    <=  (others => '0');
          size_s <= (others => '0');
     else
      state    <= next_state;
	  addr_s   <= next_addr_s;
	  size_s <= next_size_s;
	  count_addr    <= next_count_addr;
    end if;
    end if;
  end process;

  process(state, addr_s, size_s, prog_full, dram_ready, start_addr, go, count_addr,size)
  
  begin
	
	next_state    <= state;
	next_size_s <= size_s;
	next_count_addr<= count_addr;
    
    next_addr_s   <= addr_s;
	dram_rd_addr    <= addr_s;
	flush	<= '0';
	dram_rd_en  <= '0';

	case state is
	
	when INIT_S => 
	
	next_addr_s <= start_addr;
	next_count_addr <= (others => '0');
	next_size_s <= unsigned(size);
	
	if(go = '1')then
	flush <= '1';
	next_state <= CHECK_S;
	end if;
	
	when CHECK_S =>
	-- For delay in the output
	
	next_addr_s <= start_addr;
	next_size_s <= unsigned(size);
	next_state <= GEN_S;
			 
	when  GEN_S =>
	
	flush <= '0';
	
		 if(count_addr = size_s)then
			next_state <= INIT_S;
		elsif (prog_full = '0' and dram_ready = '1' ) then
			dram_rd_en  <= '1';
			next_count_addr <= count_addr + 1;
			next_addr_s <= std_logic_vector(unsigned(addr_s)+1);
			
			dram_rd_addr <= std_logic_vector(addr_s);
	next_state <= GEN_S;
	end if;
		
      when others => null;
    end case;

  end process;

  

end address_generate;


	
	
	
	