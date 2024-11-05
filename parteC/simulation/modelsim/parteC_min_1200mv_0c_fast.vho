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

-- DATE "11/01/2024 19:51:16"

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

ENTITY 	Block1 IS
    PORT (
	CLK : IN std_logic;
	a0 : IN std_logic;
	Bin : IN std_logic;
	b0 : IN std_logic;
	a1 : IN std_logic;
	b1 : IN std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	a3 : IN std_logic;
	b3 : IN std_logic;
	Bout : OUT std_logic;
	Z3 : OUT std_logic;
	Z2 : OUT std_logic;
	Z1 : OUT std_logic;
	Z0 : OUT std_logic
	);
END Block1;

-- Design Ports Information
-- Bout	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z3	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z2	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z1	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z0	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bin	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a3	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_Bin : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_a3 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_Bout : std_logic;
SIGNAL ww_Z3 : std_logic;
SIGNAL ww_Z2 : std_logic;
SIGNAL ww_Z1 : std_logic;
SIGNAL ww_Z0 : std_logic;
SIGNAL \b2v_inst25|q~q\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \Bout~output_o\ : std_logic;
SIGNAL \Z3~output_o\ : std_logic;
SIGNAL \Z2~output_o\ : std_logic;
SIGNAL \Z1~output_o\ : std_logic;
SIGNAL \Z0~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \a3~input_o\ : std_logic;
SIGNAL \b2v_inst24|q~q\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b2v_inst31|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst31|q~q\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \b2v_inst30|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst30|q~q\ : std_logic;
SIGNAL \b2v_inst7|Bout~0_combout\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \b2v_inst28|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst28|q~q\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \b2v_inst27|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst27|q~q\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \b2v_inst1|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|q~q\ : std_logic;
SIGNAL \b2v_inst|Bout~combout\ : std_logic;
SIGNAL \b2v_inst7|Bout~1_combout\ : std_logic;
SIGNAL \b2v_inst7|Bout~2_combout\ : std_logic;
SIGNAL \b2v_inst8|Bout~combout\ : std_logic;
SIGNAL \b2v_inst23|q~q\ : std_logic;
SIGNAL \b2v_inst8|Diff~combout\ : std_logic;
SIGNAL \b2v_inst22|q~q\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \b2v_inst29|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst29|q~q\ : std_logic;
SIGNAL \b2v_inst7|Diff~combout\ : std_logic;
SIGNAL \b2v_inst21|q~q\ : std_logic;
SIGNAL \b2v_inst6|Diff~combout\ : std_logic;
SIGNAL \b2v_inst19|q~q\ : std_logic;
SIGNAL \Bin~input_o\ : std_logic;
SIGNAL \b2v_inst26|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst26|q~q\ : std_logic;
SIGNAL \b2v_inst|Diff~combout\ : std_logic;
SIGNAL \b2v_inst20|q~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_a0 <= a0;
ww_Bin <= Bin;
ww_b0 <= b0;
ww_a1 <= a1;
ww_b1 <= b1;
ww_a2 <= a2;
ww_b2 <= b2;
ww_a3 <= a3;
ww_b3 <= b3;
Bout <= ww_Bout;
Z3 <= ww_Z3;
Z2 <= ww_Z2;
Z1 <= ww_Z1;
Z0 <= ww_Z0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X68_Y1_N3
\b2v_inst25|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \b3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|q~q\);

-- Location: IOIBUF_X83_Y0_N1
\b3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: IOOBUF_X83_Y0_N16
\Bout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst23|q~q\,
	devoe => ww_devoe,
	o => \Bout~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\Z3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst22|q~q\,
	devoe => ww_devoe,
	o => \Z3~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Z2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst21|q~q\,
	devoe => ww_devoe,
	o => \Z2~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Z1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst19|q~q\,
	devoe => ww_devoe,
	o => \Z1~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Z0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst20|q~q\,
	devoe => ww_devoe,
	o => \Z0~output_o\);

-- Location: IOIBUF_X40_Y73_N8
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\a3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a3,
	o => \a3~input_o\);

-- Location: FF_X68_Y1_N5
\b2v_inst24|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \a3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|q~q\);

-- Location: IOIBUF_X67_Y0_N15
\b2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LCCOMB_X68_Y1_N0
\b2v_inst31|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst31|q~feeder_combout\ = \b2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2~input_o\,
	combout => \b2v_inst31|q~feeder_combout\);

-- Location: FF_X68_Y1_N1
\b2v_inst31|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst31|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst31|q~q\);

-- Location: IOIBUF_X81_Y0_N22
\a2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LCCOMB_X68_Y1_N14
\b2v_inst30|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst30|q~feeder_combout\ = \a2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a2~input_o\,
	combout => \b2v_inst30|q~feeder_combout\);

-- Location: FF_X68_Y1_N15
\b2v_inst30|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst30|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst30|q~q\);

-- Location: LCCOMB_X68_Y1_N4
\b2v_inst7|Bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Bout~0_combout\ = (\b2v_inst31|q~q\ & !\b2v_inst30|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst31|q~q\,
	datad => \b2v_inst30|q~q\,
	combout => \b2v_inst7|Bout~0_combout\);

-- Location: IOIBUF_X85_Y0_N8
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: LCCOMB_X68_Y1_N28
\b2v_inst28|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst28|q~feeder_combout\ = \a1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a1~input_o\,
	combout => \b2v_inst28|q~feeder_combout\);

-- Location: FF_X68_Y1_N29
\b2v_inst28|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst28|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst28|q~q\);

-- Location: IOIBUF_X56_Y0_N15
\b0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X68_Y1_N8
\b2v_inst27|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst27|q~feeder_combout\ = \b0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b0~input_o\,
	combout => \b2v_inst27|q~feeder_combout\);

-- Location: FF_X68_Y1_N9
\b2v_inst27|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst27|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst27|q~q\);

-- Location: IOIBUF_X56_Y0_N22
\a0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X68_Y1_N12
\b2v_inst1|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~feeder_combout\ = \a0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a0~input_o\,
	combout => \b2v_inst1|q~feeder_combout\);

-- Location: FF_X68_Y1_N13
\b2v_inst1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst1|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|q~q\);

-- Location: LCCOMB_X68_Y1_N26
\b2v_inst|Bout\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Bout~combout\ = (\b2v_inst26|q~q\ & ((\b2v_inst27|q~q\) # (!\b2v_inst1|q~q\))) # (!\b2v_inst26|q~q\ & (\b2v_inst27|q~q\ & !\b2v_inst1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst26|q~q\,
	datac => \b2v_inst27|q~q\,
	datad => \b2v_inst1|q~q\,
	combout => \b2v_inst|Bout~combout\);

-- Location: LCCOMB_X68_Y1_N2
\b2v_inst7|Bout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Bout~1_combout\ = \b2v_inst30|q~q\ $ (\b2v_inst31|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst30|q~q\,
	datad => \b2v_inst31|q~q\,
	combout => \b2v_inst7|Bout~1_combout\);

-- Location: LCCOMB_X68_Y1_N10
\b2v_inst7|Bout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Bout~2_combout\ = (!\b2v_inst7|Bout~1_combout\ & ((\b2v_inst29|q~q\ & ((\b2v_inst|Bout~combout\) # (!\b2v_inst28|q~q\))) # (!\b2v_inst29|q~q\ & (!\b2v_inst28|q~q\ & \b2v_inst|Bout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst29|q~q\,
	datab => \b2v_inst28|q~q\,
	datac => \b2v_inst|Bout~combout\,
	datad => \b2v_inst7|Bout~1_combout\,
	combout => \b2v_inst7|Bout~2_combout\);

-- Location: LCCOMB_X68_Y1_N24
\b2v_inst8|Bout\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Bout~combout\ = (\b2v_inst25|q~q\ & (((\b2v_inst7|Bout~0_combout\) # (\b2v_inst7|Bout~2_combout\)) # (!\b2v_inst24|q~q\))) # (!\b2v_inst25|q~q\ & (!\b2v_inst24|q~q\ & ((\b2v_inst7|Bout~0_combout\) # (\b2v_inst7|Bout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst25|q~q\,
	datab => \b2v_inst24|q~q\,
	datac => \b2v_inst7|Bout~0_combout\,
	datad => \b2v_inst7|Bout~2_combout\,
	combout => \b2v_inst8|Bout~combout\);

-- Location: FF_X68_Y1_N25
\b2v_inst23|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst8|Bout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst23|q~q\);

-- Location: LCCOMB_X68_Y1_N6
\b2v_inst8|Diff\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|Diff~combout\ = \b2v_inst25|q~q\ $ (\b2v_inst24|q~q\ $ (((\b2v_inst7|Bout~0_combout\) # (\b2v_inst7|Bout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst25|q~q\,
	datab => \b2v_inst24|q~q\,
	datac => \b2v_inst7|Bout~0_combout\,
	datad => \b2v_inst7|Bout~2_combout\,
	combout => \b2v_inst8|Diff~combout\);

-- Location: FF_X68_Y1_N7
\b2v_inst22|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst8|Diff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|q~q\);

-- Location: IOIBUF_X74_Y73_N15
\b1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X68_Y1_N18
\b2v_inst29|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst29|q~feeder_combout\ = \b1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b1~input_o\,
	combout => \b2v_inst29|q~feeder_combout\);

-- Location: FF_X68_Y1_N19
\b2v_inst29|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst29|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst29|q~q\);

-- Location: LCCOMB_X68_Y1_N16
\b2v_inst7|Diff\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst7|Diff~combout\ = \b2v_inst7|Bout~1_combout\ $ (((\b2v_inst28|q~q\ & (\b2v_inst29|q~q\ & \b2v_inst|Bout~combout\)) # (!\b2v_inst28|q~q\ & ((\b2v_inst29|q~q\) # (\b2v_inst|Bout~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst28|q~q\,
	datab => \b2v_inst29|q~q\,
	datac => \b2v_inst7|Bout~1_combout\,
	datad => \b2v_inst|Bout~combout\,
	combout => \b2v_inst7|Diff~combout\);

-- Location: FF_X68_Y1_N17
\b2v_inst21|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst7|Diff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|q~q\);

-- Location: LCCOMB_X68_Y1_N30
\b2v_inst6|Diff\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Diff~combout\ = \b2v_inst29|q~q\ $ (\b2v_inst|Bout~combout\ $ (\b2v_inst28|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst29|q~q\,
	datac => \b2v_inst|Bout~combout\,
	datad => \b2v_inst28|q~q\,
	combout => \b2v_inst6|Diff~combout\);

-- Location: FF_X68_Y1_N31
\b2v_inst19|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst6|Diff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|q~q\);

-- Location: IOIBUF_X0_Y57_N15
\Bin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bin,
	o => \Bin~input_o\);

-- Location: LCCOMB_X68_Y1_N22
\b2v_inst26|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst26|q~feeder_combout\ = \Bin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Bin~input_o\,
	combout => \b2v_inst26|q~feeder_combout\);

-- Location: FF_X68_Y1_N23
\b2v_inst26|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst26|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst26|q~q\);

-- Location: LCCOMB_X68_Y1_N20
\b2v_inst|Diff\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Diff~combout\ = \b2v_inst27|q~q\ $ (\b2v_inst1|q~q\ $ (\b2v_inst26|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst27|q~q\,
	datab => \b2v_inst1|q~q\,
	datad => \b2v_inst26|q~q\,
	combout => \b2v_inst|Diff~combout\);

-- Location: FF_X68_Y1_N21
\b2v_inst20|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \b2v_inst|Diff~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|q~q\);

ww_Bout <= \Bout~output_o\;

ww_Z3 <= \Z3~output_o\;

ww_Z2 <= \Z2~output_o\;

ww_Z1 <= \Z1~output_o\;

ww_Z0 <= \Z0~output_o\;
END structure;


