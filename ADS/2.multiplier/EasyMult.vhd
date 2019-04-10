library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity EasyMult is
   port
   (
		clk : in std_logic; 
      ip: in std_logic_vector(8 downto 0);
		cantStore : in std_logic; 
		-- same as above; but when 0 switches will be stored in multiplier
		erStore : in std_logic;
		opZero : out std_logic;
      Result: out std_logic_vector(17 downto 0)
   );
end entity EasyMult;

architecture Behavior of EasyMult is
	type state_type is (S0, S1, S2);
	signal state, next_state : state_type;
	signal multiplicant : std_logic_vector (8 downto 0);
	signal multiplier : std_logic_vector (8 downto 0);
	
begin
	process(clk)
	begin
		if (clk = '1' and clk'event) then
			state <= next_state;
		end if;
	end process;
	
	process(state, cantStore, erStore)
	begin
		case state is 
		when S0 =>
			if (cantStore='0') then
				next_state <= S1;
			else next_state <= S0;
			end if;
		when S1 =>
			if (erStore='0') then 
				next_state <= S2;
			else next_state <= S1;
			end if;
		when S2 =>
			if (cantStore='1') then
				next_state <= S0;
			else next_state <= S2;
			end if;
		end case;
	end process;
	
		process(state, cantStore, erStore)
	begin
		STATES : case state is 
		when S0 =>
			if (cantStore='0') then
				multiplicant <= ip;
				-- show m'cant complete loading from ip; on HEX(0)
				-- opZero <= "1000110";  -- 'C'
				opZero <= '1';
			else multiplicant <= "000000000";
			end if;
		when S1 =>
			if (erStore='0') then 
				multiplier <= ip;
				-- show m'er complete loading from ip; on HEX(0)
				--opZero <= "0000110";  -- 'E'
				opZero <= '0';
			else multiplier <= "000000000";
			end if;
		when S2 =>
			Result <= std_logic_vector(unsigned(multiplicant) * unsigned(multiplier));

		end case STATES;
	end process;
   

end architecture Behavior;