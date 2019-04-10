-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/05/2019 15:42:29"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mult_seg IS
    PORT (
	LEDop : OUT std_logic;
	clk : IN std_logic;
	cantS : IN std_logic;
	erS : IN std_logic;
	ip : IN std_logic_vector(8 DOWNTO 0);
	Seg1 : OUT std_logic_vector(6 DOWNTO 0);
	Seg2 : OUT std_logic_vector(6 DOWNTO 0);
	Seg3 : OUT std_logic_vector(6 DOWNTO 0);
	Seg4 : OUT std_logic_vector(6 DOWNTO 0);
	Seg5 : OUT std_logic_vector(6 DOWNTO 0);
	Seg6 : OUT std_logic_vector(6 DOWNTO 0)
	);
END mult_seg;

-- Design Ports Information
-- LEDop	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg1[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg1[5]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg1[4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg1[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg1[2]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg1[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg1[0]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg2[6]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg2[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg2[4]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg2[3]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg2[2]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg2[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg2[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg3[6]	=>  Location: PIN_AK16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg3[5]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg3[4]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg3[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg3[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg3[1]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg3[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg4[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg4[5]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg4[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg4[3]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg4[2]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg4[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg4[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg5[6]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg5[5]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg5[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg5[3]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg5[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg5[1]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg5[0]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg6[6]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg6[4]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg6[3]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg6[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg6[1]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seg6[0]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cantS	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erS	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[0]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[1]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[2]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[3]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[4]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[5]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[7]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ip[8]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mult_seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDop : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cantS : std_logic;
SIGNAL ww_erS : std_logic;
SIGNAL ww_ip : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Seg2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Seg3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Seg4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Seg5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Seg6 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|Mult0~8_AX_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|Mult0~8_AY_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \inst|Mult0~26\ : std_logic;
SIGNAL \inst|Mult0~27\ : std_logic;
SIGNAL \inst|Mult0~28\ : std_logic;
SIGNAL \inst|Mult0~29\ : std_logic;
SIGNAL \inst|Mult0~30\ : std_logic;
SIGNAL \inst|Mult0~31\ : std_logic;
SIGNAL \inst|Mult0~32\ : std_logic;
SIGNAL \inst|Mult0~33\ : std_logic;
SIGNAL \inst|Mult0~34\ : std_logic;
SIGNAL \inst|Mult0~35\ : std_logic;
SIGNAL \inst|Mult0~36\ : std_logic;
SIGNAL \inst|Mult0~37\ : std_logic;
SIGNAL \inst|Mult0~38\ : std_logic;
SIGNAL \inst|Mult0~39\ : std_logic;
SIGNAL \inst|Mult0~40\ : std_logic;
SIGNAL \inst|Mult0~41\ : std_logic;
SIGNAL \inst|Mult0~42\ : std_logic;
SIGNAL \inst|Mult0~43\ : std_logic;
SIGNAL \inst|Mult0~44\ : std_logic;
SIGNAL \inst|Mult0~45\ : std_logic;
SIGNAL \inst|Mult0~46\ : std_logic;
SIGNAL \inst|Mult0~47\ : std_logic;
SIGNAL \inst|Mult0~48\ : std_logic;
SIGNAL \inst|Mult0~49\ : std_logic;
SIGNAL \inst|Mult0~50\ : std_logic;
SIGNAL \inst|Mult0~51\ : std_logic;
SIGNAL \inst|Mult0~52\ : std_logic;
SIGNAL \inst|Mult0~53\ : std_logic;
SIGNAL \inst|Mult0~54\ : std_logic;
SIGNAL \inst|Mult0~55\ : std_logic;
SIGNAL \inst|Mult0~56\ : std_logic;
SIGNAL \inst|Mult0~57\ : std_logic;
SIGNAL \inst|Mult0~58\ : std_logic;
SIGNAL \inst|Mult0~59\ : std_logic;
SIGNAL \inst|Mult0~60\ : std_logic;
SIGNAL \inst|Mult0~61\ : std_logic;
SIGNAL \inst|Mult0~62\ : std_logic;
SIGNAL \inst|Mult0~63\ : std_logic;
SIGNAL \inst|Mult0~64\ : std_logic;
SIGNAL \inst|Mult0~65\ : std_logic;
SIGNAL \inst|Mult0~66\ : std_logic;
SIGNAL \inst|Mult0~67\ : std_logic;
SIGNAL \inst|Mult0~68\ : std_logic;
SIGNAL \inst|Mult0~69\ : std_logic;
SIGNAL \inst|Mult0~70\ : std_logic;
SIGNAL \inst|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \cantS~input_o\ : std_logic;
SIGNAL \erS~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|next_state.S0~0_combout\ : std_logic;
SIGNAL \inst|state.S0~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|state.S1~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|opZero~combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|state.S2~q\ : std_logic;
SIGNAL \ip[0]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~0_combout\ : std_logic;
SIGNAL \ip[1]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~1_combout\ : std_logic;
SIGNAL \ip[2]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~2_combout\ : std_logic;
SIGNAL \ip[3]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~3_combout\ : std_logic;
SIGNAL \ip[4]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~4_combout\ : std_logic;
SIGNAL \ip[5]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~5_combout\ : std_logic;
SIGNAL \ip[6]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~6_combout\ : std_logic;
SIGNAL \ip[7]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~7_combout\ : std_logic;
SIGNAL \ip[8]~input_o\ : std_logic;
SIGNAL \inst|multiplicant~8_combout\ : std_logic;
SIGNAL \inst|multiplier~0_combout\ : std_logic;
SIGNAL \inst|multiplier~1_combout\ : std_logic;
SIGNAL \inst|multiplier~2_combout\ : std_logic;
SIGNAL \inst|multiplier~3_combout\ : std_logic;
SIGNAL \inst|multiplier~4_combout\ : std_logic;
SIGNAL \inst|multiplier~5_combout\ : std_logic;
SIGNAL \inst|multiplier~6_combout\ : std_logic;
SIGNAL \inst|multiplier~7_combout\ : std_logic;
SIGNAL \inst|multiplier~8_combout\ : std_logic;
SIGNAL \inst|Mult0~8_resulta\ : std_logic;
SIGNAL \inst|Mult0~9\ : std_logic;
SIGNAL \inst|Mult0~10\ : std_logic;
SIGNAL \inst1|Seg1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Seg1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Seg1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Seg1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Seg1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Seg1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Seg1|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mult0~11\ : std_logic;
SIGNAL \inst|Mult0~12\ : std_logic;
SIGNAL \inst|Mult0~13\ : std_logic;
SIGNAL \inst1|Seg2|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Seg2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Seg2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Seg2|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Seg2|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Seg2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Seg2|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mult0~15\ : std_logic;
SIGNAL \inst|Mult0~16\ : std_logic;
SIGNAL \inst|Mult0~14\ : std_logic;
SIGNAL \inst1|Seg3|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Seg3|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Seg3|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Seg3|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Seg3|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Seg3|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Seg3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mult0~18\ : std_logic;
SIGNAL \inst|Mult0~17\ : std_logic;
SIGNAL \inst|Mult0~19\ : std_logic;
SIGNAL \inst1|Seg4|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Seg4|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Seg4|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Seg4|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Seg4|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Seg4|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Seg4|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mult0~21\ : std_logic;
SIGNAL \inst|Mult0~20\ : std_logic;
SIGNAL \inst|Mult0~22\ : std_logic;
SIGNAL \inst1|Seg5|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Seg5|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Seg5|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Seg5|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Seg5|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Seg5|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Seg5|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mult0~25\ : std_logic;
SIGNAL \inst|Mult0~23\ : std_logic;
SIGNAL \inst|Mult0~24\ : std_logic;
SIGNAL \inst1|Seg6|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Seg6|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Seg6|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Seg6|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Seg6|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Seg6|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Seg6|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Result\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|multiplicant\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|multiplier\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \inst|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \ALT_INV_ip[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ip[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_erS~input_o\ : std_logic;
SIGNAL \ALT_INV_cantS~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_multiplicant\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|ALT_INV_Result\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|ALT_INV_opZero~combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplier~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_multiplicant~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.S2~q\ : std_logic;
SIGNAL \inst|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_state.S0~q\ : std_logic;
SIGNAL \inst|ALT_INV_state.S1~q\ : std_logic;

BEGIN

LEDop <= ww_LEDop;
ww_clk <= clk;
ww_cantS <= cantS;
ww_erS <= erS;
ww_ip <= ip;
Seg1 <= ww_Seg1;
Seg2 <= ww_Seg2;
Seg3 <= ww_Seg3;
Seg4 <= ww_Seg4;
Seg5 <= ww_Seg5;
Seg6 <= ww_Seg6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|Mult0~8_AX_bus\ <= (\inst|multiplicant\(8) & \inst|multiplicant\(7) & \inst|multiplicant\(6) & \inst|multiplicant\(5) & \inst|multiplicant\(4) & \inst|multiplicant\(3) & \inst|multiplicant\(2) & \inst|multiplicant\(1) & 
\inst|multiplicant\(0));

\inst|Mult0~8_AY_bus\ <= (\inst|multiplier\(8) & \inst|multiplier\(7) & \inst|multiplier\(6) & \inst|multiplier\(5) & \inst|multiplier\(4) & \inst|multiplier\(3) & \inst|multiplier\(2) & \inst|multiplier\(1) & \inst|multiplier\(0));

\inst|Mult0~8_resulta\ <= \inst|Mult0~8_RESULTA_bus\(0);
\inst|Mult0~9\ <= \inst|Mult0~8_RESULTA_bus\(1);
\inst|Mult0~10\ <= \inst|Mult0~8_RESULTA_bus\(2);
\inst|Mult0~11\ <= \inst|Mult0~8_RESULTA_bus\(3);
\inst|Mult0~12\ <= \inst|Mult0~8_RESULTA_bus\(4);
\inst|Mult0~13\ <= \inst|Mult0~8_RESULTA_bus\(5);
\inst|Mult0~14\ <= \inst|Mult0~8_RESULTA_bus\(6);
\inst|Mult0~15\ <= \inst|Mult0~8_RESULTA_bus\(7);
\inst|Mult0~16\ <= \inst|Mult0~8_RESULTA_bus\(8);
\inst|Mult0~17\ <= \inst|Mult0~8_RESULTA_bus\(9);
\inst|Mult0~18\ <= \inst|Mult0~8_RESULTA_bus\(10);
\inst|Mult0~19\ <= \inst|Mult0~8_RESULTA_bus\(11);
\inst|Mult0~20\ <= \inst|Mult0~8_RESULTA_bus\(12);
\inst|Mult0~21\ <= \inst|Mult0~8_RESULTA_bus\(13);
\inst|Mult0~22\ <= \inst|Mult0~8_RESULTA_bus\(14);
\inst|Mult0~23\ <= \inst|Mult0~8_RESULTA_bus\(15);
\inst|Mult0~24\ <= \inst|Mult0~8_RESULTA_bus\(16);
\inst|Mult0~25\ <= \inst|Mult0~8_RESULTA_bus\(17);
\inst|Mult0~26\ <= \inst|Mult0~8_RESULTA_bus\(18);
\inst|Mult0~27\ <= \inst|Mult0~8_RESULTA_bus\(19);
\inst|Mult0~28\ <= \inst|Mult0~8_RESULTA_bus\(20);
\inst|Mult0~29\ <= \inst|Mult0~8_RESULTA_bus\(21);
\inst|Mult0~30\ <= \inst|Mult0~8_RESULTA_bus\(22);
\inst|Mult0~31\ <= \inst|Mult0~8_RESULTA_bus\(23);
\inst|Mult0~32\ <= \inst|Mult0~8_RESULTA_bus\(24);
\inst|Mult0~33\ <= \inst|Mult0~8_RESULTA_bus\(25);
\inst|Mult0~34\ <= \inst|Mult0~8_RESULTA_bus\(26);
\inst|Mult0~35\ <= \inst|Mult0~8_RESULTA_bus\(27);
\inst|Mult0~36\ <= \inst|Mult0~8_RESULTA_bus\(28);
\inst|Mult0~37\ <= \inst|Mult0~8_RESULTA_bus\(29);
\inst|Mult0~38\ <= \inst|Mult0~8_RESULTA_bus\(30);
\inst|Mult0~39\ <= \inst|Mult0~8_RESULTA_bus\(31);
\inst|Mult0~40\ <= \inst|Mult0~8_RESULTA_bus\(32);
\inst|Mult0~41\ <= \inst|Mult0~8_RESULTA_bus\(33);
\inst|Mult0~42\ <= \inst|Mult0~8_RESULTA_bus\(34);
\inst|Mult0~43\ <= \inst|Mult0~8_RESULTA_bus\(35);
\inst|Mult0~44\ <= \inst|Mult0~8_RESULTA_bus\(36);
\inst|Mult0~45\ <= \inst|Mult0~8_RESULTA_bus\(37);
\inst|Mult0~46\ <= \inst|Mult0~8_RESULTA_bus\(38);
\inst|Mult0~47\ <= \inst|Mult0~8_RESULTA_bus\(39);
\inst|Mult0~48\ <= \inst|Mult0~8_RESULTA_bus\(40);
\inst|Mult0~49\ <= \inst|Mult0~8_RESULTA_bus\(41);
\inst|Mult0~50\ <= \inst|Mult0~8_RESULTA_bus\(42);
\inst|Mult0~51\ <= \inst|Mult0~8_RESULTA_bus\(43);
\inst|Mult0~52\ <= \inst|Mult0~8_RESULTA_bus\(44);
\inst|Mult0~53\ <= \inst|Mult0~8_RESULTA_bus\(45);
\inst|Mult0~54\ <= \inst|Mult0~8_RESULTA_bus\(46);
\inst|Mult0~55\ <= \inst|Mult0~8_RESULTA_bus\(47);
\inst|Mult0~56\ <= \inst|Mult0~8_RESULTA_bus\(48);
\inst|Mult0~57\ <= \inst|Mult0~8_RESULTA_bus\(49);
\inst|Mult0~58\ <= \inst|Mult0~8_RESULTA_bus\(50);
\inst|Mult0~59\ <= \inst|Mult0~8_RESULTA_bus\(51);
\inst|Mult0~60\ <= \inst|Mult0~8_RESULTA_bus\(52);
\inst|Mult0~61\ <= \inst|Mult0~8_RESULTA_bus\(53);
\inst|Mult0~62\ <= \inst|Mult0~8_RESULTA_bus\(54);
\inst|Mult0~63\ <= \inst|Mult0~8_RESULTA_bus\(55);
\inst|Mult0~64\ <= \inst|Mult0~8_RESULTA_bus\(56);
\inst|Mult0~65\ <= \inst|Mult0~8_RESULTA_bus\(57);
\inst|Mult0~66\ <= \inst|Mult0~8_RESULTA_bus\(58);
\inst|Mult0~67\ <= \inst|Mult0~8_RESULTA_bus\(59);
\inst|Mult0~68\ <= \inst|Mult0~8_RESULTA_bus\(60);
\inst|Mult0~69\ <= \inst|Mult0~8_RESULTA_bus\(61);
\inst|Mult0~70\ <= \inst|Mult0~8_RESULTA_bus\(62);
\inst|Mult0~71\ <= \inst|Mult0~8_RESULTA_bus\(63);
\inst|ALT_INV_Mult0~25\ <= NOT \inst|Mult0~25\;
\inst|ALT_INV_Mult0~24\ <= NOT \inst|Mult0~24\;
\inst|ALT_INV_Mult0~23\ <= NOT \inst|Mult0~23\;
\inst|ALT_INV_Mult0~22\ <= NOT \inst|Mult0~22\;
\inst|ALT_INV_Mult0~21\ <= NOT \inst|Mult0~21\;
\inst|ALT_INV_Mult0~20\ <= NOT \inst|Mult0~20\;
\inst|ALT_INV_Mult0~19\ <= NOT \inst|Mult0~19\;
\inst|ALT_INV_Mult0~18\ <= NOT \inst|Mult0~18\;
\inst|ALT_INV_Mult0~17\ <= NOT \inst|Mult0~17\;
\inst|ALT_INV_Mult0~16\ <= NOT \inst|Mult0~16\;
\inst|ALT_INV_Mult0~15\ <= NOT \inst|Mult0~15\;
\inst|ALT_INV_Mult0~14\ <= NOT \inst|Mult0~14\;
\inst|ALT_INV_Mult0~13\ <= NOT \inst|Mult0~13\;
\inst|ALT_INV_Mult0~12\ <= NOT \inst|Mult0~12\;
\inst|ALT_INV_Mult0~11\ <= NOT \inst|Mult0~11\;
\inst|ALT_INV_Mult0~10\ <= NOT \inst|Mult0~10\;
\inst|ALT_INV_Mult0~9\ <= NOT \inst|Mult0~9\;
\inst|ALT_INV_Mult0~8_resulta\ <= NOT \inst|Mult0~8_resulta\;
\ALT_INV_ip[8]~input_o\ <= NOT \ip[8]~input_o\;
\ALT_INV_ip[7]~input_o\ <= NOT \ip[7]~input_o\;
\ALT_INV_ip[6]~input_o\ <= NOT \ip[6]~input_o\;
\ALT_INV_ip[5]~input_o\ <= NOT \ip[5]~input_o\;
\ALT_INV_ip[4]~input_o\ <= NOT \ip[4]~input_o\;
\ALT_INV_ip[3]~input_o\ <= NOT \ip[3]~input_o\;
\ALT_INV_ip[2]~input_o\ <= NOT \ip[2]~input_o\;
\ALT_INV_ip[1]~input_o\ <= NOT \ip[1]~input_o\;
\ALT_INV_ip[0]~input_o\ <= NOT \ip[0]~input_o\;
\ALT_INV_erS~input_o\ <= NOT \erS~input_o\;
\ALT_INV_cantS~input_o\ <= NOT \cantS~input_o\;
\inst|ALT_INV_multiplier\(8) <= NOT \inst|multiplier\(8);
\inst|ALT_INV_multiplier\(7) <= NOT \inst|multiplier\(7);
\inst|ALT_INV_multiplier\(6) <= NOT \inst|multiplier\(6);
\inst|ALT_INV_multiplier\(5) <= NOT \inst|multiplier\(5);
\inst|ALT_INV_multiplier\(4) <= NOT \inst|multiplier\(4);
\inst|ALT_INV_multiplier\(3) <= NOT \inst|multiplier\(3);
\inst|ALT_INV_multiplier\(2) <= NOT \inst|multiplier\(2);
\inst|ALT_INV_multiplier\(1) <= NOT \inst|multiplier\(1);
\inst|ALT_INV_multiplier\(0) <= NOT \inst|multiplier\(0);
\inst|ALT_INV_multiplicant\(8) <= NOT \inst|multiplicant\(8);
\inst|ALT_INV_multiplicant\(7) <= NOT \inst|multiplicant\(7);
\inst|ALT_INV_multiplicant\(6) <= NOT \inst|multiplicant\(6);
\inst|ALT_INV_multiplicant\(5) <= NOT \inst|multiplicant\(5);
\inst|ALT_INV_multiplicant\(4) <= NOT \inst|multiplicant\(4);
\inst|ALT_INV_multiplicant\(3) <= NOT \inst|multiplicant\(3);
\inst|ALT_INV_multiplicant\(2) <= NOT \inst|multiplicant\(2);
\inst|ALT_INV_multiplicant\(1) <= NOT \inst|multiplicant\(1);
\inst|ALT_INV_multiplicant\(0) <= NOT \inst|multiplicant\(0);
\inst|ALT_INV_Result\(17) <= NOT \inst|Result\(17);
\inst|ALT_INV_Result\(16) <= NOT \inst|Result\(16);
\inst|ALT_INV_Result\(15) <= NOT \inst|Result\(15);
\inst|ALT_INV_Result\(14) <= NOT \inst|Result\(14);
\inst|ALT_INV_Result\(13) <= NOT \inst|Result\(13);
\inst|ALT_INV_Result\(12) <= NOT \inst|Result\(12);
\inst|ALT_INV_Result\(9) <= NOT \inst|Result\(9);
\inst|ALT_INV_Result\(11) <= NOT \inst|Result\(11);
\inst|ALT_INV_Result\(10) <= NOT \inst|Result\(10);
\inst|ALT_INV_Result\(6) <= NOT \inst|Result\(6);
\inst|ALT_INV_Result\(7) <= NOT \inst|Result\(7);
\inst|ALT_INV_Result\(8) <= NOT \inst|Result\(8);
\inst|ALT_INV_Result\(3) <= NOT \inst|Result\(3);
\inst|ALT_INV_Result\(4) <= NOT \inst|Result\(4);
\inst|ALT_INV_Result\(5) <= NOT \inst|Result\(5);
\inst|ALT_INV_Result\(0) <= NOT \inst|Result\(0);
\inst|ALT_INV_Result\(1) <= NOT \inst|Result\(1);
\inst|ALT_INV_Result\(2) <= NOT \inst|Result\(2);
\inst|ALT_INV_opZero~combout\ <= NOT \inst|opZero~combout\;
\inst|ALT_INV_multiplier~8_combout\ <= NOT \inst|multiplier~8_combout\;
\inst|ALT_INV_multiplier~7_combout\ <= NOT \inst|multiplier~7_combout\;
\inst|ALT_INV_multiplier~6_combout\ <= NOT \inst|multiplier~6_combout\;
\inst|ALT_INV_multiplier~5_combout\ <= NOT \inst|multiplier~5_combout\;
\inst|ALT_INV_multiplier~4_combout\ <= NOT \inst|multiplier~4_combout\;
\inst|ALT_INV_multiplier~3_combout\ <= NOT \inst|multiplier~3_combout\;
\inst|ALT_INV_multiplier~2_combout\ <= NOT \inst|multiplier~2_combout\;
\inst|ALT_INV_multiplier~1_combout\ <= NOT \inst|multiplier~1_combout\;
\inst|ALT_INV_multiplier~0_combout\ <= NOT \inst|multiplier~0_combout\;
\inst|ALT_INV_multiplicant~8_combout\ <= NOT \inst|multiplicant~8_combout\;
\inst|ALT_INV_multiplicant~7_combout\ <= NOT \inst|multiplicant~7_combout\;
\inst|ALT_INV_multiplicant~6_combout\ <= NOT \inst|multiplicant~6_combout\;
\inst|ALT_INV_multiplicant~5_combout\ <= NOT \inst|multiplicant~5_combout\;
\inst|ALT_INV_multiplicant~4_combout\ <= NOT \inst|multiplicant~4_combout\;
\inst|ALT_INV_multiplicant~3_combout\ <= NOT \inst|multiplicant~3_combout\;
\inst|ALT_INV_multiplicant~2_combout\ <= NOT \inst|multiplicant~2_combout\;
\inst|ALT_INV_multiplicant~1_combout\ <= NOT \inst|multiplicant~1_combout\;
\inst|ALT_INV_multiplicant~0_combout\ <= NOT \inst|multiplicant~0_combout\;
\inst|ALT_INV_state.S2~q\ <= NOT \inst|state.S2~q\;
\inst|ALT_INV_Selector3~0_combout\ <= NOT \inst|Selector3~0_combout\;
\inst|ALT_INV_state.S0~q\ <= NOT \inst|state.S0~q\;
\inst|ALT_INV_state.S1~q\ <= NOT \inst|state.S1~q\;

-- Location: IOOBUF_X66_Y0_N93
\LEDop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|opZero~combout\,
	devoe => ww_devoe,
	o => ww_LEDop);

-- Location: IOOBUF_X60_Y0_N19
\Seg1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg1(6));

-- Location: IOOBUF_X64_Y0_N19
\Seg1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg1(5));

-- Location: IOOBUF_X64_Y0_N2
\Seg1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg1(4));

-- Location: IOOBUF_X58_Y0_N93
\Seg1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg1(3));

-- Location: IOOBUF_X58_Y0_N59
\Seg1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg1(2));

-- Location: IOOBUF_X60_Y0_N2
\Seg1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg1(1));

-- Location: IOOBUF_X60_Y0_N53
\Seg1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg1(0));

-- Location: IOOBUF_X40_Y0_N2
\Seg2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg2(6));

-- Location: IOOBUF_X52_Y0_N53
\Seg2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg2(5));

-- Location: IOOBUF_X38_Y0_N2
\Seg2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg2(4));

-- Location: IOOBUF_X40_Y0_N53
\Seg2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg2(3));

-- Location: IOOBUF_X58_Y0_N76
\Seg2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg2(2));

-- Location: IOOBUF_X50_Y0_N42
\Seg2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg2(1));

-- Location: IOOBUF_X36_Y0_N2
\Seg2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg2(0));

-- Location: IOOBUF_X54_Y0_N53
\Seg3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg3(6));

-- Location: IOOBUF_X40_Y0_N36
\Seg3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg3(5));

-- Location: IOOBUF_X52_Y0_N36
\Seg3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg3(4));

-- Location: IOOBUF_X40_Y0_N19
\Seg3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg3(3));

-- Location: IOOBUF_X50_Y0_N59
\Seg3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg3(2));

-- Location: IOOBUF_X54_Y0_N19
\Seg3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg3(1));

-- Location: IOOBUF_X40_Y81_N2
\Seg3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg3(0));

-- Location: IOOBUF_X52_Y0_N19
\Seg4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg4(6));

-- Location: IOOBUF_X38_Y0_N19
\Seg4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg4(5));

-- Location: IOOBUF_X52_Y0_N2
\Seg4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg4(4));

-- Location: IOOBUF_X38_Y0_N36
\Seg4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg4(3));

-- Location: IOOBUF_X54_Y0_N36
\Seg4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg4(2));

-- Location: IOOBUF_X38_Y0_N53
\Seg4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg4(1));

-- Location: IOOBUF_X68_Y0_N2
\Seg4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg4(0));

-- Location: IOOBUF_X64_Y0_N53
\Seg5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg5(6));

-- Location: IOOBUF_X60_Y0_N36
\Seg5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg5(5));

-- Location: IOOBUF_X50_Y0_N93
\Seg5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg5(4));

-- Location: IOOBUF_X58_Y0_N42
\Seg5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg5(3));

-- Location: IOOBUF_X56_Y0_N36
\Seg5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg5(2));

-- Location: IOOBUF_X56_Y0_N53
\Seg5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg5(1));

-- Location: IOOBUF_X64_Y0_N36
\Seg5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg5(0));

-- Location: IOOBUF_X34_Y0_N42
\Seg6[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg6(6));

-- Location: IOOBUF_X36_Y0_N19
\Seg6[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg6(5));

-- Location: IOOBUF_X34_Y0_N59
\Seg6[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg6(4));

-- Location: IOOBUF_X36_Y0_N36
\Seg6[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg6(3));

-- Location: IOOBUF_X34_Y0_N76
\Seg6[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg6(2));

-- Location: IOOBUF_X34_Y0_N93
\Seg6[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg6(1));

-- Location: IOOBUF_X36_Y0_N53
\Seg6[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Seg6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Seg6(0));

-- Location: IOIBUF_X56_Y0_N18
\cantS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cantS,
	o => \cantS~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\erS~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_erS,
	o => \erS~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X56_Y4_N6
\inst|next_state.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|next_state.S0~0_combout\ = ( \inst|state.S1~q\ ) # ( !\inst|state.S1~q\ & ( !\cantS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	dataf => \inst|ALT_INV_state.S1~q\,
	combout => \inst|next_state.S0~0_combout\);

-- Location: FF_X55_Y4_N41
\inst|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|next_state.S0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S0~q\);

-- Location: LABCELL_X56_Y4_N18
\inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = ( \inst|state.S0~q\ & ( (\inst|state.S1~q\ & \erS~input_o\) ) ) # ( !\inst|state.S0~q\ & ( (!\cantS~input_o\) # ((\inst|state.S1~q\ & \erS~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001111110011001100111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	datac => \inst|ALT_INV_state.S1~q\,
	datad => \ALT_INV_erS~input_o\,
	dataf => \inst|ALT_INV_state.S0~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X55_Y4_N56
\inst|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S1~q\);

-- Location: LABCELL_X56_Y4_N9
\inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = ( \inst|state.S0~q\ & ( (!\erS~input_o\ & \inst|state.S1~q\) ) ) # ( !\inst|state.S0~q\ & ( (!\cantS~input_o\) # ((!\erS~input_o\ & \inst|state.S1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001111110000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	datac => \ALT_INV_erS~input_o\,
	datad => \inst|ALT_INV_state.S1~q\,
	dataf => \inst|ALT_INV_state.S0~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: LABCELL_X55_Y4_N39
\inst|opZero\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|opZero~combout\ = ( \inst|state.S1~q\ & ( (!\inst|Selector3~0_combout\ & \inst|opZero~combout\) ) ) # ( !\inst|state.S1~q\ & ( (\inst|opZero~combout\) # (\inst|Selector3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Selector3~0_combout\,
	datac => \inst|ALT_INV_opZero~combout\,
	dataf => \inst|ALT_INV_state.S1~q\,
	combout => \inst|opZero~combout\);

-- Location: MLABCELL_X52_Y4_N48
\inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = ( \inst|state.S2~q\ & ( (!\cantS~input_o\) # ((!\erS~input_o\ & \inst|state.S1~q\)) ) ) # ( !\inst|state.S2~q\ & ( (!\erS~input_o\ & \inst|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_erS~input_o\,
	datac => \ALT_INV_cantS~input_o\,
	datad => \inst|ALT_INV_state.S1~q\,
	dataf => \inst|ALT_INV_state.S2~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X53_Y4_N44
\inst|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \inst|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.S2~q\);

-- Location: IOIBUF_X62_Y0_N1
\ip[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(0),
	o => \ip[0]~input_o\);

-- Location: LABCELL_X56_Y4_N21
\inst|multiplicant~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~0_combout\ = (!\cantS~input_o\ & \ip[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	datad => \ALT_INV_ip[0]~input_o\,
	combout => \inst|multiplicant~0_combout\);

-- Location: LABCELL_X55_Y4_N51
\inst|multiplicant[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(0) = ( \inst|state.S0~q\ & ( \inst|multiplicant\(0) ) ) # ( !\inst|state.S0~q\ & ( \inst|multiplicant~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_multiplicant~0_combout\,
	datad => \inst|ALT_INV_multiplicant\(0),
	dataf => \inst|ALT_INV_state.S0~q\,
	combout => \inst|multiplicant\(0));

-- Location: IOIBUF_X66_Y0_N41
\ip[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(1),
	o => \ip[1]~input_o\);

-- Location: LABCELL_X56_Y4_N36
\inst|multiplicant~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~1_combout\ = (!\cantS~input_o\ & \ip[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	datac => \ALT_INV_ip[1]~input_o\,
	combout => \inst|multiplicant~1_combout\);

-- Location: LABCELL_X55_Y4_N12
\inst|multiplicant[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(1) = ( \inst|multiplicant\(1) & ( (\inst|multiplicant~1_combout\) # (\inst|state.S0~q\) ) ) # ( !\inst|multiplicant\(1) & ( (!\inst|state.S0~q\ & \inst|multiplicant~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S0~q\,
	datac => \inst|ALT_INV_multiplicant~1_combout\,
	dataf => \inst|ALT_INV_multiplicant\(1),
	combout => \inst|multiplicant\(1));

-- Location: IOIBUF_X62_Y0_N18
\ip[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(2),
	o => \ip[2]~input_o\);

-- Location: LABCELL_X56_Y4_N39
\inst|multiplicant~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~2_combout\ = (!\cantS~input_o\ & \ip[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	datad => \ALT_INV_ip[2]~input_o\,
	combout => \inst|multiplicant~2_combout\);

-- Location: LABCELL_X55_Y4_N18
\inst|multiplicant[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(2) = ( \inst|state.S0~q\ & ( \inst|multiplicant\(2) ) ) # ( !\inst|state.S0~q\ & ( \inst|multiplicant~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_multiplicant\(2),
	datac => \inst|ALT_INV_multiplicant~2_combout\,
	dataf => \inst|ALT_INV_state.S0~q\,
	combout => \inst|multiplicant\(2));

-- Location: IOIBUF_X62_Y0_N52
\ip[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(3),
	o => \ip[3]~input_o\);

-- Location: LABCELL_X56_Y4_N45
\inst|multiplicant~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~3_combout\ = (!\cantS~input_o\ & \ip[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cantS~input_o\,
	datad => \ALT_INV_ip[3]~input_o\,
	combout => \inst|multiplicant~3_combout\);

-- Location: LABCELL_X55_Y4_N0
\inst|multiplicant[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(3) = ( \inst|state.S0~q\ & ( \inst|multiplicant\(3) ) ) # ( !\inst|state.S0~q\ & ( \inst|multiplicant~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_multiplicant~3_combout\,
	datad => \inst|ALT_INV_multiplicant\(3),
	dataf => \inst|ALT_INV_state.S0~q\,
	combout => \inst|multiplicant\(3));

-- Location: IOIBUF_X54_Y0_N1
\ip[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(4),
	o => \ip[4]~input_o\);

-- Location: MLABCELL_X52_Y4_N24
\inst|multiplicant~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~4_combout\ = ( !\cantS~input_o\ & ( \ip[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ip[4]~input_o\,
	dataf => \ALT_INV_cantS~input_o\,
	combout => \inst|multiplicant~4_combout\);

-- Location: LABCELL_X55_Y4_N33
\inst|multiplicant[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(4) = ( \inst|state.S0~q\ & ( \inst|multiplicant\(4) ) ) # ( !\inst|state.S0~q\ & ( \inst|multiplicant~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_multiplicant\(4),
	datac => \inst|ALT_INV_multiplicant~4_combout\,
	dataf => \inst|ALT_INV_state.S0~q\,
	combout => \inst|multiplicant\(4));

-- Location: IOIBUF_X50_Y0_N75
\ip[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(5),
	o => \ip[5]~input_o\);

-- Location: MLABCELL_X52_Y4_N3
\inst|multiplicant~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~5_combout\ = ( !\cantS~input_o\ & ( \ip[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ip[5]~input_o\,
	dataf => \ALT_INV_cantS~input_o\,
	combout => \inst|multiplicant~5_combout\);

-- Location: LABCELL_X55_Y4_N15
\inst|multiplicant[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(5) = ( \inst|multiplicant\(5) & ( (\inst|multiplicant~5_combout\) # (\inst|state.S0~q\) ) ) # ( !\inst|multiplicant\(5) & ( (!\inst|state.S0~q\ & \inst|multiplicant~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_state.S0~q\,
	datad => \inst|ALT_INV_multiplicant~5_combout\,
	dataf => \inst|ALT_INV_multiplicant\(5),
	combout => \inst|multiplicant\(5));

-- Location: IOIBUF_X66_Y0_N75
\ip[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(6),
	o => \ip[6]~input_o\);

-- Location: LABCELL_X56_Y4_N48
\inst|multiplicant~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~6_combout\ = ( \ip[6]~input_o\ & ( !\cantS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	dataf => \ALT_INV_ip[6]~input_o\,
	combout => \inst|multiplicant~6_combout\);

-- Location: LABCELL_X55_Y4_N6
\inst|multiplicant[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(6) = ( \inst|multiplicant\(6) & ( (\inst|multiplicant~6_combout\) # (\inst|state.S0~q\) ) ) # ( !\inst|multiplicant\(6) & ( (!\inst|state.S0~q\ & \inst|multiplicant~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S0~q\,
	datac => \inst|ALT_INV_multiplicant~6_combout\,
	dataf => \inst|ALT_INV_multiplicant\(6),
	combout => \inst|multiplicant\(6));

-- Location: IOIBUF_X66_Y0_N58
\ip[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(7),
	o => \ip[7]~input_o\);

-- Location: LABCELL_X56_Y4_N30
\inst|multiplicant~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~7_combout\ = ( \ip[7]~input_o\ & ( !\cantS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cantS~input_o\,
	dataf => \ALT_INV_ip[7]~input_o\,
	combout => \inst|multiplicant~7_combout\);

-- Location: LABCELL_X55_Y4_N42
\inst|multiplicant[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(7) = ( \inst|state.S0~q\ & ( \inst|multiplicant\(7) ) ) # ( !\inst|state.S0~q\ & ( \inst|multiplicant~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_multiplicant\(7),
	datac => \inst|ALT_INV_multiplicant~7_combout\,
	dataf => \inst|ALT_INV_state.S0~q\,
	combout => \inst|multiplicant\(7));

-- Location: IOIBUF_X62_Y0_N35
\ip[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ip(8),
	o => \ip[8]~input_o\);

-- Location: LABCELL_X56_Y4_N54
\inst|multiplicant~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant~8_combout\ = ( !\cantS~input_o\ & ( \ip[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ip[8]~input_o\,
	datae => \ALT_INV_cantS~input_o\,
	combout => \inst|multiplicant~8_combout\);

-- Location: LABCELL_X55_Y4_N9
\inst|multiplicant[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplicant\(8) = ( \inst|multiplicant\(8) & ( (\inst|multiplicant~8_combout\) # (\inst|state.S0~q\) ) ) # ( !\inst|multiplicant\(8) & ( (!\inst|state.S0~q\ & \inst|multiplicant~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S0~q\,
	datac => \inst|ALT_INV_multiplicant~8_combout\,
	dataf => \inst|ALT_INV_multiplicant\(8),
	combout => \inst|multiplicant\(8));

-- Location: LABCELL_X56_Y4_N42
\inst|multiplier~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~0_combout\ = (!\erS~input_o\ & \ip[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_erS~input_o\,
	datac => \ALT_INV_ip[0]~input_o\,
	combout => \inst|multiplier~0_combout\);

-- Location: LABCELL_X55_Y4_N30
\inst|multiplier[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(0) = ( \inst|multiplier\(0) & ( (!\inst|state.S1~q\) # (\inst|multiplier~0_combout\) ) ) # ( !\inst|multiplier\(0) & ( (\inst|multiplier~0_combout\ & \inst|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_multiplier~0_combout\,
	datad => \inst|ALT_INV_state.S1~q\,
	dataf => \inst|ALT_INV_multiplier\(0),
	combout => \inst|multiplier\(0));

-- Location: LABCELL_X56_Y4_N12
\inst|multiplier~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~1_combout\ = ( \ip[1]~input_o\ & ( !\erS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_erS~input_o\,
	datae => \ALT_INV_ip[1]~input_o\,
	combout => \inst|multiplier~1_combout\);

-- Location: LABCELL_X55_Y4_N45
\inst|multiplier[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(1) = (!\inst|state.S1~q\ & ((\inst|multiplier\(1)))) # (\inst|state.S1~q\ & (\inst|multiplier~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_multiplier~1_combout\,
	datac => \inst|ALT_INV_multiplier\(1),
	datad => \inst|ALT_INV_state.S1~q\,
	combout => \inst|multiplier\(1));

-- Location: LABCELL_X56_Y4_N3
\inst|multiplier~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~2_combout\ = (!\erS~input_o\ & \ip[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_erS~input_o\,
	datad => \ALT_INV_ip[2]~input_o\,
	combout => \inst|multiplier~2_combout\);

-- Location: LABCELL_X55_Y4_N21
\inst|multiplier[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(2) = ( \inst|multiplier\(2) & ( (!\inst|state.S1~q\) # (\inst|multiplier~2_combout\) ) ) # ( !\inst|multiplier\(2) & ( (\inst|multiplier~2_combout\ & \inst|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_multiplier~2_combout\,
	datad => \inst|ALT_INV_state.S1~q\,
	dataf => \inst|ALT_INV_multiplier\(2),
	combout => \inst|multiplier\(2));

-- Location: LABCELL_X56_Y4_N0
\inst|multiplier~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~3_combout\ = (!\erS~input_o\ & \ip[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_erS~input_o\,
	datad => \ALT_INV_ip[3]~input_o\,
	combout => \inst|multiplier~3_combout\);

-- Location: LABCELL_X55_Y4_N3
\inst|multiplier[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(3) = ( \inst|state.S1~q\ & ( \inst|multiplier~3_combout\ ) ) # ( !\inst|state.S1~q\ & ( \inst|multiplier\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_multiplier~3_combout\,
	datad => \inst|ALT_INV_multiplier\(3),
	dataf => \inst|ALT_INV_state.S1~q\,
	combout => \inst|multiplier\(3));

-- Location: MLABCELL_X52_Y4_N33
\inst|multiplier~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~4_combout\ = ( \ip[4]~input_o\ & ( !\erS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_erS~input_o\,
	dataf => \ALT_INV_ip[4]~input_o\,
	combout => \inst|multiplier~4_combout\);

-- Location: LABCELL_X55_Y4_N48
\inst|multiplier[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(4) = ( \inst|multiplier\(4) & ( (!\inst|state.S1~q\) # (\inst|multiplier~4_combout\) ) ) # ( !\inst|multiplier\(4) & ( (\inst|multiplier~4_combout\ & \inst|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_multiplier~4_combout\,
	datad => \inst|ALT_INV_state.S1~q\,
	dataf => \inst|ALT_INV_multiplier\(4),
	combout => \inst|multiplier\(4));

-- Location: MLABCELL_X52_Y4_N12
\inst|multiplier~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~5_combout\ = ( !\erS~input_o\ & ( \ip[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ip[5]~input_o\,
	dataf => \ALT_INV_erS~input_o\,
	combout => \inst|multiplier~5_combout\);

-- Location: LABCELL_X55_Y4_N27
\inst|multiplier[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(5) = ( \inst|multiplier\(5) & ( (!\inst|state.S1~q\) # (\inst|multiplier~5_combout\) ) ) # ( !\inst|multiplier\(5) & ( (\inst|multiplier~5_combout\ & \inst|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_multiplier~5_combout\,
	datad => \inst|ALT_INV_state.S1~q\,
	dataf => \inst|ALT_INV_multiplier\(5),
	combout => \inst|multiplier\(5));

-- Location: LABCELL_X56_Y4_N27
\inst|multiplier~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~6_combout\ = ( \ip[6]~input_o\ & ( !\erS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_erS~input_o\,
	dataf => \ALT_INV_ip[6]~input_o\,
	combout => \inst|multiplier~6_combout\);

-- Location: LABCELL_X55_Y4_N36
\inst|multiplier[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(6) = ( \inst|state.S1~q\ & ( \inst|multiplier~6_combout\ ) ) # ( !\inst|state.S1~q\ & ( \inst|multiplier\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_multiplier~6_combout\,
	datad => \inst|ALT_INV_multiplier\(6),
	dataf => \inst|ALT_INV_state.S1~q\,
	combout => \inst|multiplier\(6));

-- Location: LABCELL_X56_Y4_N51
\inst|multiplier~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~7_combout\ = ( \ip[7]~input_o\ & ( !\erS~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_erS~input_o\,
	dataf => \ALT_INV_ip[7]~input_o\,
	combout => \inst|multiplier~7_combout\);

-- Location: LABCELL_X55_Y4_N57
\inst|multiplier[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(7) = ( \inst|state.S1~q\ & ( \inst|multiplier~7_combout\ ) ) # ( !\inst|state.S1~q\ & ( \inst|multiplier\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_multiplier~7_combout\,
	datac => \inst|ALT_INV_multiplier\(7),
	datae => \inst|ALT_INV_state.S1~q\,
	combout => \inst|multiplier\(7));

-- Location: LABCELL_X56_Y4_N33
\inst|multiplier~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier~8_combout\ = (\ip[8]~input_o\ & !\erS~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ip[8]~input_o\,
	datac => \ALT_INV_erS~input_o\,
	combout => \inst|multiplier~8_combout\);

-- Location: LABCELL_X55_Y4_N24
\inst|multiplier[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|multiplier\(8) = ( \inst|multiplier\(8) & ( (!\inst|state.S1~q\) # (\inst|multiplier~8_combout\) ) ) # ( !\inst|multiplier\(8) & ( (\inst|multiplier~8_combout\ & \inst|state.S1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_multiplier~8_combout\,
	datac => \inst|ALT_INV_state.S1~q\,
	dataf => \inst|ALT_INV_multiplier\(8),
	combout => \inst|multiplier\(8));

-- Location: DSP_X54_Y4_N0
\inst|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 9,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 9,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \inst|Mult0~8_AX_bus\,
	ay => \inst|Mult0~8_AY_bus\,
	resulta => \inst|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X53_Y4_N30
\inst|Result[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(0) = ( \inst|Result\(0) & ( (!\inst|state.S2~q\) # (\inst|Mult0~8_resulta\) ) ) # ( !\inst|Result\(0) & ( (\inst|state.S2~q\ & \inst|Mult0~8_resulta\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Mult0~8_resulta\,
	dataf => \inst|ALT_INV_Result\(0),
	combout => \inst|Result\(0));

-- Location: LABCELL_X53_Y4_N33
\inst|Result[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(1) = ( \inst|Mult0~9\ & ( (\inst|state.S2~q\) # (\inst|Result\(1)) ) ) # ( !\inst|Mult0~9\ & ( (\inst|Result\(1) & !\inst|state.S2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(1),
	datac => \inst|ALT_INV_state.S2~q\,
	dataf => \inst|ALT_INV_Mult0~9\,
	combout => \inst|Result\(1));

-- Location: LABCELL_X53_Y4_N3
\inst|Result[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(2) = ( \inst|Mult0~10\ & ( (\inst|Result\(2)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~10\ & ( (!\inst|state.S2~q\ & \inst|Result\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Result\(2),
	dataf => \inst|ALT_INV_Mult0~10\,
	combout => \inst|Result\(2));

-- Location: LABCELL_X53_Y3_N27
\inst1|Seg1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg1|Mux0~0_combout\ = ( \inst|Result\(2) & ( (\inst|Result\(0) & \inst|Result\(1)) ) ) # ( !\inst|Result\(2) & ( !\inst|Result\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(0),
	datac => \inst|ALT_INV_Result\(1),
	dataf => \inst|ALT_INV_Result\(2),
	combout => \inst1|Seg1|Mux0~0_combout\);

-- Location: LABCELL_X53_Y3_N6
\inst1|Seg1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg1|Mux1~0_combout\ = ( \inst|Result\(2) & ( (\inst|Result\(1) & \inst|Result\(0)) ) ) # ( !\inst|Result\(2) & ( (\inst|Result\(0)) # (\inst|Result\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(1),
	datad => \inst|ALT_INV_Result\(0),
	dataf => \inst|ALT_INV_Result\(2),
	combout => \inst1|Seg1|Mux1~0_combout\);

-- Location: LABCELL_X53_Y3_N3
\inst1|Seg1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg1|Mux2~0_combout\ = ( \inst|Result\(2) & ( (!\inst|Result\(1)) # (\inst|Result\(0)) ) ) # ( !\inst|Result\(2) & ( \inst|Result\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(0),
	datac => \inst|ALT_INV_Result\(1),
	dataf => \inst|ALT_INV_Result\(2),
	combout => \inst1|Seg1|Mux2~0_combout\);

-- Location: LABCELL_X53_Y3_N42
\inst1|Seg1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg1|Mux3~0_combout\ = ( \inst|Result\(2) & ( !\inst|Result\(1) $ (\inst|Result\(0)) ) ) # ( !\inst|Result\(2) & ( (!\inst|Result\(1) & \inst|Result\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(1),
	datad => \inst|ALT_INV_Result\(0),
	dataf => \inst|ALT_INV_Result\(2),
	combout => \inst1|Seg1|Mux3~0_combout\);

-- Location: LABCELL_X53_Y3_N12
\inst1|Seg1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg1|Mux4~0_combout\ = ( \inst|Result\(1) & ( (!\inst|Result\(2) & !\inst|Result\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(2),
	datab => \inst|ALT_INV_Result\(0),
	dataf => \inst|ALT_INV_Result\(1),
	combout => \inst1|Seg1|Mux4~0_combout\);

-- Location: LABCELL_X53_Y3_N15
\inst1|Seg1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg1|Mux5~0_combout\ = ( \inst|Result\(1) & ( (\inst|Result\(2) & !\inst|Result\(0)) ) ) # ( !\inst|Result\(1) & ( (\inst|Result\(2) & \inst|Result\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(2),
	datac => \inst|ALT_INV_Result\(0),
	dataf => \inst|ALT_INV_Result\(1),
	combout => \inst1|Seg1|Mux5~0_combout\);

-- Location: LABCELL_X53_Y3_N57
\inst1|Seg1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg1|Mux6~0_combout\ = ( \inst|Result\(2) & ( (!\inst|Result\(0) & !\inst|Result\(1)) ) ) # ( !\inst|Result\(2) & ( (\inst|Result\(0) & !\inst|Result\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(0),
	datac => \inst|ALT_INV_Result\(1),
	dataf => \inst|ALT_INV_Result\(2),
	combout => \inst1|Seg1|Mux6~0_combout\);

-- Location: LABCELL_X53_Y4_N48
\inst|Result[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(3) = ( \inst|Mult0~11\ & ( (\inst|Result\(3)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~11\ & ( (!\inst|state.S2~q\ & \inst|Result\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datac => \inst|ALT_INV_Result\(3),
	dataf => \inst|ALT_INV_Mult0~11\,
	combout => \inst|Result\(3));

-- Location: LABCELL_X53_Y4_N27
\inst|Result[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(4) = ( \inst|Result\(4) & ( (!\inst|state.S2~q\) # (\inst|Mult0~12\) ) ) # ( !\inst|Result\(4) & ( (\inst|state.S2~q\ & \inst|Mult0~12\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Mult0~12\,
	dataf => \inst|ALT_INV_Result\(4),
	combout => \inst|Result\(4));

-- Location: LABCELL_X53_Y4_N24
\inst|Result[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(5) = ( \inst|Mult0~13\ & ( (\inst|Result\(5)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~13\ & ( (!\inst|state.S2~q\ & \inst|Result\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datac => \inst|ALT_INV_Result\(5),
	dataf => \inst|ALT_INV_Mult0~13\,
	combout => \inst|Result\(5));

-- Location: LABCELL_X51_Y4_N27
\inst1|Seg2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg2|Mux0~0_combout\ = ( \inst|Result\(5) & ( (\inst|Result\(3) & \inst|Result\(4)) ) ) # ( !\inst|Result\(5) & ( !\inst|Result\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(3),
	datac => \inst|ALT_INV_Result\(4),
	dataf => \inst|ALT_INV_Result\(5),
	combout => \inst1|Seg2|Mux0~0_combout\);

-- Location: MLABCELL_X52_Y4_N36
\inst1|Seg2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg2|Mux1~0_combout\ = ( \inst|Result\(3) & ( \inst|Result\(5) & ( \inst|Result\(4) ) ) ) # ( \inst|Result\(3) & ( !\inst|Result\(5) ) ) # ( !\inst|Result\(3) & ( !\inst|Result\(5) & ( \inst|Result\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(4),
	datae => \inst|ALT_INV_Result\(3),
	dataf => \inst|ALT_INV_Result\(5),
	combout => \inst1|Seg2|Mux1~0_combout\);

-- Location: LABCELL_X51_Y4_N6
\inst1|Seg2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg2|Mux2~0_combout\ = ( \inst|Result\(5) & ( (!\inst|Result\(4)) # (\inst|Result\(3)) ) ) # ( !\inst|Result\(5) & ( \inst|Result\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(4),
	datac => \inst|ALT_INV_Result\(3),
	dataf => \inst|ALT_INV_Result\(5),
	combout => \inst1|Seg2|Mux2~0_combout\);

-- Location: LABCELL_X51_Y4_N0
\inst1|Seg2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg2|Mux3~0_combout\ = ( \inst|Result\(5) & ( !\inst|Result\(4) $ (\inst|Result\(3)) ) ) # ( !\inst|Result\(5) & ( (!\inst|Result\(4) & \inst|Result\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(4),
	datac => \inst|ALT_INV_Result\(3),
	dataf => \inst|ALT_INV_Result\(5),
	combout => \inst1|Seg2|Mux3~0_combout\);

-- Location: MLABCELL_X52_Y4_N45
\inst1|Seg2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg2|Mux4~0_combout\ = ( !\inst|Result\(3) & ( !\inst|Result\(5) & ( \inst|Result\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(4),
	datae => \inst|ALT_INV_Result\(3),
	dataf => \inst|ALT_INV_Result\(5),
	combout => \inst1|Seg2|Mux4~0_combout\);

-- Location: LABCELL_X51_Y4_N57
\inst1|Seg2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg2|Mux5~0_combout\ = ( \inst|Result\(5) & ( !\inst|Result\(3) $ (!\inst|Result\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(3),
	datac => \inst|ALT_INV_Result\(4),
	dataf => \inst|ALT_INV_Result\(5),
	combout => \inst1|Seg2|Mux5~0_combout\);

-- Location: LABCELL_X51_Y4_N51
\inst1|Seg2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg2|Mux6~0_combout\ = ( \inst|Result\(5) & ( (!\inst|Result\(3) & !\inst|Result\(4)) ) ) # ( !\inst|Result\(5) & ( (\inst|Result\(3) & !\inst|Result\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(3),
	datac => \inst|ALT_INV_Result\(4),
	dataf => \inst|ALT_INV_Result\(5),
	combout => \inst1|Seg2|Mux6~0_combout\);

-- Location: LABCELL_X53_Y4_N54
\inst|Result[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(7) = ( \inst|Mult0~15\ & ( (\inst|Result\(7)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~15\ & ( (!\inst|state.S2~q\ & \inst|Result\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Result\(7),
	dataf => \inst|ALT_INV_Mult0~15\,
	combout => \inst|Result\(7));

-- Location: LABCELL_X53_Y4_N51
\inst|Result[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(8) = ( \inst|Result\(8) & ( (!\inst|state.S2~q\) # (\inst|Mult0~16\) ) ) # ( !\inst|Result\(8) & ( (\inst|state.S2~q\ & \inst|Mult0~16\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Mult0~16\,
	dataf => \inst|ALT_INV_Result\(8),
	combout => \inst|Result\(8));

-- Location: LABCELL_X53_Y4_N57
\inst|Result[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(6) = ( \inst|Result\(6) & ( (!\inst|state.S2~q\) # (\inst|Mult0~14\) ) ) # ( !\inst|Result\(6) & ( (\inst|state.S2~q\ & \inst|Mult0~14\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Mult0~14\,
	dataf => \inst|ALT_INV_Result\(6),
	combout => \inst|Result\(6));

-- Location: MLABCELL_X52_Y4_N0
\inst1|Seg3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg3|Mux0~0_combout\ = ( \inst|Result\(6) & ( !\inst|Result\(7) $ (\inst|Result\(8)) ) ) # ( !\inst|Result\(6) & ( (!\inst|Result\(7) & !\inst|Result\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(7),
	datad => \inst|ALT_INV_Result\(8),
	dataf => \inst|ALT_INV_Result\(6),
	combout => \inst1|Seg3|Mux0~0_combout\);

-- Location: LABCELL_X51_Y4_N42
\inst1|Seg3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg3|Mux1~0_combout\ = ( \inst|Result\(6) & ( (!\inst|Result\(8)) # (\inst|Result\(7)) ) ) # ( !\inst|Result\(6) & ( (\inst|Result\(7) & !\inst|Result\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100111111001100110000001100001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(7),
	datac => \inst|ALT_INV_Result\(8),
	datae => \inst|ALT_INV_Result\(6),
	combout => \inst1|Seg3|Mux1~0_combout\);

-- Location: MLABCELL_X52_Y4_N54
\inst1|Seg3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg3|Mux2~0_combout\ = ( \inst|Result\(8) & ( \inst|Result\(7) & ( \inst|Result\(6) ) ) ) # ( !\inst|Result\(8) & ( \inst|Result\(7) & ( \inst|Result\(6) ) ) ) # ( \inst|Result\(8) & ( !\inst|Result\(7) ) ) # ( !\inst|Result\(8) & ( 
-- !\inst|Result\(7) & ( \inst|Result\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(6),
	datae => \inst|ALT_INV_Result\(8),
	dataf => \inst|ALT_INV_Result\(7),
	combout => \inst1|Seg3|Mux2~0_combout\);

-- Location: LABCELL_X51_Y4_N12
\inst1|Seg3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg3|Mux3~0_combout\ = ( \inst|Result\(6) & ( !\inst|Result\(7) $ (\inst|Result\(8)) ) ) # ( !\inst|Result\(6) & ( (!\inst|Result\(7) & \inst|Result\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100001100000011001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(7),
	datac => \inst|ALT_INV_Result\(8),
	datae => \inst|ALT_INV_Result\(6),
	combout => \inst1|Seg3|Mux3~0_combout\);

-- Location: LABCELL_X51_Y4_N21
\inst1|Seg3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg3|Mux4~0_combout\ = ( !\inst|Result\(6) & ( (!\inst|Result\(8) & \inst|Result\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(8),
	datac => \inst|ALT_INV_Result\(7),
	datae => \inst|ALT_INV_Result\(6),
	combout => \inst1|Seg3|Mux4~0_combout\);

-- Location: MLABCELL_X52_Y4_N51
\inst1|Seg3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg3|Mux5~0_combout\ = (\inst|Result\(8) & (!\inst|Result\(7) $ (!\inst|Result\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(7),
	datac => \inst|ALT_INV_Result\(6),
	datad => \inst|ALT_INV_Result\(8),
	combout => \inst1|Seg3|Mux5~0_combout\);

-- Location: LABCELL_X51_Y4_N39
\inst1|Seg3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg3|Mux6~0_combout\ = ( \inst|Result\(6) & ( (!\inst|Result\(8) & !\inst|Result\(7)) ) ) # ( !\inst|Result\(6) & ( (\inst|Result\(8) & !\inst|Result\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000001010000010100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(8),
	datac => \inst|ALT_INV_Result\(7),
	datae => \inst|ALT_INV_Result\(6),
	combout => \inst1|Seg3|Mux6~0_combout\);

-- Location: LABCELL_X53_Y4_N36
\inst|Result[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(10) = ( \inst|Mult0~18\ & ( (\inst|Result\(10)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~18\ & ( (!\inst|state.S2~q\ & \inst|Result\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Result\(10),
	dataf => \inst|ALT_INV_Mult0~18\,
	combout => \inst|Result\(10));

-- Location: LABCELL_X53_Y4_N6
\inst|Result[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(9) = ( \inst|Mult0~17\ & ( (\inst|Result\(9)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~17\ & ( (!\inst|state.S2~q\ & \inst|Result\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Result\(9),
	dataf => \inst|ALT_INV_Mult0~17\,
	combout => \inst|Result\(9));

-- Location: LABCELL_X53_Y4_N39
\inst|Result[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(11) = ( \inst|Result\(11) & ( (!\inst|state.S2~q\) # (\inst|Mult0~19\) ) ) # ( !\inst|Result\(11) & ( (\inst|state.S2~q\ & \inst|Mult0~19\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Mult0~19\,
	dataf => \inst|ALT_INV_Result\(11),
	combout => \inst|Result\(11));

-- Location: MLABCELL_X52_Y4_N9
\inst1|Seg4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg4|Mux0~0_combout\ = ( \inst|Result\(9) & ( \inst|Result\(11) & ( \inst|Result\(10) ) ) ) # ( \inst|Result\(9) & ( !\inst|Result\(11) & ( !\inst|Result\(10) ) ) ) # ( !\inst|Result\(9) & ( !\inst|Result\(11) & ( !\inst|Result\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(10),
	datae => \inst|ALT_INV_Result\(9),
	dataf => \inst|ALT_INV_Result\(11),
	combout => \inst1|Seg4|Mux0~0_combout\);

-- Location: LABCELL_X50_Y4_N24
\inst1|Seg4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg4|Mux1~0_combout\ = ( \inst|Result\(11) & ( \inst|Result\(10) & ( \inst|Result\(9) ) ) ) # ( !\inst|Result\(11) & ( \inst|Result\(10) ) ) # ( !\inst|Result\(11) & ( !\inst|Result\(10) & ( \inst|Result\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(9),
	datae => \inst|ALT_INV_Result\(11),
	dataf => \inst|ALT_INV_Result\(10),
	combout => \inst1|Seg4|Mux1~0_combout\);

-- Location: MLABCELL_X52_Y4_N15
\inst1|Seg4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg4|Mux2~0_combout\ = ( \inst|Result\(11) & ( (!\inst|Result\(10)) # (\inst|Result\(9)) ) ) # ( !\inst|Result\(11) & ( \inst|Result\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(9),
	datac => \inst|ALT_INV_Result\(10),
	dataf => \inst|ALT_INV_Result\(11),
	combout => \inst1|Seg4|Mux2~0_combout\);

-- Location: LABCELL_X50_Y4_N57
\inst1|Seg4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg4|Mux3~0_combout\ = ( \inst|Result\(11) & ( \inst|Result\(10) & ( \inst|Result\(9) ) ) ) # ( \inst|Result\(11) & ( !\inst|Result\(10) & ( !\inst|Result\(9) ) ) ) # ( !\inst|Result\(11) & ( !\inst|Result\(10) & ( \inst|Result\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(9),
	datae => \inst|ALT_INV_Result\(11),
	dataf => \inst|ALT_INV_Result\(10),
	combout => \inst1|Seg4|Mux3~0_combout\);

-- Location: MLABCELL_X52_Y4_N21
\inst1|Seg4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg4|Mux4~0_combout\ = ( !\inst|Result\(9) & ( !\inst|Result\(11) & ( \inst|Result\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(10),
	datae => \inst|ALT_INV_Result\(9),
	dataf => \inst|ALT_INV_Result\(11),
	combout => \inst1|Seg4|Mux4~0_combout\);

-- Location: LABCELL_X50_Y4_N51
\inst1|Seg4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg4|Mux5~0_combout\ = ( \inst|Result\(11) & ( \inst|Result\(10) & ( !\inst|Result\(9) ) ) ) # ( \inst|Result\(11) & ( !\inst|Result\(10) & ( \inst|Result\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(9),
	datae => \inst|ALT_INV_Result\(11),
	dataf => \inst|ALT_INV_Result\(10),
	combout => \inst1|Seg4|Mux5~0_combout\);

-- Location: LABCELL_X53_Y4_N45
\inst1|Seg4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg4|Mux6~0_combout\ = ( !\inst|Result\(10) & ( !\inst|Result\(11) $ (!\inst|Result\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000111100001111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(11),
	datac => \inst|ALT_INV_Result\(9),
	datae => \inst|ALT_INV_Result\(10),
	combout => \inst1|Seg4|Mux6~0_combout\);

-- Location: LABCELL_X53_Y4_N9
\inst|Result[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(13) = ( \inst|Result\(13) & ( (!\inst|state.S2~q\) # (\inst|Mult0~21\) ) ) # ( !\inst|Result\(13) & ( (\inst|state.S2~q\ & \inst|Mult0~21\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Mult0~21\,
	dataf => \inst|ALT_INV_Result\(13),
	combout => \inst|Result\(13));

-- Location: LABCELL_X53_Y4_N15
\inst|Result[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(12) = ( \inst|Mult0~20\ & ( (\inst|Result\(12)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~20\ & ( (!\inst|state.S2~q\ & \inst|Result\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datac => \inst|ALT_INV_Result\(12),
	dataf => \inst|ALT_INV_Mult0~20\,
	combout => \inst|Result\(12));

-- Location: LABCELL_X53_Y4_N12
\inst|Result[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(14) = ( \inst|Mult0~22\ & ( (\inst|Result\(14)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~22\ & ( (!\inst|state.S2~q\ & \inst|Result\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Result\(14),
	dataf => \inst|ALT_INV_Mult0~22\,
	combout => \inst|Result\(14));

-- Location: LABCELL_X53_Y3_N39
\inst1|Seg5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg5|Mux0~0_combout\ = (!\inst|Result\(13) & ((!\inst|Result\(14)))) # (\inst|Result\(13) & (\inst|Result\(12) & \inst|Result\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000110101010000100011010101000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(13),
	datab => \inst|ALT_INV_Result\(12),
	datad => \inst|ALT_INV_Result\(14),
	combout => \inst1|Seg5|Mux0~0_combout\);

-- Location: LABCELL_X53_Y3_N36
\inst1|Seg5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg5|Mux1~0_combout\ = (!\inst|Result\(13) & (\inst|Result\(12) & !\inst|Result\(14))) # (\inst|Result\(13) & ((!\inst|Result\(14)) # (\inst|Result\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(13),
	datab => \inst|ALT_INV_Result\(12),
	datac => \inst|ALT_INV_Result\(14),
	combout => \inst1|Seg5|Mux1~0_combout\);

-- Location: LABCELL_X53_Y3_N18
\inst1|Seg5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg5|Mux2~0_combout\ = ((!\inst|Result\(13) & \inst|Result\(14))) # (\inst|Result\(12))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(13),
	datab => \inst|ALT_INV_Result\(12),
	datac => \inst|ALT_INV_Result\(14),
	combout => \inst1|Seg5|Mux2~0_combout\);

-- Location: LABCELL_X53_Y3_N48
\inst1|Seg5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg5|Mux3~0_combout\ = ( \inst|Result\(13) & ( (\inst|Result\(12) & \inst|Result\(14)) ) ) # ( !\inst|Result\(13) & ( !\inst|Result\(12) $ (!\inst|Result\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100111100001111000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(12),
	datac => \inst|ALT_INV_Result\(14),
	datae => \inst|ALT_INV_Result\(13),
	combout => \inst1|Seg5|Mux3~0_combout\);

-- Location: LABCELL_X53_Y3_N33
\inst1|Seg5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg5|Mux4~0_combout\ = (\inst|Result\(13) & (!\inst|Result\(12) & !\inst|Result\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(13),
	datab => \inst|ALT_INV_Result\(12),
	datad => \inst|ALT_INV_Result\(14),
	combout => \inst1|Seg5|Mux4~0_combout\);

-- Location: LABCELL_X53_Y3_N21
\inst1|Seg5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg5|Mux5~0_combout\ = (\inst|Result\(14) & (!\inst|Result\(13) $ (!\inst|Result\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(13),
	datab => \inst|ALT_INV_Result\(12),
	datad => \inst|ALT_INV_Result\(14),
	combout => \inst1|Seg5|Mux5~0_combout\);

-- Location: LABCELL_X53_Y3_N30
\inst1|Seg5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg5|Mux6~0_combout\ = (!\inst|Result\(13) & (!\inst|Result\(12) $ (!\inst|Result\(14))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Result\(13),
	datab => \inst|ALT_INV_Result\(12),
	datac => \inst|ALT_INV_Result\(14),
	combout => \inst1|Seg5|Mux6~0_combout\);

-- Location: LABCELL_X53_Y4_N18
\inst|Result[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(17) = ( \inst|Mult0~25\ & ( (\inst|Result\(17)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~25\ & ( (!\inst|state.S2~q\ & \inst|Result\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datac => \inst|ALT_INV_Result\(17),
	dataf => \inst|ALT_INV_Mult0~25\,
	combout => \inst|Result\(17));

-- Location: LABCELL_X53_Y4_N21
\inst|Result[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(15) = ( \inst|Result\(15) & ( (!\inst|state.S2~q\) # (\inst|Mult0~23\) ) ) # ( !\inst|Result\(15) & ( (\inst|state.S2~q\ & \inst|Mult0~23\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Mult0~23\,
	dataf => \inst|ALT_INV_Result\(15),
	combout => \inst|Result\(15));

-- Location: LABCELL_X53_Y4_N0
\inst|Result[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Result\(16) = ( \inst|Mult0~24\ & ( (\inst|Result\(16)) # (\inst|state.S2~q\) ) ) # ( !\inst|Mult0~24\ & ( (!\inst|state.S2~q\ & \inst|Result\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_state.S2~q\,
	datad => \inst|ALT_INV_Result\(16),
	dataf => \inst|ALT_INV_Mult0~24\,
	combout => \inst|Result\(16));

-- Location: LABCELL_X40_Y2_N24
\inst1|Seg6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg6|Mux0~0_combout\ = ( \inst|Result\(15) & ( \inst|Result\(16) & ( \inst|Result\(17) ) ) ) # ( \inst|Result\(15) & ( !\inst|Result\(16) & ( !\inst|Result\(17) ) ) ) # ( !\inst|Result\(15) & ( !\inst|Result\(16) & ( !\inst|Result\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(17),
	datae => \inst|ALT_INV_Result\(15),
	dataf => \inst|ALT_INV_Result\(16),
	combout => \inst1|Seg6|Mux0~0_combout\);

-- Location: LABCELL_X40_Y2_N45
\inst1|Seg6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg6|Mux1~0_combout\ = ( \inst|Result\(15) & ( \inst|Result\(16) ) ) # ( !\inst|Result\(15) & ( \inst|Result\(16) & ( !\inst|Result\(17) ) ) ) # ( \inst|Result\(15) & ( !\inst|Result\(16) & ( !\inst|Result\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(17),
	datae => \inst|ALT_INV_Result\(15),
	dataf => \inst|ALT_INV_Result\(16),
	combout => \inst1|Seg6|Mux1~0_combout\);

-- Location: LABCELL_X40_Y2_N12
\inst1|Seg6|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg6|Mux2~0_combout\ = ( \inst|Result\(15) & ( \inst|Result\(16) ) ) # ( \inst|Result\(15) & ( !\inst|Result\(16) ) ) # ( !\inst|Result\(15) & ( !\inst|Result\(16) & ( \inst|Result\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(17),
	datae => \inst|ALT_INV_Result\(15),
	dataf => \inst|ALT_INV_Result\(16),
	combout => \inst1|Seg6|Mux2~0_combout\);

-- Location: LABCELL_X40_Y2_N57
\inst1|Seg6|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg6|Mux3~0_combout\ = ( \inst|Result\(15) & ( \inst|Result\(16) & ( \inst|Result\(17) ) ) ) # ( \inst|Result\(15) & ( !\inst|Result\(16) & ( !\inst|Result\(17) ) ) ) # ( !\inst|Result\(15) & ( !\inst|Result\(16) & ( \inst|Result\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(17),
	datae => \inst|ALT_INV_Result\(15),
	dataf => \inst|ALT_INV_Result\(16),
	combout => \inst1|Seg6|Mux3~0_combout\);

-- Location: LABCELL_X40_Y2_N0
\inst1|Seg6|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg6|Mux4~0_combout\ = ( !\inst|Result\(15) & ( \inst|Result\(16) & ( !\inst|Result\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(17),
	datae => \inst|ALT_INV_Result\(15),
	dataf => \inst|ALT_INV_Result\(16),
	combout => \inst1|Seg6|Mux4~0_combout\);

-- Location: LABCELL_X40_Y2_N33
\inst1|Seg6|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg6|Mux5~0_combout\ = ( !\inst|Result\(15) & ( \inst|Result\(16) & ( \inst|Result\(17) ) ) ) # ( \inst|Result\(15) & ( !\inst|Result\(16) & ( \inst|Result\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Result\(17),
	datae => \inst|ALT_INV_Result\(15),
	dataf => \inst|ALT_INV_Result\(16),
	combout => \inst1|Seg6|Mux5~0_combout\);

-- Location: LABCELL_X40_Y2_N36
\inst1|Seg6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Seg6|Mux6~0_combout\ = ( \inst|Result\(15) & ( !\inst|Result\(16) & ( !\inst|Result\(17) ) ) ) # ( !\inst|Result\(15) & ( !\inst|Result\(16) & ( \inst|Result\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Result\(17),
	datae => \inst|ALT_INV_Result\(15),
	dataf => \inst|ALT_INV_Result\(16),
	combout => \inst1|Seg6|Mux6~0_combout\);

-- Location: LABCELL_X31_Y41_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


