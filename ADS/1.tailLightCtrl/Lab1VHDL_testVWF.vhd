library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- tail light control
entity Lab1VHDL is
	port (
		clk : std_logic;
		L, R, B : in std_logic;
		Left_light_out : out std_logic_vector(3 downto 0); -- pin 7 to 4
		Right_light_out : out std_logic_vector(3 downto 0)); -- pin 3 to 0
end Lab1VHDL;

architecture tail_behavior of Lab1VHDL is

	type state_type is (S0, S1, S2, S3, S4);
	signal state, next_state : state_type;
	--replace the following if try on hardware
	--signal clk_2, rst : std_logic:='0';
	--the follow code is for test bench
	signal rst : std_logic:='0';
	
--ignore this part
--component scale_clock
	--port (clk, rst : in std_logic;
	--clk_2 : out std_logic);
--end component;
	
begin
	--uncomment this for testing on hardware
	--CLOCK : entity work.scale_clock port map(clk, rst, clk_2);
	
	-- state registers
	process(clk, rst)
	begin 
		
		if (rst = '1') then
			state <= S0;
		--uncomment this for testing on hardware
		--elsif (clk_2 = '1' and clk_2'event) then
		--comment the follow if testing on hardware
		elsif (clk = '1' and clk'event) then
			state <= next_state;
		end if;
	end process;
	
	-- next state logic
	process(state, L, R, B)
	begin
		case state is 
		when S0 =>
			if (B='0' and L='0' and R='0') then
				next_state <= S0;
			else next_state <= S1; 
			end if;
		when S1 =>
			if (B='1' and L='0' and R='0') or (L='1' and B='1' and R='1') then
				next_state <= S1;
			elsif (L='1' xor R='1') then
				next_state <= S2;
			else next_state <= S0; 
			end if;
		when S2 =>
			if (B='0' and L='0' and R='0') then
				next_state <= S0;
			elsif (L='1' xor R='1') then
				next_state <= S3;
			else next_state <= S1; -- S2, S3; BLR = 100, 011, 111 to S1
			end if;
		when S3 =>
			if (B='0' and L='0' and R='0') then
				next_state <= S0;
			elsif (L='1' xor R='1') then
				next_state <= S4;
			else next_state <= S1;
			end if;
		when S4 =>
			if (B='0' and L='0' and R='0') then
				next_state <= S0;
			else
				next_state <= S1;
			end if;
		end case;
	end process;
	
	-- outputs logic
	process(state, L, R, B)
	begin 
		case state is
		when S0 =>
			Left_light_out <= "0000";
			Right_light_out <= "0000";
		when S1 =>
			if (B='1') or (B='0' and L='1' and R='1') then-- BRL = 1XX and 011; no 000 state
				Left_light_out <= "1111";
				Right_light_out <= "1111";
			elsif (R='1') then-- BRL = 010 
				Left_light_out <= "0000";
				Right_light_out <= "1111";
			else -- BRL = 001
				Left_light_out <= "1111";
				Right_light_out <= "0000";
			end if;
		when S2 =>
			if (B='0' and R='0') then -- BRL = 001
				Left_light_out <= "1110";
				Right_light_out <= "0000";
			elsif (B='0' and R='1') then -- 010
				Left_light_out <= "0000";
				Right_light_out <= "0111";
			elsif (B='1' and R='0') then -- 101
				Left_light_out <= "1110";
				Right_light_out <= "1111";
			elsif (B='1' and R='1') then --110
				Left_light_out <= "1111";
				Right_light_out <= "0111";
			end if;
		when S3 =>
			if (B='0' and R='0') then -- BRL = 001
				Left_light_out <= "1100";
				Right_light_out <= "0000";
			elsif (B='0' and R='1') then -- 010
				Left_light_out <= "0000";
				Right_light_out <= "0011";
			elsif (B='1' and R='0') then -- 101
				Left_light_out <= "1100";
				Right_light_out <= "1111";
			elsif (B='1' and R='1') then --110
				Left_light_out <= "1111";
				Right_light_out <= "0011";
			end if;
		when S4 =>
			if (B='0' and R='0') then -- BRL = 001
				Left_light_out <= "1000";
				Right_light_out <= "0000";
			elsif (B='0' and R='1') then -- 010
				Left_light_out <= "0000";
				Right_light_out <= "0001";
			elsif (B='1' and R='0') then -- 101
				Left_light_out <= "1000";
				Right_light_out <= "1111";
			elsif (B='1' and R='1') then --110
				Left_light_out <= "1111";
				Right_light_out <= "0001";
			end if;
		end case;
	end process;
end tail_behavior;
	
	
		