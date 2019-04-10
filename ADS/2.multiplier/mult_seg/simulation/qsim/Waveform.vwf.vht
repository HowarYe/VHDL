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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/05/2019 15:42:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mult_seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mult_seg_vhd_vec_tst IS
END mult_seg_vhd_vec_tst;
ARCHITECTURE mult_seg_arch OF mult_seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cantS : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL erS : STD_LOGIC;
SIGNAL ip : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL LEDop : STD_LOGIC;
SIGNAL Seg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Seg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Seg3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Seg4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Seg5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Seg6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT mult_seg
	PORT (
	cantS : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	erS : IN STD_LOGIC;
	ip : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	LEDop : OUT STD_LOGIC;
	Seg1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Seg2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Seg3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Seg4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Seg5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Seg6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mult_seg
	PORT MAP (
-- list connections between master ports and signals
	cantS => cantS,
	clk => clk,
	erS => erS,
	ip => ip,
	LEDop => LEDop,
	Seg1 => Seg1,
	Seg2 => Seg2,
	Seg3 => Seg3,
	Seg4 => Seg4,
	Seg5 => Seg5,
	Seg6 => Seg6
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- cantS
t_prcs_cantS: PROCESS
BEGIN
	cantS <= '0';
	WAIT FOR 150000 ps;
	cantS <= '1';
	WAIT FOR 200000 ps;
	cantS <= '0';
	WAIT FOR 100000 ps;
	cantS <= '1';
	WAIT FOR 200000 ps;
	cantS <= '0';
	WAIT FOR 100000 ps;
	cantS <= '1';
WAIT;
END PROCESS t_prcs_cantS;

-- erS
t_prcs_erS: PROCESS
BEGIN
	erS <= '1';
	WAIT FOR 150000 ps;
	erS <= '0';
	WAIT FOR 100000 ps;
	erS <= '1';
	WAIT FOR 200000 ps;
	erS <= '0';
	WAIT FOR 100000 ps;
	erS <= '1';
	WAIT FOR 200000 ps;
	erS <= '0';
	WAIT FOR 100000 ps;
	erS <= '1';
WAIT;
END PROCESS t_prcs_erS;
-- ip[8]
t_prcs_ip_8: PROCESS
BEGIN
	ip(8) <= '1';
	WAIT FOR 150000 ps;
	ip(8) <= '0';
	WAIT FOR 200000 ps;
	ip(8) <= '1';
	WAIT FOR 200000 ps;
	ip(8) <= '0';
	WAIT FOR 100000 ps;
	ip(8) <= '1';
	WAIT FOR 200000 ps;
	ip(8) <= '0';
WAIT;
END PROCESS t_prcs_ip_8;
-- ip[7]
t_prcs_ip_7: PROCESS
BEGIN
	ip(7) <= '0';
	WAIT FOR 350000 ps;
	ip(7) <= '1';
	WAIT FOR 100000 ps;
	ip(7) <= '0';
	WAIT FOR 200000 ps;
	ip(7) <= '1';
	WAIT FOR 200000 ps;
	ip(7) <= '0';
WAIT;
END PROCESS t_prcs_ip_7;
-- ip[6]
t_prcs_ip_6: PROCESS
BEGIN
	ip(6) <= '1';
	WAIT FOR 250000 ps;
	ip(6) <= '0';
	WAIT FOR 100000 ps;
	ip(6) <= '1';
	WAIT FOR 200000 ps;
	ip(6) <= '0';
	WAIT FOR 100000 ps;
	ip(6) <= '1';
	WAIT FOR 200000 ps;
	ip(6) <= '0';
WAIT;
END PROCESS t_prcs_ip_6;
-- ip[5]
t_prcs_ip_5: PROCESS
BEGIN
	ip(5) <= '1';
	WAIT FOR 150000 ps;
	ip(5) <= '0';
	WAIT FOR 300000 ps;
	ip(5) <= '1';
	WAIT FOR 100000 ps;
	ip(5) <= '0';
	WAIT FOR 100000 ps;
	ip(5) <= '1';
	WAIT FOR 200000 ps;
	ip(5) <= '0';
WAIT;
END PROCESS t_prcs_ip_5;
-- ip[4]
t_prcs_ip_4: PROCESS
BEGIN
	ip(4) <= '0';
	WAIT FOR 150000 ps;
	ip(4) <= '1';
	WAIT FOR 100000 ps;
	ip(4) <= '0';
	WAIT FOR 100000 ps;
	ip(4) <= '1';
	WAIT FOR 200000 ps;
	ip(4) <= '0';
	WAIT FOR 100000 ps;
	ip(4) <= '1';
	WAIT FOR 200000 ps;
	ip(4) <= '0';
WAIT;
END PROCESS t_prcs_ip_4;
-- ip[3]
t_prcs_ip_3: PROCESS
BEGIN
	ip(3) <= '0';
	WAIT FOR 450000 ps;
	ip(3) <= '1';
	WAIT FOR 100000 ps;
	ip(3) <= '0';
	WAIT FOR 100000 ps;
	ip(3) <= '1';
	WAIT FOR 200000 ps;
	ip(3) <= '0';
WAIT;
END PROCESS t_prcs_ip_3;
-- ip[2]
t_prcs_ip_2: PROCESS
BEGIN
	ip(2) <= '1';
	WAIT FOR 150000 ps;
	ip(2) <= '0';
	WAIT FOR 500000 ps;
	ip(2) <= '1';
	WAIT FOR 200000 ps;
	ip(2) <= '0';
WAIT;
END PROCESS t_prcs_ip_2;
-- ip[1]
t_prcs_ip_1: PROCESS
BEGIN
	ip(1) <= '1';
	WAIT FOR 250000 ps;
	ip(1) <= '0';
	WAIT FOR 100000 ps;
	ip(1) <= '1';
	WAIT FOR 200000 ps;
	ip(1) <= '0';
	WAIT FOR 100000 ps;
	ip(1) <= '1';
	WAIT FOR 200000 ps;
	ip(1) <= '0';
WAIT;
END PROCESS t_prcs_ip_1;
-- ip[0]
t_prcs_ip_0: PROCESS
BEGIN
	ip(0) <= '0';
	WAIT FOR 150000 ps;
	ip(0) <= '1';
	WAIT FOR 100000 ps;
	ip(0) <= '0';
	WAIT FOR 100000 ps;
	ip(0) <= '1';
	WAIT FOR 100000 ps;
	ip(0) <= '0';
	WAIT FOR 200000 ps;
	ip(0) <= '1';
	WAIT FOR 200000 ps;
	ip(0) <= '0';
WAIT;
END PROCESS t_prcs_ip_0;
END mult_seg_arch;
