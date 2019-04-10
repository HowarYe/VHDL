library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd18in_6x7segmentOut is
	Port ( 
		BCDin : in STD_LOGIC_VECTOR (17 downto 0);
		Seven_Segment1 : out STD_LOGIC_VECTOR (6 downto 0);
		Seven_Segment2 : out STD_LOGIC_VECTOR (6 downto 0);
		Seven_Segment3 : out STD_LOGIC_VECTOR (6 downto 0);
		Seven_Segment4 : out STD_LOGIC_VECTOR (6 downto 0);
		Seven_Segment5 : out STD_LOGIC_VECTOR (6 downto 0);
		Seven_Segment6 : out STD_LOGIC_VECTOR (6 downto 0)
);
end bcd18in_6x7segmentOut;

architecture Behavioral of bcd18in_6x7segmentOut is

begin
	Seg1 : entity work.bcd3_7segment port map(BCDin(2 downto 0) ,Seven_Segment1);
	Seg2 : entity work.bcd3_7segment port map(BCDin(5 downto 3) ,Seven_Segment2);
	Seg3 : entity work.bcd3_7segment port map(BCDin(8 downto 6) ,Seven_Segment3);
	Seg4 : entity work.bcd3_7segment port map(BCDin(11 downto 9) ,Seven_Segment4);
	Seg5 : entity work.bcd3_7segment port map(BCDin(14 downto 12) ,Seven_Segment5);
	Seg6 : entity work.bcd3_7segment port map(BCDin(17 downto 15) ,Seven_Segment6);
	
end Behavioral;