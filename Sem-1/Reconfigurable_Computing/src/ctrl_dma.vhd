--Yashwanth Katta         - 3451 7972
--Avinash Ayalasomayajula - 0699 6946
--University of Florida

-- This is the controller for the 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all; 

entity ctrl_dma is

port(
go, user_clk, rst, clear : in std_logic;
size_en : out std_logic;
send_h : out std_logic;
ack : in std_logic; 
addr_en : out std_logic
);

end ctrl_dma;

architecture BHV of ctrl_dma is


type state_type is (WAIT_S, HND_S,HND_ack, REG_EN, DONE_S);
signal state, next_state : state_type;

--signal size_en_s, addr_en_s, h_s : std_logic;
--signal next_size_en_s, next_addr_en_s, next_h_s : std_logic;

--signal ack_h, next_ack : std_logic;

begin 

process(user_clk, rst,clear)

begin

if(rst = '1')then
state <= WAIT_S;
-- size_en_s <= '0';
-- addr_en_s <= '0';
-- h_s <= '0';
--ack_h <= '0';
elsif(rising_edge(user_clk))then
if(clear = '1')then
state <= WAIT_S;
else
state <= next_state;
-- size_en_s <= next_size_en_s;
-- addr_en_s <= next_addr_en_s;
-- h_s <= next_h_s;
--ack_h <= next_ack;
end if;
end if;
end process;

process(state, go, ack)

begin
next_state <= state;
-- next_addr_en_s <= addr_en_s;
-- next_h_s <= h_s;
-- next_size_en_s <= size_en_s;
 
case state is 

when WAIT_S =>
-- next_addr_en_s <= '0';
-- next_size_en_s <= '0';
--next_ack <= '0';
if(go = '1')then
	next_state <= REG_EN;
	end if;
	
when REG_EN =>
	
	-- next_addr_en_s <= '1';
	-- next_size_en_s <= '1';
	-- next_h_s <='1';
	size_en <='1';
	addr_en <='1';
	send_h <='1';
	next_state <= HND_ack;

when HND_ack =>

	-- next_addr_en_s <= '0';
	-- next_size_en_s <= '0';
	 -- next_h_s<= '0';
	size_en <='0';
	addr_en <='0';
	send_h <='0';
	 
	if(ack = '1')then
	next_state <= DONE_S;
	end if;
	
when DONE_S	=>
	
	if(go = '0') then	
		next_state <= WAIT_S;
	end if;

when others => null;
end case;
end process;

-- addr_en <= next_addr_en_s;
-- size_en <= next_size_en_s;
-- send_h <= next_h_s;

end  BHV;