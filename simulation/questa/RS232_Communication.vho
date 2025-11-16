-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "11/16/2025 09:52:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rs232_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	EX_IO : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END rs232_top;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[3]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[4]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[5]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EX_IO[6]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rs232_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_EX_IO : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \EX_IO[0]~input_o\ : std_logic;
SIGNAL \EX_IO[1]~input_o\ : std_logic;
SIGNAL \EX_IO[2]~input_o\ : std_logic;
SIGNAL \EX_IO[3]~input_o\ : std_logic;
SIGNAL \EX_IO[4]~input_o\ : std_logic;
SIGNAL \EX_IO[5]~input_o\ : std_logic;
SIGNAL \EX_IO[0]~output_o\ : std_logic;
SIGNAL \EX_IO[1]~output_o\ : std_logic;
SIGNAL \EX_IO[2]~output_o\ : std_logic;
SIGNAL \EX_IO[3]~output_o\ : std_logic;
SIGNAL \EX_IO[4]~output_o\ : std_logic;
SIGNAL \EX_IO[5]~output_o\ : std_logic;
SIGNAL \EX_IO[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \baud_selector|Mux0~1_combout\ : std_logic;
SIGNAL \baud_selector|Mux1~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux4~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux5~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux6~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux7~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux8~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux9~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux10~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux11~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux0~0_combout\ : std_logic;
SIGNAL \baud_selector|Mux13~0_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~1\ : std_logic;
SIGNAL \receiver_inst|Add1~3\ : std_logic;
SIGNAL \receiver_inst|Add1~5\ : std_logic;
SIGNAL \receiver_inst|Add1~7\ : std_logic;
SIGNAL \receiver_inst|Add1~9\ : std_logic;
SIGNAL \receiver_inst|Add1~11\ : std_logic;
SIGNAL \receiver_inst|Add1~13\ : std_logic;
SIGNAL \receiver_inst|Add1~15\ : std_logic;
SIGNAL \receiver_inst|Add1~17\ : std_logic;
SIGNAL \receiver_inst|Add1~19\ : std_logic;
SIGNAL \receiver_inst|Add1~21\ : std_logic;
SIGNAL \receiver_inst|Add1~23\ : std_logic;
SIGNAL \receiver_inst|Add1~25\ : std_logic;
SIGNAL \receiver_inst|Add1~27\ : std_logic;
SIGNAL \receiver_inst|Add1~29\ : std_logic;
SIGNAL \receiver_inst|Add1~30_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[0]~17_combout\ : std_logic;
SIGNAL \rst_sync_inst|rst_sync1~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \rst_sync_inst|rst_sync1~q\ : std_logic;
SIGNAL \rst_sync_inst|rst_sync2~feeder_combout\ : std_logic;
SIGNAL \rst_sync_inst|rst_sync2~q\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \send_trigger_prev~0_combout\ : std_logic;
SIGNAL \send_trigger_prev~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \start_pulse~q\ : std_logic;
SIGNAL \sender_inst|start_pulse_prev~feeder_combout\ : std_logic;
SIGNAL \sender_inst|start_pulse_prev~q\ : std_logic;
SIGNAL \sender_inst|Selector1~0_combout\ : std_logic;
SIGNAL \sender_inst|Selector1~1_combout\ : std_logic;
SIGNAL \sender_inst|tx_ready_internal~q\ : std_logic;
SIGNAL \sender_inst|process_0~0_combout\ : std_logic;
SIGNAL \sender_inst|start_transmission~q\ : std_logic;
SIGNAL \sender_inst|Selector2~0_combout\ : std_logic;
SIGNAL \sender_inst|state.IDLE~q\ : std_logic;
SIGNAL \sender_inst|baud_counter[0]~21_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[0]~18\ : std_logic;
SIGNAL \sender_inst|baud_counter[1]~19_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[1]~20\ : std_logic;
SIGNAL \sender_inst|baud_counter[2]~22_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[2]~23\ : std_logic;
SIGNAL \sender_inst|baud_counter[3]~24_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[3]~25\ : std_logic;
SIGNAL \sender_inst|baud_counter[4]~26_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[4]~27\ : std_logic;
SIGNAL \sender_inst|baud_counter[5]~28_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[5]~29\ : std_logic;
SIGNAL \sender_inst|baud_counter[6]~30_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[6]~31\ : std_logic;
SIGNAL \sender_inst|baud_counter[7]~32_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[7]~33\ : std_logic;
SIGNAL \sender_inst|baud_counter[8]~34_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[8]~35\ : std_logic;
SIGNAL \sender_inst|baud_counter[9]~36_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[9]~37\ : std_logic;
SIGNAL \sender_inst|baud_counter[10]~38_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[10]~39\ : std_logic;
SIGNAL \sender_inst|baud_counter[11]~40_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[11]~41\ : std_logic;
SIGNAL \sender_inst|baud_counter[12]~42_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[12]~43\ : std_logic;
SIGNAL \sender_inst|baud_counter[13]~44_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[13]~45\ : std_logic;
SIGNAL \sender_inst|baud_counter[14]~46_combout\ : std_logic;
SIGNAL \sender_inst|baud_counter[14]~47\ : std_logic;
SIGNAL \sender_inst|baud_counter[15]~48_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~28_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~9_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~14_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~12_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~3_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~4_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~6_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~1_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~0_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~2_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~0_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~10_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~8_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~4_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~26_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~24_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~8_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~20_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~6_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~22_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~16_combout\ : std_logic;
SIGNAL \receiver_inst|Add1~18_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~5_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~7_combout\ : std_logic;
SIGNAL \sender_inst|Equal0~10_combout\ : std_logic;
SIGNAL \sender_inst|baud_enable~0_combout\ : std_logic;
SIGNAL \sender_inst|baud_enable~q\ : std_logic;
SIGNAL \sender_inst|Selector3~1_combout\ : std_logic;
SIGNAL \sender_inst|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \sender_inst|bit_counter[0]~3_combout\ : std_logic;
SIGNAL \sender_inst|bit_counter[1]~2_combout\ : std_logic;
SIGNAL \sender_inst|Add2~0_combout\ : std_logic;
SIGNAL \sender_inst|bit_counter[2]~1_combout\ : std_logic;
SIGNAL \sender_inst|state~11_combout\ : std_logic;
SIGNAL \sender_inst|Selector3~2_combout\ : std_logic;
SIGNAL \sender_inst|state.START_BIT~q\ : std_logic;
SIGNAL \sender_inst|Selector4~1_combout\ : std_logic;
SIGNAL \sender_inst|Selector4~2_combout\ : std_logic;
SIGNAL \sender_inst|state.DATA_BITS~q\ : std_logic;
SIGNAL \sender_inst|Selector5~0_combout\ : std_logic;
SIGNAL \sender_inst|state.STOP_BIT~q\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \data_mux|Mux1~0_combout\ : std_logic;
SIGNAL \sender_inst|Selector3~3_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \data_mux|Mux0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \data_mux|Mux2~0_combout\ : std_logic;
SIGNAL \sender_inst|data_shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \data_mux|Mux3~0_combout\ : std_logic;
SIGNAL \sender_inst|Mux0~0_combout\ : std_logic;
SIGNAL \sender_inst|Mux0~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \data_mux|Mux6~0_combout\ : std_logic;
SIGNAL \sender_inst|data_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \data_mux|Mux7~0_combout\ : std_logic;
SIGNAL \sender_inst|Mux0~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \data_mux|Mux5~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \data_mux|Mux4~0_combout\ : std_logic;
SIGNAL \sender_inst|Mux0~3_combout\ : std_logic;
SIGNAL \sender_inst|Selector0~0_combout\ : std_logic;
SIGNAL \sender_inst|Selector0~1_combout\ : std_logic;
SIGNAL \sender_inst|dataOut~q\ : std_logic;
SIGNAL \EX_IO[6]~input_o\ : std_logic;
SIGNAL \receiver_inst|dataInn_sync1~0_combout\ : std_logic;
SIGNAL \receiver_inst|dataInn_sync1~q\ : std_logic;
SIGNAL \receiver_inst|dataInn_sync2~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|dataInn_sync2~q\ : std_logic;
SIGNAL \receiver_inst|dataInn_sync3~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|dataInn_sync3~q\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg[7]~1_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[0]~17_combout\ : std_logic;
SIGNAL \receiver_inst|dataInn_prev~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|dataInn_prev~q\ : std_logic;
SIGNAL \receiver_inst|Selector4~0_combout\ : std_logic;
SIGNAL \receiver_inst|Selector4~1_combout\ : std_logic;
SIGNAL \receiver_inst|state.DATA_BITS~q\ : std_logic;
SIGNAL \receiver_inst|Selector5~4_combout\ : std_logic;
SIGNAL \receiver_inst|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \receiver_inst|bit_counter[0]~3_combout\ : std_logic;
SIGNAL \receiver_inst|bit_counter[1]~2_combout\ : std_logic;
SIGNAL \receiver_inst|Add3~0_combout\ : std_logic;
SIGNAL \receiver_inst|bit_counter[2]~1_combout\ : std_logic;
SIGNAL \receiver_inst|Selector5~3_combout\ : std_logic;
SIGNAL \receiver_inst|Selector3~2_combout\ : std_logic;
SIGNAL \receiver_inst|Selector3~3_combout\ : std_logic;
SIGNAL \receiver_inst|Selector3~4_combout\ : std_logic;
SIGNAL \receiver_inst|state.START_BIT~q\ : std_logic;
SIGNAL \receiver_inst|Selector6~1_combout\ : std_logic;
SIGNAL \receiver_inst|state.ERROR_STATE~q\ : std_logic;
SIGNAL \receiver_inst|Selector5~5_combout\ : std_logic;
SIGNAL \receiver_inst|state.STOP_BIT~q\ : std_logic;
SIGNAL \receiver_inst|Selector6~0_combout\ : std_logic;
SIGNAL \receiver_inst|Selector2~0_combout\ : std_logic;
SIGNAL \receiver_inst|state.IDLE~q\ : std_logic;
SIGNAL \receiver_inst|process_1~1_combout\ : std_logic;
SIGNAL \receiver_inst|start_detected~q\ : std_logic;
SIGNAL \receiver_inst|baud_counter[3]~21_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[0]~18\ : std_logic;
SIGNAL \receiver_inst|baud_counter[1]~19_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[1]~20\ : std_logic;
SIGNAL \receiver_inst|baud_counter[2]~22_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[2]~23\ : std_logic;
SIGNAL \receiver_inst|baud_counter[3]~24_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[3]~25\ : std_logic;
SIGNAL \receiver_inst|baud_counter[4]~26_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[4]~27\ : std_logic;
SIGNAL \receiver_inst|baud_counter[5]~28_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[5]~29\ : std_logic;
SIGNAL \receiver_inst|baud_counter[6]~30_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[6]~31\ : std_logic;
SIGNAL \receiver_inst|baud_counter[7]~32_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[7]~33\ : std_logic;
SIGNAL \receiver_inst|baud_counter[8]~34_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[8]~35\ : std_logic;
SIGNAL \receiver_inst|baud_counter[9]~36_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[9]~37\ : std_logic;
SIGNAL \receiver_inst|baud_counter[10]~38_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[10]~39\ : std_logic;
SIGNAL \receiver_inst|baud_counter[11]~40_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[11]~41\ : std_logic;
SIGNAL \receiver_inst|baud_counter[12]~42_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[12]~43\ : std_logic;
SIGNAL \receiver_inst|baud_counter[13]~44_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~7_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~5_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[13]~45\ : std_logic;
SIGNAL \receiver_inst|baud_counter[14]~46_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[14]~47\ : std_logic;
SIGNAL \receiver_inst|baud_counter[15]~48_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~8_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~6_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~9_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~2_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~0_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~1_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~3_combout\ : std_logic;
SIGNAL \receiver_inst|Equal1~4_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~1\ : std_logic;
SIGNAL \receiver_inst|Add0~3\ : std_logic;
SIGNAL \receiver_inst|Add0~5\ : std_logic;
SIGNAL \receiver_inst|Add0~7\ : std_logic;
SIGNAL \receiver_inst|Add0~9\ : std_logic;
SIGNAL \receiver_inst|Add0~11\ : std_logic;
SIGNAL \receiver_inst|Add0~13\ : std_logic;
SIGNAL \receiver_inst|Add0~15\ : std_logic;
SIGNAL \receiver_inst|Add0~17\ : std_logic;
SIGNAL \receiver_inst|Add0~19\ : std_logic;
SIGNAL \receiver_inst|Add0~21\ : std_logic;
SIGNAL \receiver_inst|Add0~22_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~20_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~7_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~18_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~16_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~6_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~23\ : std_logic;
SIGNAL \receiver_inst|Add0~25\ : std_logic;
SIGNAL \receiver_inst|Add0~27\ : std_logic;
SIGNAL \receiver_inst|Add0~28_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~9_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~26_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~24_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~8_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~10_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~8_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~10_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~3_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~14_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~12_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~4_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~0_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~2_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~1_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~6_combout\ : std_logic;
SIGNAL \receiver_inst|Add0~4_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~2_combout\ : std_logic;
SIGNAL \receiver_inst|process_2~5_combout\ : std_logic;
SIGNAL \receiver_inst|baud_counter[3]~16_combout\ : std_logic;
SIGNAL \receiver_inst|baud_enable~0_combout\ : std_logic;
SIGNAL \receiver_inst|baud_enable~q\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg[3]~0_combout\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|dataUt[3]~0_combout\ : std_logic;
SIGNAL \receiver_inst|dataValidUt~feeder_combout\ : std_logic;
SIGNAL \receiver_inst|dataValidUt~q\ : std_logic;
SIGNAL \display_inst|data_latched[6]~feeder_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[0]~19_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[0]~20\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[1]~21_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[1]~22\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[2]~23_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[2]~24\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[3]~25_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[3]~26\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[4]~27_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[4]~28\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[5]~29_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[5]~30\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[6]~31_combout\ : std_logic;
SIGNAL \display_inst|led_valid~2_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[6]~32\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[7]~33_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[7]~34\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[8]~35_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[8]~36\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[9]~37_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[9]~38\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[10]~39_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[10]~40\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[11]~41_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[11]~42\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[12]~43_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[12]~44\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[13]~45_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[13]~46\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[14]~47_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[14]~48\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[15]~49_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[15]~50\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[16]~51_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[16]~52\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[17]~53_combout\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[17]~54\ : std_logic;
SIGNAL \display_inst|valid_pulse_counter[18]~55_combout\ : std_logic;
SIGNAL \display_inst|led_valid~0_combout\ : std_logic;
SIGNAL \display_inst|led_valid~3_combout\ : std_logic;
SIGNAL \display_inst|led_valid~4_combout\ : std_logic;
SIGNAL \display_inst|led_valid~5_combout\ : std_logic;
SIGNAL \display_inst|led_valid~1_combout\ : std_logic;
SIGNAL \display_inst|led_valid~6_combout\ : std_logic;
SIGNAL \display_inst|led_valid~q\ : std_logic;
SIGNAL \receiver_inst|Selector1~1_combout\ : std_logic;
SIGNAL \receiver_inst|Selector1~0_combout\ : std_logic;
SIGNAL \receiver_inst|Selector1~2_combout\ : std_logic;
SIGNAL \receiver_inst|error_internal~q\ : std_logic;
SIGNAL \receiver_inst|error~0_combout\ : std_logic;
SIGNAL \receiver_inst|error~q\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~1\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~3\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~5\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~7\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~9\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~10_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~8_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~6_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~4_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~63_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~61_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add0~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~62_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~66_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add2~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add2~1_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add2~2_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add2~3_combout\ : std_logic;
SIGNAL \display_inst|bin2bcd_inst|Add2~4_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|Mux6~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|Mux5~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|Mux4~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|Mux3~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|Mux2~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|Mux1~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|Mux0~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|Mux6~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|Mux5~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|Mux4~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|Mux3~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|Mux2~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|Mux1~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|Mux0~0_combout\ : std_logic;
SIGNAL \rom_rx_lo|Mux6~0_combout\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \rom_rx_lo|Mux5~0_combout\ : std_logic;
SIGNAL \HEX4~1_combout\ : std_logic;
SIGNAL \rom_rx_lo|Mux4~0_combout\ : std_logic;
SIGNAL \HEX4~2_combout\ : std_logic;
SIGNAL \rom_rx_lo|Mux3~0_combout\ : std_logic;
SIGNAL \HEX4~3_combout\ : std_logic;
SIGNAL \rom_rx_lo|Mux2~0_combout\ : std_logic;
SIGNAL \HEX4~4_combout\ : std_logic;
SIGNAL \rom_rx_lo|Mux1~0_combout\ : std_logic;
SIGNAL \HEX4~5_combout\ : std_logic;
SIGNAL \rom_rx_lo|Mux0~0_combout\ : std_logic;
SIGNAL \HEX4~6_combout\ : std_logic;
SIGNAL \rom_rx_hi|Mux6~0_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \rom_rx_hi|Mux5~0_combout\ : std_logic;
SIGNAL \HEX5~1_combout\ : std_logic;
SIGNAL \rom_rx_hi|Mux4~0_combout\ : std_logic;
SIGNAL \HEX5~2_combout\ : std_logic;
SIGNAL \rom_rx_hi|Mux3~0_combout\ : std_logic;
SIGNAL \HEX5~3_combout\ : std_logic;
SIGNAL \rom_rx_hi|Mux2~0_combout\ : std_logic;
SIGNAL \HEX5~4_combout\ : std_logic;
SIGNAL \rom_rx_hi|Mux1~0_combout\ : std_logic;
SIGNAL \HEX5~5_combout\ : std_logic;
SIGNAL \rom_rx_hi|Mux0~0_combout\ : std_logic;
SIGNAL \HEX5~6_combout\ : std_logic;
SIGNAL \rom_tx_lo|Mux6~0_combout\ : std_logic;
SIGNAL \HEX6~0_combout\ : std_logic;
SIGNAL \rom_tx_lo|Mux5~0_combout\ : std_logic;
SIGNAL \HEX6~1_combout\ : std_logic;
SIGNAL \rom_tx_lo|Mux4~0_combout\ : std_logic;
SIGNAL \HEX6~2_combout\ : std_logic;
SIGNAL \rom_tx_lo|Mux3~0_combout\ : std_logic;
SIGNAL \HEX6~3_combout\ : std_logic;
SIGNAL \rom_tx_lo|Mux2~0_combout\ : std_logic;
SIGNAL \HEX6~4_combout\ : std_logic;
SIGNAL \rom_tx_lo|Mux1~0_combout\ : std_logic;
SIGNAL \HEX6~5_combout\ : std_logic;
SIGNAL \rom_tx_lo|Mux0~0_combout\ : std_logic;
SIGNAL \HEX6~6_combout\ : std_logic;
SIGNAL \rom_tx_hi|Mux6~0_combout\ : std_logic;
SIGNAL \HEX7~0_combout\ : std_logic;
SIGNAL \rom_tx_hi|Mux5~0_combout\ : std_logic;
SIGNAL \HEX7~1_combout\ : std_logic;
SIGNAL \rom_tx_hi|Mux4~0_combout\ : std_logic;
SIGNAL \HEX7~2_combout\ : std_logic;
SIGNAL \rom_tx_hi|Mux3~0_combout\ : std_logic;
SIGNAL \HEX7~3_combout\ : std_logic;
SIGNAL \rom_tx_hi|Mux2~0_combout\ : std_logic;
SIGNAL \HEX7~4_combout\ : std_logic;
SIGNAL \rom_tx_hi|Mux1~0_combout\ : std_logic;
SIGNAL \HEX7~5_combout\ : std_logic;
SIGNAL \rom_tx_hi|Mux0~0_combout\ : std_logic;
SIGNAL \HEX7~6_combout\ : std_logic;
SIGNAL \receiver_inst|data_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sender_inst|bit_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \display_inst|valid_pulse_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \sender_inst|baud_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \receiver_inst|dataUt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \display_inst|data_latched\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \receiver_inst|baud_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \receiver_inst|bit_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sender_inst|data_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SW[17]~input_o\ : std_logic;
SIGNAL \display_inst|rom_7seg_ones|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \display_inst|rom_7seg_tens|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \receiver_inst|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \sender_inst|ALT_INV_dataOut~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
EX_IO <= ww_EX_IO;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[17]~input_o\ <= NOT \SW[17]~input_o\;
\display_inst|rom_7seg_ones|ALT_INV_Mux0~0_combout\ <= NOT \display_inst|rom_7seg_ones|Mux0~0_combout\;
\display_inst|rom_7seg_tens|ALT_INV_Mux0~0_combout\ <= NOT \display_inst|rom_7seg_tens|Mux0~0_combout\;
\receiver_inst|ALT_INV_state.IDLE~q\ <= NOT \receiver_inst|state.IDLE~q\;
\sender_inst|ALT_INV_dataOut~q\ <= NOT \sender_inst|dataOut~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y73_N23
\EX_IO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sender_inst|ALT_INV_dataOut~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \EX_IO[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\EX_IO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\EX_IO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[2]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\EX_IO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[3]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\EX_IO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[4]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\EX_IO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\EX_IO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EX_IO[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|data_latched\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|led_valid~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_inst|error~q\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[17]~input_o\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[17]~input_o\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_ones|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_ones|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_ones|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_ones|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_ones|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_ones|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_ones|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_tens|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_tens|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_tens|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_tens|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_tens|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_tens|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_inst|rom_7seg_tens|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX6~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX7~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X108_Y17_N28
\baud_selector|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux0~1_combout\ = (!\SW[14]~input_o\ & (!\SW[15]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux0~1_combout\);

-- Location: LCCOMB_X108_Y17_N26
\baud_selector|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux1~0_combout\ = (\SW[14]~input_o\ & (!\SW[15]~input_o\ & !\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y17_N12
\baud_selector|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux4~0_combout\ = (\SW[15]~input_o\ & (!\SW[14]~input_o\ & !\SW[16]~input_o\)) # (!\SW[15]~input_o\ & ((\SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux4~0_combout\);

-- Location: LCCOMB_X106_Y17_N0
\baud_selector|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux5~0_combout\ = (\SW[14]~input_o\ & (!\SW[16]~input_o\ & \SW[15]~input_o\)) # (!\SW[14]~input_o\ & (\SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \baud_selector|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y17_N10
\baud_selector|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux6~0_combout\ = \SW[15]~input_o\ $ (\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baud_selector|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y17_N24
\baud_selector|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux7~0_combout\ = \SW[14]~input_o\ $ (\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux7~0_combout\);

-- Location: LCCOMB_X108_Y17_N18
\baud_selector|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux8~0_combout\ = (\SW[15]~input_o\ & \SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux8~0_combout\);

-- Location: LCCOMB_X108_Y17_N20
\baud_selector|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux9~0_combout\ = \SW[15]~input_o\ $ (\SW[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux9~0_combout\);

-- Location: LCCOMB_X108_Y17_N2
\baud_selector|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux10~0_combout\ = (\SW[15]~input_o\ & ((!\SW[16]~input_o\))) # (!\SW[15]~input_o\ & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux10~0_combout\);

-- Location: LCCOMB_X108_Y17_N8
\baud_selector|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux11~0_combout\ = (\SW[15]~input_o\ & ((!\SW[16]~input_o\))) # (!\SW[15]~input_o\ & (!\SW[14]~input_o\ & \SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux11~0_combout\);

-- Location: LCCOMB_X108_Y17_N22
\baud_selector|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux0~0_combout\ = (!\SW[15]~input_o\ & !\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \baud_selector|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y17_N4
\baud_selector|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_selector|Mux13~0_combout\ = (\SW[14]~input_o\ & (!\SW[15]~input_o\ & \SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \SW[15]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \baud_selector|Mux13~0_combout\);

-- Location: LCCOMB_X107_Y17_N0
\receiver_inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~0_combout\ = \baud_selector|Mux13~0_combout\ $ (VCC)
-- \receiver_inst|Add1~1\ = CARRY(\baud_selector|Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux13~0_combout\,
	datad => VCC,
	combout => \receiver_inst|Add1~0_combout\,
	cout => \receiver_inst|Add1~1\);

-- Location: LCCOMB_X107_Y17_N2
\receiver_inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~2_combout\ = (\SW[16]~input_o\ & ((\baud_selector|Mux0~0_combout\ & (!\receiver_inst|Add1~1\)) # (!\baud_selector|Mux0~0_combout\ & (\receiver_inst|Add1~1\ & VCC)))) # (!\SW[16]~input_o\ & (((!\receiver_inst|Add1~1\))))
-- \receiver_inst|Add1~3\ = CARRY((!\receiver_inst|Add1~1\ & ((\baud_selector|Mux0~0_combout\) # (!\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \baud_selector|Mux0~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~1\,
	combout => \receiver_inst|Add1~2_combout\,
	cout => \receiver_inst|Add1~3\);

-- Location: LCCOMB_X107_Y17_N4
\receiver_inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~4_combout\ = (\baud_selector|Mux11~0_combout\ & ((GND) # (!\receiver_inst|Add1~3\))) # (!\baud_selector|Mux11~0_combout\ & (\receiver_inst|Add1~3\ $ (GND)))
-- \receiver_inst|Add1~5\ = CARRY((\baud_selector|Mux11~0_combout\) # (!\receiver_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux11~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~3\,
	combout => \receiver_inst|Add1~4_combout\,
	cout => \receiver_inst|Add1~5\);

-- Location: LCCOMB_X107_Y17_N6
\receiver_inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~6_combout\ = (\baud_selector|Mux10~0_combout\ & (\receiver_inst|Add1~5\ & VCC)) # (!\baud_selector|Mux10~0_combout\ & (!\receiver_inst|Add1~5\))
-- \receiver_inst|Add1~7\ = CARRY((!\baud_selector|Mux10~0_combout\ & !\receiver_inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_selector|Mux10~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~5\,
	combout => \receiver_inst|Add1~6_combout\,
	cout => \receiver_inst|Add1~7\);

-- Location: LCCOMB_X107_Y17_N8
\receiver_inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~8_combout\ = (\receiver_inst|Add1~7\ & ((((\SW[14]~input_o\) # (!\baud_selector|Mux9~0_combout\))))) # (!\receiver_inst|Add1~7\ & (((\SW[14]~input_o\) # (GND)) # (!\baud_selector|Mux9~0_combout\)))
-- \receiver_inst|Add1~9\ = CARRY(((\SW[14]~input_o\) # (!\receiver_inst|Add1~7\)) # (!\baud_selector|Mux9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux9~0_combout\,
	datab => \SW[14]~input_o\,
	datad => VCC,
	cin => \receiver_inst|Add1~7\,
	combout => \receiver_inst|Add1~8_combout\,
	cout => \receiver_inst|Add1~9\);

-- Location: LCCOMB_X107_Y17_N10
\receiver_inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~10_combout\ = (\receiver_inst|Add1~9\ & (((\baud_selector|Mux8~0_combout\) # (!\SW[14]~input_o\)))) # (!\receiver_inst|Add1~9\ & (!\baud_selector|Mux8~0_combout\ & (\SW[14]~input_o\)))
-- \receiver_inst|Add1~11\ = CARRY((!\baud_selector|Mux8~0_combout\ & (\SW[14]~input_o\ & !\receiver_inst|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux8~0_combout\,
	datab => \SW[14]~input_o\,
	datad => VCC,
	cin => \receiver_inst|Add1~9\,
	combout => \receiver_inst|Add1~10_combout\,
	cout => \receiver_inst|Add1~11\);

-- Location: LCCOMB_X107_Y17_N12
\receiver_inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~12_combout\ = (\receiver_inst|Add1~11\ & ((((!\SW[15]~input_o\ & \baud_selector|Mux7~0_combout\))))) # (!\receiver_inst|Add1~11\ & (((!\SW[15]~input_o\ & \baud_selector|Mux7~0_combout\)) # (GND)))
-- \receiver_inst|Add1~13\ = CARRY(((!\SW[15]~input_o\ & \baud_selector|Mux7~0_combout\)) # (!\receiver_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \baud_selector|Mux7~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~11\,
	combout => \receiver_inst|Add1~12_combout\,
	cout => \receiver_inst|Add1~13\);

-- Location: LCCOMB_X107_Y17_N14
\receiver_inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~14_combout\ = (\receiver_inst|Add1~13\ & ((\SW[16]~input_o\ $ (!\baud_selector|Mux6~0_combout\)))) # (!\receiver_inst|Add1~13\ & (\SW[16]~input_o\ $ ((\baud_selector|Mux6~0_combout\))))
-- \receiver_inst|Add1~15\ = CARRY((!\receiver_inst|Add1~13\ & (\SW[16]~input_o\ $ (\baud_selector|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \baud_selector|Mux6~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~13\,
	combout => \receiver_inst|Add1~14_combout\,
	cout => \receiver_inst|Add1~15\);

-- Location: LCCOMB_X107_Y17_N16
\receiver_inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~16_combout\ = (\baud_selector|Mux5~0_combout\ & ((GND) # (!\receiver_inst|Add1~15\))) # (!\baud_selector|Mux5~0_combout\ & (\receiver_inst|Add1~15\ $ (GND)))
-- \receiver_inst|Add1~17\ = CARRY((\baud_selector|Mux5~0_combout\) # (!\receiver_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux5~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~15\,
	combout => \receiver_inst|Add1~16_combout\,
	cout => \receiver_inst|Add1~17\);

-- Location: LCCOMB_X107_Y17_N18
\receiver_inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~18_combout\ = (\baud_selector|Mux4~0_combout\ & (\receiver_inst|Add1~17\ & VCC)) # (!\baud_selector|Mux4~0_combout\ & (!\receiver_inst|Add1~17\))
-- \receiver_inst|Add1~19\ = CARRY((!\baud_selector|Mux4~0_combout\ & !\receiver_inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_selector|Mux4~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~17\,
	combout => \receiver_inst|Add1~18_combout\,
	cout => \receiver_inst|Add1~19\);

-- Location: LCCOMB_X107_Y17_N20
\receiver_inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~20_combout\ = (\receiver_inst|Add1~19\ & ((((!\SW[16]~input_o\ & \SW[14]~input_o\))))) # (!\receiver_inst|Add1~19\ & (((!\SW[16]~input_o\ & \SW[14]~input_o\)) # (GND)))
-- \receiver_inst|Add1~21\ = CARRY(((!\SW[16]~input_o\ & \SW[14]~input_o\)) # (!\receiver_inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datad => VCC,
	cin => \receiver_inst|Add1~19\,
	combout => \receiver_inst|Add1~20_combout\,
	cout => \receiver_inst|Add1~21\);

-- Location: LCCOMB_X107_Y17_N22
\receiver_inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~22_combout\ = (\SW[16]~input_o\ & (((!\receiver_inst|Add1~21\)))) # (!\SW[16]~input_o\ & ((\SW[14]~input_o\ & (!\receiver_inst|Add1~21\)) # (!\SW[14]~input_o\ & (\receiver_inst|Add1~21\ & VCC))))
-- \receiver_inst|Add1~23\ = CARRY((!\receiver_inst|Add1~21\ & ((\SW[16]~input_o\) # (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \SW[14]~input_o\,
	datad => VCC,
	cin => \receiver_inst|Add1~21\,
	combout => \receiver_inst|Add1~22_combout\,
	cout => \receiver_inst|Add1~23\);

-- Location: LCCOMB_X107_Y17_N24
\receiver_inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~24_combout\ = (\baud_selector|Mux1~0_combout\ & ((GND) # (!\receiver_inst|Add1~23\))) # (!\baud_selector|Mux1~0_combout\ & (\receiver_inst|Add1~23\ $ (GND)))
-- \receiver_inst|Add1~25\ = CARRY((\baud_selector|Mux1~0_combout\) # (!\receiver_inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_selector|Mux1~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~23\,
	combout => \receiver_inst|Add1~24_combout\,
	cout => \receiver_inst|Add1~25\);

-- Location: LCCOMB_X107_Y17_N26
\receiver_inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~26_combout\ = (\baud_selector|Mux0~1_combout\ & (\receiver_inst|Add1~25\ & VCC)) # (!\baud_selector|Mux0~1_combout\ & (!\receiver_inst|Add1~25\))
-- \receiver_inst|Add1~27\ = CARRY((!\baud_selector|Mux0~1_combout\ & !\receiver_inst|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux0~1_combout\,
	datad => VCC,
	cin => \receiver_inst|Add1~25\,
	combout => \receiver_inst|Add1~26_combout\,
	cout => \receiver_inst|Add1~27\);

-- Location: LCCOMB_X107_Y17_N28
\receiver_inst|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~28_combout\ = \receiver_inst|Add1~27\ $ (GND)
-- \receiver_inst|Add1~29\ = CARRY(!\receiver_inst|Add1~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \receiver_inst|Add1~27\,
	combout => \receiver_inst|Add1~28_combout\,
	cout => \receiver_inst|Add1~29\);

-- Location: LCCOMB_X107_Y17_N30
\receiver_inst|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add1~30_combout\ = !\receiver_inst|Add1~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \receiver_inst|Add1~29\,
	combout => \receiver_inst|Add1~30_combout\);

-- Location: LCCOMB_X105_Y21_N0
\sender_inst|baud_counter[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[0]~17_combout\ = \sender_inst|baud_counter\(0) $ (VCC)
-- \sender_inst|baud_counter[0]~18\ = CARRY(\sender_inst|baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(0),
	datad => VCC,
	combout => \sender_inst|baud_counter[0]~17_combout\,
	cout => \sender_inst|baud_counter[0]~18\);

-- Location: LCCOMB_X108_Y39_N24
\rst_sync_inst|rst_sync1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rst_sync_inst|rst_sync1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rst_sync_inst|rst_sync1~feeder_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X108_Y39_N25
\rst_sync_inst|rst_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rst_sync_inst|rst_sync1~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst_sync_inst|rst_sync1~q\);

-- Location: LCCOMB_X108_Y39_N8
\rst_sync_inst|rst_sync2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rst_sync_inst|rst_sync2~feeder_combout\ = \rst_sync_inst|rst_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst_sync_inst|rst_sync1~q\,
	combout => \rst_sync_inst|rst_sync2~feeder_combout\);

-- Location: FF_X108_Y39_N9
\rst_sync_inst|rst_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \rst_sync_inst|rst_sync2~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rst_sync_inst|rst_sync2~q\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X108_Y18_N2
\send_trigger_prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \send_trigger_prev~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	combout => \send_trigger_prev~0_combout\);

-- Location: FF_X108_Y18_N3
send_trigger_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \send_trigger_prev~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_trigger_prev~q\);

-- Location: LCCOMB_X108_Y18_N12
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\KEY[3]~input_o\ & !\send_trigger_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[3]~input_o\,
	datad => \send_trigger_prev~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X108_Y18_N13
start_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \process_0~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_pulse~q\);

-- Location: LCCOMB_X108_Y18_N10
\sender_inst|start_pulse_prev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|start_pulse_prev~feeder_combout\ = \start_pulse~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start_pulse~q\,
	combout => \sender_inst|start_pulse_prev~feeder_combout\);

-- Location: FF_X108_Y18_N11
\sender_inst|start_pulse_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|start_pulse_prev~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|start_pulse_prev~q\);

-- Location: LCCOMB_X108_Y18_N4
\sender_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector1~0_combout\ = (\sender_inst|state.IDLE~q\ & (((\sender_inst|baud_enable~q\ & \sender_inst|state.STOP_BIT~q\)) # (!\sender_inst|tx_ready_internal~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_enable~q\,
	datab => \sender_inst|state.IDLE~q\,
	datac => \sender_inst|state.STOP_BIT~q\,
	datad => \sender_inst|tx_ready_internal~q\,
	combout => \sender_inst|Selector1~0_combout\);

-- Location: LCCOMB_X108_Y18_N0
\sender_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector1~1_combout\ = (!\sender_inst|Selector1~0_combout\ & ((\sender_inst|state.IDLE~q\) # (\sender_inst|start_transmission~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|state.IDLE~q\,
	datac => \sender_inst|Selector1~0_combout\,
	datad => \sender_inst|start_transmission~q\,
	combout => \sender_inst|Selector1~1_combout\);

-- Location: FF_X108_Y18_N1
\sender_inst|tx_ready_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|Selector1~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|tx_ready_internal~q\);

-- Location: LCCOMB_X108_Y18_N6
\sender_inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|process_0~0_combout\ = (!\sender_inst|start_pulse_prev~q\ & (!\sender_inst|tx_ready_internal~q\ & \start_pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|start_pulse_prev~q\,
	datab => \sender_inst|tx_ready_internal~q\,
	datad => \start_pulse~q\,
	combout => \sender_inst|process_0~0_combout\);

-- Location: FF_X108_Y18_N7
\sender_inst|start_transmission\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|process_0~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|start_transmission~q\);

-- Location: LCCOMB_X108_Y14_N20
\sender_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector2~0_combout\ = (\sender_inst|baud_enable~q\ & (!\sender_inst|state.STOP_BIT~q\ & ((\sender_inst|state.IDLE~q\) # (\sender_inst|start_transmission~q\)))) # (!\sender_inst|baud_enable~q\ & (((\sender_inst|state.IDLE~q\) # 
-- (\sender_inst|start_transmission~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_enable~q\,
	datab => \sender_inst|state.STOP_BIT~q\,
	datac => \sender_inst|state.IDLE~q\,
	datad => \sender_inst|start_transmission~q\,
	combout => \sender_inst|Selector2~0_combout\);

-- Location: FF_X108_Y14_N21
\sender_inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|Selector2~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|state.IDLE~q\);

-- Location: LCCOMB_X108_Y18_N24
\sender_inst|baud_counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[0]~21_combout\ = (\sender_inst|Equal0~10_combout\) # (!\sender_inst|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sender_inst|Equal0~10_combout\,
	datad => \sender_inst|state.IDLE~q\,
	combout => \sender_inst|baud_counter[0]~21_combout\);

-- Location: FF_X105_Y21_N1
\sender_inst|baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[0]~17_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(0));

-- Location: LCCOMB_X105_Y21_N2
\sender_inst|baud_counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[1]~19_combout\ = (\sender_inst|baud_counter\(1) & (!\sender_inst|baud_counter[0]~18\)) # (!\sender_inst|baud_counter\(1) & ((\sender_inst|baud_counter[0]~18\) # (GND)))
-- \sender_inst|baud_counter[1]~20\ = CARRY((!\sender_inst|baud_counter[0]~18\) # (!\sender_inst|baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(1),
	datad => VCC,
	cin => \sender_inst|baud_counter[0]~18\,
	combout => \sender_inst|baud_counter[1]~19_combout\,
	cout => \sender_inst|baud_counter[1]~20\);

-- Location: FF_X105_Y21_N3
\sender_inst|baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[1]~19_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(1));

-- Location: LCCOMB_X105_Y21_N4
\sender_inst|baud_counter[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[2]~22_combout\ = (\sender_inst|baud_counter\(2) & (\sender_inst|baud_counter[1]~20\ $ (GND))) # (!\sender_inst|baud_counter\(2) & (!\sender_inst|baud_counter[1]~20\ & VCC))
-- \sender_inst|baud_counter[2]~23\ = CARRY((\sender_inst|baud_counter\(2) & !\sender_inst|baud_counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(2),
	datad => VCC,
	cin => \sender_inst|baud_counter[1]~20\,
	combout => \sender_inst|baud_counter[2]~22_combout\,
	cout => \sender_inst|baud_counter[2]~23\);

-- Location: FF_X105_Y21_N5
\sender_inst|baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[2]~22_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(2));

-- Location: LCCOMB_X105_Y21_N6
\sender_inst|baud_counter[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[3]~24_combout\ = (\sender_inst|baud_counter\(3) & (!\sender_inst|baud_counter[2]~23\)) # (!\sender_inst|baud_counter\(3) & ((\sender_inst|baud_counter[2]~23\) # (GND)))
-- \sender_inst|baud_counter[3]~25\ = CARRY((!\sender_inst|baud_counter[2]~23\) # (!\sender_inst|baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(3),
	datad => VCC,
	cin => \sender_inst|baud_counter[2]~23\,
	combout => \sender_inst|baud_counter[3]~24_combout\,
	cout => \sender_inst|baud_counter[3]~25\);

-- Location: FF_X105_Y21_N7
\sender_inst|baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[3]~24_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(3));

-- Location: LCCOMB_X105_Y21_N8
\sender_inst|baud_counter[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[4]~26_combout\ = (\sender_inst|baud_counter\(4) & (\sender_inst|baud_counter[3]~25\ $ (GND))) # (!\sender_inst|baud_counter\(4) & (!\sender_inst|baud_counter[3]~25\ & VCC))
-- \sender_inst|baud_counter[4]~27\ = CARRY((\sender_inst|baud_counter\(4) & !\sender_inst|baud_counter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(4),
	datad => VCC,
	cin => \sender_inst|baud_counter[3]~25\,
	combout => \sender_inst|baud_counter[4]~26_combout\,
	cout => \sender_inst|baud_counter[4]~27\);

-- Location: FF_X105_Y21_N9
\sender_inst|baud_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[4]~26_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(4));

-- Location: LCCOMB_X105_Y21_N10
\sender_inst|baud_counter[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[5]~28_combout\ = (\sender_inst|baud_counter\(5) & (!\sender_inst|baud_counter[4]~27\)) # (!\sender_inst|baud_counter\(5) & ((\sender_inst|baud_counter[4]~27\) # (GND)))
-- \sender_inst|baud_counter[5]~29\ = CARRY((!\sender_inst|baud_counter[4]~27\) # (!\sender_inst|baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(5),
	datad => VCC,
	cin => \sender_inst|baud_counter[4]~27\,
	combout => \sender_inst|baud_counter[5]~28_combout\,
	cout => \sender_inst|baud_counter[5]~29\);

-- Location: FF_X105_Y21_N11
\sender_inst|baud_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[5]~28_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(5));

-- Location: LCCOMB_X105_Y21_N12
\sender_inst|baud_counter[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[6]~30_combout\ = (\sender_inst|baud_counter\(6) & (\sender_inst|baud_counter[5]~29\ $ (GND))) # (!\sender_inst|baud_counter\(6) & (!\sender_inst|baud_counter[5]~29\ & VCC))
-- \sender_inst|baud_counter[6]~31\ = CARRY((\sender_inst|baud_counter\(6) & !\sender_inst|baud_counter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(6),
	datad => VCC,
	cin => \sender_inst|baud_counter[5]~29\,
	combout => \sender_inst|baud_counter[6]~30_combout\,
	cout => \sender_inst|baud_counter[6]~31\);

-- Location: FF_X105_Y21_N13
\sender_inst|baud_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[6]~30_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(6));

-- Location: LCCOMB_X105_Y21_N14
\sender_inst|baud_counter[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[7]~32_combout\ = (\sender_inst|baud_counter\(7) & (!\sender_inst|baud_counter[6]~31\)) # (!\sender_inst|baud_counter\(7) & ((\sender_inst|baud_counter[6]~31\) # (GND)))
-- \sender_inst|baud_counter[7]~33\ = CARRY((!\sender_inst|baud_counter[6]~31\) # (!\sender_inst|baud_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(7),
	datad => VCC,
	cin => \sender_inst|baud_counter[6]~31\,
	combout => \sender_inst|baud_counter[7]~32_combout\,
	cout => \sender_inst|baud_counter[7]~33\);

-- Location: FF_X105_Y21_N15
\sender_inst|baud_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[7]~32_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(7));

-- Location: LCCOMB_X105_Y21_N16
\sender_inst|baud_counter[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[8]~34_combout\ = (\sender_inst|baud_counter\(8) & (\sender_inst|baud_counter[7]~33\ $ (GND))) # (!\sender_inst|baud_counter\(8) & (!\sender_inst|baud_counter[7]~33\ & VCC))
-- \sender_inst|baud_counter[8]~35\ = CARRY((\sender_inst|baud_counter\(8) & !\sender_inst|baud_counter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(8),
	datad => VCC,
	cin => \sender_inst|baud_counter[7]~33\,
	combout => \sender_inst|baud_counter[8]~34_combout\,
	cout => \sender_inst|baud_counter[8]~35\);

-- Location: FF_X105_Y21_N17
\sender_inst|baud_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[8]~34_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(8));

-- Location: LCCOMB_X105_Y21_N18
\sender_inst|baud_counter[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[9]~36_combout\ = (\sender_inst|baud_counter\(9) & (!\sender_inst|baud_counter[8]~35\)) # (!\sender_inst|baud_counter\(9) & ((\sender_inst|baud_counter[8]~35\) # (GND)))
-- \sender_inst|baud_counter[9]~37\ = CARRY((!\sender_inst|baud_counter[8]~35\) # (!\sender_inst|baud_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(9),
	datad => VCC,
	cin => \sender_inst|baud_counter[8]~35\,
	combout => \sender_inst|baud_counter[9]~36_combout\,
	cout => \sender_inst|baud_counter[9]~37\);

-- Location: FF_X105_Y21_N19
\sender_inst|baud_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[9]~36_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(9));

-- Location: LCCOMB_X105_Y21_N20
\sender_inst|baud_counter[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[10]~38_combout\ = (\sender_inst|baud_counter\(10) & (\sender_inst|baud_counter[9]~37\ $ (GND))) # (!\sender_inst|baud_counter\(10) & (!\sender_inst|baud_counter[9]~37\ & VCC))
-- \sender_inst|baud_counter[10]~39\ = CARRY((\sender_inst|baud_counter\(10) & !\sender_inst|baud_counter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(10),
	datad => VCC,
	cin => \sender_inst|baud_counter[9]~37\,
	combout => \sender_inst|baud_counter[10]~38_combout\,
	cout => \sender_inst|baud_counter[10]~39\);

-- Location: FF_X105_Y21_N21
\sender_inst|baud_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[10]~38_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(10));

-- Location: LCCOMB_X105_Y21_N22
\sender_inst|baud_counter[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[11]~40_combout\ = (\sender_inst|baud_counter\(11) & (!\sender_inst|baud_counter[10]~39\)) # (!\sender_inst|baud_counter\(11) & ((\sender_inst|baud_counter[10]~39\) # (GND)))
-- \sender_inst|baud_counter[11]~41\ = CARRY((!\sender_inst|baud_counter[10]~39\) # (!\sender_inst|baud_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(11),
	datad => VCC,
	cin => \sender_inst|baud_counter[10]~39\,
	combout => \sender_inst|baud_counter[11]~40_combout\,
	cout => \sender_inst|baud_counter[11]~41\);

-- Location: FF_X105_Y21_N23
\sender_inst|baud_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[11]~40_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(11));

-- Location: LCCOMB_X105_Y21_N24
\sender_inst|baud_counter[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[12]~42_combout\ = (\sender_inst|baud_counter\(12) & (\sender_inst|baud_counter[11]~41\ $ (GND))) # (!\sender_inst|baud_counter\(12) & (!\sender_inst|baud_counter[11]~41\ & VCC))
-- \sender_inst|baud_counter[12]~43\ = CARRY((\sender_inst|baud_counter\(12) & !\sender_inst|baud_counter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(12),
	datad => VCC,
	cin => \sender_inst|baud_counter[11]~41\,
	combout => \sender_inst|baud_counter[12]~42_combout\,
	cout => \sender_inst|baud_counter[12]~43\);

-- Location: FF_X105_Y21_N25
\sender_inst|baud_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[12]~42_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(12));

-- Location: LCCOMB_X105_Y21_N26
\sender_inst|baud_counter[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[13]~44_combout\ = (\sender_inst|baud_counter\(13) & (!\sender_inst|baud_counter[12]~43\)) # (!\sender_inst|baud_counter\(13) & ((\sender_inst|baud_counter[12]~43\) # (GND)))
-- \sender_inst|baud_counter[13]~45\ = CARRY((!\sender_inst|baud_counter[12]~43\) # (!\sender_inst|baud_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(13),
	datad => VCC,
	cin => \sender_inst|baud_counter[12]~43\,
	combout => \sender_inst|baud_counter[13]~44_combout\,
	cout => \sender_inst|baud_counter[13]~45\);

-- Location: FF_X105_Y21_N27
\sender_inst|baud_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[13]~44_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(13));

-- Location: LCCOMB_X105_Y21_N28
\sender_inst|baud_counter[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[14]~46_combout\ = (\sender_inst|baud_counter\(14) & (\sender_inst|baud_counter[13]~45\ $ (GND))) # (!\sender_inst|baud_counter\(14) & (!\sender_inst|baud_counter[13]~45\ & VCC))
-- \sender_inst|baud_counter[14]~47\ = CARRY((\sender_inst|baud_counter\(14) & !\sender_inst|baud_counter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|baud_counter\(14),
	datad => VCC,
	cin => \sender_inst|baud_counter[13]~45\,
	combout => \sender_inst|baud_counter[14]~46_combout\,
	cout => \sender_inst|baud_counter[14]~47\);

-- Location: FF_X105_Y21_N29
\sender_inst|baud_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[14]~46_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(14));

-- Location: LCCOMB_X105_Y21_N30
\sender_inst|baud_counter[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_counter[15]~48_combout\ = \sender_inst|baud_counter\(15) $ (\sender_inst|baud_counter[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(15),
	cin => \sender_inst|baud_counter[14]~47\,
	combout => \sender_inst|baud_counter[15]~48_combout\);

-- Location: FF_X105_Y21_N31
\sender_inst|baud_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_counter[15]~48_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \sender_inst|baud_counter[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_counter\(15));

-- Location: LCCOMB_X106_Y21_N12
\sender_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~9_combout\ = (\receiver_inst|Add1~30_combout\ & (\sender_inst|baud_counter\(15) & (\sender_inst|baud_counter\(14) $ (!\receiver_inst|Add1~28_combout\)))) # (!\receiver_inst|Add1~30_combout\ & (!\sender_inst|baud_counter\(15) & 
-- (\sender_inst|baud_counter\(14) $ (!\receiver_inst|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add1~30_combout\,
	datab => \sender_inst|baud_counter\(14),
	datac => \sender_inst|baud_counter\(15),
	datad => \receiver_inst|Add1~28_combout\,
	combout => \sender_inst|Equal0~9_combout\);

-- Location: LCCOMB_X106_Y20_N10
\sender_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~3_combout\ = (\sender_inst|baud_counter\(7) & (\receiver_inst|Add1~14_combout\ & (\sender_inst|baud_counter\(6) $ (!\receiver_inst|Add1~12_combout\)))) # (!\sender_inst|baud_counter\(7) & (!\receiver_inst|Add1~14_combout\ & 
-- (\sender_inst|baud_counter\(6) $ (!\receiver_inst|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(7),
	datab => \sender_inst|baud_counter\(6),
	datac => \receiver_inst|Add1~14_combout\,
	datad => \receiver_inst|Add1~12_combout\,
	combout => \sender_inst|Equal0~3_combout\);

-- Location: LCCOMB_X106_Y20_N2
\sender_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~1_combout\ = (\sender_inst|baud_counter\(3) & (\receiver_inst|Add1~6_combout\ & (\sender_inst|baud_counter\(2) $ (!\receiver_inst|Add1~4_combout\)))) # (!\sender_inst|baud_counter\(3) & (!\receiver_inst|Add1~6_combout\ & 
-- (\sender_inst|baud_counter\(2) $ (!\receiver_inst|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(3),
	datab => \sender_inst|baud_counter\(2),
	datac => \receiver_inst|Add1~4_combout\,
	datad => \receiver_inst|Add1~6_combout\,
	combout => \sender_inst|Equal0~1_combout\);

-- Location: LCCOMB_X106_Y20_N8
\sender_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~0_combout\ = (\receiver_inst|Add1~0_combout\ & (\sender_inst|baud_counter\(0) & (\sender_inst|baud_counter\(1) $ (!\receiver_inst|Add1~2_combout\)))) # (!\receiver_inst|Add1~0_combout\ & (!\sender_inst|baud_counter\(0) & 
-- (\sender_inst|baud_counter\(1) $ (!\receiver_inst|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add1~0_combout\,
	datab => \sender_inst|baud_counter\(0),
	datac => \sender_inst|baud_counter\(1),
	datad => \receiver_inst|Add1~2_combout\,
	combout => \sender_inst|Equal0~0_combout\);

-- Location: LCCOMB_X106_Y20_N16
\sender_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~2_combout\ = (\sender_inst|baud_counter\(5) & (\receiver_inst|Add1~10_combout\ & (\receiver_inst|Add1~8_combout\ $ (!\sender_inst|baud_counter\(4))))) # (!\sender_inst|baud_counter\(5) & (!\receiver_inst|Add1~10_combout\ & 
-- (\receiver_inst|Add1~8_combout\ $ (!\sender_inst|baud_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(5),
	datab => \receiver_inst|Add1~10_combout\,
	datac => \receiver_inst|Add1~8_combout\,
	datad => \sender_inst|baud_counter\(4),
	combout => \sender_inst|Equal0~2_combout\);

-- Location: LCCOMB_X106_Y20_N0
\sender_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~4_combout\ = (\sender_inst|Equal0~3_combout\ & (\sender_inst|Equal0~1_combout\ & (\sender_inst|Equal0~0_combout\ & \sender_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|Equal0~3_combout\,
	datab => \sender_inst|Equal0~1_combout\,
	datac => \sender_inst|Equal0~0_combout\,
	datad => \sender_inst|Equal0~2_combout\,
	combout => \sender_inst|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y21_N26
\sender_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~8_combout\ = (\sender_inst|baud_counter\(13) & (\receiver_inst|Add1~26_combout\ & (\receiver_inst|Add1~24_combout\ $ (!\sender_inst|baud_counter\(12))))) # (!\sender_inst|baud_counter\(13) & (!\receiver_inst|Add1~26_combout\ & 
-- (\receiver_inst|Add1~24_combout\ $ (!\sender_inst|baud_counter\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(13),
	datab => \receiver_inst|Add1~26_combout\,
	datac => \receiver_inst|Add1~24_combout\,
	datad => \sender_inst|baud_counter\(12),
	combout => \sender_inst|Equal0~8_combout\);

-- Location: LCCOMB_X106_Y21_N18
\sender_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~6_combout\ = \sender_inst|baud_counter\(10) $ (\receiver_inst|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sender_inst|baud_counter\(10),
	datad => \receiver_inst|Add1~20_combout\,
	combout => \sender_inst|Equal0~6_combout\);

-- Location: LCCOMB_X106_Y21_N8
\sender_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~5_combout\ = (\sender_inst|baud_counter\(8) & (\receiver_inst|Add1~16_combout\ & (\sender_inst|baud_counter\(9) $ (!\receiver_inst|Add1~18_combout\)))) # (!\sender_inst|baud_counter\(8) & (!\receiver_inst|Add1~16_combout\ & 
-- (\sender_inst|baud_counter\(9) $ (!\receiver_inst|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(8),
	datab => \receiver_inst|Add1~16_combout\,
	datac => \sender_inst|baud_counter\(9),
	datad => \receiver_inst|Add1~18_combout\,
	combout => \sender_inst|Equal0~5_combout\);

-- Location: LCCOMB_X106_Y21_N24
\sender_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~7_combout\ = (!\sender_inst|Equal0~6_combout\ & (\sender_inst|Equal0~5_combout\ & (\sender_inst|baud_counter\(11) $ (!\receiver_inst|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_counter\(11),
	datab => \sender_inst|Equal0~6_combout\,
	datac => \receiver_inst|Add1~22_combout\,
	datad => \sender_inst|Equal0~5_combout\,
	combout => \sender_inst|Equal0~7_combout\);

-- Location: LCCOMB_X106_Y21_N14
\sender_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Equal0~10_combout\ = (\sender_inst|Equal0~9_combout\ & (\sender_inst|Equal0~4_combout\ & (\sender_inst|Equal0~8_combout\ & \sender_inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|Equal0~9_combout\,
	datab => \sender_inst|Equal0~4_combout\,
	datac => \sender_inst|Equal0~8_combout\,
	datad => \sender_inst|Equal0~7_combout\,
	combout => \sender_inst|Equal0~10_combout\);

-- Location: LCCOMB_X108_Y18_N18
\sender_inst|baud_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|baud_enable~0_combout\ = (\sender_inst|Equal0~10_combout\ & \sender_inst|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sender_inst|Equal0~10_combout\,
	datad => \sender_inst|state.IDLE~q\,
	combout => \sender_inst|baud_enable~0_combout\);

-- Location: FF_X108_Y18_N19
\sender_inst|baud_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|baud_enable~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|baud_enable~q\);

-- Location: LCCOMB_X108_Y14_N8
\sender_inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector3~1_combout\ = (\sender_inst|start_transmission~q\ & (((\sender_inst|state.START_BIT~q\ & !\sender_inst|baud_enable~q\)) # (!\sender_inst|state.IDLE~q\))) # (!\sender_inst|start_transmission~q\ & (\sender_inst|state.START_BIT~q\ & 
-- (!\sender_inst|baud_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|start_transmission~q\,
	datab => \sender_inst|state.START_BIT~q\,
	datac => \sender_inst|baud_enable~q\,
	datad => \sender_inst|state.IDLE~q\,
	combout => \sender_inst|Selector3~1_combout\);

-- Location: LCCOMB_X108_Y14_N2
\sender_inst|bit_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|bit_counter[0]~0_combout\ = ((!\sender_inst|state.START_BIT~q\ & ((\sender_inst|state~11_combout\) # (!\sender_inst|state.DATA_BITS~q\)))) # (!\sender_inst|baud_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_enable~q\,
	datab => \sender_inst|state.DATA_BITS~q\,
	datac => \sender_inst|state.START_BIT~q\,
	datad => \sender_inst|state~11_combout\,
	combout => \sender_inst|bit_counter[0]~0_combout\);

-- Location: LCCOMB_X108_Y14_N18
\sender_inst|bit_counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|bit_counter[0]~3_combout\ = (\sender_inst|bit_counter\(0) & (((\sender_inst|bit_counter[0]~0_combout\)))) # (!\sender_inst|bit_counter\(0) & (\sender_inst|baud_enable~q\ & ((\sender_inst|state.DATA_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_enable~q\,
	datab => \sender_inst|bit_counter[0]~0_combout\,
	datac => \sender_inst|bit_counter\(0),
	datad => \sender_inst|state.DATA_BITS~q\,
	combout => \sender_inst|bit_counter[0]~3_combout\);

-- Location: FF_X108_Y14_N19
\sender_inst|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|bit_counter[0]~3_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|bit_counter\(0));

-- Location: LCCOMB_X108_Y14_N16
\sender_inst|bit_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|bit_counter[1]~2_combout\ = (\sender_inst|bit_counter[0]~0_combout\ & (((\sender_inst|bit_counter\(1))))) # (!\sender_inst|bit_counter[0]~0_combout\ & (\sender_inst|state.DATA_BITS~q\ & (\sender_inst|bit_counter\(1) $ 
-- (\sender_inst|bit_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|bit_counter[0]~0_combout\,
	datab => \sender_inst|state.DATA_BITS~q\,
	datac => \sender_inst|bit_counter\(1),
	datad => \sender_inst|bit_counter\(0),
	combout => \sender_inst|bit_counter[1]~2_combout\);

-- Location: FF_X108_Y14_N17
\sender_inst|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|bit_counter[1]~2_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|bit_counter\(1));

-- Location: LCCOMB_X108_Y14_N12
\sender_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Add2~0_combout\ = \sender_inst|bit_counter\(2) $ (((\sender_inst|bit_counter\(0) & \sender_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|bit_counter\(2),
	datab => \sender_inst|bit_counter\(0),
	datad => \sender_inst|bit_counter\(1),
	combout => \sender_inst|Add2~0_combout\);

-- Location: LCCOMB_X108_Y14_N10
\sender_inst|bit_counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|bit_counter[2]~1_combout\ = (\sender_inst|bit_counter[0]~0_combout\ & (((\sender_inst|bit_counter\(2))))) # (!\sender_inst|bit_counter[0]~0_combout\ & (\sender_inst|Add2~0_combout\ & ((\sender_inst|state.DATA_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|Add2~0_combout\,
	datab => \sender_inst|bit_counter[0]~0_combout\,
	datac => \sender_inst|bit_counter\(2),
	datad => \sender_inst|state.DATA_BITS~q\,
	combout => \sender_inst|bit_counter[2]~1_combout\);

-- Location: FF_X108_Y14_N11
\sender_inst|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|bit_counter[2]~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|bit_counter\(2));

-- Location: LCCOMB_X108_Y14_N24
\sender_inst|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|state~11_combout\ = (\sender_inst|bit_counter\(2) & (\sender_inst|bit_counter\(0) & \sender_inst|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|bit_counter\(2),
	datab => \sender_inst|bit_counter\(0),
	datad => \sender_inst|bit_counter\(1),
	combout => \sender_inst|state~11_combout\);

-- Location: LCCOMB_X108_Y14_N4
\sender_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector3~2_combout\ = (\sender_inst|Selector3~1_combout\ & (((!\sender_inst|state~11_combout\) # (!\sender_inst|state.DATA_BITS~q\)) # (!\sender_inst|baud_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_enable~q\,
	datab => \sender_inst|state.DATA_BITS~q\,
	datac => \sender_inst|Selector3~1_combout\,
	datad => \sender_inst|state~11_combout\,
	combout => \sender_inst|Selector3~2_combout\);

-- Location: FF_X108_Y14_N5
\sender_inst|state.START_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|Selector3~2_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|state.START_BIT~q\);

-- Location: LCCOMB_X108_Y14_N22
\sender_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector4~1_combout\ = (\sender_inst|baud_enable~q\ & ((\sender_inst|state.START_BIT~q\) # ((\sender_inst|state.DATA_BITS~q\ & !\sender_inst|state~11_combout\)))) # (!\sender_inst|baud_enable~q\ & (\sender_inst|state.DATA_BITS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_enable~q\,
	datab => \sender_inst|state.DATA_BITS~q\,
	datac => \sender_inst|state.START_BIT~q\,
	datad => \sender_inst|state~11_combout\,
	combout => \sender_inst|Selector4~1_combout\);

-- Location: LCCOMB_X108_Y14_N0
\sender_inst|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector4~2_combout\ = (\sender_inst|Selector4~1_combout\ & ((!\sender_inst|state.STOP_BIT~q\) # (!\sender_inst|baud_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|Selector4~1_combout\,
	datac => \sender_inst|baud_enable~q\,
	datad => \sender_inst|state.STOP_BIT~q\,
	combout => \sender_inst|Selector4~2_combout\);

-- Location: FF_X108_Y14_N1
\sender_inst|state.DATA_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|Selector4~2_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|state.DATA_BITS~q\);

-- Location: LCCOMB_X108_Y14_N6
\sender_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector5~0_combout\ = (\sender_inst|baud_enable~q\ & (\sender_inst|state.DATA_BITS~q\ & ((\sender_inst|state~11_combout\)))) # (!\sender_inst|baud_enable~q\ & (((\sender_inst|state.STOP_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|baud_enable~q\,
	datab => \sender_inst|state.DATA_BITS~q\,
	datac => \sender_inst|state.STOP_BIT~q\,
	datad => \sender_inst|state~11_combout\,
	combout => \sender_inst|Selector5~0_combout\);

-- Location: FF_X108_Y14_N7
\sender_inst|state.STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|Selector5~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|state.STOP_BIT~q\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X107_Y10_N6
\data_mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux1~0_combout\ = (\SW[12]~input_o\ & (\SW[6]~input_o\ & !\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \data_mux|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y14_N26
\sender_inst|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector3~3_combout\ = (!\sender_inst|state.IDLE~q\ & \sender_inst|start_transmission~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sender_inst|state.IDLE~q\,
	datad => \sender_inst|start_transmission~q\,
	combout => \sender_inst|Selector3~3_combout\);

-- Location: FF_X108_Y10_N27
\sender_inst|data_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \data_mux|Mux1~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(6));

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X107_Y10_N16
\data_mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux0~0_combout\ = (\SW[13]~input_o\) # ((\SW[7]~input_o\) # (!\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \data_mux|Mux0~0_combout\);

-- Location: FF_X108_Y10_N31
\sender_inst|data_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \data_mux|Mux0~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(7));

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X107_Y10_N4
\data_mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux2~0_combout\ = ((\SW[5]~input_o\) # (\SW[13]~input_o\)) # (!\SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \data_mux|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y10_N18
\sender_inst|data_shift_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|data_shift_reg[5]~feeder_combout\ = \data_mux|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_mux|Mux2~0_combout\,
	combout => \sender_inst|data_shift_reg[5]~feeder_combout\);

-- Location: FF_X108_Y10_N19
\sender_inst|data_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|data_shift_reg[5]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(5));

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X107_Y10_N2
\data_mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux3~0_combout\ = (\SW[12]~input_o\ & (\SW[4]~input_o\ & !\SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \data_mux|Mux3~0_combout\);

-- Location: FF_X108_Y10_N13
\sender_inst|data_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \data_mux|Mux3~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(4));

-- Location: LCCOMB_X108_Y10_N12
\sender_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Mux0~0_combout\ = (\sender_inst|bit_counter\(0) & ((\sender_inst|data_shift_reg\(5)) # ((\sender_inst|bit_counter\(1))))) # (!\sender_inst|bit_counter\(0) & (((\sender_inst|data_shift_reg\(4) & !\sender_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|bit_counter\(0),
	datab => \sender_inst|data_shift_reg\(5),
	datac => \sender_inst|data_shift_reg\(4),
	datad => \sender_inst|bit_counter\(1),
	combout => \sender_inst|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y10_N30
\sender_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Mux0~1_combout\ = (\sender_inst|bit_counter\(1) & ((\sender_inst|Mux0~0_combout\ & ((\sender_inst|data_shift_reg\(7)))) # (!\sender_inst|Mux0~0_combout\ & (\sender_inst|data_shift_reg\(6))))) # (!\sender_inst|bit_counter\(1) & 
-- (((\sender_inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|data_shift_reg\(6),
	datab => \sender_inst|bit_counter\(1),
	datac => \sender_inst|data_shift_reg\(7),
	datad => \sender_inst|Mux0~0_combout\,
	combout => \sender_inst|Mux0~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X108_Y10_N26
\data_mux|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux6~0_combout\ = (\SW[12]~input_o\ & (!\SW[13]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[13]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \data_mux|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y10_N0
\sender_inst|data_shift_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|data_shift_reg[1]~feeder_combout\ = \data_mux|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_mux|Mux6~0_combout\,
	combout => \sender_inst|data_shift_reg[1]~feeder_combout\);

-- Location: FF_X108_Y10_N1
\sender_inst|data_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|data_shift_reg[1]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(1));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X108_Y10_N8
\data_mux|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux7~0_combout\ = (\SW[13]~input_o\) # ((\SW[0]~input_o\) # (!\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \data_mux|Mux7~0_combout\);

-- Location: FF_X108_Y10_N15
\sender_inst|data_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \data_mux|Mux7~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(0));

-- Location: LCCOMB_X108_Y10_N14
\sender_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Mux0~2_combout\ = (\sender_inst|bit_counter\(0) & ((\sender_inst|data_shift_reg\(1)) # ((\sender_inst|bit_counter\(1))))) # (!\sender_inst|bit_counter\(0) & (((\sender_inst|data_shift_reg\(0) & !\sender_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|bit_counter\(0),
	datab => \sender_inst|data_shift_reg\(1),
	datac => \sender_inst|data_shift_reg\(0),
	datad => \sender_inst|bit_counter\(1),
	combout => \sender_inst|Mux0~2_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X108_Y10_N20
\data_mux|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux5~0_combout\ = (\SW[13]~input_o\) # ((\SW[2]~input_o\) # (!\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \data_mux|Mux5~0_combout\);

-- Location: FF_X108_Y10_N21
\sender_inst|data_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_mux|Mux5~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(2));

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X108_Y10_N22
\data_mux|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_mux|Mux4~0_combout\ = (!\SW[13]~input_o\ & (\SW[12]~input_o\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \SW[12]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \data_mux|Mux4~0_combout\);

-- Location: FF_X108_Y10_N23
\sender_inst|data_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_mux|Mux4~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \sender_inst|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|data_shift_reg\(3));

-- Location: LCCOMB_X108_Y14_N28
\sender_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Mux0~3_combout\ = (\sender_inst|Mux0~2_combout\ & (((\sender_inst|data_shift_reg\(3)) # (!\sender_inst|bit_counter\(1))))) # (!\sender_inst|Mux0~2_combout\ & (\sender_inst|data_shift_reg\(2) & ((\sender_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|Mux0~2_combout\,
	datab => \sender_inst|data_shift_reg\(2),
	datac => \sender_inst|data_shift_reg\(3),
	datad => \sender_inst|bit_counter\(1),
	combout => \sender_inst|Mux0~3_combout\);

-- Location: LCCOMB_X108_Y14_N30
\sender_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector0~0_combout\ = (\sender_inst|state.DATA_BITS~q\ & ((\sender_inst|bit_counter\(2) & (\sender_inst|Mux0~1_combout\)) # (!\sender_inst|bit_counter\(2) & ((\sender_inst|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|bit_counter\(2),
	datab => \sender_inst|state.DATA_BITS~q\,
	datac => \sender_inst|Mux0~1_combout\,
	datad => \sender_inst|Mux0~3_combout\,
	combout => \sender_inst|Selector0~0_combout\);

-- Location: LCCOMB_X108_Y14_N14
\sender_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sender_inst|Selector0~1_combout\ = (!\sender_inst|state.STOP_BIT~q\ & (!\sender_inst|Selector0~0_combout\ & \sender_inst|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sender_inst|state.STOP_BIT~q\,
	datac => \sender_inst|Selector0~0_combout\,
	datad => \sender_inst|state.IDLE~q\,
	combout => \sender_inst|Selector0~1_combout\);

-- Location: FF_X108_Y14_N15
\sender_inst|dataOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sender_inst|Selector0~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sender_inst|dataOut~q\);

-- Location: IOIBUF_X23_Y73_N22
\EX_IO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(6),
	o => \EX_IO[6]~input_o\);

-- Location: LCCOMB_X107_Y34_N30
\receiver_inst|dataInn_sync1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|dataInn_sync1~0_combout\ = !\EX_IO[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_IO[6]~input_o\,
	combout => \receiver_inst|dataInn_sync1~0_combout\);

-- Location: FF_X107_Y34_N31
\receiver_inst|dataInn_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|dataInn_sync1~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataInn_sync1~q\);

-- Location: LCCOMB_X108_Y34_N12
\receiver_inst|dataInn_sync2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|dataInn_sync2~feeder_combout\ = \receiver_inst|dataInn_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|dataInn_sync1~q\,
	combout => \receiver_inst|dataInn_sync2~feeder_combout\);

-- Location: FF_X108_Y34_N13
\receiver_inst|dataInn_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|dataInn_sync2~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataInn_sync2~q\);

-- Location: LCCOMB_X108_Y34_N0
\receiver_inst|dataInn_sync3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|dataInn_sync3~feeder_combout\ = \receiver_inst|dataInn_sync2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|dataInn_sync2~q\,
	combout => \receiver_inst|dataInn_sync3~feeder_combout\);

-- Location: FF_X108_Y34_N1
\receiver_inst|dataInn_sync3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|dataInn_sync3~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataInn_sync3~q\);

-- Location: LCCOMB_X108_Y34_N24
\receiver_inst|data_shift_reg[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|data_shift_reg[7]~1_combout\ = !\receiver_inst|dataInn_sync3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_inst|dataInn_sync3~q\,
	combout => \receiver_inst|data_shift_reg[7]~1_combout\);

-- Location: LCCOMB_X107_Y21_N0
\receiver_inst|baud_counter[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[0]~17_combout\ = \receiver_inst|baud_counter\(0) $ (VCC)
-- \receiver_inst|baud_counter[0]~18\ = CARRY(\receiver_inst|baud_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(0),
	datad => VCC,
	combout => \receiver_inst|baud_counter[0]~17_combout\,
	cout => \receiver_inst|baud_counter[0]~18\);

-- Location: LCCOMB_X107_Y34_N22
\receiver_inst|dataInn_prev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|dataInn_prev~feeder_combout\ = \receiver_inst|dataInn_sync3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_inst|dataInn_sync3~q\,
	combout => \receiver_inst|dataInn_prev~feeder_combout\);

-- Location: FF_X107_Y34_N23
\receiver_inst|dataInn_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|dataInn_prev~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataInn_prev~q\);

-- Location: LCCOMB_X108_Y34_N4
\receiver_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector4~0_combout\ = (\receiver_inst|dataInn_sync3~q\ & (\receiver_inst|baud_enable~q\ & \receiver_inst|state.START_BIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataInn_sync3~q\,
	datab => \receiver_inst|baud_enable~q\,
	datac => \receiver_inst|state.START_BIT~q\,
	combout => \receiver_inst|Selector4~0_combout\);

-- Location: LCCOMB_X108_Y34_N14
\receiver_inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector4~1_combout\ = (\receiver_inst|Selector4~0_combout\) # ((\receiver_inst|state.DATA_BITS~q\ & ((!\receiver_inst|baud_enable~q\) # (!\receiver_inst|Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Selector5~3_combout\,
	datab => \receiver_inst|Selector4~0_combout\,
	datac => \receiver_inst|state.DATA_BITS~q\,
	datad => \receiver_inst|baud_enable~q\,
	combout => \receiver_inst|Selector4~1_combout\);

-- Location: FF_X108_Y34_N15
\receiver_inst|state.DATA_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|Selector4~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|state.DATA_BITS~q\);

-- Location: LCCOMB_X107_Y34_N14
\receiver_inst|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector5~4_combout\ = (\receiver_inst|start_detected~q\ & !\receiver_inst|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|start_detected~q\,
	datad => \receiver_inst|state.IDLE~q\,
	combout => \receiver_inst|Selector5~4_combout\);

-- Location: LCCOMB_X108_Y34_N16
\receiver_inst|bit_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|bit_counter[0]~0_combout\ = (!\receiver_inst|Selector5~4_combout\ & (!\receiver_inst|Selector4~0_combout\ & ((\receiver_inst|Selector5~3_combout\) # (!\receiver_inst|data_shift_reg[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Selector5~4_combout\,
	datab => \receiver_inst|Selector4~0_combout\,
	datac => \receiver_inst|Selector5~3_combout\,
	datad => \receiver_inst|data_shift_reg[3]~0_combout\,
	combout => \receiver_inst|bit_counter[0]~0_combout\);

-- Location: LCCOMB_X108_Y34_N10
\receiver_inst|bit_counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|bit_counter[0]~3_combout\ = (\receiver_inst|bit_counter\(0) & ((\receiver_inst|bit_counter[0]~0_combout\))) # (!\receiver_inst|bit_counter\(0) & (\receiver_inst|state.DATA_BITS~q\ & !\receiver_inst|bit_counter[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|state.DATA_BITS~q\,
	datac => \receiver_inst|bit_counter\(0),
	datad => \receiver_inst|bit_counter[0]~0_combout\,
	combout => \receiver_inst|bit_counter[0]~3_combout\);

-- Location: FF_X108_Y34_N11
\receiver_inst|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|bit_counter[0]~3_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|bit_counter\(0));

-- Location: LCCOMB_X108_Y34_N20
\receiver_inst|bit_counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|bit_counter[1]~2_combout\ = (\receiver_inst|bit_counter[0]~0_combout\ & (((\receiver_inst|bit_counter\(1))))) # (!\receiver_inst|bit_counter[0]~0_combout\ & (\receiver_inst|state.DATA_BITS~q\ & (\receiver_inst|bit_counter\(0) $ 
-- (\receiver_inst|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|bit_counter\(0),
	datab => \receiver_inst|state.DATA_BITS~q\,
	datac => \receiver_inst|bit_counter\(1),
	datad => \receiver_inst|bit_counter[0]~0_combout\,
	combout => \receiver_inst|bit_counter[1]~2_combout\);

-- Location: FF_X108_Y34_N21
\receiver_inst|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|bit_counter[1]~2_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|bit_counter\(1));

-- Location: LCCOMB_X108_Y34_N22
\receiver_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add3~0_combout\ = \receiver_inst|bit_counter\(2) $ (((\receiver_inst|bit_counter\(0) & \receiver_inst|bit_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|bit_counter\(0),
	datab => \receiver_inst|bit_counter\(2),
	datad => \receiver_inst|bit_counter\(1),
	combout => \receiver_inst|Add3~0_combout\);

-- Location: LCCOMB_X108_Y34_N8
\receiver_inst|bit_counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|bit_counter[2]~1_combout\ = (\receiver_inst|bit_counter[0]~0_combout\ & (((\receiver_inst|bit_counter\(2))))) # (!\receiver_inst|bit_counter[0]~0_combout\ & (\receiver_inst|Add3~0_combout\ & (\receiver_inst|state.DATA_BITS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add3~0_combout\,
	datab => \receiver_inst|state.DATA_BITS~q\,
	datac => \receiver_inst|bit_counter\(2),
	datad => \receiver_inst|bit_counter[0]~0_combout\,
	combout => \receiver_inst|bit_counter[2]~1_combout\);

-- Location: FF_X108_Y34_N9
\receiver_inst|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|bit_counter[2]~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|bit_counter\(2));

-- Location: LCCOMB_X108_Y34_N26
\receiver_inst|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector5~3_combout\ = (\receiver_inst|bit_counter\(1) & (\receiver_inst|bit_counter\(2) & \receiver_inst|bit_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|bit_counter\(1),
	datac => \receiver_inst|bit_counter\(2),
	datad => \receiver_inst|bit_counter\(0),
	combout => \receiver_inst|Selector5~3_combout\);

-- Location: LCCOMB_X107_Y34_N8
\receiver_inst|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector3~2_combout\ = ((\receiver_inst|state.ERROR_STATE~q\ & (\receiver_inst|dataInn_sync3~q\)) # (!\receiver_inst|state.ERROR_STATE~q\ & ((!\receiver_inst|baud_enable~q\)))) # (!\receiver_inst|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|state.ERROR_STATE~q\,
	datab => \receiver_inst|state.IDLE~q\,
	datac => \receiver_inst|dataInn_sync3~q\,
	datad => \receiver_inst|baud_enable~q\,
	combout => \receiver_inst|Selector3~2_combout\);

-- Location: LCCOMB_X108_Y34_N28
\receiver_inst|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector3~3_combout\ = (\receiver_inst|Selector5~4_combout\) # ((\receiver_inst|state.START_BIT~q\ & ((\receiver_inst|Selector3~2_combout\) # (\receiver_inst|state.DATA_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Selector3~2_combout\,
	datab => \receiver_inst|state.DATA_BITS~q\,
	datac => \receiver_inst|state.START_BIT~q\,
	datad => \receiver_inst|Selector5~4_combout\,
	combout => \receiver_inst|Selector3~3_combout\);

-- Location: LCCOMB_X108_Y34_N30
\receiver_inst|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector3~4_combout\ = (\receiver_inst|Selector3~3_combout\ & (((!\receiver_inst|state.DATA_BITS~q\) # (!\receiver_inst|baud_enable~q\)) # (!\receiver_inst|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Selector5~3_combout\,
	datab => \receiver_inst|baud_enable~q\,
	datac => \receiver_inst|state.DATA_BITS~q\,
	datad => \receiver_inst|Selector3~3_combout\,
	combout => \receiver_inst|Selector3~4_combout\);

-- Location: FF_X108_Y34_N31
\receiver_inst|state.START_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|Selector3~4_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|state.START_BIT~q\);

-- Location: LCCOMB_X107_Y34_N28
\receiver_inst|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector6~1_combout\ = (\receiver_inst|dataInn_sync3~q\ & (((\receiver_inst|Selector6~0_combout\)))) # (!\receiver_inst|dataInn_sync3~q\ & (\receiver_inst|state.START_BIT~q\ & (\receiver_inst|baud_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|state.START_BIT~q\,
	datab => \receiver_inst|baud_enable~q\,
	datac => \receiver_inst|dataInn_sync3~q\,
	datad => \receiver_inst|Selector6~0_combout\,
	combout => \receiver_inst|Selector6~1_combout\);

-- Location: FF_X107_Y34_N29
\receiver_inst|state.ERROR_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|Selector6~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|state.ERROR_STATE~q\);

-- Location: LCCOMB_X108_Y34_N18
\receiver_inst|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector5~5_combout\ = (\receiver_inst|baud_enable~q\ & (\receiver_inst|Selector5~3_combout\ & (\receiver_inst|state.DATA_BITS~q\))) # (!\receiver_inst|baud_enable~q\ & (((\receiver_inst|state.STOP_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Selector5~3_combout\,
	datab => \receiver_inst|state.DATA_BITS~q\,
	datac => \receiver_inst|state.STOP_BIT~q\,
	datad => \receiver_inst|baud_enable~q\,
	combout => \receiver_inst|Selector5~5_combout\);

-- Location: FF_X108_Y34_N19
\receiver_inst|state.STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|Selector5~5_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|state.STOP_BIT~q\);

-- Location: LCCOMB_X107_Y34_N6
\receiver_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector6~0_combout\ = (\receiver_inst|state.ERROR_STATE~q\) # ((\receiver_inst|baud_enable~q\ & \receiver_inst|state.STOP_BIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_enable~q\,
	datac => \receiver_inst|state.ERROR_STATE~q\,
	datad => \receiver_inst|state.STOP_BIT~q\,
	combout => \receiver_inst|Selector6~0_combout\);

-- Location: LCCOMB_X107_Y34_N18
\receiver_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector2~0_combout\ = (\receiver_inst|Selector6~0_combout\ & (\receiver_inst|dataInn_sync3~q\ & ((\receiver_inst|state.IDLE~q\) # (\receiver_inst|start_detected~q\)))) # (!\receiver_inst|Selector6~0_combout\ & 
-- (((\receiver_inst|state.IDLE~q\) # (\receiver_inst|start_detected~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Selector6~0_combout\,
	datab => \receiver_inst|dataInn_sync3~q\,
	datac => \receiver_inst|state.IDLE~q\,
	datad => \receiver_inst|start_detected~q\,
	combout => \receiver_inst|Selector2~0_combout\);

-- Location: FF_X107_Y34_N19
\receiver_inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|Selector2~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|state.IDLE~q\);

-- Location: LCCOMB_X107_Y34_N16
\receiver_inst|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_1~1_combout\ = (!\receiver_inst|dataInn_prev~q\ & (!\receiver_inst|state.IDLE~q\ & \receiver_inst|dataInn_sync3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataInn_prev~q\,
	datab => \receiver_inst|state.IDLE~q\,
	datac => \receiver_inst|dataInn_sync3~q\,
	combout => \receiver_inst|process_1~1_combout\);

-- Location: FF_X107_Y34_N17
\receiver_inst|start_detected\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|process_1~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|start_detected~q\);

-- Location: LCCOMB_X107_Y34_N20
\receiver_inst|baud_counter[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[3]~21_combout\ = (\receiver_inst|start_detected~q\) # ((!\receiver_inst|state.IDLE~q\) # (!\receiver_inst|baud_counter[3]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|start_detected~q\,
	datac => \receiver_inst|baud_counter[3]~16_combout\,
	datad => \receiver_inst|state.IDLE~q\,
	combout => \receiver_inst|baud_counter[3]~21_combout\);

-- Location: FF_X107_Y21_N1
\receiver_inst|baud_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[0]~17_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(0));

-- Location: LCCOMB_X107_Y21_N2
\receiver_inst|baud_counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[1]~19_combout\ = (\receiver_inst|baud_counter\(1) & (!\receiver_inst|baud_counter[0]~18\)) # (!\receiver_inst|baud_counter\(1) & ((\receiver_inst|baud_counter[0]~18\) # (GND)))
-- \receiver_inst|baud_counter[1]~20\ = CARRY((!\receiver_inst|baud_counter[0]~18\) # (!\receiver_inst|baud_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(1),
	datad => VCC,
	cin => \receiver_inst|baud_counter[0]~18\,
	combout => \receiver_inst|baud_counter[1]~19_combout\,
	cout => \receiver_inst|baud_counter[1]~20\);

-- Location: FF_X107_Y21_N3
\receiver_inst|baud_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[1]~19_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(1));

-- Location: LCCOMB_X107_Y21_N4
\receiver_inst|baud_counter[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[2]~22_combout\ = (\receiver_inst|baud_counter\(2) & (\receiver_inst|baud_counter[1]~20\ $ (GND))) # (!\receiver_inst|baud_counter\(2) & (!\receiver_inst|baud_counter[1]~20\ & VCC))
-- \receiver_inst|baud_counter[2]~23\ = CARRY((\receiver_inst|baud_counter\(2) & !\receiver_inst|baud_counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(2),
	datad => VCC,
	cin => \receiver_inst|baud_counter[1]~20\,
	combout => \receiver_inst|baud_counter[2]~22_combout\,
	cout => \receiver_inst|baud_counter[2]~23\);

-- Location: FF_X107_Y21_N5
\receiver_inst|baud_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[2]~22_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(2));

-- Location: LCCOMB_X107_Y21_N6
\receiver_inst|baud_counter[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[3]~24_combout\ = (\receiver_inst|baud_counter\(3) & (!\receiver_inst|baud_counter[2]~23\)) # (!\receiver_inst|baud_counter\(3) & ((\receiver_inst|baud_counter[2]~23\) # (GND)))
-- \receiver_inst|baud_counter[3]~25\ = CARRY((!\receiver_inst|baud_counter[2]~23\) # (!\receiver_inst|baud_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(3),
	datad => VCC,
	cin => \receiver_inst|baud_counter[2]~23\,
	combout => \receiver_inst|baud_counter[3]~24_combout\,
	cout => \receiver_inst|baud_counter[3]~25\);

-- Location: FF_X107_Y21_N7
\receiver_inst|baud_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[3]~24_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(3));

-- Location: LCCOMB_X107_Y21_N8
\receiver_inst|baud_counter[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[4]~26_combout\ = (\receiver_inst|baud_counter\(4) & (\receiver_inst|baud_counter[3]~25\ $ (GND))) # (!\receiver_inst|baud_counter\(4) & (!\receiver_inst|baud_counter[3]~25\ & VCC))
-- \receiver_inst|baud_counter[4]~27\ = CARRY((\receiver_inst|baud_counter\(4) & !\receiver_inst|baud_counter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(4),
	datad => VCC,
	cin => \receiver_inst|baud_counter[3]~25\,
	combout => \receiver_inst|baud_counter[4]~26_combout\,
	cout => \receiver_inst|baud_counter[4]~27\);

-- Location: FF_X107_Y21_N9
\receiver_inst|baud_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[4]~26_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(4));

-- Location: LCCOMB_X107_Y21_N10
\receiver_inst|baud_counter[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[5]~28_combout\ = (\receiver_inst|baud_counter\(5) & (!\receiver_inst|baud_counter[4]~27\)) # (!\receiver_inst|baud_counter\(5) & ((\receiver_inst|baud_counter[4]~27\) # (GND)))
-- \receiver_inst|baud_counter[5]~29\ = CARRY((!\receiver_inst|baud_counter[4]~27\) # (!\receiver_inst|baud_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(5),
	datad => VCC,
	cin => \receiver_inst|baud_counter[4]~27\,
	combout => \receiver_inst|baud_counter[5]~28_combout\,
	cout => \receiver_inst|baud_counter[5]~29\);

-- Location: FF_X107_Y21_N11
\receiver_inst|baud_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[5]~28_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(5));

-- Location: LCCOMB_X107_Y21_N12
\receiver_inst|baud_counter[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[6]~30_combout\ = (\receiver_inst|baud_counter\(6) & (\receiver_inst|baud_counter[5]~29\ $ (GND))) # (!\receiver_inst|baud_counter\(6) & (!\receiver_inst|baud_counter[5]~29\ & VCC))
-- \receiver_inst|baud_counter[6]~31\ = CARRY((\receiver_inst|baud_counter\(6) & !\receiver_inst|baud_counter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(6),
	datad => VCC,
	cin => \receiver_inst|baud_counter[5]~29\,
	combout => \receiver_inst|baud_counter[6]~30_combout\,
	cout => \receiver_inst|baud_counter[6]~31\);

-- Location: FF_X107_Y21_N13
\receiver_inst|baud_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[6]~30_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(6));

-- Location: LCCOMB_X107_Y21_N14
\receiver_inst|baud_counter[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[7]~32_combout\ = (\receiver_inst|baud_counter\(7) & (!\receiver_inst|baud_counter[6]~31\)) # (!\receiver_inst|baud_counter\(7) & ((\receiver_inst|baud_counter[6]~31\) # (GND)))
-- \receiver_inst|baud_counter[7]~33\ = CARRY((!\receiver_inst|baud_counter[6]~31\) # (!\receiver_inst|baud_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(7),
	datad => VCC,
	cin => \receiver_inst|baud_counter[6]~31\,
	combout => \receiver_inst|baud_counter[7]~32_combout\,
	cout => \receiver_inst|baud_counter[7]~33\);

-- Location: FF_X107_Y21_N15
\receiver_inst|baud_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[7]~32_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(7));

-- Location: LCCOMB_X107_Y21_N16
\receiver_inst|baud_counter[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[8]~34_combout\ = (\receiver_inst|baud_counter\(8) & (\receiver_inst|baud_counter[7]~33\ $ (GND))) # (!\receiver_inst|baud_counter\(8) & (!\receiver_inst|baud_counter[7]~33\ & VCC))
-- \receiver_inst|baud_counter[8]~35\ = CARRY((\receiver_inst|baud_counter\(8) & !\receiver_inst|baud_counter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(8),
	datad => VCC,
	cin => \receiver_inst|baud_counter[7]~33\,
	combout => \receiver_inst|baud_counter[8]~34_combout\,
	cout => \receiver_inst|baud_counter[8]~35\);

-- Location: FF_X107_Y21_N17
\receiver_inst|baud_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[8]~34_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(8));

-- Location: LCCOMB_X107_Y21_N18
\receiver_inst|baud_counter[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[9]~36_combout\ = (\receiver_inst|baud_counter\(9) & (!\receiver_inst|baud_counter[8]~35\)) # (!\receiver_inst|baud_counter\(9) & ((\receiver_inst|baud_counter[8]~35\) # (GND)))
-- \receiver_inst|baud_counter[9]~37\ = CARRY((!\receiver_inst|baud_counter[8]~35\) # (!\receiver_inst|baud_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(9),
	datad => VCC,
	cin => \receiver_inst|baud_counter[8]~35\,
	combout => \receiver_inst|baud_counter[9]~36_combout\,
	cout => \receiver_inst|baud_counter[9]~37\);

-- Location: FF_X107_Y21_N19
\receiver_inst|baud_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[9]~36_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(9));

-- Location: LCCOMB_X107_Y21_N20
\receiver_inst|baud_counter[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[10]~38_combout\ = (\receiver_inst|baud_counter\(10) & (\receiver_inst|baud_counter[9]~37\ $ (GND))) # (!\receiver_inst|baud_counter\(10) & (!\receiver_inst|baud_counter[9]~37\ & VCC))
-- \receiver_inst|baud_counter[10]~39\ = CARRY((\receiver_inst|baud_counter\(10) & !\receiver_inst|baud_counter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(10),
	datad => VCC,
	cin => \receiver_inst|baud_counter[9]~37\,
	combout => \receiver_inst|baud_counter[10]~38_combout\,
	cout => \receiver_inst|baud_counter[10]~39\);

-- Location: FF_X107_Y21_N21
\receiver_inst|baud_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[10]~38_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(10));

-- Location: LCCOMB_X107_Y21_N22
\receiver_inst|baud_counter[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[11]~40_combout\ = (\receiver_inst|baud_counter\(11) & (!\receiver_inst|baud_counter[10]~39\)) # (!\receiver_inst|baud_counter\(11) & ((\receiver_inst|baud_counter[10]~39\) # (GND)))
-- \receiver_inst|baud_counter[11]~41\ = CARRY((!\receiver_inst|baud_counter[10]~39\) # (!\receiver_inst|baud_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(11),
	datad => VCC,
	cin => \receiver_inst|baud_counter[10]~39\,
	combout => \receiver_inst|baud_counter[11]~40_combout\,
	cout => \receiver_inst|baud_counter[11]~41\);

-- Location: FF_X107_Y21_N23
\receiver_inst|baud_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[11]~40_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(11));

-- Location: LCCOMB_X107_Y21_N24
\receiver_inst|baud_counter[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[12]~42_combout\ = (\receiver_inst|baud_counter\(12) & (\receiver_inst|baud_counter[11]~41\ $ (GND))) # (!\receiver_inst|baud_counter\(12) & (!\receiver_inst|baud_counter[11]~41\ & VCC))
-- \receiver_inst|baud_counter[12]~43\ = CARRY((\receiver_inst|baud_counter\(12) & !\receiver_inst|baud_counter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(12),
	datad => VCC,
	cin => \receiver_inst|baud_counter[11]~41\,
	combout => \receiver_inst|baud_counter[12]~42_combout\,
	cout => \receiver_inst|baud_counter[12]~43\);

-- Location: FF_X107_Y21_N25
\receiver_inst|baud_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[12]~42_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(12));

-- Location: LCCOMB_X107_Y21_N26
\receiver_inst|baud_counter[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[13]~44_combout\ = (\receiver_inst|baud_counter\(13) & (!\receiver_inst|baud_counter[12]~43\)) # (!\receiver_inst|baud_counter\(13) & ((\receiver_inst|baud_counter[12]~43\) # (GND)))
-- \receiver_inst|baud_counter[13]~45\ = CARRY((!\receiver_inst|baud_counter[12]~43\) # (!\receiver_inst|baud_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(13),
	datad => VCC,
	cin => \receiver_inst|baud_counter[12]~43\,
	combout => \receiver_inst|baud_counter[13]~44_combout\,
	cout => \receiver_inst|baud_counter[13]~45\);

-- Location: FF_X107_Y21_N27
\receiver_inst|baud_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[13]~44_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(13));

-- Location: LCCOMB_X106_Y21_N10
\receiver_inst|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~7_combout\ = (\receiver_inst|baud_counter\(12) & (\receiver_inst|Add1~24_combout\ & (\receiver_inst|Add1~26_combout\ $ (!\receiver_inst|baud_counter\(13))))) # (!\receiver_inst|baud_counter\(12) & (!\receiver_inst|Add1~24_combout\ & 
-- (\receiver_inst|Add1~26_combout\ $ (!\receiver_inst|baud_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(12),
	datab => \receiver_inst|Add1~26_combout\,
	datac => \receiver_inst|Add1~24_combout\,
	datad => \receiver_inst|baud_counter\(13),
	combout => \receiver_inst|Equal1~7_combout\);

-- Location: LCCOMB_X106_Y21_N2
\receiver_inst|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~5_combout\ = (\receiver_inst|Add1~18_combout\ & (\receiver_inst|baud_counter\(9) & (\receiver_inst|Add1~16_combout\ $ (!\receiver_inst|baud_counter\(8))))) # (!\receiver_inst|Add1~18_combout\ & (!\receiver_inst|baud_counter\(9) & 
-- (\receiver_inst|Add1~16_combout\ $ (!\receiver_inst|baud_counter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add1~18_combout\,
	datab => \receiver_inst|Add1~16_combout\,
	datac => \receiver_inst|baud_counter\(8),
	datad => \receiver_inst|baud_counter\(9),
	combout => \receiver_inst|Equal1~5_combout\);

-- Location: LCCOMB_X107_Y21_N28
\receiver_inst|baud_counter[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[14]~46_combout\ = (\receiver_inst|baud_counter\(14) & (\receiver_inst|baud_counter[13]~45\ $ (GND))) # (!\receiver_inst|baud_counter\(14) & (!\receiver_inst|baud_counter[13]~45\ & VCC))
-- \receiver_inst|baud_counter[14]~47\ = CARRY((\receiver_inst|baud_counter\(14) & !\receiver_inst|baud_counter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_counter\(14),
	datad => VCC,
	cin => \receiver_inst|baud_counter[13]~45\,
	combout => \receiver_inst|baud_counter[14]~46_combout\,
	cout => \receiver_inst|baud_counter[14]~47\);

-- Location: FF_X107_Y21_N29
\receiver_inst|baud_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[14]~46_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(14));

-- Location: LCCOMB_X107_Y21_N30
\receiver_inst|baud_counter[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[15]~48_combout\ = \receiver_inst|baud_counter\(15) $ (\receiver_inst|baud_counter[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(15),
	cin => \receiver_inst|baud_counter[14]~47\,
	combout => \receiver_inst|baud_counter[15]~48_combout\);

-- Location: FF_X107_Y21_N31
\receiver_inst|baud_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_counter[15]~48_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|baud_counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_counter\(15));

-- Location: LCCOMB_X106_Y21_N4
\receiver_inst|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~8_combout\ = (\receiver_inst|Add1~30_combout\ & (\receiver_inst|baud_counter\(15) & (\receiver_inst|baud_counter\(14) $ (!\receiver_inst|Add1~28_combout\)))) # (!\receiver_inst|Add1~30_combout\ & (!\receiver_inst|baud_counter\(15) & 
-- (\receiver_inst|baud_counter\(14) $ (!\receiver_inst|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add1~30_combout\,
	datab => \receiver_inst|baud_counter\(14),
	datac => \receiver_inst|baud_counter\(15),
	datad => \receiver_inst|Add1~28_combout\,
	combout => \receiver_inst|Equal1~8_combout\);

-- Location: LCCOMB_X106_Y21_N20
\receiver_inst|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~6_combout\ = (\receiver_inst|baud_counter\(10) & (\receiver_inst|Add1~20_combout\ & (\receiver_inst|baud_counter\(11) $ (!\receiver_inst|Add1~22_combout\)))) # (!\receiver_inst|baud_counter\(10) & (!\receiver_inst|Add1~20_combout\ & 
-- (\receiver_inst|baud_counter\(11) $ (!\receiver_inst|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(10),
	datab => \receiver_inst|baud_counter\(11),
	datac => \receiver_inst|Add1~22_combout\,
	datad => \receiver_inst|Add1~20_combout\,
	combout => \receiver_inst|Equal1~6_combout\);

-- Location: LCCOMB_X106_Y21_N30
\receiver_inst|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~9_combout\ = (\receiver_inst|Equal1~7_combout\ & (\receiver_inst|Equal1~5_combout\ & (\receiver_inst|Equal1~8_combout\ & \receiver_inst|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Equal1~7_combout\,
	datab => \receiver_inst|Equal1~5_combout\,
	datac => \receiver_inst|Equal1~8_combout\,
	datad => \receiver_inst|Equal1~6_combout\,
	combout => \receiver_inst|Equal1~9_combout\);

-- Location: LCCOMB_X106_Y20_N12
\receiver_inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~2_combout\ = (\receiver_inst|baud_counter\(5) & (\receiver_inst|Add1~10_combout\ & (\receiver_inst|Add1~8_combout\ $ (!\receiver_inst|baud_counter\(4))))) # (!\receiver_inst|baud_counter\(5) & (!\receiver_inst|Add1~10_combout\ & 
-- (\receiver_inst|Add1~8_combout\ $ (!\receiver_inst|baud_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(5),
	datab => \receiver_inst|Add1~10_combout\,
	datac => \receiver_inst|Add1~8_combout\,
	datad => \receiver_inst|baud_counter\(4),
	combout => \receiver_inst|Equal1~2_combout\);

-- Location: LCCOMB_X106_Y20_N28
\receiver_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~0_combout\ = (\receiver_inst|Add1~0_combout\ & (\receiver_inst|baud_counter\(0) & (\receiver_inst|baud_counter\(1) $ (!\receiver_inst|Add1~2_combout\)))) # (!\receiver_inst|Add1~0_combout\ & (!\receiver_inst|baud_counter\(0) & 
-- (\receiver_inst|baud_counter\(1) $ (!\receiver_inst|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add1~0_combout\,
	datab => \receiver_inst|baud_counter\(0),
	datac => \receiver_inst|baud_counter\(1),
	datad => \receiver_inst|Add1~2_combout\,
	combout => \receiver_inst|Equal1~0_combout\);

-- Location: LCCOMB_X106_Y20_N26
\receiver_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~1_combout\ = (\receiver_inst|baud_counter\(2) & (\receiver_inst|Add1~4_combout\ & (\receiver_inst|baud_counter\(3) $ (!\receiver_inst|Add1~6_combout\)))) # (!\receiver_inst|baud_counter\(2) & (!\receiver_inst|Add1~4_combout\ & 
-- (\receiver_inst|baud_counter\(3) $ (!\receiver_inst|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(2),
	datab => \receiver_inst|baud_counter\(3),
	datac => \receiver_inst|Add1~4_combout\,
	datad => \receiver_inst|Add1~6_combout\,
	combout => \receiver_inst|Equal1~1_combout\);

-- Location: LCCOMB_X106_Y20_N18
\receiver_inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~3_combout\ = (\receiver_inst|Add1~12_combout\ & (\receiver_inst|baud_counter\(6) & (\receiver_inst|baud_counter\(7) $ (!\receiver_inst|Add1~14_combout\)))) # (!\receiver_inst|Add1~12_combout\ & (!\receiver_inst|baud_counter\(6) & 
-- (\receiver_inst|baud_counter\(7) $ (!\receiver_inst|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add1~12_combout\,
	datab => \receiver_inst|baud_counter\(7),
	datac => \receiver_inst|Add1~14_combout\,
	datad => \receiver_inst|baud_counter\(6),
	combout => \receiver_inst|Equal1~3_combout\);

-- Location: LCCOMB_X106_Y20_N20
\receiver_inst|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Equal1~4_combout\ = (\receiver_inst|Equal1~2_combout\ & (\receiver_inst|Equal1~0_combout\ & (\receiver_inst|Equal1~1_combout\ & \receiver_inst|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Equal1~2_combout\,
	datab => \receiver_inst|Equal1~0_combout\,
	datac => \receiver_inst|Equal1~1_combout\,
	datad => \receiver_inst|Equal1~3_combout\,
	combout => \receiver_inst|Equal1~4_combout\);

-- Location: LCCOMB_X106_Y17_N2
\receiver_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~0_combout\ = (((!\baud_selector|Mux0~0_combout\ & \SW[16]~input_o\)))
-- \receiver_inst|Add0~1\ = CARRY((!\baud_selector|Mux0~0_combout\ & \SW[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux0~0_combout\,
	datab => \SW[16]~input_o\,
	datad => VCC,
	combout => \receiver_inst|Add0~0_combout\,
	cout => \receiver_inst|Add0~1\);

-- Location: LCCOMB_X106_Y17_N4
\receiver_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~2_combout\ = (\baud_selector|Mux11~0_combout\ & (\receiver_inst|Add0~1\ & VCC)) # (!\baud_selector|Mux11~0_combout\ & (!\receiver_inst|Add0~1\))
-- \receiver_inst|Add0~3\ = CARRY((!\baud_selector|Mux11~0_combout\ & !\receiver_inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux11~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~1\,
	combout => \receiver_inst|Add0~2_combout\,
	cout => \receiver_inst|Add0~3\);

-- Location: LCCOMB_X106_Y17_N6
\receiver_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~4_combout\ = (\baud_selector|Mux10~0_combout\ & ((GND) # (!\receiver_inst|Add0~3\))) # (!\baud_selector|Mux10~0_combout\ & (\receiver_inst|Add0~3\ $ (GND)))
-- \receiver_inst|Add0~5\ = CARRY((\baud_selector|Mux10~0_combout\) # (!\receiver_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_selector|Mux10~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~3\,
	combout => \receiver_inst|Add0~4_combout\,
	cout => \receiver_inst|Add0~5\);

-- Location: LCCOMB_X106_Y17_N8
\receiver_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~6_combout\ = (\receiver_inst|Add0~5\ & (((\SW[14]~input_o\) # (!\baud_selector|Mux9~0_combout\)))) # (!\receiver_inst|Add0~5\ & (!\SW[14]~input_o\ & (\baud_selector|Mux9~0_combout\)))
-- \receiver_inst|Add0~7\ = CARRY((!\SW[14]~input_o\ & (\baud_selector|Mux9~0_combout\ & !\receiver_inst|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \baud_selector|Mux9~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~5\,
	combout => \receiver_inst|Add0~6_combout\,
	cout => \receiver_inst|Add0~7\);

-- Location: LCCOMB_X106_Y17_N10
\receiver_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~8_combout\ = (\receiver_inst|Add0~7\ & ((((\baud_selector|Mux8~0_combout\) # (!\SW[14]~input_o\))))) # (!\receiver_inst|Add0~7\ & (((\baud_selector|Mux8~0_combout\) # (GND)) # (!\SW[14]~input_o\)))
-- \receiver_inst|Add0~9\ = CARRY(((\baud_selector|Mux8~0_combout\) # (!\receiver_inst|Add0~7\)) # (!\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \baud_selector|Mux8~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~7\,
	combout => \receiver_inst|Add0~8_combout\,
	cout => \receiver_inst|Add0~9\);

-- Location: LCCOMB_X106_Y17_N12
\receiver_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~10_combout\ = (\SW[15]~input_o\ & (((!\receiver_inst|Add0~9\)))) # (!\SW[15]~input_o\ & ((\baud_selector|Mux7~0_combout\ & (\receiver_inst|Add0~9\ & VCC)) # (!\baud_selector|Mux7~0_combout\ & (!\receiver_inst|Add0~9\))))
-- \receiver_inst|Add0~11\ = CARRY((!\receiver_inst|Add0~9\ & ((\SW[15]~input_o\) # (!\baud_selector|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \baud_selector|Mux7~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~9\,
	combout => \receiver_inst|Add0~10_combout\,
	cout => \receiver_inst|Add0~11\);

-- Location: LCCOMB_X106_Y17_N14
\receiver_inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~12_combout\ = (\receiver_inst|Add0~11\ & (\baud_selector|Mux6~0_combout\ $ (\SW[16]~input_o\ $ (GND)))) # (!\receiver_inst|Add0~11\ & ((\baud_selector|Mux6~0_combout\ $ (!\SW[16]~input_o\)) # (GND)))
-- \receiver_inst|Add0~13\ = CARRY((\baud_selector|Mux6~0_combout\ $ (!\SW[16]~input_o\)) # (!\receiver_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux6~0_combout\,
	datab => \SW[16]~input_o\,
	datad => VCC,
	cin => \receiver_inst|Add0~11\,
	combout => \receiver_inst|Add0~12_combout\,
	cout => \receiver_inst|Add0~13\);

-- Location: LCCOMB_X106_Y17_N16
\receiver_inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~14_combout\ = (\baud_selector|Mux5~0_combout\ & (\receiver_inst|Add0~13\ & VCC)) # (!\baud_selector|Mux5~0_combout\ & (!\receiver_inst|Add0~13\))
-- \receiver_inst|Add0~15\ = CARRY((!\baud_selector|Mux5~0_combout\ & !\receiver_inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_selector|Mux5~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~13\,
	combout => \receiver_inst|Add0~14_combout\,
	cout => \receiver_inst|Add0~15\);

-- Location: LCCOMB_X106_Y17_N18
\receiver_inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~16_combout\ = (\baud_selector|Mux4~0_combout\ & ((GND) # (!\receiver_inst|Add0~15\))) # (!\baud_selector|Mux4~0_combout\ & (\receiver_inst|Add0~15\ $ (GND)))
-- \receiver_inst|Add0~17\ = CARRY((\baud_selector|Mux4~0_combout\) # (!\receiver_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux4~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~15\,
	combout => \receiver_inst|Add0~16_combout\,
	cout => \receiver_inst|Add0~17\);

-- Location: LCCOMB_X106_Y17_N20
\receiver_inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~18_combout\ = (\SW[14]~input_o\ & ((\SW[16]~input_o\ & (!\receiver_inst|Add0~17\)) # (!\SW[16]~input_o\ & (\receiver_inst|Add0~17\ & VCC)))) # (!\SW[14]~input_o\ & (((!\receiver_inst|Add0~17\))))
-- \receiver_inst|Add0~19\ = CARRY((!\receiver_inst|Add0~17\ & ((\SW[16]~input_o\) # (!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datad => VCC,
	cin => \receiver_inst|Add0~17\,
	combout => \receiver_inst|Add0~18_combout\,
	cout => \receiver_inst|Add0~19\);

-- Location: LCCOMB_X106_Y17_N22
\receiver_inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~20_combout\ = (\receiver_inst|Add0~19\ & ((((!\SW[14]~input_o\ & !\SW[16]~input_o\))))) # (!\receiver_inst|Add0~19\ & (((!\SW[14]~input_o\ & !\SW[16]~input_o\)) # (GND)))
-- \receiver_inst|Add0~21\ = CARRY(((!\SW[14]~input_o\ & !\SW[16]~input_o\)) # (!\receiver_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[16]~input_o\,
	datad => VCC,
	cin => \receiver_inst|Add0~19\,
	combout => \receiver_inst|Add0~20_combout\,
	cout => \receiver_inst|Add0~21\);

-- Location: LCCOMB_X106_Y17_N24
\receiver_inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~22_combout\ = (\baud_selector|Mux1~0_combout\ & (\receiver_inst|Add0~21\ & VCC)) # (!\baud_selector|Mux1~0_combout\ & (!\receiver_inst|Add0~21\))
-- \receiver_inst|Add0~23\ = CARRY((!\baud_selector|Mux1~0_combout\ & !\receiver_inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \baud_selector|Mux1~0_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~21\,
	combout => \receiver_inst|Add0~22_combout\,
	cout => \receiver_inst|Add0~23\);

-- Location: LCCOMB_X106_Y21_N6
\receiver_inst|process_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~7_combout\ = (\receiver_inst|Add0~22_combout\ & (\receiver_inst|baud_counter\(11) & (\receiver_inst|baud_counter\(10) $ (!\receiver_inst|Add0~20_combout\)))) # (!\receiver_inst|Add0~22_combout\ & (!\receiver_inst|baud_counter\(11) 
-- & (\receiver_inst|baud_counter\(10) $ (!\receiver_inst|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add0~22_combout\,
	datab => \receiver_inst|baud_counter\(11),
	datac => \receiver_inst|baud_counter\(10),
	datad => \receiver_inst|Add0~20_combout\,
	combout => \receiver_inst|process_2~7_combout\);

-- Location: LCCOMB_X106_Y21_N0
\receiver_inst|process_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~6_combout\ = (\receiver_inst|baud_counter\(8) & (\receiver_inst|Add0~16_combout\ & (\receiver_inst|baud_counter\(9) $ (!\receiver_inst|Add0~18_combout\)))) # (!\receiver_inst|baud_counter\(8) & (!\receiver_inst|Add0~16_combout\ & 
-- (\receiver_inst|baud_counter\(9) $ (!\receiver_inst|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(8),
	datab => \receiver_inst|baud_counter\(9),
	datac => \receiver_inst|Add0~18_combout\,
	datad => \receiver_inst|Add0~16_combout\,
	combout => \receiver_inst|process_2~6_combout\);

-- Location: LCCOMB_X106_Y17_N26
\receiver_inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~24_combout\ = (\baud_selector|Mux0~1_combout\ & ((GND) # (!\receiver_inst|Add0~23\))) # (!\baud_selector|Mux0~1_combout\ & (\receiver_inst|Add0~23\ $ (GND)))
-- \receiver_inst|Add0~25\ = CARRY((\baud_selector|Mux0~1_combout\) # (!\receiver_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \baud_selector|Mux0~1_combout\,
	datad => VCC,
	cin => \receiver_inst|Add0~23\,
	combout => \receiver_inst|Add0~24_combout\,
	cout => \receiver_inst|Add0~25\);

-- Location: LCCOMB_X106_Y17_N28
\receiver_inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~26_combout\ = !\receiver_inst|Add0~25\
-- \receiver_inst|Add0~27\ = CARRY(!\receiver_inst|Add0~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \receiver_inst|Add0~25\,
	combout => \receiver_inst|Add0~26_combout\,
	cout => \receiver_inst|Add0~27\);

-- Location: LCCOMB_X106_Y17_N30
\receiver_inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Add0~28_combout\ = \receiver_inst|Add0~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \receiver_inst|Add0~27\,
	combout => \receiver_inst|Add0~28_combout\);

-- Location: LCCOMB_X106_Y21_N22
\receiver_inst|process_2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~9_combout\ = (\receiver_inst|state.START_BIT~q\ & ((\receiver_inst|Add0~28_combout\ & (\receiver_inst|baud_counter\(15) & \receiver_inst|baud_counter\(14))) # (!\receiver_inst|Add0~28_combout\ & (!\receiver_inst|baud_counter\(15) 
-- & !\receiver_inst|baud_counter\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add0~28_combout\,
	datab => \receiver_inst|state.START_BIT~q\,
	datac => \receiver_inst|baud_counter\(15),
	datad => \receiver_inst|baud_counter\(14),
	combout => \receiver_inst|process_2~9_combout\);

-- Location: LCCOMB_X106_Y21_N16
\receiver_inst|process_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~8_combout\ = (\receiver_inst|Add0~26_combout\ & (\receiver_inst|baud_counter\(13) & (\receiver_inst|baud_counter\(12) $ (!\receiver_inst|Add0~24_combout\)))) # (!\receiver_inst|Add0~26_combout\ & (!\receiver_inst|baud_counter\(13) 
-- & (\receiver_inst|baud_counter\(12) $ (!\receiver_inst|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add0~26_combout\,
	datab => \receiver_inst|baud_counter\(13),
	datac => \receiver_inst|baud_counter\(12),
	datad => \receiver_inst|Add0~24_combout\,
	combout => \receiver_inst|process_2~8_combout\);

-- Location: LCCOMB_X106_Y21_N28
\receiver_inst|process_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~10_combout\ = (\receiver_inst|process_2~7_combout\ & (\receiver_inst|process_2~6_combout\ & (\receiver_inst|process_2~9_combout\ & \receiver_inst|process_2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|process_2~7_combout\,
	datab => \receiver_inst|process_2~6_combout\,
	datac => \receiver_inst|process_2~9_combout\,
	datad => \receiver_inst|process_2~8_combout\,
	combout => \receiver_inst|process_2~10_combout\);

-- Location: LCCOMB_X106_Y20_N30
\receiver_inst|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~3_combout\ = (\receiver_inst|Add0~8_combout\ & (\receiver_inst|baud_counter\(4) & (\receiver_inst|Add0~10_combout\ $ (!\receiver_inst|baud_counter\(5))))) # (!\receiver_inst|Add0~8_combout\ & (!\receiver_inst|baud_counter\(4) & 
-- (\receiver_inst|Add0~10_combout\ $ (!\receiver_inst|baud_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add0~8_combout\,
	datab => \receiver_inst|Add0~10_combout\,
	datac => \receiver_inst|baud_counter\(5),
	datad => \receiver_inst|baud_counter\(4),
	combout => \receiver_inst|process_2~3_combout\);

-- Location: LCCOMB_X106_Y20_N4
\receiver_inst|process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~4_combout\ = (\receiver_inst|baud_counter\(6) & (\receiver_inst|Add0~12_combout\ & (\receiver_inst|Add0~14_combout\ $ (!\receiver_inst|baud_counter\(7))))) # (!\receiver_inst|baud_counter\(6) & (!\receiver_inst|Add0~12_combout\ & 
-- (\receiver_inst|Add0~14_combout\ $ (!\receiver_inst|baud_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(6),
	datab => \receiver_inst|Add0~14_combout\,
	datac => \receiver_inst|Add0~12_combout\,
	datad => \receiver_inst|baud_counter\(7),
	combout => \receiver_inst|process_2~4_combout\);

-- Location: LCCOMB_X106_Y20_N22
\receiver_inst|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~1_combout\ = (\receiver_inst|Add0~0_combout\ & (\receiver_inst|baud_counter\(0) & (\receiver_inst|Add0~2_combout\ $ (!\receiver_inst|baud_counter\(1))))) # (!\receiver_inst|Add0~0_combout\ & (!\receiver_inst|baud_counter\(0) & 
-- (\receiver_inst|Add0~2_combout\ $ (!\receiver_inst|baud_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Add0~0_combout\,
	datab => \receiver_inst|Add0~2_combout\,
	datac => \receiver_inst|baud_counter\(1),
	datad => \receiver_inst|baud_counter\(0),
	combout => \receiver_inst|process_2~1_combout\);

-- Location: LCCOMB_X106_Y20_N24
\receiver_inst|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~2_combout\ = (\receiver_inst|baud_counter\(2) & (\receiver_inst|Add0~4_combout\ & (\receiver_inst|Add0~6_combout\ $ (!\receiver_inst|baud_counter\(3))))) # (!\receiver_inst|baud_counter\(2) & (!\receiver_inst|Add0~4_combout\ & 
-- (\receiver_inst|Add0~6_combout\ $ (!\receiver_inst|baud_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|baud_counter\(2),
	datab => \receiver_inst|Add0~6_combout\,
	datac => \receiver_inst|Add0~4_combout\,
	datad => \receiver_inst|baud_counter\(3),
	combout => \receiver_inst|process_2~2_combout\);

-- Location: LCCOMB_X106_Y20_N6
\receiver_inst|process_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|process_2~5_combout\ = (\receiver_inst|process_2~3_combout\ & (\receiver_inst|process_2~4_combout\ & (\receiver_inst|process_2~1_combout\ & \receiver_inst|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|process_2~3_combout\,
	datab => \receiver_inst|process_2~4_combout\,
	datac => \receiver_inst|process_2~1_combout\,
	datad => \receiver_inst|process_2~2_combout\,
	combout => \receiver_inst|process_2~5_combout\);

-- Location: LCCOMB_X106_Y20_N14
\receiver_inst|baud_counter[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_counter[3]~16_combout\ = (\receiver_inst|Equal1~9_combout\ & (!\receiver_inst|Equal1~4_combout\ & ((!\receiver_inst|process_2~5_combout\) # (!\receiver_inst|process_2~10_combout\)))) # (!\receiver_inst|Equal1~9_combout\ & 
-- (((!\receiver_inst|process_2~5_combout\) # (!\receiver_inst|process_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Equal1~9_combout\,
	datab => \receiver_inst|Equal1~4_combout\,
	datac => \receiver_inst|process_2~10_combout\,
	datad => \receiver_inst|process_2~5_combout\,
	combout => \receiver_inst|baud_counter[3]~16_combout\);

-- Location: LCCOMB_X107_Y34_N24
\receiver_inst|baud_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|baud_enable~0_combout\ = (!\receiver_inst|baud_counter[3]~16_combout\ & !\receiver_inst|start_detected~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_inst|baud_counter[3]~16_combout\,
	datad => \receiver_inst|start_detected~q\,
	combout => \receiver_inst|baud_enable~0_combout\);

-- Location: FF_X107_Y34_N25
\receiver_inst|baud_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|baud_enable~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sclr => \receiver_inst|ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|baud_enable~q\);

-- Location: LCCOMB_X108_Y34_N2
\receiver_inst|data_shift_reg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|data_shift_reg[3]~0_combout\ = (\receiver_inst|baud_enable~q\ & \receiver_inst|state.DATA_BITS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_enable~q\,
	datac => \receiver_inst|state.DATA_BITS~q\,
	combout => \receiver_inst|data_shift_reg[3]~0_combout\);

-- Location: FF_X108_Y34_N25
\receiver_inst|data_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|data_shift_reg[7]~1_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(7));

-- Location: FF_X108_Y34_N23
\receiver_inst|data_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(7),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(6));

-- Location: LCCOMB_X108_Y34_N6
\receiver_inst|data_shift_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|data_shift_reg[5]~feeder_combout\ = \receiver_inst|data_shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|data_shift_reg\(6),
	combout => \receiver_inst|data_shift_reg[5]~feeder_combout\);

-- Location: FF_X108_Y34_N7
\receiver_inst|data_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|data_shift_reg[5]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(5));

-- Location: LCCOMB_X108_Y39_N6
\receiver_inst|data_shift_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|data_shift_reg[4]~feeder_combout\ = \receiver_inst|data_shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|data_shift_reg\(5),
	combout => \receiver_inst|data_shift_reg[4]~feeder_combout\);

-- Location: FF_X108_Y39_N7
\receiver_inst|data_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|data_shift_reg[4]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(4));

-- Location: LCCOMB_X108_Y39_N12
\receiver_inst|data_shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|data_shift_reg[3]~feeder_combout\ = \receiver_inst|data_shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|data_shift_reg\(4),
	combout => \receiver_inst|data_shift_reg[3]~feeder_combout\);

-- Location: FF_X108_Y39_N13
\receiver_inst|data_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|data_shift_reg[3]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(3));

-- Location: LCCOMB_X108_Y39_N30
\receiver_inst|data_shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|data_shift_reg[2]~feeder_combout\ = \receiver_inst|data_shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|data_shift_reg\(3),
	combout => \receiver_inst|data_shift_reg[2]~feeder_combout\);

-- Location: FF_X108_Y39_N31
\receiver_inst|data_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|data_shift_reg[2]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(2));

-- Location: FF_X108_Y39_N1
\receiver_inst|data_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(2),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(1));

-- Location: LCCOMB_X108_Y39_N14
\receiver_inst|data_shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|data_shift_reg[0]~feeder_combout\ = \receiver_inst|data_shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|data_shift_reg\(1),
	combout => \receiver_inst|data_shift_reg[0]~feeder_combout\);

-- Location: FF_X108_Y39_N15
\receiver_inst|data_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|data_shift_reg[0]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \receiver_inst|data_shift_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|data_shift_reg\(0));

-- Location: LCCOMB_X107_Y34_N4
\receiver_inst|dataUt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|dataUt[3]~0_combout\ = (\receiver_inst|baud_enable~q\ & (!\receiver_inst|dataInn_sync3~q\ & \receiver_inst|state.STOP_BIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_inst|baud_enable~q\,
	datac => \receiver_inst|dataInn_sync3~q\,
	datad => \receiver_inst|state.STOP_BIT~q\,
	combout => \receiver_inst|dataUt[3]~0_combout\);

-- Location: FF_X108_Y43_N27
\receiver_inst|dataUt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(0),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(0));

-- Location: LCCOMB_X107_Y34_N0
\receiver_inst|dataValidUt~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|dataValidUt~feeder_combout\ = \receiver_inst|dataUt[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_inst|dataUt[3]~0_combout\,
	combout => \receiver_inst|dataValidUt~feeder_combout\);

-- Location: FF_X107_Y34_N1
\receiver_inst|dataValidUt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|dataValidUt~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataValidUt~q\);

-- Location: FF_X108_Y43_N13
\display_inst|data_latched[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|dataUt\(0),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(0));

-- Location: FF_X108_Y43_N31
\receiver_inst|dataUt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(1),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(1));

-- Location: FF_X108_Y43_N17
\display_inst|data_latched[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|dataUt\(1),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(1));

-- Location: FF_X108_Y43_N21
\receiver_inst|dataUt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(2),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(2));

-- Location: FF_X109_Y43_N5
\display_inst|data_latched[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|dataUt\(2),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(2));

-- Location: FF_X108_Y43_N5
\receiver_inst|dataUt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(3),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(3));

-- Location: FF_X108_Y43_N3
\display_inst|data_latched[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|dataUt\(3),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(3));

-- Location: FF_X101_Y23_N21
\receiver_inst|dataUt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(4),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(4));

-- Location: FF_X108_Y43_N1
\display_inst|data_latched[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|dataUt\(4),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(4));

-- Location: FF_X101_Y23_N17
\receiver_inst|dataUt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(5),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(5));

-- Location: FF_X108_Y43_N23
\display_inst|data_latched[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|dataUt\(5),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(5));

-- Location: FF_X101_Y23_N19
\receiver_inst|dataUt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(6),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(6));

-- Location: LCCOMB_X108_Y43_N28
\display_inst|data_latched[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|data_latched[6]~feeder_combout\ = \receiver_inst|dataUt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_inst|dataUt\(6),
	combout => \display_inst|data_latched[6]~feeder_combout\);

-- Location: FF_X108_Y43_N29
\display_inst|data_latched[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|data_latched[6]~feeder_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(6));

-- Location: FF_X101_Y23_N9
\receiver_inst|dataUt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|data_shift_reg\(7),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataUt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|dataUt\(7));

-- Location: FF_X108_Y43_N25
\display_inst|data_latched[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \receiver_inst|dataUt\(7),
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => VCC,
	ena => \receiver_inst|dataValidUt~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|data_latched\(7));

-- Location: LCCOMB_X107_Y40_N14
\display_inst|valid_pulse_counter[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[0]~19_combout\ = \display_inst|valid_pulse_counter\(0) $ (VCC)
-- \display_inst|valid_pulse_counter[0]~20\ = CARRY(\display_inst|valid_pulse_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(0),
	datad => VCC,
	combout => \display_inst|valid_pulse_counter[0]~19_combout\,
	cout => \display_inst|valid_pulse_counter[0]~20\);

-- Location: LCCOMB_X107_Y39_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X107_Y40_N15
\display_inst|valid_pulse_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[0]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(0));

-- Location: LCCOMB_X107_Y40_N16
\display_inst|valid_pulse_counter[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[1]~21_combout\ = (\display_inst|valid_pulse_counter\(1) & (\display_inst|valid_pulse_counter[0]~20\ & VCC)) # (!\display_inst|valid_pulse_counter\(1) & (!\display_inst|valid_pulse_counter[0]~20\))
-- \display_inst|valid_pulse_counter[1]~22\ = CARRY((!\display_inst|valid_pulse_counter\(1) & !\display_inst|valid_pulse_counter[0]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(1),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[0]~20\,
	combout => \display_inst|valid_pulse_counter[1]~21_combout\,
	cout => \display_inst|valid_pulse_counter[1]~22\);

-- Location: FF_X107_Y40_N17
\display_inst|valid_pulse_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[1]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(1));

-- Location: LCCOMB_X107_Y40_N18
\display_inst|valid_pulse_counter[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[2]~23_combout\ = (\display_inst|valid_pulse_counter\(2) & ((GND) # (!\display_inst|valid_pulse_counter[1]~22\))) # (!\display_inst|valid_pulse_counter\(2) & (\display_inst|valid_pulse_counter[1]~22\ $ (GND)))
-- \display_inst|valid_pulse_counter[2]~24\ = CARRY((\display_inst|valid_pulse_counter\(2)) # (!\display_inst|valid_pulse_counter[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(2),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[1]~22\,
	combout => \display_inst|valid_pulse_counter[2]~23_combout\,
	cout => \display_inst|valid_pulse_counter[2]~24\);

-- Location: FF_X107_Y40_N19
\display_inst|valid_pulse_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[2]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(2));

-- Location: LCCOMB_X107_Y40_N20
\display_inst|valid_pulse_counter[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[3]~25_combout\ = (\display_inst|valid_pulse_counter\(3) & (\display_inst|valid_pulse_counter[2]~24\ & VCC)) # (!\display_inst|valid_pulse_counter\(3) & (!\display_inst|valid_pulse_counter[2]~24\))
-- \display_inst|valid_pulse_counter[3]~26\ = CARRY((!\display_inst|valid_pulse_counter\(3) & !\display_inst|valid_pulse_counter[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(3),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[2]~24\,
	combout => \display_inst|valid_pulse_counter[3]~25_combout\,
	cout => \display_inst|valid_pulse_counter[3]~26\);

-- Location: FF_X107_Y40_N21
\display_inst|valid_pulse_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[3]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(3));

-- Location: LCCOMB_X107_Y40_N22
\display_inst|valid_pulse_counter[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[4]~27_combout\ = (\display_inst|valid_pulse_counter\(4) & ((GND) # (!\display_inst|valid_pulse_counter[3]~26\))) # (!\display_inst|valid_pulse_counter\(4) & (\display_inst|valid_pulse_counter[3]~26\ $ (GND)))
-- \display_inst|valid_pulse_counter[4]~28\ = CARRY((\display_inst|valid_pulse_counter\(4)) # (!\display_inst|valid_pulse_counter[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(4),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[3]~26\,
	combout => \display_inst|valid_pulse_counter[4]~27_combout\,
	cout => \display_inst|valid_pulse_counter[4]~28\);

-- Location: FF_X107_Y40_N23
\display_inst|valid_pulse_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[4]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(4));

-- Location: LCCOMB_X107_Y40_N24
\display_inst|valid_pulse_counter[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[5]~29_combout\ = (\display_inst|valid_pulse_counter\(5) & (\display_inst|valid_pulse_counter[4]~28\ & VCC)) # (!\display_inst|valid_pulse_counter\(5) & (!\display_inst|valid_pulse_counter[4]~28\))
-- \display_inst|valid_pulse_counter[5]~30\ = CARRY((!\display_inst|valid_pulse_counter\(5) & !\display_inst|valid_pulse_counter[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(5),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[4]~28\,
	combout => \display_inst|valid_pulse_counter[5]~29_combout\,
	cout => \display_inst|valid_pulse_counter[5]~30\);

-- Location: FF_X107_Y40_N25
\display_inst|valid_pulse_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[5]~29_combout\,
	asdata => VCC,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(5));

-- Location: LCCOMB_X107_Y40_N26
\display_inst|valid_pulse_counter[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[6]~31_combout\ = (\display_inst|valid_pulse_counter\(6) & ((GND) # (!\display_inst|valid_pulse_counter[5]~30\))) # (!\display_inst|valid_pulse_counter\(6) & (\display_inst|valid_pulse_counter[5]~30\ $ (GND)))
-- \display_inst|valid_pulse_counter[6]~32\ = CARRY((\display_inst|valid_pulse_counter\(6)) # (!\display_inst|valid_pulse_counter[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(6),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[5]~30\,
	combout => \display_inst|valid_pulse_counter[6]~31_combout\,
	cout => \display_inst|valid_pulse_counter[6]~32\);

-- Location: FF_X107_Y40_N27
\display_inst|valid_pulse_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[6]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(6));

-- Location: LCCOMB_X107_Y40_N12
\display_inst|led_valid~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|led_valid~2_combout\ = (\display_inst|valid_pulse_counter\(6)) # ((\display_inst|valid_pulse_counter\(5)) # ((\display_inst|valid_pulse_counter\(4)) # (\display_inst|valid_pulse_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(6),
	datab => \display_inst|valid_pulse_counter\(5),
	datac => \display_inst|valid_pulse_counter\(4),
	datad => \display_inst|valid_pulse_counter\(3),
	combout => \display_inst|led_valid~2_combout\);

-- Location: LCCOMB_X107_Y40_N28
\display_inst|valid_pulse_counter[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[7]~33_combout\ = (\display_inst|valid_pulse_counter\(7) & (\display_inst|valid_pulse_counter[6]~32\ & VCC)) # (!\display_inst|valid_pulse_counter\(7) & (!\display_inst|valid_pulse_counter[6]~32\))
-- \display_inst|valid_pulse_counter[7]~34\ = CARRY((!\display_inst|valid_pulse_counter\(7) & !\display_inst|valid_pulse_counter[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(7),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[6]~32\,
	combout => \display_inst|valid_pulse_counter[7]~33_combout\,
	cout => \display_inst|valid_pulse_counter[7]~34\);

-- Location: FF_X107_Y40_N29
\display_inst|valid_pulse_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[7]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(7));

-- Location: LCCOMB_X107_Y40_N30
\display_inst|valid_pulse_counter[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[8]~35_combout\ = (\display_inst|valid_pulse_counter\(8) & ((GND) # (!\display_inst|valid_pulse_counter[7]~34\))) # (!\display_inst|valid_pulse_counter\(8) & (\display_inst|valid_pulse_counter[7]~34\ $ (GND)))
-- \display_inst|valid_pulse_counter[8]~36\ = CARRY((\display_inst|valid_pulse_counter\(8)) # (!\display_inst|valid_pulse_counter[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(8),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[7]~34\,
	combout => \display_inst|valid_pulse_counter[8]~35_combout\,
	cout => \display_inst|valid_pulse_counter[8]~36\);

-- Location: FF_X107_Y40_N31
\display_inst|valid_pulse_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[8]~35_combout\,
	asdata => VCC,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(8));

-- Location: LCCOMB_X107_Y39_N0
\display_inst|valid_pulse_counter[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[9]~37_combout\ = (\display_inst|valid_pulse_counter\(9) & (\display_inst|valid_pulse_counter[8]~36\ & VCC)) # (!\display_inst|valid_pulse_counter\(9) & (!\display_inst|valid_pulse_counter[8]~36\))
-- \display_inst|valid_pulse_counter[9]~38\ = CARRY((!\display_inst|valid_pulse_counter\(9) & !\display_inst|valid_pulse_counter[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(9),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[8]~36\,
	combout => \display_inst|valid_pulse_counter[9]~37_combout\,
	cout => \display_inst|valid_pulse_counter[9]~38\);

-- Location: FF_X107_Y39_N1
\display_inst|valid_pulse_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[9]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(9));

-- Location: LCCOMB_X107_Y39_N2
\display_inst|valid_pulse_counter[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[10]~39_combout\ = (\display_inst|valid_pulse_counter\(10) & ((GND) # (!\display_inst|valid_pulse_counter[9]~38\))) # (!\display_inst|valid_pulse_counter\(10) & (\display_inst|valid_pulse_counter[9]~38\ $ (GND)))
-- \display_inst|valid_pulse_counter[10]~40\ = CARRY((\display_inst|valid_pulse_counter\(10)) # (!\display_inst|valid_pulse_counter[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(10),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[9]~38\,
	combout => \display_inst|valid_pulse_counter[10]~39_combout\,
	cout => \display_inst|valid_pulse_counter[10]~40\);

-- Location: FF_X107_Y39_N3
\display_inst|valid_pulse_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[10]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(10));

-- Location: LCCOMB_X107_Y39_N4
\display_inst|valid_pulse_counter[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[11]~41_combout\ = (\display_inst|valid_pulse_counter\(11) & (\display_inst|valid_pulse_counter[10]~40\ & VCC)) # (!\display_inst|valid_pulse_counter\(11) & (!\display_inst|valid_pulse_counter[10]~40\))
-- \display_inst|valid_pulse_counter[11]~42\ = CARRY((!\display_inst|valid_pulse_counter\(11) & !\display_inst|valid_pulse_counter[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(11),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[10]~40\,
	combout => \display_inst|valid_pulse_counter[11]~41_combout\,
	cout => \display_inst|valid_pulse_counter[11]~42\);

-- Location: FF_X107_Y39_N5
\display_inst|valid_pulse_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[11]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(11));

-- Location: LCCOMB_X107_Y39_N6
\display_inst|valid_pulse_counter[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[12]~43_combout\ = (\display_inst|valid_pulse_counter\(12) & ((GND) # (!\display_inst|valid_pulse_counter[11]~42\))) # (!\display_inst|valid_pulse_counter\(12) & (\display_inst|valid_pulse_counter[11]~42\ $ (GND)))
-- \display_inst|valid_pulse_counter[12]~44\ = CARRY((\display_inst|valid_pulse_counter\(12)) # (!\display_inst|valid_pulse_counter[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(12),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[11]~42\,
	combout => \display_inst|valid_pulse_counter[12]~43_combout\,
	cout => \display_inst|valid_pulse_counter[12]~44\);

-- Location: FF_X107_Y39_N7
\display_inst|valid_pulse_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[12]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(12));

-- Location: LCCOMB_X107_Y39_N8
\display_inst|valid_pulse_counter[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[13]~45_combout\ = (\display_inst|valid_pulse_counter\(13) & (\display_inst|valid_pulse_counter[12]~44\ & VCC)) # (!\display_inst|valid_pulse_counter\(13) & (!\display_inst|valid_pulse_counter[12]~44\))
-- \display_inst|valid_pulse_counter[13]~46\ = CARRY((!\display_inst|valid_pulse_counter\(13) & !\display_inst|valid_pulse_counter[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(13),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[12]~44\,
	combout => \display_inst|valid_pulse_counter[13]~45_combout\,
	cout => \display_inst|valid_pulse_counter[13]~46\);

-- Location: FF_X107_Y39_N9
\display_inst|valid_pulse_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[13]~45_combout\,
	asdata => VCC,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(13));

-- Location: LCCOMB_X107_Y39_N10
\display_inst|valid_pulse_counter[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[14]~47_combout\ = (\display_inst|valid_pulse_counter\(14) & ((GND) # (!\display_inst|valid_pulse_counter[13]~46\))) # (!\display_inst|valid_pulse_counter\(14) & (\display_inst|valid_pulse_counter[13]~46\ $ (GND)))
-- \display_inst|valid_pulse_counter[14]~48\ = CARRY((\display_inst|valid_pulse_counter\(14)) # (!\display_inst|valid_pulse_counter[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(14),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[13]~46\,
	combout => \display_inst|valid_pulse_counter[14]~47_combout\,
	cout => \display_inst|valid_pulse_counter[14]~48\);

-- Location: FF_X107_Y39_N11
\display_inst|valid_pulse_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[14]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(14));

-- Location: LCCOMB_X107_Y39_N12
\display_inst|valid_pulse_counter[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[15]~49_combout\ = (\display_inst|valid_pulse_counter\(15) & (\display_inst|valid_pulse_counter[14]~48\ & VCC)) # (!\display_inst|valid_pulse_counter\(15) & (!\display_inst|valid_pulse_counter[14]~48\))
-- \display_inst|valid_pulse_counter[15]~50\ = CARRY((!\display_inst|valid_pulse_counter\(15) & !\display_inst|valid_pulse_counter[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(15),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[14]~48\,
	combout => \display_inst|valid_pulse_counter[15]~49_combout\,
	cout => \display_inst|valid_pulse_counter[15]~50\);

-- Location: FF_X107_Y39_N13
\display_inst|valid_pulse_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[15]~49_combout\,
	asdata => VCC,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(15));

-- Location: LCCOMB_X107_Y39_N14
\display_inst|valid_pulse_counter[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[16]~51_combout\ = (\display_inst|valid_pulse_counter\(16) & ((GND) # (!\display_inst|valid_pulse_counter[15]~50\))) # (!\display_inst|valid_pulse_counter\(16) & (\display_inst|valid_pulse_counter[15]~50\ $ (GND)))
-- \display_inst|valid_pulse_counter[16]~52\ = CARRY((\display_inst|valid_pulse_counter\(16)) # (!\display_inst|valid_pulse_counter[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(16),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[15]~50\,
	combout => \display_inst|valid_pulse_counter[16]~51_combout\,
	cout => \display_inst|valid_pulse_counter[16]~52\);

-- Location: FF_X107_Y39_N15
\display_inst|valid_pulse_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[16]~51_combout\,
	asdata => VCC,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(16));

-- Location: LCCOMB_X107_Y39_N16
\display_inst|valid_pulse_counter[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[17]~53_combout\ = (\display_inst|valid_pulse_counter\(17) & (\display_inst|valid_pulse_counter[16]~52\ & VCC)) # (!\display_inst|valid_pulse_counter\(17) & (!\display_inst|valid_pulse_counter[16]~52\))
-- \display_inst|valid_pulse_counter[17]~54\ = CARRY((!\display_inst|valid_pulse_counter\(17) & !\display_inst|valid_pulse_counter[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|valid_pulse_counter\(17),
	datad => VCC,
	cin => \display_inst|valid_pulse_counter[16]~52\,
	combout => \display_inst|valid_pulse_counter[17]~53_combout\,
	cout => \display_inst|valid_pulse_counter[17]~54\);

-- Location: FF_X107_Y39_N17
\display_inst|valid_pulse_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[17]~53_combout\,
	asdata => VCC,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(17));

-- Location: LCCOMB_X107_Y39_N18
\display_inst|valid_pulse_counter[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|valid_pulse_counter[18]~55_combout\ = \display_inst|valid_pulse_counter[17]~54\ $ (\display_inst|valid_pulse_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \display_inst|valid_pulse_counter\(18),
	cin => \display_inst|valid_pulse_counter[17]~54\,
	combout => \display_inst|valid_pulse_counter[18]~55_combout\);

-- Location: FF_X107_Y39_N19
\display_inst|valid_pulse_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|valid_pulse_counter[18]~55_combout\,
	asdata => VCC,
	clrn => \rst_sync_inst|rst_sync2~q\,
	sload => \receiver_inst|dataValidUt~q\,
	ena => \display_inst|led_valid~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|valid_pulse_counter\(18));

-- Location: LCCOMB_X107_Y39_N28
\display_inst|led_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|led_valid~0_combout\ = (\display_inst|valid_pulse_counter\(15)) # ((\display_inst|valid_pulse_counter\(18)) # ((\display_inst|valid_pulse_counter\(16)) # (\display_inst|valid_pulse_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(15),
	datab => \display_inst|valid_pulse_counter\(18),
	datac => \display_inst|valid_pulse_counter\(16),
	datad => \display_inst|valid_pulse_counter\(17),
	combout => \display_inst|led_valid~0_combout\);

-- Location: LCCOMB_X107_Y39_N26
\display_inst|led_valid~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|led_valid~3_combout\ = (\display_inst|valid_pulse_counter\(7)) # ((\display_inst|valid_pulse_counter\(10)) # ((\display_inst|valid_pulse_counter\(8)) # (\display_inst|valid_pulse_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(7),
	datab => \display_inst|valid_pulse_counter\(10),
	datac => \display_inst|valid_pulse_counter\(8),
	datad => \display_inst|valid_pulse_counter\(9),
	combout => \display_inst|led_valid~3_combout\);

-- Location: LCCOMB_X107_Y39_N20
\display_inst|led_valid~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|led_valid~4_combout\ = (\display_inst|valid_pulse_counter\(14)) # ((\display_inst|valid_pulse_counter\(13)) # ((\display_inst|valid_pulse_counter\(11)) # (\display_inst|valid_pulse_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(14),
	datab => \display_inst|valid_pulse_counter\(13),
	datac => \display_inst|valid_pulse_counter\(11),
	datad => \display_inst|valid_pulse_counter\(12),
	combout => \display_inst|led_valid~4_combout\);

-- Location: LCCOMB_X107_Y39_N30
\display_inst|led_valid~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|led_valid~5_combout\ = (\display_inst|led_valid~3_combout\) # (\display_inst|led_valid~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|led_valid~3_combout\,
	datad => \display_inst|led_valid~4_combout\,
	combout => \display_inst|led_valid~5_combout\);

-- Location: LCCOMB_X107_Y40_N10
\display_inst|led_valid~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|led_valid~1_combout\ = (\display_inst|valid_pulse_counter\(2)) # ((\receiver_inst|dataValidUt~q\) # ((\display_inst|valid_pulse_counter\(0)) # (\display_inst|valid_pulse_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|valid_pulse_counter\(2),
	datab => \receiver_inst|dataValidUt~q\,
	datac => \display_inst|valid_pulse_counter\(0),
	datad => \display_inst|valid_pulse_counter\(1),
	combout => \display_inst|led_valid~1_combout\);

-- Location: LCCOMB_X107_Y40_N4
\display_inst|led_valid~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|led_valid~6_combout\ = (\display_inst|led_valid~2_combout\) # ((\display_inst|led_valid~0_combout\) # ((\display_inst|led_valid~5_combout\) # (\display_inst|led_valid~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|led_valid~2_combout\,
	datab => \display_inst|led_valid~0_combout\,
	datac => \display_inst|led_valid~5_combout\,
	datad => \display_inst|led_valid~1_combout\,
	combout => \display_inst|led_valid~6_combout\);

-- Location: FF_X107_Y40_N5
\display_inst|led_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \display_inst|led_valid~6_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_inst|led_valid~q\);

-- Location: LCCOMB_X107_Y34_N12
\receiver_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector1~1_combout\ = (\receiver_inst|state.START_BIT~q\) # ((\receiver_inst|state.ERROR_STATE~q\) # ((\receiver_inst|state.DATA_BITS~q\) # (\receiver_inst|state.STOP_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|state.START_BIT~q\,
	datab => \receiver_inst|state.ERROR_STATE~q\,
	datac => \receiver_inst|state.DATA_BITS~q\,
	datad => \receiver_inst|state.STOP_BIT~q\,
	combout => \receiver_inst|Selector1~1_combout\);

-- Location: LCCOMB_X107_Y34_N2
\receiver_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector1~0_combout\ = (\receiver_inst|baud_enable~q\ & ((\receiver_inst|dataInn_sync3~q\ & ((\receiver_inst|state.STOP_BIT~q\))) # (!\receiver_inst|dataInn_sync3~q\ & (\receiver_inst|state.START_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|state.START_BIT~q\,
	datab => \receiver_inst|baud_enable~q\,
	datac => \receiver_inst|dataInn_sync3~q\,
	datad => \receiver_inst|state.STOP_BIT~q\,
	combout => \receiver_inst|Selector1~0_combout\);

-- Location: LCCOMB_X107_Y34_N26
\receiver_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|Selector1~2_combout\ = (\receiver_inst|Selector1~0_combout\) # ((\receiver_inst|Selector1~1_combout\ & \receiver_inst|error_internal~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|Selector1~1_combout\,
	datac => \receiver_inst|error_internal~q\,
	datad => \receiver_inst|Selector1~0_combout\,
	combout => \receiver_inst|Selector1~2_combout\);

-- Location: FF_X107_Y34_N27
\receiver_inst|error_internal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|Selector1~2_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|error_internal~q\);

-- Location: LCCOMB_X107_Y34_N10
\receiver_inst|error~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_inst|error~0_combout\ = (\receiver_inst|error_internal~q\) # ((\receiver_inst|state.ERROR_STATE~q\) # ((\receiver_inst|error~q\ & \receiver_inst|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|error_internal~q\,
	datab => \receiver_inst|state.ERROR_STATE~q\,
	datac => \receiver_inst|error~q\,
	datad => \receiver_inst|state.IDLE~q\,
	combout => \receiver_inst|error~0_combout\);

-- Location: FF_X107_Y34_N11
\receiver_inst|error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \receiver_inst|error~0_combout\,
	clrn => \rst_sync_inst|rst_sync2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_inst|error~q\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X101_Y23_N20
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (!\SW[17]~input_o\ & !\sender_inst|tx_ready_internal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \sender_inst|tx_ready_internal~q\,
	combout => \LEDG~0_combout\);

-- Location: LCCOMB_X108_Y43_N6
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \display_inst|data_latched\(3) $ (VCC)
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\display_inst|data_latched\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(3),
	datad => VCC,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X108_Y43_N8
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\display_inst|data_latched\(4) & (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # 
-- (!\display_inst|data_latched\(4) & (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\display_inst|data_latched\(4) & !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(4),
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X108_Y43_N10
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\display_inst|data_latched\(5) & ((GND) # (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # 
-- (!\display_inst|data_latched\(5) & (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\display_inst|data_latched\(5)) # (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(5),
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X108_Y43_N12
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\display_inst|data_latched\(6) & (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\display_inst|data_latched\(6) & ((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\display_inst|data_latched\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(6),
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X108_Y43_N14
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\display_inst|data_latched\(7) & (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # 
-- (!\display_inst|data_latched\(7) & (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\display_inst|data_latched\(7) & !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(7),
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X108_Y43_N16
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X109_Y43_N6
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \display_inst|data_latched\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \display_inst|data_latched\(7),
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X109_Y43_N8
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X109_Y43_N30
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \display_inst|data_latched\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \display_inst|data_latched\(6),
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X109_Y43_N28
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X109_Y43_N10
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X108_Y43_N24
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\display_inst|data_latched\(5) & \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(5),
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X108_Y43_N0
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\display_inst|data_latched\(4) & \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|data_latched\(4),
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X109_Y43_N0
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X108_Y43_N26
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & 
-- !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X108_Y43_N22
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\display_inst|data_latched\(3) & \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(3),
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X109_Y43_N12
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \display_inst|data_latched\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \display_inst|data_latched\(2),
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X109_Y43_N4
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\display_inst|data_latched\(2) & \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|data_latched\(2),
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X109_Y43_N14
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # 
-- (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X109_Y43_N16
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datab => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X109_Y43_N18
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- ((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X109_Y43_N20
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ & 
-- !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\)) # (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X109_Y43_N22
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & 
-- ((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X109_Y43_N24
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X109_Y43_N26
\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X109_Y43_N2
\display_inst|bin2bcd_inst|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Mult0|mult_core|_~0_combout\ = (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- !\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \display_inst|bin2bcd_inst|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X110_Y43_N24
\display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0_combout\ = \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ 
-- (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X110_Y43_N10
\display_inst|bin2bcd_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add0~0_combout\ = (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\display_inst|data_latched\(2)) # (GND))) # 
-- (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\display_inst|data_latched\(2) $ (VCC)))
-- \display_inst|bin2bcd_inst|Add0~1\ = CARRY((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (\display_inst|data_latched\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \display_inst|data_latched\(2),
	datad => VCC,
	combout => \display_inst|bin2bcd_inst|Add0~0_combout\,
	cout => \display_inst|bin2bcd_inst|Add0~1\);

-- Location: LCCOMB_X110_Y43_N12
\display_inst|bin2bcd_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add0~2_combout\ = (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\display_inst|data_latched\(3) & (\display_inst|bin2bcd_inst|Add0~1\ & VCC)) # 
-- (!\display_inst|data_latched\(3) & (!\display_inst|bin2bcd_inst|Add0~1\)))) # (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\display_inst|data_latched\(3) & (!\display_inst|bin2bcd_inst|Add0~1\)) 
-- # (!\display_inst|data_latched\(3) & ((\display_inst|bin2bcd_inst|Add0~1\) # (GND)))))
-- \display_inst|bin2bcd_inst|Add0~3\ = CARRY((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\display_inst|data_latched\(3) & !\display_inst|bin2bcd_inst|Add0~1\)) # 
-- (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((!\display_inst|bin2bcd_inst|Add0~1\) # (!\display_inst|data_latched\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \display_inst|data_latched\(3),
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Add0~1\,
	combout => \display_inst|bin2bcd_inst|Add0~2_combout\,
	cout => \display_inst|bin2bcd_inst|Add0~3\);

-- Location: LCCOMB_X110_Y43_N14
\display_inst|bin2bcd_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add0~4_combout\ = (\display_inst|data_latched\(4) & ((GND) # (!\display_inst|bin2bcd_inst|Add0~3\))) # (!\display_inst|data_latched\(4) & (\display_inst|bin2bcd_inst|Add0~3\ $ (GND)))
-- \display_inst|bin2bcd_inst|Add0~5\ = CARRY((\display_inst|data_latched\(4)) # (!\display_inst|bin2bcd_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(4),
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Add0~3\,
	combout => \display_inst|bin2bcd_inst|Add0~4_combout\,
	cout => \display_inst|bin2bcd_inst|Add0~5\);

-- Location: LCCOMB_X110_Y43_N16
\display_inst|bin2bcd_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add0~6_combout\ = (\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\display_inst|data_latched\(5) & (\display_inst|bin2bcd_inst|Add0~5\ & VCC)) # 
-- (!\display_inst|data_latched\(5) & (!\display_inst|bin2bcd_inst|Add0~5\)))) # (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\display_inst|data_latched\(5) & (!\display_inst|bin2bcd_inst|Add0~5\)) 
-- # (!\display_inst|data_latched\(5) & ((\display_inst|bin2bcd_inst|Add0~5\) # (GND)))))
-- \display_inst|bin2bcd_inst|Add0~7\ = CARRY((\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\display_inst|data_latched\(5) & !\display_inst|bin2bcd_inst|Add0~5\)) # 
-- (!\display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((!\display_inst|bin2bcd_inst|Add0~5\) # (!\display_inst|data_latched\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \display_inst|data_latched\(5),
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Add0~5\,
	combout => \display_inst|bin2bcd_inst|Add0~6_combout\,
	cout => \display_inst|bin2bcd_inst|Add0~7\);

-- Location: LCCOMB_X110_Y43_N18
\display_inst|bin2bcd_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add0~8_combout\ = ((\display_inst|data_latched\(6) $ (\display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0_combout\ $ (\display_inst|bin2bcd_inst|Add0~7\)))) # (GND)
-- \display_inst|bin2bcd_inst|Add0~9\ = CARRY((\display_inst|data_latched\(6) & ((!\display_inst|bin2bcd_inst|Add0~7\) # (!\display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0_combout\))) # (!\display_inst|data_latched\(6) & 
-- (!\display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0_combout\ & !\display_inst|bin2bcd_inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(6),
	datab => \display_inst|bin2bcd_inst|Mult0|mult_core|romout[0][6]~0_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Add0~7\,
	combout => \display_inst|bin2bcd_inst|Add0~8_combout\,
	cout => \display_inst|bin2bcd_inst|Add0~9\);

-- Location: LCCOMB_X110_Y43_N20
\display_inst|bin2bcd_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add0~10_combout\ = \display_inst|data_latched\(7) $ (\display_inst|bin2bcd_inst|Add0~9\ $ (!\display_inst|bin2bcd_inst|Mult0|mult_core|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(7),
	datad => \display_inst|bin2bcd_inst|Mult0|mult_core|_~0_combout\,
	cin => \display_inst|bin2bcd_inst|Add0~9\,
	combout => \display_inst|bin2bcd_inst|Add0~10_combout\);

-- Location: LCCOMB_X110_Y43_N2
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \display_inst|bin2bcd_inst|Add0~6_combout\ $ (VCC)
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\display_inst|bin2bcd_inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|bin2bcd_inst|Add0~6_combout\,
	datad => VCC,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X110_Y43_N4
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\display_inst|bin2bcd_inst|Add0~8_combout\ & (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\display_inst|bin2bcd_inst|Add0~8_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\display_inst|bin2bcd_inst|Add0~8_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|bin2bcd_inst|Add0~8_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X110_Y43_N6
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\display_inst|bin2bcd_inst|Add0~10_combout\ & (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\display_inst|bin2bcd_inst|Add0~10_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\display_inst|bin2bcd_inst|Add0~10_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|bin2bcd_inst|Add0~10_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X110_Y43_N8
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X110_Y43_N26
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \display_inst|bin2bcd_inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \display_inst|bin2bcd_inst|Add0~6_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X111_Y43_N24
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X111_Y43_N26
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (\display_inst|bin2bcd_inst|Add0~4_combout\ & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Add0~4_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X111_Y43_N0
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (\display_inst|bin2bcd_inst|Add0~4_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Add0~4_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X111_Y43_N10
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X111_Y43_N12
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & 
-- (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X110_Y43_N0
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X110_Y43_N30
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \display_inst|bin2bcd_inst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \display_inst|bin2bcd_inst|Add0~10_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X110_Y43_N28
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X110_Y43_N22
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \display_inst|bin2bcd_inst|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \display_inst|bin2bcd_inst|Add0~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X111_Y43_N14
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X111_Y43_N16
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X111_Y43_N18
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y43_N26
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~63_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\display_inst|bin2bcd_inst|Add0~8_combout\)) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \display_inst|bin2bcd_inst|Add0~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~63_combout\);

-- Location: LCCOMB_X111_Y43_N6
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X111_Y43_N8
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X112_Y43_N28
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\display_inst|bin2bcd_inst|Add0~6_combout\))) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \display_inst|bin2bcd_inst|Add0~6_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\);

-- Location: LCCOMB_X112_Y43_N10
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X112_Y43_N24
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\display_inst|bin2bcd_inst|Add0~4_combout\ & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Add0~4_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X112_Y43_N12
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (\display_inst|bin2bcd_inst|Add0~2_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Add0~2_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X111_Y43_N28
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\display_inst|bin2bcd_inst|Add0~2_combout\ & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Add0~2_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X112_Y43_N14
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X112_Y43_N16
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & 
-- (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X112_Y43_N18
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\)))))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X112_Y43_N20
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~63_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~63_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X112_Y43_N22
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X112_Y43_N0
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~61_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\) # ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[22]~64_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~61_combout\);

-- Location: LCCOMB_X112_Y43_N6
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X112_Y43_N8
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X112_Y43_N30
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\display_inst|bin2bcd_inst|Add0~4_combout\))) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \display_inst|bin2bcd_inst|Add0~4_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\);

-- Location: LCCOMB_X114_Y43_N20
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X113_Y43_N4
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\display_inst|bin2bcd_inst|Add0~2_combout\ & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Add0~2_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X112_Y43_N2
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \display_inst|bin2bcd_inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Add0~0_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X112_Y43_N4
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \display_inst|bin2bcd_inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Add0~0_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X113_Y43_N22
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X113_Y43_N24
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & 
-- (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X113_Y43_N26
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- (((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\)))))
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X113_Y43_N28
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~61_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~61_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X113_Y43_N30
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X113_Y43_N6
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X113_Y43_N8
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~62_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\) # ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[27]~65_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~62_combout\);

-- Location: LCCOMB_X113_Y43_N10
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~66_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\display_inst|bin2bcd_inst|Add0~2_combout\))) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \display_inst|bin2bcd_inst|Add0~2_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~66_combout\);

-- Location: LCCOMB_X113_Y43_N0
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X114_Y43_N2
\display_inst|bin2bcd_inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add2~0_combout\ = (\display_inst|bin2bcd_inst|Add0~0_combout\ & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|bin2bcd_inst|Add0~0_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Add2~0_combout\);

-- Location: LCCOMB_X113_Y43_N2
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X114_Y43_N4
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\display_inst|data_latched\(1) & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(1),
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X114_Y43_N26
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (\display_inst|data_latched\(1) & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(1),
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X113_Y43_N12
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X113_Y43_N14
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\display_inst|bin2bcd_inst|Add2~0_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Add2~0_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X113_Y43_N16
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~66_combout\) # (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~66_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X113_Y43_N18
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~62_combout\ & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|StageOut[33]~62_combout\,
	datad => VCC,
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X113_Y43_N20
\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X114_Y43_N8
\display_inst|bin2bcd_inst|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add2~1_combout\ = \display_inst|data_latched\(1) $ (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_inst|data_latched\(1),
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Add2~1_combout\);

-- Location: LCCOMB_X114_Y43_N14
\display_inst|bin2bcd_inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add2~2_combout\ = \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\display_inst|bin2bcd_inst|Add0~0_combout\ $ (((\display_inst|data_latched\(1)) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(1),
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Add0~0_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Add2~2_combout\);

-- Location: LCCOMB_X114_Y43_N24
\display_inst|bin2bcd_inst|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add2~3_combout\ = (\display_inst|bin2bcd_inst|Add0~0_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\display_inst|data_latched\(1)) # 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # (!\display_inst|bin2bcd_inst|Add0~0_combout\ & ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\display_inst|data_latched\(1) & !\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Add0~0_combout\,
	datab => \display_inst|data_latched\(1),
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display_inst|bin2bcd_inst|Add2~3_combout\);

-- Location: LCCOMB_X114_Y43_N18
\display_inst|bin2bcd_inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|bin2bcd_inst|Add2~4_combout\ = \display_inst|bin2bcd_inst|Add0~2_combout\ $ (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\display_inst|bin2bcd_inst|Add2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Add0~2_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~3_combout\,
	combout => \display_inst|bin2bcd_inst|Add2~4_combout\);

-- Location: LCCOMB_X114_Y43_N12
\display_inst|rom_7seg_ones|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_ones|Mux6~0_combout\ = (\display_inst|bin2bcd_inst|Add2~2_combout\ & (\display_inst|bin2bcd_inst|Add2~1_combout\ & (\display_inst|data_latched\(0) $ (\display_inst|bin2bcd_inst|Add2~4_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Add2~2_combout\ & (\display_inst|data_latched\(0) & (\display_inst|bin2bcd_inst|Add2~1_combout\ $ (!\display_inst|bin2bcd_inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(0),
	datab => \display_inst|bin2bcd_inst|Add2~1_combout\,
	datac => \display_inst|bin2bcd_inst|Add2~2_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~4_combout\,
	combout => \display_inst|rom_7seg_ones|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y43_N30
\display_inst|rom_7seg_ones|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_ones|Mux5~0_combout\ = (\display_inst|bin2bcd_inst|Add2~1_combout\ & (\display_inst|bin2bcd_inst|Add2~2_combout\ & (\display_inst|data_latched\(0) $ (!\display_inst|bin2bcd_inst|Add2~4_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Add2~1_combout\ & ((\display_inst|data_latched\(0) & ((!\display_inst|bin2bcd_inst|Add2~4_combout\))) # (!\display_inst|data_latched\(0) & (\display_inst|bin2bcd_inst|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(0),
	datab => \display_inst|bin2bcd_inst|Add2~1_combout\,
	datac => \display_inst|bin2bcd_inst|Add2~2_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~4_combout\,
	combout => \display_inst|rom_7seg_ones|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y43_N28
\display_inst|rom_7seg_ones|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_ones|Mux4~0_combout\ = (\display_inst|bin2bcd_inst|Add2~2_combout\ & (!\display_inst|bin2bcd_inst|Add2~4_combout\ & ((!\display_inst|bin2bcd_inst|Add2~1_combout\) # (!\display_inst|data_latched\(0))))) # 
-- (!\display_inst|bin2bcd_inst|Add2~2_combout\ & (!\display_inst|data_latched\(0) & (!\display_inst|bin2bcd_inst|Add2~1_combout\ & \display_inst|bin2bcd_inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(0),
	datab => \display_inst|bin2bcd_inst|Add2~1_combout\,
	datac => \display_inst|bin2bcd_inst|Add2~2_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~4_combout\,
	combout => \display_inst|rom_7seg_ones|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y43_N22
\display_inst|rom_7seg_ones|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_ones|Mux3~0_combout\ = (\display_inst|bin2bcd_inst|Add2~1_combout\ & (\display_inst|bin2bcd_inst|Add2~4_combout\ & (\display_inst|data_latched\(0) $ (\display_inst|bin2bcd_inst|Add2~2_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Add2~1_combout\ & ((\display_inst|data_latched\(0) & (\display_inst|bin2bcd_inst|Add2~2_combout\)) # (!\display_inst|data_latched\(0) & (!\display_inst|bin2bcd_inst|Add2~2_combout\ & 
-- !\display_inst|bin2bcd_inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(0),
	datab => \display_inst|bin2bcd_inst|Add2~1_combout\,
	datac => \display_inst|bin2bcd_inst|Add2~2_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~4_combout\,
	combout => \display_inst|rom_7seg_ones|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y43_N16
\display_inst|rom_7seg_ones|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_ones|Mux2~0_combout\ = (\display_inst|bin2bcd_inst|Add2~1_combout\ & ((\display_inst|bin2bcd_inst|Add2~2_combout\ & ((\display_inst|bin2bcd_inst|Add2~4_combout\))) # (!\display_inst|bin2bcd_inst|Add2~2_combout\ & 
-- (\display_inst|data_latched\(0))))) # (!\display_inst|bin2bcd_inst|Add2~1_combout\ & (\display_inst|data_latched\(0) & ((\display_inst|bin2bcd_inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(0),
	datab => \display_inst|bin2bcd_inst|Add2~1_combout\,
	datac => \display_inst|bin2bcd_inst|Add2~2_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~4_combout\,
	combout => \display_inst|rom_7seg_ones|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y43_N10
\display_inst|rom_7seg_ones|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_ones|Mux1~0_combout\ = (\display_inst|data_latched\(0) & (\display_inst|bin2bcd_inst|Add2~4_combout\ $ (((\display_inst|bin2bcd_inst|Add2~1_combout\ & \display_inst|bin2bcd_inst|Add2~2_combout\))))) # 
-- (!\display_inst|data_latched\(0) & (!\display_inst|bin2bcd_inst|Add2~1_combout\ & (!\display_inst|bin2bcd_inst|Add2~2_combout\ & \display_inst|bin2bcd_inst|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(0),
	datab => \display_inst|bin2bcd_inst|Add2~1_combout\,
	datac => \display_inst|bin2bcd_inst|Add2~2_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~4_combout\,
	combout => \display_inst|rom_7seg_ones|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y43_N0
\display_inst|rom_7seg_ones|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_ones|Mux0~0_combout\ = (\display_inst|data_latched\(0) & ((\display_inst|bin2bcd_inst|Add2~1_combout\ $ (!\display_inst|bin2bcd_inst|Add2~2_combout\)) # (!\display_inst|bin2bcd_inst|Add2~4_combout\))) # 
-- (!\display_inst|data_latched\(0) & ((\display_inst|bin2bcd_inst|Add2~2_combout\ $ (!\display_inst|bin2bcd_inst|Add2~4_combout\)) # (!\display_inst|bin2bcd_inst|Add2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|data_latched\(0),
	datab => \display_inst|bin2bcd_inst|Add2~1_combout\,
	datac => \display_inst|bin2bcd_inst|Add2~2_combout\,
	datad => \display_inst|bin2bcd_inst|Add2~4_combout\,
	combout => \display_inst|rom_7seg_ones|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y41_N4
\display_inst|rom_7seg_tens|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_tens|Mux6~0_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display_inst|rom_7seg_tens|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y30_N4
\display_inst|rom_7seg_tens|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_tens|Mux5~0_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display_inst|rom_7seg_tens|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y25_N4
\display_inst|rom_7seg_tens|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_tens|Mux4~0_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display_inst|rom_7seg_tens|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y30_N2
\display_inst|rom_7seg_tens|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_tens|Mux3~0_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \display_inst|rom_7seg_tens|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y20_N4
\display_inst|rom_7seg_tens|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_tens|Mux2~0_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display_inst|rom_7seg_tens|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\display_inst|rom_7seg_tens|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_tens|Mux1~0_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display_inst|rom_7seg_tens|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y28_N4
\display_inst|rom_7seg_tens|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_inst|rom_7seg_tens|Mux0~0_combout\ = (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \display_inst|bin2bcd_inst|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \display_inst|rom_7seg_tens|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y43_N18
\rom_rx_lo|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_lo|Mux6~0_combout\ = (\receiver_inst|dataUt\(3) & (\receiver_inst|dataUt\(0) & (\receiver_inst|dataUt\(1) $ (\receiver_inst|dataUt\(2))))) # (!\receiver_inst|dataUt\(3) & (!\receiver_inst|dataUt\(1) & (\receiver_inst|dataUt\(0) $ 
-- (\receiver_inst|dataUt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(0),
	datab => \receiver_inst|dataUt\(3),
	datac => \receiver_inst|dataUt\(1),
	datad => \receiver_inst|dataUt\(2),
	combout => \rom_rx_lo|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y8_N28
\HEX4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = (\rom_rx_lo|Mux6~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_rx_lo|Mux6~0_combout\,
	datac => \SW[17]~input_o\,
	combout => \HEX4~0_combout\);

-- Location: LCCOMB_X111_Y43_N2
\rom_rx_lo|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_lo|Mux5~0_combout\ = (\receiver_inst|dataUt\(3) & ((\receiver_inst|dataUt\(0) & ((\receiver_inst|dataUt\(1)))) # (!\receiver_inst|dataUt\(0) & (\receiver_inst|dataUt\(2))))) # (!\receiver_inst|dataUt\(3) & (\receiver_inst|dataUt\(2) & 
-- (\receiver_inst|dataUt\(0) $ (\receiver_inst|dataUt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(0),
	datab => \receiver_inst|dataUt\(2),
	datac => \receiver_inst|dataUt\(3),
	datad => \receiver_inst|dataUt\(1),
	combout => \rom_rx_lo|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y43_N4
\HEX4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~1_combout\ = (\rom_rx_lo|Mux5~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_rx_lo|Mux5~0_combout\,
	combout => \HEX4~1_combout\);

-- Location: LCCOMB_X108_Y43_N2
\rom_rx_lo|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_lo|Mux4~0_combout\ = (\receiver_inst|dataUt\(3) & (\receiver_inst|dataUt\(2) & ((\receiver_inst|dataUt\(1)) # (!\receiver_inst|dataUt\(0))))) # (!\receiver_inst|dataUt\(3) & (!\receiver_inst|dataUt\(0) & (\receiver_inst|dataUt\(1) & 
-- !\receiver_inst|dataUt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(0),
	datab => \receiver_inst|dataUt\(1),
	datac => \receiver_inst|dataUt\(3),
	datad => \receiver_inst|dataUt\(2),
	combout => \rom_rx_lo|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y8_N10
\HEX4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~2_combout\ = (\rom_rx_lo|Mux4~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_rx_lo|Mux4~0_combout\,
	combout => \HEX4~2_combout\);

-- Location: LCCOMB_X108_Y43_N30
\rom_rx_lo|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_lo|Mux3~0_combout\ = (\receiver_inst|dataUt\(1) & ((\receiver_inst|dataUt\(0) & ((\receiver_inst|dataUt\(2)))) # (!\receiver_inst|dataUt\(0) & (\receiver_inst|dataUt\(3) & !\receiver_inst|dataUt\(2))))) # (!\receiver_inst|dataUt\(1) & 
-- (!\receiver_inst|dataUt\(3) & (\receiver_inst|dataUt\(0) $ (\receiver_inst|dataUt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(0),
	datab => \receiver_inst|dataUt\(3),
	datac => \receiver_inst|dataUt\(1),
	datad => \receiver_inst|dataUt\(2),
	combout => \rom_rx_lo|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y23_N26
\HEX4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~3_combout\ = (\rom_rx_lo|Mux3~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_rx_lo|Mux3~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \HEX4~3_combout\);

-- Location: LCCOMB_X111_Y43_N30
\rom_rx_lo|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_lo|Mux2~0_combout\ = (\receiver_inst|dataUt\(1) & (\receiver_inst|dataUt\(0) & ((!\receiver_inst|dataUt\(3))))) # (!\receiver_inst|dataUt\(1) & ((\receiver_inst|dataUt\(2) & ((!\receiver_inst|dataUt\(3)))) # (!\receiver_inst|dataUt\(2) & 
-- (\receiver_inst|dataUt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(0),
	datab => \receiver_inst|dataUt\(2),
	datac => \receiver_inst|dataUt\(3),
	datad => \receiver_inst|dataUt\(1),
	combout => \rom_rx_lo|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y43_N20
\HEX4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~4_combout\ = (\rom_rx_lo|Mux2~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_rx_lo|Mux2~0_combout\,
	datac => \SW[17]~input_o\,
	combout => \HEX4~4_combout\);

-- Location: LCCOMB_X108_Y43_N4
\rom_rx_lo|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_lo|Mux1~0_combout\ = (\receiver_inst|dataUt\(0) & (\receiver_inst|dataUt\(3) $ (((\receiver_inst|dataUt\(1)) # (!\receiver_inst|dataUt\(2)))))) # (!\receiver_inst|dataUt\(0) & (\receiver_inst|dataUt\(1) & (!\receiver_inst|dataUt\(3) & 
-- !\receiver_inst|dataUt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(0),
	datab => \receiver_inst|dataUt\(1),
	datac => \receiver_inst|dataUt\(3),
	datad => \receiver_inst|dataUt\(2),
	combout => \rom_rx_lo|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y8_N16
\HEX4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~5_combout\ = (\rom_rx_lo|Mux1~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \rom_rx_lo|Mux1~0_combout\,
	combout => \HEX4~5_combout\);

-- Location: LCCOMB_X108_Y43_N20
\rom_rx_lo|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_lo|Mux0~0_combout\ = (\receiver_inst|dataUt\(0) & ((\receiver_inst|dataUt\(3)) # (\receiver_inst|dataUt\(2) $ (\receiver_inst|dataUt\(1))))) # (!\receiver_inst|dataUt\(0) & ((\receiver_inst|dataUt\(1)) # (\receiver_inst|dataUt\(3) $ 
-- (\receiver_inst|dataUt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(0),
	datab => \receiver_inst|dataUt\(3),
	datac => \receiver_inst|dataUt\(2),
	datad => \receiver_inst|dataUt\(1),
	combout => \rom_rx_lo|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y8_N22
\HEX4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX4~6_combout\ = (!\SW[17]~input_o\) # (!\rom_rx_lo|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_rx_lo|Mux0~0_combout\,
	datac => \SW[17]~input_o\,
	combout => \HEX4~6_combout\);

-- Location: LCCOMB_X101_Y23_N2
\rom_rx_hi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_hi|Mux6~0_combout\ = (\receiver_inst|dataUt\(6) & (!\receiver_inst|dataUt\(5) & (\receiver_inst|dataUt\(4) $ (!\receiver_inst|dataUt\(7))))) # (!\receiver_inst|dataUt\(6) & (\receiver_inst|dataUt\(4) & (\receiver_inst|dataUt\(5) $ 
-- (!\receiver_inst|dataUt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(5),
	datab => \receiver_inst|dataUt\(4),
	datac => \receiver_inst|dataUt\(6),
	datad => \receiver_inst|dataUt\(7),
	combout => \rom_rx_hi|Mux6~0_combout\);

-- Location: LCCOMB_X101_Y23_N0
\HEX5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = (\rom_rx_hi|Mux6~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_rx_hi|Mux6~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \HEX5~0_combout\);

-- Location: LCCOMB_X101_Y23_N22
\rom_rx_hi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_hi|Mux5~0_combout\ = (\receiver_inst|dataUt\(5) & ((\receiver_inst|dataUt\(4) & ((\receiver_inst|dataUt\(7)))) # (!\receiver_inst|dataUt\(4) & (\receiver_inst|dataUt\(6))))) # (!\receiver_inst|dataUt\(5) & (\receiver_inst|dataUt\(6) & 
-- (\receiver_inst|dataUt\(4) $ (\receiver_inst|dataUt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(5),
	datab => \receiver_inst|dataUt\(4),
	datac => \receiver_inst|dataUt\(6),
	datad => \receiver_inst|dataUt\(7),
	combout => \rom_rx_hi|Mux5~0_combout\);

-- Location: LCCOMB_X101_Y23_N12
\HEX5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~1_combout\ = (\rom_rx_hi|Mux5~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_rx_hi|Mux5~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \HEX5~1_combout\);

-- Location: LCCOMB_X101_Y23_N6
\rom_rx_hi|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_hi|Mux4~0_combout\ = (\receiver_inst|dataUt\(6) & (\receiver_inst|dataUt\(7) & ((\receiver_inst|dataUt\(5)) # (!\receiver_inst|dataUt\(4))))) # (!\receiver_inst|dataUt\(6) & (\receiver_inst|dataUt\(5) & (!\receiver_inst|dataUt\(4) & 
-- !\receiver_inst|dataUt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(5),
	datab => \receiver_inst|dataUt\(4),
	datac => \receiver_inst|dataUt\(6),
	datad => \receiver_inst|dataUt\(7),
	combout => \rom_rx_hi|Mux4~0_combout\);

-- Location: LCCOMB_X101_Y23_N24
\HEX5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~2_combout\ = (\rom_rx_hi|Mux4~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \rom_rx_hi|Mux4~0_combout\,
	combout => \HEX5~2_combout\);

-- Location: LCCOMB_X101_Y23_N16
\rom_rx_hi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_hi|Mux3~0_combout\ = (\receiver_inst|dataUt\(5) & ((\receiver_inst|dataUt\(6) & (\receiver_inst|dataUt\(4))) # (!\receiver_inst|dataUt\(6) & (!\receiver_inst|dataUt\(4) & \receiver_inst|dataUt\(7))))) # (!\receiver_inst|dataUt\(5) & 
-- (!\receiver_inst|dataUt\(7) & (\receiver_inst|dataUt\(6) $ (\receiver_inst|dataUt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(6),
	datab => \receiver_inst|dataUt\(4),
	datac => \receiver_inst|dataUt\(5),
	datad => \receiver_inst|dataUt\(7),
	combout => \rom_rx_hi|Mux3~0_combout\);

-- Location: LCCOMB_X101_Y23_N30
\HEX5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~3_combout\ = (\rom_rx_hi|Mux3~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_rx_hi|Mux3~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \HEX5~3_combout\);

-- Location: LCCOMB_X101_Y23_N28
\rom_rx_hi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_hi|Mux2~0_combout\ = (\receiver_inst|dataUt\(5) & (\receiver_inst|dataUt\(4) & ((!\receiver_inst|dataUt\(7))))) # (!\receiver_inst|dataUt\(5) & ((\receiver_inst|dataUt\(6) & ((!\receiver_inst|dataUt\(7)))) # (!\receiver_inst|dataUt\(6) & 
-- (\receiver_inst|dataUt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(5),
	datab => \receiver_inst|dataUt\(4),
	datac => \receiver_inst|dataUt\(6),
	datad => \receiver_inst|dataUt\(7),
	combout => \rom_rx_hi|Mux2~0_combout\);

-- Location: LCCOMB_X101_Y23_N10
\HEX5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~4_combout\ = (\rom_rx_hi|Mux2~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \rom_rx_hi|Mux2~0_combout\,
	combout => \HEX5~4_combout\);

-- Location: LCCOMB_X101_Y23_N8
\rom_rx_hi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_hi|Mux1~0_combout\ = (\receiver_inst|dataUt\(5) & (!\receiver_inst|dataUt\(7) & ((\receiver_inst|dataUt\(4)) # (!\receiver_inst|dataUt\(6))))) # (!\receiver_inst|dataUt\(5) & (\receiver_inst|dataUt\(4) & (\receiver_inst|dataUt\(6) $ 
-- (!\receiver_inst|dataUt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(5),
	datab => \receiver_inst|dataUt\(6),
	datac => \receiver_inst|dataUt\(7),
	datad => \receiver_inst|dataUt\(4),
	combout => \rom_rx_hi|Mux1~0_combout\);

-- Location: LCCOMB_X101_Y23_N4
\HEX5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~5_combout\ = (\rom_rx_hi|Mux1~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \rom_rx_hi|Mux1~0_combout\,
	combout => \HEX5~5_combout\);

-- Location: LCCOMB_X101_Y23_N18
\rom_rx_hi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_rx_hi|Mux0~0_combout\ = (\receiver_inst|dataUt\(4) & ((\receiver_inst|dataUt\(7)) # (\receiver_inst|dataUt\(5) $ (\receiver_inst|dataUt\(6))))) # (!\receiver_inst|dataUt\(4) & ((\receiver_inst|dataUt\(5)) # (\receiver_inst|dataUt\(7) $ 
-- (\receiver_inst|dataUt\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_inst|dataUt\(5),
	datab => \receiver_inst|dataUt\(7),
	datac => \receiver_inst|dataUt\(6),
	datad => \receiver_inst|dataUt\(4),
	combout => \rom_rx_hi|Mux0~0_combout\);

-- Location: LCCOMB_X101_Y23_N14
\HEX5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX5~6_combout\ = (!\rom_rx_hi|Mux0~0_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \rom_rx_hi|Mux0~0_combout\,
	combout => \HEX5~6_combout\);

-- Location: LCCOMB_X108_Y10_N28
\rom_tx_lo|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_lo|Mux6~0_combout\ = (\data_mux|Mux4~0_combout\ & (\data_mux|Mux7~0_combout\ & (\data_mux|Mux5~0_combout\ $ (\data_mux|Mux6~0_combout\)))) # (!\data_mux|Mux4~0_combout\ & (!\data_mux|Mux6~0_combout\ & (\data_mux|Mux5~0_combout\ $ 
-- (\data_mux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux4~0_combout\,
	datab => \data_mux|Mux5~0_combout\,
	datac => \data_mux|Mux7~0_combout\,
	datad => \data_mux|Mux6~0_combout\,
	combout => \rom_tx_lo|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y8_N8
\HEX6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~0_combout\ = (\SW[17]~input_o\) # (\rom_tx_lo|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_lo|Mux6~0_combout\,
	combout => \HEX6~0_combout\);

-- Location: LCCOMB_X108_Y10_N2
\rom_tx_lo|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_lo|Mux5~0_combout\ = (\data_mux|Mux4~0_combout\ & ((\data_mux|Mux7~0_combout\ & ((\data_mux|Mux6~0_combout\))) # (!\data_mux|Mux7~0_combout\ & (\data_mux|Mux5~0_combout\)))) # (!\data_mux|Mux4~0_combout\ & (\data_mux|Mux5~0_combout\ & 
-- (\data_mux|Mux7~0_combout\ $ (\data_mux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux4~0_combout\,
	datab => \data_mux|Mux5~0_combout\,
	datac => \data_mux|Mux7~0_combout\,
	datad => \data_mux|Mux6~0_combout\,
	combout => \rom_tx_lo|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y8_N2
\HEX6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~1_combout\ = (\SW[17]~input_o\) # (\rom_tx_lo|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_lo|Mux5~0_combout\,
	combout => \HEX6~1_combout\);

-- Location: LCCOMB_X108_Y10_N16
\rom_tx_lo|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_lo|Mux4~0_combout\ = (\data_mux|Mux4~0_combout\ & (\data_mux|Mux5~0_combout\ & ((\data_mux|Mux6~0_combout\) # (!\data_mux|Mux7~0_combout\)))) # (!\data_mux|Mux4~0_combout\ & (!\data_mux|Mux5~0_combout\ & (!\data_mux|Mux7~0_combout\ & 
-- \data_mux|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux4~0_combout\,
	datab => \data_mux|Mux5~0_combout\,
	datac => \data_mux|Mux7~0_combout\,
	datad => \data_mux|Mux6~0_combout\,
	combout => \rom_tx_lo|Mux4~0_combout\);

-- Location: LCCOMB_X103_Y8_N20
\HEX6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~2_combout\ = (\SW[17]~input_o\) # (\rom_tx_lo|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_lo|Mux4~0_combout\,
	combout => \HEX6~2_combout\);

-- Location: LCCOMB_X108_Y10_N6
\rom_tx_lo|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_lo|Mux3~0_combout\ = (\data_mux|Mux6~0_combout\ & ((\data_mux|Mux7~0_combout\ & ((\data_mux|Mux5~0_combout\))) # (!\data_mux|Mux7~0_combout\ & (\data_mux|Mux4~0_combout\ & !\data_mux|Mux5~0_combout\)))) # (!\data_mux|Mux6~0_combout\ & 
-- (!\data_mux|Mux4~0_combout\ & (\data_mux|Mux7~0_combout\ $ (\data_mux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux6~0_combout\,
	datab => \data_mux|Mux7~0_combout\,
	datac => \data_mux|Mux4~0_combout\,
	datad => \data_mux|Mux5~0_combout\,
	combout => \rom_tx_lo|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y10_N12
\HEX6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~3_combout\ = (\SW[17]~input_o\) # (\rom_tx_lo|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \rom_tx_lo|Mux3~0_combout\,
	combout => \HEX6~3_combout\);

-- Location: LCCOMB_X108_Y10_N24
\rom_tx_lo|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_lo|Mux2~0_combout\ = (\data_mux|Mux6~0_combout\ & (!\data_mux|Mux4~0_combout\ & ((\data_mux|Mux7~0_combout\)))) # (!\data_mux|Mux6~0_combout\ & ((\data_mux|Mux5~0_combout\ & (!\data_mux|Mux4~0_combout\)) # (!\data_mux|Mux5~0_combout\ & 
-- ((\data_mux|Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux4~0_combout\,
	datab => \data_mux|Mux5~0_combout\,
	datac => \data_mux|Mux7~0_combout\,
	datad => \data_mux|Mux6~0_combout\,
	combout => \rom_tx_lo|Mux2~0_combout\);

-- Location: LCCOMB_X103_Y8_N18
\HEX6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~4_combout\ = (\SW[17]~input_o\) # (\rom_tx_lo|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \rom_tx_lo|Mux2~0_combout\,
	combout => \HEX6~4_combout\);

-- Location: LCCOMB_X108_Y10_N10
\rom_tx_lo|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_lo|Mux1~0_combout\ = (\data_mux|Mux6~0_combout\ & (!\data_mux|Mux4~0_combout\ & ((\data_mux|Mux7~0_combout\) # (!\data_mux|Mux5~0_combout\)))) # (!\data_mux|Mux6~0_combout\ & (\data_mux|Mux7~0_combout\ & (\data_mux|Mux4~0_combout\ $ 
-- (!\data_mux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux6~0_combout\,
	datab => \data_mux|Mux7~0_combout\,
	datac => \data_mux|Mux4~0_combout\,
	datad => \data_mux|Mux5~0_combout\,
	combout => \rom_tx_lo|Mux1~0_combout\);

-- Location: LCCOMB_X103_Y8_N12
\HEX6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~5_combout\ = (\SW[17]~input_o\) # (\rom_tx_lo|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_lo|Mux1~0_combout\,
	combout => \HEX6~5_combout\);

-- Location: LCCOMB_X108_Y10_N4
\rom_tx_lo|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_lo|Mux0~0_combout\ = (\data_mux|Mux7~0_combout\ & ((\data_mux|Mux4~0_combout\) # (\data_mux|Mux5~0_combout\ $ (\data_mux|Mux6~0_combout\)))) # (!\data_mux|Mux7~0_combout\ & ((\data_mux|Mux6~0_combout\) # (\data_mux|Mux4~0_combout\ $ 
-- (\data_mux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux4~0_combout\,
	datab => \data_mux|Mux5~0_combout\,
	datac => \data_mux|Mux7~0_combout\,
	datad => \data_mux|Mux6~0_combout\,
	combout => \rom_tx_lo|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y8_N26
\HEX6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX6~6_combout\ = (\SW[17]~input_o\) # (!\rom_tx_lo|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_lo|Mux0~0_combout\,
	combout => \HEX6~6_combout\);

-- Location: LCCOMB_X107_Y10_N26
\rom_tx_hi|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_hi|Mux6~0_combout\ = (\data_mux|Mux1~0_combout\ & (!\data_mux|Mux2~0_combout\ & (\data_mux|Mux3~0_combout\ $ (!\data_mux|Mux0~0_combout\)))) # (!\data_mux|Mux1~0_combout\ & (\data_mux|Mux3~0_combout\ & (\data_mux|Mux2~0_combout\ $ 
-- (!\data_mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux1~0_combout\,
	datab => \data_mux|Mux3~0_combout\,
	datac => \data_mux|Mux2~0_combout\,
	datad => \data_mux|Mux0~0_combout\,
	combout => \rom_tx_hi|Mux6~0_combout\);

-- Location: LCCOMB_X103_Y8_N24
\HEX7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~0_combout\ = (\SW[17]~input_o\) # (\rom_tx_hi|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_hi|Mux6~0_combout\,
	combout => \HEX7~0_combout\);

-- Location: LCCOMB_X107_Y10_N24
\rom_tx_hi|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_hi|Mux5~0_combout\ = (\data_mux|Mux2~0_combout\ & ((\data_mux|Mux3~0_combout\ & ((\data_mux|Mux0~0_combout\))) # (!\data_mux|Mux3~0_combout\ & (\data_mux|Mux1~0_combout\)))) # (!\data_mux|Mux2~0_combout\ & (\data_mux|Mux1~0_combout\ & 
-- (\data_mux|Mux3~0_combout\ $ (\data_mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux1~0_combout\,
	datab => \data_mux|Mux3~0_combout\,
	datac => \data_mux|Mux2~0_combout\,
	datad => \data_mux|Mux0~0_combout\,
	combout => \rom_tx_hi|Mux5~0_combout\);

-- Location: LCCOMB_X103_Y8_N30
\HEX7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~1_combout\ = (\SW[17]~input_o\) # (\rom_tx_hi|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_hi|Mux5~0_combout\,
	combout => \HEX7~1_combout\);

-- Location: LCCOMB_X107_Y10_N10
\rom_tx_hi|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_hi|Mux4~0_combout\ = (\data_mux|Mux1~0_combout\ & (\data_mux|Mux0~0_combout\ & ((\data_mux|Mux2~0_combout\) # (!\data_mux|Mux3~0_combout\)))) # (!\data_mux|Mux1~0_combout\ & (!\data_mux|Mux3~0_combout\ & (\data_mux|Mux2~0_combout\ & 
-- !\data_mux|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux1~0_combout\,
	datab => \data_mux|Mux3~0_combout\,
	datac => \data_mux|Mux2~0_combout\,
	datad => \data_mux|Mux0~0_combout\,
	combout => \rom_tx_hi|Mux4~0_combout\);

-- Location: LCCOMB_X107_Y10_N0
\HEX7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~2_combout\ = (\SW[17]~input_o\) # (\rom_tx_hi|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \rom_tx_hi|Mux4~0_combout\,
	combout => \HEX7~2_combout\);

-- Location: LCCOMB_X107_Y10_N18
\rom_tx_hi|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_hi|Mux3~0_combout\ = (\data_mux|Mux2~0_combout\ & ((\data_mux|Mux1~0_combout\ & (\data_mux|Mux3~0_combout\)) # (!\data_mux|Mux1~0_combout\ & (!\data_mux|Mux3~0_combout\ & \data_mux|Mux0~0_combout\)))) # (!\data_mux|Mux2~0_combout\ & 
-- (!\data_mux|Mux0~0_combout\ & (\data_mux|Mux1~0_combout\ $ (\data_mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux1~0_combout\,
	datab => \data_mux|Mux3~0_combout\,
	datac => \data_mux|Mux2~0_combout\,
	datad => \data_mux|Mux0~0_combout\,
	combout => \rom_tx_hi|Mux3~0_combout\);

-- Location: LCCOMB_X107_Y10_N28
\HEX7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~3_combout\ = (\SW[17]~input_o\) # (\rom_tx_hi|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \rom_tx_hi|Mux3~0_combout\,
	combout => \HEX7~3_combout\);

-- Location: LCCOMB_X107_Y10_N14
\rom_tx_hi|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_hi|Mux2~0_combout\ = (\data_mux|Mux2~0_combout\ & (((\data_mux|Mux3~0_combout\ & !\data_mux|Mux0~0_combout\)))) # (!\data_mux|Mux2~0_combout\ & ((\data_mux|Mux1~0_combout\ & ((!\data_mux|Mux0~0_combout\))) # (!\data_mux|Mux1~0_combout\ & 
-- (\data_mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux1~0_combout\,
	datab => \data_mux|Mux3~0_combout\,
	datac => \data_mux|Mux2~0_combout\,
	datad => \data_mux|Mux0~0_combout\,
	combout => \rom_tx_hi|Mux2~0_combout\);

-- Location: LCCOMB_X103_Y8_N4
\HEX7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~4_combout\ = (\SW[17]~input_o\) # (\rom_tx_hi|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_hi|Mux2~0_combout\,
	combout => \HEX7~4_combout\);

-- Location: LCCOMB_X107_Y10_N20
\rom_tx_hi|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_hi|Mux1~0_combout\ = (\data_mux|Mux1~0_combout\ & (\data_mux|Mux3~0_combout\ & (\data_mux|Mux2~0_combout\ $ (\data_mux|Mux0~0_combout\)))) # (!\data_mux|Mux1~0_combout\ & (!\data_mux|Mux0~0_combout\ & ((\data_mux|Mux3~0_combout\) # 
-- (\data_mux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux1~0_combout\,
	datab => \data_mux|Mux3~0_combout\,
	datac => \data_mux|Mux2~0_combout\,
	datad => \data_mux|Mux0~0_combout\,
	combout => \rom_tx_hi|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y10_N30
\HEX7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~5_combout\ = (\SW[17]~input_o\) # (\rom_tx_hi|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datad => \rom_tx_hi|Mux1~0_combout\,
	combout => \HEX7~5_combout\);

-- Location: LCCOMB_X107_Y10_N8
\rom_tx_hi|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_tx_hi|Mux0~0_combout\ = (\data_mux|Mux3~0_combout\ & ((\data_mux|Mux0~0_combout\) # (\data_mux|Mux1~0_combout\ $ (\data_mux|Mux2~0_combout\)))) # (!\data_mux|Mux3~0_combout\ & ((\data_mux|Mux2~0_combout\) # (\data_mux|Mux1~0_combout\ $ 
-- (\data_mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_mux|Mux1~0_combout\,
	datab => \data_mux|Mux3~0_combout\,
	datac => \data_mux|Mux2~0_combout\,
	datad => \data_mux|Mux0~0_combout\,
	combout => \rom_tx_hi|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y8_N14
\HEX7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HEX7~6_combout\ = (\SW[17]~input_o\) # (!\rom_tx_hi|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \rom_tx_hi|Mux0~0_combout\,
	combout => \HEX7~6_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\EX_IO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(0),
	o => \EX_IO[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\EX_IO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(1),
	o => \EX_IO[1]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\EX_IO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(2),
	o => \EX_IO[2]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\EX_IO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(3),
	o => \EX_IO[3]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\EX_IO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(4),
	o => \EX_IO[4]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\EX_IO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => EX_IO(5),
	o => \EX_IO[5]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

EX_IO(0) <= \EX_IO[0]~output_o\;

EX_IO(1) <= \EX_IO[1]~output_o\;

EX_IO(2) <= \EX_IO[2]~output_o\;

EX_IO(3) <= \EX_IO[3]~output_o\;

EX_IO(4) <= \EX_IO[4]~output_o\;

EX_IO(5) <= \EX_IO[5]~output_o\;

EX_IO(6) <= \EX_IO[6]~output_o\;
END structure;


