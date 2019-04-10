library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd3_7segment is
Port ( BCDin : in STD_LOGIC_VECTOR (2 downto 0);
Seven_Segment : out STD_LOGIC_VECTOR (6 downto 0));
end bcd3_7segment;

architecture Behavioral of bcd3_7segment is

begin

	process(BCDin)
	begin
	
		case BCDin is
		when "000" =>
			Seven_Segment <= "1000000"; ---0
		when "001" =>
			Seven_Segment <= "1111001"; ---1
		when "010" =>
			Seven_Segment <= "0100100"; ---2
		when "011" =>
			Seven_Segment <= "0110000"; ---3
		when "100" =>
			Seven_Segment <= "0011001"; ---4
		when "101" =>
			Seven_Segment <= "0010010"; ---5
		when "110" =>
			Seven_Segment <= "0000010"; ---6
		when "111" =>
			Seven_Segment <= "1111000"; ---7
		-- when "1000" =>
		--	 Seven_Segment <= "0000000"; ---8
		-- when "1001" =>
		--	 Seven_Segment <= "0010000"; ---9
		when others =>
			Seven_Segment <= "1111111"; ---null
		end case;
		
	end process;

end Behavioral;