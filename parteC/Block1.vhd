-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Fri Nov 01 16:05:53 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		a0 :  IN  STD_LOGIC;
		Bin :  IN  STD_LOGIC;
		b0 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		Bout :  OUT  STD_LOGIC;
		Z3 :  OUT  STD_LOGIC;
		Z2 :  OUT  STD_LOGIC;
		Z1 :  OUT  STD_LOGIC;
		Z0 :  OUT  STD_LOGIC
	);
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

COMPONENT partec
	PORT(clk : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Bin : IN STD_LOGIC;
		 Diff : OUT STD_LOGIC;
		 Bout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT flipflopd
	PORT(clk : IN STD_LOGIC;
		 d : IN STD_LOGIC;
		 q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 



b2v_inst : partec
PORT MAP(clk => CLK,
		 A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 Bin => SYNTHESIZED_WIRE_2,
		 Diff => SYNTHESIZED_WIRE_4,
		 Bout => SYNTHESIZED_WIRE_10);


b2v_inst1 : flipflopd
PORT MAP(clk => CLK,
		 d => a0,
		 q => SYNTHESIZED_WIRE_0);


b2v_inst19 : flipflopd
PORT MAP(clk => CLK,
		 d => SYNTHESIZED_WIRE_3,
		 q => Z1);


b2v_inst20 : flipflopd
PORT MAP(clk => CLK,
		 d => SYNTHESIZED_WIRE_4,
		 q => Z0);


b2v_inst21 : flipflopd
PORT MAP(clk => CLK,
		 d => SYNTHESIZED_WIRE_5,
		 q => Z2);


b2v_inst22 : flipflopd
PORT MAP(clk => CLK,
		 d => SYNTHESIZED_WIRE_6,
		 q => Z3);


b2v_inst23 : flipflopd
PORT MAP(clk => CLK,
		 d => SYNTHESIZED_WIRE_7,
		 q => Bout);


b2v_inst24 : flipflopd
PORT MAP(clk => CLK,
		 d => a3,
		 q => SYNTHESIZED_WIRE_14);


b2v_inst25 : flipflopd
PORT MAP(clk => CLK,
		 d => b3,
		 q => SYNTHESIZED_WIRE_15);


b2v_inst26 : flipflopd
PORT MAP(clk => CLK,
		 d => Bin,
		 q => SYNTHESIZED_WIRE_2);


b2v_inst27 : flipflopd
PORT MAP(clk => CLK,
		 d => b0,
		 q => SYNTHESIZED_WIRE_1);


b2v_inst28 : flipflopd
PORT MAP(clk => CLK,
		 d => a1,
		 q => SYNTHESIZED_WIRE_8);


b2v_inst29 : flipflopd
PORT MAP(clk => CLK,
		 d => b1,
		 q => SYNTHESIZED_WIRE_9);


b2v_inst30 : flipflopd
PORT MAP(clk => CLK,
		 d => a2,
		 q => SYNTHESIZED_WIRE_11);


b2v_inst31 : flipflopd
PORT MAP(clk => CLK,
		 d => b2,
		 q => SYNTHESIZED_WIRE_12);


b2v_inst6 : partec
PORT MAP(clk => CLK,
		 A => SYNTHESIZED_WIRE_8,
		 B => SYNTHESIZED_WIRE_9,
		 Bin => SYNTHESIZED_WIRE_10,
		 Diff => SYNTHESIZED_WIRE_3,
		 Bout => SYNTHESIZED_WIRE_13);


b2v_inst7 : partec
PORT MAP(clk => CLK,
		 A => SYNTHESIZED_WIRE_11,
		 B => SYNTHESIZED_WIRE_12,
		 Bin => SYNTHESIZED_WIRE_13,
		 Diff => SYNTHESIZED_WIRE_5,
		 Bout => SYNTHESIZED_WIRE_16);


b2v_inst8 : partec
PORT MAP(clk => CLK,
		 A => SYNTHESIZED_WIRE_14,
		 B => SYNTHESIZED_WIRE_15,
		 Bin => SYNTHESIZED_WIRE_16,
		 Diff => SYNTHESIZED_WIRE_6,
		 Bout => SYNTHESIZED_WIRE_7);


END bdf_type;