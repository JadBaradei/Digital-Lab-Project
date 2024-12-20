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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/20/2024 23:52:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TOP_Module IS
    PORT (
	clk_50Mhz : IN std_logic;
	reset : IN std_logic;
	ir_input : IN std_logic;
	SW : IN std_logic_vector(8 DOWNTO 0);
	PW : IN std_logic;
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0)
	);
END TOP_Module;

-- Design Ports Information
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PW	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_input	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TOP_Module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ir_input : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_PW : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \vga|p1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \vga|p1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ready_to_play|LUT_DATA[0]~91clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|Mux33~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \comb_3|state~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \comb_3|counting_down|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[0]~26_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[21]~28_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[0]~27\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[1]~29_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[1]~30\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[2]~31_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[2]~32\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[3]~33_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[3]~34\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[4]~35_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[4]~36\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[5]~37_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[5]~38\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[6]~39_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[6]~40\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[7]~41_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[7]~42\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[8]~43_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[8]~44\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[9]~45_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[9]~46\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[10]~47_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[10]~48\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[11]~49_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[11]~50\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[12]~51_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[12]~52\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[13]~53_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[13]~54\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[14]~55_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[14]~56\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[15]~57_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~3_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~4_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[15]~58\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[16]~59_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[16]~60\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[17]~61_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[17]~62\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[18]~63_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[18]~64\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[19]~65_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[19]~66\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[20]~67_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[20]~68\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[21]~69_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[21]~70\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[22]~71_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[22]~72\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[23]~73_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[23]~74\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[24]~75_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[24]~76\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter[25]~77_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~7_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~6_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~5_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~8_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[2]~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[0]~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[1]~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[2]~3_combout\ : std_logic;
SIGNAL \comb_3|counting_down|flag~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[3]~4_combout\ : std_logic;
SIGNAL \comb_3|counting_down|flag~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|flag~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|flag~q\ : std_logic;
SIGNAL \comb_3|Mux1~1_combout\ : std_logic;
SIGNAL \comb_3|Mux1~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[0]~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[0]~18_combout\ : std_logic;
SIGNAL \ir_input~input_o\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[0]~18_combout\ : std_logic;
SIGNAL \comb_3|read_ir|always5~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[0]~19\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[1]~20_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[1]~21\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[2]~22_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[2]~23\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[3]~24_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[3]~25\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[4]~26_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[4]~27\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[5]~28_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[5]~29\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[6]~30_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[6]~31\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[7]~32_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[7]~33\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[8]~34_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[8]~35\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[9]~36_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[9]~37\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[10]~38_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[10]~39\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[11]~40_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[11]~41\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[12]~42_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[12]~43\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[13]~44_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~7_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~8_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[13]~45\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[14]~46_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[14]~47\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[15]~48_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[15]~49\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[16]~50_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[16]~51\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[17]~52_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~9_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~10_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[2]~11\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[3]~12_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal0~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan4~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal0~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[5]~18_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[3]~13\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[4]~14_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[4]~15\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[5]~16_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal1~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~11_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state.IDLE~q\ : std_logic;
SIGNAL \comb_3|read_ir|always1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[0]~19\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[1]~20_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[1]~21\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[2]~22_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[2]~23\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[3]~24_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[3]~25\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[4]~26_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[4]~27\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[5]~28_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[5]~29\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[6]~30_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[6]~31\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[7]~32_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[7]~33\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[8]~34_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[8]~35\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[9]~36_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[9]~37\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[10]~38_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[10]~39\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[11]~40_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[11]~41\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[12]~42_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[12]~43\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[13]~44_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[13]~45\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[14]~46_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[14]~47\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[15]~48_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[15]~49\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[16]~50_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[16]~51\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[17]~52_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~6_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~12_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state.GUIDANCE~q\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[0]~18_combout\ : std_logic;
SIGNAL \comb_3|read_ir|always3~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[0]~19\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[1]~20_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[1]~21\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[2]~22_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[2]~23\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[3]~24_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[3]~25\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[4]~26_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[4]~27\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[5]~28_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[5]~29\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[6]~30_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[6]~31\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[7]~32_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[7]~33\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[8]~34_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[8]~35\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[9]~36_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[9]~37\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[10]~38_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[10]~39\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[11]~40_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[11]~41\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[12]~42_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan1~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan1~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[12]~43\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[13]~44_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[13]~45\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[14]~46_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[14]~47\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[15]~48_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[15]~49\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[16]~50_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[16]~51\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[17]~52_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector2~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state.DATAREAD~q\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[0]~7\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[1]~8_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[1]~9\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[2]~10_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan4~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan4~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan4~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[17]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~9_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~7_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~8_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~6_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~12_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~11_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~13_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~10_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~14_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~15_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~16_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~6_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_ready~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_ready~q\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[18]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[16]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[19]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Equal0~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[21]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[20]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Equal0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \comb_3|Mux1~0_combout\ : std_logic;
SIGNAL \comb_3|Mux1~3_combout\ : std_logic;
SIGNAL \comb_3|Mux1~4_combout\ : std_logic;
SIGNAL \PW~input_o\ : std_logic;
SIGNAL \comb_3|Mux1~5_combout\ : std_logic;
SIGNAL \comb_3|Mux1~6_combout\ : std_logic;
SIGNAL \comb_3|picked_second_power~1_combout\ : std_logic;
SIGNAL \comb_3|state~2_combout\ : std_logic;
SIGNAL \comb_3|picked_second_power~2_combout\ : std_logic;
SIGNAL \comb_3|picked_second_power~q\ : std_logic;
SIGNAL \comb_3|picked_first_power~0_combout\ : std_logic;
SIGNAL \comb_3|picked_first_power~1_combout\ : std_logic;
SIGNAL \comb_3|picked_first_power~q\ : std_logic;
SIGNAL \comb_3|state~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \comb_3|Mux3~0_combout\ : std_logic;
SIGNAL \comb_3|Mux3~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \comb_3|Mux3~4_combout\ : std_logic;
SIGNAL \comb_3|always0~0_combout\ : std_logic;
SIGNAL \comb_3|Mux3~5_combout\ : std_logic;
SIGNAL \comb_3|Mux3~2_combout\ : std_logic;
SIGNAL \comb_3|Mux3~3_combout\ : std_logic;
SIGNAL \comb_3|Mux3~6_combout\ : std_logic;
SIGNAL \comb_3|Selector31~0_combout\ : std_logic;
SIGNAL \comb_3|chosen_code_coder[0]~0_combout\ : std_logic;
SIGNAL \comb_3|chosen_code_coder[0]~1_combout\ : std_logic;
SIGNAL \comb_3|Selector30~0_combout\ : std_logic;
SIGNAL \comb_3|Equal1~1_combout\ : std_logic;
SIGNAL \comb_3|Selector28~0_combout\ : std_logic;
SIGNAL \comb_3|Selector29~0_combout\ : std_logic;
SIGNAL \comb_3|Equal1~2_combout\ : std_logic;
SIGNAL \comb_3|Selector33~0_combout\ : std_logic;
SIGNAL \comb_3|Selector32~0_combout\ : std_logic;
SIGNAL \comb_3|Equal1~0_combout\ : std_logic;
SIGNAL \comb_3|Selector26~0_combout\ : std_logic;
SIGNAL \comb_3|Selector27~0_combout\ : std_logic;
SIGNAL \comb_3|Equal1~3_combout\ : std_logic;
SIGNAL \comb_3|Equal1~4_combout\ : std_logic;
SIGNAL \comb_3|Mux3~7_combout\ : std_logic;
SIGNAL \comb_3|Mux3~8_combout\ : std_logic;
SIGNAL \comb_3|Mux3~9_combout\ : std_logic;
SIGNAL \comb_3|Mux3~10_combout\ : std_logic;
SIGNAL \comb_3|counter[29]~1_combout\ : std_logic;
SIGNAL \comb_3|Add0~1\ : std_logic;
SIGNAL \comb_3|Add0~2_combout\ : std_logic;
SIGNAL \comb_3|Add0~3\ : std_logic;
SIGNAL \comb_3|Add0~4_combout\ : std_logic;
SIGNAL \comb_3|Add0~5\ : std_logic;
SIGNAL \comb_3|Add0~6_combout\ : std_logic;
SIGNAL \comb_3|Add0~7\ : std_logic;
SIGNAL \comb_3|Add0~8_combout\ : std_logic;
SIGNAL \comb_3|Add0~9\ : std_logic;
SIGNAL \comb_3|Add0~10_combout\ : std_logic;
SIGNAL \comb_3|Add0~11\ : std_logic;
SIGNAL \comb_3|Add0~12_combout\ : std_logic;
SIGNAL \comb_3|Add0~13\ : std_logic;
SIGNAL \comb_3|Add0~14_combout\ : std_logic;
SIGNAL \comb_3|Mux26~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~15\ : std_logic;
SIGNAL \comb_3|Add0~16_combout\ : std_logic;
SIGNAL \comb_3|Add0~17\ : std_logic;
SIGNAL \comb_3|Add0~18_combout\ : std_logic;
SIGNAL \comb_3|Mux24~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~19\ : std_logic;
SIGNAL \comb_3|Add0~20_combout\ : std_logic;
SIGNAL \comb_3|Add0~21\ : std_logic;
SIGNAL \comb_3|Add0~22_combout\ : std_logic;
SIGNAL \comb_3|Add0~23\ : std_logic;
SIGNAL \comb_3|Add0~24_combout\ : std_logic;
SIGNAL \comb_3|Mux21~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~25\ : std_logic;
SIGNAL \comb_3|Add0~26_combout\ : std_logic;
SIGNAL \comb_3|Mux20~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~27\ : std_logic;
SIGNAL \comb_3|Add0~28_combout\ : std_logic;
SIGNAL \comb_3|Add0~29\ : std_logic;
SIGNAL \comb_3|Add0~30_combout\ : std_logic;
SIGNAL \comb_3|Mux18~0_combout\ : std_logic;
SIGNAL \comb_3|counter[15]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Add0~31\ : std_logic;
SIGNAL \comb_3|Add0~32_combout\ : std_logic;
SIGNAL \comb_3|Add0~33\ : std_logic;
SIGNAL \comb_3|Add0~34_combout\ : std_logic;
SIGNAL \comb_3|Mux16~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~35\ : std_logic;
SIGNAL \comb_3|Add0~36_combout\ : std_logic;
SIGNAL \comb_3|Mux15~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~37\ : std_logic;
SIGNAL \comb_3|Add0~38_combout\ : std_logic;
SIGNAL \comb_3|Add0~39\ : std_logic;
SIGNAL \comb_3|Add0~40_combout\ : std_logic;
SIGNAL \comb_3|Add0~41\ : std_logic;
SIGNAL \comb_3|Add0~42_combout\ : std_logic;
SIGNAL \comb_3|Mux12~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~43\ : std_logic;
SIGNAL \comb_3|Add0~44_combout\ : std_logic;
SIGNAL \comb_3|Mux11~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~45\ : std_logic;
SIGNAL \comb_3|Add0~46_combout\ : std_logic;
SIGNAL \comb_3|Mux10~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~47\ : std_logic;
SIGNAL \comb_3|Add0~48_combout\ : std_logic;
SIGNAL \comb_3|Add0~49\ : std_logic;
SIGNAL \comb_3|Add0~50_combout\ : std_logic;
SIGNAL \comb_3|Mux8~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~51\ : std_logic;
SIGNAL \comb_3|Add0~52_combout\ : std_logic;
SIGNAL \comb_3|Mux7~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~53\ : std_logic;
SIGNAL \comb_3|Add0~54_combout\ : std_logic;
SIGNAL \comb_3|Mux6~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~55\ : std_logic;
SIGNAL \comb_3|Add0~56_combout\ : std_logic;
SIGNAL \comb_3|Add0~57\ : std_logic;
SIGNAL \comb_3|Add0~58_combout\ : std_logic;
SIGNAL \comb_3|Equal2~7_combout\ : std_logic;
SIGNAL \comb_3|Equal2~8_combout\ : std_logic;
SIGNAL \comb_3|Equal2~6_combout\ : std_logic;
SIGNAL \comb_3|Equal2~2_combout\ : std_logic;
SIGNAL \comb_3|Equal2~1_combout\ : std_logic;
SIGNAL \comb_3|Equal2~0_combout\ : std_logic;
SIGNAL \comb_3|Equal2~3_combout\ : std_logic;
SIGNAL \comb_3|Equal2~4_combout\ : std_logic;
SIGNAL \comb_3|Equal2~5_combout\ : std_logic;
SIGNAL \comb_3|Equal2~9_combout\ : std_logic;
SIGNAL \comb_3|Mux0~5_combout\ : std_logic;
SIGNAL \comb_3|Mux0~2_combout\ : std_logic;
SIGNAL \comb_3|Mux0~3_combout\ : std_logic;
SIGNAL \comb_3|Mux0~4_combout\ : std_logic;
SIGNAL \comb_3|picked_second_power~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \comb_3|Mux2~1_combout\ : std_logic;
SIGNAL \comb_3|Mux2~0_combout\ : std_logic;
SIGNAL \comb_3|Mux2~7_combout\ : std_logic;
SIGNAL \comb_3|Mux2~5_combout\ : std_logic;
SIGNAL \comb_3|Mux2~6_combout\ : std_logic;
SIGNAL \comb_3|Mux2~8_combout\ : std_logic;
SIGNAL \comb_3|Mux2~2_combout\ : std_logic;
SIGNAL \comb_3|Mux2~3_combout\ : std_logic;
SIGNAL \comb_3|Mux2~4_combout\ : std_logic;
SIGNAL \comb_3|Mux2~9_combout\ : std_logic;
SIGNAL \ready_to_play|Selector1~0_combout\ : std_logic;
SIGNAL \comb_3|Selector25~0_combout\ : std_logic;
SIGNAL \comb_3|counter[29]~0_combout\ : std_logic;
SIGNAL \comb_3|LEDR[0]~0_combout\ : std_logic;
SIGNAL \comb_3|Selector7~0_combout\ : std_logic;
SIGNAL \ready_to_play|Selector2~0_combout\ : std_logic;
SIGNAL \comb_3|LEDG[0]~0_combout\ : std_logic;
SIGNAL \clk_div|Add0~0_combout\ : std_logic;
SIGNAL \clk_div|counter~0_combout\ : std_logic;
SIGNAL \clk_div|Add0~1\ : std_logic;
SIGNAL \clk_div|Add0~2_combout\ : std_logic;
SIGNAL \clk_div|Add0~3\ : std_logic;
SIGNAL \clk_div|Add0~4_combout\ : std_logic;
SIGNAL \clk_div|Add0~5\ : std_logic;
SIGNAL \clk_div|Add0~6_combout\ : std_logic;
SIGNAL \clk_div|Add0~7\ : std_logic;
SIGNAL \clk_div|Add0~8_combout\ : std_logic;
SIGNAL \clk_div|Add0~9\ : std_logic;
SIGNAL \clk_div|Add0~10_combout\ : std_logic;
SIGNAL \clk_div|counter~1_combout\ : std_logic;
SIGNAL \clk_div|Add0~11\ : std_logic;
SIGNAL \clk_div|Add0~12_combout\ : std_logic;
SIGNAL \clk_div|Add0~13\ : std_logic;
SIGNAL \clk_div|Add0~14_combout\ : std_logic;
SIGNAL \clk_div|Add0~15\ : std_logic;
SIGNAL \clk_div|Add0~16_combout\ : std_logic;
SIGNAL \clk_div|Add0~17\ : std_logic;
SIGNAL \clk_div|Add0~18_combout\ : std_logic;
SIGNAL \clk_div|Add0~19\ : std_logic;
SIGNAL \clk_div|Add0~20_combout\ : std_logic;
SIGNAL \clk_div|counter~2_combout\ : std_logic;
SIGNAL \clk_div|Add0~21\ : std_logic;
SIGNAL \clk_div|Add0~22_combout\ : std_logic;
SIGNAL \clk_div|counter~3_combout\ : std_logic;
SIGNAL \clk_div|Add0~23\ : std_logic;
SIGNAL \clk_div|Add0~24_combout\ : std_logic;
SIGNAL \clk_div|counter~4_combout\ : std_logic;
SIGNAL \clk_div|Add0~25\ : std_logic;
SIGNAL \clk_div|Add0~26_combout\ : std_logic;
SIGNAL \clk_div|counter~5_combout\ : std_logic;
SIGNAL \clk_div|Add0~27\ : std_logic;
SIGNAL \clk_div|Add0~28_combout\ : std_logic;
SIGNAL \clk_div|Add0~29\ : std_logic;
SIGNAL \clk_div|Add0~30_combout\ : std_logic;
SIGNAL \clk_div|counter~6_combout\ : std_logic;
SIGNAL \clk_div|Add0~31\ : std_logic;
SIGNAL \clk_div|Add0~32_combout\ : std_logic;
SIGNAL \clk_div|Add0~33\ : std_logic;
SIGNAL \clk_div|Add0~34_combout\ : std_logic;
SIGNAL \clk_div|counter~7_combout\ : std_logic;
SIGNAL \clk_div|Add0~35\ : std_logic;
SIGNAL \clk_div|Add0~36_combout\ : std_logic;
SIGNAL \clk_div|counter~8_combout\ : std_logic;
SIGNAL \clk_div|Add0~37\ : std_logic;
SIGNAL \clk_div|Add0~38_combout\ : std_logic;
SIGNAL \clk_div|counter~9_combout\ : std_logic;
SIGNAL \clk_div|Add0~39\ : std_logic;
SIGNAL \clk_div|Add0~40_combout\ : std_logic;
SIGNAL \clk_div|counter~10_combout\ : std_logic;
SIGNAL \clk_div|Add0~41\ : std_logic;
SIGNAL \clk_div|Add0~42_combout\ : std_logic;
SIGNAL \clk_div|counter~11_combout\ : std_logic;
SIGNAL \clk_div|Add0~43\ : std_logic;
SIGNAL \clk_div|Add0~44_combout\ : std_logic;
SIGNAL \clk_div|Add0~45\ : std_logic;
SIGNAL \clk_div|Add0~46_combout\ : std_logic;
SIGNAL \clk_div|counter~12_combout\ : std_logic;
SIGNAL \clk_div|Equal0~6_combout\ : std_logic;
SIGNAL \clk_div|Equal0~5_combout\ : std_logic;
SIGNAL \clk_div|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div|Add0~47\ : std_logic;
SIGNAL \clk_div|Add0~48_combout\ : std_logic;
SIGNAL \clk_div|Add0~49\ : std_logic;
SIGNAL \clk_div|Add0~50_combout\ : std_logic;
SIGNAL \clk_div|Add0~51\ : std_logic;
SIGNAL \clk_div|Add0~52_combout\ : std_logic;
SIGNAL \clk_div|Add0~53\ : std_logic;
SIGNAL \clk_div|Add0~54_combout\ : std_logic;
SIGNAL \clk_div|Add0~55\ : std_logic;
SIGNAL \clk_div|Add0~56_combout\ : std_logic;
SIGNAL \clk_div|Add0~57\ : std_logic;
SIGNAL \clk_div|Add0~58_combout\ : std_logic;
SIGNAL \clk_div|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div|Equal0~9_combout\ : std_logic;
SIGNAL \clk_div|clk_out~0_combout\ : std_logic;
SIGNAL \clk_div|clk_out~q\ : std_logic;
SIGNAL \comb_3|Mux1~7_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_breaker_try_guess_code~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_lock_coder_wins~0_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_breaker_try_guess_code~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_play_again~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_play_again~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~38_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[0]~6_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[2]~11\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[3]~12_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[3]~13\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[4]~15_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[4]~16\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[5]~17_combout\ : std_logic;
SIGNAL \ready_to_play|Mux88~0_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan0~0_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[0]~18_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[7]~22_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~16_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~17_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~20_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~21_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000001~q\ : std_logic;
SIGNAL \ready_to_play|Selector18~2_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_Start~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_Start~q\ : std_logic;
SIGNAL \ready_to_play|u0|preStart~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|u0|preStart~q\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.00~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.00~q\ : std_logic;
SIGNAL \ready_to_play|u0|ST.01~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.01~q\ : std_logic;
SIGNAL \ready_to_play|u0|Selector2~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.10~q\ : std_logic;
SIGNAL \ready_to_play|u0|Selector5~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector2~1_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector8~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~1\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~2_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector7~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~3\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~4_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector6~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~5\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~6_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector5~1_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~7\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~8_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector4~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector4~1_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST~14_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.11~q\ : std_logic;
SIGNAL \ready_to_play|u0|mStart~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|mStart~q\ : std_logic;
SIGNAL \ready_to_play|u0|oDone~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|oDone~1_combout\ : std_logic;
SIGNAL \ready_to_play|u0|oDone~q\ : std_logic;
SIGNAL \ready_to_play|Selector18~3_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~19_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000010~q\ : std_logic;
SIGNAL \ready_to_play|mDLY[7]~23_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[0]~19\ : std_logic;
SIGNAL \ready_to_play|mDLY[1]~20_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[1]~21\ : std_logic;
SIGNAL \ready_to_play|mDLY[2]~24_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[2]~25\ : std_logic;
SIGNAL \ready_to_play|mDLY[3]~26_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[3]~27\ : std_logic;
SIGNAL \ready_to_play|mDLY[4]~28_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[4]~29\ : std_logic;
SIGNAL \ready_to_play|mDLY[5]~30_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[5]~31\ : std_logic;
SIGNAL \ready_to_play|mDLY[6]~32_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[6]~33\ : std_logic;
SIGNAL \ready_to_play|mDLY[7]~34_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[7]~35\ : std_logic;
SIGNAL \ready_to_play|mDLY[8]~36_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[8]~37\ : std_logic;
SIGNAL \ready_to_play|mDLY[9]~38_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[9]~39\ : std_logic;
SIGNAL \ready_to_play|mDLY[10]~40_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~2_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[10]~41\ : std_logic;
SIGNAL \ready_to_play|mDLY[11]~42_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[11]~43\ : std_logic;
SIGNAL \ready_to_play|mDLY[12]~44_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[12]~45\ : std_logic;
SIGNAL \ready_to_play|mDLY[13]~46_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[13]~47\ : std_logic;
SIGNAL \ready_to_play|mDLY[14]~48_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[14]~49\ : std_logic;
SIGNAL \ready_to_play|mDLY[15]~50_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[15]~51\ : std_logic;
SIGNAL \ready_to_play|mDLY[16]~52_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~3_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~4_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[16]~53\ : std_logic;
SIGNAL \ready_to_play|mDLY[17]~54_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~0_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~1_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~5_combout\ : std_logic;
SIGNAL \ready_to_play|Selector19~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000011~q\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[5]~14_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[0]~7\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[1]~8_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[1]~9\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[2]~10_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~33_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~31_combout\ : std_logic;
SIGNAL \ready_to_play|Mux96~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux96~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux96~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~32_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~34_combout\ : std_logic;
SIGNAL \ready_to_play|Selector11~0_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_lock_breaker_wins~q\ : std_logic;
SIGNAL \comb_3|Mux3~11_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_lock_coder_wins~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_lock_coder_choose_password~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_lock_coder_choose_password~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~50_combout\ : std_logic;
SIGNAL \ready_to_play|Mux49~1_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_camouflage_right_seg~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_camouflage_right_seg~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_flexible_right_seg~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_flexible_right_seg~q\ : std_logic;
SIGNAL \ready_to_play|Selector4~0_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_invisible_right_seg~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_invisible_right_seg~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~68_combout\ : std_logic;
SIGNAL \ready_to_play|Mux77~2_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~69_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~70_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~73_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_coder~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_coder~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_breaker~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_breaker~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~71_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~59_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_group~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_group~q\ : std_logic;
SIGNAL \ready_to_play|Mux7~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux7~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux7~4_combout\ : std_logic;
SIGNAL \ready_to_play|Mux7~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux7~5_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~72_combout\ : std_logic;
SIGNAL \ready_to_play|Mux3~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux42~6_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~74_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_invisible_left_seg~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_invisible_left_seg~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_camouflage_left_seg~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_camouflage_left_seg~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_flexible_left_seg~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_flexible_left_seg~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~51_combout\ : std_logic;
SIGNAL \ready_to_play|Mux21~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux28~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~64_combout\ : std_logic;
SIGNAL \ready_to_play|Mux84~2_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~63_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~65_combout\ : std_logic;
SIGNAL \ready_to_play|Mux49~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux35~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux42~5_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~61_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~62_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~66_combout\ : std_logic;
SIGNAL \ready_to_play|Mux7~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~58_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~57_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~60_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~67_combout\ : std_logic;
SIGNAL \ready_to_play|Mux42~4_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~53_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~54_combout\ : std_logic;
SIGNAL \ready_to_play|Mux35~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~55_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~52_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~56_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~75_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~84_combout\ : std_logic;
SIGNAL \ready_to_play|Mux56~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux70~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux70~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~79_combout\ : std_logic;
SIGNAL \ready_to_play|Mux70~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~76_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~77_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~78_combout\ : std_logic;
SIGNAL \ready_to_play|Mux56~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~81_combout\ : std_logic;
SIGNAL \ready_to_play|Mux63~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux63~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~80_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~82_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~83_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~85_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~44_combout\ : std_logic;
SIGNAL \ready_to_play|Mux89~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux89~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux89~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~43_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~45_combout\ : std_logic;
SIGNAL \ready_to_play|Mux77~3_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~39_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~46_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~47_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~48_combout\ : std_logic;
SIGNAL \ready_to_play|Mux84~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux84~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~41_combout\ : std_logic;
SIGNAL \ready_to_play|Mux77~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux77~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~40_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~42_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~49_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~86_combout\ : std_logic;
SIGNAL \ready_to_play|Mux102~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~35_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~36_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~375_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~87_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~89_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_ready~feeder_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_ready~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~90_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~88_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~91_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~18_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000000~q\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA[7]~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~92_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~93_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~94_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~119_combout\ : std_logic;
SIGNAL \ready_to_play|Mux83~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux83~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~97_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~98_combout\ : std_logic;
SIGNAL \ready_to_play|Mux88~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux88~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux88~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux88~4_combout\ : std_logic;
SIGNAL \ready_to_play|Mux88~5_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~399_combout\ : std_logic;
SIGNAL \ready_to_play|Mux76~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux76~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux76~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux76~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux76~4_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~400_combout\ : std_logic;
SIGNAL \ready_to_play|Mux95~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux95~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~95_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~96_combout\ : std_logic;
SIGNAL \ready_to_play|Mux69~6_combout\ : std_logic;
SIGNAL \ready_to_play|Mux69~9_combout\ : std_logic;
SIGNAL \ready_to_play|Mux69~8_combout\ : std_logic;
SIGNAL \ready_to_play|Mux62~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~101_combout\ : std_logic;
SIGNAL \ready_to_play|Mux55~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux55~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~100_combout\ : std_logic;
SIGNAL \ready_to_play|Mux69~7_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~99_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~102_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~103_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~113_combout\ : std_logic;
SIGNAL \ready_to_play|Mux41~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux48~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~115_combout\ : std_logic;
SIGNAL \ready_to_play|Mux34~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux34~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~114_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~116_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~117_combout\ : std_logic;
SIGNAL \ready_to_play|Mux6~5_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~109_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~110_combout\ : std_logic;
SIGNAL \ready_to_play|Mux6~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux6~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux6~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux6~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux6~4_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~111_combout\ : std_logic;
SIGNAL \ready_to_play|Mux27~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux27~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~107_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~108_combout\ : std_logic;
SIGNAL \ready_to_play|Mux20~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux20~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~104_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~105_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~106_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~112_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~118_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~120_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~376_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~2_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~139_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~125_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~191_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~192_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~395_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~396_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~193_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~161_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~162_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~163_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~154_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~155_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~156_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~157_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~158_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~159_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~160_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~164_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~165_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~187_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~167_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~166_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~168_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~169_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~170_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~172_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~171_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~173_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~381_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~174_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~184_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~183_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~185_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~397_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~398_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~175_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~176_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~177_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~178_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~179_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~180_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~181_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~182_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~186_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~188_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~151_combout\ : std_logic;
SIGNAL \ready_to_play|Mux1~2_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~141_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~152_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~149_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~380_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~150_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~153_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~189_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~142_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~140_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~378_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~143_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~147_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~144_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~145_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~146_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~148_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~379_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~190_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~132_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~131_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~133_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~134_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~130_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~128_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~37_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~123_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~122_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr17~1_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr17~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~121_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~124_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~127_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~126_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~377_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~129_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~135_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~136_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~137_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~138_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~194_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~3_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~393_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~394_combout\ : std_logic;
SIGNAL \ready_to_play|Mux93~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux93~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~222_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~223_combout\ : std_logic;
SIGNAL \ready_to_play|Mux53~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux53~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~218_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~219_combout\ : std_logic;
SIGNAL \ready_to_play|Mux67~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux60~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux67~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~382_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~202_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~203_combout\ : std_logic;
SIGNAL \ready_to_play|Mux46~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux46~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~208_combout\ : std_logic;
SIGNAL \ready_to_play|Mux32~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux32~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~206_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~207_combout\ : std_logic;
SIGNAL \ready_to_play|Mux39~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux39~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~204_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~205_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~209_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~210_combout\ : std_logic;
SIGNAL \ready_to_play|Mux25~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux18~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~211_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~212_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~4_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~214_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~213_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~215_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~216_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~217_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~220_combout\ : std_logic;
SIGNAL \ready_to_play|Mux81~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux81~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~198_combout\ : std_logic;
SIGNAL \ready_to_play|Mux74~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux74~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~197_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~199_combout\ : std_logic;
SIGNAL \ready_to_play|Mux87~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux87~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux87~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~195_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~196_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~200_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~201_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~221_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~224_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~4_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~254_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~253_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~255_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~246_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~247_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~243_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~244_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~245_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~248_combout\ : std_logic;
SIGNAL \ready_to_play|Mux3~5_combout\ : std_logic;
SIGNAL \ready_to_play|Mux3~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux92~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux3~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux3~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux3~4_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~242_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~235_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~237_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~236_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~239_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~238_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~240_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~233_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~234_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~241_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~249_combout\ : std_logic;
SIGNAL \ready_to_play|Mux52~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~230_combout\ : std_logic;
SIGNAL \ready_to_play|Mux59~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~383_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~231_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~227_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~228_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~225_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~226_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~229_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~232_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~250_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~251_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~384_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~26_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~386_combout\ : std_logic;
SIGNAL \ready_to_play|Mux80~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux80~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~252_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~391_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~392_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~256_combout\ : std_logic;
SIGNAL \ready_to_play|Mux92~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~258_combout\ : std_logic;
SIGNAL \ready_to_play|Mux98~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~257_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~259_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~260_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~5_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~264_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~265_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~266_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~385_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~389_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~390_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~262_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr16~1_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr16~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~261_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~263_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~267_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~303_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~304_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~305_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~306_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~308_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~307_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~309_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~311_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~310_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~312_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~316_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~313_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~314_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~315_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~317_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~318_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~292_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~293_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~294_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~295_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~299_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~298_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~300_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~296_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~297_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~301_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~387_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~285_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~286_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~388_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~287_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~288_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~289_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~290_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~282_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~281_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~283_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~284_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~291_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~302_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~319_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~280_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~320_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~321_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~322_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~323_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~324_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~325_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~326_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~327_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~328_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~276_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~277_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~268_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~278_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~270_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~269_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~271_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~273_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~272_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~274_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~275_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~279_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~329_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~330_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~6_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr15~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr15~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~361_combout\ : std_logic;
SIGNAL \ready_to_play|Mux8~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux8~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~362_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~363_combout\ : std_logic;
SIGNAL \ready_to_play|Mux15~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux71~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~359_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~360_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~364_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~358_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~369_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~370_combout\ : std_logic;
SIGNAL \ready_to_play|Mux29~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux29~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~367_combout\ : std_logic;
SIGNAL \ready_to_play|Mux22~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux22~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~366_combout\ : std_logic;
SIGNAL \ready_to_play|Mux43~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~365_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~368_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~371_combout\ : std_logic;
SIGNAL \ready_to_play|Mux7~6_combout\ : std_logic;
SIGNAL \ready_to_play|Mux64~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~356_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~355_combout\ : std_logic;
SIGNAL \ready_to_play|Mux64~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~350_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~351_combout\ : std_logic;
SIGNAL \ready_to_play|Mux43~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~352_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~353_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~354_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~357_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~372_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~343_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~344_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~345_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~347_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~346_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~348_combout\ : std_logic;
SIGNAL \ready_to_play|Mux71~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux71~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux71~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux78~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~332_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~340_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~341_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~342_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~349_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~373_combout\ : std_logic;
SIGNAL \ready_to_play|Mux90~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~333_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr18~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~331_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~334_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~336_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~337_combout\ : std_logic;
SIGNAL \ready_to_play|Mux90~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~335_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~338_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~339_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~374_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~7_combout\ : std_logic;
SIGNAL \ready_to_play|Mux1~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux1~4_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~8_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector3~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|LCD_EN~q\ : std_logic;
SIGNAL \ready_to_play|Mux0~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux0~3_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_RS~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_RS~q\ : std_logic;
SIGNAL \select_your_power|Mux5~0_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[0]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[2]~0_combout\ : std_logic;
SIGNAL \select_your_power|Mux4~0_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[2]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[4]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[5]~1_combout\ : std_logic;
SIGNAL \select_your_power|Mux4~0_wirecell_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2[0]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2[2]~0_combout\ : std_logic;
SIGNAL \select_your_power|Mux10~0_combout\ : std_logic;
SIGNAL \select_your_power|Mux8~0_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2[5]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2[6]~feeder_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit~3_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit~0_combout\ : std_logic;
SIGNAL \display_countdown|segments[0]~0_combout\ : std_logic;
SIGNAL \display_countdown|segments[1]~1_combout\ : std_logic;
SIGNAL \display_countdown|Decoder0~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr3~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr2~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr1~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr0~0_combout\ : std_logic;
SIGNAL \vga|r0|Cont[0]~57_combout\ : std_logic;
SIGNAL \vga|r0|Cont[1]~19_combout\ : std_logic;
SIGNAL \vga|r0|Cont[1]~20\ : std_logic;
SIGNAL \vga|r0|Cont[2]~21_combout\ : std_logic;
SIGNAL \vga|r0|Cont[2]~22\ : std_logic;
SIGNAL \vga|r0|Cont[3]~23_combout\ : std_logic;
SIGNAL \vga|r0|Cont[3]~24\ : std_logic;
SIGNAL \vga|r0|Cont[4]~25_combout\ : std_logic;
SIGNAL \vga|r0|Cont[4]~26\ : std_logic;
SIGNAL \vga|r0|Cont[5]~27_combout\ : std_logic;
SIGNAL \vga|r0|Cont[5]~28\ : std_logic;
SIGNAL \vga|r0|Cont[6]~29_combout\ : std_logic;
SIGNAL \vga|r0|Cont[6]~30\ : std_logic;
SIGNAL \vga|r0|Cont[7]~31_combout\ : std_logic;
SIGNAL \vga|r0|Cont[7]~32\ : std_logic;
SIGNAL \vga|r0|Cont[8]~33_combout\ : std_logic;
SIGNAL \vga|r0|Cont[8]~34\ : std_logic;
SIGNAL \vga|r0|Cont[9]~35_combout\ : std_logic;
SIGNAL \vga|r0|Cont[9]~36\ : std_logic;
SIGNAL \vga|r0|Cont[10]~37_combout\ : std_logic;
SIGNAL \vga|r0|Cont[10]~38\ : std_logic;
SIGNAL \vga|r0|Cont[11]~39_combout\ : std_logic;
SIGNAL \vga|r0|Cont[11]~40\ : std_logic;
SIGNAL \vga|r0|Cont[12]~41_combout\ : std_logic;
SIGNAL \vga|r0|Cont[12]~42\ : std_logic;
SIGNAL \vga|r0|Cont[13]~43_combout\ : std_logic;
SIGNAL \vga|r0|Cont[13]~44\ : std_logic;
SIGNAL \vga|r0|Cont[14]~45_combout\ : std_logic;
SIGNAL \vga|r0|Cont[14]~46\ : std_logic;
SIGNAL \vga|r0|Cont[15]~47_combout\ : std_logic;
SIGNAL \vga|r0|Equal0~5_combout\ : std_logic;
SIGNAL \vga|r0|Equal0~4_combout\ : std_logic;
SIGNAL \vga|r0|Cont[15]~48\ : std_logic;
SIGNAL \vga|r0|Cont[16]~49_combout\ : std_logic;
SIGNAL \vga|r0|Cont[16]~50\ : std_logic;
SIGNAL \vga|r0|Cont[17]~51_combout\ : std_logic;
SIGNAL \vga|r0|Cont[17]~52\ : std_logic;
SIGNAL \vga|r0|Cont[18]~53_combout\ : std_logic;
SIGNAL \vga|r0|Cont[18]~54\ : std_logic;
SIGNAL \vga|r0|Cont[19]~55_combout\ : std_logic;
SIGNAL \vga|r0|Equal0~0_combout\ : std_logic;
SIGNAL \vga|r0|Equal0~1_combout\ : std_logic;
SIGNAL \vga|r0|Equal0~2_combout\ : std_logic;
SIGNAL \vga|r0|Equal0~3_combout\ : std_logic;
SIGNAL \vga|r0|Equal0~6_combout\ : std_logic;
SIGNAL \vga|r0|oRESET~feeder_combout\ : std_logic;
SIGNAL \vga|r0|oRESET~q\ : std_logic;
SIGNAL \vga|p1|altpll_component|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|v_cnt~3_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~1\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~2_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~3\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~4_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Equal0~2_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~5\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~6_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~7\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~8_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~9\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~10_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~15\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~16_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|h_cnt~1_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~17\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~18_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|h_cnt~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Equal0~1_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|h_cnt~2_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~11\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~12_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~13\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~14_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~19\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add1~20_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Equal0~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Equal0~3_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~1\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~2_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~3\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~4_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|v_cnt~1_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Equal1~1_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~5\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~6_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|v_cnt~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~7\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~8_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~9\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~10_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~11\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~12_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~13\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~14_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~15\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~16_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|LessThan5~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Equal1~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~17\ : std_logic;
SIGNAL \vga|u4|LTM_ins|Add0~18_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|v_cnt~2_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|cDEN~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|LessThan5~1_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|LessThan5~2_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|cDEN~1_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|cDEN~2_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|cDEN~3_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|blank_n~q\ : std_logic;
SIGNAL \vga|u4|oBLANK_n~feeder_combout\ : std_logic;
SIGNAL \vga|u4|oBLANK_n~q\ : std_logic;
SIGNAL \vga|u4|LTM_ins|LessThan0~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|LessThan0~1_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|HS~q\ : std_logic;
SIGNAL \vga|u4|oHS~feeder_combout\ : std_logic;
SIGNAL \vga|u4|oHS~q\ : std_logic;
SIGNAL \vga|u4|LTM_ins|LessThan1~0_combout\ : std_logic;
SIGNAL \vga|u4|LTM_ins|VS~q\ : std_logic;
SIGNAL \vga|u4|oVS~q\ : std_logic;
SIGNAL \vga|u4|ADDR[0]~19_combout\ : std_logic;
SIGNAL \vga|u4|always0~0_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[0]~20\ : std_logic;
SIGNAL \vga|u4|ADDR[1]~21_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[1]~22\ : std_logic;
SIGNAL \vga|u4|ADDR[2]~23_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[2]~24\ : std_logic;
SIGNAL \vga|u4|ADDR[3]~25_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[3]~26\ : std_logic;
SIGNAL \vga|u4|ADDR[4]~27_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[4]~28\ : std_logic;
SIGNAL \vga|u4|ADDR[5]~29_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[5]~30\ : std_logic;
SIGNAL \vga|u4|ADDR[6]~31_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[6]~32\ : std_logic;
SIGNAL \vga|u4|ADDR[7]~33_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[7]~34\ : std_logic;
SIGNAL \vga|u4|ADDR[8]~35_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[8]~36\ : std_logic;
SIGNAL \vga|u4|ADDR[9]~37_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[9]~38\ : std_logic;
SIGNAL \vga|u4|ADDR[10]~39_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[10]~40\ : std_logic;
SIGNAL \vga|u4|ADDR[11]~41_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[11]~42\ : std_logic;
SIGNAL \vga|u4|ADDR[12]~43_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[12]~44\ : std_logic;
SIGNAL \vga|u4|ADDR[13]~45_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[13]~46\ : std_logic;
SIGNAL \vga|u4|ADDR[14]~47_combout\ : std_logic;
SIGNAL \vga|u4|g_data[0]~7_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[14]~48\ : std_logic;
SIGNAL \vga|u4|ADDR[15]~49_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[15]~50\ : std_logic;
SIGNAL \vga|u4|ADDR[16]~51_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[16]~52\ : std_logic;
SIGNAL \vga|u4|ADDR[17]~53_combout\ : std_logic;
SIGNAL \vga|u4|g_data[0]~4_combout\ : std_logic;
SIGNAL \vga|u4|g_data[0]~5_combout\ : std_logic;
SIGNAL \vga|u4|g_data[0]~6_combout\ : std_logic;
SIGNAL \vga|u4|g_data[0]~8_combout\ : std_logic;
SIGNAL \vga|u4|ADDR[17]~54\ : std_logic;
SIGNAL \vga|u4|ADDR[18]~55_combout\ : std_logic;
SIGNAL \vga|u4|g_data[0]~9_combout\ : std_logic;
SIGNAL \vga|u4|r_data[0]~4_combout\ : std_logic;
SIGNAL \vga|u4|g_data[0]~10_combout\ : std_logic;
SIGNAL \clk_div|counter\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \comb_3|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|counter\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \comb_3|chosen_code_coder\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_3|LEDR\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_3|LEDG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_3|read_ir|state_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_3|read_ir|oDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_3|read_ir|idle_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_3|read_ir|data_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_3|read_ir|data_buf\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_3|read_ir|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_3|read_ir|bitcount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|counting_down|second_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \comb_3|counting_down|current_digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|counting_down|countdown_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ready_to_play|LUT_INDEX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \vga|u4|ADDR\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \ready_to_play|mLCD_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ready_to_play|u0|Cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ready_to_play|mDLY\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \vga|r0|Cont\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ready_to_play|LUT_DATA\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \vga|u4|LTM_ins|v_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \select_your_power|oHEX_D1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \select_your_power|oHEX_D2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \vga|u4|LTM_ins|h_cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \vga|p1|altpll_component|auto_generated|clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \vga|r0|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \vga|r0|ALT_INV_oRESET~q\ : std_logic;
SIGNAL \select_your_power|ALT_INV_oHEX_D1[2]~0_combout\ : std_logic;
SIGNAL \clk_div|ALT_INV_clk_out~q\ : std_logic;
SIGNAL \comb_3|ALT_INV_state\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \display_countdown|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|read_ir|ALT_INV_idle_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|ALT_INV_state_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|ALT_INV_data_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|ALT_INV_state.DATAREAD~q\ : std_logic;

BEGIN

ww_clk_50Mhz <= clk_50Mhz;
ww_reset <= reset;
ww_ir_input <= ir_input;
ww_SW <= SW;
ww_PW <= PW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
lcd_data <= ww_lcd_data;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\vga|p1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_50Mhz~input_o\);

\vga|p1|altpll_component|auto_generated|clk\(0) <= \vga|p1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\vga|p1|altpll_component|auto_generated|clk\(1) <= \vga|p1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\vga|p1|altpll_component|auto_generated|clk\(2) <= \vga|p1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\vga|p1|altpll_component|auto_generated|clk\(3) <= \vga|p1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\vga|p1|altpll_component|auto_generated|clk\(4) <= \vga|p1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \vga|p1|altpll_component|auto_generated|clk\(0));

\ready_to_play|LUT_DATA[0]~91clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ready_to_play|LUT_DATA[0]~91_combout\);
\vga|r0|ALT_INV_Equal0~6_combout\ <= NOT \vga|r0|Equal0~6_combout\;
\vga|r0|ALT_INV_oRESET~q\ <= NOT \vga|r0|oRESET~q\;
\select_your_power|ALT_INV_oHEX_D1[2]~0_combout\ <= NOT \select_your_power|oHEX_D1[2]~0_combout\;
\clk_div|ALT_INV_clk_out~q\ <= NOT \clk_div|clk_out~q\;
\comb_3|ALT_INV_state\(3) <= NOT \comb_3|state\(3);
\comb_3|ALT_INV_state\(2) <= NOT \comb_3|state\(2);
\display_countdown|ALT_INV_WideOr0~0_combout\ <= NOT \display_countdown|WideOr0~0_combout\;
\vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\ <= NOT \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\;
\comb_3|read_ir|ALT_INV_idle_count_flag~q\ <= NOT \comb_3|read_ir|idle_count_flag~q\;
\comb_3|read_ir|ALT_INV_state_count_flag~q\ <= NOT \comb_3|read_ir|state_count_flag~q\;
\comb_3|read_ir|ALT_INV_data_count_flag~q\ <= NOT \comb_3|read_ir|data_count_flag~q\;
\comb_3|read_ir|ALT_INV_state.DATAREAD~q\ <= NOT \comb_3|read_ir|state.DATAREAD~q\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(10));

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(11));

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(12));

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(13));

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(14));

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(15));

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(16));

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR\(0),
	devoe => ww_devoe,
	o => ww_LEDR(17));

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDG\(0),
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(0),
	devoe => ww_devoe,
	o => ww_lcd_data(0));

-- Location: IOOBUF_X0_Y44_N9
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(1),
	devoe => ww_devoe,
	o => ww_lcd_data(1));

-- Location: IOOBUF_X0_Y44_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(2),
	devoe => ww_devoe,
	o => ww_lcd_data(2));

-- Location: IOOBUF_X0_Y49_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(3),
	devoe => ww_devoe,
	o => ww_lcd_data(3));

-- Location: IOOBUF_X0_Y54_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(4),
	devoe => ww_devoe,
	o => ww_lcd_data(4));

-- Location: IOOBUF_X0_Y55_N23
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(5),
	devoe => ww_devoe,
	o => ww_lcd_data(5));

-- Location: IOOBUF_X0_Y51_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(6),
	devoe => ww_devoe,
	o => ww_lcd_data(6));

-- Location: IOOBUF_X0_Y47_N2
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_DATA\(7),
	devoe => ww_devoe,
	o => ww_lcd_data(7));

-- Location: IOOBUF_X0_Y44_N23
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_lcd_rw);

-- Location: IOOBUF_X0_Y52_N2
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|u0|LCD_EN~q\,
	devoe => ww_devoe,
	o => ww_lcd_en);

-- Location: IOOBUF_X0_Y44_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ready_to_play|mLCD_RS~q\,
	devoe => ww_devoe,
	o => ww_lcd_rs);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D1\(0),
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D1\(2),
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D1\(0),
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D1\(4),
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D1\(5),
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D1\(6),
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D2\(0),
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D2\(2),
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D2\(0),
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D2\(4),
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D2\(5),
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \select_your_power|oHEX_D2\(6),
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_countdown|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_countdown|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_countdown|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_countdown|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_countdown|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_countdown|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display_countdown|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|oBLANK_n~q\,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|oHS~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|oVS~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|r_data[0]~4_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga|u4|g_data[0]~10_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOIBUF_X0_Y36_N15
\clk_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: CLKCTRL_G4
\clk_50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X69_Y35_N2
\comb_3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~0_combout\ = \comb_3|counter\(0) $ (VCC)
-- \comb_3|Add0~1\ = CARRY(\comb_3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(0),
	datad => VCC,
	combout => \comb_3|Add0~0_combout\,
	cout => \comb_3|Add0~1\);

-- Location: LCCOMB_X68_Y35_N16
\comb_3|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux33~0_combout\ = (\comb_3|Add0~0_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~0_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux33~0_combout\);

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

-- Location: LCCOMB_X68_Y36_N26
\comb_3|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|state~1_combout\ = (\SW[3]~input_o\) # ((!\SW[4]~input_o\) # (!\comb_3|Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \comb_3|Equal2~9_combout\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|state~1_combout\);

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

-- Location: LCCOMB_X70_Y35_N2
\comb_3|counting_down|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal0~0_combout\ = (!\comb_3|state\(2) & (\comb_3|state\(0) & (\comb_3|state\(3) & \comb_3|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|state\(0),
	datac => \comb_3|state\(3),
	datad => \comb_3|state\(1),
	combout => \comb_3|counting_down|Equal0~0_combout\);

-- Location: LCCOMB_X80_Y21_N6
\comb_3|counting_down|second_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[0]~26_combout\ = \comb_3|counting_down|second_counter\(0) $ (VCC)
-- \comb_3|counting_down|second_counter[0]~27\ = CARRY(\comb_3|counting_down|second_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(0),
	datad => VCC,
	combout => \comb_3|counting_down|second_counter[0]~26_combout\,
	cout => \comb_3|counting_down|second_counter[0]~27\);

-- Location: LCCOMB_X82_Y20_N26
\comb_3|counting_down|second_counter[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[21]~28_combout\ = (!\comb_3|counting_down|Equal1~8_combout\) # (!\comb_3|counting_down|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal0~0_combout\,
	datad => \comb_3|counting_down|Equal1~8_combout\,
	combout => \comb_3|counting_down|second_counter[21]~28_combout\);

-- Location: FF_X80_Y21_N7
\comb_3|counting_down|second_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[0]~26_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(0));

-- Location: LCCOMB_X80_Y21_N8
\comb_3|counting_down|second_counter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[1]~29_combout\ = (\comb_3|counting_down|second_counter\(1) & (!\comb_3|counting_down|second_counter[0]~27\)) # (!\comb_3|counting_down|second_counter\(1) & ((\comb_3|counting_down|second_counter[0]~27\) # (GND)))
-- \comb_3|counting_down|second_counter[1]~30\ = CARRY((!\comb_3|counting_down|second_counter[0]~27\) # (!\comb_3|counting_down|second_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(1),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[0]~27\,
	combout => \comb_3|counting_down|second_counter[1]~29_combout\,
	cout => \comb_3|counting_down|second_counter[1]~30\);

-- Location: FF_X80_Y21_N9
\comb_3|counting_down|second_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[1]~29_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(1));

-- Location: LCCOMB_X80_Y21_N10
\comb_3|counting_down|second_counter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[2]~31_combout\ = (\comb_3|counting_down|second_counter\(2) & (\comb_3|counting_down|second_counter[1]~30\ $ (GND))) # (!\comb_3|counting_down|second_counter\(2) & (!\comb_3|counting_down|second_counter[1]~30\ & VCC))
-- \comb_3|counting_down|second_counter[2]~32\ = CARRY((\comb_3|counting_down|second_counter\(2) & !\comb_3|counting_down|second_counter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(2),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[1]~30\,
	combout => \comb_3|counting_down|second_counter[2]~31_combout\,
	cout => \comb_3|counting_down|second_counter[2]~32\);

-- Location: FF_X80_Y21_N11
\comb_3|counting_down|second_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[2]~31_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(2));

-- Location: LCCOMB_X80_Y21_N12
\comb_3|counting_down|second_counter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[3]~33_combout\ = (\comb_3|counting_down|second_counter\(3) & (!\comb_3|counting_down|second_counter[2]~32\)) # (!\comb_3|counting_down|second_counter\(3) & ((\comb_3|counting_down|second_counter[2]~32\) # (GND)))
-- \comb_3|counting_down|second_counter[3]~34\ = CARRY((!\comb_3|counting_down|second_counter[2]~32\) # (!\comb_3|counting_down|second_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(3),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[2]~32\,
	combout => \comb_3|counting_down|second_counter[3]~33_combout\,
	cout => \comb_3|counting_down|second_counter[3]~34\);

-- Location: FF_X80_Y21_N13
\comb_3|counting_down|second_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[3]~33_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(3));

-- Location: LCCOMB_X80_Y21_N14
\comb_3|counting_down|second_counter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[4]~35_combout\ = (\comb_3|counting_down|second_counter\(4) & (\comb_3|counting_down|second_counter[3]~34\ $ (GND))) # (!\comb_3|counting_down|second_counter\(4) & (!\comb_3|counting_down|second_counter[3]~34\ & VCC))
-- \comb_3|counting_down|second_counter[4]~36\ = CARRY((\comb_3|counting_down|second_counter\(4) & !\comb_3|counting_down|second_counter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(4),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[3]~34\,
	combout => \comb_3|counting_down|second_counter[4]~35_combout\,
	cout => \comb_3|counting_down|second_counter[4]~36\);

-- Location: FF_X80_Y21_N15
\comb_3|counting_down|second_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[4]~35_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(4));

-- Location: LCCOMB_X80_Y21_N16
\comb_3|counting_down|second_counter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[5]~37_combout\ = (\comb_3|counting_down|second_counter\(5) & (!\comb_3|counting_down|second_counter[4]~36\)) # (!\comb_3|counting_down|second_counter\(5) & ((\comb_3|counting_down|second_counter[4]~36\) # (GND)))
-- \comb_3|counting_down|second_counter[5]~38\ = CARRY((!\comb_3|counting_down|second_counter[4]~36\) # (!\comb_3|counting_down|second_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(5),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[4]~36\,
	combout => \comb_3|counting_down|second_counter[5]~37_combout\,
	cout => \comb_3|counting_down|second_counter[5]~38\);

-- Location: FF_X80_Y21_N17
\comb_3|counting_down|second_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[5]~37_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(5));

-- Location: LCCOMB_X80_Y21_N18
\comb_3|counting_down|second_counter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[6]~39_combout\ = (\comb_3|counting_down|second_counter\(6) & (\comb_3|counting_down|second_counter[5]~38\ $ (GND))) # (!\comb_3|counting_down|second_counter\(6) & (!\comb_3|counting_down|second_counter[5]~38\ & VCC))
-- \comb_3|counting_down|second_counter[6]~40\ = CARRY((\comb_3|counting_down|second_counter\(6) & !\comb_3|counting_down|second_counter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(6),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[5]~38\,
	combout => \comb_3|counting_down|second_counter[6]~39_combout\,
	cout => \comb_3|counting_down|second_counter[6]~40\);

-- Location: FF_X80_Y21_N19
\comb_3|counting_down|second_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[6]~39_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(6));

-- Location: LCCOMB_X80_Y21_N20
\comb_3|counting_down|second_counter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[7]~41_combout\ = (\comb_3|counting_down|second_counter\(7) & (!\comb_3|counting_down|second_counter[6]~40\)) # (!\comb_3|counting_down|second_counter\(7) & ((\comb_3|counting_down|second_counter[6]~40\) # (GND)))
-- \comb_3|counting_down|second_counter[7]~42\ = CARRY((!\comb_3|counting_down|second_counter[6]~40\) # (!\comb_3|counting_down|second_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(7),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[6]~40\,
	combout => \comb_3|counting_down|second_counter[7]~41_combout\,
	cout => \comb_3|counting_down|second_counter[7]~42\);

-- Location: FF_X80_Y21_N21
\comb_3|counting_down|second_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[7]~41_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(7));

-- Location: LCCOMB_X80_Y21_N22
\comb_3|counting_down|second_counter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[8]~43_combout\ = (\comb_3|counting_down|second_counter\(8) & (\comb_3|counting_down|second_counter[7]~42\ $ (GND))) # (!\comb_3|counting_down|second_counter\(8) & (!\comb_3|counting_down|second_counter[7]~42\ & VCC))
-- \comb_3|counting_down|second_counter[8]~44\ = CARRY((\comb_3|counting_down|second_counter\(8) & !\comb_3|counting_down|second_counter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(8),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[7]~42\,
	combout => \comb_3|counting_down|second_counter[8]~43_combout\,
	cout => \comb_3|counting_down|second_counter[8]~44\);

-- Location: FF_X80_Y21_N23
\comb_3|counting_down|second_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[8]~43_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(8));

-- Location: LCCOMB_X80_Y21_N24
\comb_3|counting_down|second_counter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[9]~45_combout\ = (\comb_3|counting_down|second_counter\(9) & (!\comb_3|counting_down|second_counter[8]~44\)) # (!\comb_3|counting_down|second_counter\(9) & ((\comb_3|counting_down|second_counter[8]~44\) # (GND)))
-- \comb_3|counting_down|second_counter[9]~46\ = CARRY((!\comb_3|counting_down|second_counter[8]~44\) # (!\comb_3|counting_down|second_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(9),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[8]~44\,
	combout => \comb_3|counting_down|second_counter[9]~45_combout\,
	cout => \comb_3|counting_down|second_counter[9]~46\);

-- Location: FF_X80_Y21_N25
\comb_3|counting_down|second_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[9]~45_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(9));

-- Location: LCCOMB_X80_Y21_N26
\comb_3|counting_down|second_counter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[10]~47_combout\ = (\comb_3|counting_down|second_counter\(10) & (\comb_3|counting_down|second_counter[9]~46\ $ (GND))) # (!\comb_3|counting_down|second_counter\(10) & (!\comb_3|counting_down|second_counter[9]~46\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[10]~48\ = CARRY((\comb_3|counting_down|second_counter\(10) & !\comb_3|counting_down|second_counter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(10),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[9]~46\,
	combout => \comb_3|counting_down|second_counter[10]~47_combout\,
	cout => \comb_3|counting_down|second_counter[10]~48\);

-- Location: FF_X80_Y21_N27
\comb_3|counting_down|second_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[10]~47_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(10));

-- Location: LCCOMB_X80_Y21_N28
\comb_3|counting_down|second_counter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[11]~49_combout\ = (\comb_3|counting_down|second_counter\(11) & (!\comb_3|counting_down|second_counter[10]~48\)) # (!\comb_3|counting_down|second_counter\(11) & ((\comb_3|counting_down|second_counter[10]~48\) # (GND)))
-- \comb_3|counting_down|second_counter[11]~50\ = CARRY((!\comb_3|counting_down|second_counter[10]~48\) # (!\comb_3|counting_down|second_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(11),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[10]~48\,
	combout => \comb_3|counting_down|second_counter[11]~49_combout\,
	cout => \comb_3|counting_down|second_counter[11]~50\);

-- Location: FF_X80_Y21_N29
\comb_3|counting_down|second_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[11]~49_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(11));

-- Location: LCCOMB_X80_Y21_N30
\comb_3|counting_down|second_counter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[12]~51_combout\ = (\comb_3|counting_down|second_counter\(12) & (\comb_3|counting_down|second_counter[11]~50\ $ (GND))) # (!\comb_3|counting_down|second_counter\(12) & (!\comb_3|counting_down|second_counter[11]~50\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[12]~52\ = CARRY((\comb_3|counting_down|second_counter\(12) & !\comb_3|counting_down|second_counter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(12),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[11]~50\,
	combout => \comb_3|counting_down|second_counter[12]~51_combout\,
	cout => \comb_3|counting_down|second_counter[12]~52\);

-- Location: FF_X80_Y21_N31
\comb_3|counting_down|second_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[12]~51_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(12));

-- Location: LCCOMB_X80_Y20_N0
\comb_3|counting_down|second_counter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[13]~53_combout\ = (\comb_3|counting_down|second_counter\(13) & (!\comb_3|counting_down|second_counter[12]~52\)) # (!\comb_3|counting_down|second_counter\(13) & ((\comb_3|counting_down|second_counter[12]~52\) # (GND)))
-- \comb_3|counting_down|second_counter[13]~54\ = CARRY((!\comb_3|counting_down|second_counter[12]~52\) # (!\comb_3|counting_down|second_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(13),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[12]~52\,
	combout => \comb_3|counting_down|second_counter[13]~53_combout\,
	cout => \comb_3|counting_down|second_counter[13]~54\);

-- Location: FF_X80_Y20_N1
\comb_3|counting_down|second_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[13]~53_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(13));

-- Location: LCCOMB_X80_Y20_N2
\comb_3|counting_down|second_counter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[14]~55_combout\ = (\comb_3|counting_down|second_counter\(14) & (\comb_3|counting_down|second_counter[13]~54\ $ (GND))) # (!\comb_3|counting_down|second_counter\(14) & (!\comb_3|counting_down|second_counter[13]~54\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[14]~56\ = CARRY((\comb_3|counting_down|second_counter\(14) & !\comb_3|counting_down|second_counter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(14),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[13]~54\,
	combout => \comb_3|counting_down|second_counter[14]~55_combout\,
	cout => \comb_3|counting_down|second_counter[14]~56\);

-- Location: FF_X80_Y20_N3
\comb_3|counting_down|second_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[14]~55_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(14));

-- Location: LCCOMB_X80_Y20_N4
\comb_3|counting_down|second_counter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[15]~57_combout\ = (\comb_3|counting_down|second_counter\(15) & (!\comb_3|counting_down|second_counter[14]~56\)) # (!\comb_3|counting_down|second_counter\(15) & ((\comb_3|counting_down|second_counter[14]~56\) # (GND)))
-- \comb_3|counting_down|second_counter[15]~58\ = CARRY((!\comb_3|counting_down|second_counter[14]~56\) # (!\comb_3|counting_down|second_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(15),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[14]~56\,
	combout => \comb_3|counting_down|second_counter[15]~57_combout\,
	cout => \comb_3|counting_down|second_counter[15]~58\);

-- Location: FF_X80_Y20_N5
\comb_3|counting_down|second_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[15]~57_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(15));

-- Location: LCCOMB_X80_Y20_N30
\comb_3|counting_down|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~3_combout\ = (((!\comb_3|counting_down|second_counter\(13)) # (!\comb_3|counting_down|second_counter\(15))) # (!\comb_3|counting_down|second_counter\(14))) # (!\comb_3|counting_down|second_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(12),
	datab => \comb_3|counting_down|second_counter\(14),
	datac => \comb_3|counting_down|second_counter\(15),
	datad => \comb_3|counting_down|second_counter\(13),
	combout => \comb_3|counting_down|Equal1~3_combout\);

-- Location: LCCOMB_X80_Y21_N4
\comb_3|counting_down|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~2_combout\ = (\comb_3|counting_down|second_counter\(10)) # ((\comb_3|counting_down|second_counter\(11)) # ((\comb_3|counting_down|second_counter\(8)) # (\comb_3|counting_down|second_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(10),
	datab => \comb_3|counting_down|second_counter\(11),
	datac => \comb_3|counting_down|second_counter\(8),
	datad => \comb_3|counting_down|second_counter\(9),
	combout => \comb_3|counting_down|Equal1~2_combout\);

-- Location: LCCOMB_X80_Y21_N2
\comb_3|counting_down|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~1_combout\ = (((\comb_3|counting_down|second_counter\(7)) # (!\comb_3|counting_down|second_counter\(4))) # (!\comb_3|counting_down|second_counter\(5))) # (!\comb_3|counting_down|second_counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(6),
	datab => \comb_3|counting_down|second_counter\(5),
	datac => \comb_3|counting_down|second_counter\(4),
	datad => \comb_3|counting_down|second_counter\(7),
	combout => \comb_3|counting_down|Equal1~1_combout\);

-- Location: LCCOMB_X80_Y21_N0
\comb_3|counting_down|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~0_combout\ = (((!\comb_3|counting_down|second_counter\(0)) # (!\comb_3|counting_down|second_counter\(1))) # (!\comb_3|counting_down|second_counter\(3))) # (!\comb_3|counting_down|second_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(2),
	datab => \comb_3|counting_down|second_counter\(3),
	datac => \comb_3|counting_down|second_counter\(1),
	datad => \comb_3|counting_down|second_counter\(0),
	combout => \comb_3|counting_down|Equal1~0_combout\);

-- Location: LCCOMB_X80_Y20_N28
\comb_3|counting_down|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~4_combout\ = (\comb_3|counting_down|Equal1~3_combout\) # ((\comb_3|counting_down|Equal1~2_combout\) # ((\comb_3|counting_down|Equal1~1_combout\) # (\comb_3|counting_down|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~3_combout\,
	datab => \comb_3|counting_down|Equal1~2_combout\,
	datac => \comb_3|counting_down|Equal1~1_combout\,
	datad => \comb_3|counting_down|Equal1~0_combout\,
	combout => \comb_3|counting_down|Equal1~4_combout\);

-- Location: LCCOMB_X80_Y20_N6
\comb_3|counting_down|second_counter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[16]~59_combout\ = (\comb_3|counting_down|second_counter\(16) & (\comb_3|counting_down|second_counter[15]~58\ $ (GND))) # (!\comb_3|counting_down|second_counter\(16) & (!\comb_3|counting_down|second_counter[15]~58\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[16]~60\ = CARRY((\comb_3|counting_down|second_counter\(16) & !\comb_3|counting_down|second_counter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(16),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[15]~58\,
	combout => \comb_3|counting_down|second_counter[16]~59_combout\,
	cout => \comb_3|counting_down|second_counter[16]~60\);

-- Location: FF_X80_Y20_N7
\comb_3|counting_down|second_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[16]~59_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(16));

-- Location: LCCOMB_X80_Y20_N8
\comb_3|counting_down|second_counter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[17]~61_combout\ = (\comb_3|counting_down|second_counter\(17) & (!\comb_3|counting_down|second_counter[16]~60\)) # (!\comb_3|counting_down|second_counter\(17) & ((\comb_3|counting_down|second_counter[16]~60\) # (GND)))
-- \comb_3|counting_down|second_counter[17]~62\ = CARRY((!\comb_3|counting_down|second_counter[16]~60\) # (!\comb_3|counting_down|second_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(17),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[16]~60\,
	combout => \comb_3|counting_down|second_counter[17]~61_combout\,
	cout => \comb_3|counting_down|second_counter[17]~62\);

-- Location: FF_X80_Y20_N9
\comb_3|counting_down|second_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[17]~61_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(17));

-- Location: LCCOMB_X80_Y20_N10
\comb_3|counting_down|second_counter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[18]~63_combout\ = (\comb_3|counting_down|second_counter\(18) & (\comb_3|counting_down|second_counter[17]~62\ $ (GND))) # (!\comb_3|counting_down|second_counter\(18) & (!\comb_3|counting_down|second_counter[17]~62\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[18]~64\ = CARRY((\comb_3|counting_down|second_counter\(18) & !\comb_3|counting_down|second_counter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(18),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[17]~62\,
	combout => \comb_3|counting_down|second_counter[18]~63_combout\,
	cout => \comb_3|counting_down|second_counter[18]~64\);

-- Location: FF_X80_Y20_N11
\comb_3|counting_down|second_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[18]~63_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(18));

-- Location: LCCOMB_X80_Y20_N12
\comb_3|counting_down|second_counter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[19]~65_combout\ = (\comb_3|counting_down|second_counter\(19) & (!\comb_3|counting_down|second_counter[18]~64\)) # (!\comb_3|counting_down|second_counter\(19) & ((\comb_3|counting_down|second_counter[18]~64\) # (GND)))
-- \comb_3|counting_down|second_counter[19]~66\ = CARRY((!\comb_3|counting_down|second_counter[18]~64\) # (!\comb_3|counting_down|second_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(19),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[18]~64\,
	combout => \comb_3|counting_down|second_counter[19]~65_combout\,
	cout => \comb_3|counting_down|second_counter[19]~66\);

-- Location: FF_X80_Y20_N13
\comb_3|counting_down|second_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[19]~65_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(19));

-- Location: LCCOMB_X80_Y20_N14
\comb_3|counting_down|second_counter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[20]~67_combout\ = (\comb_3|counting_down|second_counter\(20) & (\comb_3|counting_down|second_counter[19]~66\ $ (GND))) # (!\comb_3|counting_down|second_counter\(20) & (!\comb_3|counting_down|second_counter[19]~66\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[20]~68\ = CARRY((\comb_3|counting_down|second_counter\(20) & !\comb_3|counting_down|second_counter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(20),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[19]~66\,
	combout => \comb_3|counting_down|second_counter[20]~67_combout\,
	cout => \comb_3|counting_down|second_counter[20]~68\);

-- Location: FF_X80_Y20_N15
\comb_3|counting_down|second_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[20]~67_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(20));

-- Location: LCCOMB_X80_Y20_N16
\comb_3|counting_down|second_counter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[21]~69_combout\ = (\comb_3|counting_down|second_counter\(21) & (!\comb_3|counting_down|second_counter[20]~68\)) # (!\comb_3|counting_down|second_counter\(21) & ((\comb_3|counting_down|second_counter[20]~68\) # (GND)))
-- \comb_3|counting_down|second_counter[21]~70\ = CARRY((!\comb_3|counting_down|second_counter[20]~68\) # (!\comb_3|counting_down|second_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(21),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[20]~68\,
	combout => \comb_3|counting_down|second_counter[21]~69_combout\,
	cout => \comb_3|counting_down|second_counter[21]~70\);

-- Location: FF_X80_Y20_N17
\comb_3|counting_down|second_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[21]~69_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(21));

-- Location: LCCOMB_X80_Y20_N18
\comb_3|counting_down|second_counter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[22]~71_combout\ = (\comb_3|counting_down|second_counter\(22) & (\comb_3|counting_down|second_counter[21]~70\ $ (GND))) # (!\comb_3|counting_down|second_counter\(22) & (!\comb_3|counting_down|second_counter[21]~70\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[22]~72\ = CARRY((\comb_3|counting_down|second_counter\(22) & !\comb_3|counting_down|second_counter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(22),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[21]~70\,
	combout => \comb_3|counting_down|second_counter[22]~71_combout\,
	cout => \comb_3|counting_down|second_counter[22]~72\);

-- Location: FF_X80_Y20_N19
\comb_3|counting_down|second_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[22]~71_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(22));

-- Location: LCCOMB_X80_Y20_N20
\comb_3|counting_down|second_counter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[23]~73_combout\ = (\comb_3|counting_down|second_counter\(23) & (!\comb_3|counting_down|second_counter[22]~72\)) # (!\comb_3|counting_down|second_counter\(23) & ((\comb_3|counting_down|second_counter[22]~72\) # (GND)))
-- \comb_3|counting_down|second_counter[23]~74\ = CARRY((!\comb_3|counting_down|second_counter[22]~72\) # (!\comb_3|counting_down|second_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(23),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[22]~72\,
	combout => \comb_3|counting_down|second_counter[23]~73_combout\,
	cout => \comb_3|counting_down|second_counter[23]~74\);

-- Location: FF_X80_Y20_N21
\comb_3|counting_down|second_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[23]~73_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(23));

-- Location: LCCOMB_X80_Y20_N22
\comb_3|counting_down|second_counter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[24]~75_combout\ = (\comb_3|counting_down|second_counter\(24) & (\comb_3|counting_down|second_counter[23]~74\ $ (GND))) # (!\comb_3|counting_down|second_counter\(24) & (!\comb_3|counting_down|second_counter[23]~74\ & 
-- VCC))
-- \comb_3|counting_down|second_counter[24]~76\ = CARRY((\comb_3|counting_down|second_counter\(24) & !\comb_3|counting_down|second_counter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(24),
	datad => VCC,
	cin => \comb_3|counting_down|second_counter[23]~74\,
	combout => \comb_3|counting_down|second_counter[24]~75_combout\,
	cout => \comb_3|counting_down|second_counter[24]~76\);

-- Location: FF_X80_Y20_N23
\comb_3|counting_down|second_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[24]~75_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(24));

-- Location: LCCOMB_X80_Y20_N24
\comb_3|counting_down|second_counter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter[25]~77_combout\ = \comb_3|counting_down|second_counter[24]~76\ $ (\comb_3|counting_down|second_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|counting_down|second_counter\(25),
	cin => \comb_3|counting_down|second_counter[24]~76\,
	combout => \comb_3|counting_down|second_counter[25]~77_combout\);

-- Location: FF_X80_Y20_N25
\comb_3|counting_down|second_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter[25]~77_combout\,
	sclr => \comb_3|counting_down|second_counter[21]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(25));

-- Location: LCCOMB_X81_Y20_N2
\comb_3|counting_down|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~7_combout\ = (\comb_3|counting_down|second_counter\(24)) # (!\comb_3|counting_down|second_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(25),
	datad => \comb_3|counting_down|second_counter\(24),
	combout => \comb_3|counting_down|Equal1~7_combout\);

-- Location: LCCOMB_X80_Y20_N26
\comb_3|counting_down|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~6_combout\ = (((!\comb_3|counting_down|second_counter\(21)) # (!\comb_3|counting_down|second_counter\(20))) # (!\comb_3|counting_down|second_counter\(22))) # (!\comb_3|counting_down|second_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(23),
	datab => \comb_3|counting_down|second_counter\(22),
	datac => \comb_3|counting_down|second_counter\(20),
	datad => \comb_3|counting_down|second_counter\(21),
	combout => \comb_3|counting_down|Equal1~6_combout\);

-- Location: LCCOMB_X81_Y20_N0
\comb_3|counting_down|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~5_combout\ = (\comb_3|counting_down|second_counter\(18)) # (((\comb_3|counting_down|second_counter\(16)) # (!\comb_3|counting_down|second_counter\(17))) # (!\comb_3|counting_down|second_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(18),
	datab => \comb_3|counting_down|second_counter\(19),
	datac => \comb_3|counting_down|second_counter\(16),
	datad => \comb_3|counting_down|second_counter\(17),
	combout => \comb_3|counting_down|Equal1~5_combout\);

-- Location: LCCOMB_X81_Y20_N24
\comb_3|counting_down|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~8_combout\ = (\comb_3|counting_down|Equal1~4_combout\) # ((\comb_3|counting_down|Equal1~7_combout\) # ((\comb_3|counting_down|Equal1~6_combout\) # (\comb_3|counting_down|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~4_combout\,
	datab => \comb_3|counting_down|Equal1~7_combout\,
	datac => \comb_3|counting_down|Equal1~6_combout\,
	datad => \comb_3|counting_down|Equal1~5_combout\,
	combout => \comb_3|counting_down|Equal1~8_combout\);

-- Location: LCCOMB_X82_Y20_N16
\comb_3|counting_down|countdown_val[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[2]~1_combout\ = (\comb_3|counting_down|Equal0~0_combout\ & ((\comb_3|counting_down|flag~0_combout\) # (\comb_3|counting_down|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|flag~0_combout\,
	datab => \comb_3|counting_down|Equal1~8_combout\,
	datac => \comb_3|counting_down|Equal0~0_combout\,
	combout => \comb_3|counting_down|countdown_val[2]~1_combout\);

-- Location: LCCOMB_X82_Y20_N28
\comb_3|counting_down|countdown_val[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[0]~0_combout\ = (\comb_3|counting_down|Equal0~0_combout\ & (\comb_3|counting_down|countdown_val\(0) $ (((!\comb_3|counting_down|flag~0_combout\ & !\comb_3|counting_down|Equal1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|flag~0_combout\,
	datab => \comb_3|counting_down|Equal0~0_combout\,
	datac => \comb_3|counting_down|countdown_val\(0),
	datad => \comb_3|counting_down|Equal1~8_combout\,
	combout => \comb_3|counting_down|countdown_val[0]~0_combout\);

-- Location: FF_X82_Y20_N29
\comb_3|counting_down|countdown_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(0));

-- Location: LCCOMB_X82_Y20_N22
\comb_3|counting_down|countdown_val[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[1]~2_combout\ = (\comb_3|counting_down|countdown_val[2]~1_combout\ & (((\comb_3|counting_down|countdown_val\(1))))) # (!\comb_3|counting_down|countdown_val[2]~1_combout\ & (\comb_3|counting_down|Equal0~0_combout\ & 
-- (\comb_3|counting_down|countdown_val\(1) $ (!\comb_3|counting_down|countdown_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal0~0_combout\,
	datab => \comb_3|counting_down|countdown_val[2]~1_combout\,
	datac => \comb_3|counting_down|countdown_val\(1),
	datad => \comb_3|counting_down|countdown_val\(0),
	combout => \comb_3|counting_down|countdown_val[1]~2_combout\);

-- Location: FF_X82_Y20_N23
\comb_3|counting_down|countdown_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(1));

-- Location: LCCOMB_X82_Y20_N10
\comb_3|counting_down|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add0~0_combout\ = \comb_3|counting_down|countdown_val\(2) $ (((\comb_3|counting_down|countdown_val\(0)) # (!\comb_3|counting_down|countdown_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|countdown_val\(2),
	datac => \comb_3|counting_down|countdown_val\(1),
	datad => \comb_3|counting_down|countdown_val\(0),
	combout => \comb_3|counting_down|Add0~0_combout\);

-- Location: LCCOMB_X82_Y20_N20
\comb_3|counting_down|countdown_val[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[2]~3_combout\ = (\comb_3|counting_down|countdown_val[2]~1_combout\ & (((\comb_3|counting_down|countdown_val\(2))))) # (!\comb_3|counting_down|countdown_val[2]~1_combout\ & (!\comb_3|counting_down|Add0~0_combout\ & 
-- (\comb_3|counting_down|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Add0~0_combout\,
	datab => \comb_3|counting_down|Equal0~0_combout\,
	datac => \comb_3|counting_down|countdown_val\(2),
	datad => \comb_3|counting_down|countdown_val[2]~1_combout\,
	combout => \comb_3|counting_down|countdown_val[2]~3_combout\);

-- Location: FF_X82_Y20_N21
\comb_3|counting_down|countdown_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(2));

-- Location: LCCOMB_X82_Y20_N24
\comb_3|counting_down|flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|flag~1_combout\ = (!\comb_3|counting_down|countdown_val\(2) & (\comb_3|counting_down|countdown_val\(1) & !\comb_3|counting_down|countdown_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|countdown_val\(2),
	datac => \comb_3|counting_down|countdown_val\(1),
	datad => \comb_3|counting_down|countdown_val\(0),
	combout => \comb_3|counting_down|flag~1_combout\);

-- Location: LCCOMB_X82_Y20_N18
\comb_3|counting_down|countdown_val[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[3]~4_combout\ = (\comb_3|counting_down|Equal0~0_combout\ & ((\comb_3|counting_down|countdown_val\(3)) # ((!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|flag~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal0~0_combout\,
	datab => \comb_3|counting_down|Equal1~8_combout\,
	datac => \comb_3|counting_down|countdown_val\(3),
	datad => \comb_3|counting_down|flag~1_combout\,
	combout => \comb_3|counting_down|countdown_val[3]~4_combout\);

-- Location: FF_X82_Y20_N19
\comb_3|counting_down|countdown_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(3));

-- Location: LCCOMB_X82_Y20_N30
\comb_3|counting_down|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|flag~0_combout\ = (\comb_3|counting_down|countdown_val\(3) & (!\comb_3|counting_down|countdown_val\(2) & (\comb_3|counting_down|countdown_val\(1) & !\comb_3|counting_down|countdown_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|countdown_val\(3),
	datab => \comb_3|counting_down|countdown_val\(2),
	datac => \comb_3|counting_down|countdown_val\(1),
	datad => \comb_3|counting_down|countdown_val\(0),
	combout => \comb_3|counting_down|flag~0_combout\);

-- Location: LCCOMB_X82_Y20_N8
\comb_3|counting_down|flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|flag~2_combout\ = (\comb_3|counting_down|Equal0~0_combout\ & (\comb_3|counting_down|flag~0_combout\ & ((!\comb_3|counting_down|Equal1~8_combout\)))) # (!\comb_3|counting_down|Equal0~0_combout\ & (((\comb_3|counting_down|flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|flag~0_combout\,
	datab => \comb_3|counting_down|Equal0~0_combout\,
	datac => \comb_3|counting_down|flag~q\,
	datad => \comb_3|counting_down|Equal1~8_combout\,
	combout => \comb_3|counting_down|flag~2_combout\);

-- Location: FF_X82_Y20_N9
\comb_3|counting_down|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|flag~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|flag~q\);

-- Location: LCCOMB_X70_Y35_N4
\comb_3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~1_combout\ = (\comb_3|state\(3) & ((\SW[6]~input_o\) # ((\comb_3|counting_down|flag~q\)))) # (!\comb_3|state\(3) & (((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \comb_3|state\(3),
	datac => \comb_3|counting_down|flag~q\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|Mux1~1_combout\);

-- Location: LCCOMB_X63_Y35_N14
\comb_3|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~2_combout\ = (\comb_3|Mux1~1_combout\ & (\comb_3|state\(3) $ ((!\comb_3|state\(0))))) # (!\comb_3|Mux1~1_combout\ & (!\comb_3|state\(3) & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|Mux1~1_combout\,
	datac => \comb_3|state\(0),
	datad => \SW[3]~input_o\,
	combout => \comb_3|Mux1~2_combout\);

-- Location: LCCOMB_X77_Y40_N8
\comb_3|read_ir|bitcount[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[0]~6_combout\ = \comb_3|read_ir|bitcount\(0) $ (VCC)
-- \comb_3|read_ir|bitcount[0]~7\ = CARRY(\comb_3|read_ir|bitcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|bitcount\(0),
	datad => VCC,
	combout => \comb_3|read_ir|bitcount[0]~6_combout\,
	cout => \comb_3|read_ir|bitcount[0]~7\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X79_Y39_N14
\comb_3|read_ir|idle_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[0]~18_combout\ = \comb_3|read_ir|idle_count\(0) $ (VCC)
-- \comb_3|read_ir|idle_count[0]~19\ = CARRY(\comb_3|read_ir|idle_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(0),
	datad => VCC,
	combout => \comb_3|read_ir|idle_count[0]~18_combout\,
	cout => \comb_3|read_ir|idle_count[0]~19\);

-- Location: IOIBUF_X56_Y0_N1
\ir_input~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_input,
	o => \ir_input~input_o\);

-- Location: LCCOMB_X81_Y40_N14
\comb_3|read_ir|data_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[0]~18_combout\ = \comb_3|read_ir|data_count\(0) $ (VCC)
-- \comb_3|read_ir|data_count[0]~19\ = CARRY(\comb_3|read_ir|data_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(0),
	datad => VCC,
	combout => \comb_3|read_ir|data_count[0]~18_combout\,
	cout => \comb_3|read_ir|data_count[0]~19\);

-- Location: LCCOMB_X79_Y38_N24
\comb_3|read_ir|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|always5~1_combout\ = (\ir_input~input_o\ & \comb_3|read_ir|state.DATAREAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_input~input_o\,
	datad => \comb_3|read_ir|state.DATAREAD~q\,
	combout => \comb_3|read_ir|always5~1_combout\);

-- Location: FF_X79_Y38_N25
\comb_3|read_ir|data_count_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|always5~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count_flag~q\);

-- Location: FF_X81_Y40_N15
\comb_3|read_ir|data_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[0]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(0));

-- Location: LCCOMB_X81_Y40_N16
\comb_3|read_ir|data_count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[1]~20_combout\ = (\comb_3|read_ir|data_count\(1) & (!\comb_3|read_ir|data_count[0]~19\)) # (!\comb_3|read_ir|data_count\(1) & ((\comb_3|read_ir|data_count[0]~19\) # (GND)))
-- \comb_3|read_ir|data_count[1]~21\ = CARRY((!\comb_3|read_ir|data_count[0]~19\) # (!\comb_3|read_ir|data_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(1),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[0]~19\,
	combout => \comb_3|read_ir|data_count[1]~20_combout\,
	cout => \comb_3|read_ir|data_count[1]~21\);

-- Location: FF_X81_Y40_N17
\comb_3|read_ir|data_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[1]~20_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(1));

-- Location: LCCOMB_X81_Y40_N18
\comb_3|read_ir|data_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[2]~22_combout\ = (\comb_3|read_ir|data_count\(2) & (\comb_3|read_ir|data_count[1]~21\ $ (GND))) # (!\comb_3|read_ir|data_count\(2) & (!\comb_3|read_ir|data_count[1]~21\ & VCC))
-- \comb_3|read_ir|data_count[2]~23\ = CARRY((\comb_3|read_ir|data_count\(2) & !\comb_3|read_ir|data_count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(2),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[1]~21\,
	combout => \comb_3|read_ir|data_count[2]~22_combout\,
	cout => \comb_3|read_ir|data_count[2]~23\);

-- Location: FF_X81_Y40_N19
\comb_3|read_ir|data_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[2]~22_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(2));

-- Location: LCCOMB_X81_Y40_N20
\comb_3|read_ir|data_count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[3]~24_combout\ = (\comb_3|read_ir|data_count\(3) & (!\comb_3|read_ir|data_count[2]~23\)) # (!\comb_3|read_ir|data_count\(3) & ((\comb_3|read_ir|data_count[2]~23\) # (GND)))
-- \comb_3|read_ir|data_count[3]~25\ = CARRY((!\comb_3|read_ir|data_count[2]~23\) # (!\comb_3|read_ir|data_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(3),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[2]~23\,
	combout => \comb_3|read_ir|data_count[3]~24_combout\,
	cout => \comb_3|read_ir|data_count[3]~25\);

-- Location: FF_X81_Y40_N21
\comb_3|read_ir|data_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[3]~24_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(3));

-- Location: LCCOMB_X81_Y40_N22
\comb_3|read_ir|data_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[4]~26_combout\ = (\comb_3|read_ir|data_count\(4) & (\comb_3|read_ir|data_count[3]~25\ $ (GND))) # (!\comb_3|read_ir|data_count\(4) & (!\comb_3|read_ir|data_count[3]~25\ & VCC))
-- \comb_3|read_ir|data_count[4]~27\ = CARRY((\comb_3|read_ir|data_count\(4) & !\comb_3|read_ir|data_count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(4),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[3]~25\,
	combout => \comb_3|read_ir|data_count[4]~26_combout\,
	cout => \comb_3|read_ir|data_count[4]~27\);

-- Location: FF_X81_Y40_N23
\comb_3|read_ir|data_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[4]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(4));

-- Location: LCCOMB_X81_Y40_N24
\comb_3|read_ir|data_count[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[5]~28_combout\ = (\comb_3|read_ir|data_count\(5) & (!\comb_3|read_ir|data_count[4]~27\)) # (!\comb_3|read_ir|data_count\(5) & ((\comb_3|read_ir|data_count[4]~27\) # (GND)))
-- \comb_3|read_ir|data_count[5]~29\ = CARRY((!\comb_3|read_ir|data_count[4]~27\) # (!\comb_3|read_ir|data_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(5),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[4]~27\,
	combout => \comb_3|read_ir|data_count[5]~28_combout\,
	cout => \comb_3|read_ir|data_count[5]~29\);

-- Location: FF_X81_Y40_N25
\comb_3|read_ir|data_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[5]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(5));

-- Location: LCCOMB_X81_Y40_N26
\comb_3|read_ir|data_count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[6]~30_combout\ = (\comb_3|read_ir|data_count\(6) & (\comb_3|read_ir|data_count[5]~29\ $ (GND))) # (!\comb_3|read_ir|data_count\(6) & (!\comb_3|read_ir|data_count[5]~29\ & VCC))
-- \comb_3|read_ir|data_count[6]~31\ = CARRY((\comb_3|read_ir|data_count\(6) & !\comb_3|read_ir|data_count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(6),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[5]~29\,
	combout => \comb_3|read_ir|data_count[6]~30_combout\,
	cout => \comb_3|read_ir|data_count[6]~31\);

-- Location: FF_X81_Y40_N27
\comb_3|read_ir|data_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[6]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(6));

-- Location: LCCOMB_X81_Y40_N28
\comb_3|read_ir|data_count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[7]~32_combout\ = (\comb_3|read_ir|data_count\(7) & (!\comb_3|read_ir|data_count[6]~31\)) # (!\comb_3|read_ir|data_count\(7) & ((\comb_3|read_ir|data_count[6]~31\) # (GND)))
-- \comb_3|read_ir|data_count[7]~33\ = CARRY((!\comb_3|read_ir|data_count[6]~31\) # (!\comb_3|read_ir|data_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(7),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[6]~31\,
	combout => \comb_3|read_ir|data_count[7]~32_combout\,
	cout => \comb_3|read_ir|data_count[7]~33\);

-- Location: FF_X81_Y40_N29
\comb_3|read_ir|data_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[7]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(7));

-- Location: LCCOMB_X81_Y40_N30
\comb_3|read_ir|data_count[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[8]~34_combout\ = (\comb_3|read_ir|data_count\(8) & (\comb_3|read_ir|data_count[7]~33\ $ (GND))) # (!\comb_3|read_ir|data_count\(8) & (!\comb_3|read_ir|data_count[7]~33\ & VCC))
-- \comb_3|read_ir|data_count[8]~35\ = CARRY((\comb_3|read_ir|data_count\(8) & !\comb_3|read_ir|data_count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(8),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[7]~33\,
	combout => \comb_3|read_ir|data_count[8]~34_combout\,
	cout => \comb_3|read_ir|data_count[8]~35\);

-- Location: FF_X81_Y40_N31
\comb_3|read_ir|data_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[8]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(8));

-- Location: LCCOMB_X81_Y39_N0
\comb_3|read_ir|data_count[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[9]~36_combout\ = (\comb_3|read_ir|data_count\(9) & (!\comb_3|read_ir|data_count[8]~35\)) # (!\comb_3|read_ir|data_count\(9) & ((\comb_3|read_ir|data_count[8]~35\) # (GND)))
-- \comb_3|read_ir|data_count[9]~37\ = CARRY((!\comb_3|read_ir|data_count[8]~35\) # (!\comb_3|read_ir|data_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(9),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[8]~35\,
	combout => \comb_3|read_ir|data_count[9]~36_combout\,
	cout => \comb_3|read_ir|data_count[9]~37\);

-- Location: FF_X81_Y39_N1
\comb_3|read_ir|data_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[9]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(9));

-- Location: LCCOMB_X81_Y39_N2
\comb_3|read_ir|data_count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[10]~38_combout\ = (\comb_3|read_ir|data_count\(10) & (\comb_3|read_ir|data_count[9]~37\ $ (GND))) # (!\comb_3|read_ir|data_count\(10) & (!\comb_3|read_ir|data_count[9]~37\ & VCC))
-- \comb_3|read_ir|data_count[10]~39\ = CARRY((\comb_3|read_ir|data_count\(10) & !\comb_3|read_ir|data_count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(10),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[9]~37\,
	combout => \comb_3|read_ir|data_count[10]~38_combout\,
	cout => \comb_3|read_ir|data_count[10]~39\);

-- Location: FF_X81_Y39_N3
\comb_3|read_ir|data_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[10]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(10));

-- Location: LCCOMB_X81_Y39_N4
\comb_3|read_ir|data_count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[11]~40_combout\ = (\comb_3|read_ir|data_count\(11) & (!\comb_3|read_ir|data_count[10]~39\)) # (!\comb_3|read_ir|data_count\(11) & ((\comb_3|read_ir|data_count[10]~39\) # (GND)))
-- \comb_3|read_ir|data_count[11]~41\ = CARRY((!\comb_3|read_ir|data_count[10]~39\) # (!\comb_3|read_ir|data_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(11),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[10]~39\,
	combout => \comb_3|read_ir|data_count[11]~40_combout\,
	cout => \comb_3|read_ir|data_count[11]~41\);

-- Location: FF_X81_Y39_N5
\comb_3|read_ir|data_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[11]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(11));

-- Location: LCCOMB_X81_Y39_N6
\comb_3|read_ir|data_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[12]~42_combout\ = (\comb_3|read_ir|data_count\(12) & (\comb_3|read_ir|data_count[11]~41\ $ (GND))) # (!\comb_3|read_ir|data_count\(12) & (!\comb_3|read_ir|data_count[11]~41\ & VCC))
-- \comb_3|read_ir|data_count[12]~43\ = CARRY((\comb_3|read_ir|data_count\(12) & !\comb_3|read_ir|data_count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(12),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[11]~41\,
	combout => \comb_3|read_ir|data_count[12]~42_combout\,
	cout => \comb_3|read_ir|data_count[12]~43\);

-- Location: FF_X81_Y39_N7
\comb_3|read_ir|data_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[12]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(12));

-- Location: LCCOMB_X81_Y39_N8
\comb_3|read_ir|data_count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[13]~44_combout\ = (\comb_3|read_ir|data_count\(13) & (!\comb_3|read_ir|data_count[12]~43\)) # (!\comb_3|read_ir|data_count\(13) & ((\comb_3|read_ir|data_count[12]~43\) # (GND)))
-- \comb_3|read_ir|data_count[13]~45\ = CARRY((!\comb_3|read_ir|data_count[12]~43\) # (!\comb_3|read_ir|data_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(13),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[12]~43\,
	combout => \comb_3|read_ir|data_count[13]~44_combout\,
	cout => \comb_3|read_ir|data_count[13]~45\);

-- Location: FF_X81_Y39_N9
\comb_3|read_ir|data_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[13]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(13));

-- Location: LCCOMB_X81_Y40_N8
\comb_3|read_ir|Selector1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~7_combout\ = (\comb_3|read_ir|data_count\(12) & (\comb_3|read_ir|data_count\(13) & (\comb_3|read_ir|data_count\(8) & \comb_3|read_ir|data_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(12),
	datab => \comb_3|read_ir|data_count\(13),
	datac => \comb_3|read_ir|data_count\(8),
	datad => \comb_3|read_ir|data_count\(7),
	combout => \comb_3|read_ir|Selector1~7_combout\);

-- Location: LCCOMB_X81_Y40_N0
\comb_3|read_ir|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~0_combout\ = (\comb_3|read_ir|data_count\(2) & (\comb_3|read_ir|data_count\(4) & \comb_3|read_ir|data_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(2),
	datac => \comb_3|read_ir|data_count\(4),
	datad => \comb_3|read_ir|data_count\(3),
	combout => \comb_3|read_ir|Selector1~0_combout\);

-- Location: LCCOMB_X81_Y40_N6
\comb_3|read_ir|Selector1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~8_combout\ = (\comb_3|read_ir|Selector1~7_combout\ & (\comb_3|read_ir|data_count\(6) & \comb_3|read_ir|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|Selector1~7_combout\,
	datac => \comb_3|read_ir|data_count\(6),
	datad => \comb_3|read_ir|Selector1~0_combout\,
	combout => \comb_3|read_ir|Selector1~8_combout\);

-- Location: LCCOMB_X81_Y39_N30
\comb_3|read_ir|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~1_combout\ = (\comb_3|read_ir|data_count\(5) & (\comb_3|read_ir|data_count\(10) & (\comb_3|read_ir|data_count\(11) & \comb_3|read_ir|data_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(5),
	datab => \comb_3|read_ir|data_count\(10),
	datac => \comb_3|read_ir|data_count\(11),
	datad => \comb_3|read_ir|data_count\(9),
	combout => \comb_3|read_ir|Selector1~1_combout\);

-- Location: LCCOMB_X81_Y39_N10
\comb_3|read_ir|data_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[14]~46_combout\ = (\comb_3|read_ir|data_count\(14) & (\comb_3|read_ir|data_count[13]~45\ $ (GND))) # (!\comb_3|read_ir|data_count\(14) & (!\comb_3|read_ir|data_count[13]~45\ & VCC))
-- \comb_3|read_ir|data_count[14]~47\ = CARRY((\comb_3|read_ir|data_count\(14) & !\comb_3|read_ir|data_count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(14),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[13]~45\,
	combout => \comb_3|read_ir|data_count[14]~46_combout\,
	cout => \comb_3|read_ir|data_count[14]~47\);

-- Location: FF_X81_Y39_N11
\comb_3|read_ir|data_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[14]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(14));

-- Location: LCCOMB_X81_Y39_N28
\comb_3|read_ir|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~2_combout\ = (\comb_3|read_ir|Selector1~1_combout\ & \comb_3|read_ir|data_count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|read_ir|Selector1~1_combout\,
	datad => \comb_3|read_ir|data_count\(14),
	combout => \comb_3|read_ir|Selector1~2_combout\);

-- Location: LCCOMB_X81_Y39_N12
\comb_3|read_ir|data_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[15]~48_combout\ = (\comb_3|read_ir|data_count\(15) & (!\comb_3|read_ir|data_count[14]~47\)) # (!\comb_3|read_ir|data_count\(15) & ((\comb_3|read_ir|data_count[14]~47\) # (GND)))
-- \comb_3|read_ir|data_count[15]~49\ = CARRY((!\comb_3|read_ir|data_count[14]~47\) # (!\comb_3|read_ir|data_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(15),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[14]~47\,
	combout => \comb_3|read_ir|data_count[15]~48_combout\,
	cout => \comb_3|read_ir|data_count[15]~49\);

-- Location: FF_X81_Y39_N13
\comb_3|read_ir|data_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[15]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(15));

-- Location: LCCOMB_X81_Y39_N14
\comb_3|read_ir|data_count[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[16]~50_combout\ = (\comb_3|read_ir|data_count\(16) & (\comb_3|read_ir|data_count[15]~49\ $ (GND))) # (!\comb_3|read_ir|data_count\(16) & (!\comb_3|read_ir|data_count[15]~49\ & VCC))
-- \comb_3|read_ir|data_count[16]~51\ = CARRY((\comb_3|read_ir|data_count\(16) & !\comb_3|read_ir|data_count[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(16),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[15]~49\,
	combout => \comb_3|read_ir|data_count[16]~50_combout\,
	cout => \comb_3|read_ir|data_count[16]~51\);

-- Location: FF_X81_Y39_N15
\comb_3|read_ir|data_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[16]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(16));

-- Location: LCCOMB_X81_Y39_N16
\comb_3|read_ir|data_count[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[17]~52_combout\ = \comb_3|read_ir|data_count[16]~51\ $ (\comb_3|read_ir|data_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_count\(17),
	cin => \comb_3|read_ir|data_count[16]~51\,
	combout => \comb_3|read_ir|data_count[17]~52_combout\);

-- Location: FF_X81_Y39_N17
\comb_3|read_ir|data_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_count[17]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_data_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_count\(17));

-- Location: LCCOMB_X81_Y39_N22
\comb_3|read_ir|Selector1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~9_combout\ = (\comb_3|read_ir|data_count\(15) & (\comb_3|read_ir|data_count\(17) & (\comb_3|read_ir|data_count\(16) & \comb_3|read_ir|data_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(15),
	datab => \comb_3|read_ir|data_count\(17),
	datac => \comb_3|read_ir|data_count\(16),
	datad => \comb_3|read_ir|data_count\(0),
	combout => \comb_3|read_ir|Selector1~9_combout\);

-- Location: LCCOMB_X81_Y40_N4
\comb_3|read_ir|Selector1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~10_combout\ = (\comb_3|read_ir|Selector1~8_combout\ & (\comb_3|read_ir|Selector1~2_combout\ & (\comb_3|read_ir|Selector1~9_combout\ & \comb_3|read_ir|data_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~8_combout\,
	datab => \comb_3|read_ir|Selector1~2_combout\,
	datac => \comb_3|read_ir|Selector1~9_combout\,
	datad => \comb_3|read_ir|data_count\(1),
	combout => \comb_3|read_ir|Selector1~10_combout\);

-- Location: LCCOMB_X77_Y40_N12
\comb_3|read_ir|bitcount[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[2]~10_combout\ = (\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|bitcount[1]~9\ $ (GND))) # (!\comb_3|read_ir|bitcount\(2) & (!\comb_3|read_ir|bitcount[1]~9\ & VCC))
-- \comb_3|read_ir|bitcount[2]~11\ = CARRY((\comb_3|read_ir|bitcount\(2) & !\comb_3|read_ir|bitcount[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datad => VCC,
	cin => \comb_3|read_ir|bitcount[1]~9\,
	combout => \comb_3|read_ir|bitcount[2]~10_combout\,
	cout => \comb_3|read_ir|bitcount[2]~11\);

-- Location: LCCOMB_X77_Y40_N14
\comb_3|read_ir|bitcount[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[3]~12_combout\ = (\comb_3|read_ir|bitcount\(3) & (!\comb_3|read_ir|bitcount[2]~11\)) # (!\comb_3|read_ir|bitcount\(3) & ((\comb_3|read_ir|bitcount[2]~11\) # (GND)))
-- \comb_3|read_ir|bitcount[3]~13\ = CARRY((!\comb_3|read_ir|bitcount[2]~11\) # (!\comb_3|read_ir|bitcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|bitcount\(3),
	datad => VCC,
	cin => \comb_3|read_ir|bitcount[2]~11\,
	combout => \comb_3|read_ir|bitcount[3]~12_combout\,
	cout => \comb_3|read_ir|bitcount[3]~13\);

-- Location: LCCOMB_X81_Y40_N12
\comb_3|read_ir|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal0~2_combout\ = (\comb_3|read_ir|data_count\(12)) # ((\comb_3|read_ir|data_count\(13)) # ((\comb_3|read_ir|data_count\(0)) # (\comb_3|read_ir|data_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(12),
	datab => \comb_3|read_ir|data_count\(13),
	datac => \comb_3|read_ir|data_count\(0),
	datad => \comb_3|read_ir|data_count\(15),
	combout => \comb_3|read_ir|Equal0~2_combout\);

-- Location: LCCOMB_X82_Y40_N4
\comb_3|read_ir|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~0_combout\ = (!\comb_3|read_ir|data_count\(8) & (!\comb_3|read_ir|data_count\(6) & !\comb_3|read_ir|data_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(8),
	datac => \comb_3|read_ir|data_count\(6),
	datad => \comb_3|read_ir|data_count\(7),
	combout => \comb_3|read_ir|LessThan4~0_combout\);

-- Location: LCCOMB_X80_Y40_N24
\comb_3|read_ir|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal0~0_combout\ = (\comb_3|read_ir|data_count\(17)) # ((\comb_3|read_ir|data_count\(16)) # ((\comb_3|read_ir|data_count\(3)) # (\comb_3|read_ir|data_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(17),
	datab => \comb_3|read_ir|data_count\(16),
	datac => \comb_3|read_ir|data_count\(3),
	datad => \comb_3|read_ir|data_count\(4),
	combout => \comb_3|read_ir|Equal0~0_combout\);

-- Location: LCCOMB_X81_Y40_N2
\comb_3|read_ir|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal0~1_combout\ = ((\comb_3|read_ir|Equal0~0_combout\) # ((\comb_3|read_ir|data_count\(2)) # (!\comb_3|read_ir|Selector1~2_combout\))) # (!\comb_3|read_ir|LessThan4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|LessThan4~0_combout\,
	datab => \comb_3|read_ir|Equal0~0_combout\,
	datac => \comb_3|read_ir|Selector1~2_combout\,
	datad => \comb_3|read_ir|data_count\(2),
	combout => \comb_3|read_ir|Equal0~1_combout\);

-- Location: LCCOMB_X81_Y40_N10
\comb_3|read_ir|bitcount[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[5]~18_combout\ = ((!\comb_3|read_ir|Equal0~2_combout\ & (!\comb_3|read_ir|Equal0~1_combout\ & !\comb_3|read_ir|data_count\(1)))) # (!\comb_3|read_ir|state.DATAREAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Equal0~2_combout\,
	datab => \comb_3|read_ir|Equal0~1_combout\,
	datac => \comb_3|read_ir|state.DATAREAD~q\,
	datad => \comb_3|read_ir|data_count\(1),
	combout => \comb_3|read_ir|bitcount[5]~18_combout\);

-- Location: FF_X77_Y40_N15
\comb_3|read_ir|bitcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|bitcount[3]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|bitcount[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(3));

-- Location: LCCOMB_X77_Y40_N16
\comb_3|read_ir|bitcount[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[4]~14_combout\ = (\comb_3|read_ir|bitcount\(4) & (\comb_3|read_ir|bitcount[3]~13\ $ (GND))) # (!\comb_3|read_ir|bitcount\(4) & (!\comb_3|read_ir|bitcount[3]~13\ & VCC))
-- \comb_3|read_ir|bitcount[4]~15\ = CARRY((\comb_3|read_ir|bitcount\(4) & !\comb_3|read_ir|bitcount[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|bitcount\(4),
	datad => VCC,
	cin => \comb_3|read_ir|bitcount[3]~13\,
	combout => \comb_3|read_ir|bitcount[4]~14_combout\,
	cout => \comb_3|read_ir|bitcount[4]~15\);

-- Location: FF_X77_Y40_N17
\comb_3|read_ir|bitcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|bitcount[4]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|bitcount[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(4));

-- Location: LCCOMB_X77_Y40_N18
\comb_3|read_ir|bitcount[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[5]~16_combout\ = \comb_3|read_ir|bitcount[4]~15\ $ (\comb_3|read_ir|bitcount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|bitcount\(5),
	cin => \comb_3|read_ir|bitcount[4]~15\,
	combout => \comb_3|read_ir|bitcount[5]~16_combout\);

-- Location: FF_X77_Y40_N19
\comb_3|read_ir|bitcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|bitcount[5]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|bitcount[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(5));

-- Location: LCCOMB_X77_Y40_N6
\comb_3|read_ir|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal1~0_combout\ = (!\comb_3|read_ir|bitcount\(2) & (!\comb_3|read_ir|bitcount\(3) & (!\comb_3|read_ir|bitcount\(0) & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(0),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|Equal1~0_combout\);

-- Location: LCCOMB_X80_Y40_N2
\comb_3|read_ir|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal1~1_combout\ = (!\comb_3|read_ir|bitcount\(4) & \comb_3|read_ir|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|read_ir|bitcount\(4),
	datad => \comb_3|read_ir|Equal1~0_combout\,
	combout => \comb_3|read_ir|Equal1~1_combout\);

-- Location: LCCOMB_X80_Y40_N0
\comb_3|read_ir|Selector1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~11_combout\ = (\comb_3|read_ir|state.DATAREAD~q\ & ((\comb_3|read_ir|Selector1~10_combout\) # ((\comb_3|read_ir|bitcount\(5) & !\comb_3|read_ir|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~10_combout\,
	datab => \comb_3|read_ir|state.DATAREAD~q\,
	datac => \comb_3|read_ir|bitcount\(5),
	datad => \comb_3|read_ir|Equal1~1_combout\,
	combout => \comb_3|read_ir|Selector1~11_combout\);

-- Location: LCCOMB_X80_Y38_N24
\comb_3|read_ir|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector0~0_combout\ = (!\comb_3|read_ir|Selector1~11_combout\ & ((\comb_3|read_ir|LessThan0~5_combout\) # (\comb_3|read_ir|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|LessThan0~5_combout\,
	datac => \comb_3|read_ir|state.IDLE~q\,
	datad => \comb_3|read_ir|Selector1~11_combout\,
	combout => \comb_3|read_ir|Selector0~0_combout\);

-- Location: FF_X80_Y38_N25
\comb_3|read_ir|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state.IDLE~q\);

-- Location: LCCOMB_X79_Y38_N20
\comb_3|read_ir|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|always1~1_combout\ = (!\ir_input~input_o\ & !\comb_3|read_ir|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_input~input_o\,
	datad => \comb_3|read_ir|state.IDLE~q\,
	combout => \comb_3|read_ir|always1~1_combout\);

-- Location: FF_X79_Y38_N21
\comb_3|read_ir|idle_count_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|always1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count_flag~q\);

-- Location: FF_X79_Y39_N15
\comb_3|read_ir|idle_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[0]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(0));

-- Location: LCCOMB_X79_Y39_N16
\comb_3|read_ir|idle_count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[1]~20_combout\ = (\comb_3|read_ir|idle_count\(1) & (!\comb_3|read_ir|idle_count[0]~19\)) # (!\comb_3|read_ir|idle_count\(1) & ((\comb_3|read_ir|idle_count[0]~19\) # (GND)))
-- \comb_3|read_ir|idle_count[1]~21\ = CARRY((!\comb_3|read_ir|idle_count[0]~19\) # (!\comb_3|read_ir|idle_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(1),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[0]~19\,
	combout => \comb_3|read_ir|idle_count[1]~20_combout\,
	cout => \comb_3|read_ir|idle_count[1]~21\);

-- Location: FF_X79_Y39_N17
\comb_3|read_ir|idle_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[1]~20_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(1));

-- Location: LCCOMB_X79_Y39_N18
\comb_3|read_ir|idle_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[2]~22_combout\ = (\comb_3|read_ir|idle_count\(2) & (\comb_3|read_ir|idle_count[1]~21\ $ (GND))) # (!\comb_3|read_ir|idle_count\(2) & (!\comb_3|read_ir|idle_count[1]~21\ & VCC))
-- \comb_3|read_ir|idle_count[2]~23\ = CARRY((\comb_3|read_ir|idle_count\(2) & !\comb_3|read_ir|idle_count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(2),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[1]~21\,
	combout => \comb_3|read_ir|idle_count[2]~22_combout\,
	cout => \comb_3|read_ir|idle_count[2]~23\);

-- Location: FF_X79_Y39_N19
\comb_3|read_ir|idle_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[2]~22_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(2));

-- Location: LCCOMB_X79_Y39_N20
\comb_3|read_ir|idle_count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[3]~24_combout\ = (\comb_3|read_ir|idle_count\(3) & (!\comb_3|read_ir|idle_count[2]~23\)) # (!\comb_3|read_ir|idle_count\(3) & ((\comb_3|read_ir|idle_count[2]~23\) # (GND)))
-- \comb_3|read_ir|idle_count[3]~25\ = CARRY((!\comb_3|read_ir|idle_count[2]~23\) # (!\comb_3|read_ir|idle_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(3),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[2]~23\,
	combout => \comb_3|read_ir|idle_count[3]~24_combout\,
	cout => \comb_3|read_ir|idle_count[3]~25\);

-- Location: FF_X79_Y39_N21
\comb_3|read_ir|idle_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[3]~24_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(3));

-- Location: LCCOMB_X79_Y39_N22
\comb_3|read_ir|idle_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[4]~26_combout\ = (\comb_3|read_ir|idle_count\(4) & (\comb_3|read_ir|idle_count[3]~25\ $ (GND))) # (!\comb_3|read_ir|idle_count\(4) & (!\comb_3|read_ir|idle_count[3]~25\ & VCC))
-- \comb_3|read_ir|idle_count[4]~27\ = CARRY((\comb_3|read_ir|idle_count\(4) & !\comb_3|read_ir|idle_count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(4),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[3]~25\,
	combout => \comb_3|read_ir|idle_count[4]~26_combout\,
	cout => \comb_3|read_ir|idle_count[4]~27\);

-- Location: FF_X79_Y39_N23
\comb_3|read_ir|idle_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[4]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(4));

-- Location: LCCOMB_X79_Y39_N24
\comb_3|read_ir|idle_count[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[5]~28_combout\ = (\comb_3|read_ir|idle_count\(5) & (!\comb_3|read_ir|idle_count[4]~27\)) # (!\comb_3|read_ir|idle_count\(5) & ((\comb_3|read_ir|idle_count[4]~27\) # (GND)))
-- \comb_3|read_ir|idle_count[5]~29\ = CARRY((!\comb_3|read_ir|idle_count[4]~27\) # (!\comb_3|read_ir|idle_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(5),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[4]~27\,
	combout => \comb_3|read_ir|idle_count[5]~28_combout\,
	cout => \comb_3|read_ir|idle_count[5]~29\);

-- Location: FF_X79_Y39_N25
\comb_3|read_ir|idle_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[5]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(5));

-- Location: LCCOMB_X79_Y39_N26
\comb_3|read_ir|idle_count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[6]~30_combout\ = (\comb_3|read_ir|idle_count\(6) & (\comb_3|read_ir|idle_count[5]~29\ $ (GND))) # (!\comb_3|read_ir|idle_count\(6) & (!\comb_3|read_ir|idle_count[5]~29\ & VCC))
-- \comb_3|read_ir|idle_count[6]~31\ = CARRY((\comb_3|read_ir|idle_count\(6) & !\comb_3|read_ir|idle_count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(6),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[5]~29\,
	combout => \comb_3|read_ir|idle_count[6]~30_combout\,
	cout => \comb_3|read_ir|idle_count[6]~31\);

-- Location: FF_X79_Y39_N27
\comb_3|read_ir|idle_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[6]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(6));

-- Location: LCCOMB_X79_Y39_N28
\comb_3|read_ir|idle_count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[7]~32_combout\ = (\comb_3|read_ir|idle_count\(7) & (!\comb_3|read_ir|idle_count[6]~31\)) # (!\comb_3|read_ir|idle_count\(7) & ((\comb_3|read_ir|idle_count[6]~31\) # (GND)))
-- \comb_3|read_ir|idle_count[7]~33\ = CARRY((!\comb_3|read_ir|idle_count[6]~31\) # (!\comb_3|read_ir|idle_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(7),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[6]~31\,
	combout => \comb_3|read_ir|idle_count[7]~32_combout\,
	cout => \comb_3|read_ir|idle_count[7]~33\);

-- Location: FF_X79_Y39_N29
\comb_3|read_ir|idle_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[7]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(7));

-- Location: LCCOMB_X79_Y39_N30
\comb_3|read_ir|idle_count[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[8]~34_combout\ = (\comb_3|read_ir|idle_count\(8) & (\comb_3|read_ir|idle_count[7]~33\ $ (GND))) # (!\comb_3|read_ir|idle_count\(8) & (!\comb_3|read_ir|idle_count[7]~33\ & VCC))
-- \comb_3|read_ir|idle_count[8]~35\ = CARRY((\comb_3|read_ir|idle_count\(8) & !\comb_3|read_ir|idle_count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(8),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[7]~33\,
	combout => \comb_3|read_ir|idle_count[8]~34_combout\,
	cout => \comb_3|read_ir|idle_count[8]~35\);

-- Location: FF_X79_Y39_N31
\comb_3|read_ir|idle_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[8]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(8));

-- Location: LCCOMB_X79_Y38_N0
\comb_3|read_ir|idle_count[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[9]~36_combout\ = (\comb_3|read_ir|idle_count\(9) & (!\comb_3|read_ir|idle_count[8]~35\)) # (!\comb_3|read_ir|idle_count\(9) & ((\comb_3|read_ir|idle_count[8]~35\) # (GND)))
-- \comb_3|read_ir|idle_count[9]~37\ = CARRY((!\comb_3|read_ir|idle_count[8]~35\) # (!\comb_3|read_ir|idle_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(9),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[8]~35\,
	combout => \comb_3|read_ir|idle_count[9]~36_combout\,
	cout => \comb_3|read_ir|idle_count[9]~37\);

-- Location: FF_X79_Y38_N1
\comb_3|read_ir|idle_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[9]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(9));

-- Location: LCCOMB_X79_Y38_N2
\comb_3|read_ir|idle_count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[10]~38_combout\ = (\comb_3|read_ir|idle_count\(10) & (\comb_3|read_ir|idle_count[9]~37\ $ (GND))) # (!\comb_3|read_ir|idle_count\(10) & (!\comb_3|read_ir|idle_count[9]~37\ & VCC))
-- \comb_3|read_ir|idle_count[10]~39\ = CARRY((\comb_3|read_ir|idle_count\(10) & !\comb_3|read_ir|idle_count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(10),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[9]~37\,
	combout => \comb_3|read_ir|idle_count[10]~38_combout\,
	cout => \comb_3|read_ir|idle_count[10]~39\);

-- Location: FF_X79_Y38_N3
\comb_3|read_ir|idle_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[10]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(10));

-- Location: LCCOMB_X79_Y38_N4
\comb_3|read_ir|idle_count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[11]~40_combout\ = (\comb_3|read_ir|idle_count\(11) & (!\comb_3|read_ir|idle_count[10]~39\)) # (!\comb_3|read_ir|idle_count\(11) & ((\comb_3|read_ir|idle_count[10]~39\) # (GND)))
-- \comb_3|read_ir|idle_count[11]~41\ = CARRY((!\comb_3|read_ir|idle_count[10]~39\) # (!\comb_3|read_ir|idle_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(11),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[10]~39\,
	combout => \comb_3|read_ir|idle_count[11]~40_combout\,
	cout => \comb_3|read_ir|idle_count[11]~41\);

-- Location: FF_X79_Y38_N5
\comb_3|read_ir|idle_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[11]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(11));

-- Location: LCCOMB_X79_Y38_N6
\comb_3|read_ir|idle_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[12]~42_combout\ = (\comb_3|read_ir|idle_count\(12) & (\comb_3|read_ir|idle_count[11]~41\ $ (GND))) # (!\comb_3|read_ir|idle_count\(12) & (!\comb_3|read_ir|idle_count[11]~41\ & VCC))
-- \comb_3|read_ir|idle_count[12]~43\ = CARRY((\comb_3|read_ir|idle_count\(12) & !\comb_3|read_ir|idle_count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(12),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[11]~41\,
	combout => \comb_3|read_ir|idle_count[12]~42_combout\,
	cout => \comb_3|read_ir|idle_count[12]~43\);

-- Location: FF_X79_Y38_N7
\comb_3|read_ir|idle_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[12]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(12));

-- Location: LCCOMB_X79_Y38_N8
\comb_3|read_ir|idle_count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[13]~44_combout\ = (\comb_3|read_ir|idle_count\(13) & (!\comb_3|read_ir|idle_count[12]~43\)) # (!\comb_3|read_ir|idle_count\(13) & ((\comb_3|read_ir|idle_count[12]~43\) # (GND)))
-- \comb_3|read_ir|idle_count[13]~45\ = CARRY((!\comb_3|read_ir|idle_count[12]~43\) # (!\comb_3|read_ir|idle_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(13),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[12]~43\,
	combout => \comb_3|read_ir|idle_count[13]~44_combout\,
	cout => \comb_3|read_ir|idle_count[13]~45\);

-- Location: FF_X79_Y38_N9
\comb_3|read_ir|idle_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[13]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(13));

-- Location: LCCOMB_X79_Y38_N10
\comb_3|read_ir|idle_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[14]~46_combout\ = (\comb_3|read_ir|idle_count\(14) & (\comb_3|read_ir|idle_count[13]~45\ $ (GND))) # (!\comb_3|read_ir|idle_count\(14) & (!\comb_3|read_ir|idle_count[13]~45\ & VCC))
-- \comb_3|read_ir|idle_count[14]~47\ = CARRY((\comb_3|read_ir|idle_count\(14) & !\comb_3|read_ir|idle_count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(14),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[13]~45\,
	combout => \comb_3|read_ir|idle_count[14]~46_combout\,
	cout => \comb_3|read_ir|idle_count[14]~47\);

-- Location: FF_X79_Y38_N11
\comb_3|read_ir|idle_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[14]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(14));

-- Location: LCCOMB_X79_Y38_N12
\comb_3|read_ir|idle_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[15]~48_combout\ = (\comb_3|read_ir|idle_count\(15) & (!\comb_3|read_ir|idle_count[14]~47\)) # (!\comb_3|read_ir|idle_count\(15) & ((\comb_3|read_ir|idle_count[14]~47\) # (GND)))
-- \comb_3|read_ir|idle_count[15]~49\ = CARRY((!\comb_3|read_ir|idle_count[14]~47\) # (!\comb_3|read_ir|idle_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(15),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[14]~47\,
	combout => \comb_3|read_ir|idle_count[15]~48_combout\,
	cout => \comb_3|read_ir|idle_count[15]~49\);

-- Location: FF_X79_Y38_N13
\comb_3|read_ir|idle_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[15]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(15));

-- Location: LCCOMB_X79_Y38_N14
\comb_3|read_ir|idle_count[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[16]~50_combout\ = (\comb_3|read_ir|idle_count\(16) & (\comb_3|read_ir|idle_count[15]~49\ $ (GND))) # (!\comb_3|read_ir|idle_count\(16) & (!\comb_3|read_ir|idle_count[15]~49\ & VCC))
-- \comb_3|read_ir|idle_count[16]~51\ = CARRY((\comb_3|read_ir|idle_count\(16) & !\comb_3|read_ir|idle_count[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(16),
	datad => VCC,
	cin => \comb_3|read_ir|idle_count[15]~49\,
	combout => \comb_3|read_ir|idle_count[16]~50_combout\,
	cout => \comb_3|read_ir|idle_count[16]~51\);

-- Location: FF_X79_Y38_N15
\comb_3|read_ir|idle_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[16]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(16));

-- Location: LCCOMB_X79_Y38_N16
\comb_3|read_ir|idle_count[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|idle_count[17]~52_combout\ = \comb_3|read_ir|idle_count[16]~51\ $ (\comb_3|read_ir|idle_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|idle_count\(17),
	cin => \comb_3|read_ir|idle_count[16]~51\,
	combout => \comb_3|read_ir|idle_count[17]~52_combout\);

-- Location: FF_X79_Y38_N17
\comb_3|read_ir|idle_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|idle_count[17]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_idle_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|idle_count\(17));

-- Location: LCCOMB_X79_Y38_N30
\comb_3|read_ir|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~0_combout\ = (\comb_3|read_ir|idle_count\(17) & (\comb_3|read_ir|idle_count\(16) & \comb_3|read_ir|idle_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|idle_count\(17),
	datac => \comb_3|read_ir|idle_count\(16),
	datad => \comb_3|read_ir|idle_count\(15),
	combout => \comb_3|read_ir|LessThan0~0_combout\);

-- Location: LCCOMB_X79_Y38_N28
\comb_3|read_ir|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~4_combout\ = (\comb_3|read_ir|idle_count\(12)) # ((\comb_3|read_ir|idle_count\(13)) # ((\comb_3|read_ir|idle_count\(11)) # (\comb_3|read_ir|idle_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(12),
	datab => \comb_3|read_ir|idle_count\(13),
	datac => \comb_3|read_ir|idle_count\(11),
	datad => \comb_3|read_ir|idle_count\(10),
	combout => \comb_3|read_ir|LessThan0~4_combout\);

-- Location: LCCOMB_X79_Y39_N2
\comb_3|read_ir|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~1_combout\ = (\comb_3|read_ir|idle_count\(3)) # ((\comb_3|read_ir|idle_count\(2)) # ((\comb_3|read_ir|idle_count\(0)) # (\comb_3|read_ir|idle_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(3),
	datab => \comb_3|read_ir|idle_count\(2),
	datac => \comb_3|read_ir|idle_count\(0),
	datad => \comb_3|read_ir|idle_count\(1),
	combout => \comb_3|read_ir|LessThan0~1_combout\);

-- Location: LCCOMB_X79_Y39_N0
\comb_3|read_ir|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~2_combout\ = (\comb_3|read_ir|idle_count\(6) & (\comb_3|read_ir|idle_count\(5) & (\comb_3|read_ir|idle_count\(4) & \comb_3|read_ir|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(6),
	datab => \comb_3|read_ir|idle_count\(5),
	datac => \comb_3|read_ir|idle_count\(4),
	datad => \comb_3|read_ir|LessThan0~1_combout\,
	combout => \comb_3|read_ir|LessThan0~2_combout\);

-- Location: LCCOMB_X79_Y39_N10
\comb_3|read_ir|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~3_combout\ = (\comb_3|read_ir|idle_count\(9) & ((\comb_3|read_ir|LessThan0~2_combout\) # ((\comb_3|read_ir|idle_count\(8)) # (\comb_3|read_ir|idle_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(9),
	datab => \comb_3|read_ir|LessThan0~2_combout\,
	datac => \comb_3|read_ir|idle_count\(8),
	datad => \comb_3|read_ir|idle_count\(7),
	combout => \comb_3|read_ir|LessThan0~3_combout\);

-- Location: LCCOMB_X79_Y38_N26
\comb_3|read_ir|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~5_combout\ = (\comb_3|read_ir|LessThan0~0_combout\ & ((\comb_3|read_ir|LessThan0~4_combout\) # ((\comb_3|read_ir|LessThan0~3_combout\) # (\comb_3|read_ir|idle_count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|LessThan0~0_combout\,
	datab => \comb_3|read_ir|LessThan0~4_combout\,
	datac => \comb_3|read_ir|LessThan0~3_combout\,
	datad => \comb_3|read_ir|idle_count\(14),
	combout => \comb_3|read_ir|LessThan0~5_combout\);

-- Location: LCCOMB_X80_Y38_N18
\comb_3|read_ir|Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~6_combout\ = (!\comb_3|read_ir|Selector1~5_combout\ & ((\comb_3|read_ir|state.IDLE~q\) # (!\comb_3|read_ir|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~5_combout\,
	datac => \comb_3|read_ir|LessThan0~5_combout\,
	datad => \comb_3|read_ir|state.IDLE~q\,
	combout => \comb_3|read_ir|Selector1~6_combout\);

-- Location: LCCOMB_X80_Y38_N28
\comb_3|read_ir|Selector1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~12_combout\ = (!\comb_3|read_ir|Selector1~11_combout\ & ((\comb_3|read_ir|Selector1~6_combout\ & ((\comb_3|read_ir|state.GUIDANCE~q\))) # (!\comb_3|read_ir|Selector1~6_combout\ & (!\comb_3|read_ir|Selector1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~5_combout\,
	datab => \comb_3|read_ir|Selector1~6_combout\,
	datac => \comb_3|read_ir|state.GUIDANCE~q\,
	datad => \comb_3|read_ir|Selector1~11_combout\,
	combout => \comb_3|read_ir|Selector1~12_combout\);

-- Location: FF_X80_Y38_N29
\comb_3|read_ir|state.GUIDANCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|Selector1~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state.GUIDANCE~q\);

-- Location: LCCOMB_X80_Y39_N14
\comb_3|read_ir|state_count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[0]~18_combout\ = \comb_3|read_ir|state_count\(0) $ (VCC)
-- \comb_3|read_ir|state_count[0]~19\ = CARRY(\comb_3|read_ir|state_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(0),
	datad => VCC,
	combout => \comb_3|read_ir|state_count[0]~18_combout\,
	cout => \comb_3|read_ir|state_count[0]~19\);

-- Location: LCCOMB_X79_Y38_N22
\comb_3|read_ir|always3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|always3~1_combout\ = (\ir_input~input_o\ & \comb_3|read_ir|state.GUIDANCE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_input~input_o\,
	datad => \comb_3|read_ir|state.GUIDANCE~q\,
	combout => \comb_3|read_ir|always3~1_combout\);

-- Location: FF_X79_Y38_N23
\comb_3|read_ir|state_count_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|always3~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count_flag~q\);

-- Location: FF_X80_Y39_N15
\comb_3|read_ir|state_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[0]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(0));

-- Location: LCCOMB_X80_Y39_N16
\comb_3|read_ir|state_count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[1]~20_combout\ = (\comb_3|read_ir|state_count\(1) & (!\comb_3|read_ir|state_count[0]~19\)) # (!\comb_3|read_ir|state_count\(1) & ((\comb_3|read_ir|state_count[0]~19\) # (GND)))
-- \comb_3|read_ir|state_count[1]~21\ = CARRY((!\comb_3|read_ir|state_count[0]~19\) # (!\comb_3|read_ir|state_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(1),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[0]~19\,
	combout => \comb_3|read_ir|state_count[1]~20_combout\,
	cout => \comb_3|read_ir|state_count[1]~21\);

-- Location: FF_X80_Y39_N17
\comb_3|read_ir|state_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[1]~20_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(1));

-- Location: LCCOMB_X80_Y39_N18
\comb_3|read_ir|state_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[2]~22_combout\ = (\comb_3|read_ir|state_count\(2) & (\comb_3|read_ir|state_count[1]~21\ $ (GND))) # (!\comb_3|read_ir|state_count\(2) & (!\comb_3|read_ir|state_count[1]~21\ & VCC))
-- \comb_3|read_ir|state_count[2]~23\ = CARRY((\comb_3|read_ir|state_count\(2) & !\comb_3|read_ir|state_count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(2),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[1]~21\,
	combout => \comb_3|read_ir|state_count[2]~22_combout\,
	cout => \comb_3|read_ir|state_count[2]~23\);

-- Location: FF_X80_Y39_N19
\comb_3|read_ir|state_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[2]~22_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(2));

-- Location: LCCOMB_X80_Y39_N20
\comb_3|read_ir|state_count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[3]~24_combout\ = (\comb_3|read_ir|state_count\(3) & (!\comb_3|read_ir|state_count[2]~23\)) # (!\comb_3|read_ir|state_count\(3) & ((\comb_3|read_ir|state_count[2]~23\) # (GND)))
-- \comb_3|read_ir|state_count[3]~25\ = CARRY((!\comb_3|read_ir|state_count[2]~23\) # (!\comb_3|read_ir|state_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(3),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[2]~23\,
	combout => \comb_3|read_ir|state_count[3]~24_combout\,
	cout => \comb_3|read_ir|state_count[3]~25\);

-- Location: FF_X80_Y39_N21
\comb_3|read_ir|state_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[3]~24_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(3));

-- Location: LCCOMB_X80_Y39_N22
\comb_3|read_ir|state_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[4]~26_combout\ = (\comb_3|read_ir|state_count\(4) & (\comb_3|read_ir|state_count[3]~25\ $ (GND))) # (!\comb_3|read_ir|state_count\(4) & (!\comb_3|read_ir|state_count[3]~25\ & VCC))
-- \comb_3|read_ir|state_count[4]~27\ = CARRY((\comb_3|read_ir|state_count\(4) & !\comb_3|read_ir|state_count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(4),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[3]~25\,
	combout => \comb_3|read_ir|state_count[4]~26_combout\,
	cout => \comb_3|read_ir|state_count[4]~27\);

-- Location: FF_X80_Y39_N23
\comb_3|read_ir|state_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[4]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(4));

-- Location: LCCOMB_X80_Y39_N24
\comb_3|read_ir|state_count[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[5]~28_combout\ = (\comb_3|read_ir|state_count\(5) & (!\comb_3|read_ir|state_count[4]~27\)) # (!\comb_3|read_ir|state_count\(5) & ((\comb_3|read_ir|state_count[4]~27\) # (GND)))
-- \comb_3|read_ir|state_count[5]~29\ = CARRY((!\comb_3|read_ir|state_count[4]~27\) # (!\comb_3|read_ir|state_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(5),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[4]~27\,
	combout => \comb_3|read_ir|state_count[5]~28_combout\,
	cout => \comb_3|read_ir|state_count[5]~29\);

-- Location: FF_X80_Y39_N25
\comb_3|read_ir|state_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[5]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(5));

-- Location: LCCOMB_X80_Y39_N26
\comb_3|read_ir|state_count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[6]~30_combout\ = (\comb_3|read_ir|state_count\(6) & (\comb_3|read_ir|state_count[5]~29\ $ (GND))) # (!\comb_3|read_ir|state_count\(6) & (!\comb_3|read_ir|state_count[5]~29\ & VCC))
-- \comb_3|read_ir|state_count[6]~31\ = CARRY((\comb_3|read_ir|state_count\(6) & !\comb_3|read_ir|state_count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(6),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[5]~29\,
	combout => \comb_3|read_ir|state_count[6]~30_combout\,
	cout => \comb_3|read_ir|state_count[6]~31\);

-- Location: FF_X80_Y39_N27
\comb_3|read_ir|state_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[6]~30_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(6));

-- Location: LCCOMB_X80_Y39_N28
\comb_3|read_ir|state_count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[7]~32_combout\ = (\comb_3|read_ir|state_count\(7) & (!\comb_3|read_ir|state_count[6]~31\)) # (!\comb_3|read_ir|state_count\(7) & ((\comb_3|read_ir|state_count[6]~31\) # (GND)))
-- \comb_3|read_ir|state_count[7]~33\ = CARRY((!\comb_3|read_ir|state_count[6]~31\) # (!\comb_3|read_ir|state_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(7),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[6]~31\,
	combout => \comb_3|read_ir|state_count[7]~32_combout\,
	cout => \comb_3|read_ir|state_count[7]~33\);

-- Location: FF_X80_Y39_N29
\comb_3|read_ir|state_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[7]~32_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(7));

-- Location: LCCOMB_X80_Y39_N30
\comb_3|read_ir|state_count[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[8]~34_combout\ = (\comb_3|read_ir|state_count\(8) & (\comb_3|read_ir|state_count[7]~33\ $ (GND))) # (!\comb_3|read_ir|state_count\(8) & (!\comb_3|read_ir|state_count[7]~33\ & VCC))
-- \comb_3|read_ir|state_count[8]~35\ = CARRY((\comb_3|read_ir|state_count\(8) & !\comb_3|read_ir|state_count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(8),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[7]~33\,
	combout => \comb_3|read_ir|state_count[8]~34_combout\,
	cout => \comb_3|read_ir|state_count[8]~35\);

-- Location: FF_X80_Y39_N31
\comb_3|read_ir|state_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[8]~34_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(8));

-- Location: LCCOMB_X80_Y38_N0
\comb_3|read_ir|state_count[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[9]~36_combout\ = (\comb_3|read_ir|state_count\(9) & (!\comb_3|read_ir|state_count[8]~35\)) # (!\comb_3|read_ir|state_count\(9) & ((\comb_3|read_ir|state_count[8]~35\) # (GND)))
-- \comb_3|read_ir|state_count[9]~37\ = CARRY((!\comb_3|read_ir|state_count[8]~35\) # (!\comb_3|read_ir|state_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(9),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[8]~35\,
	combout => \comb_3|read_ir|state_count[9]~36_combout\,
	cout => \comb_3|read_ir|state_count[9]~37\);

-- Location: FF_X80_Y38_N1
\comb_3|read_ir|state_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[9]~36_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(9));

-- Location: LCCOMB_X80_Y38_N2
\comb_3|read_ir|state_count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[10]~38_combout\ = (\comb_3|read_ir|state_count\(10) & (\comb_3|read_ir|state_count[9]~37\ $ (GND))) # (!\comb_3|read_ir|state_count\(10) & (!\comb_3|read_ir|state_count[9]~37\ & VCC))
-- \comb_3|read_ir|state_count[10]~39\ = CARRY((\comb_3|read_ir|state_count\(10) & !\comb_3|read_ir|state_count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(10),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[9]~37\,
	combout => \comb_3|read_ir|state_count[10]~38_combout\,
	cout => \comb_3|read_ir|state_count[10]~39\);

-- Location: FF_X80_Y38_N3
\comb_3|read_ir|state_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[10]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(10));

-- Location: LCCOMB_X80_Y38_N4
\comb_3|read_ir|state_count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[11]~40_combout\ = (\comb_3|read_ir|state_count\(11) & (!\comb_3|read_ir|state_count[10]~39\)) # (!\comb_3|read_ir|state_count\(11) & ((\comb_3|read_ir|state_count[10]~39\) # (GND)))
-- \comb_3|read_ir|state_count[11]~41\ = CARRY((!\comb_3|read_ir|state_count[10]~39\) # (!\comb_3|read_ir|state_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(11),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[10]~39\,
	combout => \comb_3|read_ir|state_count[11]~40_combout\,
	cout => \comb_3|read_ir|state_count[11]~41\);

-- Location: FF_X80_Y38_N5
\comb_3|read_ir|state_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[11]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(11));

-- Location: LCCOMB_X80_Y38_N6
\comb_3|read_ir|state_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[12]~42_combout\ = (\comb_3|read_ir|state_count\(12) & (\comb_3|read_ir|state_count[11]~41\ $ (GND))) # (!\comb_3|read_ir|state_count\(12) & (!\comb_3|read_ir|state_count[11]~41\ & VCC))
-- \comb_3|read_ir|state_count[12]~43\ = CARRY((\comb_3|read_ir|state_count\(12) & !\comb_3|read_ir|state_count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(12),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[11]~41\,
	combout => \comb_3|read_ir|state_count[12]~42_combout\,
	cout => \comb_3|read_ir|state_count[12]~43\);

-- Location: FF_X80_Y38_N7
\comb_3|read_ir|state_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[12]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(12));

-- Location: LCCOMB_X80_Y39_N0
\comb_3|read_ir|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan1~0_combout\ = (\comb_3|read_ir|state_count\(3)) # ((\comb_3|read_ir|state_count\(2)) # ((\comb_3|read_ir|state_count\(0)) # (\comb_3|read_ir|state_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(3),
	datab => \comb_3|read_ir|state_count\(2),
	datac => \comb_3|read_ir|state_count\(0),
	datad => \comb_3|read_ir|state_count\(1),
	combout => \comb_3|read_ir|LessThan1~0_combout\);

-- Location: LCCOMB_X80_Y39_N2
\comb_3|read_ir|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan1~1_combout\ = (\comb_3|read_ir|state_count\(6) & ((\comb_3|read_ir|state_count\(5)) # ((\comb_3|read_ir|state_count\(4) & \comb_3|read_ir|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(4),
	datab => \comb_3|read_ir|LessThan1~0_combout\,
	datac => \comb_3|read_ir|state_count\(6),
	datad => \comb_3|read_ir|state_count\(5),
	combout => \comb_3|read_ir|LessThan1~1_combout\);

-- Location: LCCOMB_X80_Y39_N8
\comb_3|read_ir|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan1~2_combout\ = (\comb_3|read_ir|state_count\(9)) # ((\comb_3|read_ir|state_count\(7)) # ((\comb_3|read_ir|state_count\(8)) # (\comb_3|read_ir|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(9),
	datab => \comb_3|read_ir|state_count\(7),
	datac => \comb_3|read_ir|state_count\(8),
	datad => \comb_3|read_ir|LessThan1~1_combout\,
	combout => \comb_3|read_ir|LessThan1~2_combout\);

-- Location: LCCOMB_X80_Y38_N26
\comb_3|read_ir|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~3_combout\ = (\comb_3|read_ir|state_count\(12) & ((\comb_3|read_ir|state_count\(11)) # ((\comb_3|read_ir|state_count\(10) & \comb_3|read_ir|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(12),
	datab => \comb_3|read_ir|state_count\(10),
	datac => \comb_3|read_ir|state_count\(11),
	datad => \comb_3|read_ir|LessThan1~2_combout\,
	combout => \comb_3|read_ir|Selector1~3_combout\);

-- Location: LCCOMB_X80_Y38_N8
\comb_3|read_ir|state_count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[13]~44_combout\ = (\comb_3|read_ir|state_count\(13) & (!\comb_3|read_ir|state_count[12]~43\)) # (!\comb_3|read_ir|state_count\(13) & ((\comb_3|read_ir|state_count[12]~43\) # (GND)))
-- \comb_3|read_ir|state_count[13]~45\ = CARRY((!\comb_3|read_ir|state_count[12]~43\) # (!\comb_3|read_ir|state_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(13),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[12]~43\,
	combout => \comb_3|read_ir|state_count[13]~44_combout\,
	cout => \comb_3|read_ir|state_count[13]~45\);

-- Location: FF_X80_Y38_N9
\comb_3|read_ir|state_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[13]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(13));

-- Location: LCCOMB_X80_Y38_N10
\comb_3|read_ir|state_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[14]~46_combout\ = (\comb_3|read_ir|state_count\(14) & (\comb_3|read_ir|state_count[13]~45\ $ (GND))) # (!\comb_3|read_ir|state_count\(14) & (!\comb_3|read_ir|state_count[13]~45\ & VCC))
-- \comb_3|read_ir|state_count[14]~47\ = CARRY((\comb_3|read_ir|state_count\(14) & !\comb_3|read_ir|state_count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(14),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[13]~45\,
	combout => \comb_3|read_ir|state_count[14]~46_combout\,
	cout => \comb_3|read_ir|state_count[14]~47\);

-- Location: FF_X80_Y38_N11
\comb_3|read_ir|state_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[14]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(14));

-- Location: LCCOMB_X80_Y38_N12
\comb_3|read_ir|state_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[15]~48_combout\ = (\comb_3|read_ir|state_count\(15) & (!\comb_3|read_ir|state_count[14]~47\)) # (!\comb_3|read_ir|state_count\(15) & ((\comb_3|read_ir|state_count[14]~47\) # (GND)))
-- \comb_3|read_ir|state_count[15]~49\ = CARRY((!\comb_3|read_ir|state_count[14]~47\) # (!\comb_3|read_ir|state_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(15),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[14]~47\,
	combout => \comb_3|read_ir|state_count[15]~48_combout\,
	cout => \comb_3|read_ir|state_count[15]~49\);

-- Location: FF_X80_Y38_N13
\comb_3|read_ir|state_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[15]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(15));

-- Location: LCCOMB_X80_Y38_N20
\comb_3|read_ir|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~4_combout\ = (\comb_3|read_ir|state_count\(15)) # ((\comb_3|read_ir|state_count\(14)) # ((\comb_3|read_ir|Selector1~3_combout\ & \comb_3|read_ir|state_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~3_combout\,
	datab => \comb_3|read_ir|state_count\(15),
	datac => \comb_3|read_ir|state_count\(13),
	datad => \comb_3|read_ir|state_count\(14),
	combout => \comb_3|read_ir|Selector1~4_combout\);

-- Location: LCCOMB_X80_Y38_N14
\comb_3|read_ir|state_count[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[16]~50_combout\ = (\comb_3|read_ir|state_count\(16) & (\comb_3|read_ir|state_count[15]~49\ $ (GND))) # (!\comb_3|read_ir|state_count\(16) & (!\comb_3|read_ir|state_count[15]~49\ & VCC))
-- \comb_3|read_ir|state_count[16]~51\ = CARRY((\comb_3|read_ir|state_count\(16) & !\comb_3|read_ir|state_count[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(16),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[15]~49\,
	combout => \comb_3|read_ir|state_count[16]~50_combout\,
	cout => \comb_3|read_ir|state_count[16]~51\);

-- Location: FF_X80_Y38_N15
\comb_3|read_ir|state_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[16]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(16));

-- Location: LCCOMB_X80_Y38_N16
\comb_3|read_ir|state_count[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[17]~52_combout\ = \comb_3|read_ir|state_count[16]~51\ $ (\comb_3|read_ir|state_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|state_count\(17),
	cin => \comb_3|read_ir|state_count[16]~51\,
	combout => \comb_3|read_ir|state_count[17]~52_combout\);

-- Location: FF_X80_Y38_N17
\comb_3|read_ir|state_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|state_count[17]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state_count_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state_count\(17));

-- Location: LCCOMB_X80_Y38_N30
\comb_3|read_ir|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~5_combout\ = (\comb_3|read_ir|state.GUIDANCE~q\ & (\comb_3|read_ir|Selector1~4_combout\ & (\comb_3|read_ir|state_count\(16) & \comb_3|read_ir|state_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state.GUIDANCE~q\,
	datab => \comb_3|read_ir|Selector1~4_combout\,
	datac => \comb_3|read_ir|state_count\(16),
	datad => \comb_3|read_ir|state_count\(17),
	combout => \comb_3|read_ir|Selector1~5_combout\);

-- Location: LCCOMB_X80_Y38_N22
\comb_3|read_ir|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector2~0_combout\ = (!\comb_3|read_ir|Selector1~11_combout\ & ((\comb_3|read_ir|Selector1~6_combout\ & ((\comb_3|read_ir|state.DATAREAD~q\))) # (!\comb_3|read_ir|Selector1~6_combout\ & (\comb_3|read_ir|Selector1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~5_combout\,
	datab => \comb_3|read_ir|Selector1~6_combout\,
	datac => \comb_3|read_ir|state.DATAREAD~q\,
	datad => \comb_3|read_ir|Selector1~11_combout\,
	combout => \comb_3|read_ir|Selector2~0_combout\);

-- Location: FF_X80_Y38_N23
\comb_3|read_ir|state.DATAREAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|state.DATAREAD~q\);

-- Location: FF_X77_Y40_N9
\comb_3|read_ir|bitcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|bitcount[0]~6_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|bitcount[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(0));

-- Location: LCCOMB_X77_Y40_N10
\comb_3|read_ir|bitcount[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[1]~8_combout\ = (\comb_3|read_ir|bitcount\(1) & (!\comb_3|read_ir|bitcount[0]~7\)) # (!\comb_3|read_ir|bitcount\(1) & ((\comb_3|read_ir|bitcount[0]~7\) # (GND)))
-- \comb_3|read_ir|bitcount[1]~9\ = CARRY((!\comb_3|read_ir|bitcount[0]~7\) # (!\comb_3|read_ir|bitcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(1),
	datad => VCC,
	cin => \comb_3|read_ir|bitcount[0]~7\,
	combout => \comb_3|read_ir|bitcount[1]~8_combout\,
	cout => \comb_3|read_ir|bitcount[1]~9\);

-- Location: FF_X77_Y40_N11
\comb_3|read_ir|bitcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|bitcount[1]~8_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|bitcount[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(1));

-- Location: FF_X77_Y40_N13
\comb_3|read_ir|bitcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|bitcount[2]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|bitcount[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(2));

-- Location: LCCOMB_X77_Y40_N0
\comb_3|read_ir|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~3_combout\ = (!\comb_3|read_ir|bitcount\(5) & (!\comb_3|read_ir|bitcount\(3) & (!\comb_3|read_ir|bitcount\(0) & \comb_3|read_ir|bitcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(5),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(0),
	datad => \comb_3|read_ir|bitcount\(4),
	combout => \comb_3|read_ir|Decoder0~3_combout\);

-- Location: LCCOMB_X77_Y39_N18
\comb_3|read_ir|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~4_combout\ = (\comb_3|read_ir|data\(17)) # ((!\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~3_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~3_combout\,
	datac => \comb_3|read_ir|data\(17),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~4_combout\);

-- Location: LCCOMB_X81_Y39_N18
\comb_3|read_ir|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~1_combout\ = ((!\comb_3|read_ir|Selector1~0_combout\ & (!\comb_3|read_ir|data_count\(5) & \comb_3|read_ir|LessThan4~0_combout\))) # (!\comb_3|read_ir|data_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~0_combout\,
	datab => \comb_3|read_ir|data_count\(9),
	datac => \comb_3|read_ir|data_count\(5),
	datad => \comb_3|read_ir|LessThan4~0_combout\,
	combout => \comb_3|read_ir|LessThan4~1_combout\);

-- Location: LCCOMB_X81_Y39_N20
\comb_3|read_ir|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~2_combout\ = (!\comb_3|read_ir|data_count\(12) & (\comb_3|read_ir|LessThan4~1_combout\ & (!\comb_3|read_ir|data_count\(11) & !\comb_3|read_ir|data_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(12),
	datab => \comb_3|read_ir|LessThan4~1_combout\,
	datac => \comb_3|read_ir|data_count\(11),
	datad => \comb_3|read_ir|data_count\(10),
	combout => \comb_3|read_ir|LessThan4~2_combout\);

-- Location: LCCOMB_X81_Y39_N26
\comb_3|read_ir|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~3_combout\ = ((!\comb_3|read_ir|data_count\(14) & ((\comb_3|read_ir|LessThan4~2_combout\) # (!\comb_3|read_ir|data_count\(13))))) # (!\comb_3|read_ir|data_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(14),
	datab => \comb_3|read_ir|LessThan4~2_combout\,
	datac => \comb_3|read_ir|data_count\(13),
	datad => \comb_3|read_ir|data_count\(15),
	combout => \comb_3|read_ir|LessThan4~3_combout\);

-- Location: LCCOMB_X81_Y39_N24
\comb_3|read_ir|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~1_combout\ = (((\comb_3|read_ir|data_count\(16)) # (\comb_3|read_ir|data_count\(17))) # (!\comb_3|read_ir|state.DATAREAD~q\)) # (!\comb_3|read_ir|LessThan4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|LessThan4~3_combout\,
	datab => \comb_3|read_ir|state.DATAREAD~q\,
	datac => \comb_3|read_ir|data_count\(16),
	datad => \comb_3|read_ir|data_count\(17),
	combout => \comb_3|read_ir|data~1_combout\);

-- Location: FF_X77_Y39_N19
\comb_3|read_ir|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~4_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(17));

-- Location: LCCOMB_X76_Y39_N30
\comb_3|read_ir|data_buf[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[17]~feeder_combout\ = \comb_3|read_ir|data\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data\(17),
	combout => \comb_3|read_ir|data_buf[17]~feeder_combout\);

-- Location: LCCOMB_X77_Y40_N30
\comb_3|read_ir|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~0_combout\ = (!\comb_3|read_ir|bitcount\(5) & (\comb_3|read_ir|bitcount\(3) & (!\comb_3|read_ir|bitcount\(0) & \comb_3|read_ir|bitcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(5),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(0),
	datad => \comb_3|read_ir|bitcount\(4),
	combout => \comb_3|read_ir|Decoder0~0_combout\);

-- Location: LCCOMB_X77_Y39_N12
\comb_3|read_ir|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~9_combout\ = (\comb_3|read_ir|data\(27)) # ((\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~0_combout\ & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~0_combout\,
	datac => \comb_3|read_ir|data\(27),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~9_combout\);

-- Location: FF_X77_Y39_N13
\comb_3|read_ir|data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~9_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(27));

-- Location: LCCOMB_X77_Y40_N26
\comb_3|read_ir|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~2_combout\ = (!\comb_3|read_ir|bitcount\(5) & (\comb_3|read_ir|bitcount\(3) & (\comb_3|read_ir|bitcount\(0) & \comb_3|read_ir|bitcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(5),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(0),
	datad => \comb_3|read_ir|bitcount\(4),
	combout => \comb_3|read_ir|Decoder0~2_combout\);

-- Location: LCCOMB_X77_Y39_N16
\comb_3|read_ir|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~7_combout\ = (\comb_3|read_ir|data\(26)) # ((!\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~2_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~2_combout\,
	datac => \comb_3|read_ir|data\(26),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~7_combout\);

-- Location: FF_X77_Y39_N17
\comb_3|read_ir|data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~7_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(26));

-- Location: LCCOMB_X77_Y39_N30
\comb_3|read_ir|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~8_combout\ = (\comb_3|read_ir|data\(19)) # ((\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~3_combout\ & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~3_combout\,
	datac => \comb_3|read_ir|data\(19),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~8_combout\);

-- Location: FF_X77_Y39_N31
\comb_3|read_ir|data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~8_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(19));

-- Location: LCCOMB_X77_Y40_N28
\comb_3|read_ir|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~1_combout\ = (!\comb_3|read_ir|bitcount\(5) & (!\comb_3|read_ir|bitcount\(3) & (\comb_3|read_ir|bitcount\(0) & \comb_3|read_ir|bitcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(5),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(0),
	datad => \comb_3|read_ir|bitcount\(4),
	combout => \comb_3|read_ir|Decoder0~1_combout\);

-- Location: LCCOMB_X77_Y39_N2
\comb_3|read_ir|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~6_combout\ = (\comb_3|read_ir|data\(18)) # ((!\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|bitcount\(1) & \comb_3|read_ir|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|bitcount\(1),
	datac => \comb_3|read_ir|data\(18),
	datad => \comb_3|read_ir|Decoder0~1_combout\,
	combout => \comb_3|read_ir|data~6_combout\);

-- Location: FF_X77_Y39_N3
\comb_3|read_ir|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~6_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(18));

-- Location: LCCOMB_X77_Y39_N20
\comb_3|read_ir|data_buf[23]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~2_combout\ = (\comb_3|read_ir|data\(27) & (!\comb_3|read_ir|data\(19) & (\comb_3|read_ir|data\(26) $ (\comb_3|read_ir|data\(18))))) # (!\comb_3|read_ir|data\(27) & (\comb_3|read_ir|data\(19) & (\comb_3|read_ir|data\(26) $ 
-- (\comb_3|read_ir|data\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data\(27),
	datab => \comb_3|read_ir|data\(26),
	datac => \comb_3|read_ir|data\(19),
	datad => \comb_3|read_ir|data\(18),
	combout => \comb_3|read_ir|data_buf[23]~2_combout\);

-- Location: LCCOMB_X77_Y39_N22
\comb_3|read_ir|data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~12_combout\ = (\comb_3|read_ir|data\(21)) # ((\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~3_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~3_combout\,
	datac => \comb_3|read_ir|data\(21),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~12_combout\);

-- Location: FF_X77_Y39_N23
\comb_3|read_ir|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~12_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(21));

-- Location: LCCOMB_X77_Y39_N24
\comb_3|read_ir|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~11_combout\ = (\comb_3|read_ir|data\(28)) # ((\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~2_combout\ & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~2_combout\,
	datac => \comb_3|read_ir|data\(28),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~11_combout\);

-- Location: FF_X77_Y39_N25
\comb_3|read_ir|data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~11_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(28));

-- Location: LCCOMB_X77_Y39_N8
\comb_3|read_ir|data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~13_combout\ = (\comb_3|read_ir|data\(29)) # ((\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~0_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~0_combout\,
	datac => \comb_3|read_ir|data\(29),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~13_combout\);

-- Location: FF_X77_Y39_N9
\comb_3|read_ir|data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~13_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(29));

-- Location: LCCOMB_X77_Y39_N10
\comb_3|read_ir|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~10_combout\ = (\comb_3|read_ir|data\(20)) # ((\comb_3|read_ir|bitcount\(2) & (!\comb_3|read_ir|bitcount\(1) & \comb_3|read_ir|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|bitcount\(1),
	datac => \comb_3|read_ir|data\(20),
	datad => \comb_3|read_ir|Decoder0~1_combout\,
	combout => \comb_3|read_ir|data~10_combout\);

-- Location: FF_X77_Y39_N11
\comb_3|read_ir|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~10_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(20));

-- Location: LCCOMB_X77_Y39_N14
\comb_3|read_ir|data_buf[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~3_combout\ = (\comb_3|read_ir|data\(21) & (!\comb_3|read_ir|data\(29) & (\comb_3|read_ir|data\(28) $ (\comb_3|read_ir|data\(20))))) # (!\comb_3|read_ir|data\(21) & (\comb_3|read_ir|data\(29) & (\comb_3|read_ir|data\(28) $ 
-- (\comb_3|read_ir|data\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data\(21),
	datab => \comb_3|read_ir|data\(28),
	datac => \comb_3|read_ir|data\(29),
	datad => \comb_3|read_ir|data\(20),
	combout => \comb_3|read_ir|data_buf[23]~3_combout\);

-- Location: LCCOMB_X77_Y40_N24
\comb_3|read_ir|data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~14_combout\ = (\comb_3|read_ir|data\(31)) # ((\comb_3|read_ir|Equal1~0_combout\ & (\comb_3|read_ir|bitcount\(5) & !\comb_3|read_ir|bitcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Equal1~0_combout\,
	datab => \comb_3|read_ir|bitcount\(5),
	datac => \comb_3|read_ir|data\(31),
	datad => \comb_3|read_ir|bitcount\(4),
	combout => \comb_3|read_ir|data~14_combout\);

-- Location: FF_X77_Y40_N25
\comb_3|read_ir|data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~14_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(31));

-- Location: LCCOMB_X77_Y39_N28
\comb_3|read_ir|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~0_combout\ = (\comb_3|read_ir|data\(23)) # ((!\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~0_combout\ & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~0_combout\,
	datac => \comb_3|read_ir|data\(23),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~0_combout\);

-- Location: FF_X77_Y39_N29
\comb_3|read_ir|data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~0_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(23));

-- Location: LCCOMB_X77_Y40_N22
\comb_3|read_ir|data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~15_combout\ = (\comb_3|read_ir|data\(22)) # ((\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~1_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~1_combout\,
	datac => \comb_3|read_ir|data\(22),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~15_combout\);

-- Location: FF_X77_Y40_N23
\comb_3|read_ir|data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~15_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(22));

-- Location: LCCOMB_X77_Y40_N4
\comb_3|read_ir|data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~16_combout\ = (\comb_3|read_ir|data\(30)) # ((\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~2_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~2_combout\,
	datac => \comb_3|read_ir|data\(30),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~16_combout\);

-- Location: FF_X77_Y40_N5
\comb_3|read_ir|data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~16_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(30));

-- Location: LCCOMB_X76_Y39_N22
\comb_3|read_ir|data_buf[23]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~4_combout\ = (\comb_3|read_ir|data\(31) & (!\comb_3|read_ir|data\(23) & (\comb_3|read_ir|data\(22) $ (\comb_3|read_ir|data\(30))))) # (!\comb_3|read_ir|data\(31) & (\comb_3|read_ir|data\(23) & (\comb_3|read_ir|data\(22) $ 
-- (\comb_3|read_ir|data\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data\(31),
	datab => \comb_3|read_ir|data\(23),
	datac => \comb_3|read_ir|data\(22),
	datad => \comb_3|read_ir|data\(30),
	combout => \comb_3|read_ir|data_buf[23]~4_combout\);

-- Location: LCCOMB_X77_Y39_N6
\comb_3|read_ir|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~2_combout\ = (\comb_3|read_ir|data\(16)) # ((!\comb_3|read_ir|bitcount\(2) & (!\comb_3|read_ir|bitcount\(1) & \comb_3|read_ir|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|bitcount\(1),
	datac => \comb_3|read_ir|data\(16),
	datad => \comb_3|read_ir|Decoder0~1_combout\,
	combout => \comb_3|read_ir|data~2_combout\);

-- Location: FF_X77_Y39_N7
\comb_3|read_ir|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~2_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(16));

-- Location: LCCOMB_X77_Y39_N0
\comb_3|read_ir|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~3_combout\ = (\comb_3|read_ir|data\(24)) # ((!\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~2_combout\ & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~2_combout\,
	datac => \comb_3|read_ir|data\(24),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~3_combout\);

-- Location: FF_X77_Y39_N1
\comb_3|read_ir|data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~3_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(24));

-- Location: LCCOMB_X77_Y39_N4
\comb_3|read_ir|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~5_combout\ = (\comb_3|read_ir|data\(25)) # ((!\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~0_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~0_combout\,
	datac => \comb_3|read_ir|data\(25),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~5_combout\);

-- Location: FF_X77_Y39_N5
\comb_3|read_ir|data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data~5_combout\,
	clrn => \reset~input_o\,
	sclr => \comb_3|read_ir|ALT_INV_state.DATAREAD~q\,
	ena => \comb_3|read_ir|data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data\(25));

-- Location: LCCOMB_X77_Y39_N26
\comb_3|read_ir|data_buf[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~0_combout\ = (\comb_3|read_ir|data\(16) & (!\comb_3|read_ir|data\(24) & (\comb_3|read_ir|data\(25) $ (\comb_3|read_ir|data\(17))))) # (!\comb_3|read_ir|data\(16) & (\comb_3|read_ir|data\(24) & (\comb_3|read_ir|data\(25) $ 
-- (\comb_3|read_ir|data\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data\(16),
	datab => \comb_3|read_ir|data\(24),
	datac => \comb_3|read_ir|data\(25),
	datad => \comb_3|read_ir|data\(17),
	combout => \comb_3|read_ir|data_buf[23]~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
\comb_3|read_ir|data_buf[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~1_combout\ = (\comb_3|read_ir|Equal1~0_combout\ & (\comb_3|read_ir|bitcount\(5) & (\comb_3|read_ir|data_buf[23]~0_combout\ & !\comb_3|read_ir|bitcount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Equal1~0_combout\,
	datab => \comb_3|read_ir|bitcount\(5),
	datac => \comb_3|read_ir|data_buf[23]~0_combout\,
	datad => \comb_3|read_ir|bitcount\(4),
	combout => \comb_3|read_ir|data_buf[23]~1_combout\);

-- Location: LCCOMB_X76_Y39_N16
\comb_3|read_ir|data_buf[23]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~5_combout\ = (\comb_3|read_ir|data_buf[23]~2_combout\ & (\comb_3|read_ir|data_buf[23]~3_combout\ & (\comb_3|read_ir|data_buf[23]~4_combout\ & \comb_3|read_ir|data_buf[23]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_buf[23]~2_combout\,
	datab => \comb_3|read_ir|data_buf[23]~3_combout\,
	datac => \comb_3|read_ir|data_buf[23]~4_combout\,
	datad => \comb_3|read_ir|data_buf[23]~1_combout\,
	combout => \comb_3|read_ir|data_buf[23]~5_combout\);

-- Location: LCCOMB_X76_Y39_N26
\comb_3|read_ir|data_buf[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~6_combout\ = (\comb_3|read_ir|data_buf[23]~5_combout\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_buf[23]~5_combout\,
	datad => \reset~input_o\,
	combout => \comb_3|read_ir|data_buf[23]~6_combout\);

-- Location: FF_X76_Y39_N31
\comb_3|read_ir|data_buf[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[17]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(17));

-- Location: LCCOMB_X79_Y39_N12
\comb_3|read_ir|data_ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_ready~feeder_combout\ = \comb_3|read_ir|data_buf[23]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_buf[23]~5_combout\,
	combout => \comb_3|read_ir|data_ready~feeder_combout\);

-- Location: FF_X79_Y39_N13
\comb_3|read_ir|data_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_ready~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_ready~q\);

-- Location: FF_X75_Y39_N7
\comb_3|read_ir|oDATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data_buf\(17),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(17));

-- Location: LCCOMB_X76_Y39_N12
\comb_3|read_ir|data_buf[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[18]~feeder_combout\ = \comb_3|read_ir|data\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data\(18),
	combout => \comb_3|read_ir|data_buf[18]~feeder_combout\);

-- Location: FF_X76_Y39_N13
\comb_3|read_ir|data_buf[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[18]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(18));

-- Location: FF_X75_Y39_N17
\comb_3|read_ir|oDATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data_buf\(18),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(18));

-- Location: LCCOMB_X76_Y39_N8
\comb_3|read_ir|data_buf[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[16]~feeder_combout\ = \comb_3|read_ir|data\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data\(16),
	combout => \comb_3|read_ir|data_buf[16]~feeder_combout\);

-- Location: FF_X76_Y39_N9
\comb_3|read_ir|data_buf[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[16]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(16));

-- Location: FF_X75_Y39_N9
\comb_3|read_ir|oDATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data_buf\(16),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(16));

-- Location: FF_X76_Y39_N19
\comb_3|read_ir|data_buf[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data\(19),
	sload => VCC,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(19));

-- Location: LCCOMB_X76_Y39_N24
\comb_3|read_ir|oDATA[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|oDATA[19]~feeder_combout\ = \comb_3|read_ir|data_buf\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_buf\(19),
	combout => \comb_3|read_ir|oDATA[19]~feeder_combout\);

-- Location: FF_X76_Y39_N25
\comb_3|read_ir|oDATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|oDATA[19]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(19));

-- Location: LCCOMB_X75_Y39_N8
\comb_3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~1_combout\ = (!\comb_3|read_ir|oDATA\(17) & (!\comb_3|read_ir|oDATA\(18) & (!\comb_3|read_ir|oDATA\(16) & !\comb_3|read_ir|oDATA\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|oDATA\(17),
	datab => \comb_3|read_ir|oDATA\(18),
	datac => \comb_3|read_ir|oDATA\(16),
	datad => \comb_3|read_ir|oDATA\(19),
	combout => \comb_3|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y39_N10
\comb_3|read_ir|data_buf[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~feeder_combout\ = \comb_3|read_ir|data\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data\(23),
	combout => \comb_3|read_ir|data_buf[23]~feeder_combout\);

-- Location: FF_X76_Y39_N11
\comb_3|read_ir|data_buf[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[23]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(23));

-- Location: FF_X75_Y39_N1
\comb_3|read_ir|oDATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data_buf\(23),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(23));

-- Location: LCCOMB_X76_Y39_N14
\comb_3|read_ir|data_buf[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[21]~feeder_combout\ = \comb_3|read_ir|data\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data\(21),
	combout => \comb_3|read_ir|data_buf[21]~feeder_combout\);

-- Location: FF_X76_Y39_N15
\comb_3|read_ir|data_buf[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[21]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(21));

-- Location: FF_X75_Y39_N21
\comb_3|read_ir|oDATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data_buf\(21),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(21));

-- Location: FF_X76_Y39_N21
\comb_3|read_ir|data_buf[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data\(22),
	sload => VCC,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(22));

-- Location: FF_X75_Y39_N31
\comb_3|read_ir|oDATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data_buf\(22),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(22));

-- Location: FF_X76_Y39_N5
\comb_3|read_ir|data_buf[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data\(20),
	sload => VCC,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(20));

-- Location: LCCOMB_X75_Y39_N2
\comb_3|read_ir|oDATA[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|oDATA[20]~feeder_combout\ = \comb_3|read_ir|data_buf\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_buf\(20),
	combout => \comb_3|read_ir|oDATA[20]~feeder_combout\);

-- Location: FF_X75_Y39_N3
\comb_3|read_ir|oDATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|oDATA[20]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(20));

-- Location: LCCOMB_X75_Y39_N30
\comb_3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~0_combout\ = (!\comb_3|read_ir|oDATA\(23) & (!\comb_3|read_ir|oDATA\(21) & (!\comb_3|read_ir|oDATA\(22) & !\comb_3|read_ir|oDATA\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|oDATA\(23),
	datab => \comb_3|read_ir|oDATA\(21),
	datac => \comb_3|read_ir|oDATA\(22),
	datad => \comb_3|read_ir|oDATA\(20),
	combout => \comb_3|Equal0~0_combout\);

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

-- Location: LCCOMB_X49_Y38_N10
\comb_3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~0_combout\ = (\comb_3|Equal0~1_combout\ & (\comb_3|Equal0~0_combout\ & (!\comb_3|state\(0) & \SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~1_combout\,
	datab => \comb_3|Equal0~0_combout\,
	datac => \comb_3|state\(0),
	datad => \SW[5]~input_o\,
	combout => \comb_3|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y35_N4
\comb_3|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~3_combout\ = (\comb_3|state\(1) & ((\comb_3|Mux1~2_combout\) # ((\comb_3|state\(3) & \comb_3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|Mux1~2_combout\,
	datac => \comb_3|state\(1),
	datad => \comb_3|Mux1~0_combout\,
	combout => \comb_3|Mux1~3_combout\);

-- Location: LCCOMB_X70_Y35_N6
\comb_3|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~4_combout\ = (\comb_3|state\(2) & (((\comb_3|state\(3))))) # (!\comb_3|state\(2) & (\comb_3|Mux1~3_combout\ & ((\comb_3|state\(3)) # (\comb_3|Equal2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|Mux1~3_combout\,
	datac => \comb_3|state\(3),
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux1~4_combout\);

-- Location: IOIBUF_X115_Y35_N22
\PW~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PW,
	o => \PW~input_o\);

-- Location: LCCOMB_X70_Y35_N24
\comb_3|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~5_combout\ = (\PW~input_o\) # ((!\comb_3|state\(1)) # (!\comb_3|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PW~input_o\,
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(1),
	combout => \comb_3|Mux1~5_combout\);

-- Location: LCCOMB_X70_Y35_N26
\comb_3|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~6_combout\ = (\comb_3|Mux1~4_combout\ & (((\comb_3|Mux1~5_combout\) # (!\comb_3|state\(2))))) # (!\comb_3|Mux1~4_combout\ & (!\comb_3|Equal2~9_combout\ & (\comb_3|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux1~4_combout\,
	datab => \comb_3|Equal2~9_combout\,
	datac => \comb_3|state\(2),
	datad => \comb_3|Mux1~5_combout\,
	combout => \comb_3|Mux1~6_combout\);

-- Location: FF_X70_Y35_N27
\comb_3|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(2));

-- Location: LCCOMB_X63_Y35_N18
\comb_3|picked_second_power~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_second_power~1_combout\ = (\comb_3|state\(2) & (((\comb_3|picked_second_power~q\)))) # (!\comb_3|state\(2) & ((\comb_3|state\(3) & ((\comb_3|picked_second_power~q\))) # (!\comb_3|state\(3) & (\comb_3|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(2),
	datac => \comb_3|picked_second_power~q\,
	datad => \comb_3|state\(3),
	combout => \comb_3|picked_second_power~1_combout\);

-- Location: LCCOMB_X63_Y35_N0
\comb_3|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|state~2_combout\ = (\comb_3|Equal2~9_combout\ & ((\SW[3]~input_o\) # (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \comb_3|Equal2~9_combout\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|state~2_combout\);

-- Location: LCCOMB_X63_Y35_N22
\comb_3|picked_second_power~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_second_power~2_combout\ = (\comb_3|state\(0) & ((\comb_3|picked_second_power~q\) # ((\comb_3|picked_second_power~1_combout\ & \comb_3|state~2_combout\)))) # (!\comb_3|state\(0) & (\comb_3|picked_second_power~1_combout\ & 
-- (\comb_3|picked_second_power~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|picked_second_power~1_combout\,
	datac => \comb_3|picked_second_power~q\,
	datad => \comb_3|state~2_combout\,
	combout => \comb_3|picked_second_power~2_combout\);

-- Location: FF_X63_Y35_N23
\comb_3|picked_second_power\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|picked_second_power~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|picked_second_power~q\);

-- Location: LCCOMB_X63_Y35_N16
\comb_3|picked_first_power~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_first_power~0_combout\ = (\comb_3|state\(3)) # ((\comb_3|state\(0)) # (\comb_3|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(2),
	combout => \comb_3|picked_first_power~0_combout\);

-- Location: LCCOMB_X63_Y35_N28
\comb_3|picked_first_power~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_first_power~1_combout\ = (\comb_3|picked_first_power~0_combout\ & (((\comb_3|picked_first_power~q\)))) # (!\comb_3|picked_first_power~0_combout\ & (\comb_3|state\(1) & ((\comb_3|picked_first_power~q\) # (\comb_3|state~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|picked_first_power~0_combout\,
	datac => \comb_3|picked_first_power~q\,
	datad => \comb_3|state~2_combout\,
	combout => \comb_3|picked_first_power~1_combout\);

-- Location: FF_X63_Y35_N29
\comb_3|picked_first_power\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|picked_first_power~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|picked_first_power~q\);

-- Location: LCCOMB_X63_Y35_N8
\comb_3|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|state~0_combout\ = ((!\comb_3|Equal2~9_combout\) # (!\comb_3|picked_first_power~q\)) # (!\comb_3|picked_second_power~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|picked_second_power~q\,
	datab => \comb_3|picked_first_power~q\,
	datac => \comb_3|Equal2~9_combout\,
	combout => \comb_3|state~0_combout\);

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

-- Location: LCCOMB_X70_Y35_N14
\comb_3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~0_combout\ = (\comb_3|state\(1) & (((\comb_3|state\(2))))) # (!\comb_3|state\(1) & ((\comb_3|state\(2) & (\comb_3|state~0_combout\)) # (!\comb_3|state\(2) & ((!\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state~0_combout\,
	datab => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	datad => \SW[1]~input_o\,
	combout => \comb_3|Mux3~0_combout\);

-- Location: LCCOMB_X68_Y36_N12
\comb_3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~1_combout\ = (\comb_3|state\(1) & ((\comb_3|Mux3~0_combout\ & (!\comb_3|Equal2~9_combout\)) # (!\comb_3|Mux3~0_combout\ & ((\comb_3|state~1_combout\))))) # (!\comb_3|state\(1) & (((\comb_3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal2~9_combout\,
	datab => \comb_3|state\(1),
	datac => \comb_3|state~1_combout\,
	datad => \comb_3|Mux3~0_combout\,
	combout => \comb_3|Mux3~1_combout\);

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

-- Location: LCCOMB_X68_Y36_N4
\comb_3|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~4_combout\ = (!\comb_3|state\(2) & ((\comb_3|state\(1) & (!\comb_3|state~1_combout\)) # (!\comb_3|state\(1) & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state~1_combout\,
	datab => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	datad => \SW[0]~input_o\,
	combout => \comb_3|Mux3~4_combout\);

-- Location: LCCOMB_X63_Y35_N6
\comb_3|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|always0~0_combout\ = (\comb_3|picked_first_power~q\ & \comb_3|picked_second_power~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|picked_first_power~q\,
	datac => \comb_3|picked_second_power~q\,
	combout => \comb_3|always0~0_combout\);

-- Location: LCCOMB_X68_Y36_N2
\comb_3|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~5_combout\ = (\comb_3|Mux3~4_combout\) # ((\comb_3|state\(2) & (\comb_3|Equal2~9_combout\ & !\comb_3|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|Mux3~4_combout\,
	datac => \comb_3|Equal2~9_combout\,
	datad => \comb_3|always0~0_combout\,
	combout => \comb_3|Mux3~5_combout\);

-- Location: LCCOMB_X49_Y38_N28
\comb_3|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~2_combout\ = (\SW[5]~input_o\ & ((!\comb_3|Equal0~0_combout\) # (!\comb_3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~1_combout\,
	datab => \comb_3|Equal0~0_combout\,
	datad => \SW[5]~input_o\,
	combout => \comb_3|Mux3~2_combout\);

-- Location: LCCOMB_X68_Y36_N10
\comb_3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~3_combout\ = (\comb_3|state\(1) & ((\comb_3|state\(2) & (\comb_3|Equal2~9_combout\)) # (!\comb_3|state\(2) & ((\comb_3|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|state\(1),
	datac => \comb_3|Equal2~9_combout\,
	datad => \comb_3|Mux3~2_combout\,
	combout => \comb_3|Mux3~3_combout\);

-- Location: LCCOMB_X68_Y36_N20
\comb_3|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~6_combout\ = (\comb_3|state\(0) & (((\comb_3|state\(3))))) # (!\comb_3|state\(0) & ((\comb_3|state\(3) & ((\comb_3|Mux3~3_combout\))) # (!\comb_3|state\(3) & (\comb_3|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|Mux3~5_combout\,
	datac => \comb_3|state\(3),
	datad => \comb_3|Mux3~3_combout\,
	combout => \comb_3|Mux3~6_combout\);

-- Location: LCCOMB_X75_Y39_N14
\comb_3|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector31~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datad => \comb_3|read_ir|oDATA\(18),
	combout => \comb_3|Selector31~0_combout\);

-- Location: LCCOMB_X49_Y38_N2
\comb_3|chosen_code_coder[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|chosen_code_coder[0]~0_combout\ = (\comb_3|state\(0)) # ((\comb_3|state\(2)) # ((\comb_3|state\(1) & !\comb_3|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(2),
	datac => \comb_3|state\(1),
	datad => \comb_3|state\(3),
	combout => \comb_3|chosen_code_coder[0]~0_combout\);

-- Location: LCCOMB_X49_Y38_N24
\comb_3|chosen_code_coder[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|chosen_code_coder[0]~1_combout\ = (!\comb_3|chosen_code_coder[0]~0_combout\ & (((\comb_3|Mux3~2_combout\ & \comb_3|state\(1))) # (!\comb_3|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|Mux3~2_combout\,
	datac => \comb_3|state\(1),
	datad => \comb_3|chosen_code_coder[0]~0_combout\,
	combout => \comb_3|chosen_code_coder[0]~1_combout\);

-- Location: FF_X75_Y39_N15
\comb_3|chosen_code_coder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector31~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(2));

-- Location: LCCOMB_X75_Y39_N4
\comb_3|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector30~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datad => \comb_3|read_ir|oDATA\(19),
	combout => \comb_3|Selector30~0_combout\);

-- Location: FF_X75_Y39_N5
\comb_3|chosen_code_coder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector30~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(3));

-- Location: LCCOMB_X75_Y39_N16
\comb_3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~1_combout\ = (\comb_3|chosen_code_coder\(2) & (\comb_3|read_ir|oDATA\(18) & (\comb_3|chosen_code_coder\(3) $ (!\comb_3|read_ir|oDATA\(19))))) # (!\comb_3|chosen_code_coder\(2) & (!\comb_3|read_ir|oDATA\(18) & (\comb_3|chosen_code_coder\(3) 
-- $ (!\comb_3|read_ir|oDATA\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|chosen_code_coder\(2),
	datab => \comb_3|chosen_code_coder\(3),
	datac => \comb_3|read_ir|oDATA\(18),
	datad => \comb_3|read_ir|oDATA\(19),
	combout => \comb_3|Equal1~1_combout\);

-- Location: LCCOMB_X75_Y39_N12
\comb_3|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector28~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datac => \comb_3|read_ir|oDATA\(21),
	combout => \comb_3|Selector28~0_combout\);

-- Location: FF_X75_Y39_N13
\comb_3|chosen_code_coder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector28~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(5));

-- Location: LCCOMB_X75_Y39_N18
\comb_3|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector29~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datad => \comb_3|read_ir|oDATA\(20),
	combout => \comb_3|Selector29~0_combout\);

-- Location: FF_X75_Y39_N19
\comb_3|chosen_code_coder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector29~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(4));

-- Location: LCCOMB_X75_Y39_N20
\comb_3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~2_combout\ = (\comb_3|chosen_code_coder\(5) & (\comb_3|read_ir|oDATA\(21) & (\comb_3|chosen_code_coder\(4) $ (!\comb_3|read_ir|oDATA\(20))))) # (!\comb_3|chosen_code_coder\(5) & (!\comb_3|read_ir|oDATA\(21) & (\comb_3|chosen_code_coder\(4) 
-- $ (!\comb_3|read_ir|oDATA\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|chosen_code_coder\(5),
	datab => \comb_3|chosen_code_coder\(4),
	datac => \comb_3|read_ir|oDATA\(21),
	datad => \comb_3|read_ir|oDATA\(20),
	combout => \comb_3|Equal1~2_combout\);

-- Location: LCCOMB_X75_Y39_N26
\comb_3|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector33~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datac => \comb_3|read_ir|oDATA\(16),
	combout => \comb_3|Selector33~0_combout\);

-- Location: FF_X75_Y39_N27
\comb_3|chosen_code_coder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector33~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(0));

-- Location: LCCOMB_X75_Y39_N28
\comb_3|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector32~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datad => \comb_3|read_ir|oDATA\(17),
	combout => \comb_3|Selector32~0_combout\);

-- Location: FF_X75_Y39_N29
\comb_3|chosen_code_coder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector32~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(1));

-- Location: LCCOMB_X75_Y39_N6
\comb_3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~0_combout\ = (\comb_3|chosen_code_coder\(0) & (\comb_3|read_ir|oDATA\(16) & (\comb_3|read_ir|oDATA\(17) $ (!\comb_3|chosen_code_coder\(1))))) # (!\comb_3|chosen_code_coder\(0) & (!\comb_3|read_ir|oDATA\(16) & (\comb_3|read_ir|oDATA\(17) $ 
-- (!\comb_3|chosen_code_coder\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|chosen_code_coder\(0),
	datab => \comb_3|read_ir|oDATA\(16),
	datac => \comb_3|read_ir|oDATA\(17),
	datad => \comb_3|chosen_code_coder\(1),
	combout => \comb_3|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y39_N24
\comb_3|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector26~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datac => \comb_3|read_ir|oDATA\(23),
	combout => \comb_3|Selector26~0_combout\);

-- Location: FF_X75_Y39_N25
\comb_3|chosen_code_coder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector26~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(7));

-- Location: LCCOMB_X75_Y39_N10
\comb_3|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector27~0_combout\ = (\comb_3|state\(3) & \comb_3|read_ir|oDATA\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datac => \comb_3|read_ir|oDATA\(22),
	combout => \comb_3|Selector27~0_combout\);

-- Location: FF_X75_Y39_N11
\comb_3|chosen_code_coder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Selector27~0_combout\,
	ena => \comb_3|chosen_code_coder[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|chosen_code_coder\(6));

-- Location: LCCOMB_X75_Y39_N0
\comb_3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~3_combout\ = (\comb_3|read_ir|oDATA\(22) & (\comb_3|chosen_code_coder\(6) & (\comb_3|chosen_code_coder\(7) $ (!\comb_3|read_ir|oDATA\(23))))) # (!\comb_3|read_ir|oDATA\(22) & (!\comb_3|chosen_code_coder\(6) & (\comb_3|chosen_code_coder\(7) 
-- $ (!\comb_3|read_ir|oDATA\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|oDATA\(22),
	datab => \comb_3|chosen_code_coder\(7),
	datac => \comb_3|read_ir|oDATA\(23),
	datad => \comb_3|chosen_code_coder\(6),
	combout => \comb_3|Equal1~3_combout\);

-- Location: LCCOMB_X75_Y39_N22
\comb_3|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~4_combout\ = (\comb_3|Equal1~1_combout\ & (\comb_3|Equal1~2_combout\ & (\comb_3|Equal1~0_combout\ & \comb_3|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal1~1_combout\,
	datab => \comb_3|Equal1~2_combout\,
	datac => \comb_3|Equal1~0_combout\,
	datad => \comb_3|Equal1~3_combout\,
	combout => \comb_3|Equal1~4_combout\);

-- Location: LCCOMB_X70_Y35_N20
\comb_3|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~7_combout\ = (\comb_3|state\(1) & (((\comb_3|counting_down|flag~q\) # (!\comb_3|Equal1~4_combout\)) # (!\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \comb_3|state\(1),
	datac => \comb_3|counting_down|flag~q\,
	datad => \comb_3|Equal1~4_combout\,
	combout => \comb_3|Mux3~7_combout\);

-- Location: LCCOMB_X70_Y35_N10
\comb_3|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~8_combout\ = (!\comb_3|state\(2) & ((\comb_3|Mux3~7_combout\) # ((!\comb_3|state\(1) & !\comb_3|Equal2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|Equal2~9_combout\,
	datac => \comb_3|state\(2),
	datad => \comb_3|Mux3~7_combout\,
	combout => \comb_3|Mux3~8_combout\);

-- Location: LCCOMB_X70_Y35_N0
\comb_3|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~9_combout\ = (\comb_3|Mux3~8_combout\) # ((\comb_3|state\(2) & ((\PW~input_o\) # (!\comb_3|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux3~8_combout\,
	datab => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	datad => \PW~input_o\,
	combout => \comb_3|Mux3~9_combout\);

-- Location: LCCOMB_X68_Y36_N22
\comb_3|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~10_combout\ = (\comb_3|Mux3~6_combout\ & (((\comb_3|Mux3~9_combout\) # (!\comb_3|state\(0))))) # (!\comb_3|Mux3~6_combout\ & (\comb_3|Mux3~1_combout\ & (\comb_3|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux3~1_combout\,
	datab => \comb_3|Mux3~6_combout\,
	datac => \comb_3|state\(0),
	datad => \comb_3|Mux3~9_combout\,
	combout => \comb_3|Mux3~10_combout\);

-- Location: FF_X68_Y36_N23
\comb_3|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(0));

-- Location: LCCOMB_X68_Y36_N24
\comb_3|counter[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counter[29]~1_combout\ = (\comb_3|state\(3) & (\comb_3|state\(1) $ (((\comb_3|state\(0)) # (!\comb_3|state\(2)))))) # (!\comb_3|state\(3) & (((\comb_3|state\(2)) # (\comb_3|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(1),
	combout => \comb_3|counter[29]~1_combout\);

-- Location: FF_X68_Y35_N17
\comb_3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux33~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(0));

-- Location: LCCOMB_X69_Y35_N4
\comb_3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~2_combout\ = (\comb_3|counter\(1) & (!\comb_3|Add0~1\)) # (!\comb_3|counter\(1) & ((\comb_3|Add0~1\) # (GND)))
-- \comb_3|Add0~3\ = CARRY((!\comb_3|Add0~1\) # (!\comb_3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(1),
	datad => VCC,
	cin => \comb_3|Add0~1\,
	combout => \comb_3|Add0~2_combout\,
	cout => \comb_3|Add0~3\);

-- Location: FF_X69_Y35_N5
\comb_3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~2_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(1));

-- Location: LCCOMB_X69_Y35_N6
\comb_3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~4_combout\ = (\comb_3|counter\(2) & (\comb_3|Add0~3\ $ (GND))) # (!\comb_3|counter\(2) & (!\comb_3|Add0~3\ & VCC))
-- \comb_3|Add0~5\ = CARRY((\comb_3|counter\(2) & !\comb_3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(2),
	datad => VCC,
	cin => \comb_3|Add0~3\,
	combout => \comb_3|Add0~4_combout\,
	cout => \comb_3|Add0~5\);

-- Location: FF_X69_Y35_N7
\comb_3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~4_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(2));

-- Location: LCCOMB_X69_Y35_N8
\comb_3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~6_combout\ = (\comb_3|counter\(3) & (!\comb_3|Add0~5\)) # (!\comb_3|counter\(3) & ((\comb_3|Add0~5\) # (GND)))
-- \comb_3|Add0~7\ = CARRY((!\comb_3|Add0~5\) # (!\comb_3|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(3),
	datad => VCC,
	cin => \comb_3|Add0~5\,
	combout => \comb_3|Add0~6_combout\,
	cout => \comb_3|Add0~7\);

-- Location: FF_X69_Y35_N9
\comb_3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~6_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(3));

-- Location: LCCOMB_X69_Y35_N10
\comb_3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~8_combout\ = (\comb_3|counter\(4) & (\comb_3|Add0~7\ $ (GND))) # (!\comb_3|counter\(4) & (!\comb_3|Add0~7\ & VCC))
-- \comb_3|Add0~9\ = CARRY((\comb_3|counter\(4) & !\comb_3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(4),
	datad => VCC,
	cin => \comb_3|Add0~7\,
	combout => \comb_3|Add0~8_combout\,
	cout => \comb_3|Add0~9\);

-- Location: FF_X69_Y35_N11
\comb_3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~8_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(4));

-- Location: LCCOMB_X69_Y35_N12
\comb_3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~10_combout\ = (\comb_3|counter\(5) & (!\comb_3|Add0~9\)) # (!\comb_3|counter\(5) & ((\comb_3|Add0~9\) # (GND)))
-- \comb_3|Add0~11\ = CARRY((!\comb_3|Add0~9\) # (!\comb_3|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(5),
	datad => VCC,
	cin => \comb_3|Add0~9\,
	combout => \comb_3|Add0~10_combout\,
	cout => \comb_3|Add0~11\);

-- Location: FF_X69_Y35_N13
\comb_3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~10_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(5));

-- Location: LCCOMB_X69_Y35_N14
\comb_3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~12_combout\ = (\comb_3|counter\(6) & (\comb_3|Add0~11\ $ (GND))) # (!\comb_3|counter\(6) & (!\comb_3|Add0~11\ & VCC))
-- \comb_3|Add0~13\ = CARRY((\comb_3|counter\(6) & !\comb_3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(6),
	datad => VCC,
	cin => \comb_3|Add0~11\,
	combout => \comb_3|Add0~12_combout\,
	cout => \comb_3|Add0~13\);

-- Location: FF_X69_Y35_N15
\comb_3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~12_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(6));

-- Location: LCCOMB_X69_Y35_N16
\comb_3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~14_combout\ = (\comb_3|counter\(7) & (!\comb_3|Add0~13\)) # (!\comb_3|counter\(7) & ((\comb_3|Add0~13\) # (GND)))
-- \comb_3|Add0~15\ = CARRY((!\comb_3|Add0~13\) # (!\comb_3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(7),
	datad => VCC,
	cin => \comb_3|Add0~13\,
	combout => \comb_3|Add0~14_combout\,
	cout => \comb_3|Add0~15\);

-- Location: LCCOMB_X68_Y35_N6
\comb_3|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux26~0_combout\ = (\comb_3|Add0~14_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~14_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux26~0_combout\);

-- Location: FF_X68_Y35_N7
\comb_3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux26~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(7));

-- Location: LCCOMB_X69_Y35_N18
\comb_3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~16_combout\ = (\comb_3|counter\(8) & (\comb_3|Add0~15\ $ (GND))) # (!\comb_3|counter\(8) & (!\comb_3|Add0~15\ & VCC))
-- \comb_3|Add0~17\ = CARRY((\comb_3|counter\(8) & !\comb_3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(8),
	datad => VCC,
	cin => \comb_3|Add0~15\,
	combout => \comb_3|Add0~16_combout\,
	cout => \comb_3|Add0~17\);

-- Location: FF_X69_Y35_N19
\comb_3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~16_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(8));

-- Location: LCCOMB_X69_Y35_N20
\comb_3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~18_combout\ = (\comb_3|counter\(9) & (!\comb_3|Add0~17\)) # (!\comb_3|counter\(9) & ((\comb_3|Add0~17\) # (GND)))
-- \comb_3|Add0~19\ = CARRY((!\comb_3|Add0~17\) # (!\comb_3|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(9),
	datad => VCC,
	cin => \comb_3|Add0~17\,
	combout => \comb_3|Add0~18_combout\,
	cout => \comb_3|Add0~19\);

-- Location: LCCOMB_X68_Y35_N22
\comb_3|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux24~0_combout\ = (\comb_3|Add0~18_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~18_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux24~0_combout\);

-- Location: FF_X68_Y35_N23
\comb_3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux24~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(9));

-- Location: LCCOMB_X69_Y35_N22
\comb_3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~20_combout\ = (\comb_3|counter\(10) & (\comb_3|Add0~19\ $ (GND))) # (!\comb_3|counter\(10) & (!\comb_3|Add0~19\ & VCC))
-- \comb_3|Add0~21\ = CARRY((\comb_3|counter\(10) & !\comb_3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(10),
	datad => VCC,
	cin => \comb_3|Add0~19\,
	combout => \comb_3|Add0~20_combout\,
	cout => \comb_3|Add0~21\);

-- Location: FF_X69_Y35_N23
\comb_3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~20_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(10));

-- Location: LCCOMB_X69_Y35_N24
\comb_3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~22_combout\ = (\comb_3|counter\(11) & (!\comb_3|Add0~21\)) # (!\comb_3|counter\(11) & ((\comb_3|Add0~21\) # (GND)))
-- \comb_3|Add0~23\ = CARRY((!\comb_3|Add0~21\) # (!\comb_3|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(11),
	datad => VCC,
	cin => \comb_3|Add0~21\,
	combout => \comb_3|Add0~22_combout\,
	cout => \comb_3|Add0~23\);

-- Location: FF_X69_Y35_N25
\comb_3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~22_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(11));

-- Location: LCCOMB_X69_Y35_N26
\comb_3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~24_combout\ = (\comb_3|counter\(12) & (\comb_3|Add0~23\ $ (GND))) # (!\comb_3|counter\(12) & (!\comb_3|Add0~23\ & VCC))
-- \comb_3|Add0~25\ = CARRY((\comb_3|counter\(12) & !\comb_3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(12),
	datad => VCC,
	cin => \comb_3|Add0~23\,
	combout => \comb_3|Add0~24_combout\,
	cout => \comb_3|Add0~25\);

-- Location: LCCOMB_X68_Y35_N10
\comb_3|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux21~0_combout\ = (\comb_3|Add0~24_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~24_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux21~0_combout\);

-- Location: FF_X68_Y35_N11
\comb_3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux21~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(12));

-- Location: LCCOMB_X69_Y35_N28
\comb_3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~26_combout\ = (\comb_3|counter\(13) & (!\comb_3|Add0~25\)) # (!\comb_3|counter\(13) & ((\comb_3|Add0~25\) # (GND)))
-- \comb_3|Add0~27\ = CARRY((!\comb_3|Add0~25\) # (!\comb_3|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(13),
	datad => VCC,
	cin => \comb_3|Add0~25\,
	combout => \comb_3|Add0~26_combout\,
	cout => \comb_3|Add0~27\);

-- Location: LCCOMB_X68_Y35_N0
\comb_3|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux20~0_combout\ = (\comb_3|Add0~26_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~26_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux20~0_combout\);

-- Location: FF_X68_Y35_N1
\comb_3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux20~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(13));

-- Location: LCCOMB_X69_Y35_N30
\comb_3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~28_combout\ = (\comb_3|counter\(14) & (\comb_3|Add0~27\ $ (GND))) # (!\comb_3|counter\(14) & (!\comb_3|Add0~27\ & VCC))
-- \comb_3|Add0~29\ = CARRY((\comb_3|counter\(14) & !\comb_3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(14),
	datad => VCC,
	cin => \comb_3|Add0~27\,
	combout => \comb_3|Add0~28_combout\,
	cout => \comb_3|Add0~29\);

-- Location: FF_X69_Y35_N31
\comb_3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~28_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(14));

-- Location: LCCOMB_X69_Y34_N0
\comb_3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~30_combout\ = (\comb_3|counter\(15) & (!\comb_3|Add0~29\)) # (!\comb_3|counter\(15) & ((\comb_3|Add0~29\) # (GND)))
-- \comb_3|Add0~31\ = CARRY((!\comb_3|Add0~29\) # (!\comb_3|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(15),
	datad => VCC,
	cin => \comb_3|Add0~29\,
	combout => \comb_3|Add0~30_combout\,
	cout => \comb_3|Add0~31\);

-- Location: LCCOMB_X70_Y34_N22
\comb_3|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux18~0_combout\ = (\comb_3|Add0~30_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~30_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux18~0_combout\);

-- Location: LCCOMB_X69_Y34_N30
\comb_3|counter[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counter[15]~feeder_combout\ = \comb_3|Mux18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Mux18~0_combout\,
	combout => \comb_3|counter[15]~feeder_combout\);

-- Location: FF_X69_Y34_N31
\comb_3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counter[15]~feeder_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(15));

-- Location: LCCOMB_X69_Y34_N2
\comb_3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~32_combout\ = (\comb_3|counter\(16) & (\comb_3|Add0~31\ $ (GND))) # (!\comb_3|counter\(16) & (!\comb_3|Add0~31\ & VCC))
-- \comb_3|Add0~33\ = CARRY((\comb_3|counter\(16) & !\comb_3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(16),
	datad => VCC,
	cin => \comb_3|Add0~31\,
	combout => \comb_3|Add0~32_combout\,
	cout => \comb_3|Add0~33\);

-- Location: FF_X69_Y34_N3
\comb_3|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~32_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(16));

-- Location: LCCOMB_X69_Y34_N4
\comb_3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~34_combout\ = (\comb_3|counter\(17) & (!\comb_3|Add0~33\)) # (!\comb_3|counter\(17) & ((\comb_3|Add0~33\) # (GND)))
-- \comb_3|Add0~35\ = CARRY((!\comb_3|Add0~33\) # (!\comb_3|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(17),
	datad => VCC,
	cin => \comb_3|Add0~33\,
	combout => \comb_3|Add0~34_combout\,
	cout => \comb_3|Add0~35\);

-- Location: LCCOMB_X70_Y34_N12
\comb_3|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux16~0_combout\ = (\comb_3|Add0~34_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~34_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux16~0_combout\);

-- Location: FF_X70_Y34_N13
\comb_3|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux16~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(17));

-- Location: LCCOMB_X69_Y34_N6
\comb_3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~36_combout\ = (\comb_3|counter\(18) & (\comb_3|Add0~35\ $ (GND))) # (!\comb_3|counter\(18) & (!\comb_3|Add0~35\ & VCC))
-- \comb_3|Add0~37\ = CARRY((\comb_3|counter\(18) & !\comb_3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(18),
	datad => VCC,
	cin => \comb_3|Add0~35\,
	combout => \comb_3|Add0~36_combout\,
	cout => \comb_3|Add0~37\);

-- Location: LCCOMB_X70_Y34_N6
\comb_3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux15~0_combout\ = (\comb_3|Add0~36_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~36_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux15~0_combout\);

-- Location: FF_X70_Y34_N7
\comb_3|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux15~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(18));

-- Location: LCCOMB_X69_Y34_N8
\comb_3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~38_combout\ = (\comb_3|counter\(19) & (!\comb_3|Add0~37\)) # (!\comb_3|counter\(19) & ((\comb_3|Add0~37\) # (GND)))
-- \comb_3|Add0~39\ = CARRY((!\comb_3|Add0~37\) # (!\comb_3|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(19),
	datad => VCC,
	cin => \comb_3|Add0~37\,
	combout => \comb_3|Add0~38_combout\,
	cout => \comb_3|Add0~39\);

-- Location: FF_X69_Y34_N9
\comb_3|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~38_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(19));

-- Location: LCCOMB_X69_Y34_N10
\comb_3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~40_combout\ = (\comb_3|counter\(20) & (\comb_3|Add0~39\ $ (GND))) # (!\comb_3|counter\(20) & (!\comb_3|Add0~39\ & VCC))
-- \comb_3|Add0~41\ = CARRY((\comb_3|counter\(20) & !\comb_3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(20),
	datad => VCC,
	cin => \comb_3|Add0~39\,
	combout => \comb_3|Add0~40_combout\,
	cout => \comb_3|Add0~41\);

-- Location: FF_X69_Y34_N11
\comb_3|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~40_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(20));

-- Location: LCCOMB_X69_Y34_N12
\comb_3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~42_combout\ = (\comb_3|counter\(21) & (!\comb_3|Add0~41\)) # (!\comb_3|counter\(21) & ((\comb_3|Add0~41\) # (GND)))
-- \comb_3|Add0~43\ = CARRY((!\comb_3|Add0~41\) # (!\comb_3|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(21),
	datad => VCC,
	cin => \comb_3|Add0~41\,
	combout => \comb_3|Add0~42_combout\,
	cout => \comb_3|Add0~43\);

-- Location: LCCOMB_X70_Y34_N2
\comb_3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux12~0_combout\ = (\comb_3|Add0~42_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~42_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux12~0_combout\);

-- Location: FF_X70_Y34_N3
\comb_3|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux12~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(21));

-- Location: LCCOMB_X69_Y34_N14
\comb_3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~44_combout\ = (\comb_3|counter\(22) & (\comb_3|Add0~43\ $ (GND))) # (!\comb_3|counter\(22) & (!\comb_3|Add0~43\ & VCC))
-- \comb_3|Add0~45\ = CARRY((\comb_3|counter\(22) & !\comb_3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(22),
	datad => VCC,
	cin => \comb_3|Add0~43\,
	combout => \comb_3|Add0~44_combout\,
	cout => \comb_3|Add0~45\);

-- Location: LCCOMB_X70_Y34_N4
\comb_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux11~0_combout\ = (\comb_3|Add0~44_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~44_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux11~0_combout\);

-- Location: FF_X70_Y34_N5
\comb_3|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux11~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(22));

-- Location: LCCOMB_X69_Y34_N16
\comb_3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~46_combout\ = (\comb_3|counter\(23) & (!\comb_3|Add0~45\)) # (!\comb_3|counter\(23) & ((\comb_3|Add0~45\) # (GND)))
-- \comb_3|Add0~47\ = CARRY((!\comb_3|Add0~45\) # (!\comb_3|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(23),
	datad => VCC,
	cin => \comb_3|Add0~45\,
	combout => \comb_3|Add0~46_combout\,
	cout => \comb_3|Add0~47\);

-- Location: LCCOMB_X70_Y34_N18
\comb_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux10~0_combout\ = (\comb_3|Add0~46_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~46_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux10~0_combout\);

-- Location: FF_X70_Y34_N19
\comb_3|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux10~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(23));

-- Location: LCCOMB_X69_Y34_N18
\comb_3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~48_combout\ = (\comb_3|counter\(24) & (\comb_3|Add0~47\ $ (GND))) # (!\comb_3|counter\(24) & (!\comb_3|Add0~47\ & VCC))
-- \comb_3|Add0~49\ = CARRY((\comb_3|counter\(24) & !\comb_3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(24),
	datad => VCC,
	cin => \comb_3|Add0~47\,
	combout => \comb_3|Add0~48_combout\,
	cout => \comb_3|Add0~49\);

-- Location: FF_X69_Y34_N19
\comb_3|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~48_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(24));

-- Location: LCCOMB_X69_Y34_N20
\comb_3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~50_combout\ = (\comb_3|counter\(25) & (!\comb_3|Add0~49\)) # (!\comb_3|counter\(25) & ((\comb_3|Add0~49\) # (GND)))
-- \comb_3|Add0~51\ = CARRY((!\comb_3|Add0~49\) # (!\comb_3|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(25),
	datad => VCC,
	cin => \comb_3|Add0~49\,
	combout => \comb_3|Add0~50_combout\,
	cout => \comb_3|Add0~51\);

-- Location: LCCOMB_X70_Y34_N26
\comb_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux8~0_combout\ = (\comb_3|Add0~50_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~50_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux8~0_combout\);

-- Location: FF_X70_Y34_N27
\comb_3|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux8~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(25));

-- Location: LCCOMB_X69_Y34_N22
\comb_3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~52_combout\ = (\comb_3|counter\(26) & (\comb_3|Add0~51\ $ (GND))) # (!\comb_3|counter\(26) & (!\comb_3|Add0~51\ & VCC))
-- \comb_3|Add0~53\ = CARRY((\comb_3|counter\(26) & !\comb_3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(26),
	datad => VCC,
	cin => \comb_3|Add0~51\,
	combout => \comb_3|Add0~52_combout\,
	cout => \comb_3|Add0~53\);

-- Location: LCCOMB_X70_Y34_N16
\comb_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux7~0_combout\ = (\comb_3|Add0~52_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~52_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux7~0_combout\);

-- Location: FF_X70_Y34_N17
\comb_3|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux7~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(26));

-- Location: LCCOMB_X69_Y34_N24
\comb_3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~54_combout\ = (\comb_3|counter\(27) & (!\comb_3|Add0~53\)) # (!\comb_3|counter\(27) & ((\comb_3|Add0~53\) # (GND)))
-- \comb_3|Add0~55\ = CARRY((!\comb_3|Add0~53\) # (!\comb_3|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(27),
	datad => VCC,
	cin => \comb_3|Add0~53\,
	combout => \comb_3|Add0~54_combout\,
	cout => \comb_3|Add0~55\);

-- Location: LCCOMB_X70_Y34_N30
\comb_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux6~0_combout\ = (\comb_3|Add0~54_combout\ & !\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~54_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux6~0_combout\);

-- Location: FF_X70_Y34_N31
\comb_3|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux6~0_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(27));

-- Location: LCCOMB_X69_Y34_N26
\comb_3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~56_combout\ = (\comb_3|counter\(28) & (\comb_3|Add0~55\ $ (GND))) # (!\comb_3|counter\(28) & (!\comb_3|Add0~55\ & VCC))
-- \comb_3|Add0~57\ = CARRY((\comb_3|counter\(28) & !\comb_3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(28),
	datad => VCC,
	cin => \comb_3|Add0~55\,
	combout => \comb_3|Add0~56_combout\,
	cout => \comb_3|Add0~57\);

-- Location: FF_X69_Y34_N27
\comb_3|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~56_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(28));

-- Location: LCCOMB_X69_Y34_N28
\comb_3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~58_combout\ = \comb_3|Add0~57\ $ (\comb_3|counter\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|counter\(29),
	cin => \comb_3|Add0~57\,
	combout => \comb_3|Add0~58_combout\);

-- Location: FF_X69_Y34_N29
\comb_3|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~58_combout\,
	ena => \comb_3|counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(29));

-- Location: LCCOMB_X70_Y34_N24
\comb_3|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~7_combout\ = (\comb_3|counter\(25) & (!\comb_3|counter\(24) & (\comb_3|counter\(27) & \comb_3|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(25),
	datab => \comb_3|counter\(24),
	datac => \comb_3|counter\(27),
	datad => \comb_3|counter\(26),
	combout => \comb_3|Equal2~7_combout\);

-- Location: LCCOMB_X70_Y34_N10
\comb_3|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~8_combout\ = (!\comb_3|counter\(29) & (!\comb_3|counter\(28) & \comb_3|Equal2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(29),
	datac => \comb_3|counter\(28),
	datad => \comb_3|Equal2~7_combout\,
	combout => \comb_3|Equal2~8_combout\);

-- Location: LCCOMB_X70_Y34_N28
\comb_3|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~6_combout\ = (!\comb_3|counter\(20) & (\comb_3|counter\(23) & (\comb_3|counter\(22) & \comb_3|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(20),
	datab => \comb_3|counter\(23),
	datac => \comb_3|counter\(22),
	datad => \comb_3|counter\(21),
	combout => \comb_3|Equal2~6_combout\);

-- Location: LCCOMB_X68_Y35_N12
\comb_3|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~2_combout\ = (!\comb_3|counter\(10) & (!\comb_3|counter\(11) & (\comb_3|counter\(9) & !\comb_3|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(10),
	datab => \comb_3|counter\(11),
	datac => \comb_3|counter\(9),
	datad => \comb_3|counter\(8),
	combout => \comb_3|Equal2~2_combout\);

-- Location: LCCOMB_X68_Y35_N20
\comb_3|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~1_combout\ = (!\comb_3|counter\(6) & (!\comb_3|counter\(5) & (!\comb_3|counter\(4) & \comb_3|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(6),
	datab => \comb_3|counter\(5),
	datac => \comb_3|counter\(4),
	datad => \comb_3|counter\(7),
	combout => \comb_3|Equal2~1_combout\);

-- Location: LCCOMB_X69_Y35_N0
\comb_3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~0_combout\ = (!\comb_3|counter\(0) & (!\comb_3|counter\(3) & (!\comb_3|counter\(1) & !\comb_3|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(0),
	datab => \comb_3|counter\(3),
	datac => \comb_3|counter\(1),
	datad => \comb_3|counter\(2),
	combout => \comb_3|Equal2~0_combout\);

-- Location: LCCOMB_X68_Y35_N2
\comb_3|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~3_combout\ = (\comb_3|counter\(12) & (\comb_3|counter\(13) & (!\comb_3|counter\(14) & \comb_3|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(12),
	datab => \comb_3|counter\(13),
	datac => \comb_3|counter\(14),
	datad => \comb_3|counter\(15),
	combout => \comb_3|Equal2~3_combout\);

-- Location: LCCOMB_X68_Y35_N24
\comb_3|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~4_combout\ = (\comb_3|Equal2~2_combout\ & (\comb_3|Equal2~1_combout\ & (\comb_3|Equal2~0_combout\ & \comb_3|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal2~2_combout\,
	datab => \comb_3|Equal2~1_combout\,
	datac => \comb_3|Equal2~0_combout\,
	datad => \comb_3|Equal2~3_combout\,
	combout => \comb_3|Equal2~4_combout\);

-- Location: LCCOMB_X70_Y34_N20
\comb_3|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~5_combout\ = (!\comb_3|counter\(16) & (\comb_3|counter\(18) & (!\comb_3|counter\(19) & \comb_3|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(16),
	datab => \comb_3|counter\(18),
	datac => \comb_3|counter\(19),
	datad => \comb_3|counter\(17),
	combout => \comb_3|Equal2~5_combout\);

-- Location: LCCOMB_X70_Y34_N0
\comb_3|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal2~9_combout\ = (\comb_3|Equal2~8_combout\ & (\comb_3|Equal2~6_combout\ & (\comb_3|Equal2~4_combout\ & \comb_3|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal2~8_combout\,
	datab => \comb_3|Equal2~6_combout\,
	datac => \comb_3|Equal2~4_combout\,
	datad => \comb_3|Equal2~5_combout\,
	combout => \comb_3|Equal2~9_combout\);

-- Location: LCCOMB_X63_Y35_N30
\comb_3|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~5_combout\ = ((\comb_3|state\(1)) # ((\comb_3|picked_first_power~q\ & \comb_3|picked_second_power~q\))) # (!\comb_3|Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal2~9_combout\,
	datab => \comb_3|picked_first_power~q\,
	datac => \comb_3|state\(1),
	datad => \comb_3|picked_second_power~q\,
	combout => \comb_3|Mux0~5_combout\);

-- Location: LCCOMB_X63_Y35_N2
\comb_3|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~2_combout\ = (\comb_3|state\(1) & (\comb_3|state\(0) & (\comb_3|Equal2~9_combout\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(0),
	datac => \comb_3|Equal2~9_combout\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|Mux0~2_combout\);

-- Location: LCCOMB_X63_Y35_N12
\comb_3|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~3_combout\ = (\comb_3|state\(3) & (\comb_3|state\(2))) # (!\comb_3|state\(3) & ((\comb_3|state\(2) & (!\comb_3|state~0_combout\)) # (!\comb_3|state\(2) & ((\comb_3|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|state\(2),
	datac => \comb_3|state~0_combout\,
	datad => \comb_3|Mux0~2_combout\,
	combout => \comb_3|Mux0~3_combout\);

-- Location: LCCOMB_X63_Y35_N10
\comb_3|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~4_combout\ = (\comb_3|state\(3) & ((\comb_3|Mux0~3_combout\ & ((\comb_3|Mux1~5_combout\))) # (!\comb_3|Mux0~3_combout\ & (\comb_3|Mux0~5_combout\)))) # (!\comb_3|state\(3) & (((\comb_3|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux0~5_combout\,
	datab => \comb_3|Mux1~5_combout\,
	datac => \comb_3|state\(3),
	datad => \comb_3|Mux0~3_combout\,
	combout => \comb_3|Mux0~4_combout\);

-- Location: FF_X63_Y35_N11
\comb_3|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(3));

-- Location: LCCOMB_X75_Y35_N6
\comb_3|picked_second_power~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_second_power~0_combout\ = (\comb_3|state\(3)) # (\comb_3|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(3),
	datad => \comb_3|state\(2),
	combout => \comb_3|picked_second_power~0_combout\);

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

-- Location: LCCOMB_X74_Y35_N4
\comb_3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~1_combout\ = (\comb_3|picked_second_power~0_combout\ & (((\comb_3|Equal2~9_combout\)))) # (!\comb_3|picked_second_power~0_combout\ & ((\SW[1]~input_o\) # ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|picked_second_power~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \comb_3|Equal2~9_combout\,
	datad => \SW[2]~input_o\,
	combout => \comb_3|Mux2~1_combout\);

-- Location: LCCOMB_X75_Y35_N12
\comb_3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~0_combout\ = (\comb_3|state\(2)) # (!\comb_3|state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(3),
	datad => \comb_3|state\(2),
	combout => \comb_3|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y35_N12
\comb_3|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~7_combout\ = (!\comb_3|Mux2~0_combout\ & (!\comb_3|counting_down|flag~q\ & ((\comb_3|Equal1~4_combout\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \comb_3|Mux2~0_combout\,
	datac => \comb_3|counting_down|flag~q\,
	datad => \comb_3|Equal1~4_combout\,
	combout => \comb_3|Mux2~7_combout\);

-- Location: LCCOMB_X63_Y35_N26
\comb_3|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~5_combout\ = (\comb_3|state\(2)) # ((!\SW[4]~input_o\ & ((\SW[3]~input_o\) # (\comb_3|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \comb_3|state\(2),
	datac => \comb_3|state\(1),
	datad => \SW[4]~input_o\,
	combout => \comb_3|Mux2~5_combout\);

-- Location: LCCOMB_X70_Y35_N18
\comb_3|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~6_combout\ = (!\comb_3|state\(3) & ((\comb_3|Mux2~5_combout\) # (!\comb_3|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux2~5_combout\,
	datac => \comb_3|state\(3),
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux2~6_combout\);

-- Location: LCCOMB_X70_Y35_N30
\comb_3|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~8_combout\ = (\comb_3|Mux2~7_combout\) # ((\comb_3|Mux2~6_combout\) # ((\comb_3|state\(2) & \PW~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux2~7_combout\,
	datab => \comb_3|Mux2~6_combout\,
	datac => \comb_3|state\(2),
	datad => \PW~input_o\,
	combout => \comb_3|Mux2~8_combout\);

-- Location: LCCOMB_X68_Y36_N30
\comb_3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~2_combout\ = \SW[3]~input_o\ $ (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \comb_3|Mux2~2_combout\);

-- Location: LCCOMB_X70_Y35_N22
\comb_3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~3_combout\ = (\comb_3|state\(0) & (((\comb_3|state\(1))))) # (!\comb_3|state\(0) & ((\comb_3|state\(2) & ((\comb_3|state\(1)) # (!\comb_3|state\(3)))) # (!\comb_3|state\(2) & (\comb_3|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|state\(0),
	datac => \comb_3|state\(3),
	datad => \comb_3|state\(1),
	combout => \comb_3|Mux2~3_combout\);

-- Location: LCCOMB_X70_Y35_N28
\comb_3|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~4_combout\ = (\comb_3|Equal2~9_combout\ & ((\comb_3|Mux2~3_combout\) # ((!\comb_3|Mux2~2_combout\ & \comb_3|state\(1))))) # (!\comb_3|Equal2~9_combout\ & (((\comb_3|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux2~2_combout\,
	datab => \comb_3|state\(1),
	datac => \comb_3|Mux2~3_combout\,
	datad => \comb_3|Equal2~9_combout\,
	combout => \comb_3|Mux2~4_combout\);

-- Location: LCCOMB_X70_Y35_N16
\comb_3|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~9_combout\ = (\comb_3|state\(0) & ((\comb_3|Mux2~4_combout\ & ((\comb_3|Mux2~8_combout\))) # (!\comb_3|Mux2~4_combout\ & (\comb_3|Mux2~1_combout\)))) # (!\comb_3|state\(0) & (((\comb_3|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux2~1_combout\,
	datab => \comb_3|state\(0),
	datac => \comb_3|Mux2~8_combout\,
	datad => \comb_3|Mux2~4_combout\,
	combout => \comb_3|Mux2~9_combout\);

-- Location: FF_X70_Y35_N17
\comb_3|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(1));

-- Location: LCCOMB_X49_Y38_N30
\ready_to_play|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector1~0_combout\ = (!\comb_3|state\(1) & \comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datac => \comb_3|state\(0),
	combout => \ready_to_play|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y38_N14
\comb_3|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector25~0_combout\ = (\comb_3|state\(1)) # ((\comb_3|state\(0) & ((!\comb_3|state\(3)) # (!\comb_3|state\(2)))) # (!\comb_3|state\(0) & ((\comb_3|state\(2)) # (\comb_3|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(2),
	datac => \comb_3|state\(1),
	datad => \comb_3|state\(3),
	combout => \comb_3|Selector25~0_combout\);

-- Location: LCCOMB_X49_Y38_N12
\comb_3|counter[29]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counter[29]~0_combout\ = (\comb_3|state\(3) & \comb_3|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datac => \comb_3|state\(2),
	combout => \comb_3|counter[29]~0_combout\);

-- Location: LCCOMB_X49_Y38_N8
\comb_3|LEDR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|LEDR[0]~0_combout\ = (\comb_3|Selector25~0_combout\ & (((\comb_3|LEDR\(0))))) # (!\comb_3|Selector25~0_combout\ & (\ready_to_play|Selector1~0_combout\ & ((\comb_3|counter[29]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Selector1~0_combout\,
	datab => \comb_3|Selector25~0_combout\,
	datac => \comb_3|LEDR\(0),
	datad => \comb_3|counter[29]~0_combout\,
	combout => \comb_3|LEDR[0]~0_combout\);

-- Location: FF_X49_Y38_N9
\comb_3|LEDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|LEDR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|LEDR\(0));

-- Location: LCCOMB_X49_Y38_N4
\comb_3|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector7~0_combout\ = (\comb_3|state\(0)) # ((\comb_3|state\(2) & ((!\comb_3|state\(3)) # (!\comb_3|state\(1)))) # (!\comb_3|state\(2) & ((\comb_3|state\(1)) # (\comb_3|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(2),
	datac => \comb_3|state\(1),
	datad => \comb_3|state\(3),
	combout => \comb_3|Selector7~0_combout\);

-- Location: LCCOMB_X49_Y38_N16
\ready_to_play|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector2~0_combout\ = (\comb_3|state\(1) & !\comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datac => \comb_3|state\(0),
	combout => \ready_to_play|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y38_N26
\comb_3|LEDG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|LEDG[0]~0_combout\ = (\comb_3|Selector7~0_combout\ & (((\comb_3|LEDG\(0))))) # (!\comb_3|Selector7~0_combout\ & (\comb_3|counter[29]~0_combout\ & ((\ready_to_play|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter[29]~0_combout\,
	datab => \comb_3|Selector7~0_combout\,
	datac => \comb_3|LEDG\(0),
	datad => \ready_to_play|Selector2~0_combout\,
	combout => \comb_3|LEDG[0]~0_combout\);

-- Location: FF_X49_Y38_N27
\comb_3|LEDG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|LEDG\(0));

-- Location: LCCOMB_X57_Y41_N2
\clk_div|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~0_combout\ = \clk_div|counter\(0) $ (VCC)
-- \clk_div|Add0~1\ = CARRY(\clk_div|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(0),
	datad => VCC,
	combout => \clk_div|Add0~0_combout\,
	cout => \clk_div|Add0~1\);

-- Location: LCCOMB_X56_Y41_N8
\clk_div|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~0_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~0_combout\,
	combout => \clk_div|counter~0_combout\);

-- Location: FF_X56_Y41_N9
\clk_div|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(0));

-- Location: LCCOMB_X57_Y41_N4
\clk_div|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~2_combout\ = (\clk_div|counter\(1) & (!\clk_div|Add0~1\)) # (!\clk_div|counter\(1) & ((\clk_div|Add0~1\) # (GND)))
-- \clk_div|Add0~3\ = CARRY((!\clk_div|Add0~1\) # (!\clk_div|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(1),
	datad => VCC,
	cin => \clk_div|Add0~1\,
	combout => \clk_div|Add0~2_combout\,
	cout => \clk_div|Add0~3\);

-- Location: FF_X57_Y41_N5
\clk_div|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(1));

-- Location: LCCOMB_X57_Y41_N6
\clk_div|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~4_combout\ = (\clk_div|counter\(2) & (\clk_div|Add0~3\ $ (GND))) # (!\clk_div|counter\(2) & (!\clk_div|Add0~3\ & VCC))
-- \clk_div|Add0~5\ = CARRY((\clk_div|counter\(2) & !\clk_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(2),
	datad => VCC,
	cin => \clk_div|Add0~3\,
	combout => \clk_div|Add0~4_combout\,
	cout => \clk_div|Add0~5\);

-- Location: FF_X57_Y41_N7
\clk_div|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(2));

-- Location: LCCOMB_X57_Y41_N8
\clk_div|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~6_combout\ = (\clk_div|counter\(3) & (!\clk_div|Add0~5\)) # (!\clk_div|counter\(3) & ((\clk_div|Add0~5\) # (GND)))
-- \clk_div|Add0~7\ = CARRY((!\clk_div|Add0~5\) # (!\clk_div|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(3),
	datad => VCC,
	cin => \clk_div|Add0~5\,
	combout => \clk_div|Add0~6_combout\,
	cout => \clk_div|Add0~7\);

-- Location: FF_X57_Y41_N9
\clk_div|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(3));

-- Location: LCCOMB_X57_Y41_N10
\clk_div|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~8_combout\ = (\clk_div|counter\(4) & (\clk_div|Add0~7\ $ (GND))) # (!\clk_div|counter\(4) & (!\clk_div|Add0~7\ & VCC))
-- \clk_div|Add0~9\ = CARRY((\clk_div|counter\(4) & !\clk_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(4),
	datad => VCC,
	cin => \clk_div|Add0~7\,
	combout => \clk_div|Add0~8_combout\,
	cout => \clk_div|Add0~9\);

-- Location: FF_X57_Y41_N11
\clk_div|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(4));

-- Location: LCCOMB_X57_Y41_N12
\clk_div|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~10_combout\ = (\clk_div|counter\(5) & (!\clk_div|Add0~9\)) # (!\clk_div|counter\(5) & ((\clk_div|Add0~9\) # (GND)))
-- \clk_div|Add0~11\ = CARRY((!\clk_div|Add0~9\) # (!\clk_div|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(5),
	datad => VCC,
	cin => \clk_div|Add0~9\,
	combout => \clk_div|Add0~10_combout\,
	cout => \clk_div|Add0~11\);

-- Location: LCCOMB_X56_Y41_N16
\clk_div|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~1_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~9_combout\,
	datac => \clk_div|Add0~10_combout\,
	combout => \clk_div|counter~1_combout\);

-- Location: FF_X56_Y41_N17
\clk_div|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(5));

-- Location: LCCOMB_X57_Y41_N14
\clk_div|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~12_combout\ = (\clk_div|counter\(6) & (\clk_div|Add0~11\ $ (GND))) # (!\clk_div|counter\(6) & (!\clk_div|Add0~11\ & VCC))
-- \clk_div|Add0~13\ = CARRY((\clk_div|counter\(6) & !\clk_div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(6),
	datad => VCC,
	cin => \clk_div|Add0~11\,
	combout => \clk_div|Add0~12_combout\,
	cout => \clk_div|Add0~13\);

-- Location: FF_X57_Y41_N15
\clk_div|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(6));

-- Location: LCCOMB_X57_Y41_N16
\clk_div|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~14_combout\ = (\clk_div|counter\(7) & (!\clk_div|Add0~13\)) # (!\clk_div|counter\(7) & ((\clk_div|Add0~13\) # (GND)))
-- \clk_div|Add0~15\ = CARRY((!\clk_div|Add0~13\) # (!\clk_div|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(7),
	datad => VCC,
	cin => \clk_div|Add0~13\,
	combout => \clk_div|Add0~14_combout\,
	cout => \clk_div|Add0~15\);

-- Location: FF_X57_Y41_N17
\clk_div|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(7));

-- Location: LCCOMB_X57_Y41_N18
\clk_div|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~16_combout\ = (\clk_div|counter\(8) & (\clk_div|Add0~15\ $ (GND))) # (!\clk_div|counter\(8) & (!\clk_div|Add0~15\ & VCC))
-- \clk_div|Add0~17\ = CARRY((\clk_div|counter\(8) & !\clk_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(8),
	datad => VCC,
	cin => \clk_div|Add0~15\,
	combout => \clk_div|Add0~16_combout\,
	cout => \clk_div|Add0~17\);

-- Location: FF_X57_Y41_N19
\clk_div|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(8));

-- Location: LCCOMB_X57_Y41_N20
\clk_div|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~18_combout\ = (\clk_div|counter\(9) & (!\clk_div|Add0~17\)) # (!\clk_div|counter\(9) & ((\clk_div|Add0~17\) # (GND)))
-- \clk_div|Add0~19\ = CARRY((!\clk_div|Add0~17\) # (!\clk_div|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(9),
	datad => VCC,
	cin => \clk_div|Add0~17\,
	combout => \clk_div|Add0~18_combout\,
	cout => \clk_div|Add0~19\);

-- Location: FF_X57_Y41_N21
\clk_div|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(9));

-- Location: LCCOMB_X57_Y41_N22
\clk_div|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~20_combout\ = (\clk_div|counter\(10) & (\clk_div|Add0~19\ $ (GND))) # (!\clk_div|counter\(10) & (!\clk_div|Add0~19\ & VCC))
-- \clk_div|Add0~21\ = CARRY((\clk_div|counter\(10) & !\clk_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(10),
	datad => VCC,
	cin => \clk_div|Add0~19\,
	combout => \clk_div|Add0~20_combout\,
	cout => \clk_div|Add0~21\);

-- Location: LCCOMB_X56_Y41_N6
\clk_div|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~2_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~20_combout\,
	combout => \clk_div|counter~2_combout\);

-- Location: FF_X56_Y41_N7
\clk_div|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(10));

-- Location: LCCOMB_X57_Y41_N24
\clk_div|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~22_combout\ = (\clk_div|counter\(11) & (!\clk_div|Add0~21\)) # (!\clk_div|counter\(11) & ((\clk_div|Add0~21\) # (GND)))
-- \clk_div|Add0~23\ = CARRY((!\clk_div|Add0~21\) # (!\clk_div|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(11),
	datad => VCC,
	cin => \clk_div|Add0~21\,
	combout => \clk_div|Add0~22_combout\,
	cout => \clk_div|Add0~23\);

-- Location: LCCOMB_X56_Y41_N12
\clk_div|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~3_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~22_combout\,
	combout => \clk_div|counter~3_combout\);

-- Location: FF_X56_Y41_N13
\clk_div|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(11));

-- Location: LCCOMB_X57_Y41_N26
\clk_div|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~24_combout\ = (\clk_div|counter\(12) & (\clk_div|Add0~23\ $ (GND))) # (!\clk_div|counter\(12) & (!\clk_div|Add0~23\ & VCC))
-- \clk_div|Add0~25\ = CARRY((\clk_div|counter\(12) & !\clk_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(12),
	datad => VCC,
	cin => \clk_div|Add0~23\,
	combout => \clk_div|Add0~24_combout\,
	cout => \clk_div|Add0~25\);

-- Location: LCCOMB_X56_Y41_N0
\clk_div|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~4_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~24_combout\,
	combout => \clk_div|counter~4_combout\);

-- Location: FF_X56_Y41_N1
\clk_div|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(12));

-- Location: LCCOMB_X57_Y41_N28
\clk_div|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~26_combout\ = (\clk_div|counter\(13) & (!\clk_div|Add0~25\)) # (!\clk_div|counter\(13) & ((\clk_div|Add0~25\) # (GND)))
-- \clk_div|Add0~27\ = CARRY((!\clk_div|Add0~25\) # (!\clk_div|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(13),
	datad => VCC,
	cin => \clk_div|Add0~25\,
	combout => \clk_div|Add0~26_combout\,
	cout => \clk_div|Add0~27\);

-- Location: LCCOMB_X56_Y41_N2
\clk_div|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~5_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~26_combout\,
	combout => \clk_div|counter~5_combout\);

-- Location: FF_X56_Y41_N3
\clk_div|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(13));

-- Location: LCCOMB_X57_Y41_N30
\clk_div|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~28_combout\ = (\clk_div|counter\(14) & (\clk_div|Add0~27\ $ (GND))) # (!\clk_div|counter\(14) & (!\clk_div|Add0~27\ & VCC))
-- \clk_div|Add0~29\ = CARRY((\clk_div|counter\(14) & !\clk_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(14),
	datad => VCC,
	cin => \clk_div|Add0~27\,
	combout => \clk_div|Add0~28_combout\,
	cout => \clk_div|Add0~29\);

-- Location: FF_X57_Y41_N31
\clk_div|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(14));

-- Location: LCCOMB_X57_Y40_N0
\clk_div|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~30_combout\ = (\clk_div|counter\(15) & (!\clk_div|Add0~29\)) # (!\clk_div|counter\(15) & ((\clk_div|Add0~29\) # (GND)))
-- \clk_div|Add0~31\ = CARRY((!\clk_div|Add0~29\) # (!\clk_div|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(15),
	datad => VCC,
	cin => \clk_div|Add0~29\,
	combout => \clk_div|Add0~30_combout\,
	cout => \clk_div|Add0~31\);

-- Location: LCCOMB_X56_Y40_N8
\clk_div|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~6_combout\ = (\clk_div|Add0~30_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~30_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~6_combout\);

-- Location: FF_X56_Y40_N9
\clk_div|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(15));

-- Location: LCCOMB_X57_Y40_N2
\clk_div|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~32_combout\ = (\clk_div|counter\(16) & (\clk_div|Add0~31\ $ (GND))) # (!\clk_div|counter\(16) & (!\clk_div|Add0~31\ & VCC))
-- \clk_div|Add0~33\ = CARRY((\clk_div|counter\(16) & !\clk_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(16),
	datad => VCC,
	cin => \clk_div|Add0~31\,
	combout => \clk_div|Add0~32_combout\,
	cout => \clk_div|Add0~33\);

-- Location: FF_X57_Y40_N3
\clk_div|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(16));

-- Location: LCCOMB_X57_Y40_N4
\clk_div|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~34_combout\ = (\clk_div|counter\(17) & (!\clk_div|Add0~33\)) # (!\clk_div|counter\(17) & ((\clk_div|Add0~33\) # (GND)))
-- \clk_div|Add0~35\ = CARRY((!\clk_div|Add0~33\) # (!\clk_div|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(17),
	datad => VCC,
	cin => \clk_div|Add0~33\,
	combout => \clk_div|Add0~34_combout\,
	cout => \clk_div|Add0~35\);

-- Location: LCCOMB_X56_Y40_N6
\clk_div|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~7_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~34_combout\,
	combout => \clk_div|counter~7_combout\);

-- Location: FF_X56_Y40_N7
\clk_div|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(17));

-- Location: LCCOMB_X57_Y40_N6
\clk_div|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~36_combout\ = (\clk_div|counter\(18) & (\clk_div|Add0~35\ $ (GND))) # (!\clk_div|counter\(18) & (!\clk_div|Add0~35\ & VCC))
-- \clk_div|Add0~37\ = CARRY((\clk_div|counter\(18) & !\clk_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(18),
	datad => VCC,
	cin => \clk_div|Add0~35\,
	combout => \clk_div|Add0~36_combout\,
	cout => \clk_div|Add0~37\);

-- Location: LCCOMB_X56_Y40_N16
\clk_div|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~8_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~36_combout\,
	combout => \clk_div|counter~8_combout\);

-- Location: FF_X56_Y40_N17
\clk_div|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(18));

-- Location: LCCOMB_X57_Y40_N8
\clk_div|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~38_combout\ = (\clk_div|counter\(19) & (!\clk_div|Add0~37\)) # (!\clk_div|counter\(19) & ((\clk_div|Add0~37\) # (GND)))
-- \clk_div|Add0~39\ = CARRY((!\clk_div|Add0~37\) # (!\clk_div|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(19),
	datad => VCC,
	cin => \clk_div|Add0~37\,
	combout => \clk_div|Add0~38_combout\,
	cout => \clk_div|Add0~39\);

-- Location: LCCOMB_X56_Y40_N18
\clk_div|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~9_combout\ = (\clk_div|Add0~38_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~38_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~9_combout\);

-- Location: FF_X56_Y40_N19
\clk_div|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(19));

-- Location: LCCOMB_X57_Y40_N10
\clk_div|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~40_combout\ = (\clk_div|counter\(20) & (\clk_div|Add0~39\ $ (GND))) # (!\clk_div|counter\(20) & (!\clk_div|Add0~39\ & VCC))
-- \clk_div|Add0~41\ = CARRY((\clk_div|counter\(20) & !\clk_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(20),
	datad => VCC,
	cin => \clk_div|Add0~39\,
	combout => \clk_div|Add0~40_combout\,
	cout => \clk_div|Add0~41\);

-- Location: LCCOMB_X56_Y40_N10
\clk_div|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~10_combout\ = (\clk_div|Add0~40_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~40_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~10_combout\);

-- Location: FF_X56_Y40_N11
\clk_div|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(20));

-- Location: LCCOMB_X57_Y40_N12
\clk_div|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~42_combout\ = (\clk_div|counter\(21) & (!\clk_div|Add0~41\)) # (!\clk_div|counter\(21) & ((\clk_div|Add0~41\) # (GND)))
-- \clk_div|Add0~43\ = CARRY((!\clk_div|Add0~41\) # (!\clk_div|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(21),
	datad => VCC,
	cin => \clk_div|Add0~41\,
	combout => \clk_div|Add0~42_combout\,
	cout => \clk_div|Add0~43\);

-- Location: LCCOMB_X56_Y40_N0
\clk_div|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~11_combout\ = (\clk_div|Add0~42_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~42_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~11_combout\);

-- Location: FF_X56_Y40_N1
\clk_div|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(21));

-- Location: LCCOMB_X57_Y40_N14
\clk_div|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~44_combout\ = (\clk_div|counter\(22) & (\clk_div|Add0~43\ $ (GND))) # (!\clk_div|counter\(22) & (!\clk_div|Add0~43\ & VCC))
-- \clk_div|Add0~45\ = CARRY((\clk_div|counter\(22) & !\clk_div|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(22),
	datad => VCC,
	cin => \clk_div|Add0~43\,
	combout => \clk_div|Add0~44_combout\,
	cout => \clk_div|Add0~45\);

-- Location: FF_X57_Y40_N15
\clk_div|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(22));

-- Location: LCCOMB_X57_Y40_N16
\clk_div|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~46_combout\ = (\clk_div|counter\(23) & (!\clk_div|Add0~45\)) # (!\clk_div|counter\(23) & ((\clk_div|Add0~45\) # (GND)))
-- \clk_div|Add0~47\ = CARRY((!\clk_div|Add0~45\) # (!\clk_div|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(23),
	datad => VCC,
	cin => \clk_div|Add0~45\,
	combout => \clk_div|Add0~46_combout\,
	cout => \clk_div|Add0~47\);

-- Location: LCCOMB_X56_Y40_N26
\clk_div|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~12_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~46_combout\,
	combout => \clk_div|counter~12_combout\);

-- Location: FF_X56_Y40_N27
\clk_div|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(23));

-- Location: LCCOMB_X56_Y40_N12
\clk_div|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~6_combout\ = (\clk_div|counter\(20) & (!\clk_div|counter\(22) & (\clk_div|counter\(23) & \clk_div|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(20),
	datab => \clk_div|counter\(22),
	datac => \clk_div|counter\(23),
	datad => \clk_div|counter\(21),
	combout => \clk_div|Equal0~6_combout\);

-- Location: LCCOMB_X56_Y40_N20
\clk_div|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~5_combout\ = (\clk_div|counter\(17) & (\clk_div|counter\(18) & (\clk_div|counter\(19) & !\clk_div|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(17),
	datab => \clk_div|counter\(18),
	datac => \clk_div|counter\(19),
	datad => \clk_div|counter\(16),
	combout => \clk_div|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y41_N10
\clk_div|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~0_combout\ = (!\clk_div|counter\(2) & (!\clk_div|counter\(0) & (!\clk_div|counter\(3) & !\clk_div|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(2),
	datab => \clk_div|counter\(0),
	datac => \clk_div|counter\(3),
	datad => \clk_div|counter\(1),
	combout => \clk_div|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y41_N24
\clk_div|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~3_combout\ = (\clk_div|counter\(15) & (\clk_div|counter\(13) & (!\clk_div|counter\(14) & \clk_div|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(15),
	datab => \clk_div|counter\(13),
	datac => \clk_div|counter\(14),
	datad => \clk_div|counter\(12),
	combout => \clk_div|Equal0~3_combout\);

-- Location: LCCOMB_X57_Y41_N0
\clk_div|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~1_combout\ = (\clk_div|counter\(5) & (!\clk_div|counter\(7) & (!\clk_div|counter\(6) & !\clk_div|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(5),
	datab => \clk_div|counter\(7),
	datac => \clk_div|counter\(6),
	datad => \clk_div|counter\(4),
	combout => \clk_div|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y41_N18
\clk_div|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~2_combout\ = (\clk_div|counter\(11) & (!\clk_div|counter\(8) & (!\clk_div|counter\(9) & \clk_div|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(11),
	datab => \clk_div|counter\(8),
	datac => \clk_div|counter\(9),
	datad => \clk_div|counter\(10),
	combout => \clk_div|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y41_N30
\clk_div|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~4_combout\ = (\clk_div|Equal0~0_combout\ & (\clk_div|Equal0~3_combout\ & (\clk_div|Equal0~1_combout\ & \clk_div|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~0_combout\,
	datab => \clk_div|Equal0~3_combout\,
	datac => \clk_div|Equal0~1_combout\,
	datad => \clk_div|Equal0~2_combout\,
	combout => \clk_div|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y40_N18
\clk_div|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~48_combout\ = (\clk_div|counter\(24) & (\clk_div|Add0~47\ $ (GND))) # (!\clk_div|counter\(24) & (!\clk_div|Add0~47\ & VCC))
-- \clk_div|Add0~49\ = CARRY((\clk_div|counter\(24) & !\clk_div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(24),
	datad => VCC,
	cin => \clk_div|Add0~47\,
	combout => \clk_div|Add0~48_combout\,
	cout => \clk_div|Add0~49\);

-- Location: FF_X57_Y40_N19
\clk_div|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(24));

-- Location: LCCOMB_X57_Y40_N20
\clk_div|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~50_combout\ = (\clk_div|counter\(25) & (!\clk_div|Add0~49\)) # (!\clk_div|counter\(25) & ((\clk_div|Add0~49\) # (GND)))
-- \clk_div|Add0~51\ = CARRY((!\clk_div|Add0~49\) # (!\clk_div|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(25),
	datad => VCC,
	cin => \clk_div|Add0~49\,
	combout => \clk_div|Add0~50_combout\,
	cout => \clk_div|Add0~51\);

-- Location: FF_X57_Y40_N21
\clk_div|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(25));

-- Location: LCCOMB_X57_Y40_N22
\clk_div|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~52_combout\ = (\clk_div|counter\(26) & (\clk_div|Add0~51\ $ (GND))) # (!\clk_div|counter\(26) & (!\clk_div|Add0~51\ & VCC))
-- \clk_div|Add0~53\ = CARRY((\clk_div|counter\(26) & !\clk_div|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(26),
	datad => VCC,
	cin => \clk_div|Add0~51\,
	combout => \clk_div|Add0~52_combout\,
	cout => \clk_div|Add0~53\);

-- Location: FF_X57_Y40_N23
\clk_div|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(26));

-- Location: LCCOMB_X57_Y40_N24
\clk_div|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~54_combout\ = (\clk_div|counter\(27) & (!\clk_div|Add0~53\)) # (!\clk_div|counter\(27) & ((\clk_div|Add0~53\) # (GND)))
-- \clk_div|Add0~55\ = CARRY((!\clk_div|Add0~53\) # (!\clk_div|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(27),
	datad => VCC,
	cin => \clk_div|Add0~53\,
	combout => \clk_div|Add0~54_combout\,
	cout => \clk_div|Add0~55\);

-- Location: FF_X57_Y40_N25
\clk_div|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(27));

-- Location: LCCOMB_X57_Y40_N26
\clk_div|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~56_combout\ = (\clk_div|counter\(28) & (\clk_div|Add0~55\ $ (GND))) # (!\clk_div|counter\(28) & (!\clk_div|Add0~55\ & VCC))
-- \clk_div|Add0~57\ = CARRY((\clk_div|counter\(28) & !\clk_div|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(28),
	datad => VCC,
	cin => \clk_div|Add0~55\,
	combout => \clk_div|Add0~56_combout\,
	cout => \clk_div|Add0~57\);

-- Location: FF_X57_Y40_N27
\clk_div|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(28));

-- Location: LCCOMB_X57_Y40_N28
\clk_div|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~58_combout\ = \clk_div|Add0~57\ $ (\clk_div|counter\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_div|counter\(29),
	cin => \clk_div|Add0~57\,
	combout => \clk_div|Add0~58_combout\);

-- Location: FF_X57_Y40_N29
\clk_div|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(29));

-- Location: LCCOMB_X57_Y40_N30
\clk_div|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~7_combout\ = (!\clk_div|counter\(24) & (!\clk_div|counter\(27) & (!\clk_div|counter\(26) & !\clk_div|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(24),
	datab => \clk_div|counter\(27),
	datac => \clk_div|counter\(26),
	datad => \clk_div|counter\(25),
	combout => \clk_div|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y40_N2
\clk_div|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~8_combout\ = (!\clk_div|counter\(29) & (\clk_div|Equal0~7_combout\ & !\clk_div|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(29),
	datac => \clk_div|Equal0~7_combout\,
	datad => \clk_div|counter\(28),
	combout => \clk_div|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y40_N24
\clk_div|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~9_combout\ = (\clk_div|Equal0~6_combout\ & (\clk_div|Equal0~5_combout\ & (\clk_div|Equal0~4_combout\ & \clk_div|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~6_combout\,
	datab => \clk_div|Equal0~5_combout\,
	datac => \clk_div|Equal0~4_combout\,
	datad => \clk_div|Equal0~8_combout\,
	combout => \clk_div|Equal0~9_combout\);

-- Location: LCCOMB_X53_Y41_N28
\clk_div|clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|clk_out~0_combout\ = \clk_div|clk_out~q\ $ (\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~q\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|clk_out~0_combout\);

-- Location: FF_X53_Y41_N29
\clk_div|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|clk_out~q\);

-- Location: LCCOMB_X47_Y38_N10
\comb_3|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~7_combout\ = (\comb_3|state\(0) & \comb_3|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|state\(0),
	datad => \comb_3|state\(1),
	combout => \comb_3|Mux1~7_combout\);

-- Location: LCCOMB_X47_Y39_N30
\ready_to_play|state_valid_breaker_try_guess_code~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_breaker_try_guess_code~feeder_combout\ = \comb_3|Mux1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Mux1~7_combout\,
	combout => \ready_to_play|state_valid_breaker_try_guess_code~feeder_combout\);

-- Location: LCCOMB_X45_Y39_N20
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

-- Location: LCCOMB_X49_Y38_N6
\ready_to_play|state_valid_lock_coder_wins~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_lock_coder_wins~0_combout\ = (\comb_3|state\(0)) # (((\comb_3|state\(1)) # (!\comb_3|state\(3))) # (!\comb_3|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(2),
	datac => \comb_3|state\(1),
	datad => \comb_3|state\(3),
	combout => \ready_to_play|state_valid_lock_coder_wins~0_combout\);

-- Location: FF_X47_Y39_N31
\ready_to_play|state_valid_breaker_try_guess_code\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_breaker_try_guess_code~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|ALT_INV_state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_breaker_try_guess_code~q\);

-- Location: LCCOMB_X47_Y38_N4
\ready_to_play|state_valid_play_again~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_play_again~feeder_combout\ = \comb_3|Mux1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Mux1~7_combout\,
	combout => \ready_to_play|state_valid_play_again~feeder_combout\);

-- Location: FF_X47_Y38_N5
\ready_to_play|state_valid_play_again\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_play_again~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|ALT_INV_state\(3),
	sload => \comb_3|ALT_INV_state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_play_again~q\);

-- Location: LCCOMB_X46_Y39_N14
\ready_to_play|LUT_DATA[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~38_combout\ = (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & !\ready_to_play|state_valid_play_again~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datad => \ready_to_play|state_valid_play_again~q\,
	combout => \ready_to_play|LUT_DATA[0]~38_combout\);

-- Location: LCCOMB_X49_Y41_N10
\ready_to_play|LUT_INDEX[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[0]~6_combout\ = \ready_to_play|LUT_INDEX\(0) $ (VCC)
-- \ready_to_play|LUT_INDEX[0]~7\ = CARRY(\ready_to_play|LUT_INDEX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datad => VCC,
	combout => \ready_to_play|LUT_INDEX[0]~6_combout\,
	cout => \ready_to_play|LUT_INDEX[0]~7\);

-- Location: LCCOMB_X49_Y41_N14
\ready_to_play|LUT_INDEX[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[2]~10_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX[1]~9\ $ (GND))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX[1]~9\ & VCC))
-- \ready_to_play|LUT_INDEX[2]~11\ = CARRY((\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datad => VCC,
	cin => \ready_to_play|LUT_INDEX[1]~9\,
	combout => \ready_to_play|LUT_INDEX[2]~10_combout\,
	cout => \ready_to_play|LUT_INDEX[2]~11\);

-- Location: LCCOMB_X49_Y41_N16
\ready_to_play|LUT_INDEX[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[3]~12_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX[2]~11\)) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX[2]~11\) # (GND)))
-- \ready_to_play|LUT_INDEX[3]~13\ = CARRY((!\ready_to_play|LUT_INDEX[2]~11\) # (!\ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(3),
	datad => VCC,
	cin => \ready_to_play|LUT_INDEX[2]~11\,
	combout => \ready_to_play|LUT_INDEX[3]~12_combout\,
	cout => \ready_to_play|LUT_INDEX[3]~13\);

-- Location: FF_X49_Y41_N17
\ready_to_play|LUT_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|LUT_INDEX[3]~12_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(3));

-- Location: LCCOMB_X49_Y41_N18
\ready_to_play|LUT_INDEX[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[4]~15_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX[3]~13\ $ (GND))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX[3]~13\ & VCC))
-- \ready_to_play|LUT_INDEX[4]~16\ = CARRY((\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datad => VCC,
	cin => \ready_to_play|LUT_INDEX[3]~13\,
	combout => \ready_to_play|LUT_INDEX[4]~15_combout\,
	cout => \ready_to_play|LUT_INDEX[4]~16\);

-- Location: FF_X49_Y41_N19
\ready_to_play|LUT_INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|LUT_INDEX[4]~15_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(4));

-- Location: LCCOMB_X49_Y41_N20
\ready_to_play|LUT_INDEX[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[5]~17_combout\ = \ready_to_play|LUT_INDEX[4]~16\ $ (\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|LUT_INDEX\(5),
	cin => \ready_to_play|LUT_INDEX[4]~16\,
	combout => \ready_to_play|LUT_INDEX[5]~17_combout\);

-- Location: FF_X49_Y41_N21
\ready_to_play|LUT_INDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|LUT_INDEX[5]~17_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(5));

-- Location: LCCOMB_X49_Y41_N28
\ready_to_play|Mux88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux88~0_combout\ = (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux88~0_combout\);

-- Location: LCCOMB_X46_Y43_N10
\ready_to_play|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan0~0_combout\ = ((\ready_to_play|Mux88~0_combout\ & ((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|Mux88~0_combout\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y45_N14
\ready_to_play|mDLY[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[0]~18_combout\ = \ready_to_play|mDLY\(0) $ (VCC)
-- \ready_to_play|mDLY[0]~19\ = CARRY(\ready_to_play|mDLY\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(0),
	datad => VCC,
	combout => \ready_to_play|mDLY[0]~18_combout\,
	cout => \ready_to_play|mDLY[0]~19\);

-- Location: LCCOMB_X48_Y44_N18
\ready_to_play|mDLY[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[7]~22_combout\ = (!\ready_to_play|LessThan1~5_combout\) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LessThan1~5_combout\,
	combout => \ready_to_play|mDLY[7]~22_combout\);

-- Location: LCCOMB_X47_Y44_N0
\ready_to_play|mLCD_ST~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~16_combout\ = ((!\ready_to_play|u0|oDone~q\ & \ready_to_play|mLCD_ST.000001~q\)) # (!\ready_to_play|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|oDone~q\,
	datac => \ready_to_play|LessThan0~0_combout\,
	datad => \ready_to_play|mLCD_ST.000001~q\,
	combout => \ready_to_play|mLCD_ST~16_combout\);

-- Location: LCCOMB_X47_Y44_N18
\ready_to_play|mLCD_ST~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~17_combout\ = (\clk_div|clk_out~q\ & ((\ready_to_play|mLCD_ST~16_combout\) # ((\ready_to_play|LessThan1~5_combout\ & \ready_to_play|mLCD_ST.000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LessThan1~5_combout\,
	datab => \ready_to_play|mLCD_ST~16_combout\,
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|mLCD_ST.000010~q\,
	combout => \ready_to_play|mLCD_ST~17_combout\);

-- Location: LCCOMB_X47_Y44_N20
\ready_to_play|mLCD_ST~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~20_combout\ = (!\ready_to_play|mLCD_ST.000011~q\ & (!\ready_to_play|mLCD_ST.000010~q\ & !\ready_to_play|mLCD_ST.000001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mLCD_ST.000011~q\,
	datac => \ready_to_play|mLCD_ST.000010~q\,
	datad => \ready_to_play|mLCD_ST.000001~q\,
	combout => \ready_to_play|mLCD_ST~20_combout\);

-- Location: LCCOMB_X47_Y44_N2
\ready_to_play|mLCD_ST~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~21_combout\ = (\ready_to_play|mLCD_ST~17_combout\ & (((\ready_to_play|mLCD_ST.000001~q\)))) # (!\ready_to_play|mLCD_ST~17_combout\ & (\clk_div|clk_out~q\ & ((\ready_to_play|mLCD_ST~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datab => \ready_to_play|mLCD_ST~17_combout\,
	datac => \ready_to_play|mLCD_ST.000001~q\,
	datad => \ready_to_play|mLCD_ST~20_combout\,
	combout => \ready_to_play|mLCD_ST~21_combout\);

-- Location: FF_X47_Y44_N3
\ready_to_play|mLCD_ST.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_ST~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_ST.000001~q\);

-- Location: LCCOMB_X47_Y44_N10
\ready_to_play|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector18~2_combout\ = (\ready_to_play|u0|oDone~q\ & \ready_to_play|mLCD_ST.000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|oDone~q\,
	datad => \ready_to_play|mLCD_ST.000001~q\,
	combout => \ready_to_play|Selector18~2_combout\);

-- Location: LCCOMB_X47_Y44_N4
\ready_to_play|mLCD_Start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_Start~0_combout\ = (\ready_to_play|LessThan0~0_combout\ & ((\ready_to_play|mLCD_ST~20_combout\) # ((!\ready_to_play|Selector18~2_combout\ & \ready_to_play|mLCD_Start~q\)))) # (!\ready_to_play|LessThan0~0_combout\ & 
-- (((\ready_to_play|mLCD_Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Selector18~2_combout\,
	datab => \ready_to_play|LessThan0~0_combout\,
	datac => \ready_to_play|mLCD_Start~q\,
	datad => \ready_to_play|mLCD_ST~20_combout\,
	combout => \ready_to_play|mLCD_Start~0_combout\);

-- Location: FF_X47_Y44_N5
\ready_to_play|mLCD_Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_Start~0_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_Start~q\);

-- Location: LCCOMB_X46_Y44_N0
\ready_to_play|u0|preStart~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|preStart~feeder_combout\ = \ready_to_play|mLCD_Start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|mLCD_Start~q\,
	combout => \ready_to_play|u0|preStart~feeder_combout\);

-- Location: FF_X46_Y44_N1
\ready_to_play|u0|preStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|preStart~feeder_combout\,
	clrn => \clk_div|clk_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|preStart~q\);

-- Location: LCCOMB_X45_Y44_N4
\ready_to_play|u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~0_combout\ = \ready_to_play|u0|Cont\(0) $ (VCC)
-- \ready_to_play|u0|Add0~1\ = CARRY(\ready_to_play|u0|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Cont\(0),
	datad => VCC,
	combout => \ready_to_play|u0|Add0~0_combout\,
	cout => \ready_to_play|u0|Add0~1\);

-- Location: LCCOMB_X46_Y44_N4
\ready_to_play|u0|ST.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|ST.00~0_combout\ = !\ready_to_play|u0|ST.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|u0|ST.11~q\,
	combout => \ready_to_play|u0|ST.00~0_combout\);

-- Location: FF_X46_Y44_N5
\ready_to_play|u0|ST.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|ST.00~0_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|ST.00~q\);

-- Location: LCCOMB_X45_Y44_N18
\ready_to_play|u0|ST.01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|ST.01~0_combout\ = !\ready_to_play|u0|ST.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|u0|ST.00~q\,
	combout => \ready_to_play|u0|ST.01~0_combout\);

-- Location: FF_X45_Y44_N19
\ready_to_play|u0|ST.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|ST.01~0_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|ST.01~q\);

-- Location: LCCOMB_X45_Y44_N14
\ready_to_play|u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector2~0_combout\ = (\ready_to_play|u0|ST.01~q\) # ((\ready_to_play|u0|ST.10~q\ & !\ready_to_play|u0|Cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|ST.01~q\,
	datac => \ready_to_play|u0|ST.10~q\,
	datad => \ready_to_play|u0|Cont\(4),
	combout => \ready_to_play|u0|Selector2~0_combout\);

-- Location: FF_X45_Y44_N15
\ready_to_play|u0|ST.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|Selector2~0_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|ST.10~q\);

-- Location: LCCOMB_X45_Y44_N2
\ready_to_play|u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector5~0_combout\ = ((\ready_to_play|u0|ST.01~q\) # ((\ready_to_play|u0|Cont\(4) & \ready_to_play|u0|ST.10~q\))) # (!\ready_to_play|u0|ST.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.00~q\,
	datab => \ready_to_play|u0|Cont\(4),
	datac => \ready_to_play|u0|ST.10~q\,
	datad => \ready_to_play|u0|ST.01~q\,
	combout => \ready_to_play|u0|Selector5~0_combout\);

-- Location: LCCOMB_X45_Y44_N0
\ready_to_play|u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector2~1_combout\ = (!\ready_to_play|u0|Cont\(4) & \ready_to_play|u0|ST.10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|Cont\(4),
	datac => \ready_to_play|u0|ST.10~q\,
	combout => \ready_to_play|u0|Selector2~1_combout\);

-- Location: LCCOMB_X45_Y44_N30
\ready_to_play|u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector8~0_combout\ = (\ready_to_play|u0|Add0~0_combout\ & ((\ready_to_play|u0|Selector2~1_combout\) # ((\ready_to_play|u0|Selector5~0_combout\ & \ready_to_play|u0|Cont\(0))))) # (!\ready_to_play|u0|Add0~0_combout\ & 
-- (\ready_to_play|u0|Selector5~0_combout\ & (\ready_to_play|u0|Cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Add0~0_combout\,
	datab => \ready_to_play|u0|Selector5~0_combout\,
	datac => \ready_to_play|u0|Cont\(0),
	datad => \ready_to_play|u0|Selector2~1_combout\,
	combout => \ready_to_play|u0|Selector8~0_combout\);

-- Location: FF_X45_Y44_N31
\ready_to_play|u0|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|Selector8~0_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|Cont\(0));

-- Location: LCCOMB_X45_Y44_N6
\ready_to_play|u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~2_combout\ = (\ready_to_play|u0|Cont\(1) & (!\ready_to_play|u0|Add0~1\)) # (!\ready_to_play|u0|Cont\(1) & ((\ready_to_play|u0|Add0~1\) # (GND)))
-- \ready_to_play|u0|Add0~3\ = CARRY((!\ready_to_play|u0|Add0~1\) # (!\ready_to_play|u0|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|Cont\(1),
	datad => VCC,
	cin => \ready_to_play|u0|Add0~1\,
	combout => \ready_to_play|u0|Add0~2_combout\,
	cout => \ready_to_play|u0|Add0~3\);

-- Location: LCCOMB_X45_Y44_N16
\ready_to_play|u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector7~0_combout\ = (\ready_to_play|u0|Add0~2_combout\ & ((\ready_to_play|u0|Selector2~1_combout\) # ((\ready_to_play|u0|Selector5~0_combout\ & \ready_to_play|u0|Cont\(1))))) # (!\ready_to_play|u0|Add0~2_combout\ & 
-- (\ready_to_play|u0|Selector5~0_combout\ & (\ready_to_play|u0|Cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Add0~2_combout\,
	datab => \ready_to_play|u0|Selector5~0_combout\,
	datac => \ready_to_play|u0|Cont\(1),
	datad => \ready_to_play|u0|Selector2~1_combout\,
	combout => \ready_to_play|u0|Selector7~0_combout\);

-- Location: FF_X45_Y44_N17
\ready_to_play|u0|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|Selector7~0_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|Cont\(1));

-- Location: LCCOMB_X45_Y44_N8
\ready_to_play|u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~4_combout\ = (\ready_to_play|u0|Cont\(2) & (\ready_to_play|u0|Add0~3\ $ (GND))) # (!\ready_to_play|u0|Cont\(2) & (!\ready_to_play|u0|Add0~3\ & VCC))
-- \ready_to_play|u0|Add0~5\ = CARRY((\ready_to_play|u0|Cont\(2) & !\ready_to_play|u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Cont\(2),
	datad => VCC,
	cin => \ready_to_play|u0|Add0~3\,
	combout => \ready_to_play|u0|Add0~4_combout\,
	cout => \ready_to_play|u0|Add0~5\);

-- Location: LCCOMB_X45_Y44_N26
\ready_to_play|u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector6~0_combout\ = (\ready_to_play|u0|Add0~4_combout\ & ((\ready_to_play|u0|Selector2~1_combout\) # ((\ready_to_play|u0|Selector5~0_combout\ & \ready_to_play|u0|Cont\(2))))) # (!\ready_to_play|u0|Add0~4_combout\ & 
-- (\ready_to_play|u0|Selector5~0_combout\ & (\ready_to_play|u0|Cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Add0~4_combout\,
	datab => \ready_to_play|u0|Selector5~0_combout\,
	datac => \ready_to_play|u0|Cont\(2),
	datad => \ready_to_play|u0|Selector2~1_combout\,
	combout => \ready_to_play|u0|Selector6~0_combout\);

-- Location: FF_X45_Y44_N27
\ready_to_play|u0|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|Selector6~0_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|Cont\(2));

-- Location: LCCOMB_X45_Y44_N10
\ready_to_play|u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~6_combout\ = (\ready_to_play|u0|Cont\(3) & (!\ready_to_play|u0|Add0~5\)) # (!\ready_to_play|u0|Cont\(3) & ((\ready_to_play|u0|Add0~5\) # (GND)))
-- \ready_to_play|u0|Add0~7\ = CARRY((!\ready_to_play|u0|Add0~5\) # (!\ready_to_play|u0|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|Cont\(3),
	datad => VCC,
	cin => \ready_to_play|u0|Add0~5\,
	combout => \ready_to_play|u0|Add0~6_combout\,
	cout => \ready_to_play|u0|Add0~7\);

-- Location: LCCOMB_X45_Y44_N28
\ready_to_play|u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector5~1_combout\ = (\ready_to_play|u0|Add0~6_combout\ & ((\ready_to_play|u0|Selector2~1_combout\) # ((\ready_to_play|u0|Selector5~0_combout\ & \ready_to_play|u0|Cont\(3))))) # (!\ready_to_play|u0|Add0~6_combout\ & 
-- (\ready_to_play|u0|Selector5~0_combout\ & (\ready_to_play|u0|Cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Add0~6_combout\,
	datab => \ready_to_play|u0|Selector5~0_combout\,
	datac => \ready_to_play|u0|Cont\(3),
	datad => \ready_to_play|u0|Selector2~1_combout\,
	combout => \ready_to_play|u0|Selector5~1_combout\);

-- Location: FF_X45_Y44_N29
\ready_to_play|u0|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|Selector5~1_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|Cont\(3));

-- Location: LCCOMB_X45_Y44_N12
\ready_to_play|u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~8_combout\ = \ready_to_play|u0|Add0~7\ $ (!\ready_to_play|u0|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|u0|Cont\(4),
	cin => \ready_to_play|u0|Add0~7\,
	combout => \ready_to_play|u0|Add0~8_combout\);

-- Location: LCCOMB_X45_Y44_N22
\ready_to_play|u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector4~0_combout\ = (\ready_to_play|u0|Cont\(4) & (((\ready_to_play|u0|ST.10~q\) # (\ready_to_play|u0|ST.01~q\)) # (!\ready_to_play|u0|ST.00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.00~q\,
	datab => \ready_to_play|u0|Cont\(4),
	datac => \ready_to_play|u0|ST.10~q\,
	datad => \ready_to_play|u0|ST.01~q\,
	combout => \ready_to_play|u0|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y44_N24
\ready_to_play|u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector4~1_combout\ = (\ready_to_play|u0|Selector4~0_combout\) # ((\ready_to_play|u0|Add0~8_combout\ & \ready_to_play|u0|ST.10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Add0~8_combout\,
	datab => \ready_to_play|u0|ST.10~q\,
	datac => \ready_to_play|u0|Selector4~0_combout\,
	combout => \ready_to_play|u0|Selector4~1_combout\);

-- Location: FF_X45_Y44_N25
\ready_to_play|u0|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|Selector4~1_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|Cont\(4));

-- Location: LCCOMB_X46_Y44_N2
\ready_to_play|u0|ST~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|ST~14_combout\ = (\ready_to_play|u0|Cont\(4) & \ready_to_play|u0|ST.10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|Cont\(4),
	datad => \ready_to_play|u0|ST.10~q\,
	combout => \ready_to_play|u0|ST~14_combout\);

-- Location: FF_X46_Y44_N3
\ready_to_play|u0|ST.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|ST~14_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|ST.11~q\);

-- Location: LCCOMB_X46_Y44_N22
\ready_to_play|u0|mStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|mStart~0_combout\ = (\ready_to_play|u0|mStart~q\ & (((!\ready_to_play|u0|ST.11~q\)))) # (!\ready_to_play|u0|mStart~q\ & (\ready_to_play|mLCD_Start~q\ & (!\ready_to_play|u0|preStart~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mLCD_Start~q\,
	datab => \ready_to_play|u0|preStart~q\,
	datac => \ready_to_play|u0|mStart~q\,
	datad => \ready_to_play|u0|ST.11~q\,
	combout => \ready_to_play|u0|mStart~0_combout\);

-- Location: FF_X46_Y44_N23
\ready_to_play|u0|mStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|mStart~0_combout\,
	clrn => \clk_div|clk_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|mStart~q\);

-- Location: LCCOMB_X46_Y44_N30
\ready_to_play|u0|oDone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|oDone~0_combout\ = (\ready_to_play|u0|oDone~q\ & ((\ready_to_play|u0|preStart~q\) # (!\ready_to_play|mLCD_Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mLCD_Start~q\,
	datab => \ready_to_play|u0|preStart~q\,
	datad => \ready_to_play|u0|oDone~q\,
	combout => \ready_to_play|u0|oDone~0_combout\);

-- Location: LCCOMB_X46_Y44_N24
\ready_to_play|u0|oDone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|oDone~1_combout\ = (\ready_to_play|u0|oDone~0_combout\) # ((\ready_to_play|u0|mStart~q\ & \ready_to_play|u0|ST.11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|mStart~q\,
	datab => \ready_to_play|u0|ST.11~q\,
	datac => \ready_to_play|u0|oDone~0_combout\,
	combout => \ready_to_play|u0|oDone~1_combout\);

-- Location: FF_X46_Y44_N25
\ready_to_play|u0|oDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|oDone~1_combout\,
	clrn => \clk_div|clk_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|oDone~q\);

-- Location: LCCOMB_X47_Y44_N26
\ready_to_play|Selector18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector18~3_combout\ = (\ready_to_play|LessThan1~5_combout\ & ((\ready_to_play|mLCD_ST.000010~q\) # ((\ready_to_play|u0|oDone~q\ & \ready_to_play|mLCD_ST.000001~q\)))) # (!\ready_to_play|LessThan1~5_combout\ & (\ready_to_play|u0|oDone~q\ & 
-- ((\ready_to_play|mLCD_ST.000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LessThan1~5_combout\,
	datab => \ready_to_play|u0|oDone~q\,
	datac => \ready_to_play|mLCD_ST.000010~q\,
	datad => \ready_to_play|mLCD_ST.000001~q\,
	combout => \ready_to_play|Selector18~3_combout\);

-- Location: LCCOMB_X47_Y44_N14
\ready_to_play|mLCD_ST~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~19_combout\ = (\ready_to_play|LessThan0~0_combout\) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LessThan0~0_combout\,
	datac => \clk_div|clk_out~q\,
	combout => \ready_to_play|mLCD_ST~19_combout\);

-- Location: FF_X47_Y44_N27
\ready_to_play|mLCD_ST.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|Selector18~3_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_ST.000010~q\);

-- Location: LCCOMB_X47_Y44_N24
\ready_to_play|mDLY[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[7]~23_combout\ = ((\ready_to_play|mLCD_ST.000010~q\ & \ready_to_play|LessThan0~0_combout\)) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mLCD_ST.000010~q\,
	datab => \ready_to_play|LessThan0~0_combout\,
	datac => \clk_div|clk_out~q\,
	combout => \ready_to_play|mDLY[7]~23_combout\);

-- Location: FF_X48_Y45_N15
\ready_to_play|mDLY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[0]~18_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(0));

-- Location: LCCOMB_X48_Y45_N16
\ready_to_play|mDLY[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[1]~20_combout\ = (\ready_to_play|mDLY\(1) & (!\ready_to_play|mDLY[0]~19\)) # (!\ready_to_play|mDLY\(1) & ((\ready_to_play|mDLY[0]~19\) # (GND)))
-- \ready_to_play|mDLY[1]~21\ = CARRY((!\ready_to_play|mDLY[0]~19\) # (!\ready_to_play|mDLY\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(1),
	datad => VCC,
	cin => \ready_to_play|mDLY[0]~19\,
	combout => \ready_to_play|mDLY[1]~20_combout\,
	cout => \ready_to_play|mDLY[1]~21\);

-- Location: FF_X48_Y45_N17
\ready_to_play|mDLY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[1]~20_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(1));

-- Location: LCCOMB_X48_Y45_N18
\ready_to_play|mDLY[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[2]~24_combout\ = (\ready_to_play|mDLY\(2) & (\ready_to_play|mDLY[1]~21\ $ (GND))) # (!\ready_to_play|mDLY\(2) & (!\ready_to_play|mDLY[1]~21\ & VCC))
-- \ready_to_play|mDLY[2]~25\ = CARRY((\ready_to_play|mDLY\(2) & !\ready_to_play|mDLY[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(2),
	datad => VCC,
	cin => \ready_to_play|mDLY[1]~21\,
	combout => \ready_to_play|mDLY[2]~24_combout\,
	cout => \ready_to_play|mDLY[2]~25\);

-- Location: FF_X48_Y45_N19
\ready_to_play|mDLY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[2]~24_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(2));

-- Location: LCCOMB_X48_Y45_N20
\ready_to_play|mDLY[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[3]~26_combout\ = (\ready_to_play|mDLY\(3) & (!\ready_to_play|mDLY[2]~25\)) # (!\ready_to_play|mDLY\(3) & ((\ready_to_play|mDLY[2]~25\) # (GND)))
-- \ready_to_play|mDLY[3]~27\ = CARRY((!\ready_to_play|mDLY[2]~25\) # (!\ready_to_play|mDLY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(3),
	datad => VCC,
	cin => \ready_to_play|mDLY[2]~25\,
	combout => \ready_to_play|mDLY[3]~26_combout\,
	cout => \ready_to_play|mDLY[3]~27\);

-- Location: FF_X48_Y45_N21
\ready_to_play|mDLY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[3]~26_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(3));

-- Location: LCCOMB_X48_Y45_N22
\ready_to_play|mDLY[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[4]~28_combout\ = (\ready_to_play|mDLY\(4) & (\ready_to_play|mDLY[3]~27\ $ (GND))) # (!\ready_to_play|mDLY\(4) & (!\ready_to_play|mDLY[3]~27\ & VCC))
-- \ready_to_play|mDLY[4]~29\ = CARRY((\ready_to_play|mDLY\(4) & !\ready_to_play|mDLY[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(4),
	datad => VCC,
	cin => \ready_to_play|mDLY[3]~27\,
	combout => \ready_to_play|mDLY[4]~28_combout\,
	cout => \ready_to_play|mDLY[4]~29\);

-- Location: FF_X48_Y45_N23
\ready_to_play|mDLY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[4]~28_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(4));

-- Location: LCCOMB_X48_Y45_N24
\ready_to_play|mDLY[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[5]~30_combout\ = (\ready_to_play|mDLY\(5) & (!\ready_to_play|mDLY[4]~29\)) # (!\ready_to_play|mDLY\(5) & ((\ready_to_play|mDLY[4]~29\) # (GND)))
-- \ready_to_play|mDLY[5]~31\ = CARRY((!\ready_to_play|mDLY[4]~29\) # (!\ready_to_play|mDLY\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(5),
	datad => VCC,
	cin => \ready_to_play|mDLY[4]~29\,
	combout => \ready_to_play|mDLY[5]~30_combout\,
	cout => \ready_to_play|mDLY[5]~31\);

-- Location: FF_X48_Y45_N25
\ready_to_play|mDLY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[5]~30_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(5));

-- Location: LCCOMB_X48_Y45_N26
\ready_to_play|mDLY[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[6]~32_combout\ = (\ready_to_play|mDLY\(6) & (\ready_to_play|mDLY[5]~31\ $ (GND))) # (!\ready_to_play|mDLY\(6) & (!\ready_to_play|mDLY[5]~31\ & VCC))
-- \ready_to_play|mDLY[6]~33\ = CARRY((\ready_to_play|mDLY\(6) & !\ready_to_play|mDLY[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(6),
	datad => VCC,
	cin => \ready_to_play|mDLY[5]~31\,
	combout => \ready_to_play|mDLY[6]~32_combout\,
	cout => \ready_to_play|mDLY[6]~33\);

-- Location: FF_X48_Y45_N27
\ready_to_play|mDLY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[6]~32_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(6));

-- Location: LCCOMB_X48_Y45_N28
\ready_to_play|mDLY[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[7]~34_combout\ = (\ready_to_play|mDLY\(7) & (!\ready_to_play|mDLY[6]~33\)) # (!\ready_to_play|mDLY\(7) & ((\ready_to_play|mDLY[6]~33\) # (GND)))
-- \ready_to_play|mDLY[7]~35\ = CARRY((!\ready_to_play|mDLY[6]~33\) # (!\ready_to_play|mDLY\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(7),
	datad => VCC,
	cin => \ready_to_play|mDLY[6]~33\,
	combout => \ready_to_play|mDLY[7]~34_combout\,
	cout => \ready_to_play|mDLY[7]~35\);

-- Location: FF_X48_Y45_N29
\ready_to_play|mDLY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[7]~34_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(7));

-- Location: LCCOMB_X48_Y45_N30
\ready_to_play|mDLY[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[8]~36_combout\ = (\ready_to_play|mDLY\(8) & (\ready_to_play|mDLY[7]~35\ $ (GND))) # (!\ready_to_play|mDLY\(8) & (!\ready_to_play|mDLY[7]~35\ & VCC))
-- \ready_to_play|mDLY[8]~37\ = CARRY((\ready_to_play|mDLY\(8) & !\ready_to_play|mDLY[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(8),
	datad => VCC,
	cin => \ready_to_play|mDLY[7]~35\,
	combout => \ready_to_play|mDLY[8]~36_combout\,
	cout => \ready_to_play|mDLY[8]~37\);

-- Location: FF_X48_Y45_N31
\ready_to_play|mDLY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[8]~36_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(8));

-- Location: LCCOMB_X48_Y44_N0
\ready_to_play|mDLY[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[9]~38_combout\ = (\ready_to_play|mDLY\(9) & (!\ready_to_play|mDLY[8]~37\)) # (!\ready_to_play|mDLY\(9) & ((\ready_to_play|mDLY[8]~37\) # (GND)))
-- \ready_to_play|mDLY[9]~39\ = CARRY((!\ready_to_play|mDLY[8]~37\) # (!\ready_to_play|mDLY\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(9),
	datad => VCC,
	cin => \ready_to_play|mDLY[8]~37\,
	combout => \ready_to_play|mDLY[9]~38_combout\,
	cout => \ready_to_play|mDLY[9]~39\);

-- Location: FF_X48_Y44_N1
\ready_to_play|mDLY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[9]~38_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(9));

-- Location: LCCOMB_X48_Y44_N2
\ready_to_play|mDLY[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[10]~40_combout\ = (\ready_to_play|mDLY\(10) & (\ready_to_play|mDLY[9]~39\ $ (GND))) # (!\ready_to_play|mDLY\(10) & (!\ready_to_play|mDLY[9]~39\ & VCC))
-- \ready_to_play|mDLY[10]~41\ = CARRY((\ready_to_play|mDLY\(10) & !\ready_to_play|mDLY[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(10),
	datad => VCC,
	cin => \ready_to_play|mDLY[9]~39\,
	combout => \ready_to_play|mDLY[10]~40_combout\,
	cout => \ready_to_play|mDLY[10]~41\);

-- Location: FF_X48_Y44_N3
\ready_to_play|mDLY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[10]~40_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(10));

-- Location: LCCOMB_X48_Y44_N26
\ready_to_play|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~2_combout\ = (!\ready_to_play|mDLY\(9)) # (!\ready_to_play|mDLY\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(10),
	datad => \ready_to_play|mDLY\(9),
	combout => \ready_to_play|LessThan1~2_combout\);

-- Location: LCCOMB_X48_Y44_N4
\ready_to_play|mDLY[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[11]~42_combout\ = (\ready_to_play|mDLY\(11) & (!\ready_to_play|mDLY[10]~41\)) # (!\ready_to_play|mDLY\(11) & ((\ready_to_play|mDLY[10]~41\) # (GND)))
-- \ready_to_play|mDLY[11]~43\ = CARRY((!\ready_to_play|mDLY[10]~41\) # (!\ready_to_play|mDLY\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(11),
	datad => VCC,
	cin => \ready_to_play|mDLY[10]~41\,
	combout => \ready_to_play|mDLY[11]~42_combout\,
	cout => \ready_to_play|mDLY[11]~43\);

-- Location: FF_X48_Y44_N5
\ready_to_play|mDLY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[11]~42_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(11));

-- Location: LCCOMB_X48_Y44_N6
\ready_to_play|mDLY[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[12]~44_combout\ = (\ready_to_play|mDLY\(12) & (\ready_to_play|mDLY[11]~43\ $ (GND))) # (!\ready_to_play|mDLY\(12) & (!\ready_to_play|mDLY[11]~43\ & VCC))
-- \ready_to_play|mDLY[12]~45\ = CARRY((\ready_to_play|mDLY\(12) & !\ready_to_play|mDLY[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(12),
	datad => VCC,
	cin => \ready_to_play|mDLY[11]~43\,
	combout => \ready_to_play|mDLY[12]~44_combout\,
	cout => \ready_to_play|mDLY[12]~45\);

-- Location: FF_X48_Y44_N7
\ready_to_play|mDLY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[12]~44_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(12));

-- Location: LCCOMB_X48_Y44_N8
\ready_to_play|mDLY[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[13]~46_combout\ = (\ready_to_play|mDLY\(13) & (!\ready_to_play|mDLY[12]~45\)) # (!\ready_to_play|mDLY\(13) & ((\ready_to_play|mDLY[12]~45\) # (GND)))
-- \ready_to_play|mDLY[13]~47\ = CARRY((!\ready_to_play|mDLY[12]~45\) # (!\ready_to_play|mDLY\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(13),
	datad => VCC,
	cin => \ready_to_play|mDLY[12]~45\,
	combout => \ready_to_play|mDLY[13]~46_combout\,
	cout => \ready_to_play|mDLY[13]~47\);

-- Location: FF_X48_Y44_N9
\ready_to_play|mDLY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[13]~46_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(13));

-- Location: LCCOMB_X48_Y44_N10
\ready_to_play|mDLY[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[14]~48_combout\ = (\ready_to_play|mDLY\(14) & (\ready_to_play|mDLY[13]~47\ $ (GND))) # (!\ready_to_play|mDLY\(14) & (!\ready_to_play|mDLY[13]~47\ & VCC))
-- \ready_to_play|mDLY[14]~49\ = CARRY((\ready_to_play|mDLY\(14) & !\ready_to_play|mDLY[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(14),
	datad => VCC,
	cin => \ready_to_play|mDLY[13]~47\,
	combout => \ready_to_play|mDLY[14]~48_combout\,
	cout => \ready_to_play|mDLY[14]~49\);

-- Location: FF_X48_Y44_N11
\ready_to_play|mDLY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[14]~48_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(14));

-- Location: LCCOMB_X48_Y44_N12
\ready_to_play|mDLY[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[15]~50_combout\ = (\ready_to_play|mDLY\(15) & (!\ready_to_play|mDLY[14]~49\)) # (!\ready_to_play|mDLY\(15) & ((\ready_to_play|mDLY[14]~49\) # (GND)))
-- \ready_to_play|mDLY[15]~51\ = CARRY((!\ready_to_play|mDLY[14]~49\) # (!\ready_to_play|mDLY\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(15),
	datad => VCC,
	cin => \ready_to_play|mDLY[14]~49\,
	combout => \ready_to_play|mDLY[15]~50_combout\,
	cout => \ready_to_play|mDLY[15]~51\);

-- Location: FF_X48_Y44_N13
\ready_to_play|mDLY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[15]~50_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(15));

-- Location: LCCOMB_X48_Y44_N14
\ready_to_play|mDLY[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[16]~52_combout\ = (\ready_to_play|mDLY\(16) & (\ready_to_play|mDLY[15]~51\ $ (GND))) # (!\ready_to_play|mDLY\(16) & (!\ready_to_play|mDLY[15]~51\ & VCC))
-- \ready_to_play|mDLY[16]~53\ = CARRY((\ready_to_play|mDLY\(16) & !\ready_to_play|mDLY[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(16),
	datad => VCC,
	cin => \ready_to_play|mDLY[15]~51\,
	combout => \ready_to_play|mDLY[16]~52_combout\,
	cout => \ready_to_play|mDLY[16]~53\);

-- Location: FF_X48_Y44_N15
\ready_to_play|mDLY[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[16]~52_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(16));

-- Location: LCCOMB_X48_Y44_N28
\ready_to_play|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~3_combout\ = (((!\ready_to_play|mDLY\(14)) # (!\ready_to_play|mDLY\(13))) # (!\ready_to_play|mDLY\(16))) # (!\ready_to_play|mDLY\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(15),
	datab => \ready_to_play|mDLY\(16),
	datac => \ready_to_play|mDLY\(13),
	datad => \ready_to_play|mDLY\(14),
	combout => \ready_to_play|LessThan1~3_combout\);

-- Location: LCCOMB_X48_Y44_N22
\ready_to_play|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~4_combout\ = (\ready_to_play|LessThan1~2_combout\) # ((\ready_to_play|LessThan1~3_combout\) # ((!\ready_to_play|mDLY\(12)) # (!\ready_to_play|mDLY\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LessThan1~2_combout\,
	datab => \ready_to_play|LessThan1~3_combout\,
	datac => \ready_to_play|mDLY\(11),
	datad => \ready_to_play|mDLY\(12),
	combout => \ready_to_play|LessThan1~4_combout\);

-- Location: LCCOMB_X48_Y44_N16
\ready_to_play|mDLY[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[17]~54_combout\ = \ready_to_play|mDLY[16]~53\ $ (\ready_to_play|mDLY\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|mDLY\(17),
	cin => \ready_to_play|mDLY[16]~53\,
	combout => \ready_to_play|mDLY[17]~54_combout\);

-- Location: FF_X48_Y44_N17
\ready_to_play|mDLY[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[17]~54_combout\,
	sclr => \ready_to_play|mDLY[7]~22_combout\,
	ena => \ready_to_play|mDLY[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(17));

-- Location: LCCOMB_X48_Y45_N12
\ready_to_play|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~0_combout\ = (((!\ready_to_play|mDLY\(2)) # (!\ready_to_play|mDLY\(4))) # (!\ready_to_play|mDLY\(1))) # (!\ready_to_play|mDLY\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(3),
	datab => \ready_to_play|mDLY\(1),
	datac => \ready_to_play|mDLY\(4),
	datad => \ready_to_play|mDLY\(2),
	combout => \ready_to_play|LessThan1~0_combout\);

-- Location: LCCOMB_X48_Y45_N10
\ready_to_play|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~1_combout\ = (((!\ready_to_play|mDLY\(7)) # (!\ready_to_play|mDLY\(6))) # (!\ready_to_play|mDLY\(5))) # (!\ready_to_play|mDLY\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(8),
	datab => \ready_to_play|mDLY\(5),
	datac => \ready_to_play|mDLY\(6),
	datad => \ready_to_play|mDLY\(7),
	combout => \ready_to_play|LessThan1~1_combout\);

-- Location: LCCOMB_X48_Y44_N20
\ready_to_play|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~5_combout\ = (\ready_to_play|LessThan1~4_combout\) # (((\ready_to_play|LessThan1~0_combout\) # (\ready_to_play|LessThan1~1_combout\)) # (!\ready_to_play|mDLY\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LessThan1~4_combout\,
	datab => \ready_to_play|mDLY\(17),
	datac => \ready_to_play|LessThan1~0_combout\,
	datad => \ready_to_play|LessThan1~1_combout\,
	combout => \ready_to_play|LessThan1~5_combout\);

-- Location: LCCOMB_X47_Y44_N16
\ready_to_play|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector19~0_combout\ = (!\ready_to_play|LessThan1~5_combout\ & \ready_to_play|mLCD_ST.000010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LessThan1~5_combout\,
	datac => \ready_to_play|mLCD_ST.000010~q\,
	combout => \ready_to_play|Selector19~0_combout\);

-- Location: FF_X47_Y44_N17
\ready_to_play|mLCD_ST.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|Selector19~0_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_ST.000011~q\);

-- Location: LCCOMB_X47_Y44_N28
\ready_to_play|LUT_INDEX[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[5]~14_combout\ = ((\ready_to_play|LessThan0~0_combout\ & \ready_to_play|mLCD_ST.000011~q\)) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LessThan0~0_combout\,
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|mLCD_ST.000011~q\,
	combout => \ready_to_play|LUT_INDEX[5]~14_combout\);

-- Location: FF_X49_Y41_N11
\ready_to_play|LUT_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|LUT_INDEX[0]~6_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(0));

-- Location: LCCOMB_X49_Y41_N12
\ready_to_play|LUT_INDEX[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[1]~8_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX[0]~7\)) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX[0]~7\) # (GND)))
-- \ready_to_play|LUT_INDEX[1]~9\ = CARRY((!\ready_to_play|LUT_INDEX[0]~7\) # (!\ready_to_play|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datad => VCC,
	cin => \ready_to_play|LUT_INDEX[0]~7\,
	combout => \ready_to_play|LUT_INDEX[1]~8_combout\,
	cout => \ready_to_play|LUT_INDEX[1]~9\);

-- Location: FF_X48_Y40_N1
\ready_to_play|LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \ready_to_play|LUT_INDEX[1]~8_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	sload => VCC,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(1));

-- Location: FF_X48_Y40_N31
\ready_to_play|LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \ready_to_play|LUT_INDEX[2]~10_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	sload => VCC,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(2));

-- Location: LCCOMB_X49_Y43_N8
\ready_to_play|LUT_DATA[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~33_combout\ = (\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[2]~33_combout\);

-- Location: LCCOMB_X50_Y43_N16
\ready_to_play|LUT_DATA[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~31_combout\ = (!\ready_to_play|state_valid_play_again~q\ & \ready_to_play|state_valid_breaker_try_guess_code~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_play_again~q\,
	datad => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	combout => \ready_to_play|LUT_DATA[0]~31_combout\);

-- Location: LCCOMB_X50_Y43_N4
\ready_to_play|Mux96~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux96~2_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) $ (((!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux96~2_combout\);

-- Location: LCCOMB_X50_Y43_N14
\ready_to_play|Mux96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux96~0_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux96~0_combout\);

-- Location: LCCOMB_X50_Y43_N28
\ready_to_play|Mux96~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux96~1_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3)) # ((!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(0)))) # 
-- (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux96~1_combout\);

-- Location: LCCOMB_X50_Y43_N10
\ready_to_play|LUT_DATA[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~32_combout\ = (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|Mux96~0_combout\)) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|Mux96~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux96~0_combout\,
	datad => \ready_to_play|Mux96~1_combout\,
	combout => \ready_to_play|LUT_DATA[0]~32_combout\);

-- Location: LCCOMB_X50_Y43_N2
\ready_to_play|LUT_DATA[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~34_combout\ = (\ready_to_play|LUT_DATA[0]~31_combout\ & ((\ready_to_play|LUT_DATA[0]~32_combout\) # ((\ready_to_play|LUT_DATA[2]~33_combout\ & \ready_to_play|Mux96~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~33_combout\,
	datab => \ready_to_play|LUT_DATA[0]~31_combout\,
	datac => \ready_to_play|Mux96~2_combout\,
	datad => \ready_to_play|LUT_DATA[0]~32_combout\,
	combout => \ready_to_play|LUT_DATA[0]~34_combout\);

-- Location: LCCOMB_X49_Y38_N20
\ready_to_play|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector11~0_combout\ = (\comb_3|state\(1) & \comb_3|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	combout => \ready_to_play|Selector11~0_combout\);

-- Location: FF_X50_Y39_N15
\ready_to_play|state_valid_lock_breaker_wins\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \ready_to_play|Selector11~0_combout\,
	sclr => \comb_3|ALT_INV_state\(3),
	sload => VCC,
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_lock_breaker_wins~q\);

-- Location: LCCOMB_X47_Y38_N28
\comb_3|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~11_combout\ = (\comb_3|state\(2) & !\comb_3|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(1),
	combout => \comb_3|Mux3~11_combout\);

-- Location: FF_X46_Y39_N23
\ready_to_play|state_valid_lock_coder_wins\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \comb_3|Mux3~11_combout\,
	sclr => \comb_3|ALT_INV_state\(3),
	sload => VCC,
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_lock_coder_wins~q\);

-- Location: LCCOMB_X47_Y39_N28
\ready_to_play|state_valid_lock_coder_choose_password~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_lock_coder_choose_password~feeder_combout\ = \ready_to_play|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Selector2~0_combout\,
	combout => \ready_to_play|state_valid_lock_coder_choose_password~feeder_combout\);

-- Location: FF_X47_Y39_N29
\ready_to_play|state_valid_lock_coder_choose_password\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_lock_coder_choose_password~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|ALT_INV_state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_lock_coder_choose_password~q\);

-- Location: LCCOMB_X47_Y39_N6
\ready_to_play|LUT_DATA[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~50_combout\ = (!\ready_to_play|state_valid_lock_breaker_wins~q\ & (!\ready_to_play|state_valid_lock_coder_wins~q\ & !\ready_to_play|state_valid_lock_coder_choose_password~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datab => \ready_to_play|state_valid_lock_coder_wins~q\,
	datad => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	combout => \ready_to_play|LUT_DATA[0]~50_combout\);

-- Location: LCCOMB_X46_Y42_N12
\ready_to_play|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux49~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & (((!\ready_to_play|LUT_INDEX\(4) & 
-- \ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux49~1_combout\);

-- Location: LCCOMB_X47_Y42_N2
\ready_to_play|state_valid_camouflage_right_seg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_camouflage_right_seg~feeder_combout\ = \ready_to_play|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|Selector2~0_combout\,
	combout => \ready_to_play|state_valid_camouflage_right_seg~feeder_combout\);

-- Location: FF_X47_Y42_N3
\ready_to_play|state_valid_camouflage_right_seg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_camouflage_right_seg~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|ALT_INV_state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_camouflage_right_seg~q\);

-- Location: LCCOMB_X47_Y42_N8
\ready_to_play|state_valid_flexible_right_seg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_flexible_right_seg~feeder_combout\ = \ready_to_play|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|Selector1~0_combout\,
	combout => \ready_to_play|state_valid_flexible_right_seg~feeder_combout\);

-- Location: FF_X47_Y42_N9
\ready_to_play|state_valid_flexible_right_seg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_flexible_right_seg~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|ALT_INV_state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_flexible_right_seg~q\);

-- Location: LCCOMB_X49_Y38_N22
\ready_to_play|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector4~0_combout\ = (!\comb_3|state\(1) & !\comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datac => \comb_3|state\(0),
	combout => \ready_to_play|Selector4~0_combout\);

-- Location: LCCOMB_X47_Y42_N28
\ready_to_play|state_valid_invisible_right_seg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_invisible_right_seg~feeder_combout\ = \ready_to_play|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|Selector4~0_combout\,
	combout => \ready_to_play|state_valid_invisible_right_seg~feeder_combout\);

-- Location: FF_X47_Y42_N29
\ready_to_play|state_valid_invisible_right_seg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_invisible_right_seg~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|ALT_INV_state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_invisible_right_seg~q\);

-- Location: LCCOMB_X47_Y42_N12
\ready_to_play|LUT_DATA[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~68_combout\ = (!\ready_to_play|state_valid_camouflage_right_seg~q\ & (!\ready_to_play|state_valid_flexible_right_seg~q\ & \ready_to_play|state_valid_invisible_right_seg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|state_valid_flexible_right_seg~q\,
	datad => \ready_to_play|state_valid_invisible_right_seg~q\,
	combout => \ready_to_play|LUT_DATA[0]~68_combout\);

-- Location: LCCOMB_X49_Y40_N20
\ready_to_play|Mux77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux77~2_combout\ = (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|Mux77~2_combout\);

-- Location: LCCOMB_X46_Y42_N20
\ready_to_play|LUT_DATA[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~69_combout\ = (\ready_to_play|Mux88~0_combout\ & (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[0]~68_combout\ & \ready_to_play|Mux77~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux88~0_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[0]~68_combout\,
	datad => \ready_to_play|Mux77~2_combout\,
	combout => \ready_to_play|LUT_DATA[0]~69_combout\);

-- Location: LCCOMB_X46_Y42_N30
\ready_to_play|LUT_DATA[0]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~70_combout\ = (\ready_to_play|LUT_DATA[0]~69_combout\) # ((\ready_to_play|Mux49~1_combout\ & (\ready_to_play|state_valid_camouflage_right_seg~q\ & \ready_to_play|LUT_DATA[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux49~1_combout\,
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[2]~33_combout\,
	datad => \ready_to_play|LUT_DATA[0]~69_combout\,
	combout => \ready_to_play|LUT_DATA[0]~70_combout\);

-- Location: LCCOMB_X47_Y42_N30
\ready_to_play|LUT_DATA[2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~73_combout\ = (\ready_to_play|state_valid_flexible_right_seg~q\ & !\ready_to_play|state_valid_camouflage_right_seg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_flexible_right_seg~q\,
	datad => \ready_to_play|state_valid_camouflage_right_seg~q\,
	combout => \ready_to_play|LUT_DATA[2]~73_combout\);

-- Location: LCCOMB_X45_Y38_N16
\ready_to_play|state_valid_coder~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_coder~feeder_combout\ = \ready_to_play|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|Selector2~0_combout\,
	combout => \ready_to_play|state_valid_coder~feeder_combout\);

-- Location: FF_X45_Y38_N17
\ready_to_play|state_valid_coder\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_coder~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_coder~q\);

-- Location: LCCOMB_X46_Y42_N14
\ready_to_play|state_valid_breaker~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_breaker~feeder_combout\ = \comb_3|Mux1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Mux1~7_combout\,
	combout => \ready_to_play|state_valid_breaker~feeder_combout\);

-- Location: FF_X46_Y42_N15
\ready_to_play|state_valid_breaker\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|state_valid_breaker~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_breaker~q\);

-- Location: LCCOMB_X46_Y41_N6
\ready_to_play|LUT_DATA[0]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~71_combout\ = (!\ready_to_play|state_valid_coder~q\ & (!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|state_valid_breaker~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|state_valid_breaker~q\,
	combout => \ready_to_play|LUT_DATA[0]~71_combout\);

-- Location: LCCOMB_X46_Y40_N6
\ready_to_play|LUT_DATA[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~59_combout\ = (!\ready_to_play|state_valid_flexible_right_seg~q\ & (!\ready_to_play|state_valid_invisible_right_seg~q\ & !\ready_to_play|state_valid_camouflage_right_seg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|state_valid_invisible_right_seg~q\,
	datad => \ready_to_play|state_valid_camouflage_right_seg~q\,
	combout => \ready_to_play|LUT_DATA[4]~59_combout\);

-- Location: LCCOMB_X45_Y38_N6
\ready_to_play|state_valid_group~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_group~feeder_combout\ = \ready_to_play|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|Selector1~0_combout\,
	combout => \ready_to_play|state_valid_group~feeder_combout\);

-- Location: FF_X45_Y38_N7
\ready_to_play|state_valid_group\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_group~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_group~q\);

-- Location: LCCOMB_X45_Y40_N4
\ready_to_play|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux7~1_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|state_valid_group~q\ & (!\ready_to_play|LUT_INDEX\(4) & 
-- !\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux7~1_combout\);

-- Location: LCCOMB_X45_Y40_N18
\ready_to_play|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux7~2_combout\ = (\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(4) $ (((\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(2) & 
-- ((\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux7~2_combout\);

-- Location: LCCOMB_X45_Y40_N10
\ready_to_play|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux7~4_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3)) # ((!\ready_to_play|Mux7~1_combout\ & \ready_to_play|Mux7~2_combout\)))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|Mux7~2_combout\ & 
-- (\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|Mux7~2_combout\ & ((\ready_to_play|Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|Mux7~1_combout\,
	datad => \ready_to_play|Mux7~2_combout\,
	combout => \ready_to_play|Mux7~4_combout\);

-- Location: LCCOMB_X45_Y40_N0
\ready_to_play|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux7~3_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux7~1_combout\ & (\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|Mux7~2_combout\)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) & 
-- (!\ready_to_play|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|Mux7~1_combout\,
	datad => \ready_to_play|Mux7~2_combout\,
	combout => \ready_to_play|Mux7~3_combout\);

-- Location: LCCOMB_X46_Y41_N16
\ready_to_play|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux7~5_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|Mux7~4_combout\)) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|Mux7~4_combout\,
	datad => \ready_to_play|Mux7~3_combout\,
	combout => \ready_to_play|Mux7~5_combout\);

-- Location: LCCOMB_X46_Y41_N8
\ready_to_play|LUT_DATA[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~72_combout\ = (\ready_to_play|LUT_DATA[0]~71_combout\ & (\ready_to_play|LUT_DATA[4]~59_combout\ & \ready_to_play|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~71_combout\,
	datac => \ready_to_play|LUT_DATA[4]~59_combout\,
	datad => \ready_to_play|Mux7~5_combout\,
	combout => \ready_to_play|LUT_DATA[0]~72_combout\);

-- Location: LCCOMB_X49_Y42_N20
\ready_to_play|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux3~0_combout\ = (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y42_N18
\ready_to_play|Mux42~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux42~6_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(5) & \ready_to_play|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|Mux3~0_combout\,
	combout => \ready_to_play|Mux42~6_combout\);

-- Location: LCCOMB_X46_Y41_N10
\ready_to_play|LUT_DATA[0]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~74_combout\ = (\ready_to_play|LUT_DATA[0]~70_combout\) # ((\ready_to_play|LUT_DATA[0]~72_combout\) # ((\ready_to_play|LUT_DATA[2]~73_combout\ & \ready_to_play|Mux42~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~70_combout\,
	datab => \ready_to_play|LUT_DATA[2]~73_combout\,
	datac => \ready_to_play|LUT_DATA[0]~72_combout\,
	datad => \ready_to_play|Mux42~6_combout\,
	combout => \ready_to_play|LUT_DATA[0]~74_combout\);

-- Location: LCCOMB_X47_Y42_N26
\ready_to_play|state_valid_invisible_left_seg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_invisible_left_seg~feeder_combout\ = \comb_3|Mux1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Mux1~7_combout\,
	combout => \ready_to_play|state_valid_invisible_left_seg~feeder_combout\);

-- Location: FF_X47_Y42_N27
\ready_to_play|state_valid_invisible_left_seg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_invisible_left_seg~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|ALT_INV_state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_invisible_left_seg~q\);

-- Location: LCCOMB_X47_Y39_N16
\ready_to_play|state_valid_camouflage_left_seg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_camouflage_left_seg~feeder_combout\ = \ready_to_play|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|Selector1~0_combout\,
	combout => \ready_to_play|state_valid_camouflage_left_seg~feeder_combout\);

-- Location: FF_X47_Y39_N17
\ready_to_play|state_valid_camouflage_left_seg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_camouflage_left_seg~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|ALT_INV_state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_camouflage_left_seg~q\);

-- Location: LCCOMB_X47_Y39_N24
\ready_to_play|state_valid_flexible_left_seg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_flexible_left_seg~feeder_combout\ = \ready_to_play|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ready_to_play|Selector4~0_combout\,
	combout => \ready_to_play|state_valid_flexible_left_seg~feeder_combout\);

-- Location: FF_X47_Y39_N25
\ready_to_play|state_valid_flexible_left_seg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_flexible_left_seg~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|ALT_INV_state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_flexible_left_seg~q\);

-- Location: LCCOMB_X47_Y42_N18
\ready_to_play|LUT_DATA[4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~51_combout\ = (!\ready_to_play|state_valid_invisible_left_seg~q\ & (!\ready_to_play|state_valid_camouflage_left_seg~q\ & !\ready_to_play|state_valid_flexible_left_seg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datad => \ready_to_play|state_valid_flexible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[4]~51_combout\);

-- Location: LCCOMB_X47_Y41_N12
\ready_to_play|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux21~0_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(1)))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & 
-- ((!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux21~0_combout\);

-- Location: LCCOMB_X47_Y41_N24
\ready_to_play|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux28~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & 
-- (!\ready_to_play|LUT_INDEX\(0))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux28~0_combout\);

-- Location: LCCOMB_X46_Y41_N24
\ready_to_play|LUT_DATA[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~64_combout\ = (\ready_to_play|state_valid_breaker~q\ & (((\ready_to_play|Mux28~0_combout\)))) # (!\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|state_valid_coder~q\ & (\ready_to_play|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|Mux21~0_combout\,
	datad => \ready_to_play|Mux28~0_combout\,
	combout => \ready_to_play|LUT_DATA[0]~64_combout\);

-- Location: LCCOMB_X46_Y40_N0
\ready_to_play|Mux84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux84~2_combout\ = (\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(4)) # ((\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux84~2_combout\);

-- Location: LCCOMB_X46_Y41_N14
\ready_to_play|LUT_DATA[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~63_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|Mux84~2_combout\ & ((\ready_to_play|state_valid_breaker~q\) # (\ready_to_play|state_valid_coder~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|Mux84~2_combout\,
	combout => \ready_to_play|LUT_DATA[0]~63_combout\);

-- Location: LCCOMB_X46_Y41_N30
\ready_to_play|LUT_DATA[0]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~65_combout\ = (\ready_to_play|LUT_DATA[0]~63_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[0]~64_combout\ & !\ready_to_play|state_valid_camouflage_right_seg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[0]~64_combout\,
	datac => \ready_to_play|LUT_DATA[0]~63_combout\,
	datad => \ready_to_play|state_valid_camouflage_right_seg~q\,
	combout => \ready_to_play|LUT_DATA[0]~65_combout\);

-- Location: LCCOMB_X45_Y40_N6
\ready_to_play|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux49~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux49~0_combout\);

-- Location: LCCOMB_X45_Y41_N6
\ready_to_play|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux35~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux35~1_combout\);

-- Location: LCCOMB_X47_Y41_N6
\ready_to_play|Mux42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux42~5_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux42~5_combout\);

-- Location: LCCOMB_X46_Y41_N18
\ready_to_play|LUT_DATA[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~61_combout\ = (\ready_to_play|state_valid_flexible_right_seg~q\ & (((\ready_to_play|Mux42~5_combout\)))) # (!\ready_to_play|state_valid_flexible_right_seg~q\ & (\ready_to_play|state_valid_invisible_right_seg~q\ & 
-- (\ready_to_play|Mux35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_right_seg~q\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|Mux35~1_combout\,
	datad => \ready_to_play|Mux42~5_combout\,
	combout => \ready_to_play|LUT_DATA[0]~61_combout\);

-- Location: LCCOMB_X46_Y41_N12
\ready_to_play|LUT_DATA[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~62_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|state_valid_camouflage_right_seg~q\ & (\ready_to_play|Mux49~0_combout\)) # (!\ready_to_play|state_valid_camouflage_right_seg~q\ & 
-- ((\ready_to_play|LUT_DATA[0]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|Mux49~0_combout\,
	datad => \ready_to_play|LUT_DATA[0]~61_combout\,
	combout => \ready_to_play|LUT_DATA[0]~62_combout\);

-- Location: LCCOMB_X46_Y41_N28
\ready_to_play|LUT_DATA[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~66_combout\ = (\ready_to_play|LUT_DATA[0]~62_combout\) # ((!\ready_to_play|state_valid_invisible_right_seg~q\ & (!\ready_to_play|state_valid_flexible_right_seg~q\ & \ready_to_play|LUT_DATA[0]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_right_seg~q\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[0]~65_combout\,
	datad => \ready_to_play|LUT_DATA[0]~62_combout\,
	combout => \ready_to_play|LUT_DATA[0]~66_combout\);

-- Location: LCCOMB_X46_Y40_N4
\ready_to_play|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux7~0_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ (((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux7~0_combout\);

-- Location: LCCOMB_X46_Y40_N18
\ready_to_play|LUT_DATA[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~58_combout\ = (\ready_to_play|state_valid_group~q\ & (!\ready_to_play|state_valid_breaker~q\ & (!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|state_valid_coder~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|state_valid_coder~q\,
	combout => \ready_to_play|LUT_DATA[0]~58_combout\);

-- Location: LCCOMB_X46_Y40_N12
\ready_to_play|LUT_DATA[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~57_combout\ = (\ready_to_play|state_valid_camouflage_right_seg~q\ & (!\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|Mux84~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|Mux84~2_combout\,
	combout => \ready_to_play|LUT_DATA[0]~57_combout\);

-- Location: LCCOMB_X46_Y40_N24
\ready_to_play|LUT_DATA[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~60_combout\ = (\ready_to_play|LUT_DATA[0]~57_combout\) # ((\ready_to_play|LUT_DATA[4]~59_combout\ & (\ready_to_play|Mux7~0_combout\ & \ready_to_play|LUT_DATA[0]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~59_combout\,
	datab => \ready_to_play|Mux7~0_combout\,
	datac => \ready_to_play|LUT_DATA[0]~58_combout\,
	datad => \ready_to_play|LUT_DATA[0]~57_combout\,
	combout => \ready_to_play|LUT_DATA[0]~60_combout\);

-- Location: LCCOMB_X46_Y41_N22
\ready_to_play|LUT_DATA[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~67_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[0]~60_combout\) # ((\ready_to_play|LUT_DATA[0]~66_combout\ & !\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(5) & 
-- (\ready_to_play|LUT_DATA[0]~66_combout\ & (!\ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[0]~66_combout\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[0]~60_combout\,
	combout => \ready_to_play|LUT_DATA[0]~67_combout\);

-- Location: LCCOMB_X45_Y40_N16
\ready_to_play|Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux42~4_combout\ = (\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(3)))) # 
-- (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux42~4_combout\);

-- Location: LCCOMB_X46_Y40_N14
\ready_to_play|LUT_DATA[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~53_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|state_valid_breaker~q\)))) # (!\ready_to_play|LUT_INDEX\(1) & (((\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[0]~53_combout\);

-- Location: LCCOMB_X46_Y40_N22
\ready_to_play|LUT_DATA[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~54_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_DATA[0]~53_combout\ & ((\ready_to_play|state_valid_coder~q\) # (\ready_to_play|state_valid_breaker~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_DATA[0]~53_combout\,
	datad => \ready_to_play|state_valid_breaker~q\,
	combout => \ready_to_play|LUT_DATA[0]~54_combout\);

-- Location: LCCOMB_X46_Y40_N28
\ready_to_play|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux35~0_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & 
-- ((!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux35~0_combout\);

-- Location: LCCOMB_X46_Y40_N8
\ready_to_play|LUT_DATA[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~55_combout\ = (!\ready_to_play|state_valid_flexible_right_seg~q\ & ((\ready_to_play|state_valid_invisible_right_seg~q\ & ((\ready_to_play|Mux35~0_combout\))) # (!\ready_to_play|state_valid_invisible_right_seg~q\ & 
-- (\ready_to_play|LUT_DATA[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_right_seg~q\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[0]~54_combout\,
	datad => \ready_to_play|Mux35~0_combout\,
	combout => \ready_to_play|LUT_DATA[0]~55_combout\);

-- Location: LCCOMB_X46_Y40_N10
\ready_to_play|LUT_DATA[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~52_combout\ = (!\ready_to_play|state_valid_camouflage_right_seg~q\ & (\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[0]~52_combout\);

-- Location: LCCOMB_X46_Y40_N2
\ready_to_play|LUT_DATA[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~56_combout\ = (\ready_to_play|LUT_DATA[0]~52_combout\ & ((\ready_to_play|LUT_DATA[0]~55_combout\) # ((\ready_to_play|Mux42~4_combout\ & \ready_to_play|state_valid_flexible_right_seg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux42~4_combout\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[0]~55_combout\,
	datad => \ready_to_play|LUT_DATA[0]~52_combout\,
	combout => \ready_to_play|LUT_DATA[0]~56_combout\);

-- Location: LCCOMB_X46_Y41_N0
\ready_to_play|LUT_DATA[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~75_combout\ = (\ready_to_play|LUT_DATA[4]~51_combout\ & ((\ready_to_play|LUT_DATA[0]~74_combout\) # ((\ready_to_play|LUT_DATA[0]~67_combout\) # (\ready_to_play|LUT_DATA[0]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~74_combout\,
	datab => \ready_to_play|LUT_DATA[4]~51_combout\,
	datac => \ready_to_play|LUT_DATA[0]~67_combout\,
	datad => \ready_to_play|LUT_DATA[0]~56_combout\,
	combout => \ready_to_play|LUT_DATA[0]~75_combout\);

-- Location: LCCOMB_X47_Y43_N20
\ready_to_play|LUT_DATA[0]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~84_combout\ = (!\ready_to_play|state_valid_camouflage_left_seg~q\ & (\ready_to_play|state_valid_invisible_left_seg~q\ & !\ready_to_play|state_valid_flexible_left_seg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datac => \ready_to_play|state_valid_invisible_left_seg~q\,
	datad => \ready_to_play|state_valid_flexible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[0]~84_combout\);

-- Location: LCCOMB_X50_Y40_N22
\ready_to_play|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux56~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|Mux88~0_combout\ & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|Mux88~0_combout\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|Mux56~1_combout\);

-- Location: LCCOMB_X48_Y43_N14
\ready_to_play|Mux70~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux70~2_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) $ 
-- (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux70~2_combout\);

-- Location: LCCOMB_X48_Y43_N28
\ready_to_play|Mux70~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux70~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux70~1_combout\);

-- Location: LCCOMB_X48_Y43_N12
\ready_to_play|LUT_DATA[0]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~79_combout\ = (\ready_to_play|state_valid_camouflage_left_seg~q\ & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|Mux70~1_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux70~2_combout\,
	datad => \ready_to_play|Mux70~1_combout\,
	combout => \ready_to_play|LUT_DATA[0]~79_combout\);

-- Location: LCCOMB_X48_Y43_N0
\ready_to_play|Mux70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux70~0_combout\ = (\ready_to_play|LUT_INDEX\(2)) # ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux70~0_combout\);

-- Location: LCCOMB_X48_Y43_N8
\ready_to_play|LUT_DATA[3]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~76_combout\ = (!\ready_to_play|state_valid_camouflage_left_seg~q\ & \ready_to_play|state_valid_flexible_left_seg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datad => \ready_to_play|state_valid_flexible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[3]~76_combout\);

-- Location: LCCOMB_X48_Y43_N10
\ready_to_play|LUT_DATA[0]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~77_combout\ = (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[3]~76_combout\ & \ready_to_play|Mux88~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[3]~76_combout\,
	datad => \ready_to_play|Mux88~0_combout\,
	combout => \ready_to_play|LUT_DATA[0]~77_combout\);

-- Location: LCCOMB_X48_Y43_N26
\ready_to_play|LUT_DATA[0]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~78_combout\ = (\ready_to_play|LUT_DATA[0]~77_combout\) # ((\ready_to_play|state_valid_camouflage_left_seg~q\ & (!\ready_to_play|Mux70~0_combout\ & !\ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|Mux70~0_combout\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_DATA[0]~77_combout\,
	combout => \ready_to_play|LUT_DATA[0]~78_combout\);

-- Location: LCCOMB_X48_Y43_N24
\ready_to_play|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux56~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1)))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux56~0_combout\);

-- Location: LCCOMB_X48_Y43_N22
\ready_to_play|LUT_DATA[0]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~81_combout\ = (\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|state_valid_camouflage_left_seg~q\ & ((\ready_to_play|Mux56~0_combout\)))) # (!\ready_to_play|LUT_INDEX\(4) & (((\ready_to_play|Mux70~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux70~2_combout\,
	datad => \ready_to_play|Mux56~0_combout\,
	combout => \ready_to_play|LUT_DATA[0]~81_combout\);

-- Location: LCCOMB_X48_Y43_N4
\ready_to_play|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux63~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2)) # (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & 
-- ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux63~1_combout\);

-- Location: LCCOMB_X48_Y43_N6
\ready_to_play|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux63~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux63~0_combout\);

-- Location: LCCOMB_X48_Y43_N2
\ready_to_play|LUT_DATA[0]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~80_combout\ = (\ready_to_play|LUT_DATA[3]~76_combout\ & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|Mux63~0_combout\))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_DATA[3]~76_combout\,
	datac => \ready_to_play|Mux63~1_combout\,
	datad => \ready_to_play|Mux63~0_combout\,
	combout => \ready_to_play|LUT_DATA[0]~80_combout\);

-- Location: LCCOMB_X48_Y43_N20
\ready_to_play|LUT_DATA[0]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~82_combout\ = (\ready_to_play|LUT_DATA[0]~80_combout\) # ((\ready_to_play|state_valid_invisible_left_seg~q\ & (!\ready_to_play|state_valid_flexible_left_seg~q\ & \ready_to_play|LUT_DATA[0]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_left_seg~q\,
	datab => \ready_to_play|state_valid_flexible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[0]~81_combout\,
	datad => \ready_to_play|LUT_DATA[0]~80_combout\,
	combout => \ready_to_play|LUT_DATA[0]~82_combout\);

-- Location: LCCOMB_X48_Y43_N18
\ready_to_play|LUT_DATA[0]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~83_combout\ = (\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[0]~78_combout\)))) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[0]~79_combout\) # ((\ready_to_play|LUT_DATA[0]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~79_combout\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[0]~78_combout\,
	datad => \ready_to_play|LUT_DATA[0]~82_combout\,
	combout => \ready_to_play|LUT_DATA[0]~83_combout\);

-- Location: LCCOMB_X47_Y43_N6
\ready_to_play|LUT_DATA[0]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~85_combout\ = (\ready_to_play|LUT_DATA[0]~83_combout\) # ((\ready_to_play|LUT_DATA[0]~84_combout\ & \ready_to_play|Mux56~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA[0]~84_combout\,
	datac => \ready_to_play|Mux56~1_combout\,
	datad => \ready_to_play|LUT_DATA[0]~83_combout\,
	combout => \ready_to_play|LUT_DATA[0]~85_combout\);

-- Location: LCCOMB_X48_Y37_N16
\ready_to_play|LUT_DATA[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~44_combout\ = (!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_INDEX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[0]~44_combout\);

-- Location: LCCOMB_X47_Y37_N4
\ready_to_play|Mux89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux89~2_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux89~2_combout\);

-- Location: LCCOMB_X47_Y37_N26
\ready_to_play|Mux89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux89~0_combout\ = (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(0))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux89~0_combout\);

-- Location: LCCOMB_X47_Y37_N24
\ready_to_play|Mux89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux89~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0)) # ((!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & 
-- ((\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux89~1_combout\);

-- Location: LCCOMB_X47_Y37_N18
\ready_to_play|LUT_DATA[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~43_combout\ = (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|Mux89~0_combout\)) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|Mux89~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux89~0_combout\,
	datad => \ready_to_play|Mux89~1_combout\,
	combout => \ready_to_play|LUT_DATA[0]~43_combout\);

-- Location: LCCOMB_X47_Y37_N6
\ready_to_play|LUT_DATA[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~45_combout\ = (\ready_to_play|state_valid_lock_coder_wins~q\ & ((\ready_to_play|LUT_DATA[0]~43_combout\) # ((\ready_to_play|LUT_DATA[0]~44_combout\ & !\ready_to_play|Mux89~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|LUT_DATA[0]~44_combout\,
	datac => \ready_to_play|Mux89~2_combout\,
	datad => \ready_to_play|LUT_DATA[0]~43_combout\,
	combout => \ready_to_play|LUT_DATA[0]~45_combout\);

-- Location: LCCOMB_X48_Y41_N6
\ready_to_play|Mux77~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux77~3_combout\ = (\ready_to_play|LUT_INDEX\(4)) # ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux77~3_combout\);

-- Location: LCCOMB_X47_Y39_N14
\ready_to_play|LUT_DATA[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~39_combout\ = (!\ready_to_play|state_valid_lock_breaker_wins~q\ & \ready_to_play|state_valid_lock_coder_choose_password~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datad => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	combout => \ready_to_play|LUT_DATA[0]~39_combout\);

-- Location: LCCOMB_X47_Y37_N28
\ready_to_play|LUT_DATA[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~46_combout\ = (!\ready_to_play|Mux77~3_combout\ & (!\ready_to_play|state_valid_lock_coder_wins~q\ & (\ready_to_play|LUT_DATA[0]~39_combout\ & \ready_to_play|Mux77~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux77~3_combout\,
	datab => \ready_to_play|state_valid_lock_coder_wins~q\,
	datac => \ready_to_play|LUT_DATA[0]~39_combout\,
	datad => \ready_to_play|Mux77~2_combout\,
	combout => \ready_to_play|LUT_DATA[0]~46_combout\);

-- Location: LCCOMB_X46_Y39_N2
\ready_to_play|LUT_DATA[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~47_combout\ = (!\ready_to_play|state_valid_lock_coder_wins~q\ & \ready_to_play|state_valid_lock_breaker_wins~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_lock_coder_wins~q\,
	datad => \ready_to_play|state_valid_lock_breaker_wins~q\,
	combout => \ready_to_play|LUT_DATA[3]~47_combout\);

-- Location: LCCOMB_X47_Y37_N30
\ready_to_play|LUT_DATA[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~48_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_DATA[3]~47_combout\ & !\ready_to_play|Mux84~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[3]~47_combout\,
	datad => \ready_to_play|Mux84~2_combout\,
	combout => \ready_to_play|LUT_DATA[0]~48_combout\);

-- Location: LCCOMB_X47_Y37_N8
\ready_to_play|Mux84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux84~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # ((!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4)))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux84~1_combout\);

-- Location: LCCOMB_X47_Y37_N2
\ready_to_play|Mux84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux84~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & 
-- !\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux84~0_combout\);

-- Location: LCCOMB_X47_Y37_N22
\ready_to_play|LUT_DATA[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~41_combout\ = (\ready_to_play|state_valid_lock_breaker_wins~q\ & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux84~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux84~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux84~1_combout\,
	datad => \ready_to_play|Mux84~0_combout\,
	combout => \ready_to_play|LUT_DATA[0]~41_combout\);

-- Location: LCCOMB_X47_Y37_N12
\ready_to_play|Mux77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux77~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(1) & 
-- (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux77~0_combout\);

-- Location: LCCOMB_X47_Y37_N10
\ready_to_play|Mux77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux77~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(1) & 
-- ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux77~1_combout\);

-- Location: LCCOMB_X47_Y37_N20
\ready_to_play|LUT_DATA[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~40_combout\ = (\ready_to_play|LUT_DATA[0]~39_combout\ & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux77~0_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux77~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux77~0_combout\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[0]~39_combout\,
	datad => \ready_to_play|Mux77~1_combout\,
	combout => \ready_to_play|LUT_DATA[0]~40_combout\);

-- Location: LCCOMB_X47_Y37_N16
\ready_to_play|LUT_DATA[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~42_combout\ = (!\ready_to_play|state_valid_lock_coder_wins~q\ & (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[0]~41_combout\) # (\ready_to_play|LUT_DATA[0]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[0]~41_combout\,
	datad => \ready_to_play|LUT_DATA[0]~40_combout\,
	combout => \ready_to_play|LUT_DATA[0]~42_combout\);

-- Location: LCCOMB_X47_Y37_N0
\ready_to_play|LUT_DATA[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~49_combout\ = (\ready_to_play|LUT_DATA[0]~45_combout\) # ((\ready_to_play|LUT_DATA[0]~46_combout\) # ((\ready_to_play|LUT_DATA[0]~48_combout\) # (\ready_to_play|LUT_DATA[0]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~45_combout\,
	datab => \ready_to_play|LUT_DATA[0]~46_combout\,
	datac => \ready_to_play|LUT_DATA[0]~48_combout\,
	datad => \ready_to_play|LUT_DATA[0]~42_combout\,
	combout => \ready_to_play|LUT_DATA[0]~49_combout\);

-- Location: LCCOMB_X46_Y41_N26
\ready_to_play|LUT_DATA[0]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~86_combout\ = (\ready_to_play|LUT_DATA[0]~49_combout\) # ((\ready_to_play|LUT_DATA[0]~50_combout\ & ((\ready_to_play|LUT_DATA[0]~75_combout\) # (\ready_to_play|LUT_DATA[0]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~50_combout\,
	datab => \ready_to_play|LUT_DATA[0]~75_combout\,
	datac => \ready_to_play|LUT_DATA[0]~85_combout\,
	datad => \ready_to_play|LUT_DATA[0]~49_combout\,
	combout => \ready_to_play|LUT_DATA[0]~86_combout\);

-- Location: LCCOMB_X45_Y39_N30
\ready_to_play|Mux102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux102~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(1))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux102~0_combout\);

-- Location: LCCOMB_X45_Y39_N24
\ready_to_play|LUT_DATA[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~35_combout\ = (!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~35_combout\);

-- Location: LCCOMB_X45_Y39_N8
\ready_to_play|LUT_DATA[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~36_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux3~0_combout\ & ((\ready_to_play|LUT_DATA[5]~35_combout\)))) # (!\ready_to_play|LUT_INDEX\(4) & (((\ready_to_play|Mux102~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux3~0_combout\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux102~0_combout\,
	datad => \ready_to_play|LUT_DATA[5]~35_combout\,
	combout => \ready_to_play|LUT_DATA[0]~36_combout\);

-- Location: LCCOMB_X45_Y39_N0
\ready_to_play|LUT_DATA[0]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~375_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|state_valid_play_again~q\ & \ready_to_play|LUT_DATA[0]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|state_valid_play_again~q\,
	datac => \ready_to_play|LUT_DATA[0]~36_combout\,
	combout => \ready_to_play|LUT_DATA[0]~375_combout\);

-- Location: LCCOMB_X46_Y41_N4
\ready_to_play|LUT_DATA[0]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~87_combout\ = (\ready_to_play|LUT_DATA[0]~34_combout\) # ((\ready_to_play|LUT_DATA[0]~375_combout\) # ((\ready_to_play|LUT_DATA[0]~38_combout\ & \ready_to_play|LUT_DATA[0]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~38_combout\,
	datab => \ready_to_play|LUT_DATA[0]~34_combout\,
	datac => \ready_to_play|LUT_DATA[0]~86_combout\,
	datad => \ready_to_play|LUT_DATA[0]~375_combout\,
	combout => \ready_to_play|LUT_DATA[0]~87_combout\);

-- Location: LCCOMB_X47_Y41_N2
\ready_to_play|LUT_DATA[2]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~89_combout\ = (!\ready_to_play|state_valid_camouflage_left_seg~q\ & !\ready_to_play|state_valid_flexible_left_seg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datad => \ready_to_play|state_valid_flexible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[2]~89_combout\);

-- Location: LCCOMB_X46_Y38_N2
\ready_to_play|state_valid_ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|state_valid_ready~feeder_combout\ = \ready_to_play|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Selector4~0_combout\,
	combout => \ready_to_play|state_valid_ready~feeder_combout\);

-- Location: FF_X46_Y38_N3
\ready_to_play|state_valid_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \ready_to_play|state_valid_ready~feeder_combout\,
	asdata => \~GND~combout\,
	sclr => \comb_3|state\(3),
	sload => \comb_3|state\(2),
	ena => \ready_to_play|state_valid_lock_coder_wins~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_ready~q\);

-- Location: LCCOMB_X46_Y38_N16
\ready_to_play|LUT_DATA[0]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~90_combout\ = ((\ready_to_play|state_valid_ready~q\) # ((\ready_to_play|state_valid_invisible_left_seg~q\) # (!\ready_to_play|LUT_DATA[4]~59_combout\))) # (!\ready_to_play|LUT_DATA[2]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~89_combout\,
	datab => \ready_to_play|state_valid_ready~q\,
	datac => \ready_to_play|LUT_DATA[4]~59_combout\,
	datad => \ready_to_play|state_valid_invisible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[0]~90_combout\);

-- Location: LCCOMB_X46_Y38_N14
\ready_to_play|LUT_DATA[0]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~88_combout\ = (\ready_to_play|state_valid_breaker_try_guess_code~q\) # ((\ready_to_play|state_valid_group~q\) # ((\ready_to_play|state_valid_coder~q\) # (\ready_to_play|state_valid_play_again~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|state_valid_coder~q\,
	datad => \ready_to_play|state_valid_play_again~q\,
	combout => \ready_to_play|LUT_DATA[0]~88_combout\);

-- Location: LCCOMB_X46_Y38_N4
\ready_to_play|LUT_DATA[0]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~91_combout\ = (\ready_to_play|state_valid_breaker~q\) # ((\ready_to_play|LUT_DATA[0]~90_combout\) # ((\ready_to_play|LUT_DATA[0]~88_combout\) # (!\ready_to_play|LUT_DATA[0]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|LUT_DATA[0]~90_combout\,
	datac => \ready_to_play|LUT_DATA[0]~88_combout\,
	datad => \ready_to_play|LUT_DATA[0]~50_combout\,
	combout => \ready_to_play|LUT_DATA[0]~91_combout\);

-- Location: CLKCTRL_G2
\ready_to_play|LUT_DATA[0]~91clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ready_to_play|LUT_DATA[0]~91clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\);

-- Location: LCCOMB_X46_Y41_N2
\ready_to_play|LUT_DATA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(0) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[0]~87_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(0),
	datac => \ready_to_play|LUT_DATA[0]~87_combout\,
	datad => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(0));

-- Location: LCCOMB_X46_Y41_N20
\ready_to_play|mLCD_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~0_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(0),
	combout => \ready_to_play|mLCD_DATA~0_combout\);

-- Location: LCCOMB_X47_Y44_N6
\ready_to_play|mLCD_ST~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~18_combout\ = (\ready_to_play|mLCD_ST~17_combout\ & (((\ready_to_play|mLCD_ST.000000~q\)))) # (!\ready_to_play|mLCD_ST~17_combout\ & (\clk_div|clk_out~q\ & ((!\ready_to_play|mLCD_ST.000011~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datab => \ready_to_play|mLCD_ST~17_combout\,
	datac => \ready_to_play|mLCD_ST.000000~q\,
	datad => \ready_to_play|mLCD_ST.000011~q\,
	combout => \ready_to_play|mLCD_ST~18_combout\);

-- Location: FF_X47_Y44_N7
\ready_to_play|mLCD_ST.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_ST~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_ST.000000~q\);

-- Location: LCCOMB_X47_Y44_N12
\ready_to_play|mLCD_DATA[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA[7]~1_combout\ = ((\ready_to_play|LessThan0~0_combout\ & !\ready_to_play|mLCD_ST.000000~q\)) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LessThan0~0_combout\,
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|mLCD_ST.000000~q\,
	combout => \ready_to_play|mLCD_DATA[7]~1_combout\);

-- Location: FF_X46_Y41_N21
\ready_to_play|mLCD_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~0_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(0));

-- Location: LCCOMB_X48_Y40_N30
\ready_to_play|LUT_DATA[1]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~92_combout\ = (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[1]~92_combout\);

-- Location: LCCOMB_X48_Y37_N14
\ready_to_play|LUT_DATA[1]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~93_combout\ = (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[1]~93_combout\);

-- Location: LCCOMB_X48_Y37_N28
\ready_to_play|LUT_DATA[1]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~94_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_DATA[1]~92_combout\ & ((\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_DATA[1]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~92_combout\,
	datab => \ready_to_play|LUT_DATA[1]~93_combout\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[1]~94_combout\);

-- Location: LCCOMB_X46_Y39_N12
\ready_to_play|LUT_DATA[1]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~119_combout\ = (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & (!\ready_to_play|state_valid_lock_breaker_wins~q\ & (!\ready_to_play|state_valid_lock_coder_wins~q\ & 
-- !\ready_to_play|state_valid_lock_coder_choose_password~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datac => \ready_to_play|state_valid_lock_coder_wins~q\,
	datad => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	combout => \ready_to_play|LUT_DATA[1]~119_combout\);

-- Location: LCCOMB_X50_Y40_N14
\ready_to_play|Mux83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux83~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & (((!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(2) & 
-- !\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux83~1_combout\);

-- Location: LCCOMB_X50_Y40_N0
\ready_to_play|Mux83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux83~0_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0))))) # 
-- (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(2) $ (((\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux83~0_combout\);

-- Location: LCCOMB_X50_Y40_N24
\ready_to_play|LUT_DATA[1]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~97_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|Mux83~0_combout\))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|Mux83~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|Mux83~1_combout\,
	datad => \ready_to_play|Mux83~0_combout\,
	combout => \ready_to_play|LUT_DATA[1]~97_combout\);

-- Location: LCCOMB_X50_Y40_N30
\ready_to_play|LUT_DATA[1]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~98_combout\ = (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & (\ready_to_play|LUT_DATA[3]~47_combout\ & ((\ready_to_play|Mux56~1_combout\) # (\ready_to_play|LUT_DATA[1]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux56~1_combout\,
	datab => \ready_to_play|LUT_DATA[1]~97_combout\,
	datac => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datad => \ready_to_play|LUT_DATA[3]~47_combout\,
	combout => \ready_to_play|LUT_DATA[1]~98_combout\);

-- Location: LCCOMB_X45_Y39_N22
\ready_to_play|Mux88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux88~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|Mux88~1_combout\);

-- Location: LCCOMB_X45_Y39_N12
\ready_to_play|Mux88~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux88~2_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(1) $ (((!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux88~2_combout\);

-- Location: LCCOMB_X45_Y39_N14
\ready_to_play|Mux88~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux88~3_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux88~2_combout\ $ (((\ready_to_play|Mux88~1_combout\) # (!\ready_to_play|LUT_INDEX\(2)))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux88~2_combout\ & 
-- ((\ready_to_play|LUT_INDEX\(2)) # (\ready_to_play|Mux88~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|Mux88~1_combout\,
	datad => \ready_to_play|Mux88~2_combout\,
	combout => \ready_to_play|Mux88~3_combout\);

-- Location: LCCOMB_X45_Y39_N28
\ready_to_play|Mux88~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux88~4_combout\ = (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux88~2_combout\ $ (((!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|Mux88~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|Mux88~1_combout\,
	datad => \ready_to_play|Mux88~2_combout\,
	combout => \ready_to_play|Mux88~4_combout\);

-- Location: LCCOMB_X45_Y39_N10
\ready_to_play|Mux88~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux88~5_combout\ = \ready_to_play|Mux88~4_combout\ $ (((\ready_to_play|LUT_INDEX\(0) & \ready_to_play|Mux88~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|Mux88~3_combout\,
	datad => \ready_to_play|Mux88~4_combout\,
	combout => \ready_to_play|Mux88~5_combout\);

-- Location: LCCOMB_X45_Y39_N26
\ready_to_play|LUT_DATA[1]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~399_combout\ = (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & ((\ready_to_play|state_valid_lock_coder_wins~q\ & ((\ready_to_play|Mux88~5_combout\))) # (!\ready_to_play|state_valid_lock_coder_wins~q\ & 
-- (\ready_to_play|LUT_DATA[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~39_combout\,
	datab => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datac => \ready_to_play|state_valid_lock_coder_wins~q\,
	datad => \ready_to_play|Mux88~5_combout\,
	combout => \ready_to_play|LUT_DATA[1]~399_combout\);

-- Location: LCCOMB_X49_Y40_N22
\ready_to_play|Mux76~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux76~3_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux76~3_combout\);

-- Location: LCCOMB_X50_Y43_N8
\ready_to_play|Mux76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux76~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(0))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux76~0_combout\);

-- Location: LCCOMB_X50_Y43_N18
\ready_to_play|Mux76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux76~1_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux76~1_combout\);

-- Location: LCCOMB_X50_Y43_N12
\ready_to_play|Mux76~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux76~2_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux76~0_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & 
-- ((\ready_to_play|Mux76~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux76~0_combout\,
	datad => \ready_to_play|Mux76~1_combout\,
	combout => \ready_to_play|Mux76~2_combout\);

-- Location: LCCOMB_X50_Y43_N26
\ready_to_play|Mux76~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux76~4_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|Mux76~2_combout\ & ((\ready_to_play|Mux76~3_combout\))) # (!\ready_to_play|Mux76~2_combout\ & (\ready_to_play|Mux96~0_combout\)))) # (!\ready_to_play|LUT_INDEX\(5) & 
-- (((\ready_to_play|Mux76~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|Mux96~0_combout\,
	datac => \ready_to_play|Mux76~3_combout\,
	datad => \ready_to_play|Mux76~2_combout\,
	combout => \ready_to_play|Mux76~4_combout\);

-- Location: LCCOMB_X48_Y39_N20
\ready_to_play|LUT_DATA[1]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~400_combout\ = (\ready_to_play|LUT_DATA[1]~98_combout\) # ((\ready_to_play|LUT_DATA[1]~399_combout\ & ((\ready_to_play|state_valid_lock_coder_wins~q\) # (\ready_to_play|Mux76~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|LUT_DATA[1]~98_combout\,
	datac => \ready_to_play|LUT_DATA[1]~399_combout\,
	datad => \ready_to_play|Mux76~4_combout\,
	combout => \ready_to_play|LUT_DATA[1]~400_combout\);

-- Location: LCCOMB_X50_Y43_N20
\ready_to_play|Mux95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux95~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) $ (((!\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux95~1_combout\);

-- Location: LCCOMB_X50_Y43_N24
\ready_to_play|Mux95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux95~0_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(0) $ (((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) $ 
-- (((\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux95~0_combout\);

-- Location: LCCOMB_X50_Y43_N6
\ready_to_play|LUT_DATA[1]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~95_combout\ = (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|Mux96~0_combout\)) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|Mux95~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|Mux96~0_combout\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|Mux95~0_combout\,
	combout => \ready_to_play|LUT_DATA[1]~95_combout\);

-- Location: LCCOMB_X50_Y43_N22
\ready_to_play|LUT_DATA[1]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~96_combout\ = (\ready_to_play|state_valid_breaker_try_guess_code~q\ & ((\ready_to_play|LUT_DATA[1]~95_combout\) # ((\ready_to_play|Mux95~1_combout\ & \ready_to_play|LUT_DATA[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|Mux95~1_combout\,
	datac => \ready_to_play|LUT_DATA[2]~33_combout\,
	datad => \ready_to_play|LUT_DATA[1]~95_combout\,
	combout => \ready_to_play|LUT_DATA[1]~96_combout\);

-- Location: LCCOMB_X49_Y41_N2
\ready_to_play|Mux69~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux69~6_combout\ = (\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux69~6_combout\);

-- Location: LCCOMB_X48_Y37_N10
\ready_to_play|Mux69~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux69~9_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux77~2_combout\ & \ready_to_play|Mux69~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux77~2_combout\,
	datad => \ready_to_play|Mux69~6_combout\,
	combout => \ready_to_play|Mux69~9_combout\);

-- Location: LCCOMB_X47_Y39_N4
\ready_to_play|Mux69~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux69~8_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2)) # (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & 
-- ((!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux69~8_combout\);

-- Location: LCCOMB_X47_Y39_N20
\ready_to_play|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux62~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2)) # ((\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ 
-- (((\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux62~0_combout\);

-- Location: LCCOMB_X47_Y39_N0
\ready_to_play|LUT_DATA[1]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~101_combout\ = (\ready_to_play|state_valid_camouflage_left_seg~q\ & (((!\ready_to_play|Mux69~8_combout\)))) # (!\ready_to_play|state_valid_camouflage_left_seg~q\ & (\ready_to_play|state_valid_flexible_left_seg~q\ & 
-- ((!\ready_to_play|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|state_valid_flexible_left_seg~q\,
	datac => \ready_to_play|Mux69~8_combout\,
	datad => \ready_to_play|Mux62~0_combout\,
	combout => \ready_to_play|LUT_DATA[1]~101_combout\);

-- Location: LCCOMB_X47_Y39_N12
\ready_to_play|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux55~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((!\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2) & 
-- ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux55~0_combout\);

-- Location: LCCOMB_X47_Y39_N8
\ready_to_play|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux55~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4) $ 
-- (((\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux55~1_combout\);

-- Location: LCCOMB_X47_Y39_N22
\ready_to_play|LUT_DATA[1]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~100_combout\ = (\ready_to_play|LUT_DATA[0]~84_combout\ & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux55~0_combout\)) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|Mux55~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux55~0_combout\,
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|Mux55~1_combout\,
	datad => \ready_to_play|LUT_DATA[0]~84_combout\,
	combout => \ready_to_play|LUT_DATA[1]~100_combout\);

-- Location: LCCOMB_X48_Y38_N20
\ready_to_play|Mux69~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux69~7_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux69~7_combout\);

-- Location: LCCOMB_X47_Y39_N10
\ready_to_play|LUT_DATA[1]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~99_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux69~7_combout\ & ((\ready_to_play|state_valid_flexible_left_seg~q\) # (\ready_to_play|state_valid_camouflage_left_seg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|state_valid_flexible_left_seg~q\,
	datac => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datad => \ready_to_play|Mux69~7_combout\,
	combout => \ready_to_play|LUT_DATA[1]~99_combout\);

-- Location: LCCOMB_X47_Y39_N2
\ready_to_play|LUT_DATA[1]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~102_combout\ = (\ready_to_play|LUT_DATA[1]~100_combout\) # ((\ready_to_play|LUT_DATA[1]~99_combout\) # ((\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_DATA[1]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_DATA[1]~101_combout\,
	datac => \ready_to_play|LUT_DATA[1]~100_combout\,
	datad => \ready_to_play|LUT_DATA[1]~99_combout\,
	combout => \ready_to_play|LUT_DATA[1]~102_combout\);

-- Location: LCCOMB_X47_Y39_N18
\ready_to_play|LUT_DATA[1]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~103_combout\ = (\ready_to_play|state_valid_camouflage_left_seg~q\ & ((\ready_to_play|Mux69~9_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[1]~102_combout\)))) # 
-- (!\ready_to_play|state_valid_camouflage_left_seg~q\ & (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[1]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|Mux69~9_combout\,
	datad => \ready_to_play|LUT_DATA[1]~102_combout\,
	combout => \ready_to_play|LUT_DATA[1]~103_combout\);

-- Location: LCCOMB_X48_Y38_N18
\ready_to_play|LUT_DATA[1]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~113_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux69~7_combout\ & ((\ready_to_play|state_valid_camouflage_right_seg~q\) # (\ready_to_play|state_valid_flexible_right_seg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|Mux69~7_combout\,
	datac => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datad => \ready_to_play|state_valid_flexible_right_seg~q\,
	combout => \ready_to_play|LUT_DATA[1]~113_combout\);

-- Location: LCCOMB_X48_Y38_N8
\ready_to_play|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux41~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux41~0_combout\);

-- Location: LCCOMB_X48_Y38_N2
\ready_to_play|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux48~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(3) & 
-- \ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux48~0_combout\);

-- Location: LCCOMB_X48_Y38_N14
\ready_to_play|LUT_DATA[1]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~115_combout\ = (\ready_to_play|state_valid_camouflage_right_seg~q\ & (((\ready_to_play|Mux48~0_combout\)))) # (!\ready_to_play|state_valid_camouflage_right_seg~q\ & (\ready_to_play|state_valid_flexible_right_seg~q\ & 
-- (\ready_to_play|Mux41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_flexible_right_seg~q\,
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|Mux41~0_combout\,
	datad => \ready_to_play|Mux48~0_combout\,
	combout => \ready_to_play|LUT_DATA[1]~115_combout\);

-- Location: LCCOMB_X48_Y38_N26
\ready_to_play|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux34~1_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(2) $ ((\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & 
-- \ready_to_play|LUT_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux34~1_combout\);

-- Location: LCCOMB_X48_Y38_N28
\ready_to_play|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux34~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # 
-- (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux34~0_combout\);

-- Location: LCCOMB_X48_Y38_N24
\ready_to_play|LUT_DATA[1]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~114_combout\ = (\ready_to_play|LUT_DATA[0]~68_combout\ & ((\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|Mux34~0_combout\))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~68_combout\,
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|Mux34~1_combout\,
	datad => \ready_to_play|Mux34~0_combout\,
	combout => \ready_to_play|LUT_DATA[1]~114_combout\);

-- Location: LCCOMB_X48_Y38_N0
\ready_to_play|LUT_DATA[1]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~116_combout\ = (\ready_to_play|LUT_DATA[1]~113_combout\) # ((\ready_to_play|LUT_DATA[1]~114_combout\) # ((\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_DATA[1]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_DATA[1]~113_combout\,
	datac => \ready_to_play|LUT_DATA[1]~115_combout\,
	datad => \ready_to_play|LUT_DATA[1]~114_combout\,
	combout => \ready_to_play|LUT_DATA[1]~116_combout\);

-- Location: LCCOMB_X48_Y39_N30
\ready_to_play|LUT_DATA[1]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~117_combout\ = (\ready_to_play|Mux69~9_combout\ & ((\ready_to_play|state_valid_camouflage_right_seg~q\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[1]~116_combout\)))) # (!\ready_to_play|Mux69~9_combout\ & 
-- (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[1]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux69~9_combout\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datad => \ready_to_play|LUT_DATA[1]~116_combout\,
	combout => \ready_to_play|LUT_DATA[1]~117_combout\);

-- Location: LCCOMB_X49_Y38_N18
\ready_to_play|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux6~5_combout\ = (\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ 
-- (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux6~5_combout\);

-- Location: LCCOMB_X45_Y38_N30
\ready_to_play|LUT_DATA[2]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~109_combout\ = (\ready_to_play|state_valid_group~q\ & !\ready_to_play|state_valid_coder~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datad => \ready_to_play|state_valid_coder~q\,
	combout => \ready_to_play|LUT_DATA[2]~109_combout\);

-- Location: LCCOMB_X46_Y40_N16
\ready_to_play|LUT_DATA[1]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~110_combout\ = (\ready_to_play|LUT_DATA[2]~109_combout\ & (!\ready_to_play|state_valid_breaker~q\ & (!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~109_combout\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[1]~110_combout\);

-- Location: LCCOMB_X48_Y39_N26
\ready_to_play|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux6~3_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(2) $ (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)) # 
-- ((\ready_to_play|LUT_INDEX\(2)) # (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux6~3_combout\);

-- Location: LCCOMB_X48_Y39_N8
\ready_to_play|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux6~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y39_N22
\ready_to_play|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux6~1_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(1) & 
-- \ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux6~1_combout\);

-- Location: LCCOMB_X48_Y39_N24
\ready_to_play|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux6~2_combout\ = (\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|state_valid_group~q\ & (\ready_to_play|Mux6~1_combout\ & (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|Mux6~1_combout\,
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux6~2_combout\);

-- Location: LCCOMB_X48_Y39_N16
\ready_to_play|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux6~4_combout\ = (\ready_to_play|state_valid_group~q\ & ((\ready_to_play|Mux6~2_combout\ & (\ready_to_play|Mux6~3_combout\)) # (!\ready_to_play|Mux6~2_combout\ & ((\ready_to_play|Mux6~0_combout\))))) # (!\ready_to_play|state_valid_group~q\ 
-- & (((\ready_to_play|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux6~3_combout\,
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|Mux6~0_combout\,
	datad => \ready_to_play|Mux6~2_combout\,
	combout => \ready_to_play|Mux6~4_combout\);

-- Location: LCCOMB_X48_Y39_N14
\ready_to_play|LUT_DATA[1]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~111_combout\ = (\ready_to_play|Mux6~5_combout\ & (\ready_to_play|LUT_DATA[0]~71_combout\ & ((\ready_to_play|Mux6~4_combout\)))) # (!\ready_to_play|Mux6~5_combout\ & ((\ready_to_play|LUT_DATA[1]~110_combout\) # 
-- ((\ready_to_play|LUT_DATA[0]~71_combout\ & \ready_to_play|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux6~5_combout\,
	datab => \ready_to_play|LUT_DATA[0]~71_combout\,
	datac => \ready_to_play|LUT_DATA[1]~110_combout\,
	datad => \ready_to_play|Mux6~4_combout\,
	combout => \ready_to_play|LUT_DATA[1]~111_combout\);

-- Location: LCCOMB_X47_Y41_N10
\ready_to_play|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux27~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ 
-- (\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux27~1_combout\);

-- Location: LCCOMB_X47_Y41_N26
\ready_to_play|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux27~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux27~0_combout\);

-- Location: LCCOMB_X47_Y41_N8
\ready_to_play|LUT_DATA[1]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~107_combout\ = (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(5) & ((!\ready_to_play|Mux77~3_combout\))) # (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux27~0_combout\,
	datad => \ready_to_play|Mux77~3_combout\,
	combout => \ready_to_play|LUT_DATA[1]~107_combout\);

-- Location: LCCOMB_X47_Y41_N16
\ready_to_play|LUT_DATA[1]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~108_combout\ = (\ready_to_play|state_valid_breaker~q\ & ((\ready_to_play|LUT_DATA[1]~107_combout\) # ((\ready_to_play|Mux27~1_combout\ & \ready_to_play|LUT_DATA[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux27~1_combout\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|LUT_DATA[1]~107_combout\,
	datad => \ready_to_play|LUT_DATA[2]~33_combout\,
	combout => \ready_to_play|LUT_DATA[1]~108_combout\);

-- Location: LCCOMB_X48_Y37_N18
\ready_to_play|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux20~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux20~0_combout\);

-- Location: LCCOMB_X48_Y37_N4
\ready_to_play|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux20~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & 
-- (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux20~1_combout\);

-- Location: LCCOMB_X47_Y40_N2
\ready_to_play|LUT_DATA[1]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~104_combout\ = (!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|state_valid_breaker~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|state_valid_breaker~q\,
	combout => \ready_to_play|LUT_DATA[1]~104_combout\);

-- Location: LCCOMB_X48_Y37_N2
\ready_to_play|LUT_DATA[1]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~105_combout\ = (\ready_to_play|LUT_DATA[1]~104_combout\ & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux20~0_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|Mux20~0_combout\,
	datac => \ready_to_play|Mux20~1_combout\,
	datad => \ready_to_play|LUT_DATA[1]~104_combout\,
	combout => \ready_to_play|LUT_DATA[1]~105_combout\);

-- Location: LCCOMB_X48_Y39_N10
\ready_to_play|LUT_DATA[1]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~106_combout\ = (\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_DATA[1]~105_combout\) # ((!\ready_to_play|Mux77~3_combout\ & \ready_to_play|Mux77~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|Mux77~3_combout\,
	datac => \ready_to_play|Mux77~2_combout\,
	datad => \ready_to_play|LUT_DATA[1]~105_combout\,
	combout => \ready_to_play|LUT_DATA[1]~106_combout\);

-- Location: LCCOMB_X48_Y39_N12
\ready_to_play|LUT_DATA[1]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~112_combout\ = (\ready_to_play|LUT_DATA[4]~59_combout\ & ((\ready_to_play|LUT_DATA[1]~111_combout\) # ((\ready_to_play|LUT_DATA[1]~108_combout\) # (\ready_to_play|LUT_DATA[1]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~59_combout\,
	datab => \ready_to_play|LUT_DATA[1]~111_combout\,
	datac => \ready_to_play|LUT_DATA[1]~108_combout\,
	datad => \ready_to_play|LUT_DATA[1]~106_combout\,
	combout => \ready_to_play|LUT_DATA[1]~112_combout\);

-- Location: LCCOMB_X48_Y39_N28
\ready_to_play|LUT_DATA[1]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~118_combout\ = (\ready_to_play|LUT_DATA[1]~103_combout\) # ((\ready_to_play|LUT_DATA[4]~51_combout\ & ((\ready_to_play|LUT_DATA[1]~117_combout\) # (\ready_to_play|LUT_DATA[1]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~51_combout\,
	datab => \ready_to_play|LUT_DATA[1]~103_combout\,
	datac => \ready_to_play|LUT_DATA[1]~117_combout\,
	datad => \ready_to_play|LUT_DATA[1]~112_combout\,
	combout => \ready_to_play|LUT_DATA[1]~118_combout\);

-- Location: LCCOMB_X48_Y39_N18
\ready_to_play|LUT_DATA[1]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~120_combout\ = (\ready_to_play|LUT_DATA[1]~400_combout\) # ((\ready_to_play|LUT_DATA[1]~96_combout\) # ((\ready_to_play|LUT_DATA[1]~119_combout\ & \ready_to_play|LUT_DATA[1]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~119_combout\,
	datab => \ready_to_play|LUT_DATA[1]~400_combout\,
	datac => \ready_to_play|LUT_DATA[1]~96_combout\,
	datad => \ready_to_play|LUT_DATA[1]~118_combout\,
	combout => \ready_to_play|LUT_DATA[1]~120_combout\);

-- Location: LCCOMB_X48_Y39_N2
\ready_to_play|LUT_DATA[1]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~376_combout\ = (\ready_to_play|state_valid_play_again~q\ & (\ready_to_play|LUT_DATA[1]~94_combout\ & (!\ready_to_play|LUT_INDEX\(5)))) # (!\ready_to_play|state_valid_play_again~q\ & (((\ready_to_play|LUT_DATA[1]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_play_again~q\,
	datab => \ready_to_play|LUT_DATA[1]~94_combout\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[1]~120_combout\,
	combout => \ready_to_play|LUT_DATA[1]~376_combout\);

-- Location: LCCOMB_X48_Y39_N6
\ready_to_play|LUT_DATA[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(1) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[1]~376_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA\(1),
	datac => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[1]~376_combout\,
	combout => \ready_to_play|LUT_DATA\(1));

-- Location: LCCOMB_X48_Y39_N0
\ready_to_play|mLCD_DATA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~2_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(1),
	combout => \ready_to_play|mLCD_DATA~2_combout\);

-- Location: FF_X48_Y39_N1
\ready_to_play|mLCD_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~2_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(1));

-- Location: LCCOMB_X46_Y39_N24
\ready_to_play|LUT_DATA[2]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~139_combout\ = (!\ready_to_play|state_valid_lock_coder_wins~q\ & (!\ready_to_play|state_valid_play_again~q\ & (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & !\ready_to_play|state_valid_lock_breaker_wins~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|state_valid_play_again~q\,
	datac => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datad => \ready_to_play|state_valid_lock_breaker_wins~q\,
	combout => \ready_to_play|LUT_DATA[2]~139_combout\);

-- Location: LCCOMB_X50_Y40_N4
\ready_to_play|LUT_DATA[2]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~125_combout\ = (\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[2]~125_combout\);

-- Location: LCCOMB_X49_Y42_N4
\ready_to_play|LUT_DATA[2]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~191_combout\ = (\ready_to_play|LUT_DATA[2]~125_combout\ & ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_DATA[2]~125_combout\,
	combout => \ready_to_play|LUT_DATA[2]~191_combout\);

-- Location: LCCOMB_X49_Y42_N14
\ready_to_play|LUT_DATA[2]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~192_combout\ = (\ready_to_play|LUT_DATA[2]~191_combout\) # ((!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) & \ready_to_play|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[2]~191_combout\,
	datad => \ready_to_play|Mux3~0_combout\,
	combout => \ready_to_play|LUT_DATA[2]~192_combout\);

-- Location: LCCOMB_X50_Y42_N16
\ready_to_play|LUT_DATA[2]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~395_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(1))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4) $ (((!\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[2]~395_combout\);

-- Location: LCCOMB_X50_Y42_N26
\ready_to_play|LUT_DATA[2]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~396_combout\ = (\ready_to_play|LUT_DATA[2]~395_combout\ & (((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_DATA[2]~395_combout\,
	combout => \ready_to_play|LUT_DATA[2]~396_combout\);

-- Location: LCCOMB_X49_Y42_N28
\ready_to_play|LUT_DATA[2]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~193_combout\ = (\ready_to_play|state_valid_lock_coder_choose_password~q\ & ((\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_DATA[2]~396_combout\))) # (!\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_DATA[2]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	datac => \ready_to_play|LUT_DATA[2]~192_combout\,
	datad => \ready_to_play|LUT_DATA[2]~396_combout\,
	combout => \ready_to_play|LUT_DATA[2]~193_combout\);

-- Location: LCCOMB_X49_Y42_N22
\ready_to_play|LUT_DATA[2]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~161_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) $ 
-- (((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~161_combout\);

-- Location: LCCOMB_X49_Y42_N0
\ready_to_play|LUT_DATA[2]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~162_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & 
-- !\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~162_combout\);

-- Location: LCCOMB_X49_Y42_N2
\ready_to_play|LUT_DATA[2]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~163_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[2]~161_combout\)) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[2]~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[2]~161_combout\,
	datad => \ready_to_play|LUT_DATA[2]~162_combout\,
	combout => \ready_to_play|LUT_DATA[2]~163_combout\);

-- Location: LCCOMB_X47_Y41_N0
\ready_to_play|LUT_DATA[2]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~154_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[2]~154_combout\);

-- Location: LCCOMB_X48_Y41_N12
\ready_to_play|LUT_DATA[2]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~155_combout\ = (\ready_to_play|LUT_INDEX\(4) & (((\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) $ (((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~155_combout\);

-- Location: LCCOMB_X48_Y41_N22
\ready_to_play|LUT_DATA[2]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~156_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(5)) # (!\ready_to_play|LUT_DATA[2]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[2]~155_combout\,
	combout => \ready_to_play|LUT_DATA[2]~156_combout\);

-- Location: LCCOMB_X49_Y41_N4
\ready_to_play|LUT_DATA[2]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~157_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ ((\ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & ((!\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~157_combout\);

-- Location: LCCOMB_X48_Y41_N28
\ready_to_play|LUT_DATA[2]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~158_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(5))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_DATA[2]~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[2]~157_combout\,
	combout => \ready_to_play|LUT_DATA[2]~158_combout\);

-- Location: LCCOMB_X48_Y41_N2
\ready_to_play|LUT_DATA[2]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~159_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_DATA[2]~155_combout\ & ((\ready_to_play|LUT_DATA[2]~158_combout\)))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_DATA[2]~156_combout\) # 
-- (\ready_to_play|LUT_DATA[2]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~155_combout\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[2]~156_combout\,
	datad => \ready_to_play|LUT_DATA[2]~158_combout\,
	combout => \ready_to_play|LUT_DATA[2]~159_combout\);

-- Location: LCCOMB_X48_Y41_N16
\ready_to_play|LUT_DATA[2]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~160_combout\ = (\ready_to_play|state_valid_invisible_left_seg~q\ & (((\ready_to_play|LUT_DATA[2]~154_combout\)))) # (!\ready_to_play|state_valid_invisible_left_seg~q\ & (\ready_to_play|state_valid_camouflage_right_seg~q\ & 
-- ((\ready_to_play|LUT_DATA[2]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_left_seg~q\,
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[2]~154_combout\,
	datad => \ready_to_play|LUT_DATA[2]~159_combout\,
	combout => \ready_to_play|LUT_DATA[2]~160_combout\);

-- Location: LCCOMB_X48_Y41_N26
\ready_to_play|LUT_DATA[2]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~164_combout\ = (\ready_to_play|LUT_DATA[2]~160_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|state_valid_invisible_left_seg~q\ & \ready_to_play|LUT_DATA[2]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[2]~163_combout\,
	datad => \ready_to_play|LUT_DATA[2]~160_combout\,
	combout => \ready_to_play|LUT_DATA[2]~164_combout\);

-- Location: LCCOMB_X47_Y42_N14
\ready_to_play|LUT_DATA[2]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~165_combout\ = (!\ready_to_play|state_valid_invisible_left_seg~q\ & (!\ready_to_play|state_valid_flexible_right_seg~q\ & !\ready_to_play|state_valid_camouflage_right_seg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|state_valid_flexible_right_seg~q\,
	datad => \ready_to_play|state_valid_camouflage_right_seg~q\,
	combout => \ready_to_play|LUT_DATA[2]~165_combout\);

-- Location: LCCOMB_X46_Y42_N26
\ready_to_play|LUT_DATA[6]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~187_combout\ = (!\ready_to_play|state_valid_invisible_right_seg~q\ & !\ready_to_play|state_valid_breaker~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_invisible_right_seg~q\,
	datad => \ready_to_play|state_valid_breaker~q\,
	combout => \ready_to_play|LUT_DATA[6]~187_combout\);

-- Location: LCCOMB_X48_Y42_N26
\ready_to_play|LUT_DATA[2]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~167_combout\ = (\ready_to_play|LUT_INDEX\(2) & (((!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4))) # 
-- (!\ready_to_play|LUT_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~167_combout\);

-- Location: LCCOMB_X48_Y42_N4
\ready_to_play|LUT_DATA[2]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~166_combout\ = (\ready_to_play|state_valid_invisible_right_seg~q\ & !\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_invisible_right_seg~q\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[2]~166_combout\);

-- Location: LCCOMB_X48_Y42_N24
\ready_to_play|LUT_DATA[2]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~168_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(1) & 
-- \ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~168_combout\);

-- Location: LCCOMB_X48_Y42_N10
\ready_to_play|LUT_DATA[2]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~169_combout\ = (\ready_to_play|LUT_DATA[2]~166_combout\ & ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[2]~167_combout\)) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[2]~168_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~167_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[2]~166_combout\,
	datad => \ready_to_play|LUT_DATA[2]~168_combout\,
	combout => \ready_to_play|LUT_DATA[2]~169_combout\);

-- Location: LCCOMB_X46_Y42_N28
\ready_to_play|LUT_DATA[2]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~170_combout\ = (\ready_to_play|state_valid_breaker~q\ & !\ready_to_play|state_valid_invisible_right_seg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|state_valid_invisible_right_seg~q\,
	combout => \ready_to_play|LUT_DATA[2]~170_combout\);

-- Location: LCCOMB_X48_Y42_N30
\ready_to_play|LUT_DATA[2]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~172_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~172_combout\);

-- Location: LCCOMB_X48_Y42_N28
\ready_to_play|LUT_DATA[2]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~171_combout\ = (\ready_to_play|LUT_INDEX\(4)) # ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(5))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~171_combout\);

-- Location: LCCOMB_X48_Y42_N8
\ready_to_play|LUT_DATA[2]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~173_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_DATA[2]~172_combout\)) # (!\ready_to_play|LUT_INDEX\(3) & ((!\ready_to_play|LUT_DATA[2]~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[2]~172_combout\,
	datad => \ready_to_play|LUT_DATA[2]~171_combout\,
	combout => \ready_to_play|LUT_DATA[2]~173_combout\);

-- Location: LCCOMB_X49_Y42_N24
\ready_to_play|LUT_DATA[2]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~381_combout\ = (\ready_to_play|Mux3~0_combout\ & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|Mux3~0_combout\,
	combout => \ready_to_play|LUT_DATA[2]~381_combout\);

-- Location: LCCOMB_X48_Y42_N18
\ready_to_play|LUT_DATA[2]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~174_combout\ = (\ready_to_play|LUT_DATA[2]~169_combout\) # ((\ready_to_play|LUT_DATA[2]~170_combout\ & ((\ready_to_play|LUT_DATA[2]~173_combout\) # (\ready_to_play|LUT_DATA[2]~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~169_combout\,
	datab => \ready_to_play|LUT_DATA[2]~170_combout\,
	datac => \ready_to_play|LUT_DATA[2]~173_combout\,
	datad => \ready_to_play|LUT_DATA[2]~381_combout\,
	combout => \ready_to_play|LUT_DATA[2]~174_combout\);

-- Location: LCCOMB_X48_Y40_N14
\ready_to_play|LUT_DATA[2]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~184_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~184_combout\);

-- Location: LCCOMB_X48_Y40_N24
\ready_to_play|LUT_DATA[2]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~183_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(2) & (((!\ready_to_play|LUT_INDEX\(5) & 
-- !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~183_combout\);

-- Location: LCCOMB_X48_Y40_N20
\ready_to_play|LUT_DATA[2]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~185_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_DATA[2]~183_combout\)))) # (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_DATA[2]~184_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[2]~184_combout\,
	datad => \ready_to_play|LUT_DATA[2]~183_combout\,
	combout => \ready_to_play|LUT_DATA[2]~185_combout\);

-- Location: LCCOMB_X48_Y40_N12
\ready_to_play|LUT_DATA[2]~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~397_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((\ready_to_play|LUT_DATA[2]~185_combout\)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(4) 
-- & (\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_DATA[2]~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[2]~185_combout\,
	combout => \ready_to_play|LUT_DATA[2]~397_combout\);

-- Location: LCCOMB_X48_Y40_N10
\ready_to_play|LUT_DATA[2]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~398_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_DATA[2]~397_combout\)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_DATA[2]~185_combout\ & 
-- ((\ready_to_play|LUT_DATA[2]~397_combout\) # (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_DATA[2]~185_combout\,
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_DATA[2]~397_combout\,
	combout => \ready_to_play|LUT_DATA[2]~398_combout\);

-- Location: LCCOMB_X48_Y40_N4
\ready_to_play|LUT_DATA[2]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~175_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~175_combout\);

-- Location: LCCOMB_X48_Y40_N22
\ready_to_play|LUT_DATA[2]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~176_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[2]~175_combout\ & \ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[2]~175_combout\,
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[2]~176_combout\);

-- Location: LCCOMB_X48_Y40_N28
\ready_to_play|LUT_DATA[2]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~177_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) $ (((!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0) & ((!\ready_to_play|LUT_INDEX\(3)))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~177_combout\);

-- Location: LCCOMB_X48_Y40_N6
\ready_to_play|LUT_DATA[2]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~178_combout\ = (\ready_to_play|LUT_INDEX\(5) & (((!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[2]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[2]~177_combout\,
	combout => \ready_to_play|LUT_DATA[2]~178_combout\);

-- Location: LCCOMB_X48_Y40_N8
\ready_to_play|LUT_DATA[2]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~179_combout\ = (\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_DATA[2]~176_combout\) # ((!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[2]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_DATA[2]~176_combout\,
	datad => \ready_to_play|LUT_DATA[2]~178_combout\,
	combout => \ready_to_play|LUT_DATA[2]~179_combout\);

-- Location: LCCOMB_X48_Y40_N26
\ready_to_play|LUT_DATA[2]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~180_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) $ 
-- (((!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~180_combout\);

-- Location: LCCOMB_X48_Y40_N16
\ready_to_play|LUT_DATA[2]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~181_combout\ = (\ready_to_play|LUT_DATA[1]~92_combout\ & (((!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_DATA[2]~180_combout\)) # (!\ready_to_play|Mux3~0_combout\))) # (!\ready_to_play|LUT_DATA[1]~92_combout\ & 
-- (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_DATA[2]~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~92_combout\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[2]~180_combout\,
	datad => \ready_to_play|Mux3~0_combout\,
	combout => \ready_to_play|LUT_DATA[2]~181_combout\);

-- Location: LCCOMB_X48_Y40_N2
\ready_to_play|LUT_DATA[2]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~182_combout\ = (!\ready_to_play|state_valid_group~q\ & (!\ready_to_play|state_valid_coder~q\ & (!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[2]~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[2]~181_combout\,
	combout => \ready_to_play|LUT_DATA[2]~182_combout\);

-- Location: LCCOMB_X48_Y40_N18
\ready_to_play|LUT_DATA[2]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~186_combout\ = (\ready_to_play|LUT_DATA[2]~179_combout\) # ((\ready_to_play|LUT_DATA[2]~182_combout\) # ((\ready_to_play|LUT_DATA[2]~398_combout\ & \ready_to_play|LUT_DATA[2]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~398_combout\,
	datab => \ready_to_play|LUT_DATA[2]~109_combout\,
	datac => \ready_to_play|LUT_DATA[2]~179_combout\,
	datad => \ready_to_play|LUT_DATA[2]~182_combout\,
	combout => \ready_to_play|LUT_DATA[2]~186_combout\);

-- Location: LCCOMB_X48_Y41_N4
\ready_to_play|LUT_DATA[2]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~188_combout\ = (\ready_to_play|LUT_DATA[2]~174_combout\) # ((\ready_to_play|LUT_DATA[6]~187_combout\ & ((\ready_to_play|LUT_DATA[2]~186_combout\))) # (!\ready_to_play|LUT_DATA[6]~187_combout\ & 
-- (\ready_to_play|LUT_DATA[2]~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~187_combout\,
	datab => \ready_to_play|LUT_DATA[2]~174_combout\,
	datac => \ready_to_play|LUT_DATA[2]~154_combout\,
	datad => \ready_to_play|LUT_DATA[2]~186_combout\,
	combout => \ready_to_play|LUT_DATA[2]~188_combout\);

-- Location: LCCOMB_X49_Y43_N4
\ready_to_play|LUT_DATA[2]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~151_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[2]~151_combout\);

-- Location: LCCOMB_X49_Y43_N30
\ready_to_play|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux1~2_combout\ = (!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux1~2_combout\);

-- Location: LCCOMB_X49_Y43_N12
\ready_to_play|LUT_DATA[2]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~141_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~141_combout\);

-- Location: LCCOMB_X49_Y43_N26
\ready_to_play|LUT_DATA[2]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~152_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[2]~151_combout\ & (\ready_to_play|Mux1~2_combout\))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[2]~141_combout\) # 
-- ((\ready_to_play|LUT_DATA[2]~151_combout\ & \ready_to_play|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_DATA[2]~151_combout\,
	datac => \ready_to_play|Mux1~2_combout\,
	datad => \ready_to_play|LUT_DATA[2]~141_combout\,
	combout => \ready_to_play|LUT_DATA[2]~152_combout\);

-- Location: LCCOMB_X49_Y43_N14
\ready_to_play|LUT_DATA[2]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~149_combout\ = (\ready_to_play|LUT_INDEX\(4) & (((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(5))) # 
-- (!\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~149_combout\);

-- Location: LCCOMB_X49_Y43_N10
\ready_to_play|LUT_DATA[2]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~380_combout\ = (\ready_to_play|LUT_DATA[2]~33_combout\ & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[2]~33_combout\,
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~380_combout\);

-- Location: LCCOMB_X49_Y43_N16
\ready_to_play|LUT_DATA[2]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~150_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[2]~380_combout\) # ((!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[2]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[2]~149_combout\,
	datad => \ready_to_play|LUT_DATA[2]~380_combout\,
	combout => \ready_to_play|LUT_DATA[2]~150_combout\);

-- Location: LCCOMB_X49_Y43_N24
\ready_to_play|LUT_DATA[2]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~153_combout\ = (\ready_to_play|LUT_DATA[2]~73_combout\ & (!\ready_to_play|state_valid_invisible_left_seg~q\ & ((\ready_to_play|LUT_DATA[2]~152_combout\) # (\ready_to_play|LUT_DATA[2]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~73_combout\,
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[2]~152_combout\,
	datad => \ready_to_play|LUT_DATA[2]~150_combout\,
	combout => \ready_to_play|LUT_DATA[2]~153_combout\);

-- Location: LCCOMB_X48_Y41_N14
\ready_to_play|LUT_DATA[2]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~189_combout\ = (\ready_to_play|LUT_DATA[2]~164_combout\) # ((\ready_to_play|LUT_DATA[2]~153_combout\) # ((\ready_to_play|LUT_DATA[2]~165_combout\ & \ready_to_play|LUT_DATA[2]~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~164_combout\,
	datab => \ready_to_play|LUT_DATA[2]~165_combout\,
	datac => \ready_to_play|LUT_DATA[2]~188_combout\,
	datad => \ready_to_play|LUT_DATA[2]~153_combout\,
	combout => \ready_to_play|LUT_DATA[2]~189_combout\);

-- Location: LCCOMB_X49_Y43_N22
\ready_to_play|LUT_DATA[2]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~142_combout\ = (\ready_to_play|LUT_DATA[2]~33_combout\ & (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[2]~33_combout\,
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~142_combout\);

-- Location: LCCOMB_X49_Y43_N2
\ready_to_play|LUT_DATA[2]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~140_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(2) & 
-- \ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~140_combout\);

-- Location: LCCOMB_X49_Y43_N0
\ready_to_play|LUT_DATA[2]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~378_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[2]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[2]~140_combout\,
	combout => \ready_to_play|LUT_DATA[2]~378_combout\);

-- Location: LCCOMB_X49_Y43_N20
\ready_to_play|LUT_DATA[2]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~143_combout\ = (\ready_to_play|LUT_INDEX\(0) & (((\ready_to_play|LUT_DATA[2]~378_combout\)))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[2]~141_combout\) # ((\ready_to_play|LUT_DATA[2]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~141_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[2]~142_combout\,
	datad => \ready_to_play|LUT_DATA[2]~378_combout\,
	combout => \ready_to_play|LUT_DATA[2]~143_combout\);

-- Location: LCCOMB_X47_Y43_N2
\ready_to_play|LUT_DATA[2]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~147_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(3) $ (((!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~147_combout\);

-- Location: LCCOMB_X47_Y43_N16
\ready_to_play|LUT_DATA[2]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~144_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(4) & 
-- ((!\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~144_combout\);

-- Location: LCCOMB_X47_Y43_N10
\ready_to_play|LUT_DATA[2]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~145_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # 
-- (\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~145_combout\);

-- Location: LCCOMB_X47_Y43_N28
\ready_to_play|LUT_DATA[2]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~146_combout\ = (\ready_to_play|LUT_INDEX\(0) & (((\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[2]~145_combout\ & (\ready_to_play|LUT_INDEX\(5) $ (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_DATA[2]~145_combout\,
	combout => \ready_to_play|LUT_DATA[2]~146_combout\);

-- Location: LCCOMB_X48_Y43_N16
\ready_to_play|LUT_DATA[2]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~148_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[2]~146_combout\ & (\ready_to_play|LUT_DATA[2]~147_combout\)) # (!\ready_to_play|LUT_DATA[2]~146_combout\ & ((\ready_to_play|LUT_DATA[2]~144_combout\))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (((\ready_to_play|LUT_DATA[2]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~147_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[2]~144_combout\,
	datad => \ready_to_play|LUT_DATA[2]~146_combout\,
	combout => \ready_to_play|LUT_DATA[2]~148_combout\);

-- Location: LCCOMB_X48_Y43_N30
\ready_to_play|LUT_DATA[2]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~379_combout\ = (\ready_to_play|state_valid_camouflage_left_seg~q\ & (((\ready_to_play|LUT_DATA[2]~148_combout\)))) # (!\ready_to_play|state_valid_camouflage_left_seg~q\ & (\ready_to_play|state_valid_flexible_left_seg~q\ & 
-- (\ready_to_play|LUT_DATA[2]~143_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|state_valid_flexible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[2]~143_combout\,
	datad => \ready_to_play|LUT_DATA[2]~148_combout\,
	combout => \ready_to_play|LUT_DATA[2]~379_combout\);

-- Location: LCCOMB_X48_Y41_N8
\ready_to_play|LUT_DATA[2]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~190_combout\ = (!\ready_to_play|state_valid_lock_coder_choose_password~q\ & ((\ready_to_play|LUT_DATA[2]~379_combout\) # ((\ready_to_play|LUT_DATA[2]~89_combout\ & \ready_to_play|LUT_DATA[2]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~89_combout\,
	datab => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	datac => \ready_to_play|LUT_DATA[2]~189_combout\,
	datad => \ready_to_play|LUT_DATA[2]~379_combout\,
	combout => \ready_to_play|LUT_DATA[2]~190_combout\);

-- Location: LCCOMB_X45_Y41_N18
\ready_to_play|LUT_DATA[2]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~132_combout\ = (\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~132_combout\);

-- Location: LCCOMB_X48_Y40_N0
\ready_to_play|LUT_DATA[2]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~131_combout\ = (\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~131_combout\);

-- Location: LCCOMB_X45_Y41_N24
\ready_to_play|LUT_DATA[2]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~133_combout\ = (\ready_to_play|LUT_DATA[2]~132_combout\ & (((!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_DATA[2]~131_combout\)))) # (!\ready_to_play|LUT_DATA[2]~132_combout\ & (!\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_DATA[2]~132_combout\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_DATA[2]~131_combout\,
	combout => \ready_to_play|LUT_DATA[2]~133_combout\);

-- Location: LCCOMB_X45_Y41_N22
\ready_to_play|LUT_DATA[2]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~134_combout\ = (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[2]~133_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[2]~133_combout\,
	combout => \ready_to_play|LUT_DATA[2]~134_combout\);

-- Location: LCCOMB_X46_Y38_N8
\ready_to_play|LUT_DATA[2]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~130_combout\ = (!\ready_to_play|state_valid_lock_coder_wins~q\ & (\ready_to_play|state_valid_lock_breaker_wins~q\ & (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & !\ready_to_play|state_valid_play_again~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datac => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datad => \ready_to_play|state_valid_play_again~q\,
	combout => \ready_to_play|LUT_DATA[2]~130_combout\);

-- Location: LCCOMB_X46_Y38_N22
\ready_to_play|LUT_DATA[2]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~128_combout\ = (\ready_to_play|state_valid_play_again~q\) # ((!\ready_to_play|state_valid_breaker_try_guess_code~q\ & \ready_to_play|state_valid_lock_coder_wins~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_play_again~q\,
	datab => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datad => \ready_to_play|state_valid_lock_coder_wins~q\,
	combout => \ready_to_play|LUT_DATA[2]~128_combout\);

-- Location: LCCOMB_X45_Y41_N12
\ready_to_play|LUT_DATA[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~37_combout\ = (\ready_to_play|state_valid_play_again~q\ & !\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_play_again~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[1]~37_combout\);

-- Location: LCCOMB_X45_Y41_N20
\ready_to_play|LUT_DATA[2]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~123_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~123_combout\);

-- Location: LCCOMB_X45_Y41_N26
\ready_to_play|LUT_DATA[2]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~122_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) $ (((\ready_to_play|LUT_INDEX\(4)) # 
-- (\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~122_combout\);

-- Location: LCCOMB_X45_Y41_N14
\ready_to_play|WideOr17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr17~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) $ (((!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(2)))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (((\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|WideOr17~1_combout\);

-- Location: LCCOMB_X45_Y41_N28
\ready_to_play|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr17~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(1) & 
-- (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|WideOr17~0_combout\);

-- Location: LCCOMB_X45_Y41_N0
\ready_to_play|LUT_DATA[2]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~121_combout\ = (!\ready_to_play|state_valid_play_again~q\ & ((\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|WideOr17~1_combout\)) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|WideOr17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|state_valid_play_again~q\,
	datac => \ready_to_play|WideOr17~1_combout\,
	datad => \ready_to_play|WideOr17~0_combout\,
	combout => \ready_to_play|LUT_DATA[2]~121_combout\);

-- Location: LCCOMB_X45_Y41_N30
\ready_to_play|LUT_DATA[2]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~124_combout\ = (\ready_to_play|LUT_DATA[2]~121_combout\) # ((\ready_to_play|LUT_DATA[1]~37_combout\ & (!\ready_to_play|LUT_DATA[2]~123_combout\ & \ready_to_play|LUT_DATA[2]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~37_combout\,
	datab => \ready_to_play|LUT_DATA[2]~123_combout\,
	datac => \ready_to_play|LUT_DATA[2]~122_combout\,
	datad => \ready_to_play|LUT_DATA[2]~121_combout\,
	combout => \ready_to_play|LUT_DATA[2]~124_combout\);

-- Location: LCCOMB_X45_Y41_N2
\ready_to_play|LUT_DATA[2]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~127_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) $ (((!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2)) # 
-- ((\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~127_combout\);

-- Location: LCCOMB_X45_Y41_N16
\ready_to_play|LUT_DATA[2]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~126_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~126_combout\);

-- Location: LCCOMB_X45_Y41_N10
\ready_to_play|LUT_DATA[2]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~377_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[2]~127_combout\ $ (!\ready_to_play|LUT_DATA[2]~126_combout\)))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- (((\ready_to_play|LUT_DATA[2]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[2]~127_combout\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_DATA[2]~126_combout\,
	combout => \ready_to_play|LUT_DATA[2]~377_combout\);

-- Location: LCCOMB_X45_Y41_N4
\ready_to_play|LUT_DATA[2]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~129_combout\ = (\ready_to_play|LUT_DATA[2]~128_combout\ & (((\ready_to_play|LUT_DATA[2]~124_combout\)))) # (!\ready_to_play|LUT_DATA[2]~128_combout\ & (\ready_to_play|state_valid_breaker_try_guess_code~q\ & 
-- ((\ready_to_play|LUT_DATA[2]~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|LUT_DATA[2]~128_combout\,
	datac => \ready_to_play|LUT_DATA[2]~124_combout\,
	datad => \ready_to_play|LUT_DATA[2]~377_combout\,
	combout => \ready_to_play|LUT_DATA[2]~129_combout\);

-- Location: LCCOMB_X48_Y37_N12
\ready_to_play|LUT_DATA[2]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~135_combout\ = (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(0))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) $ 
-- (\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~135_combout\);

-- Location: LCCOMB_X48_Y37_N26
\ready_to_play|LUT_DATA[2]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~136_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(0) & ((!\ready_to_play|LUT_INDEX\(4)))))) # 
-- (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ (((\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~136_combout\);

-- Location: LCCOMB_X48_Y37_N0
\ready_to_play|LUT_DATA[2]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~137_combout\ = (\ready_to_play|LUT_DATA[2]~135_combout\ & ((\ready_to_play|LUT_DATA[2]~33_combout\) # ((\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_DATA[2]~136_combout\)))) # (!\ready_to_play|LUT_DATA[2]~135_combout\ & 
-- (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_DATA[2]~136_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~135_combout\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[2]~136_combout\,
	datad => \ready_to_play|LUT_DATA[2]~33_combout\,
	combout => \ready_to_play|LUT_DATA[2]~137_combout\);

-- Location: LCCOMB_X45_Y41_N8
\ready_to_play|LUT_DATA[2]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~138_combout\ = (\ready_to_play|LUT_DATA[2]~129_combout\) # ((\ready_to_play|LUT_DATA[2]~130_combout\ & ((\ready_to_play|LUT_DATA[2]~134_combout\) # (\ready_to_play|LUT_DATA[2]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~134_combout\,
	datab => \ready_to_play|LUT_DATA[2]~130_combout\,
	datac => \ready_to_play|LUT_DATA[2]~129_combout\,
	datad => \ready_to_play|LUT_DATA[2]~137_combout\,
	combout => \ready_to_play|LUT_DATA[2]~138_combout\);

-- Location: LCCOMB_X48_Y41_N30
\ready_to_play|LUT_DATA[2]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~194_combout\ = (\ready_to_play|LUT_DATA[2]~138_combout\) # ((\ready_to_play|LUT_DATA[2]~139_combout\ & ((\ready_to_play|LUT_DATA[2]~193_combout\) # (\ready_to_play|LUT_DATA[2]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~139_combout\,
	datab => \ready_to_play|LUT_DATA[2]~193_combout\,
	datac => \ready_to_play|LUT_DATA[2]~190_combout\,
	datad => \ready_to_play|LUT_DATA[2]~138_combout\,
	combout => \ready_to_play|LUT_DATA[2]~194_combout\);

-- Location: LCCOMB_X48_Y41_N18
\ready_to_play|LUT_DATA[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(2) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[2]~194_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(2),
	datac => \ready_to_play|LUT_DATA[2]~194_combout\,
	datad => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(2));

-- Location: LCCOMB_X48_Y41_N24
\ready_to_play|mLCD_DATA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~3_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(2),
	combout => \ready_to_play|mLCD_DATA~3_combout\);

-- Location: FF_X48_Y41_N25
\ready_to_play|mLCD_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~3_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(2));

-- Location: LCCOMB_X46_Y43_N12
\ready_to_play|LUT_DATA[3]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~393_combout\ = (\ready_to_play|LUT_INDEX\(4) & (((!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)))) # 
-- (!\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[3]~393_combout\);

-- Location: LCCOMB_X46_Y43_N14
\ready_to_play|LUT_DATA[3]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~394_combout\ = (\ready_to_play|LUT_DATA[3]~393_combout\ & (\ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_DATA[3]~393_combout\,
	combout => \ready_to_play|LUT_DATA[3]~394_combout\);

-- Location: LCCOMB_X50_Y41_N8
\ready_to_play|Mux93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux93~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2)) # 
-- ((\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux93~0_combout\);

-- Location: LCCOMB_X50_Y41_N10
\ready_to_play|Mux93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux93~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((!\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0)) # ((\ready_to_play|LUT_INDEX\(3)) # 
-- (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux93~1_combout\);

-- Location: LCCOMB_X50_Y41_N4
\ready_to_play|LUT_DATA[3]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~222_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|Mux93~1_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|Mux93~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux93~0_combout\,
	datad => \ready_to_play|Mux93~1_combout\,
	combout => \ready_to_play|LUT_DATA[3]~222_combout\);

-- Location: LCCOMB_X49_Y41_N6
\ready_to_play|LUT_DATA[3]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~223_combout\ = (!\ready_to_play|state_valid_play_again~q\ & (\ready_to_play|state_valid_breaker_try_guess_code~q\ & ((\ready_to_play|Mux69~9_combout\) # (\ready_to_play|LUT_DATA[3]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_play_again~q\,
	datab => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datac => \ready_to_play|Mux69~9_combout\,
	datad => \ready_to_play|LUT_DATA[3]~222_combout\,
	combout => \ready_to_play|LUT_DATA[3]~223_combout\);

-- Location: LCCOMB_X48_Y37_N8
\ready_to_play|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux53~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((!\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & 
-- !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux53~1_combout\);

-- Location: LCCOMB_X48_Y37_N6
\ready_to_play|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux53~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(4))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux53~0_combout\);

-- Location: LCCOMB_X48_Y37_N30
\ready_to_play|LUT_DATA[3]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~218_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux53~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|Mux53~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux53~1_combout\,
	datad => \ready_to_play|Mux53~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~218_combout\);

-- Location: LCCOMB_X48_Y37_N24
\ready_to_play|LUT_DATA[3]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~219_combout\ = (\ready_to_play|state_valid_invisible_left_seg~q\ & ((\ready_to_play|LUT_DATA[3]~218_combout\) # ((\ready_to_play|Mux77~2_combout\ & !\ready_to_play|Mux77~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux77~2_combout\,
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[3]~218_combout\,
	datad => \ready_to_play|Mux77~3_combout\,
	combout => \ready_to_play|LUT_DATA[3]~219_combout\);

-- Location: LCCOMB_X47_Y41_N4
\ready_to_play|Mux67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux67~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux67~1_combout\);

-- Location: LCCOMB_X47_Y41_N14
\ready_to_play|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux60~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux60~0_combout\);

-- Location: LCCOMB_X47_Y41_N20
\ready_to_play|Mux67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux67~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(0) & 
-- \ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux67~0_combout\);

-- Location: LCCOMB_X47_Y41_N28
\ready_to_play|LUT_DATA[3]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~382_combout\ = (\ready_to_play|state_valid_camouflage_left_seg~q\ & (((\ready_to_play|Mux67~0_combout\)))) # (!\ready_to_play|state_valid_camouflage_left_seg~q\ & (\ready_to_play|state_valid_flexible_left_seg~q\ & 
-- (\ready_to_play|Mux60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|state_valid_flexible_left_seg~q\,
	datac => \ready_to_play|Mux60~0_combout\,
	datad => \ready_to_play|Mux67~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~382_combout\);

-- Location: LCCOMB_X47_Y41_N18
\ready_to_play|LUT_DATA[3]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~202_combout\ = (\ready_to_play|LUT_INDEX\(4) & (((\ready_to_play|LUT_DATA[3]~382_combout\)))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_DATA[2]~89_combout\ & (!\ready_to_play|Mux67~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_DATA[2]~89_combout\,
	datac => \ready_to_play|Mux67~1_combout\,
	datad => \ready_to_play|LUT_DATA[3]~382_combout\,
	combout => \ready_to_play|LUT_DATA[3]~202_combout\);

-- Location: LCCOMB_X48_Y41_N20
\ready_to_play|LUT_DATA[3]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~203_combout\ = (\ready_to_play|Mux42~6_combout\ & ((\ready_to_play|LUT_DATA[3]~76_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[3]~202_combout\)))) # (!\ready_to_play|Mux42~6_combout\ & 
-- (((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[3]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux42~6_combout\,
	datab => \ready_to_play|LUT_DATA[3]~76_combout\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[3]~202_combout\,
	combout => \ready_to_play|LUT_DATA[3]~203_combout\);

-- Location: LCCOMB_X48_Y38_N16
\ready_to_play|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux46~1_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) $ 
-- (((\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux46~1_combout\);

-- Location: LCCOMB_X48_Y38_N6
\ready_to_play|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux46~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) & 
-- (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux46~0_combout\);

-- Location: LCCOMB_X48_Y38_N22
\ready_to_play|LUT_DATA[3]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~208_combout\ = (\ready_to_play|state_valid_camouflage_right_seg~q\ & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|Mux46~0_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|Mux46~1_combout\,
	datac => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datad => \ready_to_play|Mux46~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~208_combout\);

-- Location: LCCOMB_X49_Y41_N22
\ready_to_play|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux32~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(0) $ 
-- (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux32~0_combout\);

-- Location: LCCOMB_X49_Y41_N24
\ready_to_play|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux32~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # ((!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux32~1_combout\);

-- Location: LCCOMB_X49_Y41_N30
\ready_to_play|LUT_DATA[3]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~206_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux32~0_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|Mux32~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|Mux32~0_combout\,
	datad => \ready_to_play|Mux32~1_combout\,
	combout => \ready_to_play|LUT_DATA[3]~206_combout\);

-- Location: LCCOMB_X49_Y40_N4
\ready_to_play|LUT_DATA[3]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~207_combout\ = (\ready_to_play|LUT_DATA[0]~68_combout\ & ((\ready_to_play|LUT_DATA[3]~206_combout\) # ((\ready_to_play|Mux77~2_combout\ & !\ready_to_play|Mux77~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~206_combout\,
	datab => \ready_to_play|Mux77~2_combout\,
	datac => \ready_to_play|Mux77~3_combout\,
	datad => \ready_to_play|LUT_DATA[0]~68_combout\,
	combout => \ready_to_play|LUT_DATA[3]~207_combout\);

-- Location: LCCOMB_X49_Y42_N8
\ready_to_play|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux39~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(4))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux39~1_combout\);

-- Location: LCCOMB_X49_Y42_N10
\ready_to_play|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux39~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux39~0_combout\);

-- Location: LCCOMB_X49_Y42_N6
\ready_to_play|LUT_DATA[3]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~204_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux39~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux39~1_combout\,
	datad => \ready_to_play|Mux39~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~204_combout\);

-- Location: LCCOMB_X49_Y42_N12
\ready_to_play|LUT_DATA[3]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~205_combout\ = (\ready_to_play|state_valid_flexible_right_seg~q\ & (!\ready_to_play|state_valid_camouflage_right_seg~q\ & ((\ready_to_play|Mux42~6_combout\) # (\ready_to_play|LUT_DATA[3]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_flexible_right_seg~q\,
	datab => \ready_to_play|Mux42~6_combout\,
	datac => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datad => \ready_to_play|LUT_DATA[3]~204_combout\,
	combout => \ready_to_play|LUT_DATA[3]~205_combout\);

-- Location: LCCOMB_X49_Y40_N30
\ready_to_play|LUT_DATA[3]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~209_combout\ = (\ready_to_play|LUT_DATA[3]~207_combout\) # ((\ready_to_play|LUT_DATA[3]~205_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[3]~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[3]~208_combout\,
	datac => \ready_to_play|LUT_DATA[3]~207_combout\,
	datad => \ready_to_play|LUT_DATA[3]~205_combout\,
	combout => \ready_to_play|LUT_DATA[3]~209_combout\);

-- Location: LCCOMB_X49_Y40_N12
\ready_to_play|LUT_DATA[3]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~210_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|Mux76~3_combout\ & ((\ready_to_play|state_valid_breaker~q\) # (\ready_to_play|state_valid_coder~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|Mux76~3_combout\,
	datad => \ready_to_play|state_valid_coder~q\,
	combout => \ready_to_play|LUT_DATA[3]~210_combout\);

-- Location: LCCOMB_X49_Y40_N26
\ready_to_play|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux25~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) & ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux25~0_combout\);

-- Location: LCCOMB_X49_Y42_N26
\ready_to_play|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux18~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0) & ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(4))))) # 
-- (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux18~0_combout\);

-- Location: LCCOMB_X49_Y40_N0
\ready_to_play|LUT_DATA[3]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~211_combout\ = (\ready_to_play|state_valid_breaker~q\ & (((!\ready_to_play|Mux25~0_combout\)))) # (!\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|state_valid_coder~q\ & ((!\ready_to_play|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|Mux25~0_combout\,
	datad => \ready_to_play|Mux18~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~211_combout\);

-- Location: LCCOMB_X49_Y40_N6
\ready_to_play|LUT_DATA[3]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~212_combout\ = (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_DATA[3]~210_combout\) # ((\ready_to_play|LUT_DATA[3]~211_combout\ & !\ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~210_combout\,
	datab => \ready_to_play|LUT_DATA[3]~211_combout\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[3]~212_combout\);

-- Location: LCCOMB_X45_Y40_N26
\ready_to_play|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4)) # 
-- ((\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux4~0_combout\);

-- Location: LCCOMB_X45_Y40_N20
\ready_to_play|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # ((!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & 
-- ((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux4~1_combout\);

-- Location: LCCOMB_X45_Y40_N22
\ready_to_play|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~2_combout\ = (\ready_to_play|Mux4~1_combout\ & ((\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(2)) # (\ready_to_play|Mux4~0_combout\)))) # (!\ready_to_play|Mux4~1_combout\ & (\ready_to_play|LUT_INDEX\(1) $ 
-- (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux4~0_combout\,
	datad => \ready_to_play|Mux4~1_combout\,
	combout => \ready_to_play|Mux4~2_combout\);

-- Location: LCCOMB_X45_Y40_N24
\ready_to_play|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~3_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|Mux4~0_combout\ & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|Mux4~1_combout\)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|Mux4~0_combout\ $ 
-- (\ready_to_play|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux4~0_combout\,
	datad => \ready_to_play|Mux4~1_combout\,
	combout => \ready_to_play|Mux4~3_combout\);

-- Location: LCCOMB_X45_Y40_N30
\ready_to_play|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~4_combout\ = \ready_to_play|Mux4~2_combout\ $ (((\ready_to_play|state_valid_group~q\) # (!\ready_to_play|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|Mux4~2_combout\,
	datad => \ready_to_play|Mux4~3_combout\,
	combout => \ready_to_play|Mux4~4_combout\);

-- Location: LCCOMB_X49_Y40_N28
\ready_to_play|LUT_DATA[3]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~214_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|Mux77~2_combout\ & (!\ready_to_play|state_valid_breaker~q\ & \ready_to_play|LUT_DATA[2]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|Mux77~2_combout\,
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|LUT_DATA[2]~109_combout\,
	combout => \ready_to_play|LUT_DATA[3]~214_combout\);

-- Location: LCCOMB_X49_Y41_N0
\ready_to_play|LUT_DATA[3]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~213_combout\ = (\ready_to_play|LUT_DATA[2]~33_combout\ & ((\ready_to_play|state_valid_breaker~q\ & ((!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|state_valid_coder~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|LUT_DATA[2]~33_combout\,
	combout => \ready_to_play|LUT_DATA[3]~213_combout\);

-- Location: LCCOMB_X49_Y40_N2
\ready_to_play|LUT_DATA[3]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~215_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[2]~131_combout\ & ((\ready_to_play|LUT_DATA[3]~214_combout\) # (\ready_to_play|LUT_DATA[3]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_DATA[3]~214_combout\,
	datac => \ready_to_play|LUT_DATA[2]~131_combout\,
	datad => \ready_to_play|LUT_DATA[3]~213_combout\,
	combout => \ready_to_play|LUT_DATA[3]~215_combout\);

-- Location: LCCOMB_X49_Y40_N16
\ready_to_play|LUT_DATA[3]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~216_combout\ = (\ready_to_play|LUT_DATA[3]~212_combout\) # ((\ready_to_play|LUT_DATA[3]~215_combout\) # ((\ready_to_play|LUT_DATA[0]~71_combout\ & \ready_to_play|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~212_combout\,
	datab => \ready_to_play|LUT_DATA[0]~71_combout\,
	datac => \ready_to_play|Mux4~4_combout\,
	datad => \ready_to_play|LUT_DATA[3]~215_combout\,
	combout => \ready_to_play|LUT_DATA[3]~216_combout\);

-- Location: LCCOMB_X49_Y40_N10
\ready_to_play|LUT_DATA[3]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~217_combout\ = (!\ready_to_play|state_valid_invisible_left_seg~q\ & ((\ready_to_play|LUT_DATA[3]~209_combout\) # ((\ready_to_play|LUT_DATA[4]~59_combout\ & \ready_to_play|LUT_DATA[3]~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~59_combout\,
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[3]~209_combout\,
	datad => \ready_to_play|LUT_DATA[3]~216_combout\,
	combout => \ready_to_play|LUT_DATA[3]~217_combout\);

-- Location: LCCOMB_X49_Y40_N8
\ready_to_play|LUT_DATA[3]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~220_combout\ = (\ready_to_play|LUT_DATA[3]~203_combout\) # ((\ready_to_play|LUT_DATA[2]~89_combout\ & ((\ready_to_play|LUT_DATA[3]~219_combout\) # (\ready_to_play|LUT_DATA[3]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~219_combout\,
	datab => \ready_to_play|LUT_DATA[2]~89_combout\,
	datac => \ready_to_play|LUT_DATA[3]~203_combout\,
	datad => \ready_to_play|LUT_DATA[3]~217_combout\,
	combout => \ready_to_play|LUT_DATA[3]~220_combout\);

-- Location: LCCOMB_X49_Y37_N30
\ready_to_play|Mux81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux81~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux81~0_combout\);

-- Location: LCCOMB_X49_Y37_N28
\ready_to_play|Mux81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux81~1_combout\ = \ready_to_play|LUT_INDEX\(4) $ (((\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux81~1_combout\);

-- Location: LCCOMB_X49_Y37_N22
\ready_to_play|LUT_DATA[3]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~198_combout\ = (\ready_to_play|state_valid_lock_breaker_wins~q\ & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux81~0_combout\)) # (!\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|Mux81~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux81~0_combout\,
	datab => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|Mux81~1_combout\,
	combout => \ready_to_play|LUT_DATA[3]~198_combout\);

-- Location: LCCOMB_X49_Y37_N26
\ready_to_play|Mux74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux74~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)) # 
-- ((\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux74~1_combout\);

-- Location: LCCOMB_X49_Y37_N20
\ready_to_play|Mux74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux74~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux74~0_combout\);

-- Location: LCCOMB_X49_Y37_N24
\ready_to_play|LUT_DATA[3]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~197_combout\ = (\ready_to_play|LUT_DATA[0]~39_combout\ & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux74~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|Mux74~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux74~1_combout\,
	datab => \ready_to_play|Mux74~0_combout\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[0]~39_combout\,
	combout => \ready_to_play|LUT_DATA[3]~197_combout\);

-- Location: LCCOMB_X49_Y37_N8
\ready_to_play|LUT_DATA[3]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~199_combout\ = (!\ready_to_play|state_valid_lock_coder_wins~q\ & (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[3]~198_combout\) # (\ready_to_play|LUT_DATA[3]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[3]~198_combout\,
	datad => \ready_to_play|LUT_DATA[3]~197_combout\,
	combout => \ready_to_play|LUT_DATA[3]~199_combout\);

-- Location: LCCOMB_X49_Y37_N16
\ready_to_play|Mux87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux87~2_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux87~2_combout\);

-- Location: LCCOMB_X49_Y37_N4
\ready_to_play|Mux87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux87~1_combout\ = (\ready_to_play|LUT_INDEX\(2) & (((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux87~1_combout\);

-- Location: LCCOMB_X45_Y40_N8
\ready_to_play|Mux87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux87~0_combout\ = (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux87~0_combout\);

-- Location: LCCOMB_X49_Y37_N6
\ready_to_play|LUT_DATA[3]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~195_combout\ = (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|Mux87~0_combout\))) # (!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|Mux87~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux87~1_combout\,
	datad => \ready_to_play|Mux87~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~195_combout\);

-- Location: LCCOMB_X49_Y37_N2
\ready_to_play|LUT_DATA[3]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~196_combout\ = (\ready_to_play|state_valid_lock_coder_wins~q\ & ((\ready_to_play|LUT_DATA[3]~195_combout\) # ((\ready_to_play|Mux87~2_combout\ & \ready_to_play|LUT_DATA[0]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|Mux87~2_combout\,
	datac => \ready_to_play|LUT_DATA[0]~44_combout\,
	datad => \ready_to_play|LUT_DATA[3]~195_combout\,
	combout => \ready_to_play|LUT_DATA[3]~196_combout\);

-- Location: LCCOMB_X49_Y37_N18
\ready_to_play|LUT_DATA[3]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~200_combout\ = (\ready_to_play|LUT_DATA[3]~199_combout\) # ((\ready_to_play|LUT_DATA[3]~196_combout\) # ((\ready_to_play|Mux69~9_combout\ & \ready_to_play|LUT_DATA[3]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux69~9_combout\,
	datab => \ready_to_play|LUT_DATA[3]~47_combout\,
	datac => \ready_to_play|LUT_DATA[3]~199_combout\,
	datad => \ready_to_play|LUT_DATA[3]~196_combout\,
	combout => \ready_to_play|LUT_DATA[3]~200_combout\);

-- Location: LCCOMB_X49_Y37_N12
\ready_to_play|LUT_DATA[3]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~201_combout\ = (\ready_to_play|LUT_DATA[3]~200_combout\) # ((!\ready_to_play|state_valid_lock_coder_wins~q\ & (\ready_to_play|LUT_DATA[0]~39_combout\ & \ready_to_play|Mux56~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|LUT_DATA[0]~39_combout\,
	datac => \ready_to_play|Mux56~1_combout\,
	datad => \ready_to_play|LUT_DATA[3]~200_combout\,
	combout => \ready_to_play|LUT_DATA[3]~201_combout\);

-- Location: LCCOMB_X49_Y40_N18
\ready_to_play|LUT_DATA[3]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~221_combout\ = (\ready_to_play|LUT_DATA[0]~38_combout\ & ((\ready_to_play|LUT_DATA[3]~201_combout\) # ((\ready_to_play|LUT_DATA[0]~50_combout\ & \ready_to_play|LUT_DATA[3]~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~50_combout\,
	datab => \ready_to_play|LUT_DATA[0]~38_combout\,
	datac => \ready_to_play|LUT_DATA[3]~220_combout\,
	datad => \ready_to_play|LUT_DATA[3]~201_combout\,
	combout => \ready_to_play|LUT_DATA[3]~221_combout\);

-- Location: LCCOMB_X49_Y40_N24
\ready_to_play|LUT_DATA[3]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~224_combout\ = (\ready_to_play|LUT_DATA[3]~223_combout\) # ((\ready_to_play|LUT_DATA[3]~221_combout\) # ((\ready_to_play|LUT_DATA[1]~37_combout\ & \ready_to_play|LUT_DATA[3]~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~37_combout\,
	datab => \ready_to_play|LUT_DATA[3]~394_combout\,
	datac => \ready_to_play|LUT_DATA[3]~223_combout\,
	datad => \ready_to_play|LUT_DATA[3]~221_combout\,
	combout => \ready_to_play|LUT_DATA[3]~224_combout\);

-- Location: LCCOMB_X49_Y40_N14
\ready_to_play|LUT_DATA[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(3) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[3]~224_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(3),
	datac => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[3]~224_combout\,
	combout => \ready_to_play|LUT_DATA\(3));

-- Location: LCCOMB_X50_Y40_N12
\ready_to_play|mLCD_DATA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~4_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(3),
	combout => \ready_to_play|mLCD_DATA~4_combout\);

-- Location: FF_X50_Y40_N13
\ready_to_play|mLCD_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~4_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(3));

-- Location: LCCOMB_X48_Y42_N22
\ready_to_play|LUT_DATA[4]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~254_combout\ = (\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[4]~254_combout\);

-- Location: LCCOMB_X48_Y42_N16
\ready_to_play|LUT_DATA[4]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~253_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2)) # 
-- ((\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[4]~253_combout\);

-- Location: LCCOMB_X48_Y42_N0
\ready_to_play|LUT_DATA[4]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~255_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_DATA[4]~254_combout\ & \ready_to_play|LUT_DATA[4]~253_combout\))) # (!\ready_to_play|LUT_INDEX\(5) & 
-- (!\ready_to_play|LUT_DATA[4]~253_combout\ & (\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_DATA[4]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[4]~254_combout\,
	datad => \ready_to_play|LUT_DATA[4]~253_combout\,
	combout => \ready_to_play|LUT_DATA[4]~255_combout\);

-- Location: LCCOMB_X47_Y41_N30
\ready_to_play|LUT_DATA[4]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~246_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) $ (((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4) & 
-- ((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~246_combout\);

-- Location: LCCOMB_X47_Y40_N10
\ready_to_play|LUT_DATA[4]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~247_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_DATA[4]~246_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & 
-- !\ready_to_play|LUT_DATA[4]~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[4]~246_combout\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[4]~247_combout\);

-- Location: LCCOMB_X47_Y40_N16
\ready_to_play|LUT_DATA[4]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~243_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & 
-- (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[4]~243_combout\);

-- Location: LCCOMB_X47_Y40_N6
\ready_to_play|LUT_DATA[4]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~244_combout\ = (\ready_to_play|LUT_DATA[4]~243_combout\ & (\ready_to_play|LUT_INDEX\(2) $ (!\ready_to_play|LUT_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_DATA[4]~243_combout\,
	combout => \ready_to_play|LUT_DATA[4]~244_combout\);

-- Location: LCCOMB_X47_Y40_N28
\ready_to_play|LUT_DATA[4]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~245_combout\ = (\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|Mux56~1_combout\) # ((\ready_to_play|LUT_DATA[1]~104_combout\ & \ready_to_play|LUT_DATA[4]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|LUT_DATA[1]~104_combout\,
	datac => \ready_to_play|Mux56~1_combout\,
	datad => \ready_to_play|LUT_DATA[4]~244_combout\,
	combout => \ready_to_play|LUT_DATA[4]~245_combout\);

-- Location: LCCOMB_X47_Y40_N0
\ready_to_play|LUT_DATA[4]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~248_combout\ = (\ready_to_play|LUT_DATA[4]~245_combout\) # ((\ready_to_play|state_valid_breaker~q\ & ((\ready_to_play|LUT_DATA[4]~247_combout\) # (\ready_to_play|Mux56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~247_combout\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|Mux56~1_combout\,
	datad => \ready_to_play|LUT_DATA[4]~245_combout\,
	combout => \ready_to_play|LUT_DATA[4]~248_combout\);

-- Location: LCCOMB_X50_Y41_N30
\ready_to_play|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux3~5_combout\ = (\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux3~5_combout\);

-- Location: LCCOMB_X46_Y40_N26
\ready_to_play|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux3~3_combout\ = (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux3~3_combout\);

-- Location: LCCOMB_X46_Y40_N30
\ready_to_play|Mux92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux92~0_combout\ = (\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # 
-- (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux92~0_combout\);

-- Location: LCCOMB_X45_Y40_N12
\ready_to_play|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux3~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & (((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux3~1_combout\);

-- Location: LCCOMB_X45_Y40_N14
\ready_to_play|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux3~2_combout\ = (\ready_to_play|state_valid_group~q\ & (((\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|state_valid_group~q\ & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux87~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & 
-- ((!\ready_to_play|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|Mux87~0_combout\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|Mux3~1_combout\,
	combout => \ready_to_play|Mux3~2_combout\);

-- Location: LCCOMB_X46_Y40_N20
\ready_to_play|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux3~4_combout\ = (\ready_to_play|state_valid_group~q\ & ((\ready_to_play|Mux3~2_combout\ & (\ready_to_play|Mux3~3_combout\)) # (!\ready_to_play|Mux3~2_combout\ & ((!\ready_to_play|Mux92~0_combout\))))) # 
-- (!\ready_to_play|state_valid_group~q\ & (((\ready_to_play|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux3~3_combout\,
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|Mux92~0_combout\,
	datad => \ready_to_play|Mux3~2_combout\,
	combout => \ready_to_play|Mux3~4_combout\);

-- Location: LCCOMB_X47_Y40_N22
\ready_to_play|LUT_DATA[4]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~242_combout\ = (\ready_to_play|LUT_DATA[0]~71_combout\ & ((\ready_to_play|Mux3~4_combout\) # ((\ready_to_play|LUT_DATA[1]~110_combout\ & !\ready_to_play|Mux3~5_combout\)))) # (!\ready_to_play|LUT_DATA[0]~71_combout\ & 
-- (\ready_to_play|LUT_DATA[1]~110_combout\ & (!\ready_to_play|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~71_combout\,
	datab => \ready_to_play|LUT_DATA[1]~110_combout\,
	datac => \ready_to_play|Mux3~5_combout\,
	datad => \ready_to_play|Mux3~4_combout\,
	combout => \ready_to_play|LUT_DATA[4]~242_combout\);

-- Location: LCCOMB_X47_Y42_N20
\ready_to_play|LUT_DATA[4]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~235_combout\ = (!\ready_to_play|state_valid_camouflage_right_seg~q\ & (\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[4]~235_combout\);

-- Location: LCCOMB_X48_Y38_N30
\ready_to_play|LUT_DATA[4]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~237_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[4]~237_combout\);

-- Location: LCCOMB_X48_Y38_N12
\ready_to_play|LUT_DATA[4]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~236_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(3)))))) # 
-- (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(3)) # ((!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~236_combout\);

-- Location: LCCOMB_X48_Y38_N10
\ready_to_play|LUT_DATA[4]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~239_combout\ = (\ready_to_play|LUT_DATA[4]~237_combout\ & ((\ready_to_play|state_valid_camouflage_right_seg~q\) # ((\ready_to_play|state_valid_flexible_right_seg~q\)))) # (!\ready_to_play|LUT_DATA[4]~237_combout\ & 
-- (((\ready_to_play|LUT_DATA[4]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[4]~237_combout\,
	datad => \ready_to_play|LUT_DATA[4]~236_combout\,
	combout => \ready_to_play|LUT_DATA[4]~239_combout\);

-- Location: LCCOMB_X48_Y38_N4
\ready_to_play|LUT_DATA[4]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~238_combout\ = (\ready_to_play|state_valid_camouflage_right_seg~q\ & (((!\ready_to_play|LUT_DATA[4]~236_combout\)))) # (!\ready_to_play|state_valid_camouflage_right_seg~q\ & (\ready_to_play|state_valid_flexible_right_seg~q\ & 
-- (\ready_to_play|LUT_DATA[4]~237_combout\ $ (!\ready_to_play|LUT_DATA[4]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[4]~237_combout\,
	datad => \ready_to_play|LUT_DATA[4]~236_combout\,
	combout => \ready_to_play|LUT_DATA[4]~238_combout\);

-- Location: LCCOMB_X47_Y40_N30
\ready_to_play|LUT_DATA[4]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~240_combout\ = (\ready_to_play|LUT_INDEX\(0) & (((\ready_to_play|LUT_DATA[4]~239_combout\ & \ready_to_play|LUT_DATA[4]~238_combout\)))) # (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_DATA[4]~239_combout\ & 
-- ((\ready_to_play|state_valid_invisible_right_seg~q\) # (\ready_to_play|LUT_DATA[4]~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|state_valid_invisible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[4]~239_combout\,
	datad => \ready_to_play|LUT_DATA[4]~238_combout\,
	combout => \ready_to_play|LUT_DATA[4]~240_combout\);

-- Location: LCCOMB_X47_Y42_N6
\ready_to_play|LUT_DATA[4]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~233_combout\ = (\ready_to_play|state_valid_flexible_right_seg~q\ & ((\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|state_valid_flexible_right_seg~q\ & 
-- (\ready_to_play|state_valid_invisible_right_seg~q\ & ((\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_right_seg~q\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~233_combout\);

-- Location: LCCOMB_X47_Y40_N12
\ready_to_play|LUT_DATA[4]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~234_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[4]~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[4]~233_combout\,
	combout => \ready_to_play|LUT_DATA[4]~234_combout\);

-- Location: LCCOMB_X47_Y40_N20
\ready_to_play|LUT_DATA[4]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~241_combout\ = (\ready_to_play|LUT_DATA[4]~235_combout\ & ((\ready_to_play|LUT_DATA[4]~234_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[4]~240_combout\)))) # (!\ready_to_play|LUT_DATA[4]~235_combout\ & 
-- (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[4]~240_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~235_combout\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[4]~240_combout\,
	datad => \ready_to_play|LUT_DATA[4]~234_combout\,
	combout => \ready_to_play|LUT_DATA[4]~241_combout\);

-- Location: LCCOMB_X47_Y40_N14
\ready_to_play|LUT_DATA[4]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~249_combout\ = (\ready_to_play|LUT_DATA[4]~241_combout\) # ((\ready_to_play|LUT_DATA[4]~59_combout\ & ((\ready_to_play|LUT_DATA[4]~248_combout\) # (\ready_to_play|LUT_DATA[4]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~59_combout\,
	datab => \ready_to_play|LUT_DATA[4]~248_combout\,
	datac => \ready_to_play|LUT_DATA[4]~242_combout\,
	datad => \ready_to_play|LUT_DATA[4]~241_combout\,
	combout => \ready_to_play|LUT_DATA[4]~249_combout\);

-- Location: LCCOMB_X50_Y40_N18
\ready_to_play|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux52~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & (((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) & 
-- ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux52~0_combout\);

-- Location: LCCOMB_X50_Y40_N8
\ready_to_play|LUT_DATA[4]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~230_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux88~0_combout\))) # (!\ready_to_play|LUT_INDEX\(5) & (((!\ready_to_play|Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|Mux88~0_combout\,
	datad => \ready_to_play|Mux52~0_combout\,
	combout => \ready_to_play|LUT_DATA[4]~230_combout\);

-- Location: LCCOMB_X50_Y40_N28
\ready_to_play|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux59~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(5) $ 
-- (((\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|Mux59~0_combout\);

-- Location: LCCOMB_X50_Y40_N2
\ready_to_play|LUT_DATA[4]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~383_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_DATA[2]~125_combout\))) # (!\ready_to_play|LUT_INDEX\(3) & (((!\ready_to_play|Mux59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[2]~125_combout\,
	datad => \ready_to_play|Mux59~0_combout\,
	combout => \ready_to_play|LUT_DATA[4]~383_combout\);

-- Location: LCCOMB_X50_Y40_N26
\ready_to_play|LUT_DATA[4]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~231_combout\ = (\ready_to_play|state_valid_flexible_left_seg~q\ & (((\ready_to_play|LUT_DATA[4]~383_combout\)))) # (!\ready_to_play|state_valid_flexible_left_seg~q\ & (\ready_to_play|state_valid_invisible_left_seg~q\ & 
-- (\ready_to_play|LUT_DATA[4]~230_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_left_seg~q\,
	datab => \ready_to_play|state_valid_flexible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[4]~230_combout\,
	datad => \ready_to_play|LUT_DATA[4]~383_combout\,
	combout => \ready_to_play|LUT_DATA[4]~231_combout\);

-- Location: LCCOMB_X50_Y40_N10
\ready_to_play|LUT_DATA[4]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~227_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|state_valid_camouflage_left_seg~q\ & (\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~227_combout\);

-- Location: LCCOMB_X50_Y40_N16
\ready_to_play|LUT_DATA[4]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~228_combout\ = (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|state_valid_flexible_left_seg~q\ & (!\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|state_valid_flexible_left_seg~q\ & 
-- ((\ready_to_play|state_valid_invisible_left_seg~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|state_valid_invisible_left_seg~q\,
	datad => \ready_to_play|state_valid_flexible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[4]~228_combout\);

-- Location: LCCOMB_X50_Y39_N28
\ready_to_play|LUT_DATA[4]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~225_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(4) & 
-- ((\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[4]~225_combout\);

-- Location: LCCOMB_X50_Y39_N0
\ready_to_play|LUT_DATA[4]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~226_combout\ = (\ready_to_play|state_valid_camouflage_left_seg~q\ & ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_DATA[4]~225_combout\)) # (!\ready_to_play|LUT_INDEX\(0) & 
-- (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_DATA[4]~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_DATA[4]~225_combout\,
	combout => \ready_to_play|LUT_DATA[4]~226_combout\);

-- Location: LCCOMB_X50_Y40_N6
\ready_to_play|LUT_DATA[4]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~229_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[4]~226_combout\) # ((\ready_to_play|LUT_DATA[4]~227_combout\ & \ready_to_play|LUT_DATA[4]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~227_combout\,
	datab => \ready_to_play|LUT_DATA[4]~228_combout\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[4]~226_combout\,
	combout => \ready_to_play|LUT_DATA[4]~229_combout\);

-- Location: LCCOMB_X50_Y40_N20
\ready_to_play|LUT_DATA[4]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~232_combout\ = (\ready_to_play|LUT_DATA[4]~229_combout\) # ((!\ready_to_play|state_valid_camouflage_left_seg~q\ & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[4]~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[4]~231_combout\,
	datad => \ready_to_play|LUT_DATA[4]~229_combout\,
	combout => \ready_to_play|LUT_DATA[4]~232_combout\);

-- Location: LCCOMB_X47_Y40_N8
\ready_to_play|LUT_DATA[4]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~250_combout\ = (\ready_to_play|LUT_DATA[0]~50_combout\ & ((\ready_to_play|LUT_DATA[4]~232_combout\) # ((\ready_to_play|LUT_DATA[4]~51_combout\ & \ready_to_play|LUT_DATA[4]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~50_combout\,
	datab => \ready_to_play|LUT_DATA[4]~51_combout\,
	datac => \ready_to_play|LUT_DATA[4]~249_combout\,
	datad => \ready_to_play|LUT_DATA[4]~232_combout\,
	combout => \ready_to_play|LUT_DATA[4]~250_combout\);

-- Location: LCCOMB_X46_Y43_N8
\ready_to_play|LUT_DATA[4]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~251_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~251_combout\);

-- Location: LCCOMB_X46_Y43_N18
\ready_to_play|LUT_DATA[4]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~384_combout\ = (\ready_to_play|LUT_DATA[4]~251_combout\ & ((\ready_to_play|state_valid_lock_breaker_wins~q\ & ((\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|state_valid_lock_breaker_wins~q\ & 
-- (\ready_to_play|state_valid_lock_coder_choose_password~q\ & !\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	datab => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datac => \ready_to_play|LUT_DATA[4]~251_combout\,
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~384_combout\);

-- Location: LCCOMB_X46_Y43_N16
\ready_to_play|LUT_DATA[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~26_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~26_combout\);

-- Location: LCCOMB_X46_Y43_N22
\ready_to_play|LUT_DATA[4]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~386_combout\ = (\ready_to_play|state_valid_lock_coder_choose_password~q\ & (!\ready_to_play|state_valid_lock_breaker_wins~q\ & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[4]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	datab => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[4]~26_combout\,
	combout => \ready_to_play|LUT_DATA[4]~386_combout\);

-- Location: LCCOMB_X46_Y43_N30
\ready_to_play|Mux80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux80~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux80~0_combout\);

-- Location: LCCOMB_X46_Y43_N28
\ready_to_play|Mux80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux80~1_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # 
-- (!\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux80~1_combout\);

-- Location: LCCOMB_X46_Y43_N26
\ready_to_play|LUT_DATA[4]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~252_combout\ = (\ready_to_play|state_valid_lock_breaker_wins~q\ & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux80~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|Mux80~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux80~0_combout\,
	datad => \ready_to_play|Mux80~1_combout\,
	combout => \ready_to_play|LUT_DATA[4]~252_combout\);

-- Location: LCCOMB_X46_Y43_N20
\ready_to_play|LUT_DATA[4]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~391_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|Mux88~0_combout\)) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[4]~386_combout\) # (\ready_to_play|LUT_DATA[4]~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|Mux88~0_combout\,
	datac => \ready_to_play|LUT_DATA[4]~386_combout\,
	datad => \ready_to_play|LUT_DATA[4]~252_combout\,
	combout => \ready_to_play|LUT_DATA[4]~391_combout\);

-- Location: LCCOMB_X46_Y43_N2
\ready_to_play|LUT_DATA[4]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~392_combout\ = (!\ready_to_play|state_valid_lock_coder_wins~q\ & (\ready_to_play|LUT_DATA[4]~391_combout\ & ((\ready_to_play|LUT_DATA[4]~384_combout\) # (!\ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[4]~384_combout\,
	datac => \ready_to_play|state_valid_lock_coder_wins~q\,
	datad => \ready_to_play|LUT_DATA[4]~391_combout\,
	combout => \ready_to_play|LUT_DATA[4]~392_combout\);

-- Location: LCCOMB_X47_Y40_N26
\ready_to_play|LUT_DATA[4]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~256_combout\ = (\ready_to_play|LUT_DATA[4]~250_combout\) # ((\ready_to_play|LUT_DATA[4]~392_combout\) # ((\ready_to_play|LUT_DATA[4]~255_combout\ & \ready_to_play|state_valid_lock_coder_wins~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~255_combout\,
	datab => \ready_to_play|state_valid_lock_coder_wins~q\,
	datac => \ready_to_play|LUT_DATA[4]~250_combout\,
	datad => \ready_to_play|LUT_DATA[4]~392_combout\,
	combout => \ready_to_play|LUT_DATA[4]~256_combout\);

-- Location: LCCOMB_X46_Y39_N0
\ready_to_play|Mux92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux92~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux92~1_combout\);

-- Location: LCCOMB_X46_Y39_N28
\ready_to_play|LUT_DATA[4]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~258_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|Mux92~1_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|Mux92~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux92~0_combout\,
	datad => \ready_to_play|Mux92~1_combout\,
	combout => \ready_to_play|LUT_DATA[4]~258_combout\);

-- Location: LCCOMB_X45_Y39_N4
\ready_to_play|Mux98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux98~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # 
-- (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux98~0_combout\);

-- Location: LCCOMB_X45_Y39_N18
\ready_to_play|LUT_DATA[4]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~257_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_DATA[5]~35_combout\ & ((\ready_to_play|Mux3~0_combout\)))) # (!\ready_to_play|LUT_INDEX\(4) & (((!\ready_to_play|Mux98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_DATA[5]~35_combout\,
	datac => \ready_to_play|Mux98~0_combout\,
	datad => \ready_to_play|Mux3~0_combout\,
	combout => \ready_to_play|LUT_DATA[4]~257_combout\);

-- Location: LCCOMB_X46_Y39_N30
\ready_to_play|LUT_DATA[4]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~259_combout\ = (\ready_to_play|state_valid_play_again~q\ & (((\ready_to_play|LUT_DATA[4]~257_combout\)))) # (!\ready_to_play|state_valid_play_again~q\ & (\ready_to_play|state_valid_breaker_try_guess_code~q\ & 
-- (\ready_to_play|LUT_DATA[4]~258_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|LUT_DATA[4]~258_combout\,
	datac => \ready_to_play|state_valid_play_again~q\,
	datad => \ready_to_play|LUT_DATA[4]~257_combout\,
	combout => \ready_to_play|LUT_DATA[4]~259_combout\);

-- Location: LCCOMB_X47_Y40_N4
\ready_to_play|LUT_DATA[4]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~260_combout\ = (\ready_to_play|LUT_DATA[0]~38_combout\ & ((\ready_to_play|LUT_DATA[4]~256_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[4]~259_combout\)))) # (!\ready_to_play|LUT_DATA[0]~38_combout\ & 
-- (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[4]~259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~38_combout\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[4]~256_combout\,
	datad => \ready_to_play|LUT_DATA[4]~259_combout\,
	combout => \ready_to_play|LUT_DATA[4]~260_combout\);

-- Location: LCCOMB_X47_Y40_N18
\ready_to_play|LUT_DATA[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(4) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[4]~260_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(4),
	datac => \ready_to_play|LUT_DATA[4]~260_combout\,
	datad => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(4));

-- Location: LCCOMB_X47_Y40_N24
\ready_to_play|mLCD_DATA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~5_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(4),
	combout => \ready_to_play|mLCD_DATA~5_combout\);

-- Location: FF_X47_Y40_N25
\ready_to_play|mLCD_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~5_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(4));

-- Location: LCCOMB_X46_Y38_N6
\ready_to_play|LUT_DATA[5]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~264_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2)) # ((!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (((!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[5]~264_combout\);

-- Location: LCCOMB_X47_Y38_N0
\ready_to_play|LUT_DATA[5]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~265_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(3))))) # 
-- (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[5]~265_combout\);

-- Location: LCCOMB_X47_Y38_N18
\ready_to_play|LUT_DATA[5]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~266_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[5]~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[5]~265_combout\,
	combout => \ready_to_play|LUT_DATA[5]~266_combout\);

-- Location: LCCOMB_X46_Y38_N26
\ready_to_play|LUT_DATA[5]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~385_combout\ = (\ready_to_play|LUT_INDEX\(0) & (((\ready_to_play|LUT_DATA[5]~266_combout\)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[5]~264_combout\ & (!\ready_to_play|LUT_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~264_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_DATA[5]~266_combout\,
	combout => \ready_to_play|LUT_DATA[5]~385_combout\);

-- Location: LCCOMB_X46_Y38_N10
\ready_to_play|LUT_DATA[5]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~389_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & 
-- \ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[5]~389_combout\);

-- Location: LCCOMB_X46_Y38_N18
\ready_to_play|LUT_DATA[5]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~390_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_DATA[5]~389_combout\)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_DATA[5]~389_combout\ & 
-- ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_DATA[5]~389_combout\,
	combout => \ready_to_play|LUT_DATA[5]~390_combout\);

-- Location: LCCOMB_X46_Y38_N30
\ready_to_play|LUT_DATA[5]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~262_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~262_combout\);

-- Location: LCCOMB_X46_Y38_N28
\ready_to_play|WideOr16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr16~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) $ 
-- (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|WideOr16~1_combout\);

-- Location: LCCOMB_X50_Y41_N28
\ready_to_play|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr16~0_combout\ = (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|WideOr16~0_combout\);

-- Location: LCCOMB_X46_Y38_N20
\ready_to_play|LUT_DATA[5]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~261_combout\ = (!\ready_to_play|state_valid_play_again~q\ & ((\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|WideOr16~0_combout\))) # (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|WideOr16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_play_again~q\,
	datab => \ready_to_play|WideOr16~1_combout\,
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|WideOr16~0_combout\,
	combout => \ready_to_play|LUT_DATA[5]~261_combout\);

-- Location: LCCOMB_X46_Y38_N12
\ready_to_play|LUT_DATA[5]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~263_combout\ = (\ready_to_play|LUT_DATA[5]~261_combout\) # ((\ready_to_play|state_valid_play_again~q\ & ((\ready_to_play|LUT_DATA[5]~390_combout\) # (\ready_to_play|LUT_DATA[5]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_play_again~q\,
	datab => \ready_to_play|LUT_DATA[5]~390_combout\,
	datac => \ready_to_play|LUT_DATA[5]~262_combout\,
	datad => \ready_to_play|LUT_DATA[5]~261_combout\,
	combout => \ready_to_play|LUT_DATA[5]~263_combout\);

-- Location: LCCOMB_X46_Y38_N0
\ready_to_play|LUT_DATA[5]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~267_combout\ = (\ready_to_play|LUT_DATA[2]~128_combout\ & (((\ready_to_play|LUT_DATA[5]~263_combout\)))) # (!\ready_to_play|LUT_DATA[2]~128_combout\ & (\ready_to_play|state_valid_breaker_try_guess_code~q\ & 
-- (\ready_to_play|LUT_DATA[5]~385_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~128_combout\,
	datab => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datac => \ready_to_play|LUT_DATA[5]~385_combout\,
	datad => \ready_to_play|LUT_DATA[5]~263_combout\,
	combout => \ready_to_play|LUT_DATA[5]~267_combout\);

-- Location: LCCOMB_X49_Y43_N6
\ready_to_play|LUT_DATA[5]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~303_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) $ 
-- (((!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[5]~303_combout\);

-- Location: LCCOMB_X49_Y43_N28
\ready_to_play|LUT_DATA[5]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~304_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[5]~303_combout\)) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & 
-- !\ready_to_play|LUT_DATA[5]~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[5]~303_combout\,
	combout => \ready_to_play|LUT_DATA[5]~304_combout\);

-- Location: LCCOMB_X49_Y43_N18
\ready_to_play|LUT_DATA[5]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~305_combout\ = (\ready_to_play|state_valid_invisible_left_seg~q\ & ((\ready_to_play|LUT_DATA[5]~304_combout\) # ((\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[5]~304_combout\,
	combout => \ready_to_play|LUT_DATA[5]~305_combout\);

-- Location: LCCOMB_X46_Y42_N22
\ready_to_play|LUT_DATA[5]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~306_combout\ = (\ready_to_play|state_valid_invisible_left_seg~q\ & (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|state_valid_invisible_left_seg~q\ & 
-- (((\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[5]~306_combout\);

-- Location: LCCOMB_X47_Y42_N22
\ready_to_play|LUT_DATA[5]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~308_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~308_combout\);

-- Location: LCCOMB_X47_Y42_N4
\ready_to_play|LUT_DATA[5]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~307_combout\ = (\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(5)) # (\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(4) & 
-- ((!\ready_to_play|LUT_INDEX\(5)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~307_combout\);

-- Location: LCCOMB_X47_Y42_N0
\ready_to_play|LUT_DATA[5]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~309_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|state_valid_invisible_left_seg~q\ & ((!\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- (((\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_left_seg~q\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[5]~309_combout\);

-- Location: LCCOMB_X47_Y42_N10
\ready_to_play|LUT_DATA[5]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~311_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_DATA[5]~309_combout\ & ((\ready_to_play|LUT_DATA[5]~307_combout\) # (!\ready_to_play|LUT_DATA[5]~308_combout\)))) # (!\ready_to_play|LUT_INDEX\(3) & 
-- (((\ready_to_play|LUT_DATA[5]~307_combout\ & \ready_to_play|LUT_DATA[5]~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~308_combout\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[5]~307_combout\,
	datad => \ready_to_play|LUT_DATA[5]~309_combout\,
	combout => \ready_to_play|LUT_DATA[5]~311_combout\);

-- Location: LCCOMB_X47_Y42_N24
\ready_to_play|LUT_DATA[5]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~310_combout\ = (\ready_to_play|LUT_DATA[5]~307_combout\ & (\ready_to_play|LUT_DATA[5]~309_combout\ $ (((!\ready_to_play|LUT_DATA[5]~308_combout\ & !\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_DATA[5]~307_combout\ & 
-- ((\ready_to_play|LUT_DATA[5]~309_combout\ & ((!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_DATA[5]~309_combout\ & (\ready_to_play|LUT_DATA[5]~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~308_combout\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[5]~307_combout\,
	datad => \ready_to_play|LUT_DATA[5]~309_combout\,
	combout => \ready_to_play|LUT_DATA[5]~310_combout\);

-- Location: LCCOMB_X46_Y42_N10
\ready_to_play|LUT_DATA[5]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~312_combout\ = (\ready_to_play|LUT_DATA[2]~73_combout\ & (\ready_to_play|LUT_DATA[5]~311_combout\ $ (((!\ready_to_play|LUT_DATA[5]~306_combout\ & !\ready_to_play|LUT_DATA[5]~310_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~306_combout\,
	datab => \ready_to_play|LUT_DATA[2]~73_combout\,
	datac => \ready_to_play|LUT_DATA[5]~311_combout\,
	datad => \ready_to_play|LUT_DATA[5]~310_combout\,
	combout => \ready_to_play|LUT_DATA[5]~312_combout\);

-- Location: LCCOMB_X50_Y42_N14
\ready_to_play|LUT_DATA[5]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~316_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~316_combout\);

-- Location: LCCOMB_X50_Y42_N8
\ready_to_play|LUT_DATA[5]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~313_combout\ = (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(5))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~313_combout\);

-- Location: LCCOMB_X50_Y42_N10
\ready_to_play|LUT_DATA[5]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~314_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & 
-- (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[5]~314_combout\);

-- Location: LCCOMB_X50_Y42_N28
\ready_to_play|LUT_DATA[5]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~315_combout\ = \ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_DATA[5]~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[5]~314_combout\,
	combout => \ready_to_play|LUT_DATA[5]~315_combout\);

-- Location: LCCOMB_X50_Y42_N24
\ready_to_play|LUT_DATA[5]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~317_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[5]~315_combout\ & (\ready_to_play|LUT_DATA[5]~316_combout\)) # (!\ready_to_play|LUT_DATA[5]~315_combout\ & ((\ready_to_play|LUT_DATA[5]~313_combout\))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (((\ready_to_play|LUT_DATA[5]~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_DATA[5]~316_combout\,
	datac => \ready_to_play|LUT_DATA[5]~313_combout\,
	datad => \ready_to_play|LUT_DATA[5]~315_combout\,
	combout => \ready_to_play|LUT_DATA[5]~317_combout\);

-- Location: LCCOMB_X45_Y42_N4
\ready_to_play|LUT_DATA[5]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~318_combout\ = (\ready_to_play|LUT_DATA[5]~312_combout\) # ((\ready_to_play|state_valid_camouflage_right_seg~q\ & (!\ready_to_play|state_valid_invisible_left_seg~q\ & \ready_to_play|LUT_DATA[5]~317_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|LUT_DATA[5]~312_combout\,
	datad => \ready_to_play|LUT_DATA[5]~317_combout\,
	combout => \ready_to_play|LUT_DATA[5]~318_combout\);

-- Location: LCCOMB_X48_Y42_N6
\ready_to_play|LUT_DATA[5]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~292_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) $ 
-- (((\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~292_combout\);

-- Location: LCCOMB_X48_Y42_N12
\ready_to_play|LUT_DATA[5]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~293_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(4)))))) # 
-- (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~293_combout\);

-- Location: LCCOMB_X48_Y42_N2
\ready_to_play|LUT_DATA[5]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~294_combout\ = \ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_DATA[5]~293_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[5]~293_combout\,
	combout => \ready_to_play|LUT_DATA[5]~294_combout\);

-- Location: LCCOMB_X48_Y42_N20
\ready_to_play|LUT_DATA[5]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~295_combout\ = (\ready_to_play|LUT_DATA[2]~170_combout\ & ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[5]~292_combout\)) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_DATA[5]~294_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~292_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[2]~170_combout\,
	datad => \ready_to_play|LUT_DATA[5]~294_combout\,
	combout => \ready_to_play|LUT_DATA[5]~295_combout\);

-- Location: LCCOMB_X46_Y42_N4
\ready_to_play|LUT_DATA[5]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~299_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|state_valid_coder~q\) # (\ready_to_play|state_valid_invisible_right_seg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|state_valid_invisible_right_seg~q\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[5]~299_combout\);

-- Location: LCCOMB_X46_Y42_N6
\ready_to_play|LUT_DATA[5]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~298_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~298_combout\);

-- Location: LCCOMB_X46_Y42_N0
\ready_to_play|LUT_DATA[5]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~300_combout\ = (\ready_to_play|state_valid_invisible_right_seg~q\ & (((\ready_to_play|LUT_DATA[5]~299_combout\) # (\ready_to_play|LUT_DATA[5]~298_combout\)))) # (!\ready_to_play|state_valid_invisible_right_seg~q\ & 
-- (!\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|LUT_DATA[5]~299_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|state_valid_invisible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[5]~299_combout\,
	datad => \ready_to_play|LUT_DATA[5]~298_combout\,
	combout => \ready_to_play|LUT_DATA[5]~300_combout\);

-- Location: LCCOMB_X46_Y42_N2
\ready_to_play|LUT_DATA[5]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~296_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ (((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0) & 
-- (!\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[5]~296_combout\);

-- Location: LCCOMB_X46_Y42_N24
\ready_to_play|LUT_DATA[5]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~297_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[5]~296_combout\)) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2) & 
-- !\ready_to_play|LUT_DATA[5]~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[5]~296_combout\,
	combout => \ready_to_play|LUT_DATA[5]~297_combout\);

-- Location: LCCOMB_X46_Y42_N16
\ready_to_play|LUT_DATA[5]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~301_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_DATA[5]~300_combout\) # ((\ready_to_play|LUT_DATA[2]~166_combout\ & \ready_to_play|LUT_DATA[5]~297_combout\)))) # (!\ready_to_play|LUT_INDEX\(2) & 
-- (((\ready_to_play|LUT_DATA[2]~166_combout\ & \ready_to_play|LUT_DATA[5]~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_DATA[5]~300_combout\,
	datac => \ready_to_play|LUT_DATA[2]~166_combout\,
	datad => \ready_to_play|LUT_DATA[5]~297_combout\,
	combout => \ready_to_play|LUT_DATA[5]~301_combout\);

-- Location: LCCOMB_X49_Y42_N30
\ready_to_play|LUT_DATA[5]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~387_combout\ = ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~387_combout\);

-- Location: LCCOMB_X45_Y42_N22
\ready_to_play|LUT_DATA[5]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~285_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) $ (((!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1) & 
-- ((\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~285_combout\);

-- Location: LCCOMB_X45_Y42_N28
\ready_to_play|LUT_DATA[5]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~286_combout\ = (\ready_to_play|state_valid_group~q\ & ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_DATA[5]~285_combout\) # (\ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[5]~285_combout\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[5]~286_combout\);

-- Location: LCCOMB_X45_Y42_N20
\ready_to_play|LUT_DATA[5]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~388_combout\ = (!\ready_to_play|state_valid_coder~q\ & (\ready_to_play|LUT_DATA[5]~286_combout\ & ((\ready_to_play|LUT_DATA[5]~387_combout\) # (!\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[5]~387_combout\,
	datad => \ready_to_play|LUT_DATA[5]~286_combout\,
	combout => \ready_to_play|LUT_DATA[5]~388_combout\);

-- Location: LCCOMB_X50_Y42_N6
\ready_to_play|LUT_DATA[5]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~287_combout\ = (\ready_to_play|LUT_INDEX\(4) & (((!\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3)) # ((!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[5]~287_combout\);

-- Location: LCCOMB_X45_Y42_N2
\ready_to_play|LUT_DATA[5]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~288_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4)) # 
-- (!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) $ (((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[5]~288_combout\);

-- Location: LCCOMB_X45_Y42_N0
\ready_to_play|LUT_DATA[5]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~289_combout\ = (\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_DATA[5]~288_combout\) # (!\ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|state_valid_coder~q\,
	datad => \ready_to_play|LUT_DATA[5]~288_combout\,
	combout => \ready_to_play|LUT_DATA[5]~289_combout\);

-- Location: LCCOMB_X45_Y42_N14
\ready_to_play|LUT_DATA[5]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~290_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[5]~289_combout\ & ((\ready_to_play|LUT_INDEX\(2)) # (\ready_to_play|LUT_DATA[5]~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[5]~287_combout\,
	datad => \ready_to_play|LUT_DATA[5]~289_combout\,
	combout => \ready_to_play|LUT_DATA[5]~290_combout\);

-- Location: LCCOMB_X49_Y42_N16
\ready_to_play|LUT_DATA[5]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~282_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ (!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) & 
-- ((!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~282_combout\);

-- Location: LCCOMB_X46_Y42_N18
\ready_to_play|LUT_DATA[5]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~281_combout\ = (\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[5]~281_combout\);

-- Location: LCCOMB_X45_Y42_N10
\ready_to_play|LUT_DATA[5]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~283_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_DATA[5]~281_combout\))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_DATA[5]~282_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[5]~282_combout\,
	datad => \ready_to_play|LUT_DATA[5]~281_combout\,
	combout => \ready_to_play|LUT_DATA[5]~283_combout\);

-- Location: LCCOMB_X45_Y42_N16
\ready_to_play|LUT_DATA[5]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~284_combout\ = (!\ready_to_play|state_valid_group~q\ & (!\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_INDEX\(5)) # (\ready_to_play|LUT_DATA[5]~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[5]~283_combout\,
	combout => \ready_to_play|LUT_DATA[5]~284_combout\);

-- Location: LCCOMB_X45_Y42_N8
\ready_to_play|LUT_DATA[5]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~291_combout\ = (\ready_to_play|LUT_DATA[6]~187_combout\ & ((\ready_to_play|LUT_DATA[5]~388_combout\) # ((\ready_to_play|LUT_DATA[5]~290_combout\) # (\ready_to_play|LUT_DATA[5]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~187_combout\,
	datab => \ready_to_play|LUT_DATA[5]~388_combout\,
	datac => \ready_to_play|LUT_DATA[5]~290_combout\,
	datad => \ready_to_play|LUT_DATA[5]~284_combout\,
	combout => \ready_to_play|LUT_DATA[5]~291_combout\);

-- Location: LCCOMB_X45_Y42_N30
\ready_to_play|LUT_DATA[5]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~302_combout\ = (\ready_to_play|LUT_DATA[2]~165_combout\ & ((\ready_to_play|LUT_DATA[5]~295_combout\) # ((\ready_to_play|LUT_DATA[5]~301_combout\) # (\ready_to_play|LUT_DATA[5]~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~295_combout\,
	datab => \ready_to_play|LUT_DATA[2]~165_combout\,
	datac => \ready_to_play|LUT_DATA[5]~301_combout\,
	datad => \ready_to_play|LUT_DATA[5]~291_combout\,
	combout => \ready_to_play|LUT_DATA[5]~302_combout\);

-- Location: LCCOMB_X45_Y42_N26
\ready_to_play|LUT_DATA[5]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~319_combout\ = (\ready_to_play|LUT_DATA[2]~89_combout\ & ((\ready_to_play|LUT_DATA[5]~305_combout\) # ((\ready_to_play|LUT_DATA[5]~318_combout\) # (\ready_to_play|LUT_DATA[5]~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~89_combout\,
	datab => \ready_to_play|LUT_DATA[5]~305_combout\,
	datac => \ready_to_play|LUT_DATA[5]~318_combout\,
	datad => \ready_to_play|LUT_DATA[5]~302_combout\,
	combout => \ready_to_play|LUT_DATA[5]~319_combout\);

-- Location: LCCOMB_X46_Y39_N22
\ready_to_play|LUT_DATA[5]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~280_combout\ = (!\ready_to_play|state_valid_lock_breaker_wins~q\ & !\ready_to_play|state_valid_lock_coder_choose_password~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datad => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	combout => \ready_to_play|LUT_DATA[5]~280_combout\);

-- Location: LCCOMB_X47_Y43_N4
\ready_to_play|LUT_DATA[5]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~320_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|state_valid_camouflage_left_seg~q\) # (\ready_to_play|state_valid_flexible_left_seg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datad => \ready_to_play|state_valid_flexible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[5]~320_combout\);

-- Location: LCCOMB_X47_Y43_N22
\ready_to_play|LUT_DATA[5]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~321_combout\ = (\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(5))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0)) # 
-- (!\ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[5]~321_combout\);

-- Location: LCCOMB_X47_Y43_N24
\ready_to_play|LUT_DATA[5]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~322_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(5) & ((!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & 
-- (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[5]~322_combout\);

-- Location: LCCOMB_X47_Y43_N14
\ready_to_play|LUT_DATA[5]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~323_combout\ = (\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[5]~321_combout\ & !\ready_to_play|LUT_DATA[5]~322_combout\)))) # (!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_DATA[5]~321_combout\ & 
-- (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_DATA[5]~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[5]~321_combout\,
	datad => \ready_to_play|LUT_DATA[5]~322_combout\,
	combout => \ready_to_play|LUT_DATA[5]~323_combout\);

-- Location: LCCOMB_X47_Y43_N8
\ready_to_play|LUT_DATA[5]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~324_combout\ = (\ready_to_play|state_valid_camouflage_left_seg~q\ & (!\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|state_valid_camouflage_left_seg~q\ & ((\ready_to_play|state_valid_flexible_left_seg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|state_valid_flexible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[5]~324_combout\);

-- Location: LCCOMB_X47_Y43_N18
\ready_to_play|LUT_DATA[5]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~325_combout\ = (\ready_to_play|LUT_INDEX\(5) & (((!\ready_to_play|LUT_DATA[5]~321_combout\ & \ready_to_play|LUT_DATA[5]~322_combout\)))) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[5]~322_combout\ & 
-- (!\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_DATA[5]~322_combout\ & ((\ready_to_play|LUT_DATA[5]~321_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[5]~321_combout\,
	datad => \ready_to_play|LUT_DATA[5]~322_combout\,
	combout => \ready_to_play|LUT_DATA[5]~325_combout\);

-- Location: LCCOMB_X47_Y43_N0
\ready_to_play|LUT_DATA[5]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~326_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[5]~325_combout\))) # (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[5]~324_combout\ & !\ready_to_play|LUT_DATA[5]~325_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[5]~324_combout\,
	datad => \ready_to_play|LUT_DATA[5]~325_combout\,
	combout => \ready_to_play|LUT_DATA[5]~326_combout\);

-- Location: LCCOMB_X47_Y43_N26
\ready_to_play|LUT_DATA[5]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~327_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[5]~324_combout\ $ (\ready_to_play|LUT_DATA[5]~325_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[5]~324_combout\,
	datad => \ready_to_play|LUT_DATA[5]~325_combout\,
	combout => \ready_to_play|LUT_DATA[5]~327_combout\);

-- Location: LCCOMB_X46_Y43_N4
\ready_to_play|LUT_DATA[5]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~328_combout\ = (\ready_to_play|LUT_DATA[5]~323_combout\ & (!\ready_to_play|LUT_DATA[5]~326_combout\ & ((\ready_to_play|LUT_DATA[5]~320_combout\) # (\ready_to_play|LUT_DATA[5]~327_combout\)))) # 
-- (!\ready_to_play|LUT_DATA[5]~323_combout\ & (\ready_to_play|LUT_DATA[5]~326_combout\ & (\ready_to_play|LUT_DATA[5]~320_combout\ $ (!\ready_to_play|LUT_DATA[5]~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~320_combout\,
	datab => \ready_to_play|LUT_DATA[5]~323_combout\,
	datac => \ready_to_play|LUT_DATA[5]~326_combout\,
	datad => \ready_to_play|LUT_DATA[5]~327_combout\,
	combout => \ready_to_play|LUT_DATA[5]~328_combout\);

-- Location: LCCOMB_X52_Y42_N0
\ready_to_play|LUT_DATA[5]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~276_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(5) & ((!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(5) & 
-- (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~276_combout\);

-- Location: LCCOMB_X52_Y42_N2
\ready_to_play|LUT_DATA[5]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~277_combout\ = (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_DATA[5]~276_combout\) # (!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(2) $ 
-- (!\ready_to_play|LUT_DATA[5]~276_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[5]~276_combout\,
	combout => \ready_to_play|LUT_DATA[5]~277_combout\);

-- Location: LCCOMB_X52_Y42_N28
\ready_to_play|LUT_DATA[1]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~268_combout\ = (\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[1]~268_combout\);

-- Location: LCCOMB_X52_Y42_N8
\ready_to_play|LUT_DATA[5]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~278_combout\ = (\ready_to_play|LUT_DATA[1]~268_combout\ & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[1]~268_combout\,
	combout => \ready_to_play|LUT_DATA[5]~278_combout\);

-- Location: LCCOMB_X52_Y42_N4
\ready_to_play|LUT_DATA[5]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~270_combout\ = (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~270_combout\);

-- Location: LCCOMB_X52_Y42_N6
\ready_to_play|LUT_DATA[5]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~269_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_DATA[1]~268_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[1]~268_combout\,
	combout => \ready_to_play|LUT_DATA[5]~269_combout\);

-- Location: LCCOMB_X52_Y42_N14
\ready_to_play|LUT_DATA[5]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~271_combout\ = (\ready_to_play|LUT_DATA[5]~269_combout\) # ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_DATA[5]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[5]~270_combout\,
	datad => \ready_to_play|LUT_DATA[5]~269_combout\,
	combout => \ready_to_play|LUT_DATA[5]~271_combout\);

-- Location: LCCOMB_X52_Y42_N26
\ready_to_play|LUT_DATA[5]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~273_combout\ = (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(5)) # (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~273_combout\);

-- Location: LCCOMB_X52_Y42_N20
\ready_to_play|LUT_DATA[5]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~272_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_DATA[2]~33_combout\ & (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_DATA[2]~33_combout\,
	combout => \ready_to_play|LUT_DATA[5]~272_combout\);

-- Location: LCCOMB_X52_Y42_N12
\ready_to_play|LUT_DATA[5]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~274_combout\ = (\ready_to_play|LUT_DATA[5]~273_combout\) # ((\ready_to_play|LUT_DATA[5]~272_combout\) # ((!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[5]~273_combout\,
	datad => \ready_to_play|LUT_DATA[5]~272_combout\,
	combout => \ready_to_play|LUT_DATA[5]~274_combout\);

-- Location: LCCOMB_X52_Y42_N18
\ready_to_play|LUT_DATA[5]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~275_combout\ = (\ready_to_play|LUT_DATA[0]~39_combout\ & ((\ready_to_play|LUT_DATA[5]~271_combout\) # ((!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_DATA[5]~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~39_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[5]~271_combout\,
	datad => \ready_to_play|LUT_DATA[5]~274_combout\,
	combout => \ready_to_play|LUT_DATA[5]~275_combout\);

-- Location: LCCOMB_X52_Y42_N22
\ready_to_play|LUT_DATA[5]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~279_combout\ = (\ready_to_play|LUT_DATA[5]~275_combout\) # ((\ready_to_play|state_valid_lock_breaker_wins~q\ & ((\ready_to_play|LUT_DATA[5]~277_combout\) # (\ready_to_play|LUT_DATA[5]~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datab => \ready_to_play|LUT_DATA[5]~277_combout\,
	datac => \ready_to_play|LUT_DATA[5]~278_combout\,
	datad => \ready_to_play|LUT_DATA[5]~275_combout\,
	combout => \ready_to_play|LUT_DATA[5]~279_combout\);

-- Location: LCCOMB_X45_Y42_N12
\ready_to_play|LUT_DATA[5]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~329_combout\ = (\ready_to_play|LUT_DATA[5]~279_combout\) # ((\ready_to_play|LUT_DATA[5]~280_combout\ & ((\ready_to_play|LUT_DATA[5]~319_combout\) # (\ready_to_play|LUT_DATA[5]~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~319_combout\,
	datab => \ready_to_play|LUT_DATA[5]~280_combout\,
	datac => \ready_to_play|LUT_DATA[5]~328_combout\,
	datad => \ready_to_play|LUT_DATA[5]~279_combout\,
	combout => \ready_to_play|LUT_DATA[5]~329_combout\);

-- Location: LCCOMB_X45_Y42_N18
\ready_to_play|LUT_DATA[5]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~330_combout\ = (\ready_to_play|LUT_DATA[5]~267_combout\) # ((!\ready_to_play|state_valid_breaker_try_guess_code~q\ & (!\ready_to_play|LUT_DATA[2]~128_combout\ & \ready_to_play|LUT_DATA[5]~329_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|LUT_DATA[2]~128_combout\,
	datac => \ready_to_play|LUT_DATA[5]~267_combout\,
	datad => \ready_to_play|LUT_DATA[5]~329_combout\,
	combout => \ready_to_play|LUT_DATA[5]~330_combout\);

-- Location: LCCOMB_X45_Y42_N6
\ready_to_play|LUT_DATA[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(5) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[5]~330_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA\(5),
	datac => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[5]~330_combout\,
	combout => \ready_to_play|LUT_DATA\(5));

-- Location: LCCOMB_X45_Y42_N24
\ready_to_play|mLCD_DATA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~6_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(5),
	combout => \ready_to_play|mLCD_DATA~6_combout\);

-- Location: FF_X45_Y42_N25
\ready_to_play|mLCD_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~6_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(5));

-- Location: LCCOMB_X46_Y39_N26
\ready_to_play|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr15~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ (((\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(1) & (((\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|WideOr15~0_combout\);

-- Location: LCCOMB_X46_Y39_N18
\ready_to_play|WideOr15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr15~1_combout\ = (\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|WideOr15~1_combout\);

-- Location: LCCOMB_X46_Y39_N8
\ready_to_play|LUT_DATA[6]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~361_combout\ = (!\ready_to_play|state_valid_group~q\ & ((\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|WideOr15~1_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|WideOr15~0_combout\,
	datad => \ready_to_play|WideOr15~1_combout\,
	combout => \ready_to_play|LUT_DATA[6]~361_combout\);

-- Location: LCCOMB_X46_Y39_N4
\ready_to_play|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux8~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux8~1_combout\);

-- Location: LCCOMB_X46_Y39_N10
\ready_to_play|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux8~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # 
-- ((\ready_to_play|LUT_INDEX\(2)) # (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux8~0_combout\);

-- Location: LCCOMB_X46_Y39_N6
\ready_to_play|LUT_DATA[6]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~362_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|Mux8~0_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux8~1_combout\,
	datad => \ready_to_play|Mux8~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~362_combout\);

-- Location: LCCOMB_X46_Y39_N20
\ready_to_play|LUT_DATA[6]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~363_combout\ = (!\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_DATA[6]~361_combout\) # ((\ready_to_play|state_valid_group~q\ & \ready_to_play|LUT_DATA[6]~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_DATA[6]~361_combout\,
	datad => \ready_to_play|LUT_DATA[6]~362_combout\,
	combout => \ready_to_play|LUT_DATA[6]~363_combout\);

-- Location: LCCOMB_X50_Y38_N22
\ready_to_play|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux15~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1))))) # 
-- (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux15~0_combout\);

-- Location: LCCOMB_X50_Y38_N0
\ready_to_play|Mux71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux71~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) & 
-- ((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux71~1_combout\);

-- Location: LCCOMB_X50_Y38_N12
\ready_to_play|LUT_DATA[6]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~359_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux15~0_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux71~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|Mux15~0_combout\,
	datad => \ready_to_play|Mux71~1_combout\,
	combout => \ready_to_play|LUT_DATA[6]~359_combout\);

-- Location: LCCOMB_X50_Y38_N18
\ready_to_play|LUT_DATA[6]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~360_combout\ = (\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_DATA[6]~359_combout\) # ((\ready_to_play|Mux88~0_combout\ & \ready_to_play|Mux77~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|Mux88~0_combout\,
	datac => \ready_to_play|Mux77~2_combout\,
	datad => \ready_to_play|LUT_DATA[6]~359_combout\,
	combout => \ready_to_play|LUT_DATA[6]~360_combout\);

-- Location: LCCOMB_X49_Y39_N10
\ready_to_play|LUT_DATA[6]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~364_combout\ = (\ready_to_play|LUT_DATA[6]~187_combout\ & (!\ready_to_play|state_valid_flexible_right_seg~q\ & ((\ready_to_play|LUT_DATA[6]~363_combout\) # (\ready_to_play|LUT_DATA[6]~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~187_combout\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[6]~363_combout\,
	datad => \ready_to_play|LUT_DATA[6]~360_combout\,
	combout => \ready_to_play|LUT_DATA[6]~364_combout\);

-- Location: LCCOMB_X49_Y39_N0
\ready_to_play|LUT_DATA[6]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~358_combout\ = (!\ready_to_play|state_valid_camouflage_right_seg~q\ & (!\ready_to_play|state_valid_flexible_left_seg~q\ & !\ready_to_play|state_valid_invisible_left_seg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|state_valid_flexible_left_seg~q\,
	datad => \ready_to_play|state_valid_invisible_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[6]~358_combout\);

-- Location: LCCOMB_X47_Y42_N16
\ready_to_play|LUT_DATA[6]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~369_combout\ = (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|state_valid_breaker~q\) # (\ready_to_play|state_valid_invisible_right_seg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|state_valid_invisible_right_seg~q\,
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[6]~369_combout\);

-- Location: LCCOMB_X48_Y42_N14
\ready_to_play|LUT_DATA[6]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~370_combout\ = (\ready_to_play|state_valid_flexible_right_seg~q\ & ((!\ready_to_play|Mux70~0_combout\))) # (!\ready_to_play|state_valid_flexible_right_seg~q\ & (\ready_to_play|LUT_DATA[6]~369_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[6]~369_combout\,
	datad => \ready_to_play|Mux70~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~370_combout\);

-- Location: LCCOMB_X50_Y42_N22
\ready_to_play|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux29~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # 
-- (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux29~0_combout\);

-- Location: LCCOMB_X50_Y42_N20
\ready_to_play|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux29~1_combout\ = (\ready_to_play|LUT_INDEX\(4)) # ((\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux29~1_combout\);

-- Location: LCCOMB_X50_Y42_N18
\ready_to_play|LUT_DATA[6]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~367_combout\ = (\ready_to_play|state_valid_invisible_right_seg~q\ & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux29~0_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux29~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|state_valid_invisible_right_seg~q\,
	datac => \ready_to_play|Mux29~0_combout\,
	datad => \ready_to_play|Mux29~1_combout\,
	combout => \ready_to_play|LUT_DATA[6]~367_combout\);

-- Location: LCCOMB_X49_Y37_N0
\ready_to_play|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux22~1_combout\ = (\ready_to_play|LUT_INDEX\(4)) # ((\ready_to_play|LUT_INDEX\(3) & ((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux22~1_combout\);

-- Location: LCCOMB_X49_Y37_N10
\ready_to_play|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux22~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux22~0_combout\);

-- Location: LCCOMB_X49_Y39_N22
\ready_to_play|LUT_DATA[6]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~366_combout\ = (\ready_to_play|LUT_DATA[2]~170_combout\ & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux22~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[2]~170_combout\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux22~1_combout\,
	datad => \ready_to_play|Mux22~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~366_combout\);

-- Location: LCCOMB_X50_Y39_N22
\ready_to_play|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux43~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) & 
-- ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux43~0_combout\);

-- Location: LCCOMB_X49_Y39_N24
\ready_to_play|LUT_DATA[6]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~365_combout\ = (\ready_to_play|LUT_INDEX\(4) & (((!\ready_to_play|LUT_DATA[5]~35_combout\)) # (!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(4) & (((\ready_to_play|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|Mux43~0_combout\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_DATA[5]~35_combout\,
	combout => \ready_to_play|LUT_DATA[6]~365_combout\);

-- Location: LCCOMB_X49_Y39_N8
\ready_to_play|LUT_DATA[6]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~368_combout\ = (\ready_to_play|state_valid_flexible_right_seg~q\ & (((\ready_to_play|LUT_DATA[6]~365_combout\)))) # (!\ready_to_play|state_valid_flexible_right_seg~q\ & ((\ready_to_play|LUT_DATA[6]~367_combout\) # 
-- ((\ready_to_play|LUT_DATA[6]~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~367_combout\,
	datab => \ready_to_play|state_valid_flexible_right_seg~q\,
	datac => \ready_to_play|LUT_DATA[6]~366_combout\,
	datad => \ready_to_play|LUT_DATA[6]~365_combout\,
	combout => \ready_to_play|LUT_DATA[6]~368_combout\);

-- Location: LCCOMB_X49_Y39_N26
\ready_to_play|LUT_DATA[6]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~371_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[6]~370_combout\ & ((!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[6]~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~370_combout\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[6]~368_combout\,
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[6]~371_combout\);

-- Location: LCCOMB_X48_Y41_N10
\ready_to_play|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux7~6_combout\ = (!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux7~6_combout\);

-- Location: LCCOMB_X47_Y41_N22
\ready_to_play|Mux64~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux64~1_combout\ = (\ready_to_play|LUT_INDEX\(4)) # ((\ready_to_play|LUT_INDEX\(2)) # ((\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux64~1_combout\);

-- Location: LCCOMB_X48_Y41_N0
\ready_to_play|LUT_DATA[6]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~356_combout\ = (\ready_to_play|state_valid_flexible_left_seg~q\ & (((!\ready_to_play|Mux64~1_combout\)))) # (!\ready_to_play|state_valid_flexible_left_seg~q\ & (\ready_to_play|Mux7~6_combout\ & 
-- (\ready_to_play|state_valid_invisible_left_seg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux7~6_combout\,
	datab => \ready_to_play|state_valid_flexible_left_seg~q\,
	datac => \ready_to_play|state_valid_invisible_left_seg~q\,
	datad => \ready_to_play|Mux64~1_combout\,
	combout => \ready_to_play|LUT_DATA[6]~356_combout\);

-- Location: LCCOMB_X46_Y39_N16
\ready_to_play|LUT_DATA[6]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~355_combout\ = (\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_INDEX\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[6]~355_combout\);

-- Location: LCCOMB_X49_Y41_N8
\ready_to_play|Mux64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux64~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) $ ((\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2)))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux64~0_combout\);

-- Location: LCCOMB_X49_Y41_N26
\ready_to_play|LUT_DATA[6]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~350_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((!\ready_to_play|Mux7~6_combout\)) # (!\ready_to_play|Mux69~6_combout\))) # (!\ready_to_play|LUT_INDEX\(3) & (((\ready_to_play|Mux64~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|Mux69~6_combout\,
	datac => \ready_to_play|Mux64~0_combout\,
	datad => \ready_to_play|Mux7~6_combout\,
	combout => \ready_to_play|LUT_DATA[6]~350_combout\);

-- Location: LCCOMB_X49_Y39_N30
\ready_to_play|LUT_DATA[6]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~351_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[6]~350_combout\ & ((\ready_to_play|state_valid_invisible_left_seg~q\) # (\ready_to_play|state_valid_flexible_left_seg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|state_valid_invisible_left_seg~q\,
	datac => \ready_to_play|state_valid_flexible_left_seg~q\,
	datad => \ready_to_play|LUT_DATA[6]~350_combout\,
	combout => \ready_to_play|LUT_DATA[6]~351_combout\);

-- Location: LCCOMB_X48_Y39_N4
\ready_to_play|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux43~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) & 
-- (\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux43~1_combout\);

-- Location: LCCOMB_X49_Y39_N20
\ready_to_play|LUT_DATA[6]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~352_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|Mux43~1_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|Mux43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux43~1_combout\,
	datad => \ready_to_play|Mux43~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~352_combout\);

-- Location: LCCOMB_X49_Y39_N6
\ready_to_play|LUT_DATA[6]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~353_combout\ = (\ready_to_play|LUT_DATA[6]~352_combout\) # ((\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|Mux70~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|Mux70~0_combout\,
	datad => \ready_to_play|LUT_DATA[6]~352_combout\,
	combout => \ready_to_play|LUT_DATA[6]~353_combout\);

-- Location: LCCOMB_X49_Y39_N16
\ready_to_play|LUT_DATA[6]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~354_combout\ = (!\ready_to_play|state_valid_invisible_left_seg~q\ & (\ready_to_play|state_valid_camouflage_right_seg~q\ & (!\ready_to_play|state_valid_flexible_left_seg~q\ & \ready_to_play|LUT_DATA[6]~353_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible_left_seg~q\,
	datab => \ready_to_play|state_valid_camouflage_right_seg~q\,
	datac => \ready_to_play|state_valid_flexible_left_seg~q\,
	datad => \ready_to_play|LUT_DATA[6]~353_combout\,
	combout => \ready_to_play|LUT_DATA[6]~354_combout\);

-- Location: LCCOMB_X49_Y39_N2
\ready_to_play|LUT_DATA[6]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~357_combout\ = (\ready_to_play|LUT_DATA[6]~351_combout\) # ((\ready_to_play|LUT_DATA[6]~354_combout\) # ((\ready_to_play|LUT_DATA[6]~356_combout\ & \ready_to_play|LUT_DATA[6]~355_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~356_combout\,
	datab => \ready_to_play|LUT_DATA[6]~355_combout\,
	datac => \ready_to_play|LUT_DATA[6]~351_combout\,
	datad => \ready_to_play|LUT_DATA[6]~354_combout\,
	combout => \ready_to_play|LUT_DATA[6]~357_combout\);

-- Location: LCCOMB_X49_Y39_N12
\ready_to_play|LUT_DATA[6]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~372_combout\ = (\ready_to_play|LUT_DATA[6]~357_combout\) # ((\ready_to_play|LUT_DATA[6]~358_combout\ & ((\ready_to_play|LUT_DATA[6]~364_combout\) # (\ready_to_play|LUT_DATA[6]~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~364_combout\,
	datab => \ready_to_play|LUT_DATA[6]~358_combout\,
	datac => \ready_to_play|LUT_DATA[6]~371_combout\,
	datad => \ready_to_play|LUT_DATA[6]~357_combout\,
	combout => \ready_to_play|LUT_DATA[6]~372_combout\);

-- Location: LCCOMB_X50_Y39_N14
\ready_to_play|LUT_DATA[6]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~343_combout\ = (!\ready_to_play|state_valid_lock_coder_choose_password~q\ & (!\ready_to_play|state_valid_lock_breaker_wins~q\ & \ready_to_play|state_valid_camouflage_left_seg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_lock_coder_choose_password~q\,
	datac => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datad => \ready_to_play|state_valid_camouflage_left_seg~q\,
	combout => \ready_to_play|LUT_DATA[6]~343_combout\);

-- Location: LCCOMB_X50_Y39_N12
\ready_to_play|LUT_DATA[6]~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~344_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(5) & ((!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|LUT_INDEX\(5) $ (((!\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[6]~344_combout\);

-- Location: LCCOMB_X50_Y39_N18
\ready_to_play|LUT_DATA[6]~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~345_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(4) & 
-- ((\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[6]~345_combout\);

-- Location: LCCOMB_X50_Y39_N8
\ready_to_play|LUT_DATA[6]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~347_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|LUT_DATA[6]~345_combout\) # (!\ready_to_play|LUT_DATA[6]~344_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & 
-- ((\ready_to_play|LUT_DATA[6]~345_combout\))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[6]~344_combout\ $ (((\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_DATA[6]~345_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~344_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[6]~345_combout\,
	combout => \ready_to_play|LUT_DATA[6]~347_combout\);

-- Location: LCCOMB_X50_Y39_N20
\ready_to_play|LUT_DATA[6]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~346_combout\ = (\ready_to_play|LUT_DATA[6]~344_combout\ & ((\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|LUT_DATA[6]~345_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0))))) # 
-- (!\ready_to_play|LUT_DATA[6]~344_combout\ & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_DATA[6]~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~344_combout\,
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[6]~345_combout\,
	combout => \ready_to_play|LUT_DATA[6]~346_combout\);

-- Location: LCCOMB_X50_Y39_N30
\ready_to_play|LUT_DATA[6]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~348_combout\ = (\ready_to_play|LUT_DATA[6]~343_combout\ & (\ready_to_play|LUT_DATA[6]~347_combout\ $ (((\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_DATA[6]~346_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_DATA[6]~343_combout\,
	datac => \ready_to_play|LUT_DATA[6]~347_combout\,
	datad => \ready_to_play|LUT_DATA[6]~346_combout\,
	combout => \ready_to_play|LUT_DATA[6]~348_combout\);

-- Location: LCCOMB_X49_Y38_N0
\ready_to_play|Mux71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux71~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) $ 
-- (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux71~0_combout\);

-- Location: LCCOMB_X50_Y39_N24
\ready_to_play|Mux71~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux71~2_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux71~0_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & 
-- ((\ready_to_play|Mux71~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux71~0_combout\,
	datad => \ready_to_play|Mux71~1_combout\,
	combout => \ready_to_play|Mux71~2_combout\);

-- Location: LCCOMB_X50_Y39_N4
\ready_to_play|Mux71~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux71~3_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|Mux71~2_combout\ & (\ready_to_play|Mux76~3_combout\)) # (!\ready_to_play|Mux71~2_combout\ & ((!\ready_to_play|Mux77~3_combout\))))) # (!\ready_to_play|LUT_INDEX\(5) & 
-- (((\ready_to_play|Mux71~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|Mux76~3_combout\,
	datac => \ready_to_play|Mux77~3_combout\,
	datad => \ready_to_play|Mux71~2_combout\,
	combout => \ready_to_play|Mux71~3_combout\);

-- Location: LCCOMB_X47_Y39_N26
\ready_to_play|Mux78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux78~0_combout\ = (\ready_to_play|LUT_INDEX\(1)) # ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Mux78~0_combout\);

-- Location: LCCOMB_X50_Y39_N2
\ready_to_play|LUT_DATA[6]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~332_combout\ = (\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[6]~332_combout\);

-- Location: LCCOMB_X50_Y39_N6
\ready_to_play|LUT_DATA[6]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~340_combout\ = (\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_DATA[2]~33_combout\ & \ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[2]~33_combout\,
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[6]~340_combout\);

-- Location: LCCOMB_X50_Y39_N10
\ready_to_play|LUT_DATA[6]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~341_combout\ = (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_DATA[6]~340_combout\) # ((\ready_to_play|LUT_INDEX\(5) & \ready_to_play|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|Mux7~6_combout\,
	datad => \ready_to_play|LUT_DATA[6]~340_combout\,
	combout => \ready_to_play|LUT_DATA[6]~341_combout\);

-- Location: LCCOMB_X50_Y39_N16
\ready_to_play|LUT_DATA[6]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~342_combout\ = (\ready_to_play|state_valid_lock_breaker_wins~q\ & ((\ready_to_play|LUT_DATA[6]~341_combout\) # ((\ready_to_play|Mux78~0_combout\ & \ready_to_play|LUT_DATA[6]~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux78~0_combout\,
	datab => \ready_to_play|LUT_DATA[6]~332_combout\,
	datac => \ready_to_play|state_valid_lock_breaker_wins~q\,
	datad => \ready_to_play|LUT_DATA[6]~341_combout\,
	combout => \ready_to_play|LUT_DATA[6]~342_combout\);

-- Location: LCCOMB_X50_Y39_N26
\ready_to_play|LUT_DATA[6]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~349_combout\ = (\ready_to_play|LUT_DATA[6]~348_combout\) # ((\ready_to_play|LUT_DATA[6]~342_combout\) # ((\ready_to_play|LUT_DATA[0]~39_combout\ & \ready_to_play|Mux71~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~348_combout\,
	datab => \ready_to_play|LUT_DATA[0]~39_combout\,
	datac => \ready_to_play|Mux71~3_combout\,
	datad => \ready_to_play|LUT_DATA[6]~342_combout\,
	combout => \ready_to_play|LUT_DATA[6]~349_combout\);

-- Location: LCCOMB_X49_Y39_N14
\ready_to_play|LUT_DATA[6]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~373_combout\ = (\ready_to_play|LUT_DATA[6]~349_combout\) # ((\ready_to_play|LUT_DATA[6]~372_combout\ & (\ready_to_play|LUT_DATA[5]~280_combout\ & !\ready_to_play|state_valid_camouflage_left_seg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~372_combout\,
	datab => \ready_to_play|LUT_DATA[5]~280_combout\,
	datac => \ready_to_play|state_valid_camouflage_left_seg~q\,
	datad => \ready_to_play|LUT_DATA[6]~349_combout\,
	combout => \ready_to_play|LUT_DATA[6]~373_combout\);

-- Location: LCCOMB_X50_Y41_N26
\ready_to_play|Mux90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux90~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) & 
-- !\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux90~0_combout\);

-- Location: LCCOMB_X50_Y41_N20
\ready_to_play|LUT_DATA[6]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~333_combout\ = (\ready_to_play|state_valid_breaker_try_guess_code~q\ & (((!\ready_to_play|Mux90~0_combout\)))) # (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & (!\ready_to_play|WideOr16~0_combout\ & 
-- ((\ready_to_play|state_valid_lock_coder_wins~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|WideOr16~0_combout\,
	datac => \ready_to_play|Mux90~0_combout\,
	datad => \ready_to_play|state_valid_lock_coder_wins~q\,
	combout => \ready_to_play|LUT_DATA[6]~333_combout\);

-- Location: LCCOMB_X50_Y41_N6
\ready_to_play|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr18~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- (((\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr18~0_combout\);

-- Location: LCCOMB_X50_Y41_N24
\ready_to_play|LUT_DATA[6]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~331_combout\ = (\ready_to_play|state_valid_play_again~q\ & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|Mux3~5_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|WideOr18~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux3~5_combout\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|state_valid_play_again~q\,
	datad => \ready_to_play|WideOr18~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~331_combout\);

-- Location: LCCOMB_X50_Y41_N14
\ready_to_play|LUT_DATA[6]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~334_combout\ = (\ready_to_play|LUT_DATA[6]~331_combout\) # ((\ready_to_play|LUT_DATA[6]~332_combout\ & (\ready_to_play|LUT_DATA[6]~333_combout\ & !\ready_to_play|state_valid_play_again~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~332_combout\,
	datab => \ready_to_play|LUT_DATA[6]~333_combout\,
	datac => \ready_to_play|state_valid_play_again~q\,
	datad => \ready_to_play|LUT_DATA[6]~331_combout\,
	combout => \ready_to_play|LUT_DATA[6]~334_combout\);

-- Location: LCCOMB_X50_Y41_N12
\ready_to_play|LUT_DATA[6]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~336_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(5)) # (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) $ 
-- (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[6]~336_combout\);

-- Location: LCCOMB_X50_Y41_N18
\ready_to_play|LUT_DATA[6]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~337_combout\ = (\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_DATA[6]~336_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(5) & 
-- \ready_to_play|LUT_DATA[6]~336_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[6]~336_combout\,
	combout => \ready_to_play|LUT_DATA[6]~337_combout\);

-- Location: LCCOMB_X50_Y41_N0
\ready_to_play|Mux90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux90~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(2))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux90~1_combout\);

-- Location: LCCOMB_X50_Y41_N22
\ready_to_play|LUT_DATA[6]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~335_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|Mux7~6_combout\))) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|Mux90~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|Mux7~6_combout\,
	datad => \ready_to_play|Mux90~1_combout\,
	combout => \ready_to_play|LUT_DATA[6]~335_combout\);

-- Location: LCCOMB_X50_Y41_N16
\ready_to_play|LUT_DATA[6]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~338_combout\ = (\ready_to_play|state_valid_breaker_try_guess_code~q\ & (((\ready_to_play|LUT_DATA[6]~335_combout\)))) # (!\ready_to_play|state_valid_breaker_try_guess_code~q\ & (\ready_to_play|LUT_DATA[6]~337_combout\ & 
-- ((\ready_to_play|state_valid_lock_coder_wins~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker_try_guess_code~q\,
	datab => \ready_to_play|LUT_DATA[6]~337_combout\,
	datac => \ready_to_play|LUT_DATA[6]~335_combout\,
	datad => \ready_to_play|state_valid_lock_coder_wins~q\,
	combout => \ready_to_play|LUT_DATA[6]~338_combout\);

-- Location: LCCOMB_X50_Y41_N2
\ready_to_play|LUT_DATA[6]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~339_combout\ = (\ready_to_play|LUT_DATA[6]~334_combout\) # ((!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|state_valid_play_again~q\ & \ready_to_play|LUT_DATA[6]~338_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|state_valid_play_again~q\,
	datac => \ready_to_play|LUT_DATA[6]~334_combout\,
	datad => \ready_to_play|LUT_DATA[6]~338_combout\,
	combout => \ready_to_play|LUT_DATA[6]~339_combout\);

-- Location: LCCOMB_X49_Y39_N4
\ready_to_play|LUT_DATA[6]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~374_combout\ = (\ready_to_play|LUT_DATA[6]~339_combout\) # ((!\ready_to_play|state_valid_lock_coder_wins~q\ & (\ready_to_play|LUT_DATA[0]~38_combout\ & \ready_to_play|LUT_DATA[6]~373_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_lock_coder_wins~q\,
	datab => \ready_to_play|LUT_DATA[0]~38_combout\,
	datac => \ready_to_play|LUT_DATA[6]~373_combout\,
	datad => \ready_to_play|LUT_DATA[6]~339_combout\,
	combout => \ready_to_play|LUT_DATA[6]~374_combout\);

-- Location: LCCOMB_X49_Y39_N18
\ready_to_play|LUT_DATA[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(6) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[6]~374_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(6),
	datac => \ready_to_play|LUT_DATA[6]~374_combout\,
	datad => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(6));

-- Location: LCCOMB_X49_Y39_N28
\ready_to_play|mLCD_DATA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~7_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(6),
	combout => \ready_to_play|mLCD_DATA~7_combout\);

-- Location: FF_X49_Y39_N29
\ready_to_play|mLCD_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~7_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(6));

-- Location: LCCOMB_X50_Y42_N4
\ready_to_play|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux1~3_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux1~3_combout\);

-- Location: LCCOMB_X50_Y42_N2
\ready_to_play|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux1~4_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|Mux1~3_combout\,
	combout => \ready_to_play|Mux1~4_combout\);

-- Location: LCCOMB_X50_Y42_N0
\ready_to_play|LUT_DATA[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(7) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|Mux1~4_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(7),
	datac => \ready_to_play|Mux1~4_combout\,
	datad => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(7));

-- Location: LCCOMB_X50_Y42_N12
\ready_to_play|mLCD_DATA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~8_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(7),
	combout => \ready_to_play|mLCD_DATA~8_combout\);

-- Location: FF_X50_Y42_N13
\ready_to_play|mLCD_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~8_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(7));

-- Location: LCCOMB_X45_Y44_N20
\ready_to_play|u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector3~0_combout\ = (\ready_to_play|u0|ST.01~q\) # ((\ready_to_play|u0|LCD_EN~q\ & ((\ready_to_play|u0|ST.10~q\) # (!\ready_to_play|u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.00~q\,
	datab => \ready_to_play|u0|ST.10~q\,
	datac => \ready_to_play|u0|LCD_EN~q\,
	datad => \ready_to_play|u0|ST.01~q\,
	combout => \ready_to_play|u0|Selector3~0_combout\);

-- Location: FF_X45_Y44_N21
\ready_to_play|u0|LCD_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|u0|Selector3~0_combout\,
	clrn => \clk_div|clk_out~q\,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|LCD_EN~q\);

-- Location: LCCOMB_X47_Y43_N12
\ready_to_play|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux0~2_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux0~2_combout\);

-- Location: LCCOMB_X47_Y43_N30
\ready_to_play|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux0~3_combout\ = (\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(5)) # (\ready_to_play|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|Mux0~2_combout\,
	combout => \ready_to_play|Mux0~3_combout\);

-- Location: LCCOMB_X46_Y43_N24
\ready_to_play|LUT_DATA[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(8) = (GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & (\ready_to_play|Mux0~3_combout\)) # (!GLOBAL(\ready_to_play|LUT_DATA[0]~91clkctrl_outclk\) & ((\ready_to_play|LUT_DATA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux0~3_combout\,
	datac => \ready_to_play|LUT_DATA\(8),
	datad => \ready_to_play|LUT_DATA[0]~91clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(8));

-- Location: LCCOMB_X46_Y43_N0
\ready_to_play|mLCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_RS~0_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(8),
	combout => \ready_to_play|mLCD_RS~0_combout\);

-- Location: FF_X46_Y43_N1
\ready_to_play|mLCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_RS~0_combout\,
	ena => \ready_to_play|mLCD_DATA[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_RS~q\);

-- Location: LCCOMB_X68_Y37_N4
\select_your_power|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux5~0_combout\ = (!\comb_3|state\(0) & \comb_3|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(2),
	combout => \select_your_power|Mux5~0_combout\);

-- Location: LCCOMB_X68_Y37_N0
\select_your_power|oHEX_D1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[0]~feeder_combout\ = \select_your_power|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select_your_power|Mux5~0_combout\,
	combout => \select_your_power|oHEX_D1[0]~feeder_combout\);

-- Location: LCCOMB_X68_Y36_N0
\select_your_power|oHEX_D1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[2]~0_combout\ = (\comb_3|state\(3)) # ((\comb_3|state\(0) & ((\comb_3|state\(1)) # (!\comb_3|state\(2)))) # (!\comb_3|state\(0) & (!\comb_3|state\(2) & \comb_3|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(1),
	combout => \select_your_power|oHEX_D1[2]~0_combout\);

-- Location: FF_X68_Y37_N1
\select_your_power|oHEX_D1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D1[0]~feeder_combout\,
	sclr => \comb_3|state\(1),
	ena => \select_your_power|ALT_INV_oHEX_D1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(0));

-- Location: LCCOMB_X68_Y37_N22
\select_your_power|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux4~0_combout\ = (\comb_3|state\(0) & \comb_3|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(2),
	combout => \select_your_power|Mux4~0_combout\);

-- Location: LCCOMB_X68_Y37_N2
\select_your_power|oHEX_D1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[2]~feeder_combout\ = \select_your_power|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select_your_power|Mux4~0_combout\,
	combout => \select_your_power|oHEX_D1[2]~feeder_combout\);

-- Location: FF_X68_Y37_N3
\select_your_power|oHEX_D1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D1[2]~feeder_combout\,
	sclr => \comb_3|state\(1),
	ena => \select_your_power|ALT_INV_oHEX_D1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(2));

-- Location: LCCOMB_X68_Y36_N28
\select_your_power|oHEX_D1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[4]~feeder_combout\ = \select_your_power|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \select_your_power|Mux5~0_combout\,
	combout => \select_your_power|oHEX_D1[4]~feeder_combout\);

-- Location: FF_X68_Y36_N29
\select_your_power|oHEX_D1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D1[4]~feeder_combout\,
	asdata => VCC,
	sload => \comb_3|state\(1),
	ena => \select_your_power|ALT_INV_oHEX_D1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(4));

-- Location: LCCOMB_X68_Y37_N26
\select_your_power|oHEX_D1[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[5]~1_combout\ = (\select_your_power|oHEX_D1[2]~0_combout\ & (((\select_your_power|oHEX_D1\(5))))) # (!\select_your_power|oHEX_D1[2]~0_combout\ & ((\comb_3|state\(2)) # ((\comb_3|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|state\(1),
	datac => \select_your_power|oHEX_D1\(5),
	datad => \select_your_power|oHEX_D1[2]~0_combout\,
	combout => \select_your_power|oHEX_D1[5]~1_combout\);

-- Location: FF_X68_Y37_N27
\select_your_power|oHEX_D1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D1[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(5));

-- Location: LCCOMB_X68_Y37_N12
\select_your_power|Mux4~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux4~0_wirecell_combout\ = !\select_your_power|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \select_your_power|Mux4~0_combout\,
	combout => \select_your_power|Mux4~0_wirecell_combout\);

-- Location: FF_X68_Y37_N13
\select_your_power|oHEX_D1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|Mux4~0_wirecell_combout\,
	sclr => \comb_3|state\(1),
	ena => \select_your_power|ALT_INV_oHEX_D1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(6));

-- Location: LCCOMB_X75_Y35_N24
\select_your_power|oHEX_D2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D2[0]~feeder_combout\ = \comb_3|state\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|state\(2),
	combout => \select_your_power|oHEX_D2[0]~feeder_combout\);

-- Location: LCCOMB_X63_Y35_N24
\select_your_power|oHEX_D2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D2[2]~0_combout\ = (\comb_3|state\(2) & (\comb_3|state\(0) & (\comb_3|state\(1) & !\comb_3|state\(3)))) # (!\comb_3|state\(2) & (!\comb_3|state\(1) & ((\comb_3|state\(3)) # (!\comb_3|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(2),
	datac => \comb_3|state\(1),
	datad => \comb_3|state\(3),
	combout => \select_your_power|oHEX_D2[2]~0_combout\);

-- Location: FF_X75_Y35_N25
\select_your_power|oHEX_D2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D2[0]~feeder_combout\,
	ena => \select_your_power|oHEX_D2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(0));

-- Location: LCCOMB_X63_Y35_N20
\select_your_power|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux10~0_combout\ = (\comb_3|state\(3) & !\comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datac => \comb_3|state\(0),
	combout => \select_your_power|Mux10~0_combout\);

-- Location: FF_X63_Y35_N21
\select_your_power|oHEX_D2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|Mux10~0_combout\,
	sclr => \comb_3|state\(2),
	ena => \select_your_power|oHEX_D2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(2));

-- Location: LCCOMB_X70_Y35_N8
\select_your_power|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux8~0_combout\ = (\comb_3|state\(3) & \comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|state\(3),
	datad => \comb_3|state\(0),
	combout => \select_your_power|Mux8~0_combout\);

-- Location: FF_X70_Y35_N9
\select_your_power|oHEX_D2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|Mux8~0_combout\,
	asdata => VCC,
	sload => \comb_3|state\(2),
	ena => \select_your_power|oHEX_D2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(4));

-- Location: LCCOMB_X75_Y35_N18
\select_your_power|oHEX_D2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D2[5]~feeder_combout\ = \comb_3|picked_second_power~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|picked_second_power~0_combout\,
	combout => \select_your_power|oHEX_D2[5]~feeder_combout\);

-- Location: FF_X75_Y35_N19
\select_your_power|oHEX_D2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D2[5]~feeder_combout\,
	ena => \select_your_power|oHEX_D2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(5));

-- Location: LCCOMB_X75_Y35_N20
\select_your_power|oHEX_D2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D2[6]~feeder_combout\ = \comb_3|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|Mux2~0_combout\,
	combout => \select_your_power|oHEX_D2[6]~feeder_combout\);

-- Location: FF_X75_Y35_N21
\select_your_power|oHEX_D2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D2[6]~feeder_combout\,
	ena => \select_your_power|oHEX_D2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(6));

-- Location: LCCOMB_X82_Y20_N2
\comb_3|counting_down|current_digit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit~1_combout\ = (!\comb_3|counting_down|countdown_val\(1) & \comb_3|counting_down|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|countdown_val\(1),
	datac => \comb_3|counting_down|Equal0~0_combout\,
	combout => \comb_3|counting_down|current_digit~1_combout\);

-- Location: FF_X82_Y20_N3
\comb_3|counting_down|current_digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(1));

-- Location: LCCOMB_X82_Y20_N14
\comb_3|counting_down|current_digit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit~3_combout\ = (\comb_3|counting_down|Equal0~0_combout\ & !\comb_3|counting_down|countdown_val\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal0~0_combout\,
	datad => \comb_3|counting_down|countdown_val\(3),
	combout => \comb_3|counting_down|current_digit~3_combout\);

-- Location: FF_X82_Y20_N15
\comb_3|counting_down|current_digit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(3));

-- Location: LCCOMB_X82_Y20_N0
\comb_3|counting_down|current_digit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit~2_combout\ = (\comb_3|counting_down|Equal0~0_combout\ & \comb_3|counting_down|countdown_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal0~0_combout\,
	datad => \comb_3|counting_down|countdown_val\(2),
	combout => \comb_3|counting_down|current_digit~2_combout\);

-- Location: FF_X82_Y20_N1
\comb_3|counting_down|current_digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(2));

-- Location: LCCOMB_X82_Y20_N12
\comb_3|counting_down|current_digit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit~0_combout\ = (\comb_3|counting_down|Equal0~0_combout\ & \comb_3|counting_down|countdown_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal0~0_combout\,
	datad => \comb_3|counting_down|countdown_val\(0),
	combout => \comb_3|counting_down|current_digit~0_combout\);

-- Location: FF_X82_Y20_N13
\comb_3|counting_down|current_digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(0));

-- Location: LCCOMB_X112_Y20_N16
\display_countdown|segments[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|segments[0]~0_combout\ = (!\comb_3|counting_down|current_digit\(1) & (!\comb_3|counting_down|current_digit\(3) & (\comb_3|counting_down|current_digit\(2) $ (\comb_3|counting_down|current_digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(1),
	datab => \comb_3|counting_down|current_digit\(3),
	datac => \comb_3|counting_down|current_digit\(2),
	datad => \comb_3|counting_down|current_digit\(0),
	combout => \display_countdown|segments[0]~0_combout\);

-- Location: LCCOMB_X112_Y20_N6
\display_countdown|segments[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|segments[1]~1_combout\ = (!\comb_3|counting_down|current_digit\(3) & (\comb_3|counting_down|current_digit\(2) & (\comb_3|counting_down|current_digit\(1) $ (\comb_3|counting_down|current_digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(1),
	datab => \comb_3|counting_down|current_digit\(3),
	datac => \comb_3|counting_down|current_digit\(2),
	datad => \comb_3|counting_down|current_digit\(0),
	combout => \display_countdown|segments[1]~1_combout\);

-- Location: LCCOMB_X112_Y20_N12
\display_countdown|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|Decoder0~0_combout\ = (\comb_3|counting_down|current_digit\(1) & (!\comb_3|counting_down|current_digit\(3) & (!\comb_3|counting_down|current_digit\(2) & !\comb_3|counting_down|current_digit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(1),
	datab => \comb_3|counting_down|current_digit\(3),
	datac => \comb_3|counting_down|current_digit\(2),
	datad => \comb_3|counting_down|current_digit\(0),
	combout => \display_countdown|Decoder0~0_combout\);

-- Location: LCCOMB_X112_Y20_N30
\display_countdown|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr3~0_combout\ = (!\comb_3|counting_down|current_digit\(3) & ((\comb_3|counting_down|current_digit\(1) & (\comb_3|counting_down|current_digit\(2) & \comb_3|counting_down|current_digit\(0))) # 
-- (!\comb_3|counting_down|current_digit\(1) & (\comb_3|counting_down|current_digit\(2) $ (\comb_3|counting_down|current_digit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(1),
	datab => \comb_3|counting_down|current_digit\(3),
	datac => \comb_3|counting_down|current_digit\(2),
	datad => \comb_3|counting_down|current_digit\(0),
	combout => \display_countdown|WideOr3~0_combout\);

-- Location: LCCOMB_X112_Y20_N4
\display_countdown|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr2~0_combout\ = (\comb_3|counting_down|current_digit\(1) & (!\comb_3|counting_down|current_digit\(3) & ((\comb_3|counting_down|current_digit\(0))))) # (!\comb_3|counting_down|current_digit\(1) & 
-- ((\comb_3|counting_down|current_digit\(2) & (!\comb_3|counting_down|current_digit\(3))) # (!\comb_3|counting_down|current_digit\(2) & ((\comb_3|counting_down|current_digit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(1),
	datab => \comb_3|counting_down|current_digit\(3),
	datac => \comb_3|counting_down|current_digit\(2),
	datad => \comb_3|counting_down|current_digit\(0),
	combout => \display_countdown|WideOr2~0_combout\);

-- Location: LCCOMB_X112_Y20_N10
\display_countdown|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr1~0_combout\ = (!\comb_3|counting_down|current_digit\(3) & ((\comb_3|counting_down|current_digit\(1) & ((\comb_3|counting_down|current_digit\(0)) # (!\comb_3|counting_down|current_digit\(2)))) # 
-- (!\comb_3|counting_down|current_digit\(1) & (!\comb_3|counting_down|current_digit\(2) & \comb_3|counting_down|current_digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(1),
	datab => \comb_3|counting_down|current_digit\(3),
	datac => \comb_3|counting_down|current_digit\(2),
	datad => \comb_3|counting_down|current_digit\(0),
	combout => \display_countdown|WideOr1~0_combout\);

-- Location: LCCOMB_X112_Y20_N0
\display_countdown|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr0~0_combout\ = (\comb_3|counting_down|current_digit\(1) & (!\comb_3|counting_down|current_digit\(3) & ((!\comb_3|counting_down|current_digit\(0)) # (!\comb_3|counting_down|current_digit\(2))))) # 
-- (!\comb_3|counting_down|current_digit\(1) & (\comb_3|counting_down|current_digit\(3) $ ((\comb_3|counting_down|current_digit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(1),
	datab => \comb_3|counting_down|current_digit\(3),
	datac => \comb_3|counting_down|current_digit\(2),
	datad => \comb_3|counting_down|current_digit\(0),
	combout => \display_countdown|WideOr0~0_combout\);

-- Location: LCCOMB_X43_Y57_N12
\vga|r0|Cont[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[0]~57_combout\ = (\vga|r0|Equal0~6_combout\) # (!\vga|r0|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Equal0~6_combout\,
	datac => \vga|r0|Cont\(0),
	combout => \vga|r0|Cont[0]~57_combout\);

-- Location: FF_X43_Y57_N13
\vga|r0|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(0));

-- Location: LCCOMB_X43_Y57_N14
\vga|r0|Cont[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[1]~19_combout\ = (\vga|r0|Cont\(0) & (\vga|r0|Cont\(1) $ (VCC))) # (!\vga|r0|Cont\(0) & (\vga|r0|Cont\(1) & VCC))
-- \vga|r0|Cont[1]~20\ = CARRY((\vga|r0|Cont\(0) & \vga|r0|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(0),
	datab => \vga|r0|Cont\(1),
	datad => VCC,
	combout => \vga|r0|Cont[1]~19_combout\,
	cout => \vga|r0|Cont[1]~20\);

-- Location: FF_X43_Y57_N15
\vga|r0|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[1]~19_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(1));

-- Location: LCCOMB_X43_Y57_N16
\vga|r0|Cont[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[2]~21_combout\ = (\vga|r0|Cont\(2) & (!\vga|r0|Cont[1]~20\)) # (!\vga|r0|Cont\(2) & ((\vga|r0|Cont[1]~20\) # (GND)))
-- \vga|r0|Cont[2]~22\ = CARRY((!\vga|r0|Cont[1]~20\) # (!\vga|r0|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(2),
	datad => VCC,
	cin => \vga|r0|Cont[1]~20\,
	combout => \vga|r0|Cont[2]~21_combout\,
	cout => \vga|r0|Cont[2]~22\);

-- Location: FF_X43_Y57_N17
\vga|r0|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[2]~21_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(2));

-- Location: LCCOMB_X43_Y57_N18
\vga|r0|Cont[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[3]~23_combout\ = (\vga|r0|Cont\(3) & (\vga|r0|Cont[2]~22\ $ (GND))) # (!\vga|r0|Cont\(3) & (!\vga|r0|Cont[2]~22\ & VCC))
-- \vga|r0|Cont[3]~24\ = CARRY((\vga|r0|Cont\(3) & !\vga|r0|Cont[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(3),
	datad => VCC,
	cin => \vga|r0|Cont[2]~22\,
	combout => \vga|r0|Cont[3]~23_combout\,
	cout => \vga|r0|Cont[3]~24\);

-- Location: FF_X43_Y57_N19
\vga|r0|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[3]~23_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(3));

-- Location: LCCOMB_X43_Y57_N20
\vga|r0|Cont[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[4]~25_combout\ = (\vga|r0|Cont\(4) & (!\vga|r0|Cont[3]~24\)) # (!\vga|r0|Cont\(4) & ((\vga|r0|Cont[3]~24\) # (GND)))
-- \vga|r0|Cont[4]~26\ = CARRY((!\vga|r0|Cont[3]~24\) # (!\vga|r0|Cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(4),
	datad => VCC,
	cin => \vga|r0|Cont[3]~24\,
	combout => \vga|r0|Cont[4]~25_combout\,
	cout => \vga|r0|Cont[4]~26\);

-- Location: FF_X43_Y57_N21
\vga|r0|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[4]~25_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(4));

-- Location: LCCOMB_X43_Y57_N22
\vga|r0|Cont[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[5]~27_combout\ = (\vga|r0|Cont\(5) & (\vga|r0|Cont[4]~26\ $ (GND))) # (!\vga|r0|Cont\(5) & (!\vga|r0|Cont[4]~26\ & VCC))
-- \vga|r0|Cont[5]~28\ = CARRY((\vga|r0|Cont\(5) & !\vga|r0|Cont[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(5),
	datad => VCC,
	cin => \vga|r0|Cont[4]~26\,
	combout => \vga|r0|Cont[5]~27_combout\,
	cout => \vga|r0|Cont[5]~28\);

-- Location: FF_X43_Y57_N23
\vga|r0|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[5]~27_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(5));

-- Location: LCCOMB_X43_Y57_N24
\vga|r0|Cont[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[6]~29_combout\ = (\vga|r0|Cont\(6) & (!\vga|r0|Cont[5]~28\)) # (!\vga|r0|Cont\(6) & ((\vga|r0|Cont[5]~28\) # (GND)))
-- \vga|r0|Cont[6]~30\ = CARRY((!\vga|r0|Cont[5]~28\) # (!\vga|r0|Cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(6),
	datad => VCC,
	cin => \vga|r0|Cont[5]~28\,
	combout => \vga|r0|Cont[6]~29_combout\,
	cout => \vga|r0|Cont[6]~30\);

-- Location: FF_X43_Y57_N25
\vga|r0|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[6]~29_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(6));

-- Location: LCCOMB_X43_Y57_N26
\vga|r0|Cont[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[7]~31_combout\ = (\vga|r0|Cont\(7) & (\vga|r0|Cont[6]~30\ $ (GND))) # (!\vga|r0|Cont\(7) & (!\vga|r0|Cont[6]~30\ & VCC))
-- \vga|r0|Cont[7]~32\ = CARRY((\vga|r0|Cont\(7) & !\vga|r0|Cont[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(7),
	datad => VCC,
	cin => \vga|r0|Cont[6]~30\,
	combout => \vga|r0|Cont[7]~31_combout\,
	cout => \vga|r0|Cont[7]~32\);

-- Location: FF_X43_Y57_N27
\vga|r0|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[7]~31_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(7));

-- Location: LCCOMB_X43_Y57_N28
\vga|r0|Cont[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[8]~33_combout\ = (\vga|r0|Cont\(8) & (!\vga|r0|Cont[7]~32\)) # (!\vga|r0|Cont\(8) & ((\vga|r0|Cont[7]~32\) # (GND)))
-- \vga|r0|Cont[8]~34\ = CARRY((!\vga|r0|Cont[7]~32\) # (!\vga|r0|Cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(8),
	datad => VCC,
	cin => \vga|r0|Cont[7]~32\,
	combout => \vga|r0|Cont[8]~33_combout\,
	cout => \vga|r0|Cont[8]~34\);

-- Location: FF_X43_Y57_N29
\vga|r0|Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[8]~33_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(8));

-- Location: LCCOMB_X43_Y57_N30
\vga|r0|Cont[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[9]~35_combout\ = (\vga|r0|Cont\(9) & (\vga|r0|Cont[8]~34\ $ (GND))) # (!\vga|r0|Cont\(9) & (!\vga|r0|Cont[8]~34\ & VCC))
-- \vga|r0|Cont[9]~36\ = CARRY((\vga|r0|Cont\(9) & !\vga|r0|Cont[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(9),
	datad => VCC,
	cin => \vga|r0|Cont[8]~34\,
	combout => \vga|r0|Cont[9]~35_combout\,
	cout => \vga|r0|Cont[9]~36\);

-- Location: FF_X43_Y57_N31
\vga|r0|Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[9]~35_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(9));

-- Location: LCCOMB_X43_Y56_N0
\vga|r0|Cont[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[10]~37_combout\ = (\vga|r0|Cont\(10) & (!\vga|r0|Cont[9]~36\)) # (!\vga|r0|Cont\(10) & ((\vga|r0|Cont[9]~36\) # (GND)))
-- \vga|r0|Cont[10]~38\ = CARRY((!\vga|r0|Cont[9]~36\) # (!\vga|r0|Cont\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(10),
	datad => VCC,
	cin => \vga|r0|Cont[9]~36\,
	combout => \vga|r0|Cont[10]~37_combout\,
	cout => \vga|r0|Cont[10]~38\);

-- Location: FF_X43_Y56_N1
\vga|r0|Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[10]~37_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(10));

-- Location: LCCOMB_X43_Y56_N2
\vga|r0|Cont[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[11]~39_combout\ = (\vga|r0|Cont\(11) & (\vga|r0|Cont[10]~38\ $ (GND))) # (!\vga|r0|Cont\(11) & (!\vga|r0|Cont[10]~38\ & VCC))
-- \vga|r0|Cont[11]~40\ = CARRY((\vga|r0|Cont\(11) & !\vga|r0|Cont[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(11),
	datad => VCC,
	cin => \vga|r0|Cont[10]~38\,
	combout => \vga|r0|Cont[11]~39_combout\,
	cout => \vga|r0|Cont[11]~40\);

-- Location: FF_X43_Y56_N3
\vga|r0|Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[11]~39_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(11));

-- Location: LCCOMB_X43_Y56_N4
\vga|r0|Cont[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[12]~41_combout\ = (\vga|r0|Cont\(12) & (!\vga|r0|Cont[11]~40\)) # (!\vga|r0|Cont\(12) & ((\vga|r0|Cont[11]~40\) # (GND)))
-- \vga|r0|Cont[12]~42\ = CARRY((!\vga|r0|Cont[11]~40\) # (!\vga|r0|Cont\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(12),
	datad => VCC,
	cin => \vga|r0|Cont[11]~40\,
	combout => \vga|r0|Cont[12]~41_combout\,
	cout => \vga|r0|Cont[12]~42\);

-- Location: FF_X43_Y56_N5
\vga|r0|Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[12]~41_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(12));

-- Location: LCCOMB_X43_Y56_N6
\vga|r0|Cont[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[13]~43_combout\ = (\vga|r0|Cont\(13) & (\vga|r0|Cont[12]~42\ $ (GND))) # (!\vga|r0|Cont\(13) & (!\vga|r0|Cont[12]~42\ & VCC))
-- \vga|r0|Cont[13]~44\ = CARRY((\vga|r0|Cont\(13) & !\vga|r0|Cont[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(13),
	datad => VCC,
	cin => \vga|r0|Cont[12]~42\,
	combout => \vga|r0|Cont[13]~43_combout\,
	cout => \vga|r0|Cont[13]~44\);

-- Location: FF_X43_Y56_N7
\vga|r0|Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[13]~43_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(13));

-- Location: LCCOMB_X43_Y56_N8
\vga|r0|Cont[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[14]~45_combout\ = (\vga|r0|Cont\(14) & (!\vga|r0|Cont[13]~44\)) # (!\vga|r0|Cont\(14) & ((\vga|r0|Cont[13]~44\) # (GND)))
-- \vga|r0|Cont[14]~46\ = CARRY((!\vga|r0|Cont[13]~44\) # (!\vga|r0|Cont\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(14),
	datad => VCC,
	cin => \vga|r0|Cont[13]~44\,
	combout => \vga|r0|Cont[14]~45_combout\,
	cout => \vga|r0|Cont[14]~46\);

-- Location: FF_X43_Y56_N9
\vga|r0|Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[14]~45_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(14));

-- Location: LCCOMB_X43_Y56_N10
\vga|r0|Cont[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[15]~47_combout\ = (\vga|r0|Cont\(15) & (\vga|r0|Cont[14]~46\ $ (GND))) # (!\vga|r0|Cont\(15) & (!\vga|r0|Cont[14]~46\ & VCC))
-- \vga|r0|Cont[15]~48\ = CARRY((\vga|r0|Cont\(15) & !\vga|r0|Cont[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(15),
	datad => VCC,
	cin => \vga|r0|Cont[14]~46\,
	combout => \vga|r0|Cont[15]~47_combout\,
	cout => \vga|r0|Cont[15]~48\);

-- Location: FF_X43_Y56_N11
\vga|r0|Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[15]~47_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(15));

-- Location: LCCOMB_X43_Y56_N26
\vga|r0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Equal0~5_combout\ = (\vga|r0|Cont\(15) & (\vga|r0|Cont\(14) & (\vga|r0|Cont\(12) & \vga|r0|Cont\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(15),
	datab => \vga|r0|Cont\(14),
	datac => \vga|r0|Cont\(12),
	datad => \vga|r0|Cont\(13),
	combout => \vga|r0|Equal0~5_combout\);

-- Location: LCCOMB_X43_Y56_N24
\vga|r0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Equal0~4_combout\ = (\vga|r0|Cont\(8) & (\vga|r0|Cont\(11) & (\vga|r0|Cont\(9) & \vga|r0|Cont\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(8),
	datab => \vga|r0|Cont\(11),
	datac => \vga|r0|Cont\(9),
	datad => \vga|r0|Cont\(10),
	combout => \vga|r0|Equal0~4_combout\);

-- Location: LCCOMB_X43_Y56_N12
\vga|r0|Cont[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[16]~49_combout\ = (\vga|r0|Cont\(16) & (!\vga|r0|Cont[15]~48\)) # (!\vga|r0|Cont\(16) & ((\vga|r0|Cont[15]~48\) # (GND)))
-- \vga|r0|Cont[16]~50\ = CARRY((!\vga|r0|Cont[15]~48\) # (!\vga|r0|Cont\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(16),
	datad => VCC,
	cin => \vga|r0|Cont[15]~48\,
	combout => \vga|r0|Cont[16]~49_combout\,
	cout => \vga|r0|Cont[16]~50\);

-- Location: FF_X43_Y56_N13
\vga|r0|Cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[16]~49_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(16));

-- Location: LCCOMB_X43_Y56_N14
\vga|r0|Cont[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[17]~51_combout\ = (\vga|r0|Cont\(17) & (\vga|r0|Cont[16]~50\ $ (GND))) # (!\vga|r0|Cont\(17) & (!\vga|r0|Cont[16]~50\ & VCC))
-- \vga|r0|Cont[17]~52\ = CARRY((\vga|r0|Cont\(17) & !\vga|r0|Cont[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(17),
	datad => VCC,
	cin => \vga|r0|Cont[16]~50\,
	combout => \vga|r0|Cont[17]~51_combout\,
	cout => \vga|r0|Cont[17]~52\);

-- Location: FF_X43_Y56_N15
\vga|r0|Cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[17]~51_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(17));

-- Location: LCCOMB_X43_Y56_N16
\vga|r0|Cont[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[18]~53_combout\ = (\vga|r0|Cont\(18) & (!\vga|r0|Cont[17]~52\)) # (!\vga|r0|Cont\(18) & ((\vga|r0|Cont[17]~52\) # (GND)))
-- \vga|r0|Cont[18]~54\ = CARRY((!\vga|r0|Cont[17]~52\) # (!\vga|r0|Cont\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|r0|Cont\(18),
	datad => VCC,
	cin => \vga|r0|Cont[17]~52\,
	combout => \vga|r0|Cont[18]~53_combout\,
	cout => \vga|r0|Cont[18]~54\);

-- Location: FF_X43_Y56_N17
\vga|r0|Cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[18]~53_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(18));

-- Location: LCCOMB_X43_Y56_N18
\vga|r0|Cont[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Cont[19]~55_combout\ = \vga|r0|Cont[18]~54\ $ (!\vga|r0|Cont\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|r0|Cont\(19),
	cin => \vga|r0|Cont[18]~54\,
	combout => \vga|r0|Cont[19]~55_combout\);

-- Location: FF_X43_Y56_N19
\vga|r0|Cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|Cont[19]~55_combout\,
	ena => \vga|r0|ALT_INV_Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|Cont\(19));

-- Location: LCCOMB_X43_Y56_N22
\vga|r0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Equal0~0_combout\ = (\vga|r0|Cont\(16) & (\vga|r0|Cont\(18) & (\vga|r0|Cont\(17) & \vga|r0|Cont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(16),
	datab => \vga|r0|Cont\(18),
	datac => \vga|r0|Cont\(17),
	datad => \vga|r0|Cont\(19),
	combout => \vga|r0|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y57_N10
\vga|r0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Equal0~1_combout\ = (\vga|r0|Cont\(0) & (\vga|r0|Cont\(3) & (\vga|r0|Cont\(1) & \vga|r0|Cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Cont\(0),
	datab => \vga|r0|Cont\(3),
	datac => \vga|r0|Cont\(1),
	datad => \vga|r0|Cont\(2),
	combout => \vga|r0|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y57_N0
\vga|r0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Equal0~2_combout\ = (\vga|r0|Cont\(7) & \vga|r0|Cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|r0|Cont\(7),
	datad => \vga|r0|Cont\(6),
	combout => \vga|r0|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y57_N2
\vga|r0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Equal0~3_combout\ = (\vga|r0|Equal0~1_combout\ & (\vga|r0|Equal0~2_combout\ & (\vga|r0|Cont\(5) & \vga|r0|Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Equal0~1_combout\,
	datab => \vga|r0|Equal0~2_combout\,
	datac => \vga|r0|Cont\(5),
	datad => \vga|r0|Cont\(4),
	combout => \vga|r0|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y56_N20
\vga|r0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|Equal0~6_combout\ = (\vga|r0|Equal0~5_combout\ & (\vga|r0|Equal0~4_combout\ & (\vga|r0|Equal0~0_combout\ & \vga|r0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|r0|Equal0~5_combout\,
	datab => \vga|r0|Equal0~4_combout\,
	datac => \vga|r0|Equal0~0_combout\,
	datad => \vga|r0|Equal0~3_combout\,
	combout => \vga|r0|Equal0~6_combout\);

-- Location: LCCOMB_X43_Y56_N28
\vga|r0|oRESET~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|r0|oRESET~feeder_combout\ = \vga|r0|Equal0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|r0|Equal0~6_combout\,
	combout => \vga|r0|oRESET~feeder_combout\);

-- Location: FF_X43_Y56_N29
\vga|r0|oRESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \vga|r0|oRESET~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|r0|oRESET~q\);

-- Location: PLL_1
\vga|p1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "source synchronous",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 2769,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \vga|r0|ALT_INV_oRESET~q\,
	fbin => \vga|p1|altpll_component|auto_generated|pll1~FBOUT\,
	inclk => \vga|p1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \vga|p1|altpll_component|auto_generated|pll1~FBOUT\,
	clk => \vga|p1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\vga|p1|altpll_component|auto_generated|clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y57_N6
\vga|u4|LTM_ins|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~0_combout\ = \vga|u4|LTM_ins|v_cnt\(0) $ (VCC)
-- \vga|u4|LTM_ins|Add0~1\ = CARRY(\vga|u4|LTM_ins|v_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(0),
	datad => VCC,
	combout => \vga|u4|LTM_ins|Add0~0_combout\,
	cout => \vga|u4|LTM_ins|Add0~1\);

-- Location: LCCOMB_X50_Y57_N0
\vga|u4|LTM_ins|v_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|v_cnt~3_combout\ = (\vga|u4|LTM_ins|Add0~0_combout\ & ((!\vga|u4|LTM_ins|Equal1~1_combout\) # (!\vga|u4|LTM_ins|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal1~0_combout\,
	datac => \vga|u4|LTM_ins|Equal1~1_combout\,
	datad => \vga|u4|LTM_ins|Add0~0_combout\,
	combout => \vga|u4|LTM_ins|v_cnt~3_combout\);

-- Location: LCCOMB_X48_Y57_N10
\vga|u4|LTM_ins|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~0_combout\ = \vga|u4|LTM_ins|h_cnt\(0) $ (VCC)
-- \vga|u4|LTM_ins|Add1~1\ = CARRY(\vga|u4|LTM_ins|h_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(0),
	datad => VCC,
	combout => \vga|u4|LTM_ins|Add1~0_combout\,
	cout => \vga|u4|LTM_ins|Add1~1\);

-- Location: FF_X48_Y57_N11
\vga|u4|LTM_ins|h_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~0_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(0));

-- Location: LCCOMB_X48_Y57_N12
\vga|u4|LTM_ins|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~2_combout\ = (\vga|u4|LTM_ins|h_cnt\(1) & (!\vga|u4|LTM_ins|Add1~1\)) # (!\vga|u4|LTM_ins|h_cnt\(1) & ((\vga|u4|LTM_ins|Add1~1\) # (GND)))
-- \vga|u4|LTM_ins|Add1~3\ = CARRY((!\vga|u4|LTM_ins|Add1~1\) # (!\vga|u4|LTM_ins|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(1),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~1\,
	combout => \vga|u4|LTM_ins|Add1~2_combout\,
	cout => \vga|u4|LTM_ins|Add1~3\);

-- Location: FF_X48_Y57_N13
\vga|u4|LTM_ins|h_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~2_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(1));

-- Location: LCCOMB_X48_Y57_N14
\vga|u4|LTM_ins|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~4_combout\ = (\vga|u4|LTM_ins|h_cnt\(2) & (\vga|u4|LTM_ins|Add1~3\ $ (GND))) # (!\vga|u4|LTM_ins|h_cnt\(2) & (!\vga|u4|LTM_ins|Add1~3\ & VCC))
-- \vga|u4|LTM_ins|Add1~5\ = CARRY((\vga|u4|LTM_ins|h_cnt\(2) & !\vga|u4|LTM_ins|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|h_cnt\(2),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~3\,
	combout => \vga|u4|LTM_ins|Add1~4_combout\,
	cout => \vga|u4|LTM_ins|Add1~5\);

-- Location: FF_X48_Y57_N15
\vga|u4|LTM_ins|h_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~4_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(2));

-- Location: LCCOMB_X48_Y57_N8
\vga|u4|LTM_ins|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Equal0~2_combout\ = (\vga|u4|LTM_ins|h_cnt\(0) & (\vga|u4|LTM_ins|h_cnt\(2) & \vga|u4|LTM_ins|h_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(0),
	datac => \vga|u4|LTM_ins|h_cnt\(2),
	datad => \vga|u4|LTM_ins|h_cnt\(1),
	combout => \vga|u4|LTM_ins|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y57_N16
\vga|u4|LTM_ins|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~6_combout\ = (\vga|u4|LTM_ins|h_cnt\(3) & (!\vga|u4|LTM_ins|Add1~5\)) # (!\vga|u4|LTM_ins|h_cnt\(3) & ((\vga|u4|LTM_ins|Add1~5\) # (GND)))
-- \vga|u4|LTM_ins|Add1~7\ = CARRY((!\vga|u4|LTM_ins|Add1~5\) # (!\vga|u4|LTM_ins|h_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|h_cnt\(3),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~5\,
	combout => \vga|u4|LTM_ins|Add1~6_combout\,
	cout => \vga|u4|LTM_ins|Add1~7\);

-- Location: FF_X48_Y57_N17
\vga|u4|LTM_ins|h_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~6_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(3));

-- Location: LCCOMB_X48_Y57_N18
\vga|u4|LTM_ins|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~8_combout\ = (\vga|u4|LTM_ins|h_cnt\(4) & (\vga|u4|LTM_ins|Add1~7\ $ (GND))) # (!\vga|u4|LTM_ins|h_cnt\(4) & (!\vga|u4|LTM_ins|Add1~7\ & VCC))
-- \vga|u4|LTM_ins|Add1~9\ = CARRY((\vga|u4|LTM_ins|h_cnt\(4) & !\vga|u4|LTM_ins|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|h_cnt\(4),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~7\,
	combout => \vga|u4|LTM_ins|Add1~8_combout\,
	cout => \vga|u4|LTM_ins|Add1~9\);

-- Location: FF_X48_Y57_N19
\vga|u4|LTM_ins|h_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~8_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(4));

-- Location: LCCOMB_X48_Y57_N20
\vga|u4|LTM_ins|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~10_combout\ = (\vga|u4|LTM_ins|h_cnt\(5) & (!\vga|u4|LTM_ins|Add1~9\)) # (!\vga|u4|LTM_ins|h_cnt\(5) & ((\vga|u4|LTM_ins|Add1~9\) # (GND)))
-- \vga|u4|LTM_ins|Add1~11\ = CARRY((!\vga|u4|LTM_ins|Add1~9\) # (!\vga|u4|LTM_ins|h_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|h_cnt\(5),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~9\,
	combout => \vga|u4|LTM_ins|Add1~10_combout\,
	cout => \vga|u4|LTM_ins|Add1~11\);

-- Location: LCCOMB_X48_Y57_N24
\vga|u4|LTM_ins|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~14_combout\ = (\vga|u4|LTM_ins|h_cnt\(7) & (!\vga|u4|LTM_ins|Add1~13\)) # (!\vga|u4|LTM_ins|h_cnt\(7) & ((\vga|u4|LTM_ins|Add1~13\) # (GND)))
-- \vga|u4|LTM_ins|Add1~15\ = CARRY((!\vga|u4|LTM_ins|Add1~13\) # (!\vga|u4|LTM_ins|h_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(7),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~13\,
	combout => \vga|u4|LTM_ins|Add1~14_combout\,
	cout => \vga|u4|LTM_ins|Add1~15\);

-- Location: LCCOMB_X48_Y57_N26
\vga|u4|LTM_ins|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~16_combout\ = (\vga|u4|LTM_ins|h_cnt\(8) & (\vga|u4|LTM_ins|Add1~15\ $ (GND))) # (!\vga|u4|LTM_ins|h_cnt\(8) & (!\vga|u4|LTM_ins|Add1~15\ & VCC))
-- \vga|u4|LTM_ins|Add1~17\ = CARRY((\vga|u4|LTM_ins|h_cnt\(8) & !\vga|u4|LTM_ins|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(8),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~15\,
	combout => \vga|u4|LTM_ins|Add1~16_combout\,
	cout => \vga|u4|LTM_ins|Add1~17\);

-- Location: LCCOMB_X48_Y57_N6
\vga|u4|LTM_ins|h_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|h_cnt~1_combout\ = (\vga|u4|LTM_ins|Add1~16_combout\ & (((!\vga|u4|LTM_ins|Equal0~1_combout\) # (!\vga|u4|LTM_ins|Equal0~2_combout\)) # (!\vga|u4|LTM_ins|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal0~0_combout\,
	datab => \vga|u4|LTM_ins|Equal0~2_combout\,
	datac => \vga|u4|LTM_ins|Add1~16_combout\,
	datad => \vga|u4|LTM_ins|Equal0~1_combout\,
	combout => \vga|u4|LTM_ins|h_cnt~1_combout\);

-- Location: FF_X48_Y57_N7
\vga|u4|LTM_ins|h_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|h_cnt~1_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(8));

-- Location: LCCOMB_X48_Y57_N28
\vga|u4|LTM_ins|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~18_combout\ = (\vga|u4|LTM_ins|h_cnt\(9) & (!\vga|u4|LTM_ins|Add1~17\)) # (!\vga|u4|LTM_ins|h_cnt\(9) & ((\vga|u4|LTM_ins|Add1~17\) # (GND)))
-- \vga|u4|LTM_ins|Add1~19\ = CARRY((!\vga|u4|LTM_ins|Add1~17\) # (!\vga|u4|LTM_ins|h_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|h_cnt\(9),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~17\,
	combout => \vga|u4|LTM_ins|Add1~18_combout\,
	cout => \vga|u4|LTM_ins|Add1~19\);

-- Location: LCCOMB_X48_Y57_N0
\vga|u4|LTM_ins|h_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|h_cnt~0_combout\ = (\vga|u4|LTM_ins|Add1~18_combout\ & (((!\vga|u4|LTM_ins|Equal0~1_combout\) # (!\vga|u4|LTM_ins|Equal0~2_combout\)) # (!\vga|u4|LTM_ins|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal0~0_combout\,
	datab => \vga|u4|LTM_ins|Add1~18_combout\,
	datac => \vga|u4|LTM_ins|Equal0~2_combout\,
	datad => \vga|u4|LTM_ins|Equal0~1_combout\,
	combout => \vga|u4|LTM_ins|h_cnt~0_combout\);

-- Location: FF_X48_Y57_N1
\vga|u4|LTM_ins|h_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|h_cnt~0_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(9));

-- Location: LCCOMB_X48_Y57_N2
\vga|u4|LTM_ins|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Equal0~1_combout\ = (\vga|u4|LTM_ins|h_cnt\(8) & (\vga|u4|LTM_ins|h_cnt\(9) & (\vga|u4|LTM_ins|h_cnt\(3) & \vga|u4|LTM_ins|h_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(8),
	datab => \vga|u4|LTM_ins|h_cnt\(9),
	datac => \vga|u4|LTM_ins|h_cnt\(3),
	datad => \vga|u4|LTM_ins|h_cnt\(4),
	combout => \vga|u4|LTM_ins|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y57_N4
\vga|u4|LTM_ins|h_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|h_cnt~2_combout\ = (\vga|u4|LTM_ins|Add1~10_combout\ & (((!\vga|u4|LTM_ins|Equal0~1_combout\) # (!\vga|u4|LTM_ins|Equal0~2_combout\)) # (!\vga|u4|LTM_ins|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal0~0_combout\,
	datab => \vga|u4|LTM_ins|Add1~10_combout\,
	datac => \vga|u4|LTM_ins|Equal0~2_combout\,
	datad => \vga|u4|LTM_ins|Equal0~1_combout\,
	combout => \vga|u4|LTM_ins|h_cnt~2_combout\);

-- Location: FF_X48_Y57_N5
\vga|u4|LTM_ins|h_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|h_cnt~2_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(5));

-- Location: LCCOMB_X48_Y57_N22
\vga|u4|LTM_ins|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~12_combout\ = (\vga|u4|LTM_ins|h_cnt\(6) & (\vga|u4|LTM_ins|Add1~11\ $ (GND))) # (!\vga|u4|LTM_ins|h_cnt\(6) & (!\vga|u4|LTM_ins|Add1~11\ & VCC))
-- \vga|u4|LTM_ins|Add1~13\ = CARRY((\vga|u4|LTM_ins|h_cnt\(6) & !\vga|u4|LTM_ins|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(6),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add1~11\,
	combout => \vga|u4|LTM_ins|Add1~12_combout\,
	cout => \vga|u4|LTM_ins|Add1~13\);

-- Location: FF_X48_Y57_N23
\vga|u4|LTM_ins|h_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~12_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(6));

-- Location: FF_X48_Y57_N25
\vga|u4|LTM_ins|h_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~14_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(7));

-- Location: LCCOMB_X48_Y57_N30
\vga|u4|LTM_ins|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add1~20_combout\ = \vga|u4|LTM_ins|h_cnt\(10) $ (!\vga|u4|LTM_ins|Add1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(10),
	cin => \vga|u4|LTM_ins|Add1~19\,
	combout => \vga|u4|LTM_ins|Add1~20_combout\);

-- Location: FF_X48_Y57_N31
\vga|u4|LTM_ins|h_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add1~20_combout\,
	clrn => \vga|r0|oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|h_cnt\(10));

-- Location: LCCOMB_X49_Y57_N20
\vga|u4|LTM_ins|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Equal0~0_combout\ = (!\vga|u4|LTM_ins|h_cnt\(7) & (!\vga|u4|LTM_ins|h_cnt\(6) & (!\vga|u4|LTM_ins|h_cnt\(5) & !\vga|u4|LTM_ins|h_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(7),
	datab => \vga|u4|LTM_ins|h_cnt\(6),
	datac => \vga|u4|LTM_ins|h_cnt\(5),
	datad => \vga|u4|LTM_ins|h_cnt\(10),
	combout => \vga|u4|LTM_ins|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y57_N6
\vga|u4|LTM_ins|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Equal0~3_combout\ = (\vga|u4|LTM_ins|Equal0~2_combout\ & (\vga|u4|LTM_ins|Equal0~0_combout\ & \vga|u4|LTM_ins|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal0~2_combout\,
	datab => \vga|u4|LTM_ins|Equal0~0_combout\,
	datad => \vga|u4|LTM_ins|Equal0~1_combout\,
	combout => \vga|u4|LTM_ins|Equal0~3_combout\);

-- Location: FF_X50_Y57_N1
\vga|u4|LTM_ins|v_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|v_cnt~3_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(0));

-- Location: LCCOMB_X50_Y57_N8
\vga|u4|LTM_ins|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~2_combout\ = (\vga|u4|LTM_ins|v_cnt\(1) & (!\vga|u4|LTM_ins|Add0~1\)) # (!\vga|u4|LTM_ins|v_cnt\(1) & ((\vga|u4|LTM_ins|Add0~1\) # (GND)))
-- \vga|u4|LTM_ins|Add0~3\ = CARRY((!\vga|u4|LTM_ins|Add0~1\) # (!\vga|u4|LTM_ins|v_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(1),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~1\,
	combout => \vga|u4|LTM_ins|Add0~2_combout\,
	cout => \vga|u4|LTM_ins|Add0~3\);

-- Location: FF_X50_Y57_N9
\vga|u4|LTM_ins|v_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add0~2_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(1));

-- Location: LCCOMB_X50_Y57_N10
\vga|u4|LTM_ins|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~4_combout\ = (\vga|u4|LTM_ins|v_cnt\(2) & (\vga|u4|LTM_ins|Add0~3\ $ (GND))) # (!\vga|u4|LTM_ins|v_cnt\(2) & (!\vga|u4|LTM_ins|Add0~3\ & VCC))
-- \vga|u4|LTM_ins|Add0~5\ = CARRY((\vga|u4|LTM_ins|v_cnt\(2) & !\vga|u4|LTM_ins|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(2),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~3\,
	combout => \vga|u4|LTM_ins|Add0~4_combout\,
	cout => \vga|u4|LTM_ins|Add0~5\);

-- Location: LCCOMB_X50_Y57_N4
\vga|u4|LTM_ins|v_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|v_cnt~1_combout\ = (\vga|u4|LTM_ins|Add0~4_combout\ & ((!\vga|u4|LTM_ins|Equal1~1_combout\) # (!\vga|u4|LTM_ins|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal1~0_combout\,
	datac => \vga|u4|LTM_ins|Equal1~1_combout\,
	datad => \vga|u4|LTM_ins|Add0~4_combout\,
	combout => \vga|u4|LTM_ins|v_cnt~1_combout\);

-- Location: FF_X50_Y57_N5
\vga|u4|LTM_ins|v_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|v_cnt~1_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(2));

-- Location: LCCOMB_X50_Y57_N26
\vga|u4|LTM_ins|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Equal1~1_combout\ = (\vga|u4|LTM_ins|v_cnt\(3) & (!\vga|u4|LTM_ins|v_cnt\(0) & (\vga|u4|LTM_ins|v_cnt\(2) & \vga|u4|LTM_ins|v_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(3),
	datab => \vga|u4|LTM_ins|v_cnt\(0),
	datac => \vga|u4|LTM_ins|v_cnt\(2),
	datad => \vga|u4|LTM_ins|v_cnt\(9),
	combout => \vga|u4|LTM_ins|Equal1~1_combout\);

-- Location: LCCOMB_X50_Y57_N12
\vga|u4|LTM_ins|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~6_combout\ = (\vga|u4|LTM_ins|v_cnt\(3) & (!\vga|u4|LTM_ins|Add0~5\)) # (!\vga|u4|LTM_ins|v_cnt\(3) & ((\vga|u4|LTM_ins|Add0~5\) # (GND)))
-- \vga|u4|LTM_ins|Add0~7\ = CARRY((!\vga|u4|LTM_ins|Add0~5\) # (!\vga|u4|LTM_ins|v_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(3),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~5\,
	combout => \vga|u4|LTM_ins|Add0~6_combout\,
	cout => \vga|u4|LTM_ins|Add0~7\);

-- Location: LCCOMB_X50_Y57_N30
\vga|u4|LTM_ins|v_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|v_cnt~0_combout\ = (\vga|u4|LTM_ins|Add0~6_combout\ & ((!\vga|u4|LTM_ins|Equal1~1_combout\) # (!\vga|u4|LTM_ins|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal1~0_combout\,
	datac => \vga|u4|LTM_ins|Equal1~1_combout\,
	datad => \vga|u4|LTM_ins|Add0~6_combout\,
	combout => \vga|u4|LTM_ins|v_cnt~0_combout\);

-- Location: FF_X50_Y57_N31
\vga|u4|LTM_ins|v_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|v_cnt~0_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(3));

-- Location: LCCOMB_X50_Y57_N14
\vga|u4|LTM_ins|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~8_combout\ = (\vga|u4|LTM_ins|v_cnt\(4) & (\vga|u4|LTM_ins|Add0~7\ $ (GND))) # (!\vga|u4|LTM_ins|v_cnt\(4) & (!\vga|u4|LTM_ins|Add0~7\ & VCC))
-- \vga|u4|LTM_ins|Add0~9\ = CARRY((\vga|u4|LTM_ins|v_cnt\(4) & !\vga|u4|LTM_ins|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(4),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~7\,
	combout => \vga|u4|LTM_ins|Add0~8_combout\,
	cout => \vga|u4|LTM_ins|Add0~9\);

-- Location: FF_X50_Y57_N15
\vga|u4|LTM_ins|v_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add0~8_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(4));

-- Location: LCCOMB_X50_Y57_N16
\vga|u4|LTM_ins|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~10_combout\ = (\vga|u4|LTM_ins|v_cnt\(5) & (!\vga|u4|LTM_ins|Add0~9\)) # (!\vga|u4|LTM_ins|v_cnt\(5) & ((\vga|u4|LTM_ins|Add0~9\) # (GND)))
-- \vga|u4|LTM_ins|Add0~11\ = CARRY((!\vga|u4|LTM_ins|Add0~9\) # (!\vga|u4|LTM_ins|v_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(5),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~9\,
	combout => \vga|u4|LTM_ins|Add0~10_combout\,
	cout => \vga|u4|LTM_ins|Add0~11\);

-- Location: FF_X50_Y57_N17
\vga|u4|LTM_ins|v_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add0~10_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(5));

-- Location: LCCOMB_X50_Y57_N18
\vga|u4|LTM_ins|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~12_combout\ = (\vga|u4|LTM_ins|v_cnt\(6) & (\vga|u4|LTM_ins|Add0~11\ $ (GND))) # (!\vga|u4|LTM_ins|v_cnt\(6) & (!\vga|u4|LTM_ins|Add0~11\ & VCC))
-- \vga|u4|LTM_ins|Add0~13\ = CARRY((\vga|u4|LTM_ins|v_cnt\(6) & !\vga|u4|LTM_ins|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(6),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~11\,
	combout => \vga|u4|LTM_ins|Add0~12_combout\,
	cout => \vga|u4|LTM_ins|Add0~13\);

-- Location: FF_X50_Y57_N19
\vga|u4|LTM_ins|v_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add0~12_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(6));

-- Location: LCCOMB_X50_Y57_N20
\vga|u4|LTM_ins|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~14_combout\ = (\vga|u4|LTM_ins|v_cnt\(7) & (!\vga|u4|LTM_ins|Add0~13\)) # (!\vga|u4|LTM_ins|v_cnt\(7) & ((\vga|u4|LTM_ins|Add0~13\) # (GND)))
-- \vga|u4|LTM_ins|Add0~15\ = CARRY((!\vga|u4|LTM_ins|Add0~13\) # (!\vga|u4|LTM_ins|v_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(7),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~13\,
	combout => \vga|u4|LTM_ins|Add0~14_combout\,
	cout => \vga|u4|LTM_ins|Add0~15\);

-- Location: FF_X50_Y57_N21
\vga|u4|LTM_ins|v_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add0~14_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(7));

-- Location: LCCOMB_X50_Y57_N22
\vga|u4|LTM_ins|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~16_combout\ = (\vga|u4|LTM_ins|v_cnt\(8) & (\vga|u4|LTM_ins|Add0~15\ $ (GND))) # (!\vga|u4|LTM_ins|v_cnt\(8) & (!\vga|u4|LTM_ins|Add0~15\ & VCC))
-- \vga|u4|LTM_ins|Add0~17\ = CARRY((\vga|u4|LTM_ins|v_cnt\(8) & !\vga|u4|LTM_ins|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(8),
	datad => VCC,
	cin => \vga|u4|LTM_ins|Add0~15\,
	combout => \vga|u4|LTM_ins|Add0~16_combout\,
	cout => \vga|u4|LTM_ins|Add0~17\);

-- Location: FF_X50_Y57_N23
\vga|u4|LTM_ins|v_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|Add0~16_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(8));

-- Location: LCCOMB_X50_Y57_N28
\vga|u4|LTM_ins|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|LessThan5~0_combout\ = (!\vga|u4|LTM_ins|v_cnt\(7) & (!\vga|u4|LTM_ins|v_cnt\(8) & !\vga|u4|LTM_ins|v_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(7),
	datac => \vga|u4|LTM_ins|v_cnt\(8),
	datad => \vga|u4|LTM_ins|v_cnt\(6),
	combout => \vga|u4|LTM_ins|LessThan5~0_combout\);

-- Location: LCCOMB_X49_Y57_N14
\vga|u4|LTM_ins|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Equal1~0_combout\ = (!\vga|u4|LTM_ins|v_cnt\(4) & (\vga|u4|LTM_ins|LessThan5~0_combout\ & (!\vga|u4|LTM_ins|v_cnt\(1) & !\vga|u4|LTM_ins|v_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(4),
	datab => \vga|u4|LTM_ins|LessThan5~0_combout\,
	datac => \vga|u4|LTM_ins|v_cnt\(1),
	datad => \vga|u4|LTM_ins|v_cnt\(5),
	combout => \vga|u4|LTM_ins|Equal1~0_combout\);

-- Location: LCCOMB_X50_Y57_N24
\vga|u4|LTM_ins|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|Add0~18_combout\ = \vga|u4|LTM_ins|v_cnt\(9) $ (\vga|u4|LTM_ins|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|v_cnt\(9),
	cin => \vga|u4|LTM_ins|Add0~17\,
	combout => \vga|u4|LTM_ins|Add0~18_combout\);

-- Location: LCCOMB_X50_Y57_N2
\vga|u4|LTM_ins|v_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|v_cnt~2_combout\ = (\vga|u4|LTM_ins|Add0~18_combout\ & ((!\vga|u4|LTM_ins|Equal1~1_combout\) # (!\vga|u4|LTM_ins|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|Equal1~0_combout\,
	datac => \vga|u4|LTM_ins|Equal1~1_combout\,
	datad => \vga|u4|LTM_ins|Add0~18_combout\,
	combout => \vga|u4|LTM_ins|v_cnt~2_combout\);

-- Location: FF_X50_Y57_N3
\vga|u4|LTM_ins|v_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|v_cnt~2_combout\,
	clrn => \vga|r0|oRESET~q\,
	ena => \vga|u4|LTM_ins|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|v_cnt\(9));

-- Location: LCCOMB_X49_Y57_N12
\vga|u4|LTM_ins|cDEN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|cDEN~0_combout\ = ((\vga|u4|LTM_ins|Equal1~0_combout\ & (!\vga|u4|LTM_ins|v_cnt\(3) & !\vga|u4|LTM_ins|v_cnt\(2)))) # (!\vga|u4|LTM_ins|v_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(9),
	datab => \vga|u4|LTM_ins|Equal1~0_combout\,
	datac => \vga|u4|LTM_ins|v_cnt\(3),
	datad => \vga|u4|LTM_ins|v_cnt\(2),
	combout => \vga|u4|LTM_ins|cDEN~0_combout\);

-- Location: LCCOMB_X49_Y57_N26
\vga|u4|LTM_ins|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|LessThan5~1_combout\ = (!\vga|u4|LTM_ins|v_cnt\(3) & (!\vga|u4|LTM_ins|v_cnt\(4) & (!\vga|u4|LTM_ins|v_cnt\(1) & !\vga|u4|LTM_ins|v_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(3),
	datab => \vga|u4|LTM_ins|v_cnt\(4),
	datac => \vga|u4|LTM_ins|v_cnt\(1),
	datad => \vga|u4|LTM_ins|v_cnt\(2),
	combout => \vga|u4|LTM_ins|LessThan5~1_combout\);

-- Location: LCCOMB_X49_Y57_N24
\vga|u4|LTM_ins|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|LessThan5~2_combout\ = (!\vga|u4|LTM_ins|v_cnt\(9) & (\vga|u4|LTM_ins|LessThan5~0_combout\ & ((\vga|u4|LTM_ins|LessThan5~1_combout\) # (!\vga|u4|LTM_ins|v_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(9),
	datab => \vga|u4|LTM_ins|LessThan5~0_combout\,
	datac => \vga|u4|LTM_ins|LessThan5~1_combout\,
	datad => \vga|u4|LTM_ins|v_cnt\(5),
	combout => \vga|u4|LTM_ins|LessThan5~2_combout\);

-- Location: LCCOMB_X49_Y57_N10
\vga|u4|LTM_ins|cDEN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|cDEN~1_combout\ = (\vga|u4|LTM_ins|h_cnt\(6)) # ((\vga|u4|LTM_ins|h_cnt\(5)) # (\vga|u4|LTM_ins|h_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|h_cnt\(6),
	datac => \vga|u4|LTM_ins|h_cnt\(5),
	datad => \vga|u4|LTM_ins|h_cnt\(4),
	combout => \vga|u4|LTM_ins|cDEN~1_combout\);

-- Location: LCCOMB_X49_Y57_N4
\vga|u4|LTM_ins|cDEN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|cDEN~2_combout\ = (\vga|u4|LTM_ins|h_cnt\(8) & (((!\vga|u4|LTM_ins|cDEN~1_combout\ & !\vga|u4|LTM_ins|h_cnt\(7))) # (!\vga|u4|LTM_ins|h_cnt\(9)))) # (!\vga|u4|LTM_ins|h_cnt\(8) & ((\vga|u4|LTM_ins|h_cnt\(9)) # 
-- ((\vga|u4|LTM_ins|cDEN~1_combout\ & \vga|u4|LTM_ins|h_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|cDEN~1_combout\,
	datab => \vga|u4|LTM_ins|h_cnt\(8),
	datac => \vga|u4|LTM_ins|h_cnt\(9),
	datad => \vga|u4|LTM_ins|h_cnt\(7),
	combout => \vga|u4|LTM_ins|cDEN~2_combout\);

-- Location: LCCOMB_X49_Y57_N16
\vga|u4|LTM_ins|cDEN~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|cDEN~3_combout\ = (\vga|u4|LTM_ins|cDEN~0_combout\ & (!\vga|u4|LTM_ins|LessThan5~2_combout\ & (\vga|u4|LTM_ins|cDEN~2_combout\ & !\vga|u4|LTM_ins|h_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|cDEN~0_combout\,
	datab => \vga|u4|LTM_ins|LessThan5~2_combout\,
	datac => \vga|u4|LTM_ins|cDEN~2_combout\,
	datad => \vga|u4|LTM_ins|h_cnt\(10),
	combout => \vga|u4|LTM_ins|cDEN~3_combout\);

-- Location: FF_X49_Y57_N17
\vga|u4|LTM_ins|blank_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|cDEN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|blank_n~q\);

-- Location: LCCOMB_X45_Y57_N12
\vga|u4|oBLANK_n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|oBLANK_n~feeder_combout\ = \vga|u4|LTM_ins|blank_n~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|u4|LTM_ins|blank_n~q\,
	combout => \vga|u4|oBLANK_n~feeder_combout\);

-- Location: FF_X45_Y57_N13
\vga|u4|oBLANK_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|oBLANK_n~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|oBLANK_n~q\);

-- Location: LCCOMB_X49_Y57_N22
\vga|u4|LTM_ins|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|LessThan0~0_combout\ = (!\vga|u4|LTM_ins|h_cnt\(9) & (!\vga|u4|LTM_ins|h_cnt\(8) & ((!\vga|u4|LTM_ins|h_cnt\(6)) # (!\vga|u4|LTM_ins|h_cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|h_cnt\(9),
	datab => \vga|u4|LTM_ins|h_cnt\(8),
	datac => \vga|u4|LTM_ins|h_cnt\(5),
	datad => \vga|u4|LTM_ins|h_cnt\(6),
	combout => \vga|u4|LTM_ins|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y57_N2
\vga|u4|LTM_ins|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|LessThan0~1_combout\ = (\vga|u4|LTM_ins|h_cnt\(7)) # ((\vga|u4|LTM_ins|h_cnt\(10)) # (!\vga|u4|LTM_ins|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|LTM_ins|h_cnt\(7),
	datac => \vga|u4|LTM_ins|LessThan0~0_combout\,
	datad => \vga|u4|LTM_ins|h_cnt\(10),
	combout => \vga|u4|LTM_ins|LessThan0~1_combout\);

-- Location: FF_X49_Y57_N3
\vga|u4|LTM_ins|HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|HS~q\);

-- Location: LCCOMB_X45_Y57_N10
\vga|u4|oHS~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|oHS~feeder_combout\ = \vga|u4|LTM_ins|HS~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga|u4|LTM_ins|HS~q\,
	combout => \vga|u4|oHS~feeder_combout\);

-- Location: FF_X45_Y57_N11
\vga|u4|oHS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|oHS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|oHS~q\);

-- Location: LCCOMB_X49_Y57_N0
\vga|u4|LTM_ins|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|LTM_ins|LessThan1~0_combout\ = (\vga|u4|LTM_ins|v_cnt\(9)) # (((\vga|u4|LTM_ins|v_cnt\(3)) # (\vga|u4|LTM_ins|v_cnt\(2))) # (!\vga|u4|LTM_ins|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|v_cnt\(9),
	datab => \vga|u4|LTM_ins|Equal1~0_combout\,
	datac => \vga|u4|LTM_ins|v_cnt\(3),
	datad => \vga|u4|LTM_ins|v_cnt\(2),
	combout => \vga|u4|LTM_ins|LessThan1~0_combout\);

-- Location: FF_X49_Y57_N1
\vga|u4|LTM_ins|VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	d => \vga|u4|LTM_ins|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|LTM_ins|VS~q\);

-- Location: FF_X48_Y57_N21
\vga|u4|oVS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|ALT_INV_clk[0]~clkctrl_outclk\,
	asdata => \vga|u4|LTM_ins|VS~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|oVS~q\);

-- Location: LCCOMB_X45_Y57_N14
\vga|u4|ADDR[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[0]~19_combout\ = (\vga|u4|LTM_ins|blank_n~q\ & (\vga|u4|ADDR\(0) $ (VCC))) # (!\vga|u4|LTM_ins|blank_n~q\ & (\vga|u4|ADDR\(0) & VCC))
-- \vga|u4|ADDR[0]~20\ = CARRY((\vga|u4|LTM_ins|blank_n~q\ & \vga|u4|ADDR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|LTM_ins|blank_n~q\,
	datab => \vga|u4|ADDR\(0),
	datad => VCC,
	combout => \vga|u4|ADDR[0]~19_combout\,
	cout => \vga|u4|ADDR[0]~20\);

-- Location: LCCOMB_X45_Y57_N4
\vga|u4|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|always0~0_combout\ = (!\vga|u4|LTM_ins|VS~q\ & !\vga|u4|LTM_ins|HS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga|u4|LTM_ins|VS~q\,
	datad => \vga|u4|LTM_ins|HS~q\,
	combout => \vga|u4|always0~0_combout\);

-- Location: FF_X45_Y57_N15
\vga|u4|ADDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[0]~19_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(0));

-- Location: LCCOMB_X45_Y57_N16
\vga|u4|ADDR[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[1]~21_combout\ = (\vga|u4|ADDR\(1) & (!\vga|u4|ADDR[0]~20\)) # (!\vga|u4|ADDR\(1) & ((\vga|u4|ADDR[0]~20\) # (GND)))
-- \vga|u4|ADDR[1]~22\ = CARRY((!\vga|u4|ADDR[0]~20\) # (!\vga|u4|ADDR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(1),
	datad => VCC,
	cin => \vga|u4|ADDR[0]~20\,
	combout => \vga|u4|ADDR[1]~21_combout\,
	cout => \vga|u4|ADDR[1]~22\);

-- Location: FF_X45_Y57_N17
\vga|u4|ADDR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[1]~21_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(1));

-- Location: LCCOMB_X45_Y57_N18
\vga|u4|ADDR[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[2]~23_combout\ = (\vga|u4|ADDR\(2) & (\vga|u4|ADDR[1]~22\ $ (GND))) # (!\vga|u4|ADDR\(2) & (!\vga|u4|ADDR[1]~22\ & VCC))
-- \vga|u4|ADDR[2]~24\ = CARRY((\vga|u4|ADDR\(2) & !\vga|u4|ADDR[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(2),
	datad => VCC,
	cin => \vga|u4|ADDR[1]~22\,
	combout => \vga|u4|ADDR[2]~23_combout\,
	cout => \vga|u4|ADDR[2]~24\);

-- Location: FF_X45_Y57_N19
\vga|u4|ADDR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[2]~23_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(2));

-- Location: LCCOMB_X45_Y57_N20
\vga|u4|ADDR[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[3]~25_combout\ = (\vga|u4|ADDR\(3) & (!\vga|u4|ADDR[2]~24\)) # (!\vga|u4|ADDR\(3) & ((\vga|u4|ADDR[2]~24\) # (GND)))
-- \vga|u4|ADDR[3]~26\ = CARRY((!\vga|u4|ADDR[2]~24\) # (!\vga|u4|ADDR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(3),
	datad => VCC,
	cin => \vga|u4|ADDR[2]~24\,
	combout => \vga|u4|ADDR[3]~25_combout\,
	cout => \vga|u4|ADDR[3]~26\);

-- Location: FF_X45_Y57_N21
\vga|u4|ADDR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[3]~25_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(3));

-- Location: LCCOMB_X45_Y57_N22
\vga|u4|ADDR[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[4]~27_combout\ = (\vga|u4|ADDR\(4) & (\vga|u4|ADDR[3]~26\ $ (GND))) # (!\vga|u4|ADDR\(4) & (!\vga|u4|ADDR[3]~26\ & VCC))
-- \vga|u4|ADDR[4]~28\ = CARRY((\vga|u4|ADDR\(4) & !\vga|u4|ADDR[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(4),
	datad => VCC,
	cin => \vga|u4|ADDR[3]~26\,
	combout => \vga|u4|ADDR[4]~27_combout\,
	cout => \vga|u4|ADDR[4]~28\);

-- Location: FF_X45_Y57_N23
\vga|u4|ADDR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[4]~27_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(4));

-- Location: LCCOMB_X45_Y57_N24
\vga|u4|ADDR[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[5]~29_combout\ = (\vga|u4|ADDR\(5) & (!\vga|u4|ADDR[4]~28\)) # (!\vga|u4|ADDR\(5) & ((\vga|u4|ADDR[4]~28\) # (GND)))
-- \vga|u4|ADDR[5]~30\ = CARRY((!\vga|u4|ADDR[4]~28\) # (!\vga|u4|ADDR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(5),
	datad => VCC,
	cin => \vga|u4|ADDR[4]~28\,
	combout => \vga|u4|ADDR[5]~29_combout\,
	cout => \vga|u4|ADDR[5]~30\);

-- Location: FF_X45_Y57_N25
\vga|u4|ADDR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[5]~29_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(5));

-- Location: LCCOMB_X45_Y57_N26
\vga|u4|ADDR[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[6]~31_combout\ = (\vga|u4|ADDR\(6) & (\vga|u4|ADDR[5]~30\ $ (GND))) # (!\vga|u4|ADDR\(6) & (!\vga|u4|ADDR[5]~30\ & VCC))
-- \vga|u4|ADDR[6]~32\ = CARRY((\vga|u4|ADDR\(6) & !\vga|u4|ADDR[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(6),
	datad => VCC,
	cin => \vga|u4|ADDR[5]~30\,
	combout => \vga|u4|ADDR[6]~31_combout\,
	cout => \vga|u4|ADDR[6]~32\);

-- Location: FF_X45_Y57_N27
\vga|u4|ADDR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[6]~31_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(6));

-- Location: LCCOMB_X45_Y57_N28
\vga|u4|ADDR[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[7]~33_combout\ = (\vga|u4|ADDR\(7) & (!\vga|u4|ADDR[6]~32\)) # (!\vga|u4|ADDR\(7) & ((\vga|u4|ADDR[6]~32\) # (GND)))
-- \vga|u4|ADDR[7]~34\ = CARRY((!\vga|u4|ADDR[6]~32\) # (!\vga|u4|ADDR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(7),
	datad => VCC,
	cin => \vga|u4|ADDR[6]~32\,
	combout => \vga|u4|ADDR[7]~33_combout\,
	cout => \vga|u4|ADDR[7]~34\);

-- Location: FF_X45_Y57_N29
\vga|u4|ADDR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[7]~33_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(7));

-- Location: LCCOMB_X45_Y57_N30
\vga|u4|ADDR[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[8]~35_combout\ = (\vga|u4|ADDR\(8) & (\vga|u4|ADDR[7]~34\ $ (GND))) # (!\vga|u4|ADDR\(8) & (!\vga|u4|ADDR[7]~34\ & VCC))
-- \vga|u4|ADDR[8]~36\ = CARRY((\vga|u4|ADDR\(8) & !\vga|u4|ADDR[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(8),
	datad => VCC,
	cin => \vga|u4|ADDR[7]~34\,
	combout => \vga|u4|ADDR[8]~35_combout\,
	cout => \vga|u4|ADDR[8]~36\);

-- Location: FF_X45_Y57_N31
\vga|u4|ADDR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[8]~35_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(8));

-- Location: LCCOMB_X45_Y56_N0
\vga|u4|ADDR[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[9]~37_combout\ = (\vga|u4|ADDR\(9) & (!\vga|u4|ADDR[8]~36\)) # (!\vga|u4|ADDR\(9) & ((\vga|u4|ADDR[8]~36\) # (GND)))
-- \vga|u4|ADDR[9]~38\ = CARRY((!\vga|u4|ADDR[8]~36\) # (!\vga|u4|ADDR\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(9),
	datad => VCC,
	cin => \vga|u4|ADDR[8]~36\,
	combout => \vga|u4|ADDR[9]~37_combout\,
	cout => \vga|u4|ADDR[9]~38\);

-- Location: FF_X45_Y56_N1
\vga|u4|ADDR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[9]~37_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(9));

-- Location: LCCOMB_X45_Y56_N2
\vga|u4|ADDR[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[10]~39_combout\ = (\vga|u4|ADDR\(10) & (\vga|u4|ADDR[9]~38\ $ (GND))) # (!\vga|u4|ADDR\(10) & (!\vga|u4|ADDR[9]~38\ & VCC))
-- \vga|u4|ADDR[10]~40\ = CARRY((\vga|u4|ADDR\(10) & !\vga|u4|ADDR[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(10),
	datad => VCC,
	cin => \vga|u4|ADDR[9]~38\,
	combout => \vga|u4|ADDR[10]~39_combout\,
	cout => \vga|u4|ADDR[10]~40\);

-- Location: FF_X45_Y56_N3
\vga|u4|ADDR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[10]~39_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(10));

-- Location: LCCOMB_X45_Y56_N4
\vga|u4|ADDR[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[11]~41_combout\ = (\vga|u4|ADDR\(11) & (!\vga|u4|ADDR[10]~40\)) # (!\vga|u4|ADDR\(11) & ((\vga|u4|ADDR[10]~40\) # (GND)))
-- \vga|u4|ADDR[11]~42\ = CARRY((!\vga|u4|ADDR[10]~40\) # (!\vga|u4|ADDR\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(11),
	datad => VCC,
	cin => \vga|u4|ADDR[10]~40\,
	combout => \vga|u4|ADDR[11]~41_combout\,
	cout => \vga|u4|ADDR[11]~42\);

-- Location: FF_X45_Y56_N5
\vga|u4|ADDR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[11]~41_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(11));

-- Location: LCCOMB_X45_Y56_N6
\vga|u4|ADDR[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[12]~43_combout\ = (\vga|u4|ADDR\(12) & (\vga|u4|ADDR[11]~42\ $ (GND))) # (!\vga|u4|ADDR\(12) & (!\vga|u4|ADDR[11]~42\ & VCC))
-- \vga|u4|ADDR[12]~44\ = CARRY((\vga|u4|ADDR\(12) & !\vga|u4|ADDR[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(12),
	datad => VCC,
	cin => \vga|u4|ADDR[11]~42\,
	combout => \vga|u4|ADDR[12]~43_combout\,
	cout => \vga|u4|ADDR[12]~44\);

-- Location: FF_X45_Y56_N7
\vga|u4|ADDR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[12]~43_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(12));

-- Location: LCCOMB_X45_Y56_N8
\vga|u4|ADDR[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[13]~45_combout\ = (\vga|u4|ADDR\(13) & (!\vga|u4|ADDR[12]~44\)) # (!\vga|u4|ADDR\(13) & ((\vga|u4|ADDR[12]~44\) # (GND)))
-- \vga|u4|ADDR[13]~46\ = CARRY((!\vga|u4|ADDR[12]~44\) # (!\vga|u4|ADDR\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(13),
	datad => VCC,
	cin => \vga|u4|ADDR[12]~44\,
	combout => \vga|u4|ADDR[13]~45_combout\,
	cout => \vga|u4|ADDR[13]~46\);

-- Location: FF_X45_Y56_N9
\vga|u4|ADDR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[13]~45_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(13));

-- Location: LCCOMB_X45_Y56_N10
\vga|u4|ADDR[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[14]~47_combout\ = (\vga|u4|ADDR\(14) & (\vga|u4|ADDR[13]~46\ $ (GND))) # (!\vga|u4|ADDR\(14) & (!\vga|u4|ADDR[13]~46\ & VCC))
-- \vga|u4|ADDR[14]~48\ = CARRY((\vga|u4|ADDR\(14) & !\vga|u4|ADDR[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(14),
	datad => VCC,
	cin => \vga|u4|ADDR[13]~46\,
	combout => \vga|u4|ADDR[14]~47_combout\,
	cout => \vga|u4|ADDR[14]~48\);

-- Location: FF_X45_Y56_N11
\vga|u4|ADDR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[14]~47_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(14));

-- Location: LCCOMB_X45_Y56_N30
\vga|u4|g_data[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|g_data[0]~7_combout\ = (\vga|u4|ADDR\(8)) # ((\vga|u4|ADDR\(10)) # ((\vga|u4|ADDR\(11)) # (\vga|u4|ADDR\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(8),
	datab => \vga|u4|ADDR\(10),
	datac => \vga|u4|ADDR\(11),
	datad => \vga|u4|ADDR\(9),
	combout => \vga|u4|g_data[0]~7_combout\);

-- Location: LCCOMB_X45_Y56_N12
\vga|u4|ADDR[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[15]~49_combout\ = (\vga|u4|ADDR\(15) & (!\vga|u4|ADDR[14]~48\)) # (!\vga|u4|ADDR\(15) & ((\vga|u4|ADDR[14]~48\) # (GND)))
-- \vga|u4|ADDR[15]~50\ = CARRY((!\vga|u4|ADDR[14]~48\) # (!\vga|u4|ADDR\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(15),
	datad => VCC,
	cin => \vga|u4|ADDR[14]~48\,
	combout => \vga|u4|ADDR[15]~49_combout\,
	cout => \vga|u4|ADDR[15]~50\);

-- Location: FF_X45_Y56_N13
\vga|u4|ADDR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[15]~49_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(15));

-- Location: LCCOMB_X45_Y56_N14
\vga|u4|ADDR[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[16]~51_combout\ = (\vga|u4|ADDR\(16) & (\vga|u4|ADDR[15]~50\ $ (GND))) # (!\vga|u4|ADDR\(16) & (!\vga|u4|ADDR[15]~50\ & VCC))
-- \vga|u4|ADDR[16]~52\ = CARRY((\vga|u4|ADDR\(16) & !\vga|u4|ADDR[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(16),
	datad => VCC,
	cin => \vga|u4|ADDR[15]~50\,
	combout => \vga|u4|ADDR[16]~51_combout\,
	cout => \vga|u4|ADDR[16]~52\);

-- Location: FF_X45_Y56_N15
\vga|u4|ADDR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[16]~51_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(16));

-- Location: LCCOMB_X45_Y56_N16
\vga|u4|ADDR[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[17]~53_combout\ = (\vga|u4|ADDR\(17) & (!\vga|u4|ADDR[16]~52\)) # (!\vga|u4|ADDR\(17) & ((\vga|u4|ADDR[16]~52\) # (GND)))
-- \vga|u4|ADDR[17]~54\ = CARRY((!\vga|u4|ADDR[16]~52\) # (!\vga|u4|ADDR\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga|u4|ADDR\(17),
	datad => VCC,
	cin => \vga|u4|ADDR[16]~52\,
	combout => \vga|u4|ADDR[17]~53_combout\,
	cout => \vga|u4|ADDR[17]~54\);

-- Location: FF_X45_Y56_N17
\vga|u4|ADDR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[17]~53_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(17));

-- Location: LCCOMB_X45_Y56_N20
\vga|u4|g_data[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|g_data[0]~4_combout\ = (\vga|u4|ADDR\(15) & ((\vga|u4|ADDR\(17)) # ((\vga|u4|ADDR\(13)) # (!\vga|u4|ADDR\(12))))) # (!\vga|u4|ADDR\(15) & (((\vga|u4|ADDR\(12)) # (!\vga|u4|ADDR\(13))) # (!\vga|u4|ADDR\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(15),
	datab => \vga|u4|ADDR\(17),
	datac => \vga|u4|ADDR\(13),
	datad => \vga|u4|ADDR\(12),
	combout => \vga|u4|g_data[0]~4_combout\);

-- Location: LCCOMB_X45_Y57_N0
\vga|u4|g_data[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|g_data[0]~5_combout\ = (\vga|u4|ADDR\(3)) # ((\vga|u4|ADDR\(2)) # ((\vga|u4|ADDR\(0)) # (\vga|u4|ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(3),
	datab => \vga|u4|ADDR\(2),
	datac => \vga|u4|ADDR\(0),
	datad => \vga|u4|ADDR\(1),
	combout => \vga|u4|g_data[0]~5_combout\);

-- Location: LCCOMB_X45_Y57_N2
\vga|u4|g_data[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|g_data[0]~6_combout\ = (\vga|u4|ADDR\(6)) # ((\vga|u4|ADDR\(7)) # ((\vga|u4|ADDR\(4)) # (\vga|u4|ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(6),
	datab => \vga|u4|ADDR\(7),
	datac => \vga|u4|ADDR\(4),
	datad => \vga|u4|ADDR\(5),
	combout => \vga|u4|g_data[0]~6_combout\);

-- Location: LCCOMB_X45_Y56_N24
\vga|u4|g_data[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|g_data[0]~8_combout\ = (\vga|u4|g_data[0]~7_combout\) # ((\vga|u4|g_data[0]~4_combout\) # ((\vga|u4|g_data[0]~5_combout\) # (\vga|u4|g_data[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|g_data[0]~7_combout\,
	datab => \vga|u4|g_data[0]~4_combout\,
	datac => \vga|u4|g_data[0]~5_combout\,
	datad => \vga|u4|g_data[0]~6_combout\,
	combout => \vga|u4|g_data[0]~8_combout\);

-- Location: LCCOMB_X45_Y56_N18
\vga|u4|ADDR[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|ADDR[18]~55_combout\ = \vga|u4|ADDR[17]~54\ $ (!\vga|u4|ADDR\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga|u4|ADDR\(18),
	cin => \vga|u4|ADDR[17]~54\,
	combout => \vga|u4|ADDR[18]~55_combout\);

-- Location: FF_X45_Y56_N19
\vga|u4|ADDR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \vga|p1|altpll_component|auto_generated|clk[0]~clkctrl_outclk\,
	d => \vga|u4|ADDR[18]~55_combout\,
	clrn => \vga|r0|oRESET~q\,
	sclr => \vga|u4|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga|u4|ADDR\(18));

-- Location: LCCOMB_X45_Y56_N22
\vga|u4|g_data[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|g_data[0]~9_combout\ = (\vga|u4|ADDR\(14)) # ((\vga|u4|g_data[0]~8_combout\) # ((\vga|u4|ADDR\(18)) # (!\vga|u4|ADDR\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga|u4|ADDR\(14),
	datab => \vga|u4|g_data[0]~8_combout\,
	datac => \vga|u4|ADDR\(16),
	datad => \vga|u4|ADDR\(18),
	combout => \vga|u4|g_data[0]~9_combout\);

-- Location: LCCOMB_X45_Y56_N28
\vga|u4|r_data[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|r_data[0]~4_combout\ = (\ready_to_play|Selector1~0_combout\ & (\comb_3|state\(2) & (\vga|u4|g_data[0]~9_combout\ & \comb_3|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Selector1~0_combout\,
	datab => \comb_3|state\(2),
	datac => \vga|u4|g_data[0]~9_combout\,
	datad => \comb_3|state\(3),
	combout => \vga|u4|r_data[0]~4_combout\);

-- Location: LCCOMB_X45_Y56_N26
\vga|u4|g_data[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga|u4|g_data[0]~10_combout\ = (\ready_to_play|Selector2~0_combout\ & (\comb_3|state\(2) & (\vga|u4|g_data[0]~9_combout\ & \comb_3|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Selector2~0_combout\,
	datab => \comb_3|state\(2),
	datac => \vga|u4|g_data[0]~9_combout\,
	datad => \comb_3|state\(3),
	combout => \vga|u4|g_data[0]~10_combout\);

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
END structure;


