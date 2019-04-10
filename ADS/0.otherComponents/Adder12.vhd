library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- 12-bit input & output adder
entity Adder is 
	port (
		clk : std_logic;
		A1 : in std_logic_vector (11 downto 0);
		A2 : in std_logic_vector (11 downto 0);
		op : out std_logic_vector (11 downto 0));	
end Adder;

architecture Adder_behavior of Adder is 
begin
	
	process (clk)
	begin
		if (clk = '1' and clk'event) then			
			op <= std_logic_vector(A1 + A2);
		end if;
	end process;

end Adder_behavior;