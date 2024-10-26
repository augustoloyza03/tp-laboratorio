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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/26/2024 15:43:22"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block4 IS
    PORT (
	\OUT\ : OUT std_logic;
	\IN\ : IN std_logic;
	IN2 : IN std_logic;
	IN1 : IN std_logic
	);
END Block4;

-- Design Ports Information
-- OUT	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_OUT\ : std_logic;
SIGNAL \ww_IN\ : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL \OUT~output_o\ : std_logic;
SIGNAL \IN~input_o\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;

BEGIN

\OUT\ <= \ww_OUT\;
\ww_IN\ <= \IN\;
ww_IN2 <= IN2;
ww_IN1 <= IN1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y4_N23
\OUT~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \OUT~output_o\);

-- Location: IOIBUF_X0_Y4_N1
\IN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\,
	o => \IN~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\IN2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\IN1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

-- Location: LCCOMB_X1_Y4_N0
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\IN~input_o\ & ((!\IN1~input_o\))) # (!\IN~input_o\ & ((\IN2~input_o\) # (\IN1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN~input_o\,
	datab => \IN2~input_o\,
	datad => \IN1~input_o\,
	combout => \inst3~combout\);

\ww_OUT\ <= \OUT~output_o\;
END structure;


