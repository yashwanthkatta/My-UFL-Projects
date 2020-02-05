--Yashwanth Katta         - 3451 7972
--Avinash Ayalasomayajula - 0699 6946

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.config_pkg.all;
use work.user_pkg.all;

entity count_dma is 
port(
user_clk, rst, rd_en, clear   :in std_logic;
size  :in std_logic_vector(16 downto 0);
empty : in std_logic;
done  :out std_logic
);

end count_dma;

architecture BHV of count_dma is

--signal count_s : unsigned(16 downto 0);

begin

process(user_clk, rst, clear)

variable count_s : unsigned(16 downto 0);
	
	begin
		if (rst = '1') then
			count_s:= (others => '0');
			done<='0';
		elsif(rising_edge(user_clk)) then
			if(clear = '1')then
		count_s:= (others => '0');
		done<='0';
                    	
			else
			done<='0';  
			if(rd_en= '1' and empty='1') then
				if(count_s /= unsigned(size)) then
				count_s := count_s +1;
				done<='0';
			else
				count_s:= (others => '0');
				done<='1';
				end if;
			end if;
			end if;
		end if;
end process;
	
end BHV;