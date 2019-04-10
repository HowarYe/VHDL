library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- for shifting
use ieee.numeric_std.all;

entity ShiftReg_21bits is 
	port (
		clk : in std_logic;
		-- accumulator input (20-9) multiplier (8-0)
		ip : in std_logic_vector (20 downto 0);
		ipCant : in std_logic_vector (8 downto 0);
		load : in std_logic;
		add : in std_logic;
		sh : in std_logic;
		-- acc output to adder
		-- accOP : out std_logic_vector (11 downto 0);
		-- output to HEX(5-0) op(17-0)
		op : out std_logic_vector (20 downto 0));		
end ShiftReg_21bits;

architecture ShReg_behavior of ShiftReg_21bits is 
	type state_type is (S0, S1, S2, S3);
	signal state, next_state : state_type;
	signal ArrOP1 : std_logic_vector (5 downto 0);
	signal ArrOP2 : std_logic_vector (5 downto 0);
	signal ArrOP3 : std_logic_vector (5 downto 0);
	signal AdderOP1 : std_logic_vector (11 downto 0);
	signal AdderOP2 : std_logic_vector (11 downto 0);
	signal AdderOP3 : std_logic_vector (20 downto 0);
	

component Array_mult is 
	port (
		multiplicant : in std_logic_vector (2 downto 0);
		multiplier : in std_logic_vector (2 downto 0);
		op : out std_logic_vector (5 downto 0)
	);
end component;

begin
	ARR1 : Array_mult port map(multiplicant => ipcant (2 downto 0), multiplier => ip(2 downto 0), op => ArrOP1);
	ARR2 : Array_mult port map(multiplicant => ipcant (5 downto 3), multiplier => ip(2 downto 0), op => ArrOP2);
	ARR3 : Array_mult port map(multiplicant => ipcant (8 downto 6), multiplier => ip(2 downto 0), op => ArrOP3);
	-- state Reg
	process(clk)
	begin
		if (clk = '1' and clk'event) then
			state <= next_state;
		end if;
	end process;
	
	process(load, add, sh, state)
	begin
		case state is 
		when S0 => 
			if (load='1') then 
				next_state <= S1;
			else next_state <= S0;
			end if;
		when S1 => 
			if (add='1') then 
				next_state <= S2;
			else next_state <= S0;
			end if;
		when S2 => 
			if (sh='1') then 
				next_state <= S3;
			else next_state <= S0;
			end if;
		when S3 => 
			next_state <= S0;
		end case;
	end process;
		
	process(load, add, sh, state)
	begin
		case state is 
		when S0 => 
			if (load='1') then	
				ArrOP1 <= std_logic_vector(resize(unsigned(ArrOP1),12));
				ArrOP2 <= std_logic_vector(resize(unsigned(ArrOP2),12));
				ArrOP3 <= std_logic_vector(resize(unsigned(ArrOP3),12));
				ArrOP2 <= ArrOP2 sll 3;
				ArrOP3 <= ArrOP3 sll 6;
			end if;
		when S1 =>
			AdderOP1 <= std_vector(unsigned(ArrOP1) + unsigned(ArrOP2) + unsigned(ArrOP3));
			AdderOP2 <= std_logic_vector(resize(unsigned(AdderOP2), 21));
			AdderOP2 <= AdderOP2 sll 9;
		when S2 =>
			AdderOP3 <= std_logic_vector(unsigned(AdderOP2) + unsigned(ip));
		when S3 =>
			op <= AdderOP3 srl 1;
		end case;
	end process;
	
end ShReg_behavior;