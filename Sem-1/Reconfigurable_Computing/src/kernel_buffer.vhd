--Yashwanth Katta - 3451 7972
--Avinash Ayalasomayajula - 0699 6946

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.math_custom.all;

entity kernel_buffer is
generic (
	buffer_size : positive := 128;
	reg_size : positive  := 16
           );
port (	user_clk 	: in std_logic;
		rst 	: in std_logic;
		input_data : in std_logic_vector (reg_size-1 downto 0);
		output_data	: out std_logic_vector ((reg_size * 128) - 1 downto 0);
		wr_en	: in std_logic;			
		rd_en	: in std_logic; 
		empty	: out std_logic;		
		full	: out std_logic);		
end kernel_buffer;

architecture default of kernel_buffer is
    type reg_array is array(0 to buffer_size-1) of std_logic_vector(reg_size-1 downto 0);
	signal reg  : reg_array;
	signal count : std_logic_vector(clog2(buffer_size) downto 0);  
begin

	U_COUNTER : entity work.count_user
	generic map(
		buffer_size => buffer_size)
	port map( user_clk => user_clk,
			  rst => rst,
			  rd_en => std_logic'('0'),
			  wr_en => wr_en,
			  output => count
			  );
			  
	process(rst, user_clk)
	begin
		if(rst = '1') then
			reg <= (others => (others => '0'));
		elsif(rising_edge(user_clk)) then
			if(wr_en = '1') then
				reg(0) <= input_data;
				for i in 0 to buffer_size-2 loop
					reg(i + 1) <= reg(i);
				end loop;
			end if;
		end if;
	end process;
	
	process(rst, rd_en, reg)
	begin
		if(rst = '1') then
			output_data <= (others => '0');
		else 
			if(rd_en = '1') then
				for j in 0 to 127 loop
					output_data((j+1)*reg_size - 1 downto (j*reg_size)) <= reg(j);
				end loop;
			else
				output_data <= (others => '0');
			end if;
		end if;
	end process;

	process(count, rst )
	variable temp_count : positive := buffer_size;
	begin
		if(rst = '1') then
			full <= '0';
		else
			if(count =  std_logic_vector(to_unsigned(temp_count, clog2(buffer_size)+1) )) then
				full <= '1';
			else 
				full <= '0';
			end if;
		end if;
		
		if(rst = '1') then
			empty  <= '1';
		elsif(count < std_logic_vector(to_unsigned(temp_count, clog2(buffer_size)+1))) then
			empty <= '1';
		else
			empty <= '0';
		end if;
	end process;
	

end default;







