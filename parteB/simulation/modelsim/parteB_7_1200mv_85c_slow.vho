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

-- DATE "10/27/2024 22:27:42"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parteB IS
    PORT (
	clk : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Bin : IN std_logic;
	Diff : OUT std_logic;
	Bout : OUT std_logic
	);
END parteB;

-- Design Ports Information
-- Diff	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bin	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parteB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Bin : std_logic;
SIGNAL ww_Diff : std_logic;
SIGNAL ww_Bout : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Diff~output_o\ : std_logic;
SIGNAL \Bout~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \Bin~input_o\ : std_logic;
SIGNAL \diff_internal~combout\ : std_logic;
SIGNAL \FFD_diff|q~q\ : std_logic;
SIGNAL \bout_internal~combout\ : std_logic;
SIGNAL \FFD_bout|q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_A <= A;
ww_B <= B;
ww_Bin <= Bin;
Diff <= ww_Diff;
Bout <= ww_Bout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X74_Y73_N15
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOOBUF_X60_Y0_N16
\Diff~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFD_diff|q~q\,
	devoe => ww_devoe,
	o => \Diff~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Bout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FFD_bout|q~q\,
	devoe => ww_devoe,
	o => \Bout~output_o\);

-- Location: IOIBUF_X40_Y73_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\Bin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bin,
	o => \Bin~input_o\);

-- Location: LCCOMB_X67_Y9_N16
diff_internal : cycloneiii_lcell_comb
-- Equation(s):
-- \diff_internal~combout\ = \A~input_o\ $ (\B~input_o\ $ (\Bin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \B~input_o\,
	datad => \Bin~input_o\,
	combout => \diff_internal~combout\);

-- Location: FF_X67_Y9_N17
\FFD_diff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \diff_internal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFD_diff|q~q\);

-- Location: LCCOMB_X67_Y9_N26
bout_internal : cycloneiii_lcell_comb
-- Equation(s):
-- \bout_internal~combout\ = (\A~input_o\ & (\B~input_o\ & \Bin~input_o\)) # (!\A~input_o\ & ((\B~input_o\) # (\Bin~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datac => \B~input_o\,
	datad => \Bin~input_o\,
	combout => \bout_internal~combout\);

-- Location: FF_X67_Y9_N27
\FFD_bout|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bout_internal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFD_bout|q~q\);

ww_Diff <= \Diff~output_o\;

ww_Bout <= \Bout~output_o\;
END structure;


