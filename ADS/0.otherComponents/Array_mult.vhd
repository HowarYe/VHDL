library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- for shifting and resize()
use ieee.numeric_std.all;

entity Array_mult is 
	port (
		clk : std_logic;
		multiplicant : in std_logic_vector (2 downto 0);
		multiplier : in std_logic_vector (2 downto 0);
		op : out std_logic_vector (5 downto 0));	
end Array_mult;

architecture ArrMult_behavior of Array_mult is 
	signal inter1 : std_logic_vector (2 downto 0);
	signal inter2 : std_logic_vector (2 downto 0);
	signal inter3 : std_logic_vector (2 downto 0);
	signal inter_sum : std_logic_vector (5 downto 0);
	
begin
	
	inter_sum <= inter1 + inter2 + inter3;

	process (clk)
	begin
		if (clk = '1' and clk'event) then			
			inter1(0) <= multiplicant(0) and multiplier(0);
			inter1(1) <= multiplicant(1) and multiplier(0);
			inter1(2) <= multiplicant(2) and multiplier(0);
			inter1 <= std_logic_vector(resize(unsigned(inter1),6));
			
			inter2(0) <= multiplicant(0) and multiplier(1);
			inter2(1) <= multiplicant(1) and multiplier(1);
			inter2(2) <= multiplicant(2) and multiplier(1);
			inter2 <= std_logic_vector(resize(unsigned(inter2),6));
			inter2 <= inter2 sll 1;
			
			inter3(0) <= multiplicant(0) and multiplier(1);
			inter3(1) <= multiplicant(1) and multiplier(1);
			inter3(2) <= multiplicant(2) and multiplier(1);
			inter3 <= std_logic_vector(resize(unsigned(inter3),6));
			inter3 <= inter3 sll 2;
			
			op <= inter_sum;
		end if;
	end process;
	
end ArrMult_behavior;