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

-- DATE "12/15/2024 22:05:12"

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
	LEDR : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END TOP_Module;

-- Design Ports Information
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clk_50Mhz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LEDR : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ready_to_play|LUT_DATA[1]~63clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|Add0~4_combout\ : std_logic;
SIGNAL \comb_3|Add0~20_combout\ : std_logic;
SIGNAL \comb_3|Add0~24_combout\ : std_logic;
SIGNAL \comb_3|Add0~26_combout\ : std_logic;
SIGNAL \comb_3|Add0~44_combout\ : std_logic;
SIGNAL \comb_3|Add0~52_combout\ : std_logic;
SIGNAL \clk_div|Add0~4_combout\ : std_logic;
SIGNAL \clk_div|Add0~20_combout\ : std_logic;
SIGNAL \clk_div|Add0~24_combout\ : std_logic;
SIGNAL \clk_div|Add0~28_combout\ : std_logic;
SIGNAL \clk_div|Add0~30_combout\ : std_logic;
SIGNAL \clk_div|Add0~34_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[4]~28_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[8]~36_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[12]~44_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[15]~50_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[16]~53\ : std_logic;
SIGNAL \ready_to_play|mDLY[17]~54_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~2_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~4_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~6_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~6_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~16_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~24_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~26_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~28_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~36_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~47\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~48_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~49\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~50_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[8]~34_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[14]~46_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[2]~22_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[4]~26_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[8]~34_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[10]~38_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[15]~48_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[6]~30_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[8]~34_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[12]~42_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[14]~46_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[5]~3_combout\ : std_logic;
SIGNAL \comb_3|Equal0~1_combout\ : std_logic;
SIGNAL \comb_3|Mux2~2_combout\ : std_logic;
SIGNAL \comb_3|state~1_combout\ : std_logic;
SIGNAL \comb_3|Mux3~1_combout\ : std_logic;
SIGNAL \comb_3|Mux3~2_combout\ : std_logic;
SIGNAL \comb_3|Mux1~1_combout\ : std_logic;
SIGNAL \clk_div|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div|Equal0~5_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~29_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~34_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~46_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~53_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr55~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr55~1_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr55~2_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~61_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~16_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr46~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr46~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~71_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~72_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~73_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~74_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~75_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~76_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~77_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~78_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr32~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~101_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~102_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~110_combout\ : std_logic;
SIGNAL \ready_to_play|Decoder2~7_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~113_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~114_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~115_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr18~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~116_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~119_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr52~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr40~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr40~1_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr16~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~139_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~140_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~146_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~147_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~148_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~149_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~150_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~151_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr51~2_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr38~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~157_combout\ : std_logic;
SIGNAL \ready_to_play|Mux8~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~162_combout\ : std_logic;
SIGNAL \ready_to_play|Mux15~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[7]~172_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~3_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~7_combout\ : std_logic;
SIGNAL \comb_3|Mux21~0_combout\ : std_logic;
SIGNAL \comb_3|Mux11~0_combout\ : std_logic;
SIGNAL \comb_3|Mux7~0_combout\ : std_logic;
SIGNAL \comb_3|Selector1~0_combout\ : std_logic;
SIGNAL \clk_div|counter~2_combout\ : std_logic;
SIGNAL \clk_div|counter~4_combout\ : std_logic;
SIGNAL \clk_div|counter~6_combout\ : std_logic;
SIGNAL \clk_div|counter~7_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~3_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~11_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~3_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector5~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector5~1_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector6~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector7~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal0~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~9_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~11_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~13_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~14_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~9_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA~177_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr51~3_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[7]~182_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~183_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~184_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \clk_div|counter[14]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[19]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[22]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[22]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[19]~feeder_combout\ : std_logic;
SIGNAL \LEDR~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
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
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \comb_3|Add0~31\ : std_logic;
SIGNAL \comb_3|Add0~32_combout\ : std_logic;
SIGNAL \comb_3|Add0~37\ : std_logic;
SIGNAL \comb_3|Add0~38_combout\ : std_logic;
SIGNAL \comb_3|Add0~39\ : std_logic;
SIGNAL \comb_3|Add0~41\ : std_logic;
SIGNAL \comb_3|Add0~42_combout\ : std_logic;
SIGNAL \comb_3|Mux12~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~40_combout\ : std_logic;
SIGNAL \comb_3|Equal0~6_combout\ : std_logic;
SIGNAL \comb_3|Equal0~7_combout\ : std_logic;
SIGNAL \comb_3|Mux1~0_combout\ : std_logic;
SIGNAL \comb_3|picked_first_power~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \comb_3|state~2_combout\ : std_logic;
SIGNAL \comb_3|picked_first_power~1_combout\ : std_logic;
SIGNAL \comb_3|picked_first_power~q\ : std_logic;
SIGNAL \comb_3|picked_second_power~1_combout\ : std_logic;
SIGNAL \comb_3|picked_second_power~2_combout\ : std_logic;
SIGNAL \comb_3|picked_second_power~q\ : std_logic;
SIGNAL \comb_3|Mux0~1_combout\ : std_logic;
SIGNAL \comb_3|Mux0~2_combout\ : std_logic;
SIGNAL \comb_3|Mux0~0_combout\ : std_logic;
SIGNAL \comb_3|Mux0~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[0]~6_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[2]~11\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[3]~12_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[0]~18_combout\ : std_logic;
SIGNAL \ir_input~input_o\ : std_logic;
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
SIGNAL \comb_3|read_ir|LessThan4~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[7]~33\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[8]~35\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[9]~36_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[9]~37\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[10]~38_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[10]~39\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[11]~40_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[11]~41\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[12]~43\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[13]~44_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[13]~45\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[14]~47\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[15]~49\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[16]~50_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[16]~51\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[17]~52_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal0~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[1]~18_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[3]~13\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[4]~15\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[5]~16_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[12]~42_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~7_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~8_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~10_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[4]~14_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal1~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Equal1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~11_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state.IDLE~q\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[0]~18_combout\ : std_logic;
SIGNAL \comb_3|read_ir|always1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[0]~19\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[1]~20_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[1]~21\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[2]~22_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[2]~23\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[3]~24_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[3]~25\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[4]~27\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[5]~28_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[5]~29\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[6]~31\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[7]~32_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[7]~33\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[8]~35\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[9]~36_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[9]~37\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[10]~38_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[10]~39\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[11]~40_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[11]~41\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[12]~43\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[13]~44_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[13]~45\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[14]~47\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[15]~49\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[16]~50_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[16]~51\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[17]~52_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[15]~48_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|idle_count[4]~26_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan0~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[0]~18_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~12_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state.GUIDANCE~q\ : std_logic;
SIGNAL \comb_3|read_ir|always3~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[0]~19\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[1]~20_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[1]~21\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[2]~23\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[3]~24_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[3]~25\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[4]~27\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[5]~28_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[5]~29\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[6]~31\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[7]~32_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[7]~33\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[8]~35\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[9]~36_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[9]~37\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[10]~39\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[11]~40_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[11]~41\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[12]~42_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[12]~43\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[13]~44_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[13]~45\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[14]~46_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[14]~47\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[15]~49\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[16]~50_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[16]~51\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[17]~52_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state_count[6]~30_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan1~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan1~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan1~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~6_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector2~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|state.DATAREAD~q\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[0]~7\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[1]~8_combout\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[1]~9\ : std_logic;
SIGNAL \comb_3|read_ir|bitcount[2]~10_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~12_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_count[15]~48_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Selector1~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan4~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan4~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|LessThan4~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[21]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~7_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~8_combout\ : std_logic;
SIGNAL \comb_3|read_ir|Decoder0~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~6_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~15_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~16_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~3_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~2_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data~4_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~1_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~5_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~6_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[21]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_ready~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_ready~q\ : std_logic;
SIGNAL \comb_3|read_ir|data~10_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[20]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[23]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[23]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Equal1~0_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[17]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[17]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[16]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|data_buf[18]~feeder_combout\ : std_logic;
SIGNAL \comb_3|read_ir|oDATA[18]~feeder_combout\ : std_logic;
SIGNAL \comb_3|Equal1~1_combout\ : std_logic;
SIGNAL \comb_3|Mux1~2_combout\ : std_logic;
SIGNAL \comb_3|Mux1~3_combout\ : std_logic;
SIGNAL \comb_3|Mux1~4_combout\ : std_logic;
SIGNAL \comb_3|counter[17]~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~33\ : std_logic;
SIGNAL \comb_3|Add0~35\ : std_logic;
SIGNAL \comb_3|Add0~36_combout\ : std_logic;
SIGNAL \comb_3|Mux15~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|Mux33~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~1\ : std_logic;
SIGNAL \comb_3|Add0~2_combout\ : std_logic;
SIGNAL \comb_3|Equal0~5_combout\ : std_logic;
SIGNAL \comb_3|Equal0~10_combout\ : std_logic;
SIGNAL \comb_3|Add0~43\ : std_logic;
SIGNAL \comb_3|Add0~45\ : std_logic;
SIGNAL \comb_3|Add0~46_combout\ : std_logic;
SIGNAL \comb_3|Mux10~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~47\ : std_logic;
SIGNAL \comb_3|Add0~48_combout\ : std_logic;
SIGNAL \comb_3|Add0~49\ : std_logic;
SIGNAL \comb_3|Add0~50_combout\ : std_logic;
SIGNAL \comb_3|Mux8~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~51\ : std_logic;
SIGNAL \comb_3|Add0~53\ : std_logic;
SIGNAL \comb_3|Add0~55\ : std_logic;
SIGNAL \comb_3|Add0~56_combout\ : std_logic;
SIGNAL \comb_3|Add0~57\ : std_logic;
SIGNAL \comb_3|Add0~58_combout\ : std_logic;
SIGNAL \comb_3|Add0~54_combout\ : std_logic;
SIGNAL \comb_3|Mux6~0_combout\ : std_logic;
SIGNAL \comb_3|Equal0~8_combout\ : std_logic;
SIGNAL \comb_3|Equal0~9_combout\ : std_logic;
SIGNAL \comb_3|Mux20~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~3\ : std_logic;
SIGNAL \comb_3|Add0~5\ : std_logic;
SIGNAL \comb_3|Add0~6_combout\ : std_logic;
SIGNAL \comb_3|Add0~7\ : std_logic;
SIGNAL \comb_3|Add0~9\ : std_logic;
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
SIGNAL \comb_3|Add0~21\ : std_logic;
SIGNAL \comb_3|Add0~22_combout\ : std_logic;
SIGNAL \comb_3|Add0~23\ : std_logic;
SIGNAL \comb_3|Add0~25\ : std_logic;
SIGNAL \comb_3|Add0~27\ : std_logic;
SIGNAL \comb_3|Add0~29\ : std_logic;
SIGNAL \comb_3|Add0~30_combout\ : std_logic;
SIGNAL \comb_3|Mux18~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~28_combout\ : std_logic;
SIGNAL \comb_3|Add0~34_combout\ : std_logic;
SIGNAL \comb_3|Mux16~0_combout\ : std_logic;
SIGNAL \comb_3|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~10_combout\ : std_logic;
SIGNAL \comb_3|Add0~8_combout\ : std_logic;
SIGNAL \comb_3|Equal0~3_combout\ : std_logic;
SIGNAL \comb_3|Equal0~2_combout\ : std_logic;
SIGNAL \comb_3|Equal0~4_combout\ : std_logic;
SIGNAL \comb_3|Mux2~1_combout\ : std_logic;
SIGNAL \comb_3|Mux3~0_combout\ : std_logic;
SIGNAL \comb_3|Mux2~3_combout\ : std_logic;
SIGNAL \comb_3|Mux2~4_combout\ : std_logic;
SIGNAL \comb_3|Mux2~0_combout\ : std_logic;
SIGNAL \comb_3|Mux2~5_combout\ : std_logic;
SIGNAL \comb_3|Mux3~3_combout\ : std_logic;
SIGNAL \comb_3|Mux3~4_combout\ : std_logic;
SIGNAL \comb_3|state~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \comb_3|Mux3~5_combout\ : std_logic;
SIGNAL \comb_3|Mux3~6_combout\ : std_logic;
SIGNAL \comb_3|Mux3~7_combout\ : std_logic;
SIGNAL \comb_3|Mux3~8_combout\ : std_logic;
SIGNAL \comb_3|LEDR~0_combout\ : std_logic;
SIGNAL \comb_3|LEDR~1_combout\ : std_logic;
SIGNAL \comb_3|LEDR~2_combout\ : std_logic;
SIGNAL \comb_3|LEDR~q\ : std_logic;
SIGNAL \comb_3|Mux0~4_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_breaker~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_coder~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~62_combout\ : std_logic;
SIGNAL \ready_to_play|Selector4~0_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_ready~q\ : std_logic;
SIGNAL \ready_to_play|Selector5~0_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_group~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~63_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[0]~6_combout\ : std_logic;
SIGNAL \clk_div|Add0~0_combout\ : std_logic;
SIGNAL \clk_div|counter~0_combout\ : std_logic;
SIGNAL \clk_div|Add0~1\ : std_logic;
SIGNAL \clk_div|Add0~2_combout\ : std_logic;
SIGNAL \clk_div|Add0~3\ : std_logic;
SIGNAL \clk_div|Add0~5\ : std_logic;
SIGNAL \clk_div|Add0~6_combout\ : std_logic;
SIGNAL \clk_div|Add0~7\ : std_logic;
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
SIGNAL \clk_div|Add0~21\ : std_logic;
SIGNAL \clk_div|Add0~22_combout\ : std_logic;
SIGNAL \clk_div|counter~3_combout\ : std_logic;
SIGNAL \clk_div|Add0~23\ : std_logic;
SIGNAL \clk_div|Add0~25\ : std_logic;
SIGNAL \clk_div|Add0~26_combout\ : std_logic;
SIGNAL \clk_div|counter~5_combout\ : std_logic;
SIGNAL \clk_div|Add0~27\ : std_logic;
SIGNAL \clk_div|Add0~29\ : std_logic;
SIGNAL \clk_div|Add0~31\ : std_logic;
SIGNAL \clk_div|Add0~32_combout\ : std_logic;
SIGNAL \clk_div|Add0~33\ : std_logic;
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
SIGNAL \clk_div|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div|Add0~8_combout\ : std_logic;
SIGNAL \clk_div|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div|Add0~47\ : std_logic;
SIGNAL \clk_div|Add0~48_combout\ : std_logic;
SIGNAL \clk_div|Add0~49\ : std_logic;
SIGNAL \clk_div|Add0~50_combout\ : std_logic;
SIGNAL \clk_div|Add0~51\ : std_logic;
SIGNAL \clk_div|Add0~53\ : std_logic;
SIGNAL \clk_div|Add0~54_combout\ : std_logic;
SIGNAL \clk_div|Add0~55\ : std_logic;
SIGNAL \clk_div|Add0~57\ : std_logic;
SIGNAL \clk_div|Add0~58_combout\ : std_logic;
SIGNAL \clk_div|Add0~56_combout\ : std_logic;
SIGNAL \clk_div|Add0~52_combout\ : std_logic;
SIGNAL \clk_div|Equal0~7_combout\ : std_logic;
SIGNAL \clk_div|Equal0~8_combout\ : std_logic;
SIGNAL \clk_div|Equal0~9_combout\ : std_logic;
SIGNAL \clk_div|clk_out~0_combout\ : std_logic;
SIGNAL \clk_div|clk_out~q\ : std_logic;
SIGNAL \ready_to_play|mDLY[0]~18_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[0]~22_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~20_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~17_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~21_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000001~q\ : std_logic;
SIGNAL \ready_to_play|Selector11~2_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_Start~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_Start~q\ : std_logic;
SIGNAL \ready_to_play|u0|preStart~q\ : std_logic;
SIGNAL \ready_to_play|u0|ST.00~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.00~q\ : std_logic;
SIGNAL \ready_to_play|u0|ST.01~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.01~q\ : std_logic;
SIGNAL \ready_to_play|u0|Selector2~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|ST.10~q\ : std_logic;
SIGNAL \ready_to_play|u0|Selector2~1_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector8~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~1\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~3\ : std_logic;
SIGNAL \ready_to_play|u0|Add0~5\ : std_logic;
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
SIGNAL \ready_to_play|Selector11~3_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[3]~12_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA~24_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan0~4_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~19_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000010~q\ : std_logic;
SIGNAL \ready_to_play|LessThan0~5_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[0]~23_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[0]~19\ : std_logic;
SIGNAL \ready_to_play|mDLY[1]~20_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[1]~21\ : std_logic;
SIGNAL \ready_to_play|mDLY[2]~24_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[2]~25\ : std_logic;
SIGNAL \ready_to_play|mDLY[3]~26_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~0_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[3]~27\ : std_logic;
SIGNAL \ready_to_play|mDLY[4]~29\ : std_logic;
SIGNAL \ready_to_play|mDLY[5]~30_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[5]~31\ : std_logic;
SIGNAL \ready_to_play|mDLY[6]~33\ : std_logic;
SIGNAL \ready_to_play|mDLY[7]~34_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[6]~32_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~1_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~2_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[7]~35\ : std_logic;
SIGNAL \ready_to_play|mDLY[8]~37\ : std_logic;
SIGNAL \ready_to_play|mDLY[9]~38_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[9]~39\ : std_logic;
SIGNAL \ready_to_play|mDLY[10]~40_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[10]~41\ : std_logic;
SIGNAL \ready_to_play|mDLY[11]~42_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~3_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[11]~43\ : std_logic;
SIGNAL \ready_to_play|mDLY[12]~45\ : std_logic;
SIGNAL \ready_to_play|mDLY[13]~46_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[13]~47\ : std_logic;
SIGNAL \ready_to_play|mDLY[14]~49\ : std_logic;
SIGNAL \ready_to_play|mDLY[15]~51\ : std_logic;
SIGNAL \ready_to_play|mDLY[16]~52_combout\ : std_logic;
SIGNAL \ready_to_play|mDLY[14]~48_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~4_combout\ : std_logic;
SIGNAL \ready_to_play|LessThan1~5_combout\ : std_logic;
SIGNAL \ready_to_play|Selector12~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000011~q\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[5]~14_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[0]~7\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[1]~8_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[1]~9\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[2]~10_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[2]~11\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[3]~13\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[4]~15_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[4]~16\ : std_logic;
SIGNAL \ready_to_play|LUT_INDEX[5]~17_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr36~1_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr36~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr36~2_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_test~q\ : std_logic;
SIGNAL \ready_to_play|state_valid_flexible~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~25_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr48~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr48~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~35_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~52_combout\ : std_logic;
SIGNAL \ready_to_play|Decoder2~6_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~54_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~55_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~31_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~56_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~57_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~45_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~49_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~47_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~48_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~50_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~41_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~43_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~42_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~44_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~51_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~27_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~28_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~32_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~33_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~37_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~36_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~38_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~39_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~58_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~59_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~60_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST~18_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_ST.000000~q\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA[3]~1_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_camouflage~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~26_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA~30_combout\ : std_logic;
SIGNAL \ready_to_play|Decoder2~8_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr34~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr34~1_combout\ : std_logic;
SIGNAL \ready_to_play|state_valid_invisible~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[0]~40_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~64_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~175_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~65_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~176_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~66_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~67_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~68_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~69_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~187_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~188_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~70_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~79_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~80_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~81_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~2_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr32~1_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr44~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr44~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~84_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~82_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~83_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~85_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr21~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~86_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~93_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~94_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~95_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~96_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~185_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~186_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~90_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~91_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr42~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr42~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~87_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~88_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~89_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~92_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~97_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~98_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[2]~99_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~3_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr30~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~109_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~108_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~111_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~104_combout\ : std_logic;
SIGNAL \ready_to_play|Mux18~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux25~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~178_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~106_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~0_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~2_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~3_combout\ : std_logic;
SIGNAL \ready_to_play|Mux4~4_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~103_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~107_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[3]~112_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~4_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr42~2_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr42~3_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~120_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~121_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~122_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~123_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~124_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~125_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~128_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~129_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~126_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~127_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~130_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~131_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~117_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~118_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~179_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~132_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~133_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[4]~134_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~5_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr27~1_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr27~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr27~2_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~138_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~137_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~180_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~135_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~136_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~181_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~141_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~143_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~142_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~144_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~145_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~152_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~153_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~154_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~155_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~6_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr9~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr9~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~159_combout\ : std_logic;
SIGNAL \ready_to_play|Mux8~1_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~160_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~161_combout\ : std_logic;
SIGNAL \ready_to_play|Mux15~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[5]~105_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~163_combout\ : std_logic;
SIGNAL \ready_to_play|Mux22~1_combout\ : std_logic;
SIGNAL \ready_to_play|Mux22~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~164_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~165_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~166_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[1]~100_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~156_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~158_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr16~0_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr14~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~169_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~167_combout\ : std_logic;
SIGNAL \ready_to_play|WideOr25~0_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~168_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~170_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[6]~171_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~7_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_DATA~8_combout\ : std_logic;
SIGNAL \ready_to_play|u0|Selector3~0_combout\ : std_logic;
SIGNAL \ready_to_play|u0|LCD_EN~q\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[8]~173_combout\ : std_logic;
SIGNAL \ready_to_play|LUT_DATA[8]~174_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_RS~0_combout\ : std_logic;
SIGNAL \ready_to_play|mLCD_RS~q\ : std_logic;
SIGNAL \select_your_power|Mux5~0_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[0]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[5]~2_combout\ : std_logic;
SIGNAL \select_your_power|Mux4~0_combout\ : std_logic;
SIGNAL \select_your_power|Mux4~0_wirecell_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[4]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[5]~4_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D1[6]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2[0]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2[6]~0_combout\ : std_logic;
SIGNAL \select_your_power|Mux10~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|picked_second_power~0_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2[5]~feeder_combout\ : std_logic;
SIGNAL \select_your_power|Mux6~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[1]~3_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[2]~4_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[0]~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~1\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal0~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~3\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~5\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~7\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~8_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~9\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~10_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~11\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~12_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~13\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~14_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~15\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~17\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~18_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~19\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~21\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~22_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~23\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~25\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~27\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~29\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~30_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~4_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~31\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~32_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~33\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~35\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~37\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~38_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~6_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~34_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~5_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~5_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~39\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~40_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~7_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~41\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~42_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~8_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~43\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~44_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~9_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~45\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~46_combout\ : std_logic;
SIGNAL \comb_3|counting_down|second_counter~10_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~6_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~4_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~0_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Add1~20_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~4_combout\ : std_logic;
SIGNAL \comb_3|counting_down|Equal1~8_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[0]~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[0]~2_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit[0]~feeder_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit[2]~feeder_combout\ : std_logic;
SIGNAL \comb_3|counting_down|countdown_val[3]~5_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit[3]~1_combout\ : std_logic;
SIGNAL \comb_3|counting_down|current_digit[1]~0_combout\ : std_logic;
SIGNAL \display_countdown|segments[0]~0_combout\ : std_logic;
SIGNAL \display_countdown|segments[1]~1_combout\ : std_logic;
SIGNAL \display_countdown|Decoder0~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr3~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr2~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr1~0_combout\ : std_logic;
SIGNAL \display_countdown|WideOr0~0_combout\ : std_logic;
SIGNAL \select_your_power|oHEX_D2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \select_your_power|oHEX_D1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ready_to_play|mDLY\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_3|read_ir|data_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_3|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|counting_down|countdown_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|counting_down|second_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \comb_3|counting_down|current_digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|read_ir|bitcount\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|read_ir|oDATA\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ready_to_play|mLCD_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_3|read_ir|idle_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_3|counter\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \ready_to_play|LUT_DATA\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comb_3|read_ir|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ready_to_play|LUT_INDEX\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|read_ir|data_buf\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_3|read_ir|state_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ready_to_play|u0|Cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_div|counter\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \comb_3|read_ir|ALT_INV_idle_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|ALT_INV_state_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|ALT_INV_data_count_flag~q\ : std_logic;
SIGNAL \comb_3|read_ir|ALT_INV_state.DATAREAD~q\ : std_logic;
SIGNAL \clk_div|ALT_INV_clk_out~q\ : std_logic;
SIGNAL \comb_3|ALT_INV_state\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \display_countdown|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_clk_50Mhz <= clk_50Mhz;
ww_reset <= reset;
ww_ir_input <= ir_input;
ww_SW <= SW;
LEDR <= ww_LEDR;
lcd_data <= ww_lcd_data;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\ready_to_play|LUT_DATA[1]~63clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ready_to_play|LUT_DATA[1]~63_combout\);
\comb_3|read_ir|ALT_INV_idle_count_flag~q\ <= NOT \comb_3|read_ir|idle_count_flag~q\;
\comb_3|read_ir|ALT_INV_state_count_flag~q\ <= NOT \comb_3|read_ir|state_count_flag~q\;
\comb_3|read_ir|ALT_INV_data_count_flag~q\ <= NOT \comb_3|read_ir|data_count_flag~q\;
\comb_3|read_ir|ALT_INV_state.DATAREAD~q\ <= NOT \comb_3|read_ir|state.DATAREAD~q\;
\clk_div|ALT_INV_clk_out~q\ <= NOT \clk_div|clk_out~q\;
\comb_3|ALT_INV_state\(3) <= NOT \comb_3|state\(3);
\comb_3|ALT_INV_state\(2) <= NOT \comb_3|state\(2);
\display_countdown|ALT_INV_WideOr0~0_combout\ <= NOT \display_countdown|WideOr0~0_combout\;

-- Location: FF_X23_Y41_N31
\ready_to_play|mDLY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[8]~36_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(8));

-- Location: FF_X23_Y41_N23
\ready_to_play|mDLY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[4]~28_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(4));

-- Location: FF_X23_Y40_N7
\ready_to_play|mDLY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[12]~44_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(12));

-- Location: FF_X23_Y40_N13
\ready_to_play|mDLY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[15]~50_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(15));

-- Location: FF_X23_Y40_N17
\ready_to_play|mDLY[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[17]~54_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(17));

-- Location: LCCOMB_X27_Y38_N6
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

-- Location: LCCOMB_X27_Y38_N22
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

-- Location: LCCOMB_X27_Y38_N26
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

-- Location: LCCOMB_X27_Y38_N28
\comb_3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~26_combout\ = (\comb_3|counter\(13) & (!\comb_3|Add0~25\)) # (!\comb_3|counter\(13) & ((\comb_3|Add0~25\) # (GND)))
-- \comb_3|Add0~27\ = CARRY((!\comb_3|Add0~25\) # (!\comb_3|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(13),
	datad => VCC,
	cin => \comb_3|Add0~25\,
	combout => \comb_3|Add0~26_combout\,
	cout => \comb_3|Add0~27\);

-- Location: LCCOMB_X27_Y37_N14
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

-- Location: LCCOMB_X27_Y37_N22
\comb_3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~52_combout\ = (\comb_3|counter\(26) & (\comb_3|Add0~51\ $ (GND))) # (!\comb_3|counter\(26) & (!\comb_3|Add0~51\ & VCC))
-- \comb_3|Add0~53\ = CARRY((\comb_3|counter\(26) & !\comb_3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(26),
	datad => VCC,
	cin => \comb_3|Add0~51\,
	combout => \comb_3|Add0~52_combout\,
	cout => \comb_3|Add0~53\);

-- Location: LCCOMB_X73_Y42_N6
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

-- Location: LCCOMB_X73_Y42_N22
\clk_div|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~20_combout\ = (\clk_div|counter\(10) & (\clk_div|Add0~19\ $ (GND))) # (!\clk_div|counter\(10) & (!\clk_div|Add0~19\ & VCC))
-- \clk_div|Add0~21\ = CARRY((\clk_div|counter\(10) & !\clk_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(10),
	datad => VCC,
	cin => \clk_div|Add0~19\,
	combout => \clk_div|Add0~20_combout\,
	cout => \clk_div|Add0~21\);

-- Location: LCCOMB_X73_Y42_N26
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

-- Location: LCCOMB_X73_Y42_N30
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

-- Location: LCCOMB_X73_Y41_N0
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

-- Location: LCCOMB_X73_Y41_N4
\clk_div|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~34_combout\ = (\clk_div|counter\(17) & (!\clk_div|Add0~33\)) # (!\clk_div|counter\(17) & ((\clk_div|Add0~33\) # (GND)))
-- \clk_div|Add0~35\ = CARRY((!\clk_div|Add0~33\) # (!\clk_div|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(17),
	datad => VCC,
	cin => \clk_div|Add0~33\,
	combout => \clk_div|Add0~34_combout\,
	cout => \clk_div|Add0~35\);

-- Location: LCCOMB_X23_Y41_N22
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

-- Location: LCCOMB_X23_Y41_N30
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

-- Location: LCCOMB_X23_Y40_N6
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

-- Location: LCCOMB_X23_Y40_N12
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

-- Location: LCCOMB_X23_Y40_N14
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

-- Location: LCCOMB_X23_Y40_N16
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

-- Location: LCCOMB_X47_Y41_N24
\ready_to_play|u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~2_combout\ = (\ready_to_play|u0|Cont\(1) & (!\ready_to_play|u0|Add0~1\)) # (!\ready_to_play|u0|Cont\(1) & ((\ready_to_play|u0|Add0~1\) # (GND)))
-- \ready_to_play|u0|Add0~3\ = CARRY((!\ready_to_play|u0|Add0~1\) # (!\ready_to_play|u0|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Cont\(1),
	datad => VCC,
	cin => \ready_to_play|u0|Add0~1\,
	combout => \ready_to_play|u0|Add0~2_combout\,
	cout => \ready_to_play|u0|Add0~3\);

-- Location: LCCOMB_X47_Y41_N26
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

-- Location: LCCOMB_X47_Y41_N28
\ready_to_play|u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~6_combout\ = (\ready_to_play|u0|Cont\(3) & (!\ready_to_play|u0|Add0~5\)) # (!\ready_to_play|u0|Cont\(3) & ((\ready_to_play|u0|Add0~5\) # (GND)))
-- \ready_to_play|u0|Add0~7\ = CARRY((!\ready_to_play|u0|Add0~5\) # (!\ready_to_play|u0|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Cont\(3),
	datad => VCC,
	cin => \ready_to_play|u0|Add0~5\,
	combout => \ready_to_play|u0|Add0~6_combout\,
	cout => \ready_to_play|u0|Add0~7\);

-- Location: LCCOMB_X79_Y22_N12
\comb_3|counting_down|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~6_combout\ = (\comb_3|counting_down|second_counter\(3) & (!\comb_3|counting_down|Add1~5\)) # (!\comb_3|counting_down|second_counter\(3) & ((\comb_3|counting_down|Add1~5\) # (GND)))
-- \comb_3|counting_down|Add1~7\ = CARRY((!\comb_3|counting_down|Add1~5\) # (!\comb_3|counting_down|second_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(3),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~5\,
	combout => \comb_3|counting_down|Add1~6_combout\,
	cout => \comb_3|counting_down|Add1~7\);

-- Location: LCCOMB_X79_Y22_N22
\comb_3|counting_down|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~16_combout\ = (\comb_3|counting_down|second_counter\(8) & (\comb_3|counting_down|Add1~15\ $ (GND))) # (!\comb_3|counting_down|second_counter\(8) & (!\comb_3|counting_down|Add1~15\ & VCC))
-- \comb_3|counting_down|Add1~17\ = CARRY((\comb_3|counting_down|second_counter\(8) & !\comb_3|counting_down|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(8),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~15\,
	combout => \comb_3|counting_down|Add1~16_combout\,
	cout => \comb_3|counting_down|Add1~17\);

-- Location: LCCOMB_X79_Y22_N30
\comb_3|counting_down|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~24_combout\ = (\comb_3|counting_down|second_counter\(12) & (\comb_3|counting_down|Add1~23\ $ (GND))) # (!\comb_3|counting_down|second_counter\(12) & (!\comb_3|counting_down|Add1~23\ & VCC))
-- \comb_3|counting_down|Add1~25\ = CARRY((\comb_3|counting_down|second_counter\(12) & !\comb_3|counting_down|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(12),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~23\,
	combout => \comb_3|counting_down|Add1~24_combout\,
	cout => \comb_3|counting_down|Add1~25\);

-- Location: LCCOMB_X79_Y21_N0
\comb_3|counting_down|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~26_combout\ = (\comb_3|counting_down|second_counter\(13) & (!\comb_3|counting_down|Add1~25\)) # (!\comb_3|counting_down|second_counter\(13) & ((\comb_3|counting_down|Add1~25\) # (GND)))
-- \comb_3|counting_down|Add1~27\ = CARRY((!\comb_3|counting_down|Add1~25\) # (!\comb_3|counting_down|second_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(13),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~25\,
	combout => \comb_3|counting_down|Add1~26_combout\,
	cout => \comb_3|counting_down|Add1~27\);

-- Location: LCCOMB_X79_Y21_N2
\comb_3|counting_down|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~28_combout\ = (\comb_3|counting_down|second_counter\(14) & (\comb_3|counting_down|Add1~27\ $ (GND))) # (!\comb_3|counting_down|second_counter\(14) & (!\comb_3|counting_down|Add1~27\ & VCC))
-- \comb_3|counting_down|Add1~29\ = CARRY((\comb_3|counting_down|second_counter\(14) & !\comb_3|counting_down|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(14),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~27\,
	combout => \comb_3|counting_down|Add1~28_combout\,
	cout => \comb_3|counting_down|Add1~29\);

-- Location: LCCOMB_X79_Y21_N10
\comb_3|counting_down|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~36_combout\ = (\comb_3|counting_down|second_counter\(18) & (\comb_3|counting_down|Add1~35\ $ (GND))) # (!\comb_3|counting_down|second_counter\(18) & (!\comb_3|counting_down|Add1~35\ & VCC))
-- \comb_3|counting_down|Add1~37\ = CARRY((\comb_3|counting_down|second_counter\(18) & !\comb_3|counting_down|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(18),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~35\,
	combout => \comb_3|counting_down|Add1~36_combout\,
	cout => \comb_3|counting_down|Add1~37\);

-- Location: LCCOMB_X79_Y21_N20
\comb_3|counting_down|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~46_combout\ = (\comb_3|counting_down|second_counter\(23) & (!\comb_3|counting_down|Add1~45\)) # (!\comb_3|counting_down|second_counter\(23) & ((\comb_3|counting_down|Add1~45\) # (GND)))
-- \comb_3|counting_down|Add1~47\ = CARRY((!\comb_3|counting_down|Add1~45\) # (!\comb_3|counting_down|second_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(23),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~45\,
	combout => \comb_3|counting_down|Add1~46_combout\,
	cout => \comb_3|counting_down|Add1~47\);

-- Location: LCCOMB_X79_Y21_N22
\comb_3|counting_down|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~48_combout\ = (\comb_3|counting_down|second_counter\(24) & (\comb_3|counting_down|Add1~47\ $ (GND))) # (!\comb_3|counting_down|second_counter\(24) & (!\comb_3|counting_down|Add1~47\ & VCC))
-- \comb_3|counting_down|Add1~49\ = CARRY((\comb_3|counting_down|second_counter\(24) & !\comb_3|counting_down|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(24),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~47\,
	combout => \comb_3|counting_down|Add1~48_combout\,
	cout => \comb_3|counting_down|Add1~49\);

-- Location: LCCOMB_X79_Y21_N24
\comb_3|counting_down|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~50_combout\ = \comb_3|counting_down|second_counter\(25) $ (\comb_3|counting_down|Add1~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(25),
	cin => \comb_3|counting_down|Add1~49\,
	combout => \comb_3|counting_down|Add1~50_combout\);

-- Location: FF_X106_Y39_N13
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

-- Location: FF_X106_Y39_N3
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

-- Location: FF_X106_Y39_N19
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

-- Location: FF_X106_Y39_N23
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

-- Location: FF_X105_Y39_N31
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

-- Location: FF_X107_Y40_N31
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

-- Location: FF_X107_Y39_N11
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

-- Location: FF_X110_Y40_N13
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

-- Location: FF_X110_Y40_N3
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

-- Location: FF_X110_Y41_N23
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

-- Location: FF_X110_Y41_N19
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

-- Location: FF_X110_Y41_N31
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

-- Location: FF_X108_Y40_N27
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

-- Location: FF_X108_Y40_N31
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

-- Location: FF_X108_Y39_N11
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

-- Location: FF_X108_Y39_N7
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

-- Location: LCCOMB_X107_Y40_N30
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

-- Location: LCCOMB_X107_Y39_N10
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

-- Location: LCCOMB_X110_Y41_N18
\comb_3|read_ir|state_count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[2]~22_combout\ = (\comb_3|read_ir|state_count\(2) & (\comb_3|read_ir|state_count[1]~21\ $ (GND))) # (!\comb_3|read_ir|state_count\(2) & (!\comb_3|read_ir|state_count[1]~21\ & VCC))
-- \comb_3|read_ir|state_count[2]~23\ = CARRY((\comb_3|read_ir|state_count\(2) & !\comb_3|read_ir|state_count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(2),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[1]~21\,
	combout => \comb_3|read_ir|state_count[2]~22_combout\,
	cout => \comb_3|read_ir|state_count[2]~23\);

-- Location: LCCOMB_X110_Y41_N22
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

-- Location: LCCOMB_X110_Y41_N30
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

-- Location: LCCOMB_X110_Y40_N2
\comb_3|read_ir|state_count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[10]~38_combout\ = (\comb_3|read_ir|state_count\(10) & (\comb_3|read_ir|state_count[9]~37\ $ (GND))) # (!\comb_3|read_ir|state_count\(10) & (!\comb_3|read_ir|state_count[9]~37\ & VCC))
-- \comb_3|read_ir|state_count[10]~39\ = CARRY((\comb_3|read_ir|state_count\(10) & !\comb_3|read_ir|state_count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(10),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[9]~37\,
	combout => \comb_3|read_ir|state_count[10]~38_combout\,
	cout => \comb_3|read_ir|state_count[10]~39\);

-- Location: LCCOMB_X110_Y40_N12
\comb_3|read_ir|state_count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[15]~48_combout\ = (\comb_3|read_ir|state_count\(15) & (!\comb_3|read_ir|state_count[14]~47\)) # (!\comb_3|read_ir|state_count\(15) & ((\comb_3|read_ir|state_count[14]~47\) # (GND)))
-- \comb_3|read_ir|state_count[15]~49\ = CARRY((!\comb_3|read_ir|state_count[14]~47\) # (!\comb_3|read_ir|state_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(15),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[14]~47\,
	combout => \comb_3|read_ir|state_count[15]~48_combout\,
	cout => \comb_3|read_ir|state_count[15]~49\);

-- Location: LCCOMB_X108_Y40_N26
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

-- Location: LCCOMB_X108_Y40_N30
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

-- Location: LCCOMB_X108_Y39_N6
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

-- Location: LCCOMB_X108_Y39_N10
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

-- Location: LCCOMB_X30_Y37_N4
\select_your_power|oHEX_D1[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[5]~3_combout\ = (!\comb_3|state\(1) & !\comb_3|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	combout => \select_your_power|oHEX_D1[5]~3_combout\);

-- Location: FF_X28_Y37_N1
\comb_3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux21~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(12));

-- Location: FF_X27_Y38_N23
\comb_3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~20_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(10));

-- Location: LCCOMB_X28_Y37_N26
\comb_3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~1_combout\ = (\comb_3|counter\(13) & (\comb_3|counter\(12) & (!\comb_3|counter\(10) & !\comb_3|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(13),
	datab => \comb_3|counter\(12),
	datac => \comb_3|counter\(10),
	datad => \comb_3|counter\(11),
	combout => \comb_3|Equal0~1_combout\);

-- Location: FF_X27_Y38_N7
\comb_3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~4_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(2));

-- Location: FF_X26_Y37_N23
\comb_3|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux11~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(22));

-- Location: FF_X26_Y37_N27
\comb_3|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux7~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(26));

-- Location: LCCOMB_X30_Y37_N6
\comb_3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~2_combout\ = (\select_your_power|oHEX_D1[5]~3_combout\ & (\comb_3|state\(0) & ((\SW[2]~input_o\) # (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \select_your_power|oHEX_D1[5]~3_combout\,
	datad => \comb_3|state\(0),
	combout => \comb_3|Mux2~2_combout\);

-- Location: LCCOMB_X29_Y37_N26
\comb_3|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|state~1_combout\ = (((!\comb_3|Equal0~7_combout\) # (!\comb_3|Equal0~4_combout\)) # (!\comb_3|Mux0~0_combout\)) # (!\comb_3|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~9_combout\,
	datab => \comb_3|Mux0~0_combout\,
	datac => \comb_3|Equal0~4_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|state~1_combout\);

-- Location: LCCOMB_X29_Y37_N12
\comb_3|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~1_combout\ = (\comb_3|state\(1) & (((\comb_3|state\(2))))) # (!\comb_3|state\(1) & ((\comb_3|state\(2) & ((\comb_3|state~1_combout\))) # (!\comb_3|state\(2) & (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \comb_3|state\(1),
	datac => \comb_3|state~1_combout\,
	datad => \comb_3|state\(2),
	combout => \comb_3|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y37_N30
\comb_3|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~2_combout\ = (\comb_3|state\(1) & ((\comb_3|Mux3~1_combout\ & (!\comb_3|Equal0~10_combout\)) # (!\comb_3|Mux3~1_combout\ & ((\comb_3|state~0_combout\))))) # (!\comb_3|state\(1) & (((\comb_3|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|Equal0~10_combout\,
	datac => \comb_3|state~0_combout\,
	datad => \comb_3|Mux3~1_combout\,
	combout => \comb_3|Mux3~2_combout\);

-- Location: FF_X59_Y39_N11
\comb_3|read_ir|oDATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|oDATA[22]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(22));

-- Location: FF_X59_Y39_N13
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

-- Location: LCCOMB_X30_Y37_N26
\comb_3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~1_combout\ = (!\comb_3|picked_second_power~0_combout\ & ((\SW[4]~input_o\ & ((!\comb_3|state\(0)))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \comb_3|state\(0),
	datac => \SW[4]~input_o\,
	datad => \comb_3|picked_second_power~0_combout\,
	combout => \comb_3|Mux1~1_combout\);

-- Location: FF_X73_Y42_N7
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

-- Location: FF_X72_Y42_N27
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

-- Location: FF_X72_Y42_N17
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

-- Location: FF_X72_Y42_N29
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

-- Location: FF_X72_Y42_N11
\clk_div|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_div|counter[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div|counter\(14));

-- Location: LCCOMB_X72_Y42_N12
\clk_div|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~3_combout\ = (!\clk_div|counter\(14) & (\clk_div|counter\(15) & (\clk_div|counter\(13) & \clk_div|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(14),
	datab => \clk_div|counter\(15),
	datac => \clk_div|counter\(13),
	datad => \clk_div|counter\(12),
	combout => \clk_div|Equal0~3_combout\);

-- Location: FF_X72_Y41_N17
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

-- Location: LCCOMB_X72_Y41_N26
\clk_div|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~5_combout\ = (!\clk_div|counter\(16) & (\clk_div|counter\(17) & (\clk_div|counter\(18) & \clk_div|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(16),
	datab => \clk_div|counter\(17),
	datac => \clk_div|counter\(18),
	datad => \clk_div|counter\(19),
	combout => \clk_div|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y39_N4
\ready_to_play|LUT_DATA[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~29_combout\ = (\ready_to_play|state_valid_breaker~q\ & !\ready_to_play|state_valid_invisible~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|state_valid_invisible~q\,
	combout => \ready_to_play|LUT_DATA[5]~29_combout\);

-- Location: LCCOMB_X24_Y40_N10
\ready_to_play|LUT_DATA[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~34_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(2) & ((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[0]~34_combout\);

-- Location: LCCOMB_X27_Y40_N30
\ready_to_play|LUT_DATA[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~46_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[0]~46_combout\);

-- Location: LCCOMB_X26_Y40_N10
\ready_to_play|LUT_DATA[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~53_combout\ = (\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[0]~53_combout\);

-- Location: LCCOMB_X25_Y38_N2
\ready_to_play|WideOr55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr55~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA~30_combout\ & \ready_to_play|LUT_DATA~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA~30_combout\,
	datad => \ready_to_play|LUT_DATA~24_combout\,
	combout => \ready_to_play|WideOr55~0_combout\);

-- Location: LCCOMB_X23_Y42_N30
\ready_to_play|WideOr55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr55~1_combout\ = (\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr55~1_combout\);

-- Location: LCCOMB_X25_Y38_N20
\ready_to_play|WideOr55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr55~2_combout\ = (\ready_to_play|WideOr55~0_combout\) # ((\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|WideOr55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|WideOr55~1_combout\,
	datad => \ready_to_play|WideOr55~0_combout\,
	combout => \ready_to_play|WideOr55~2_combout\);

-- Location: LCCOMB_X26_Y38_N22
\ready_to_play|LUT_DATA[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~61_combout\ = (!\ready_to_play|state_valid_test~q\ & (!\ready_to_play|state_valid_flexible~q\ & (!\ready_to_play|state_valid_camouflage~q\ & !\ready_to_play|state_valid_invisible~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_test~q\,
	datab => \ready_to_play|state_valid_flexible~q\,
	datac => \ready_to_play|state_valid_camouflage~q\,
	datad => \ready_to_play|state_valid_invisible~q\,
	combout => \ready_to_play|LUT_DATA[3]~61_combout\);

-- Location: LCCOMB_X23_Y39_N26
\ready_to_play|mLCD_ST~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~16_combout\ = ((\ready_to_play|mLCD_ST.000001~q\ & !\ready_to_play|u0|oDone~q\)) # (!\ready_to_play|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mLCD_ST.000001~q\,
	datac => \ready_to_play|LessThan0~5_combout\,
	datad => \ready_to_play|u0|oDone~q\,
	combout => \ready_to_play|mLCD_ST~16_combout\);

-- Location: LCCOMB_X23_Y42_N4
\ready_to_play|WideOr46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr46~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) $ 
-- (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr46~0_combout\);

-- Location: LCCOMB_X23_Y42_N14
\ready_to_play|WideOr46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr46~1_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|WideOr46~0_combout\ & !\ready_to_play|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|WideOr46~0_combout\,
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|WideOr46~1_combout\);

-- Location: LCCOMB_X24_Y41_N6
\ready_to_play|LUT_DATA[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~71_combout\ = (!\ready_to_play|state_valid_coder~q\ & (!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|state_valid_group~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|state_valid_group~q\,
	combout => \ready_to_play|LUT_DATA[1]~71_combout\);

-- Location: LCCOMB_X25_Y42_N20
\ready_to_play|LUT_DATA[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~72_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[1]~72_combout\);

-- Location: LCCOMB_X25_Y42_N18
\ready_to_play|LUT_DATA[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~73_combout\ = (\ready_to_play|LUT_DATA[1]~71_combout\ & (\ready_to_play|LUT_DATA[1]~72_combout\ & (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[1]~71_combout\,
	datad => \ready_to_play|LUT_DATA[1]~72_combout\,
	combout => \ready_to_play|LUT_DATA[1]~73_combout\);

-- Location: LCCOMB_X25_Y42_N24
\ready_to_play|LUT_DATA[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~74_combout\ = (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[1]~74_combout\);

-- Location: LCCOMB_X25_Y42_N26
\ready_to_play|LUT_DATA[1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~75_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[1]~75_combout\);

-- Location: LCCOMB_X25_Y42_N28
\ready_to_play|LUT_DATA[1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~76_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & 
-- (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[1]~76_combout\);

-- Location: LCCOMB_X25_Y42_N14
\ready_to_play|LUT_DATA[1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~77_combout\ = (\ready_to_play|LUT_DATA[0]~35_combout\ & ((\ready_to_play|LUT_DATA[1]~75_combout\) # ((\ready_to_play|LUT_DATA~30_combout\ & \ready_to_play|LUT_DATA[1]~76_combout\)))) # (!\ready_to_play|LUT_DATA[0]~35_combout\ & 
-- (\ready_to_play|LUT_DATA~30_combout\ & ((\ready_to_play|LUT_DATA[1]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~35_combout\,
	datab => \ready_to_play|LUT_DATA~30_combout\,
	datac => \ready_to_play|LUT_DATA[1]~75_combout\,
	datad => \ready_to_play|LUT_DATA[1]~76_combout\,
	combout => \ready_to_play|LUT_DATA[1]~77_combout\);

-- Location: LCCOMB_X25_Y42_N0
\ready_to_play|LUT_DATA[1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~78_combout\ = (\ready_to_play|LUT_DATA[1]~73_combout\) # ((\ready_to_play|state_valid_coder~q\ & ((\ready_to_play|LUT_DATA[1]~74_combout\) # (\ready_to_play|LUT_DATA[1]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|LUT_DATA[1]~74_combout\,
	datac => \ready_to_play|LUT_DATA[1]~77_combout\,
	datad => \ready_to_play|LUT_DATA[1]~73_combout\,
	combout => \ready_to_play|LUT_DATA[1]~78_combout\);

-- Location: LCCOMB_X23_Y40_N28
\ready_to_play|WideOr32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr32~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|WideOr32~0_combout\);

-- Location: LCCOMB_X26_Y39_N14
\ready_to_play|LUT_DATA[3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~101_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|state_valid_breaker~q\ & ((!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|state_valid_coder~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[3]~101_combout\);

-- Location: LCCOMB_X26_Y39_N24
\ready_to_play|LUT_DATA[3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~102_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[3]~101_combout\ & \ready_to_play|LUT_DATA[1]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[3]~101_combout\,
	datad => \ready_to_play|LUT_DATA[1]~100_combout\,
	combout => \ready_to_play|LUT_DATA[3]~102_combout\);

-- Location: LCCOMB_X26_Y38_N8
\ready_to_play|LUT_DATA[3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~110_combout\ = (!\ready_to_play|state_valid_flexible~q\ & \ready_to_play|state_valid_invisible~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_flexible~q\,
	datad => \ready_to_play|state_valid_invisible~q\,
	combout => \ready_to_play|LUT_DATA[3]~110_combout\);

-- Location: LCCOMB_X23_Y42_N12
\ready_to_play|Decoder2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Decoder2~7_combout\ = (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_DATA~24_combout\ & \ready_to_play|LUT_DATA~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA~24_combout\,
	datad => \ready_to_play|LUT_DATA~30_combout\,
	combout => \ready_to_play|Decoder2~7_combout\);

-- Location: LCCOMB_X24_Y42_N10
\ready_to_play|LUT_DATA[4]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~113_combout\ = (\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|LUT_INDEX\(0) $ (((!\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|state_valid_breaker~q\ & (!\ready_to_play|LUT_INDEX\(0) & 
-- (\ready_to_play|state_valid_coder~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[4]~113_combout\);

-- Location: LCCOMB_X24_Y42_N0
\ready_to_play|LUT_DATA[4]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~114_combout\ = (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[4]~114_combout\);

-- Location: LCCOMB_X24_Y42_N18
\ready_to_play|LUT_DATA[4]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~115_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|state_valid_invisible~q\ & \ready_to_play|LUT_DATA[4]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|state_valid_invisible~q\,
	datad => \ready_to_play|LUT_DATA[4]~114_combout\,
	combout => \ready_to_play|LUT_DATA[4]~115_combout\);

-- Location: LCCOMB_X24_Y42_N16
\ready_to_play|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr18~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2)) # ((\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0) & 
-- ((!\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr18~0_combout\);

-- Location: LCCOMB_X24_Y42_N14
\ready_to_play|LUT_DATA[4]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~116_combout\ = (\ready_to_play|LUT_DATA[1]~64_combout\ & (((\ready_to_play|LUT_DATA[4]~113_combout\ & \ready_to_play|LUT_DATA[4]~115_combout\)) # (!\ready_to_play|WideOr18~0_combout\))) # (!\ready_to_play|LUT_DATA[1]~64_combout\ 
-- & (((\ready_to_play|LUT_DATA[4]~113_combout\ & \ready_to_play|LUT_DATA[4]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~64_combout\,
	datab => \ready_to_play|WideOr18~0_combout\,
	datac => \ready_to_play|LUT_DATA[4]~113_combout\,
	datad => \ready_to_play|LUT_DATA[4]~115_combout\,
	combout => \ready_to_play|LUT_DATA[4]~116_combout\);

-- Location: LCCOMB_X24_Y41_N26
\ready_to_play|LUT_DATA[4]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~119_combout\ = (!\ready_to_play|state_valid_breaker~q\ & (!\ready_to_play|state_valid_coder~q\ & (!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|state_valid_invisible~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|state_valid_invisible~q\,
	combout => \ready_to_play|LUT_DATA[4]~119_combout\);

-- Location: LCCOMB_X23_Y42_N2
\ready_to_play|WideOr52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr52~0_combout\ = (\ready_to_play|Decoder2~7_combout\) # ((\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|WideOr55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|WideOr55~1_combout\,
	datad => \ready_to_play|Decoder2~7_combout\,
	combout => \ready_to_play|WideOr52~0_combout\);

-- Location: LCCOMB_X25_Y39_N24
\ready_to_play|WideOr40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr40~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(2)))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(2)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr40~0_combout\);

-- Location: LCCOMB_X25_Y39_N28
\ready_to_play|WideOr40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr40~1_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr16~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|WideOr40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|WideOr16~0_combout\,
	datad => \ready_to_play|WideOr40~0_combout\,
	combout => \ready_to_play|WideOr40~1_combout\);

-- Location: LCCOMB_X25_Y39_N20
\ready_to_play|WideOr16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr16~1_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- (\ready_to_play|LUT_INDEX\(2) $ (((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|WideOr16~1_combout\);

-- Location: LCCOMB_X25_Y39_N2
\ready_to_play|LUT_DATA[5]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~139_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr16~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|WideOr16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|WideOr16~0_combout\,
	datad => \ready_to_play|WideOr16~1_combout\,
	combout => \ready_to_play|LUT_DATA[5]~139_combout\);

-- Location: LCCOMB_X24_Y39_N26
\ready_to_play|LUT_DATA[5]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~140_combout\ = (\ready_to_play|state_valid_invisible~q\ & ((\ready_to_play|LUT_DATA[5]~139_combout\) # ((\ready_to_play|LUT_DATA[5]~184_combout\ & \ready_to_play|LUT_DATA[5]~128_combout\)))) # 
-- (!\ready_to_play|state_valid_invisible~q\ & (\ready_to_play|LUT_DATA[5]~184_combout\ & (\ready_to_play|LUT_DATA[5]~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible~q\,
	datab => \ready_to_play|LUT_DATA[5]~184_combout\,
	datac => \ready_to_play|LUT_DATA[5]~128_combout\,
	datad => \ready_to_play|LUT_DATA[5]~139_combout\,
	combout => \ready_to_play|LUT_DATA[5]~140_combout\);

-- Location: LCCOMB_X24_Y42_N2
\ready_to_play|LUT_DATA[5]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~146_combout\ = (\ready_to_play|LessThan0~4_combout\ & ((\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)) # 
-- (!\ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LessThan0~4_combout\,
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[5]~146_combout\);

-- Location: LCCOMB_X25_Y42_N30
\ready_to_play|LUT_DATA[5]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~147_combout\ = (!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[5]~147_combout\);

-- Location: LCCOMB_X25_Y42_N8
\ready_to_play|LUT_DATA[5]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~148_combout\ = (\ready_to_play|LUT_INDEX\(5)) # (\ready_to_play|LUT_INDEX\(4) $ (((\ready_to_play|LUT_INDEX\(3)) # (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~148_combout\);

-- Location: LCCOMB_X25_Y42_N10
\ready_to_play|LUT_DATA[5]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~149_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)) # ((!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~149_combout\);

-- Location: LCCOMB_X25_Y42_N16
\ready_to_play|LUT_DATA[5]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~150_combout\ = (\ready_to_play|LUT_DATA[5]~147_combout\ & ((\ready_to_play|LUT_DATA[5]~148_combout\) # ((\ready_to_play|LUT_DATA~30_combout\ & \ready_to_play|LUT_DATA[5]~149_combout\)))) # 
-- (!\ready_to_play|LUT_DATA[5]~147_combout\ & (\ready_to_play|LUT_DATA~30_combout\ & ((\ready_to_play|LUT_DATA[5]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~147_combout\,
	datab => \ready_to_play|LUT_DATA~30_combout\,
	datac => \ready_to_play|LUT_DATA[5]~148_combout\,
	datad => \ready_to_play|LUT_DATA[5]~149_combout\,
	combout => \ready_to_play|LUT_DATA[5]~150_combout\);

-- Location: LCCOMB_X24_Y39_N12
\ready_to_play|LUT_DATA[5]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~151_combout\ = (!\ready_to_play|state_valid_invisible~q\ & (\ready_to_play|LUT_DATA[5]~105_combout\ & ((\ready_to_play|LUT_DATA[5]~146_combout\) # (\ready_to_play|LUT_DATA[5]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible~q\,
	datab => \ready_to_play|LUT_DATA[5]~105_combout\,
	datac => \ready_to_play|LUT_DATA[5]~146_combout\,
	datad => \ready_to_play|LUT_DATA[5]~150_combout\,
	combout => \ready_to_play|LUT_DATA[5]~151_combout\);

-- Location: LCCOMB_X23_Y42_N18
\ready_to_play|WideOr51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr51~2_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(4) & 
-- ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|WideOr51~2_combout\);

-- Location: LCCOMB_X25_Y38_N24
\ready_to_play|WideOr38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr38~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(2)) # 
-- (!\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr38~0_combout\);

-- Location: LCCOMB_X25_Y38_N26
\ready_to_play|LUT_DATA[6]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~157_combout\ = (!\ready_to_play|state_valid_test~q\ & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|WideOr16~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|WideOr38~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_test~q\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|WideOr16~0_combout\,
	datad => \ready_to_play|WideOr38~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~157_combout\);

-- Location: LCCOMB_X23_Y38_N12
\ready_to_play|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux8~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ (((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # 
-- ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y38_N20
\ready_to_play|LUT_DATA[6]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~162_combout\ = (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_DATA[3]~62_combout\ & \ready_to_play|LUT_DATA~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[3]~62_combout\,
	datad => \ready_to_play|LUT_DATA~24_combout\,
	combout => \ready_to_play|LUT_DATA[6]~162_combout\);

-- Location: LCCOMB_X24_Y38_N22
\ready_to_play|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux15~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(0))) # (!\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) & 
-- ((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux15~1_combout\);

-- Location: LCCOMB_X25_Y41_N26
\ready_to_play|LUT_DATA[7]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[7]~172_combout\ = (\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[7]~172_combout\);

-- Location: FF_X79_Y22_N13
\comb_3|counting_down|second_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~6_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(3));

-- Location: FF_X79_Y22_N23
\comb_3|counting_down|second_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~16_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(8));

-- Location: FF_X80_Y21_N1
\comb_3|counting_down|second_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~1_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(12));

-- Location: FF_X80_Y21_N7
\comb_3|counting_down|second_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~2_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(13));

-- Location: FF_X80_Y21_N5
\comb_3|counting_down|second_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~3_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(14));

-- Location: LCCOMB_X80_Y21_N8
\comb_3|counting_down|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~3_combout\ = (\comb_3|counting_down|second_counter\(13) & (\comb_3|counting_down|second_counter\(15) & (\comb_3|counting_down|second_counter\(14) & \comb_3|counting_down|second_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(13),
	datab => \comb_3|counting_down|second_counter\(15),
	datac => \comb_3|counting_down|second_counter\(14),
	datad => \comb_3|counting_down|second_counter\(12),
	combout => \comb_3|counting_down|Equal1~3_combout\);

-- Location: FF_X79_Y21_N11
\comb_3|counting_down|second_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~36_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(18));

-- Location: FF_X79_Y21_N27
\comb_3|counting_down|second_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~11_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(25));

-- Location: FF_X79_Y21_N23
\comb_3|counting_down|second_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~48_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(24));

-- Location: LCCOMB_X80_Y21_N12
\comb_3|counting_down|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~7_combout\ = (\comb_3|counting_down|second_counter\(25) & !\comb_3|counting_down|second_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(25),
	datad => \comb_3|counting_down|second_counter\(24),
	combout => \comb_3|counting_down|Equal1~7_combout\);

-- Location: LCCOMB_X28_Y37_N0
\comb_3|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux21~0_combout\ = (\comb_3|Add0~24_combout\ & (((!\comb_3|Equal0~4_combout\) # (!\comb_3|Equal0~9_combout\)) # (!\comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~7_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Add0~24_combout\,
	datad => \comb_3|Equal0~4_combout\,
	combout => \comb_3|Mux21~0_combout\);

-- Location: LCCOMB_X26_Y37_N22
\comb_3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux11~0_combout\ = (\comb_3|Add0~44_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~44_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|Mux11~0_combout\);

-- Location: LCCOMB_X26_Y37_N26
\comb_3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux7~0_combout\ = (!\comb_3|Equal0~10_combout\ & \comb_3|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Equal0~10_combout\,
	datad => \comb_3|Add0~52_combout\,
	combout => \comb_3|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y37_N6
\comb_3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Selector1~0_combout\ = (\comb_3|state\(3)) # ((\comb_3|state\(2)) # (\comb_3|state\(1) $ (\comb_3|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(2),
	combout => \comb_3|Selector1~0_combout\);

-- Location: FF_X102_Y39_N17
\comb_3|read_ir|data_buf[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[22]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(22));

-- Location: FF_X102_Y39_N23
\comb_3|read_ir|data_buf[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[19]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(19));

-- Location: LCCOMB_X72_Y42_N26
\clk_div|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~2_combout\ = (\clk_div|Add0~20_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Add0~20_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~2_combout\);

-- Location: LCCOMB_X72_Y42_N16
\clk_div|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~4_combout\ = (\clk_div|Add0~24_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Add0~24_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~4_combout\);

-- Location: LCCOMB_X72_Y42_N28
\clk_div|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~6_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~30_combout\,
	combout => \clk_div|counter~6_combout\);

-- Location: LCCOMB_X72_Y41_N16
\clk_div|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~7_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~34_combout\,
	combout => \clk_div|counter~7_combout\);

-- Location: FF_X46_Y41_N1
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

-- Location: FF_X46_Y41_N3
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

-- Location: FF_X46_Y41_N17
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

-- Location: LCCOMB_X80_Y21_N0
\comb_3|counting_down|second_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~1_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~24_combout\,
	combout => \comb_3|counting_down|second_counter~1_combout\);

-- Location: LCCOMB_X80_Y21_N6
\comb_3|counting_down|second_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~2_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~8_combout\,
	datac => \comb_3|counting_down|Add1~26_combout\,
	combout => \comb_3|counting_down|second_counter~2_combout\);

-- Location: LCCOMB_X80_Y21_N4
\comb_3|counting_down|second_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~3_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~28_combout\,
	combout => \comb_3|counting_down|second_counter~3_combout\);

-- Location: LCCOMB_X79_Y21_N26
\comb_3|counting_down|second_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~11_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~50_combout\,
	combout => \comb_3|counting_down|second_counter~11_combout\);

-- Location: LCCOMB_X102_Y39_N30
\comb_3|read_ir|data_buf[23]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~3_combout\ = (\comb_3|read_ir|data\(29) & (!\comb_3|read_ir|data\(21) & (\comb_3|read_ir|data\(28) $ (\comb_3|read_ir|data\(20))))) # (!\comb_3|read_ir|data\(29) & (\comb_3|read_ir|data\(21) & (\comb_3|read_ir|data\(28) $ 
-- (\comb_3|read_ir|data\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data\(29),
	datab => \comb_3|read_ir|data\(28),
	datac => \comb_3|read_ir|data\(21),
	datad => \comb_3|read_ir|data\(20),
	combout => \comb_3|read_ir|data_buf[23]~3_combout\);

-- Location: LCCOMB_X46_Y41_N22
\ready_to_play|u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector5~0_combout\ = ((\ready_to_play|u0|ST.01~q\) # ((\ready_to_play|u0|ST.10~q\ & \ready_to_play|u0|Cont\(4)))) # (!\ready_to_play|u0|ST.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.10~q\,
	datab => \ready_to_play|u0|ST.00~q\,
	datac => \ready_to_play|u0|ST.01~q\,
	datad => \ready_to_play|u0|Cont\(4),
	combout => \ready_to_play|u0|Selector5~0_combout\);

-- Location: LCCOMB_X46_Y41_N0
\ready_to_play|u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector5~1_combout\ = (\ready_to_play|u0|Selector5~0_combout\ & ((\ready_to_play|u0|Cont\(3)) # ((\ready_to_play|u0|Selector2~1_combout\ & \ready_to_play|u0|Add0~6_combout\)))) # (!\ready_to_play|u0|Selector5~0_combout\ & 
-- (\ready_to_play|u0|Selector2~1_combout\ & ((\ready_to_play|u0|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Selector5~0_combout\,
	datab => \ready_to_play|u0|Selector2~1_combout\,
	datac => \ready_to_play|u0|Cont\(3),
	datad => \ready_to_play|u0|Add0~6_combout\,
	combout => \ready_to_play|u0|Selector5~1_combout\);

-- Location: LCCOMB_X46_Y41_N2
\ready_to_play|u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector6~0_combout\ = (\ready_to_play|u0|Selector5~0_combout\ & ((\ready_to_play|u0|Cont\(2)) # ((\ready_to_play|u0|Selector2~1_combout\ & \ready_to_play|u0|Add0~4_combout\)))) # (!\ready_to_play|u0|Selector5~0_combout\ & 
-- (\ready_to_play|u0|Selector2~1_combout\ & ((\ready_to_play|u0|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Selector5~0_combout\,
	datab => \ready_to_play|u0|Selector2~1_combout\,
	datac => \ready_to_play|u0|Cont\(2),
	datad => \ready_to_play|u0|Add0~4_combout\,
	combout => \ready_to_play|u0|Selector6~0_combout\);

-- Location: LCCOMB_X46_Y41_N16
\ready_to_play|u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector7~0_combout\ = (\ready_to_play|u0|Selector5~0_combout\ & ((\ready_to_play|u0|Cont\(1)) # ((\ready_to_play|u0|Selector2~1_combout\ & \ready_to_play|u0|Add0~2_combout\)))) # (!\ready_to_play|u0|Selector5~0_combout\ & 
-- (\ready_to_play|u0|Selector2~1_combout\ & ((\ready_to_play|u0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Selector5~0_combout\,
	datab => \ready_to_play|u0|Selector2~1_combout\,
	datac => \ready_to_play|u0|Cont\(1),
	datad => \ready_to_play|u0|Add0~2_combout\,
	combout => \ready_to_play|u0|Selector7~0_combout\);

-- Location: LCCOMB_X105_Y39_N14
\comb_3|read_ir|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~0_combout\ = (!\comb_3|read_ir|bitcount\(0) & (\comb_3|read_ir|bitcount\(3) & (\comb_3|read_ir|bitcount\(4) & !\comb_3|read_ir|bitcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(0),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(4),
	datad => \comb_3|read_ir|bitcount\(5),
	combout => \comb_3|read_ir|Decoder0~0_combout\);

-- Location: LCCOMB_X107_Y39_N20
\comb_3|read_ir|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal0~2_combout\ = (\comb_3|read_ir|data_count\(15)) # ((\comb_3|read_ir|data_count\(13)) # ((\comb_3|read_ir|data_count\(0)) # (\comb_3|read_ir|data_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(15),
	datab => \comb_3|read_ir|data_count\(13),
	datac => \comb_3|read_ir|data_count\(0),
	datad => \comb_3|read_ir|data_count\(12),
	combout => \comb_3|read_ir|Equal0~2_combout\);

-- Location: LCCOMB_X105_Y39_N16
\comb_3|read_ir|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~2_combout\ = (\comb_3|read_ir|bitcount\(0) & (\comb_3|read_ir|bitcount\(3) & (\comb_3|read_ir|bitcount\(4) & !\comb_3|read_ir|bitcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(0),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(4),
	datad => \comb_3|read_ir|bitcount\(5),
	combout => \comb_3|read_ir|Decoder0~2_combout\);

-- Location: LCCOMB_X105_Y39_N6
\comb_3|read_ir|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~3_combout\ = (!\comb_3|read_ir|bitcount\(0) & (!\comb_3|read_ir|bitcount\(3) & (\comb_3|read_ir|bitcount\(4) & !\comb_3|read_ir|bitcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(0),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(4),
	datad => \comb_3|read_ir|bitcount\(5),
	combout => \comb_3|read_ir|Decoder0~3_combout\);

-- Location: LCCOMB_X106_Y39_N12
\comb_3|read_ir|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~5_combout\ = (\comb_3|read_ir|data\(25)) # ((\comb_3|read_ir|Decoder0~0_combout\ & (!\comb_3|read_ir|bitcount\(2) & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~0_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(25),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~5_combout\);

-- Location: LCCOMB_X106_Y39_N2
\comb_3|read_ir|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~9_combout\ = (\comb_3|read_ir|data\(27)) # ((\comb_3|read_ir|Decoder0~0_combout\ & (\comb_3|read_ir|bitcount\(2) & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~0_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(27),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~9_combout\);

-- Location: LCCOMB_X106_Y39_N18
\comb_3|read_ir|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~11_combout\ = (\comb_3|read_ir|data\(28)) # ((\comb_3|read_ir|Decoder0~2_combout\ & (!\comb_3|read_ir|bitcount\(1) & \comb_3|read_ir|bitcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~2_combout\,
	datab => \comb_3|read_ir|bitcount\(1),
	datac => \comb_3|read_ir|data\(28),
	datad => \comb_3|read_ir|bitcount\(2),
	combout => \comb_3|read_ir|data~11_combout\);

-- Location: LCCOMB_X106_Y39_N22
\comb_3|read_ir|data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~13_combout\ = (\comb_3|read_ir|data\(29)) # ((\comb_3|read_ir|Decoder0~0_combout\ & (\comb_3|read_ir|bitcount\(2) & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~0_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(29),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~13_combout\);

-- Location: LCCOMB_X105_Y39_N30
\comb_3|read_ir|data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~14_combout\ = (\comb_3|read_ir|data\(31)) # ((!\comb_3|read_ir|bitcount\(4) & (\comb_3|read_ir|bitcount\(5) & \comb_3|read_ir|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(4),
	datab => \comb_3|read_ir|bitcount\(5),
	datac => \comb_3|read_ir|data\(31),
	datad => \comb_3|read_ir|Equal1~0_combout\,
	combout => \comb_3|read_ir|data~14_combout\);

-- Location: LCCOMB_X107_Y39_N30
\comb_3|read_ir|Selector1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~9_combout\ = (\comb_3|read_ir|data_count\(15) & (\comb_3|read_ir|data_count\(16) & (\comb_3|read_ir|data_count\(0) & \comb_3|read_ir|data_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(15),
	datab => \comb_3|read_ir|data_count\(16),
	datac => \comb_3|read_ir|data_count\(0),
	datad => \comb_3|read_ir|data_count\(17),
	combout => \comb_3|read_ir|Selector1~9_combout\);

-- Location: LCCOMB_X25_Y42_N22
\ready_to_play|LUT_DATA~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA~177_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA~30_combout\ & !\ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA~30_combout\,
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA~177_combout\);

-- Location: LCCOMB_X23_Y42_N6
\ready_to_play|WideOr51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr51~3_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|WideOr51~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|WideOr51~2_combout\,
	combout => \ready_to_play|WideOr51~3_combout\);

-- Location: LCCOMB_X25_Y41_N12
\ready_to_play|LUT_DATA[7]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[7]~182_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_DATA[7]~172_combout\ & !\ready_to_play|LUT_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[7]~172_combout\,
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[7]~182_combout\);

-- Location: LCCOMB_X24_Y39_N18
\ready_to_play|LUT_DATA[5]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~183_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(1) & (((\ready_to_play|LUT_INDEX\(3)) # 
-- (!\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[5]~183_combout\);

-- Location: LCCOMB_X24_Y39_N8
\ready_to_play|LUT_DATA[5]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~184_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_DATA[5]~183_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(2) & 
-- ((\ready_to_play|LUT_DATA[5]~183_combout\) # ((\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_DATA[5]~183_combout\,
	combout => \ready_to_play|LUT_DATA[5]~184_combout\);

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

-- Location: LCCOMB_X72_Y42_N10
\clk_div|counter[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter[14]~feeder_combout\ = \clk_div|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~28_combout\,
	combout => \clk_div|counter[14]~feeder_combout\);

-- Location: LCCOMB_X102_Y39_N22
\comb_3|read_ir|data_buf[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[19]~feeder_combout\ = \comb_3|read_ir|data\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|read_ir|data\(19),
	combout => \comb_3|read_ir|data_buf[19]~feeder_combout\);

-- Location: LCCOMB_X102_Y39_N16
\comb_3|read_ir|data_buf[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[22]~feeder_combout\ = \comb_3|read_ir|data\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|read_ir|data\(22),
	combout => \comb_3|read_ir|data_buf[22]~feeder_combout\);

-- Location: LCCOMB_X59_Y39_N10
\comb_3|read_ir|oDATA[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|oDATA[22]~feeder_combout\ = \comb_3|read_ir|data_buf\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_buf\(22),
	combout => \comb_3|read_ir|oDATA[22]~feeder_combout\);

-- Location: LCCOMB_X59_Y39_N12
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

-- Location: IOOBUF_X69_Y73_N16
\LEDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|LEDR~q\,
	devoe => ww_devoe,
	o => \LEDR~output_o\);

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
	o => \lcd_data[0]~output_o\);

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
	o => \lcd_data[1]~output_o\);

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
	o => \lcd_data[2]~output_o\);

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
	o => \lcd_data[3]~output_o\);

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
	o => \lcd_data[4]~output_o\);

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
	o => \lcd_data[5]~output_o\);

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
	o => \lcd_data[6]~output_o\);

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
	o => \lcd_data[7]~output_o\);

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
	o => \lcd_rw~output_o\);

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
	o => \lcd_en~output_o\);

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
	o => \lcd_rs~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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

-- Location: LCCOMB_X27_Y37_N0
\comb_3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~30_combout\ = (\comb_3|counter\(15) & (!\comb_3|Add0~29\)) # (!\comb_3|counter\(15) & ((\comb_3|Add0~29\) # (GND)))
-- \comb_3|Add0~31\ = CARRY((!\comb_3|Add0~29\) # (!\comb_3|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(15),
	datad => VCC,
	cin => \comb_3|Add0~29\,
	combout => \comb_3|Add0~30_combout\,
	cout => \comb_3|Add0~31\);

-- Location: LCCOMB_X27_Y37_N2
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

-- Location: LCCOMB_X27_Y37_N6
\comb_3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~36_combout\ = (\comb_3|counter\(18) & (\comb_3|Add0~35\ $ (GND))) # (!\comb_3|counter\(18) & (!\comb_3|Add0~35\ & VCC))
-- \comb_3|Add0~37\ = CARRY((\comb_3|counter\(18) & !\comb_3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(18),
	datad => VCC,
	cin => \comb_3|Add0~35\,
	combout => \comb_3|Add0~36_combout\,
	cout => \comb_3|Add0~37\);

-- Location: LCCOMB_X27_Y37_N8
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

-- Location: FF_X27_Y37_N9
\comb_3|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~38_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(19));

-- Location: LCCOMB_X27_Y37_N10
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

-- Location: LCCOMB_X27_Y37_N12
\comb_3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~42_combout\ = (\comb_3|counter\(21) & (!\comb_3|Add0~41\)) # (!\comb_3|counter\(21) & ((\comb_3|Add0~41\) # (GND)))
-- \comb_3|Add0~43\ = CARRY((!\comb_3|Add0~41\) # (!\comb_3|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(21),
	datad => VCC,
	cin => \comb_3|Add0~41\,
	combout => \comb_3|Add0~42_combout\,
	cout => \comb_3|Add0~43\);

-- Location: LCCOMB_X26_Y37_N20
\comb_3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux12~0_combout\ = (\comb_3|Add0~42_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~42_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|Mux12~0_combout\);

-- Location: FF_X26_Y37_N21
\comb_3|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux12~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(21));

-- Location: FF_X27_Y37_N11
\comb_3|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~40_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(20));

-- Location: LCCOMB_X26_Y37_N14
\comb_3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~6_combout\ = (\comb_3|counter\(22) & (\comb_3|counter\(21) & (!\comb_3|counter\(20) & \comb_3|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(22),
	datab => \comb_3|counter\(21),
	datac => \comb_3|counter\(20),
	datad => \comb_3|counter\(23),
	combout => \comb_3|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y37_N2
\comb_3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~7_combout\ = (\comb_3|Equal0~6_combout\ & \comb_3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Equal0~6_combout\,
	datad => \comb_3|Equal0~5_combout\,
	combout => \comb_3|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y37_N10
\comb_3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~0_combout\ = (\comb_3|state\(3)) # (((!\comb_3|Equal0~7_combout\) # (!\comb_3|Equal0~4_combout\)) # (!\comb_3|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Equal0~4_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y37_N24
\comb_3|picked_first_power~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_first_power~0_combout\ = (\comb_3|state\(0)) # ((\comb_3|state\(3)) # (\comb_3|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datac => \comb_3|state\(3),
	datad => \comb_3|state\(2),
	combout => \comb_3|picked_first_power~0_combout\);

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

-- Location: LCCOMB_X30_Y37_N18
\comb_3|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|state~2_combout\ = (\comb_3|Equal0~10_combout\ & ((\SW[4]~input_o\) # (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \comb_3|Equal0~10_combout\,
	datad => \SW[3]~input_o\,
	combout => \comb_3|state~2_combout\);

-- Location: LCCOMB_X30_Y37_N30
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

-- Location: FF_X30_Y37_N31
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

-- Location: LCCOMB_X30_Y37_N8
\comb_3|picked_second_power~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_second_power~1_combout\ = (\comb_3|state\(1) & (!\comb_3|state\(3) & (!\comb_3|state\(2) & \comb_3|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(0),
	combout => \comb_3|picked_second_power~1_combout\);

-- Location: LCCOMB_X30_Y37_N24
\comb_3|picked_second_power~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_second_power~2_combout\ = (\comb_3|Selector1~0_combout\ & (((\comb_3|picked_second_power~q\)))) # (!\comb_3|Selector1~0_combout\ & (\comb_3|picked_second_power~1_combout\ & ((\comb_3|picked_second_power~q\) # (\comb_3|state~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Selector1~0_combout\,
	datab => \comb_3|picked_second_power~1_combout\,
	datac => \comb_3|picked_second_power~q\,
	datad => \comb_3|state~2_combout\,
	combout => \comb_3|picked_second_power~2_combout\);

-- Location: FF_X30_Y37_N25
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

-- Location: LCCOMB_X30_Y37_N22
\comb_3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~1_combout\ = (\comb_3|state\(2) & (\comb_3|picked_first_power~q\ & \comb_3|picked_second_power~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datac => \comb_3|picked_first_power~q\,
	datad => \comb_3|picked_second_power~q\,
	combout => \comb_3|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y37_N14
\comb_3|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~2_combout\ = (\comb_3|Equal0~10_combout\ & ((\comb_3|Mux0~1_combout\) # ((\SW[4]~input_o\ & \comb_3|picked_second_power~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \comb_3|Mux0~1_combout\,
	datac => \comb_3|picked_second_power~1_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y37_N28
\comb_3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~0_combout\ = (\comb_3|picked_first_power~q\ & \comb_3|picked_second_power~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|picked_first_power~q\,
	datad => \comb_3|picked_second_power~q\,
	combout => \comb_3|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y37_N10
\comb_3|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~3_combout\ = (\comb_3|Mux0~2_combout\) # ((\comb_3|state\(3) & ((\comb_3|Mux0~0_combout\) # (!\comb_3|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux2~1_combout\,
	datab => \comb_3|Mux0~2_combout\,
	datac => \comb_3|state\(3),
	datad => \comb_3|Mux0~0_combout\,
	combout => \comb_3|Mux0~3_combout\);

-- Location: FF_X29_Y37_N11
\comb_3|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(3));

-- Location: LCCOMB_X105_Y39_N18
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

-- Location: LCCOMB_X105_Y39_N22
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

-- Location: LCCOMB_X105_Y39_N24
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

-- Location: LCCOMB_X107_Y40_N14
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

-- Location: LCCOMB_X108_Y40_N8
\comb_3|read_ir|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|always5~1_combout\ = (\ir_input~input_o\ & \comb_3|read_ir|state.DATAREAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_input~input_o\,
	datad => \comb_3|read_ir|state.DATAREAD~q\,
	combout => \comb_3|read_ir|always5~1_combout\);

-- Location: FF_X108_Y40_N9
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

-- Location: FF_X107_Y40_N15
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

-- Location: LCCOMB_X107_Y40_N16
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

-- Location: FF_X107_Y40_N17
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

-- Location: LCCOMB_X107_Y40_N18
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

-- Location: FF_X107_Y40_N19
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

-- Location: LCCOMB_X107_Y40_N20
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

-- Location: FF_X107_Y40_N21
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

-- Location: LCCOMB_X107_Y40_N22
\comb_3|read_ir|data_count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[4]~26_combout\ = (\comb_3|read_ir|data_count\(4) & (\comb_3|read_ir|data_count[3]~25\ $ (GND))) # (!\comb_3|read_ir|data_count\(4) & (!\comb_3|read_ir|data_count[3]~25\ & VCC))
-- \comb_3|read_ir|data_count[4]~27\ = CARRY((\comb_3|read_ir|data_count\(4) & !\comb_3|read_ir|data_count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(4),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[3]~25\,
	combout => \comb_3|read_ir|data_count[4]~26_combout\,
	cout => \comb_3|read_ir|data_count[4]~27\);

-- Location: FF_X107_Y40_N23
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

-- Location: LCCOMB_X107_Y40_N24
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

-- Location: FF_X107_Y40_N25
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

-- Location: LCCOMB_X107_Y40_N26
\comb_3|read_ir|data_count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[6]~30_combout\ = (\comb_3|read_ir|data_count\(6) & (\comb_3|read_ir|data_count[5]~29\ $ (GND))) # (!\comb_3|read_ir|data_count\(6) & (!\comb_3|read_ir|data_count[5]~29\ & VCC))
-- \comb_3|read_ir|data_count[6]~31\ = CARRY((\comb_3|read_ir|data_count\(6) & !\comb_3|read_ir|data_count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|data_count\(6),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[5]~29\,
	combout => \comb_3|read_ir|data_count[6]~30_combout\,
	cout => \comb_3|read_ir|data_count[6]~31\);

-- Location: FF_X107_Y40_N27
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

-- Location: LCCOMB_X107_Y40_N28
\comb_3|read_ir|data_count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_count[7]~32_combout\ = (\comb_3|read_ir|data_count\(7) & (!\comb_3|read_ir|data_count[6]~31\)) # (!\comb_3|read_ir|data_count\(7) & ((\comb_3|read_ir|data_count[6]~31\) # (GND)))
-- \comb_3|read_ir|data_count[7]~33\ = CARRY((!\comb_3|read_ir|data_count[6]~31\) # (!\comb_3|read_ir|data_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(7),
	datad => VCC,
	cin => \comb_3|read_ir|data_count[6]~31\,
	combout => \comb_3|read_ir|data_count[7]~32_combout\,
	cout => \comb_3|read_ir|data_count[7]~33\);

-- Location: FF_X107_Y40_N29
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

-- Location: LCCOMB_X107_Y40_N0
\comb_3|read_ir|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~0_combout\ = (!\comb_3|read_ir|data_count\(8) & (!\comb_3|read_ir|data_count\(6) & !\comb_3|read_ir|data_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(8),
	datac => \comb_3|read_ir|data_count\(6),
	datad => \comb_3|read_ir|data_count\(7),
	combout => \comb_3|read_ir|LessThan4~0_combout\);

-- Location: LCCOMB_X107_Y39_N0
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

-- Location: FF_X107_Y39_N1
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

-- Location: LCCOMB_X107_Y39_N2
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

-- Location: FF_X107_Y39_N3
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

-- Location: LCCOMB_X107_Y39_N4
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

-- Location: FF_X107_Y39_N5
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

-- Location: LCCOMB_X107_Y39_N6
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

-- Location: LCCOMB_X107_Y39_N8
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

-- Location: FF_X107_Y39_N9
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

-- Location: LCCOMB_X107_Y39_N12
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

-- Location: LCCOMB_X107_Y39_N14
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

-- Location: FF_X107_Y39_N15
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

-- Location: LCCOMB_X107_Y39_N16
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

-- Location: FF_X107_Y39_N17
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

-- Location: LCCOMB_X107_Y40_N8
\comb_3|read_ir|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal0~0_combout\ = (\comb_3|read_ir|data_count\(4)) # ((\comb_3|read_ir|data_count\(3)) # ((\comb_3|read_ir|data_count\(16)) # (\comb_3|read_ir|data_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(4),
	datab => \comb_3|read_ir|data_count\(3),
	datac => \comb_3|read_ir|data_count\(16),
	datad => \comb_3|read_ir|data_count\(17),
	combout => \comb_3|read_ir|Equal0~0_combout\);

-- Location: LCCOMB_X107_Y39_N28
\comb_3|read_ir|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~1_combout\ = (\comb_3|read_ir|data_count\(11) & (\comb_3|read_ir|data_count\(9) & (\comb_3|read_ir|data_count\(10) & \comb_3|read_ir|data_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(11),
	datab => \comb_3|read_ir|data_count\(9),
	datac => \comb_3|read_ir|data_count\(10),
	datad => \comb_3|read_ir|data_count\(5),
	combout => \comb_3|read_ir|Selector1~1_combout\);

-- Location: LCCOMB_X107_Y39_N26
\comb_3|read_ir|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~2_combout\ = (\comb_3|read_ir|data_count\(14) & \comb_3|read_ir|Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(14),
	datad => \comb_3|read_ir|Selector1~1_combout\,
	combout => \comb_3|read_ir|Selector1~2_combout\);

-- Location: LCCOMB_X106_Y39_N6
\comb_3|read_ir|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Equal0~1_combout\ = (\comb_3|read_ir|data_count\(2)) # (((\comb_3|read_ir|Equal0~0_combout\) # (!\comb_3|read_ir|Selector1~2_combout\)) # (!\comb_3|read_ir|LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(2),
	datab => \comb_3|read_ir|LessThan4~0_combout\,
	datac => \comb_3|read_ir|Equal0~0_combout\,
	datad => \comb_3|read_ir|Selector1~2_combout\,
	combout => \comb_3|read_ir|Equal0~1_combout\);

-- Location: LCCOMB_X105_Y39_N12
\comb_3|read_ir|bitcount[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[1]~18_combout\ = ((!\comb_3|read_ir|Equal0~2_combout\ & (!\comb_3|read_ir|data_count\(1) & !\comb_3|read_ir|Equal0~1_combout\))) # (!\comb_3|read_ir|state.DATAREAD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Equal0~2_combout\,
	datab => \comb_3|read_ir|data_count\(1),
	datac => \comb_3|read_ir|state.DATAREAD~q\,
	datad => \comb_3|read_ir|Equal0~1_combout\,
	combout => \comb_3|read_ir|bitcount[1]~18_combout\);

-- Location: FF_X105_Y39_N25
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
	ena => \comb_3|read_ir|bitcount[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(3));

-- Location: LCCOMB_X105_Y39_N26
\comb_3|read_ir|bitcount[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[4]~14_combout\ = (\comb_3|read_ir|bitcount\(4) & (\comb_3|read_ir|bitcount[3]~13\ $ (GND))) # (!\comb_3|read_ir|bitcount\(4) & (!\comb_3|read_ir|bitcount[3]~13\ & VCC))
-- \comb_3|read_ir|bitcount[4]~15\ = CARRY((\comb_3|read_ir|bitcount\(4) & !\comb_3|read_ir|bitcount[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(4),
	datad => VCC,
	cin => \comb_3|read_ir|bitcount[3]~13\,
	combout => \comb_3|read_ir|bitcount[4]~14_combout\,
	cout => \comb_3|read_ir|bitcount[4]~15\);

-- Location: LCCOMB_X105_Y39_N28
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

-- Location: FF_X105_Y39_N29
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
	ena => \comb_3|read_ir|bitcount[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(5));

-- Location: FF_X107_Y39_N7
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

-- Location: LCCOMB_X107_Y40_N2
\comb_3|read_ir|Selector1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~7_combout\ = (\comb_3|read_ir|data_count\(8) & (\comb_3|read_ir|data_count\(7) & (\comb_3|read_ir|data_count\(13) & \comb_3|read_ir|data_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(8),
	datab => \comb_3|read_ir|data_count\(7),
	datac => \comb_3|read_ir|data_count\(13),
	datad => \comb_3|read_ir|data_count\(12),
	combout => \comb_3|read_ir|Selector1~7_combout\);

-- Location: LCCOMB_X107_Y40_N12
\comb_3|read_ir|Selector1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~8_combout\ = (\comb_3|read_ir|Selector1~0_combout\ & (\comb_3|read_ir|data_count\(6) & \comb_3|read_ir|Selector1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~0_combout\,
	datac => \comb_3|read_ir|data_count\(6),
	datad => \comb_3|read_ir|Selector1~7_combout\,
	combout => \comb_3|read_ir|Selector1~8_combout\);

-- Location: LCCOMB_X108_Y40_N6
\comb_3|read_ir|Selector1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~10_combout\ = (\comb_3|read_ir|Selector1~9_combout\ & (\comb_3|read_ir|data_count\(1) & (\comb_3|read_ir|Selector1~2_combout\ & \comb_3|read_ir|Selector1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~9_combout\,
	datab => \comb_3|read_ir|data_count\(1),
	datac => \comb_3|read_ir|Selector1~2_combout\,
	datad => \comb_3|read_ir|Selector1~8_combout\,
	combout => \comb_3|read_ir|Selector1~10_combout\);

-- Location: FF_X105_Y39_N27
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
	ena => \comb_3|read_ir|bitcount[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(4));

-- Location: LCCOMB_X105_Y39_N10
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

-- Location: LCCOMB_X108_Y39_N18
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

-- Location: LCCOMB_X109_Y40_N28
\comb_3|read_ir|Selector1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~11_combout\ = (\comb_3|read_ir|state.DATAREAD~q\ & ((\comb_3|read_ir|Selector1~10_combout\) # ((\comb_3|read_ir|bitcount\(5) & !\comb_3|read_ir|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state.DATAREAD~q\,
	datab => \comb_3|read_ir|bitcount\(5),
	datac => \comb_3|read_ir|Selector1~10_combout\,
	datad => \comb_3|read_ir|Equal1~1_combout\,
	combout => \comb_3|read_ir|Selector1~11_combout\);

-- Location: LCCOMB_X109_Y40_N4
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

-- Location: FF_X109_Y40_N5
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

-- Location: LCCOMB_X108_Y40_N14
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

-- Location: LCCOMB_X108_Y40_N4
\comb_3|read_ir|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|always1~1_combout\ = (!\ir_input~input_o\ & !\comb_3|read_ir|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_input~input_o\,
	datad => \comb_3|read_ir|state.IDLE~q\,
	combout => \comb_3|read_ir|always1~1_combout\);

-- Location: FF_X108_Y40_N5
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

-- Location: FF_X108_Y40_N15
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

-- Location: LCCOMB_X108_Y40_N16
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

-- Location: FF_X108_Y40_N17
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

-- Location: LCCOMB_X108_Y40_N18
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

-- Location: FF_X108_Y40_N19
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

-- Location: LCCOMB_X108_Y40_N20
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

-- Location: FF_X108_Y40_N21
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

-- Location: LCCOMB_X108_Y40_N22
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

-- Location: LCCOMB_X108_Y40_N24
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

-- Location: FF_X108_Y40_N25
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

-- Location: LCCOMB_X108_Y40_N28
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

-- Location: FF_X108_Y40_N29
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

-- Location: LCCOMB_X108_Y39_N0
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

-- Location: FF_X108_Y39_N1
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

-- Location: LCCOMB_X108_Y39_N2
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

-- Location: FF_X108_Y39_N3
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

-- Location: LCCOMB_X108_Y39_N4
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

-- Location: FF_X108_Y39_N5
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

-- Location: LCCOMB_X108_Y39_N8
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

-- Location: FF_X108_Y39_N9
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

-- Location: LCCOMB_X108_Y39_N12
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

-- Location: LCCOMB_X108_Y39_N14
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

-- Location: FF_X108_Y39_N15
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

-- Location: LCCOMB_X108_Y39_N16
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

-- Location: FF_X108_Y39_N17
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

-- Location: FF_X108_Y39_N13
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

-- Location: LCCOMB_X108_Y39_N26
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

-- Location: FF_X108_Y40_N23
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

-- Location: LCCOMB_X108_Y40_N12
\comb_3|read_ir|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~1_combout\ = (\comb_3|read_ir|idle_count\(1)) # ((\comb_3|read_ir|idle_count\(2)) # ((\comb_3|read_ir|idle_count\(0)) # (\comb_3|read_ir|idle_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(1),
	datab => \comb_3|read_ir|idle_count\(2),
	datac => \comb_3|read_ir|idle_count\(0),
	datad => \comb_3|read_ir|idle_count\(3),
	combout => \comb_3|read_ir|LessThan0~1_combout\);

-- Location: LCCOMB_X108_Y40_N2
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

-- Location: LCCOMB_X108_Y40_N0
\comb_3|read_ir|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~3_combout\ = (\comb_3|read_ir|idle_count\(9) & ((\comb_3|read_ir|idle_count\(8)) # ((\comb_3|read_ir|idle_count\(7)) # (\comb_3|read_ir|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(8),
	datab => \comb_3|read_ir|idle_count\(7),
	datac => \comb_3|read_ir|idle_count\(9),
	datad => \comb_3|read_ir|LessThan0~2_combout\,
	combout => \comb_3|read_ir|LessThan0~3_combout\);

-- Location: LCCOMB_X108_Y39_N24
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

-- Location: LCCOMB_X109_Y40_N26
\comb_3|read_ir|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan0~5_combout\ = (\comb_3|read_ir|LessThan0~0_combout\ & ((\comb_3|read_ir|idle_count\(14)) # ((\comb_3|read_ir|LessThan0~3_combout\) # (\comb_3|read_ir|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|idle_count\(14),
	datab => \comb_3|read_ir|LessThan0~0_combout\,
	datac => \comb_3|read_ir|LessThan0~3_combout\,
	datad => \comb_3|read_ir|LessThan0~4_combout\,
	combout => \comb_3|read_ir|LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y41_N14
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

-- Location: LCCOMB_X110_Y40_N20
\comb_3|read_ir|Selector1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~12_combout\ = (!\comb_3|read_ir|Selector1~11_combout\ & ((\comb_3|read_ir|Selector1~6_combout\ & ((\comb_3|read_ir|state.GUIDANCE~q\))) # (!\comb_3|read_ir|Selector1~6_combout\ & (!\comb_3|read_ir|Selector1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~5_combout\,
	datab => \comb_3|read_ir|Selector1~11_combout\,
	datac => \comb_3|read_ir|state.GUIDANCE~q\,
	datad => \comb_3|read_ir|Selector1~6_combout\,
	combout => \comb_3|read_ir|Selector1~12_combout\);

-- Location: FF_X110_Y40_N21
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

-- Location: LCCOMB_X108_Y40_N10
\comb_3|read_ir|always3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|always3~1_combout\ = (\ir_input~input_o\ & \comb_3|read_ir|state.GUIDANCE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_input~input_o\,
	datad => \comb_3|read_ir|state.GUIDANCE~q\,
	combout => \comb_3|read_ir|always3~1_combout\);

-- Location: FF_X108_Y40_N11
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

-- Location: FF_X110_Y41_N15
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

-- Location: LCCOMB_X110_Y41_N16
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

-- Location: FF_X110_Y41_N17
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

-- Location: LCCOMB_X110_Y41_N20
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

-- Location: FF_X110_Y41_N21
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

-- Location: LCCOMB_X110_Y41_N24
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

-- Location: FF_X110_Y41_N25
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

-- Location: LCCOMB_X110_Y41_N26
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

-- Location: LCCOMB_X110_Y41_N28
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

-- Location: FF_X110_Y41_N29
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

-- Location: LCCOMB_X110_Y40_N0
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

-- Location: FF_X110_Y40_N1
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

-- Location: LCCOMB_X110_Y40_N4
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

-- Location: FF_X110_Y40_N5
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

-- Location: LCCOMB_X110_Y40_N6
\comb_3|read_ir|state_count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[12]~42_combout\ = (\comb_3|read_ir|state_count\(12) & (\comb_3|read_ir|state_count[11]~41\ $ (GND))) # (!\comb_3|read_ir|state_count\(12) & (!\comb_3|read_ir|state_count[11]~41\ & VCC))
-- \comb_3|read_ir|state_count[12]~43\ = CARRY((\comb_3|read_ir|state_count\(12) & !\comb_3|read_ir|state_count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(12),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[11]~41\,
	combout => \comb_3|read_ir|state_count[12]~42_combout\,
	cout => \comb_3|read_ir|state_count[12]~43\);

-- Location: FF_X110_Y40_N7
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

-- Location: LCCOMB_X110_Y40_N8
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

-- Location: FF_X110_Y40_N9
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

-- Location: LCCOMB_X110_Y40_N10
\comb_3|read_ir|state_count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|state_count[14]~46_combout\ = (\comb_3|read_ir|state_count\(14) & (\comb_3|read_ir|state_count[13]~45\ $ (GND))) # (!\comb_3|read_ir|state_count\(14) & (!\comb_3|read_ir|state_count[13]~45\ & VCC))
-- \comb_3|read_ir|state_count[14]~47\ = CARRY((\comb_3|read_ir|state_count\(14) & !\comb_3|read_ir|state_count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state_count\(14),
	datad => VCC,
	cin => \comb_3|read_ir|state_count[13]~45\,
	combout => \comb_3|read_ir|state_count[14]~46_combout\,
	cout => \comb_3|read_ir|state_count[14]~47\);

-- Location: FF_X110_Y40_N11
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

-- Location: LCCOMB_X110_Y40_N14
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

-- Location: FF_X110_Y40_N15
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

-- Location: LCCOMB_X110_Y40_N16
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

-- Location: FF_X110_Y40_N17
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

-- Location: FF_X110_Y41_N27
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

-- Location: LCCOMB_X110_Y41_N12
\comb_3|read_ir|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan1~0_combout\ = (\comb_3|read_ir|state_count\(2)) # ((\comb_3|read_ir|state_count\(1)) # ((\comb_3|read_ir|state_count\(0)) # (\comb_3|read_ir|state_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(2),
	datab => \comb_3|read_ir|state_count\(1),
	datac => \comb_3|read_ir|state_count\(0),
	datad => \comb_3|read_ir|state_count\(3),
	combout => \comb_3|read_ir|LessThan1~0_combout\);

-- Location: LCCOMB_X110_Y41_N2
\comb_3|read_ir|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan1~1_combout\ = (\comb_3|read_ir|state_count\(6) & ((\comb_3|read_ir|state_count\(5)) # ((\comb_3|read_ir|state_count\(4) & \comb_3|read_ir|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(4),
	datab => \comb_3|read_ir|state_count\(5),
	datac => \comb_3|read_ir|state_count\(6),
	datad => \comb_3|read_ir|LessThan1~0_combout\,
	combout => \comb_3|read_ir|LessThan1~1_combout\);

-- Location: LCCOMB_X110_Y41_N0
\comb_3|read_ir|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan1~2_combout\ = (\comb_3|read_ir|state_count\(8)) # ((\comb_3|read_ir|state_count\(7)) # ((\comb_3|read_ir|state_count\(9)) # (\comb_3|read_ir|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(8),
	datab => \comb_3|read_ir|state_count\(7),
	datac => \comb_3|read_ir|state_count\(9),
	datad => \comb_3|read_ir|LessThan1~1_combout\,
	combout => \comb_3|read_ir|LessThan1~2_combout\);

-- Location: LCCOMB_X110_Y40_N30
\comb_3|read_ir|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~3_combout\ = (\comb_3|read_ir|state_count\(12) & ((\comb_3|read_ir|state_count\(11)) # ((\comb_3|read_ir|state_count\(10) & \comb_3|read_ir|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(10),
	datab => \comb_3|read_ir|state_count\(11),
	datac => \comb_3|read_ir|state_count\(12),
	datad => \comb_3|read_ir|LessThan1~2_combout\,
	combout => \comb_3|read_ir|Selector1~3_combout\);

-- Location: LCCOMB_X110_Y40_N28
\comb_3|read_ir|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~4_combout\ = (\comb_3|read_ir|state_count\(15)) # ((\comb_3|read_ir|state_count\(14)) # ((\comb_3|read_ir|state_count\(13) & \comb_3|read_ir|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state_count\(15),
	datab => \comb_3|read_ir|state_count\(13),
	datac => \comb_3|read_ir|Selector1~3_combout\,
	datad => \comb_3|read_ir|state_count\(14),
	combout => \comb_3|read_ir|Selector1~4_combout\);

-- Location: LCCOMB_X110_Y40_N18
\comb_3|read_ir|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~5_combout\ = (\comb_3|read_ir|state.GUIDANCE~q\ & (\comb_3|read_ir|state_count\(17) & (\comb_3|read_ir|state_count\(16) & \comb_3|read_ir|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|state.GUIDANCE~q\,
	datab => \comb_3|read_ir|state_count\(17),
	datac => \comb_3|read_ir|state_count\(16),
	datad => \comb_3|read_ir|Selector1~4_combout\,
	combout => \comb_3|read_ir|Selector1~5_combout\);

-- Location: LCCOMB_X110_Y40_N24
\comb_3|read_ir|Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector1~6_combout\ = (!\comb_3|read_ir|Selector1~5_combout\ & ((\comb_3|read_ir|state.IDLE~q\) # (!\comb_3|read_ir|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|state.IDLE~q\,
	datac => \comb_3|read_ir|LessThan0~5_combout\,
	datad => \comb_3|read_ir|Selector1~5_combout\,
	combout => \comb_3|read_ir|Selector1~6_combout\);

-- Location: LCCOMB_X110_Y40_N26
\comb_3|read_ir|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Selector2~0_combout\ = (!\comb_3|read_ir|Selector1~11_combout\ & ((\comb_3|read_ir|Selector1~6_combout\ & ((\comb_3|read_ir|state.DATAREAD~q\))) # (!\comb_3|read_ir|Selector1~6_combout\ & (\comb_3|read_ir|Selector1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Selector1~5_combout\,
	datab => \comb_3|read_ir|Selector1~11_combout\,
	datac => \comb_3|read_ir|state.DATAREAD~q\,
	datad => \comb_3|read_ir|Selector1~6_combout\,
	combout => \comb_3|read_ir|Selector2~0_combout\);

-- Location: FF_X110_Y40_N27
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

-- Location: FF_X105_Y39_N19
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
	ena => \comb_3|read_ir|bitcount[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(0));

-- Location: LCCOMB_X105_Y39_N20
\comb_3|read_ir|bitcount[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|bitcount[1]~8_combout\ = (\comb_3|read_ir|bitcount\(1) & (!\comb_3|read_ir|bitcount[0]~7\)) # (!\comb_3|read_ir|bitcount\(1) & ((\comb_3|read_ir|bitcount[0]~7\) # (GND)))
-- \comb_3|read_ir|bitcount[1]~9\ = CARRY((!\comb_3|read_ir|bitcount[0]~7\) # (!\comb_3|read_ir|bitcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|read_ir|bitcount\(1),
	datad => VCC,
	cin => \comb_3|read_ir|bitcount[0]~7\,
	combout => \comb_3|read_ir|bitcount[1]~8_combout\,
	cout => \comb_3|read_ir|bitcount[1]~9\);

-- Location: FF_X105_Y39_N21
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
	ena => \comb_3|read_ir|bitcount[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(1));

-- Location: FF_X105_Y39_N23
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
	ena => \comb_3|read_ir|bitcount[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|bitcount\(2));

-- Location: LCCOMB_X106_Y39_N20
\comb_3|read_ir|data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~12_combout\ = (\comb_3|read_ir|data\(21)) # ((\comb_3|read_ir|Decoder0~3_combout\ & (\comb_3|read_ir|bitcount\(2) & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~3_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(21),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~12_combout\);

-- Location: FF_X107_Y39_N13
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

-- Location: LCCOMB_X107_Y40_N10
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

-- Location: LCCOMB_X107_Y39_N18
\comb_3|read_ir|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~1_combout\ = ((!\comb_3|read_ir|data_count\(5) & (!\comb_3|read_ir|Selector1~0_combout\ & \comb_3|read_ir|LessThan4~0_combout\))) # (!\comb_3|read_ir|data_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(9),
	datab => \comb_3|read_ir|data_count\(5),
	datac => \comb_3|read_ir|Selector1~0_combout\,
	datad => \comb_3|read_ir|LessThan4~0_combout\,
	combout => \comb_3|read_ir|LessThan4~1_combout\);

-- Location: LCCOMB_X107_Y39_N24
\comb_3|read_ir|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~2_combout\ = (!\comb_3|read_ir|data_count\(12) & (!\comb_3|read_ir|data_count\(10) & (!\comb_3|read_ir|data_count\(11) & \comb_3|read_ir|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(12),
	datab => \comb_3|read_ir|data_count\(10),
	datac => \comb_3|read_ir|data_count\(11),
	datad => \comb_3|read_ir|LessThan4~1_combout\,
	combout => \comb_3|read_ir|LessThan4~2_combout\);

-- Location: LCCOMB_X107_Y39_N22
\comb_3|read_ir|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|LessThan4~3_combout\ = ((!\comb_3|read_ir|data_count\(14) & ((\comb_3|read_ir|LessThan4~2_combout\) # (!\comb_3|read_ir|data_count\(13))))) # (!\comb_3|read_ir|data_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(14),
	datab => \comb_3|read_ir|data_count\(15),
	datac => \comb_3|read_ir|data_count\(13),
	datad => \comb_3|read_ir|LessThan4~2_combout\,
	combout => \comb_3|read_ir|LessThan4~3_combout\);

-- Location: LCCOMB_X106_Y39_N28
\comb_3|read_ir|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~1_combout\ = (\comb_3|read_ir|data_count\(17)) # ((\comb_3|read_ir|data_count\(16)) # ((!\comb_3|read_ir|LessThan4~3_combout\) # (!\comb_3|read_ir|state.DATAREAD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_count\(17),
	datab => \comb_3|read_ir|data_count\(16),
	datac => \comb_3|read_ir|state.DATAREAD~q\,
	datad => \comb_3|read_ir|LessThan4~3_combout\,
	combout => \comb_3|read_ir|data~1_combout\);

-- Location: FF_X106_Y39_N21
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

-- Location: LCCOMB_X102_Y39_N14
\comb_3|read_ir|data_buf[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[21]~feeder_combout\ = \comb_3|read_ir|data\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|read_ir|data\(21),
	combout => \comb_3|read_ir|data_buf[21]~feeder_combout\);

-- Location: LCCOMB_X106_Y39_N26
\comb_3|read_ir|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~7_combout\ = (\comb_3|read_ir|data\(26)) # ((\comb_3|read_ir|Decoder0~2_combout\ & (\comb_3|read_ir|bitcount\(1) & !\comb_3|read_ir|bitcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~2_combout\,
	datab => \comb_3|read_ir|bitcount\(1),
	datac => \comb_3|read_ir|data\(26),
	datad => \comb_3|read_ir|bitcount\(2),
	combout => \comb_3|read_ir|data~7_combout\);

-- Location: FF_X106_Y39_N27
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

-- Location: LCCOMB_X106_Y39_N4
\comb_3|read_ir|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~8_combout\ = (\comb_3|read_ir|data\(19)) # ((\comb_3|read_ir|Decoder0~3_combout\ & (\comb_3|read_ir|bitcount\(2) & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~3_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(19),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~8_combout\);

-- Location: FF_X106_Y39_N5
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

-- Location: LCCOMB_X105_Y39_N2
\comb_3|read_ir|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|Decoder0~1_combout\ = (\comb_3|read_ir|bitcount\(0) & (!\comb_3|read_ir|bitcount\(3) & (\comb_3|read_ir|bitcount\(4) & !\comb_3|read_ir|bitcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(0),
	datab => \comb_3|read_ir|bitcount\(3),
	datac => \comb_3|read_ir|bitcount\(4),
	datad => \comb_3|read_ir|bitcount\(5),
	combout => \comb_3|read_ir|Decoder0~1_combout\);

-- Location: LCCOMB_X105_Y39_N4
\comb_3|read_ir|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~6_combout\ = (\comb_3|read_ir|data\(18)) # ((!\comb_3|read_ir|bitcount\(2) & (\comb_3|read_ir|Decoder0~1_combout\ & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(2),
	datab => \comb_3|read_ir|Decoder0~1_combout\,
	datac => \comb_3|read_ir|data\(18),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~6_combout\);

-- Location: FF_X105_Y39_N5
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

-- Location: LCCOMB_X102_Y39_N28
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

-- Location: LCCOMB_X105_Y39_N0
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

-- Location: FF_X105_Y39_N1
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

-- Location: LCCOMB_X106_Y39_N8
\comb_3|read_ir|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~0_combout\ = (\comb_3|read_ir|data\(23)) # ((\comb_3|read_ir|Decoder0~0_combout\ & (!\comb_3|read_ir|bitcount\(2) & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~0_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(23),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~0_combout\);

-- Location: FF_X106_Y39_N9
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

-- Location: LCCOMB_X106_Y39_N24
\comb_3|read_ir|data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~16_combout\ = (\comb_3|read_ir|data\(30)) # ((\comb_3|read_ir|Decoder0~2_combout\ & (\comb_3|read_ir|bitcount\(2) & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~2_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(30),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~16_combout\);

-- Location: FF_X106_Y39_N25
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

-- Location: LCCOMB_X105_Y39_N8
\comb_3|read_ir|data_buf[23]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~4_combout\ = (\comb_3|read_ir|data\(31) & (!\comb_3|read_ir|data\(23) & (\comb_3|read_ir|data\(22) $ (\comb_3|read_ir|data\(30))))) # (!\comb_3|read_ir|data\(31) & (\comb_3|read_ir|data\(23) & (\comb_3|read_ir|data\(22) $ 
-- (\comb_3|read_ir|data\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data\(31),
	datab => \comb_3|read_ir|data\(22),
	datac => \comb_3|read_ir|data\(23),
	datad => \comb_3|read_ir|data\(30),
	combout => \comb_3|read_ir|data_buf[23]~4_combout\);

-- Location: LCCOMB_X106_Y39_N0
\comb_3|read_ir|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~3_combout\ = (\comb_3|read_ir|data\(24)) # ((\comb_3|read_ir|Decoder0~2_combout\ & (!\comb_3|read_ir|bitcount\(2) & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~2_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(24),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~3_combout\);

-- Location: FF_X106_Y39_N1
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

-- Location: LCCOMB_X106_Y39_N30
\comb_3|read_ir|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~2_combout\ = (\comb_3|read_ir|data\(16)) # ((\comb_3|read_ir|Decoder0~1_combout\ & (!\comb_3|read_ir|bitcount\(2) & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~1_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(16),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~2_combout\);

-- Location: FF_X106_Y39_N31
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

-- Location: LCCOMB_X106_Y39_N10
\comb_3|read_ir|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~4_combout\ = (\comb_3|read_ir|data\(17)) # ((\comb_3|read_ir|Decoder0~3_combout\ & (!\comb_3|read_ir|bitcount\(2) & \comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~3_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(17),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~4_combout\);

-- Location: FF_X106_Y39_N11
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

-- Location: LCCOMB_X106_Y39_N14
\comb_3|read_ir|data_buf[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~0_combout\ = (\comb_3|read_ir|data\(25) & (!\comb_3|read_ir|data\(17) & (\comb_3|read_ir|data\(24) $ (\comb_3|read_ir|data\(16))))) # (!\comb_3|read_ir|data\(25) & (\comb_3|read_ir|data\(17) & (\comb_3|read_ir|data\(24) $ 
-- (\comb_3|read_ir|data\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data\(25),
	datab => \comb_3|read_ir|data\(24),
	datac => \comb_3|read_ir|data\(16),
	datad => \comb_3|read_ir|data\(17),
	combout => \comb_3|read_ir|data_buf[23]~0_combout\);

-- Location: LCCOMB_X102_Y39_N18
\comb_3|read_ir|data_buf[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~1_combout\ = (!\comb_3|read_ir|bitcount\(4) & (\comb_3|read_ir|bitcount\(5) & (\comb_3|read_ir|Equal1~0_combout\ & \comb_3|read_ir|data_buf[23]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|bitcount\(4),
	datab => \comb_3|read_ir|bitcount\(5),
	datac => \comb_3|read_ir|Equal1~0_combout\,
	datad => \comb_3|read_ir|data_buf[23]~0_combout\,
	combout => \comb_3|read_ir|data_buf[23]~1_combout\);

-- Location: LCCOMB_X102_Y39_N12
\comb_3|read_ir|data_buf[23]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~5_combout\ = (\comb_3|read_ir|data_buf[23]~3_combout\ & (\comb_3|read_ir|data_buf[23]~2_combout\ & (\comb_3|read_ir|data_buf[23]~4_combout\ & \comb_3|read_ir|data_buf[23]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|data_buf[23]~3_combout\,
	datab => \comb_3|read_ir|data_buf[23]~2_combout\,
	datac => \comb_3|read_ir|data_buf[23]~4_combout\,
	datad => \comb_3|read_ir|data_buf[23]~1_combout\,
	combout => \comb_3|read_ir|data_buf[23]~5_combout\);

-- Location: LCCOMB_X102_Y39_N2
\comb_3|read_ir|data_buf[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[23]~6_combout\ = (\reset~input_o\ & \comb_3|read_ir|data_buf[23]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \comb_3|read_ir|data_buf[23]~5_combout\,
	combout => \comb_3|read_ir|data_buf[23]~6_combout\);

-- Location: FF_X102_Y39_N15
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

-- Location: LCCOMB_X59_Y39_N0
\comb_3|read_ir|oDATA[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|oDATA[21]~feeder_combout\ = \comb_3|read_ir|data_buf\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_buf\(21),
	combout => \comb_3|read_ir|oDATA[21]~feeder_combout\);

-- Location: LCCOMB_X102_Y39_N10
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

-- Location: FF_X102_Y39_N11
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

-- Location: FF_X59_Y39_N1
\comb_3|read_ir|oDATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|oDATA[21]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(21));

-- Location: LCCOMB_X106_Y39_N16
\comb_3|read_ir|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data~10_combout\ = (\comb_3|read_ir|data\(20)) # ((\comb_3|read_ir|Decoder0~1_combout\ & (\comb_3|read_ir|bitcount\(2) & !\comb_3|read_ir|bitcount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|Decoder0~1_combout\,
	datab => \comb_3|read_ir|bitcount\(2),
	datac => \comb_3|read_ir|data\(20),
	datad => \comb_3|read_ir|bitcount\(1),
	combout => \comb_3|read_ir|data~10_combout\);

-- Location: FF_X106_Y39_N17
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

-- Location: LCCOMB_X102_Y39_N20
\comb_3|read_ir|data_buf[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|data_buf[20]~feeder_combout\ = \comb_3|read_ir|data\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data\(20),
	combout => \comb_3|read_ir|data_buf[20]~feeder_combout\);

-- Location: FF_X102_Y39_N21
\comb_3|read_ir|data_buf[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|data_buf[20]~feeder_combout\,
	ena => \comb_3|read_ir|data_buf[23]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|data_buf\(20));

-- Location: FF_X59_Y39_N31
\comb_3|read_ir|oDATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|read_ir|data_buf\(20),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(20));

-- Location: LCCOMB_X102_Y39_N8
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

-- Location: FF_X102_Y39_N9
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

-- Location: LCCOMB_X59_Y39_N28
\comb_3|read_ir|oDATA[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|oDATA[23]~feeder_combout\ = \comb_3|read_ir|data_buf\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|read_ir|data_buf\(23),
	combout => \comb_3|read_ir|oDATA[23]~feeder_combout\);

-- Location: FF_X59_Y39_N29
\comb_3|read_ir|oDATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|oDATA[23]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(23));

-- Location: LCCOMB_X59_Y39_N30
\comb_3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~0_combout\ = (!\comb_3|read_ir|oDATA\(22) & (!\comb_3|read_ir|oDATA\(21) & (!\comb_3|read_ir|oDATA\(20) & !\comb_3|read_ir|oDATA\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|oDATA\(22),
	datab => \comb_3|read_ir|oDATA\(21),
	datac => \comb_3|read_ir|oDATA\(20),
	datad => \comb_3|read_ir|oDATA\(23),
	combout => \comb_3|Equal1~0_combout\);

-- Location: LCCOMB_X102_Y39_N26
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

-- Location: FF_X102_Y39_N27
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

-- Location: LCCOMB_X59_Y39_N20
\comb_3|read_ir|oDATA[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|oDATA[17]~feeder_combout\ = \comb_3|read_ir|data_buf\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_buf\(17),
	combout => \comb_3|read_ir|oDATA[17]~feeder_combout\);

-- Location: FF_X59_Y39_N21
\comb_3|read_ir|oDATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|oDATA[17]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(17));

-- Location: LCCOMB_X102_Y39_N24
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

-- Location: FF_X102_Y39_N25
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

-- Location: FF_X59_Y39_N7
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

-- Location: LCCOMB_X102_Y39_N0
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

-- Location: FF_X102_Y39_N1
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

-- Location: LCCOMB_X59_Y39_N18
\comb_3|read_ir|oDATA[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|read_ir|oDATA[18]~feeder_combout\ = \comb_3|read_ir|data_buf\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|read_ir|data_buf\(18),
	combout => \comb_3|read_ir|oDATA[18]~feeder_combout\);

-- Location: FF_X59_Y39_N19
\comb_3|read_ir|oDATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|read_ir|oDATA[18]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \comb_3|read_ir|data_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|read_ir|oDATA\(18));

-- Location: LCCOMB_X59_Y39_N6
\comb_3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal1~1_combout\ = (!\comb_3|read_ir|oDATA\(19) & (!\comb_3|read_ir|oDATA\(17) & (!\comb_3|read_ir|oDATA\(16) & !\comb_3|read_ir|oDATA\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|read_ir|oDATA\(19),
	datab => \comb_3|read_ir|oDATA\(17),
	datac => \comb_3|read_ir|oDATA\(16),
	datad => \comb_3|read_ir|oDATA\(18),
	combout => \comb_3|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y37_N12
\comb_3|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~2_combout\ = (\comb_3|state\(0)) # ((\SW[5]~input_o\ & (\comb_3|Equal1~0_combout\ & \comb_3|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \comb_3|state\(0),
	datac => \comb_3|Equal1~0_combout\,
	datad => \comb_3|Equal1~1_combout\,
	combout => \comb_3|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y37_N2
\comb_3|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~3_combout\ = (\comb_3|Mux1~1_combout\ & ((\comb_3|Equal0~10_combout\) # ((\comb_3|state\(3) & \comb_3|Mux1~2_combout\)))) # (!\comb_3|Mux1~1_combout\ & (\comb_3|state\(3) & ((\comb_3|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux1~1_combout\,
	datab => \comb_3|state\(3),
	datac => \comb_3|Equal0~10_combout\,
	datad => \comb_3|Mux1~2_combout\,
	combout => \comb_3|Mux1~3_combout\);

-- Location: LCCOMB_X30_Y37_N20
\comb_3|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux1~4_combout\ = (\comb_3|state\(1) & ((\comb_3|Mux1~3_combout\) # ((\comb_3|state\(2) & \comb_3|Mux1~0_combout\)))) # (!\comb_3|state\(1) & (\comb_3|state\(2) & (\comb_3|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(2),
	datac => \comb_3|Mux1~0_combout\,
	datad => \comb_3|Mux1~3_combout\,
	combout => \comb_3|Mux1~4_combout\);

-- Location: FF_X29_Y37_N17
\comb_3|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|Mux1~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(2));

-- Location: LCCOMB_X28_Y38_N30
\comb_3|counter[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counter[17]~0_combout\ = \comb_3|state\(3) $ (((\comb_3|state\(1)) # (\comb_3|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(3),
	combout => \comb_3|counter[17]~0_combout\);

-- Location: FF_X27_Y37_N3
\comb_3|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~32_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(16));

-- Location: LCCOMB_X27_Y37_N4
\comb_3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~34_combout\ = (\comb_3|counter\(17) & (!\comb_3|Add0~33\)) # (!\comb_3|counter\(17) & ((\comb_3|Add0~33\) # (GND)))
-- \comb_3|Add0~35\ = CARRY((!\comb_3|Add0~33\) # (!\comb_3|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(17),
	datad => VCC,
	cin => \comb_3|Add0~33\,
	combout => \comb_3|Add0~34_combout\,
	cout => \comb_3|Add0~35\);

-- Location: LCCOMB_X28_Y37_N18
\comb_3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux15~0_combout\ = (\comb_3|Add0~36_combout\ & (((!\comb_3|Equal0~9_combout\) # (!\comb_3|Equal0~4_combout\)) # (!\comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~7_combout\,
	datab => \comb_3|Equal0~4_combout\,
	datac => \comb_3|Add0~36_combout\,
	datad => \comb_3|Equal0~9_combout\,
	combout => \comb_3|Mux15~0_combout\);

-- Location: FF_X28_Y37_N19
\comb_3|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux15~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(18));

-- Location: LCCOMB_X27_Y38_N2
\comb_3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~0_combout\ = \comb_3|counter\(0) $ (VCC)
-- \comb_3|Add0~1\ = CARRY(\comb_3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(0),
	datad => VCC,
	combout => \comb_3|Add0~0_combout\,
	cout => \comb_3|Add0~1\);

-- Location: LCCOMB_X27_Y38_N0
\comb_3|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux33~0_combout\ = (\comb_3|Add0~0_combout\ & (((!\comb_3|Equal0~7_combout\) # (!\comb_3|Equal0~9_combout\)) # (!\comb_3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~4_combout\,
	datab => \comb_3|Add0~0_combout\,
	datac => \comb_3|Equal0~9_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Mux33~0_combout\);

-- Location: FF_X27_Y38_N1
\comb_3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux33~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(0));

-- Location: LCCOMB_X27_Y38_N4
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

-- Location: FF_X27_Y38_N5
\comb_3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~2_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(1));

-- Location: LCCOMB_X28_Y37_N28
\comb_3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~5_combout\ = (!\comb_3|counter\(19) & (\comb_3|counter\(18) & (!\comb_3|counter\(1) & !\comb_3|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(19),
	datab => \comb_3|counter\(18),
	datac => \comb_3|counter\(1),
	datad => \comb_3|counter\(0),
	combout => \comb_3|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y37_N24
\comb_3|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~10_combout\ = (\comb_3|Equal0~6_combout\ & (\comb_3|Equal0~5_combout\ & (\comb_3|Equal0~4_combout\ & \comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~6_combout\,
	datab => \comb_3|Equal0~5_combout\,
	datac => \comb_3|Equal0~4_combout\,
	datad => \comb_3|Equal0~9_combout\,
	combout => \comb_3|Equal0~10_combout\);

-- Location: LCCOMB_X27_Y37_N16
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

-- Location: LCCOMB_X26_Y37_N28
\comb_3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux10~0_combout\ = (!\comb_3|Equal0~10_combout\ & \comb_3|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Equal0~10_combout\,
	datad => \comb_3|Add0~46_combout\,
	combout => \comb_3|Mux10~0_combout\);

-- Location: FF_X26_Y37_N29
\comb_3|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux10~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(23));

-- Location: LCCOMB_X27_Y37_N18
\comb_3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~48_combout\ = (\comb_3|counter\(24) & (\comb_3|Add0~47\ $ (GND))) # (!\comb_3|counter\(24) & (!\comb_3|Add0~47\ & VCC))
-- \comb_3|Add0~49\ = CARRY((\comb_3|counter\(24) & !\comb_3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(24),
	datad => VCC,
	cin => \comb_3|Add0~47\,
	combout => \comb_3|Add0~48_combout\,
	cout => \comb_3|Add0~49\);

-- Location: FF_X27_Y37_N19
\comb_3|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~48_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(24));

-- Location: LCCOMB_X27_Y37_N20
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

-- Location: LCCOMB_X26_Y37_N4
\comb_3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux8~0_combout\ = (\comb_3|Add0~50_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~50_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|Mux8~0_combout\);

-- Location: FF_X26_Y37_N5
\comb_3|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux8~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(25));

-- Location: LCCOMB_X27_Y37_N24
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

-- Location: LCCOMB_X27_Y37_N26
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

-- Location: FF_X27_Y37_N27
\comb_3|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~56_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(28));

-- Location: LCCOMB_X27_Y37_N28
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

-- Location: FF_X27_Y37_N29
\comb_3|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~58_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(29));

-- Location: LCCOMB_X27_Y37_N30
\comb_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux6~0_combout\ = (!\comb_3|Equal0~10_combout\ & \comb_3|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Equal0~10_combout\,
	datad => \comb_3|Add0~54_combout\,
	combout => \comb_3|Mux6~0_combout\);

-- Location: FF_X27_Y37_N31
\comb_3|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux6~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(27));

-- Location: LCCOMB_X26_Y37_N24
\comb_3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~8_combout\ = (\comb_3|counter\(26) & (\comb_3|counter\(25) & (\comb_3|counter\(27) & !\comb_3|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(26),
	datab => \comb_3|counter\(25),
	datac => \comb_3|counter\(27),
	datad => \comb_3|counter\(24),
	combout => \comb_3|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y37_N30
\comb_3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~9_combout\ = (!\comb_3|counter\(28) & (!\comb_3|counter\(29) & \comb_3|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counter\(28),
	datac => \comb_3|counter\(29),
	datad => \comb_3|Equal0~8_combout\,
	combout => \comb_3|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y37_N22
\comb_3|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux20~0_combout\ = (\comb_3|Add0~26_combout\ & (((!\comb_3|Equal0~7_combout\) # (!\comb_3|Equal0~4_combout\)) # (!\comb_3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~26_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Equal0~4_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Mux20~0_combout\);

-- Location: FF_X28_Y37_N23
\comb_3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux20~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(13));

-- Location: LCCOMB_X27_Y38_N8
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

-- Location: FF_X27_Y38_N9
\comb_3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~6_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(3));

-- Location: LCCOMB_X27_Y38_N10
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

-- Location: LCCOMB_X27_Y38_N12
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

-- Location: LCCOMB_X27_Y38_N14
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

-- Location: FF_X27_Y38_N15
\comb_3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~12_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(6));

-- Location: LCCOMB_X27_Y38_N16
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

-- Location: LCCOMB_X28_Y37_N6
\comb_3|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux26~0_combout\ = (\comb_3|Add0~14_combout\ & (((!\comb_3|Equal0~9_combout\) # (!\comb_3|Equal0~4_combout\)) # (!\comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~7_combout\,
	datab => \comb_3|Equal0~4_combout\,
	datac => \comb_3|Add0~14_combout\,
	datad => \comb_3|Equal0~9_combout\,
	combout => \comb_3|Mux26~0_combout\);

-- Location: FF_X28_Y37_N7
\comb_3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux26~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(7));

-- Location: LCCOMB_X27_Y38_N18
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

-- Location: FF_X27_Y38_N19
\comb_3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~16_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(8));

-- Location: LCCOMB_X27_Y38_N20
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

-- Location: LCCOMB_X28_Y37_N12
\comb_3|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux24~0_combout\ = (\comb_3|Add0~18_combout\ & (((!\comb_3|Equal0~4_combout\) # (!\comb_3|Equal0~9_combout\)) # (!\comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~7_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Equal0~4_combout\,
	datad => \comb_3|Add0~18_combout\,
	combout => \comb_3|Mux24~0_combout\);

-- Location: FF_X28_Y37_N13
\comb_3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux24~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(9));

-- Location: LCCOMB_X27_Y38_N24
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

-- Location: FF_X27_Y38_N25
\comb_3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~22_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(11));

-- Location: LCCOMB_X27_Y38_N30
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

-- Location: LCCOMB_X28_Y37_N14
\comb_3|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux18~0_combout\ = (\comb_3|Add0~30_combout\ & (((!\comb_3|Equal0~9_combout\) # (!\comb_3|Equal0~4_combout\)) # (!\comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~7_combout\,
	datab => \comb_3|Equal0~4_combout\,
	datac => \comb_3|Add0~30_combout\,
	datad => \comb_3|Equal0~9_combout\,
	combout => \comb_3|Mux18~0_combout\);

-- Location: FF_X28_Y37_N15
\comb_3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux18~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(15));

-- Location: FF_X27_Y38_N31
\comb_3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~28_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(14));

-- Location: LCCOMB_X28_Y37_N16
\comb_3|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux16~0_combout\ = (\comb_3|Add0~34_combout\ & (((!\comb_3|Equal0~4_combout\) # (!\comb_3|Equal0~9_combout\)) # (!\comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~7_combout\,
	datab => \comb_3|Equal0~9_combout\,
	datac => \comb_3|Add0~34_combout\,
	datad => \comb_3|Equal0~4_combout\,
	combout => \comb_3|Mux16~0_combout\);

-- Location: FF_X28_Y37_N17
\comb_3|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux16~0_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(17));

-- Location: LCCOMB_X28_Y37_N8
\comb_3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~0_combout\ = (!\comb_3|counter\(16) & (\comb_3|counter\(15) & (!\comb_3|counter\(14) & \comb_3|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(16),
	datab => \comb_3|counter\(15),
	datac => \comb_3|counter\(14),
	datad => \comb_3|counter\(17),
	combout => \comb_3|Equal0~0_combout\);

-- Location: FF_X27_Y38_N13
\comb_3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~10_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(5));

-- Location: FF_X27_Y38_N11
\comb_3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Add0~8_combout\,
	ena => \comb_3|counter[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counter\(4));

-- Location: LCCOMB_X28_Y37_N30
\comb_3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~3_combout\ = (!\comb_3|counter\(2) & (!\comb_3|counter\(3) & (!\comb_3|counter\(5) & !\comb_3|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(2),
	datab => \comb_3|counter\(3),
	datac => \comb_3|counter\(5),
	datad => \comb_3|counter\(4),
	combout => \comb_3|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y37_N20
\comb_3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~2_combout\ = (\comb_3|counter\(7) & (\comb_3|counter\(9) & (!\comb_3|counter\(8) & !\comb_3|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counter\(7),
	datab => \comb_3|counter\(9),
	datac => \comb_3|counter\(8),
	datad => \comb_3|counter\(6),
	combout => \comb_3|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y37_N4
\comb_3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~4_combout\ = (\comb_3|Equal0~1_combout\ & (\comb_3|Equal0~0_combout\ & (\comb_3|Equal0~3_combout\ & \comb_3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~1_combout\,
	datab => \comb_3|Equal0~0_combout\,
	datac => \comb_3|Equal0~3_combout\,
	datad => \comb_3|Equal0~2_combout\,
	combout => \comb_3|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y37_N4
\comb_3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~1_combout\ = (\select_your_power|oHEX_D1[5]~3_combout\ & (\comb_3|Equal0~4_combout\ & (\comb_3|Equal0~9_combout\ & \comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_your_power|oHEX_D1[5]~3_combout\,
	datab => \comb_3|Equal0~4_combout\,
	datac => \comb_3|Equal0~9_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Mux2~1_combout\);

-- Location: LCCOMB_X29_Y37_N2
\comb_3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~0_combout\ = (\comb_3|Equal0~9_combout\ & (\comb_3|state\(2) & (\comb_3|Equal0~4_combout\ & \comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~9_combout\,
	datab => \comb_3|state\(2),
	datac => \comb_3|Equal0~4_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y37_N24
\comb_3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~3_combout\ = (\SW[4]~input_o\ $ (((\comb_3|state\(0)) # (!\SW[3]~input_o\)))) # (!\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \comb_3|state\(0),
	datac => \SW[3]~input_o\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|Mux2~3_combout\);

-- Location: LCCOMB_X29_Y37_N22
\comb_3|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~4_combout\ = (\comb_3|Mux2~2_combout\) # ((\comb_3|Mux3~0_combout\) # ((\comb_3|state\(1) & \comb_3|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux2~2_combout\,
	datab => \comb_3|state\(1),
	datac => \comb_3|Mux3~0_combout\,
	datad => \comb_3|Mux2~3_combout\,
	combout => \comb_3|Mux2~4_combout\);

-- Location: LCCOMB_X30_Y37_N16
\comb_3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~0_combout\ = (\comb_3|state\(1) & ((\comb_3|state\(2)) # ((\comb_3|state\(3) & !\comb_3|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(0),
	combout => \comb_3|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y37_N0
\comb_3|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux2~5_combout\ = (\comb_3|Mux2~0_combout\) # ((\comb_3|state\(3) & (\comb_3|Mux2~1_combout\)) # (!\comb_3|state\(3) & ((\comb_3|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|Mux2~1_combout\,
	datac => \comb_3|Mux2~4_combout\,
	datad => \comb_3|Mux2~0_combout\,
	combout => \comb_3|Mux2~5_combout\);

-- Location: FF_X29_Y37_N1
\comb_3|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(1));

-- Location: LCCOMB_X30_Y37_N14
\comb_3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~3_combout\ = ((\comb_3|state\(2)) # (!\comb_3|state\(1))) # (!\SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(1),
	combout => \comb_3|Mux3~3_combout\);

-- Location: LCCOMB_X30_Y37_N0
\comb_3|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~4_combout\ = (\comb_3|Mux3~3_combout\) # ((\comb_3|Equal1~0_combout\ & \comb_3|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal1~0_combout\,
	datac => \comb_3|Mux3~3_combout\,
	datad => \comb_3|Equal1~1_combout\,
	combout => \comb_3|Mux3~4_combout\);

-- Location: LCCOMB_X29_Y37_N8
\comb_3|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|state~0_combout\ = ((\SW[3]~input_o\) # (!\comb_3|Equal0~10_combout\)) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|state~0_combout\);

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

-- Location: LCCOMB_X29_Y37_N28
\comb_3|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~5_combout\ = (\select_your_power|oHEX_D1[5]~3_combout\ & ((\SW[0]~input_o\) # ((!\comb_3|Mux0~0_combout\ & \comb_3|Mux3~0_combout\)))) # (!\select_your_power|oHEX_D1[5]~3_combout\ & (!\comb_3|Mux0~0_combout\ & ((\comb_3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \select_your_power|oHEX_D1[5]~3_combout\,
	datab => \comb_3|Mux0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \comb_3|Mux3~0_combout\,
	combout => \comb_3|Mux3~5_combout\);

-- Location: LCCOMB_X29_Y37_N6
\comb_3|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~6_combout\ = (\comb_3|Mux3~5_combout\) # ((\comb_3|state\(1) & (!\comb_3|state\(2) & !\comb_3|state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(2),
	datac => \comb_3|state~0_combout\,
	datad => \comb_3|Mux3~5_combout\,
	combout => \comb_3|Mux3~6_combout\);

-- Location: LCCOMB_X29_Y37_N20
\comb_3|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~7_combout\ = (\comb_3|state\(3) & ((\comb_3|state\(0)) # ((!\comb_3|Mux3~4_combout\)))) # (!\comb_3|state\(3) & (!\comb_3|state\(0) & ((\comb_3|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|state\(0),
	datac => \comb_3|Mux3~4_combout\,
	datad => \comb_3|Mux3~6_combout\,
	combout => \comb_3|Mux3~7_combout\);

-- Location: LCCOMB_X29_Y37_N18
\comb_3|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux3~8_combout\ = (\comb_3|state\(0) & ((\comb_3|Mux3~7_combout\ & ((!\comb_3|Mux2~1_combout\))) # (!\comb_3|Mux3~7_combout\ & (\comb_3|Mux3~2_combout\)))) # (!\comb_3|state\(0) & (((\comb_3|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Mux3~2_combout\,
	datab => \comb_3|Mux2~1_combout\,
	datac => \comb_3|state\(0),
	datad => \comb_3|Mux3~7_combout\,
	combout => \comb_3|Mux3~8_combout\);

-- Location: FF_X29_Y37_N19
\comb_3|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|Mux3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|state\(0));

-- Location: LCCOMB_X28_Y38_N2
\comb_3|LEDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|LEDR~0_combout\ = (!\comb_3|state\(0) & \comb_3|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(1),
	combout => \comb_3|LEDR~0_combout\);

-- Location: LCCOMB_X28_Y38_N12
\comb_3|LEDR~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|LEDR~1_combout\ = (\comb_3|state\(0) & (((!\comb_3|state\(2))))) # (!\comb_3|state\(0) & ((\comb_3|state\(1) & ((\comb_3|state\(3)) # (!\comb_3|state\(2)))) # (!\comb_3|state\(1) & (!\comb_3|state\(2) & \comb_3|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(0),
	datab => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(3),
	combout => \comb_3|LEDR~1_combout\);

-- Location: LCCOMB_X28_Y38_N20
\comb_3|LEDR~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|LEDR~2_combout\ = (\comb_3|state\(2) & ((\comb_3|LEDR~1_combout\ & (\comb_3|LEDR~0_combout\)) # (!\comb_3|LEDR~1_combout\ & ((\comb_3|LEDR~q\))))) # (!\comb_3|state\(2) & (((\comb_3|LEDR~q\ & \comb_3|LEDR~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|LEDR~0_combout\,
	datac => \comb_3|LEDR~q\,
	datad => \comb_3|LEDR~1_combout\,
	combout => \comb_3|LEDR~2_combout\);

-- Location: FF_X28_Y38_N21
\comb_3|LEDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|LEDR~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|LEDR~q\);

-- Location: LCCOMB_X28_Y38_N24
\comb_3|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Mux0~4_combout\ = (\comb_3|state\(0) & \comb_3|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(1),
	combout => \comb_3|Mux0~4_combout\);

-- Location: FF_X25_Y39_N5
\ready_to_play|state_valid_breaker\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \comb_3|Mux0~4_combout\,
	sclr => \comb_3|state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_breaker~q\);

-- Location: FF_X24_Y41_N1
\ready_to_play|state_valid_coder\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \comb_3|LEDR~0_combout\,
	sclr => \comb_3|state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_coder~q\);

-- Location: LCCOMB_X24_Y41_N14
\ready_to_play|LUT_DATA[3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~62_combout\ = (!\ready_to_play|state_valid_breaker~q\ & !\ready_to_play|state_valid_coder~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|state_valid_coder~q\,
	combout => \ready_to_play|LUT_DATA[3]~62_combout\);

-- Location: LCCOMB_X28_Y38_N0
\ready_to_play|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector4~0_combout\ = (!\comb_3|state\(0) & !\comb_3|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(1),
	combout => \ready_to_play|Selector4~0_combout\);

-- Location: FF_X24_Y41_N17
\ready_to_play|state_valid_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \ready_to_play|Selector4~0_combout\,
	sclr => \comb_3|state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_ready~q\);

-- Location: LCCOMB_X28_Y38_N14
\ready_to_play|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector5~0_combout\ = (\comb_3|state\(0) & !\comb_3|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(1),
	combout => \ready_to_play|Selector5~0_combout\);

-- Location: FF_X24_Y41_N9
\ready_to_play|state_valid_group\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \ready_to_play|Selector5~0_combout\,
	sclr => \comb_3|state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_group~q\);

-- Location: LCCOMB_X24_Y41_N16
\ready_to_play|LUT_DATA[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~63_combout\ = (((\ready_to_play|state_valid_ready~q\) # (\ready_to_play|state_valid_group~q\)) # (!\ready_to_play|LUT_DATA[3]~62_combout\)) # (!\ready_to_play|LUT_DATA[3]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~61_combout\,
	datab => \ready_to_play|LUT_DATA[3]~62_combout\,
	datac => \ready_to_play|state_valid_ready~q\,
	datad => \ready_to_play|state_valid_group~q\,
	combout => \ready_to_play|LUT_DATA[1]~63_combout\);

-- Location: CLKCTRL_G2
\ready_to_play|LUT_DATA[1]~63clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ready_to_play|LUT_DATA[1]~63clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\);

-- Location: LCCOMB_X24_Y42_N20
\ready_to_play|LUT_INDEX[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[0]~6_combout\ = \ready_to_play|LUT_INDEX\(0) $ (VCC)
-- \ready_to_play|LUT_INDEX[0]~7\ = CARRY(\ready_to_play|LUT_INDEX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(0),
	datad => VCC,
	combout => \ready_to_play|LUT_INDEX[0]~6_combout\,
	cout => \ready_to_play|LUT_INDEX[0]~7\);

-- Location: LCCOMB_X73_Y42_N2
\clk_div|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~0_combout\ = \clk_div|counter\(0) $ (VCC)
-- \clk_div|Add0~1\ = CARRY(\clk_div|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(0),
	datad => VCC,
	combout => \clk_div|Add0~0_combout\,
	cout => \clk_div|Add0~1\);

-- Location: LCCOMB_X73_Y42_N0
\clk_div|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~0_combout\ = (\clk_div|Add0~0_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Add0~0_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~0_combout\);

-- Location: FF_X73_Y42_N1
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

-- Location: LCCOMB_X73_Y42_N4
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

-- Location: FF_X73_Y42_N5
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

-- Location: LCCOMB_X73_Y42_N8
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

-- Location: FF_X73_Y42_N9
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

-- Location: LCCOMB_X73_Y42_N10
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

-- Location: LCCOMB_X73_Y42_N12
\clk_div|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~10_combout\ = (\clk_div|counter\(5) & (!\clk_div|Add0~9\)) # (!\clk_div|counter\(5) & ((\clk_div|Add0~9\) # (GND)))
-- \clk_div|Add0~11\ = CARRY((!\clk_div|Add0~9\) # (!\clk_div|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(5),
	datad => VCC,
	cin => \clk_div|Add0~9\,
	combout => \clk_div|Add0~10_combout\,
	cout => \clk_div|Add0~11\);

-- Location: LCCOMB_X72_Y42_N6
\clk_div|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~1_combout\ = (\clk_div|Add0~10_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~10_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~1_combout\);

-- Location: FF_X72_Y42_N7
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

-- Location: LCCOMB_X73_Y42_N14
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

-- Location: FF_X73_Y42_N15
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

-- Location: LCCOMB_X73_Y42_N16
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

-- Location: FF_X73_Y42_N17
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

-- Location: LCCOMB_X73_Y42_N18
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

-- Location: FF_X73_Y42_N19
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

-- Location: LCCOMB_X73_Y42_N20
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

-- Location: FF_X73_Y42_N21
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

-- Location: LCCOMB_X73_Y42_N24
\clk_div|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~22_combout\ = (\clk_div|counter\(11) & (!\clk_div|Add0~21\)) # (!\clk_div|counter\(11) & ((\clk_div|Add0~21\) # (GND)))
-- \clk_div|Add0~23\ = CARRY((!\clk_div|Add0~21\) # (!\clk_div|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(11),
	datad => VCC,
	cin => \clk_div|Add0~21\,
	combout => \clk_div|Add0~22_combout\,
	cout => \clk_div|Add0~23\);

-- Location: LCCOMB_X72_Y42_N20
\clk_div|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~3_combout\ = (\clk_div|Add0~22_combout\ & !\clk_div|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Add0~22_combout\,
	datad => \clk_div|Equal0~9_combout\,
	combout => \clk_div|counter~3_combout\);

-- Location: FF_X72_Y42_N21
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

-- Location: LCCOMB_X73_Y42_N28
\clk_div|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~26_combout\ = (\clk_div|counter\(13) & (!\clk_div|Add0~25\)) # (!\clk_div|counter\(13) & ((\clk_div|Add0~25\) # (GND)))
-- \clk_div|Add0~27\ = CARRY((!\clk_div|Add0~25\) # (!\clk_div|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(13),
	datad => VCC,
	cin => \clk_div|Add0~25\,
	combout => \clk_div|Add0~26_combout\,
	cout => \clk_div|Add0~27\);

-- Location: LCCOMB_X72_Y42_N22
\clk_div|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~5_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~26_combout\,
	combout => \clk_div|counter~5_combout\);

-- Location: FF_X72_Y42_N23
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

-- Location: LCCOMB_X73_Y41_N2
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

-- Location: FF_X73_Y41_N3
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

-- Location: LCCOMB_X73_Y41_N6
\clk_div|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~36_combout\ = (\clk_div|counter\(18) & (\clk_div|Add0~35\ $ (GND))) # (!\clk_div|counter\(18) & (!\clk_div|Add0~35\ & VCC))
-- \clk_div|Add0~37\ = CARRY((\clk_div|counter\(18) & !\clk_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(18),
	datad => VCC,
	cin => \clk_div|Add0~35\,
	combout => \clk_div|Add0~36_combout\,
	cout => \clk_div|Add0~37\);

-- Location: LCCOMB_X72_Y41_N22
\clk_div|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~8_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~36_combout\,
	combout => \clk_div|counter~8_combout\);

-- Location: FF_X72_Y41_N23
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

-- Location: LCCOMB_X73_Y41_N8
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

-- Location: LCCOMB_X72_Y41_N28
\clk_div|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~9_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datac => \clk_div|Add0~38_combout\,
	combout => \clk_div|counter~9_combout\);

-- Location: FF_X72_Y41_N29
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

-- Location: LCCOMB_X73_Y41_N10
\clk_div|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~40_combout\ = (\clk_div|counter\(20) & (\clk_div|Add0~39\ $ (GND))) # (!\clk_div|counter\(20) & (!\clk_div|Add0~39\ & VCC))
-- \clk_div|Add0~41\ = CARRY((\clk_div|counter\(20) & !\clk_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(20),
	datad => VCC,
	cin => \clk_div|Add0~39\,
	combout => \clk_div|Add0~40_combout\,
	cout => \clk_div|Add0~41\);

-- Location: LCCOMB_X72_Y41_N24
\clk_div|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~10_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datac => \clk_div|Add0~40_combout\,
	combout => \clk_div|counter~10_combout\);

-- Location: FF_X72_Y41_N25
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

-- Location: LCCOMB_X73_Y41_N12
\clk_div|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Add0~42_combout\ = (\clk_div|counter\(21) & (!\clk_div|Add0~41\)) # (!\clk_div|counter\(21) & ((\clk_div|Add0~41\) # (GND)))
-- \clk_div|Add0~43\ = CARRY((!\clk_div|Add0~41\) # (!\clk_div|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(21),
	datad => VCC,
	cin => \clk_div|Add0~41\,
	combout => \clk_div|Add0~42_combout\,
	cout => \clk_div|Add0~43\);

-- Location: LCCOMB_X72_Y41_N30
\clk_div|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~11_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|Equal0~9_combout\,
	datac => \clk_div|Add0~42_combout\,
	combout => \clk_div|counter~11_combout\);

-- Location: FF_X72_Y41_N31
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

-- Location: LCCOMB_X73_Y41_N14
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

-- Location: FF_X73_Y41_N15
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

-- Location: LCCOMB_X73_Y41_N16
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

-- Location: LCCOMB_X73_Y41_N30
\clk_div|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|counter~12_combout\ = (!\clk_div|Equal0~9_combout\ & \clk_div|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~9_combout\,
	datad => \clk_div|Add0~46_combout\,
	combout => \clk_div|counter~12_combout\);

-- Location: FF_X73_Y41_N31
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

-- Location: LCCOMB_X72_Y41_N20
\clk_div|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~6_combout\ = (\clk_div|counter\(21) & (!\clk_div|counter\(22) & (\clk_div|counter\(23) & \clk_div|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(21),
	datab => \clk_div|counter\(22),
	datac => \clk_div|counter\(23),
	datad => \clk_div|counter\(20),
	combout => \clk_div|Equal0~6_combout\);

-- Location: LCCOMB_X72_Y42_N4
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

-- Location: FF_X73_Y42_N11
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

-- Location: LCCOMB_X72_Y42_N8
\clk_div|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~1_combout\ = (\clk_div|counter\(5) & (!\clk_div|counter\(6) & (!\clk_div|counter\(4) & !\clk_div|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(5),
	datab => \clk_div|counter\(6),
	datac => \clk_div|counter\(4),
	datad => \clk_div|counter\(7),
	combout => \clk_div|Equal0~1_combout\);

-- Location: LCCOMB_X72_Y42_N18
\clk_div|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~2_combout\ = (\clk_div|counter\(10) & (\clk_div|counter\(11) & (!\clk_div|counter\(9) & !\clk_div|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(10),
	datab => \clk_div|counter\(11),
	datac => \clk_div|counter\(9),
	datad => \clk_div|counter\(8),
	combout => \clk_div|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y42_N30
\clk_div|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~4_combout\ = (\clk_div|Equal0~3_combout\ & (\clk_div|Equal0~0_combout\ & (\clk_div|Equal0~1_combout\ & \clk_div|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~3_combout\,
	datab => \clk_div|Equal0~0_combout\,
	datac => \clk_div|Equal0~1_combout\,
	datad => \clk_div|Equal0~2_combout\,
	combout => \clk_div|Equal0~4_combout\);

-- Location: LCCOMB_X73_Y41_N18
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

-- Location: FF_X73_Y41_N19
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

-- Location: LCCOMB_X73_Y41_N20
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

-- Location: FF_X73_Y41_N21
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

-- Location: LCCOMB_X73_Y41_N22
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

-- Location: LCCOMB_X73_Y41_N24
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

-- Location: FF_X73_Y41_N25
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

-- Location: LCCOMB_X73_Y41_N26
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

-- Location: LCCOMB_X73_Y41_N28
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

-- Location: FF_X73_Y41_N29
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

-- Location: FF_X73_Y41_N27
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

-- Location: FF_X73_Y41_N23
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

-- Location: LCCOMB_X72_Y41_N18
\clk_div|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~7_combout\ = (!\clk_div|counter\(25) & (!\clk_div|counter\(27) & (!\clk_div|counter\(24) & !\clk_div|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|counter\(25),
	datab => \clk_div|counter\(27),
	datac => \clk_div|counter\(24),
	datad => \clk_div|counter\(26),
	combout => \clk_div|Equal0~7_combout\);

-- Location: LCCOMB_X72_Y41_N12
\clk_div|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~8_combout\ = (!\clk_div|counter\(29) & (!\clk_div|counter\(28) & \clk_div|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|counter\(29),
	datac => \clk_div|counter\(28),
	datad => \clk_div|Equal0~7_combout\,
	combout => \clk_div|Equal0~8_combout\);

-- Location: LCCOMB_X72_Y41_N14
\clk_div|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_div|Equal0~9_combout\ = (\clk_div|Equal0~5_combout\ & (\clk_div|Equal0~6_combout\ & (\clk_div|Equal0~4_combout\ & \clk_div|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|Equal0~5_combout\,
	datab => \clk_div|Equal0~6_combout\,
	datac => \clk_div|Equal0~4_combout\,
	datad => \clk_div|Equal0~8_combout\,
	combout => \clk_div|Equal0~9_combout\);

-- Location: LCCOMB_X46_Y41_N14
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

-- Location: FF_X46_Y41_N15
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

-- Location: LCCOMB_X23_Y41_N14
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

-- Location: LCCOMB_X23_Y41_N12
\ready_to_play|mDLY[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[0]~22_combout\ = (!\ready_to_play|LessThan1~5_combout\) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LessThan1~5_combout\,
	combout => \ready_to_play|mDLY[0]~22_combout\);

-- Location: LCCOMB_X23_Y39_N14
\ready_to_play|mLCD_ST~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~20_combout\ = (!\ready_to_play|mLCD_ST.000010~q\ & (!\ready_to_play|mLCD_ST.000001~q\ & !\ready_to_play|mLCD_ST.000011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mLCD_ST.000010~q\,
	datac => \ready_to_play|mLCD_ST.000001~q\,
	datad => \ready_to_play|mLCD_ST.000011~q\,
	combout => \ready_to_play|mLCD_ST~20_combout\);

-- Location: LCCOMB_X23_Y39_N12
\ready_to_play|mLCD_ST~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~17_combout\ = (\clk_div|clk_out~q\ & ((\ready_to_play|mLCD_ST~16_combout\) # ((\ready_to_play|mLCD_ST.000010~q\ & \ready_to_play|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mLCD_ST~16_combout\,
	datab => \ready_to_play|mLCD_ST.000010~q\,
	datac => \ready_to_play|LessThan1~5_combout\,
	datad => \clk_div|clk_out~q\,
	combout => \ready_to_play|mLCD_ST~17_combout\);

-- Location: LCCOMB_X23_Y39_N4
\ready_to_play|mLCD_ST~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~21_combout\ = (\ready_to_play|mLCD_ST~17_combout\ & (((\ready_to_play|mLCD_ST.000001~q\)))) # (!\ready_to_play|mLCD_ST~17_combout\ & (\clk_div|clk_out~q\ & (\ready_to_play|mLCD_ST~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datab => \ready_to_play|mLCD_ST~20_combout\,
	datac => \ready_to_play|mLCD_ST.000001~q\,
	datad => \ready_to_play|mLCD_ST~17_combout\,
	combout => \ready_to_play|mLCD_ST~21_combout\);

-- Location: FF_X23_Y39_N5
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

-- Location: LCCOMB_X23_Y39_N24
\ready_to_play|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector11~2_combout\ = (\ready_to_play|mLCD_ST.000001~q\ & \ready_to_play|u0|oDone~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|mLCD_ST.000001~q\,
	datad => \ready_to_play|u0|oDone~q\,
	combout => \ready_to_play|Selector11~2_combout\);

-- Location: LCCOMB_X23_Y39_N28
\ready_to_play|mLCD_Start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_Start~0_combout\ = (\ready_to_play|LessThan0~5_combout\ & ((\ready_to_play|mLCD_ST~20_combout\) # ((\ready_to_play|mLCD_Start~q\ & !\ready_to_play|Selector11~2_combout\)))) # (!\ready_to_play|LessThan0~5_combout\ & 
-- (((\ready_to_play|mLCD_Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LessThan0~5_combout\,
	datab => \ready_to_play|mLCD_ST~20_combout\,
	datac => \ready_to_play|mLCD_Start~q\,
	datad => \ready_to_play|Selector11~2_combout\,
	combout => \ready_to_play|mLCD_Start~0_combout\);

-- Location: FF_X23_Y39_N29
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

-- Location: FF_X46_Y41_N19
\ready_to_play|u0|preStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \ready_to_play|mLCD_Start~q\,
	clrn => \clk_div|clk_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|preStart~q\);

-- Location: LCCOMB_X45_Y41_N16
\ready_to_play|u0|ST.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|ST.00~0_combout\ = !\ready_to_play|u0|ST.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|u0|ST.11~q\,
	combout => \ready_to_play|u0|ST.00~0_combout\);

-- Location: FF_X46_Y41_N29
\ready_to_play|u0|ST.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \ready_to_play|u0|ST.00~0_combout\,
	clrn => \clk_div|clk_out~q\,
	sload => VCC,
	ena => \ready_to_play|u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|u0|ST.00~q\);

-- Location: LCCOMB_X46_Y41_N4
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

-- Location: FF_X46_Y41_N5
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

-- Location: LCCOMB_X46_Y41_N30
\ready_to_play|u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector2~0_combout\ = (\ready_to_play|u0|ST.01~q\) # ((!\ready_to_play|u0|Cont\(4) & \ready_to_play|u0|ST.10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Cont\(4),
	datab => \ready_to_play|u0|ST.01~q\,
	datac => \ready_to_play|u0|ST.10~q\,
	combout => \ready_to_play|u0|Selector2~0_combout\);

-- Location: FF_X46_Y41_N31
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

-- Location: LCCOMB_X46_Y41_N24
\ready_to_play|u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector2~1_combout\ = (\ready_to_play|u0|ST.10~q\ & !\ready_to_play|u0|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|u0|ST.10~q\,
	datad => \ready_to_play|u0|Cont\(4),
	combout => \ready_to_play|u0|Selector2~1_combout\);

-- Location: LCCOMB_X47_Y41_N22
\ready_to_play|u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Add0~0_combout\ = \ready_to_play|u0|Cont\(0) $ (VCC)
-- \ready_to_play|u0|Add0~1\ = CARRY(\ready_to_play|u0|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|u0|Cont\(0),
	datad => VCC,
	combout => \ready_to_play|u0|Add0~0_combout\,
	cout => \ready_to_play|u0|Add0~1\);

-- Location: LCCOMB_X46_Y41_N6
\ready_to_play|u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector8~0_combout\ = (\ready_to_play|u0|Selector5~0_combout\ & ((\ready_to_play|u0|Cont\(0)) # ((\ready_to_play|u0|Selector2~1_combout\ & \ready_to_play|u0|Add0~0_combout\)))) # (!\ready_to_play|u0|Selector5~0_combout\ & 
-- (\ready_to_play|u0|Selector2~1_combout\ & ((\ready_to_play|u0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|Selector5~0_combout\,
	datab => \ready_to_play|u0|Selector2~1_combout\,
	datac => \ready_to_play|u0|Cont\(0),
	datad => \ready_to_play|u0|Add0~0_combout\,
	combout => \ready_to_play|u0|Selector8~0_combout\);

-- Location: FF_X46_Y41_N7
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

-- Location: LCCOMB_X47_Y41_N30
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

-- Location: LCCOMB_X46_Y41_N28
\ready_to_play|u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector4~0_combout\ = (\ready_to_play|u0|Cont\(4) & ((\ready_to_play|u0|ST.10~q\) # ((\ready_to_play|u0|ST.01~q\) # (!\ready_to_play|u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.10~q\,
	datab => \ready_to_play|u0|ST.01~q\,
	datac => \ready_to_play|u0|ST.00~q\,
	datad => \ready_to_play|u0|Cont\(4),
	combout => \ready_to_play|u0|Selector4~0_combout\);

-- Location: LCCOMB_X46_Y41_N10
\ready_to_play|u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector4~1_combout\ = (\ready_to_play|u0|Selector4~0_combout\) # ((\ready_to_play|u0|ST.10~q\ & \ready_to_play|u0|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.10~q\,
	datac => \ready_to_play|u0|Add0~8_combout\,
	datad => \ready_to_play|u0|Selector4~0_combout\,
	combout => \ready_to_play|u0|Selector4~1_combout\);

-- Location: FF_X46_Y41_N11
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

-- Location: LCCOMB_X46_Y41_N12
\ready_to_play|u0|ST~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|ST~14_combout\ = (\ready_to_play|u0|ST.10~q\ & \ready_to_play|u0|Cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|u0|ST.10~q\,
	datad => \ready_to_play|u0|Cont\(4),
	combout => \ready_to_play|u0|ST~14_combout\);

-- Location: FF_X46_Y41_N13
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

-- Location: LCCOMB_X46_Y41_N26
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

-- Location: FF_X46_Y41_N27
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

-- Location: LCCOMB_X46_Y41_N18
\ready_to_play|u0|oDone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|oDone~0_combout\ = (\ready_to_play|u0|oDone~q\ & ((\ready_to_play|u0|preStart~q\) # (!\ready_to_play|mLCD_Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mLCD_Start~q\,
	datac => \ready_to_play|u0|preStart~q\,
	datad => \ready_to_play|u0|oDone~q\,
	combout => \ready_to_play|u0|oDone~0_combout\);

-- Location: LCCOMB_X46_Y41_N20
\ready_to_play|u0|oDone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|oDone~1_combout\ = (\ready_to_play|u0|oDone~0_combout\) # ((\ready_to_play|u0|ST.11~q\ & \ready_to_play|u0|mStart~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.11~q\,
	datac => \ready_to_play|u0|mStart~q\,
	datad => \ready_to_play|u0|oDone~0_combout\,
	combout => \ready_to_play|u0|oDone~1_combout\);

-- Location: FF_X46_Y41_N21
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

-- Location: LCCOMB_X23_Y42_N26
\ready_to_play|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector11~3_combout\ = (\ready_to_play|LessThan1~5_combout\ & ((\ready_to_play|mLCD_ST.000010~q\) # ((\ready_to_play|mLCD_ST.000001~q\ & \ready_to_play|u0|oDone~q\)))) # (!\ready_to_play|LessThan1~5_combout\ & 
-- (\ready_to_play|mLCD_ST.000001~q\ & ((\ready_to_play|u0|oDone~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LessThan1~5_combout\,
	datab => \ready_to_play|mLCD_ST.000001~q\,
	datac => \ready_to_play|mLCD_ST.000010~q\,
	datad => \ready_to_play|u0|oDone~q\,
	combout => \ready_to_play|Selector11~3_combout\);

-- Location: LCCOMB_X24_Y42_N26
\ready_to_play|LUT_INDEX[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[3]~12_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX[2]~11\)) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX[2]~11\) # (GND)))
-- \ready_to_play|LUT_INDEX[3]~13\ = CARRY((!\ready_to_play|LUT_INDEX[2]~11\) # (!\ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datad => VCC,
	cin => \ready_to_play|LUT_INDEX[2]~11\,
	combout => \ready_to_play|LUT_INDEX[3]~12_combout\,
	cout => \ready_to_play|LUT_INDEX[3]~13\);

-- Location: FF_X24_Y42_N27
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

-- Location: LCCOMB_X23_Y42_N8
\ready_to_play|LUT_DATA~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA~24_combout\ = (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA~24_combout\);

-- Location: LCCOMB_X24_Y42_N4
\ready_to_play|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan0~4_combout\ = (\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y42_N24
\ready_to_play|mLCD_ST~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~19_combout\ = (((\ready_to_play|LUT_DATA~24_combout\ & !\ready_to_play|LessThan0~4_combout\)) # (!\clk_div|clk_out~q\)) # (!\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA~24_combout\,
	datac => \ready_to_play|LessThan0~4_combout\,
	datad => \clk_div|clk_out~q\,
	combout => \ready_to_play|mLCD_ST~19_combout\);

-- Location: FF_X23_Y42_N27
\ready_to_play|mLCD_ST.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|Selector11~3_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_ST.000010~q\);

-- Location: LCCOMB_X23_Y39_N0
\ready_to_play|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan0~5_combout\ = ((!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LessThan0~4_combout\))) # (!\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LessThan0~4_combout\,
	combout => \ready_to_play|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y39_N30
\ready_to_play|mDLY[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mDLY[0]~23_combout\ = ((\ready_to_play|mLCD_ST.000010~q\ & \ready_to_play|LessThan0~5_combout\)) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mLCD_ST.000010~q\,
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LessThan0~5_combout\,
	combout => \ready_to_play|mDLY[0]~23_combout\);

-- Location: FF_X23_Y41_N15
\ready_to_play|mDLY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[0]~18_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(0));

-- Location: LCCOMB_X23_Y41_N16
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

-- Location: FF_X23_Y41_N17
\ready_to_play|mDLY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[1]~20_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(1));

-- Location: LCCOMB_X23_Y41_N18
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

-- Location: FF_X23_Y41_N19
\ready_to_play|mDLY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[2]~24_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(2));

-- Location: LCCOMB_X23_Y41_N20
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

-- Location: FF_X23_Y41_N21
\ready_to_play|mDLY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[3]~26_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(3));

-- Location: LCCOMB_X23_Y41_N4
\ready_to_play|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~0_combout\ = (!\ready_to_play|mDLY\(1)) # (!\ready_to_play|mDLY\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mDLY\(2),
	datad => \ready_to_play|mDLY\(1),
	combout => \ready_to_play|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y41_N24
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

-- Location: FF_X23_Y41_N25
\ready_to_play|mDLY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[5]~30_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(5));

-- Location: LCCOMB_X23_Y41_N26
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

-- Location: LCCOMB_X23_Y41_N28
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

-- Location: FF_X23_Y41_N29
\ready_to_play|mDLY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[7]~34_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(7));

-- Location: FF_X23_Y41_N27
\ready_to_play|mDLY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[6]~32_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(6));

-- Location: LCCOMB_X23_Y41_N2
\ready_to_play|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~1_combout\ = (((!\ready_to_play|mDLY\(5)) # (!\ready_to_play|mDLY\(6))) # (!\ready_to_play|mDLY\(7))) # (!\ready_to_play|mDLY\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(8),
	datab => \ready_to_play|mDLY\(7),
	datac => \ready_to_play|mDLY\(6),
	datad => \ready_to_play|mDLY\(5),
	combout => \ready_to_play|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y41_N8
\ready_to_play|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~2_combout\ = (((\ready_to_play|LessThan1~0_combout\) # (\ready_to_play|LessThan1~1_combout\)) # (!\ready_to_play|mDLY\(3))) # (!\ready_to_play|mDLY\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(4),
	datab => \ready_to_play|mDLY\(3),
	datac => \ready_to_play|LessThan1~0_combout\,
	datad => \ready_to_play|LessThan1~1_combout\,
	combout => \ready_to_play|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y40_N0
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

-- Location: FF_X23_Y40_N1
\ready_to_play|mDLY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[9]~38_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(9));

-- Location: LCCOMB_X23_Y40_N2
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

-- Location: FF_X23_Y40_N3
\ready_to_play|mDLY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[10]~40_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(10));

-- Location: LCCOMB_X23_Y40_N4
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

-- Location: FF_X23_Y40_N5
\ready_to_play|mDLY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[11]~42_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(11));

-- Location: LCCOMB_X23_Y40_N24
\ready_to_play|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~3_combout\ = (((!\ready_to_play|mDLY\(9)) # (!\ready_to_play|mDLY\(11))) # (!\ready_to_play|mDLY\(10))) # (!\ready_to_play|mDLY\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(12),
	datab => \ready_to_play|mDLY\(10),
	datac => \ready_to_play|mDLY\(11),
	datad => \ready_to_play|mDLY\(9),
	combout => \ready_to_play|LessThan1~3_combout\);

-- Location: LCCOMB_X23_Y40_N8
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

-- Location: FF_X23_Y40_N9
\ready_to_play|mDLY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[13]~46_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(13));

-- Location: LCCOMB_X23_Y40_N10
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

-- Location: FF_X23_Y40_N15
\ready_to_play|mDLY[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[16]~52_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(16));

-- Location: FF_X23_Y40_N11
\ready_to_play|mDLY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mDLY[14]~48_combout\,
	sclr => \ready_to_play|mDLY[0]~22_combout\,
	ena => \ready_to_play|mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mDLY\(14));

-- Location: LCCOMB_X23_Y40_N30
\ready_to_play|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~4_combout\ = (((!\ready_to_play|mDLY\(14)) # (!\ready_to_play|mDLY\(13))) # (!\ready_to_play|mDLY\(16))) # (!\ready_to_play|mDLY\(15))

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
	combout => \ready_to_play|LessThan1~4_combout\);

-- Location: LCCOMB_X23_Y41_N6
\ready_to_play|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LessThan1~5_combout\ = ((\ready_to_play|LessThan1~2_combout\) # ((\ready_to_play|LessThan1~3_combout\) # (\ready_to_play|LessThan1~4_combout\))) # (!\ready_to_play|mDLY\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mDLY\(17),
	datab => \ready_to_play|LessThan1~2_combout\,
	datac => \ready_to_play|LessThan1~3_combout\,
	datad => \ready_to_play|LessThan1~4_combout\,
	combout => \ready_to_play|LessThan1~5_combout\);

-- Location: LCCOMB_X23_Y42_N28
\ready_to_play|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Selector12~0_combout\ = (\ready_to_play|mLCD_ST.000010~q\ & !\ready_to_play|LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|mLCD_ST.000010~q\,
	datac => \ready_to_play|LessThan1~5_combout\,
	combout => \ready_to_play|Selector12~0_combout\);

-- Location: FF_X23_Y42_N29
\ready_to_play|mLCD_ST.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|Selector12~0_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_ST.000011~q\);

-- Location: LCCOMB_X23_Y39_N10
\ready_to_play|LUT_INDEX[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[5]~14_combout\ = ((\ready_to_play|mLCD_ST.000011~q\ & \ready_to_play|LessThan0~5_combout\)) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mLCD_ST.000011~q\,
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LessThan0~5_combout\,
	combout => \ready_to_play|LUT_INDEX[5]~14_combout\);

-- Location: FF_X24_Y42_N21
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

-- Location: LCCOMB_X24_Y42_N22
\ready_to_play|LUT_INDEX[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[1]~8_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX[0]~7\)) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX[0]~7\) # (GND)))
-- \ready_to_play|LUT_INDEX[1]~9\ = CARRY((!\ready_to_play|LUT_INDEX[0]~7\) # (!\ready_to_play|LUT_INDEX\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(1),
	datad => VCC,
	cin => \ready_to_play|LUT_INDEX[0]~7\,
	combout => \ready_to_play|LUT_INDEX[1]~8_combout\,
	cout => \ready_to_play|LUT_INDEX[1]~9\);

-- Location: FF_X24_Y42_N23
\ready_to_play|LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|LUT_INDEX[1]~8_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(1));

-- Location: LCCOMB_X24_Y42_N24
\ready_to_play|LUT_INDEX[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[2]~10_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX[1]~9\ $ (GND))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX[1]~9\ & VCC))
-- \ready_to_play|LUT_INDEX[2]~11\ = CARRY((\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(2),
	datad => VCC,
	cin => \ready_to_play|LUT_INDEX[1]~9\,
	combout => \ready_to_play|LUT_INDEX[2]~10_combout\,
	cout => \ready_to_play|LUT_INDEX[2]~11\);

-- Location: FF_X24_Y42_N25
\ready_to_play|LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|LUT_INDEX[2]~10_combout\,
	sclr => \clk_div|ALT_INV_clk_out~q\,
	ena => \ready_to_play|LUT_INDEX[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|LUT_INDEX\(2));

-- Location: LCCOMB_X24_Y42_N28
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

-- Location: FF_X24_Y42_N29
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

-- Location: LCCOMB_X24_Y42_N30
\ready_to_play|LUT_INDEX[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_INDEX[5]~17_combout\ = \ready_to_play|LUT_INDEX\(5) $ (\ready_to_play|LUT_INDEX[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	cin => \ready_to_play|LUT_INDEX[4]~16\,
	combout => \ready_to_play|LUT_INDEX[5]~17_combout\);

-- Location: FF_X24_Y42_N31
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

-- Location: LCCOMB_X23_Y40_N26
\ready_to_play|WideOr36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr36~1_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & 
-- (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|WideOr36~1_combout\);

-- Location: LCCOMB_X26_Y38_N24
\ready_to_play|WideOr36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr36~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr36~0_combout\);

-- Location: LCCOMB_X27_Y40_N12
\ready_to_play|WideOr36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr36~2_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|WideOr36~0_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|WideOr36~1_combout\,
	datad => \ready_to_play|WideOr36~0_combout\,
	combout => \ready_to_play|WideOr36~2_combout\);

-- Location: FF_X26_Y38_N7
\ready_to_play|state_valid_test\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \comb_3|Mux0~4_combout\,
	sclr => \comb_3|ALT_INV_state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_test~q\);

-- Location: FF_X26_Y38_N17
\ready_to_play|state_valid_flexible\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \ready_to_play|Selector5~0_combout\,
	sclr => \comb_3|ALT_INV_state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_flexible~q\);

-- Location: LCCOMB_X26_Y38_N14
\ready_to_play|LUT_DATA[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~25_combout\ = (\ready_to_play|state_valid_test~q\) # ((!\ready_to_play|state_valid_camouflage~q\ & \ready_to_play|state_valid_flexible~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_camouflage~q\,
	datab => \ready_to_play|state_valid_test~q\,
	datad => \ready_to_play|state_valid_flexible~q\,
	combout => \ready_to_play|LUT_DATA[0]~25_combout\);

-- Location: LCCOMB_X27_Y40_N6
\ready_to_play|WideOr48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr48~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(2) $ (!\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|WideOr48~0_combout\);

-- Location: LCCOMB_X27_Y40_N8
\ready_to_play|WideOr48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr48~1_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|WideOr48~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|WideOr48~0_combout\,
	combout => \ready_to_play|WideOr48~1_combout\);

-- Location: LCCOMB_X25_Y42_N12
\ready_to_play|LUT_DATA[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~35_combout\ = (\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[0]~35_combout\);

-- Location: LCCOMB_X26_Y40_N12
\ready_to_play|LUT_DATA[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~52_combout\ = (\ready_to_play|state_valid_coder~q\ & !\ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_coder~q\,
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[2]~52_combout\);

-- Location: LCCOMB_X25_Y40_N20
\ready_to_play|Decoder2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Decoder2~6_combout\ = (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|Decoder2~6_combout\);

-- Location: LCCOMB_X26_Y40_N16
\ready_to_play|LUT_DATA[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~54_combout\ = (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[0]~54_combout\);

-- Location: LCCOMB_X26_Y40_N26
\ready_to_play|LUT_DATA[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~55_combout\ = (\ready_to_play|LUT_DATA[0]~54_combout\ & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(0) & 
-- \ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_DATA[0]~54_combout\,
	combout => \ready_to_play|LUT_DATA[0]~55_combout\);

-- Location: LCCOMB_X25_Y42_N2
\ready_to_play|LUT_DATA[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~31_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[0]~31_combout\);

-- Location: LCCOMB_X26_Y40_N0
\ready_to_play|LUT_DATA[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~56_combout\ = (\ready_to_play|LUT_DATA[0]~55_combout\) # ((\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|Decoder2~6_combout\)) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|Decoder2~6_combout\,
	datac => \ready_to_play|LUT_DATA[0]~55_combout\,
	datad => \ready_to_play|LUT_DATA[0]~31_combout\,
	combout => \ready_to_play|LUT_DATA[0]~56_combout\);

-- Location: LCCOMB_X26_Y40_N14
\ready_to_play|LUT_DATA[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~57_combout\ = (\ready_to_play|LUT_DATA[0]~53_combout\ & ((\ready_to_play|LUT_DATA[0]~35_combout\) # ((\ready_to_play|LUT_DATA[2]~52_combout\ & \ready_to_play|LUT_DATA[0]~56_combout\)))) # (!\ready_to_play|LUT_DATA[0]~53_combout\ 
-- & (((\ready_to_play|LUT_DATA[2]~52_combout\ & \ready_to_play|LUT_DATA[0]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~53_combout\,
	datab => \ready_to_play|LUT_DATA[0]~35_combout\,
	datac => \ready_to_play|LUT_DATA[2]~52_combout\,
	datad => \ready_to_play|LUT_DATA[0]~56_combout\,
	combout => \ready_to_play|LUT_DATA[0]~57_combout\);

-- Location: LCCOMB_X24_Y41_N30
\ready_to_play|LUT_DATA[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~45_combout\ = (!\ready_to_play|state_valid_coder~q\ & \ready_to_play|state_valid_group~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_coder~q\,
	datad => \ready_to_play|state_valid_group~q\,
	combout => \ready_to_play|LUT_DATA[0]~45_combout\);

-- Location: LCCOMB_X25_Y40_N14
\ready_to_play|LUT_DATA[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~49_combout\ = (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) & 
-- (\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[0]~49_combout\);

-- Location: LCCOMB_X25_Y40_N2
\ready_to_play|LUT_DATA[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~47_combout\ = (\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[0]~47_combout\);

-- Location: LCCOMB_X25_Y40_N0
\ready_to_play|LUT_DATA[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~48_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_DATA[0]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_DATA[0]~47_combout\,
	combout => \ready_to_play|LUT_DATA[0]~48_combout\);

-- Location: LCCOMB_X25_Y40_N16
\ready_to_play|LUT_DATA[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~50_combout\ = (\ready_to_play|LUT_DATA[0]~48_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_DATA[0]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[0]~49_combout\,
	datad => \ready_to_play|LUT_DATA[0]~48_combout\,
	combout => \ready_to_play|LUT_DATA[0]~50_combout\);

-- Location: LCCOMB_X27_Y40_N14
\ready_to_play|LUT_DATA[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~41_combout\ = (\ready_to_play|state_valid_group~q\) # ((\ready_to_play|LUT_INDEX\(5)) # (\ready_to_play|state_valid_coder~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|state_valid_coder~q\,
	combout => \ready_to_play|LUT_DATA[0]~41_combout\);

-- Location: LCCOMB_X27_Y40_N22
\ready_to_play|LUT_DATA[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~43_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[0]~43_combout\);

-- Location: LCCOMB_X27_Y40_N24
\ready_to_play|LUT_DATA[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~42_combout\ = (\ready_to_play|LUT_INDEX\(3) & (((!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4)))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[0]~42_combout\);

-- Location: LCCOMB_X27_Y40_N28
\ready_to_play|LUT_DATA[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~44_combout\ = (!\ready_to_play|LUT_DATA[0]~41_combout\ & ((\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_DATA[0]~43_combout\ & !\ready_to_play|LUT_DATA[0]~42_combout\)) # (!\ready_to_play|LUT_INDEX\(2) & 
-- (!\ready_to_play|LUT_DATA[0]~43_combout\ & \ready_to_play|LUT_DATA[0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_DATA[0]~41_combout\,
	datac => \ready_to_play|LUT_DATA[0]~43_combout\,
	datad => \ready_to_play|LUT_DATA[0]~42_combout\,
	combout => \ready_to_play|LUT_DATA[0]~44_combout\);

-- Location: LCCOMB_X26_Y40_N30
\ready_to_play|LUT_DATA[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~51_combout\ = (\ready_to_play|LUT_DATA[0]~44_combout\) # ((\ready_to_play|LUT_DATA[0]~45_combout\ & ((\ready_to_play|LUT_DATA[0]~46_combout\) # (\ready_to_play|LUT_DATA[0]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~46_combout\,
	datab => \ready_to_play|LUT_DATA[0]~45_combout\,
	datac => \ready_to_play|LUT_DATA[0]~50_combout\,
	datad => \ready_to_play|LUT_DATA[0]~44_combout\,
	combout => \ready_to_play|LUT_DATA[0]~51_combout\);

-- Location: LCCOMB_X25_Y38_N8
\ready_to_play|LUT_DATA[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~27_combout\ = (\ready_to_play|state_valid_invisible~q\ & (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible~q\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[0]~27_combout\);

-- Location: LCCOMB_X25_Y38_N14
\ready_to_play|LUT_DATA[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~28_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_DATA[0]~27_combout\ & \ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[0]~27_combout\,
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[0]~28_combout\);

-- Location: LCCOMB_X26_Y40_N22
\ready_to_play|LUT_DATA[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~32_combout\ = (\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[0]~32_combout\);

-- Location: LCCOMB_X26_Y40_N8
\ready_to_play|LUT_DATA[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~33_combout\ = (\ready_to_play|LUT_DATA~30_combout\ & ((\ready_to_play|LUT_DATA[0]~31_combout\) # ((!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_DATA[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA~30_combout\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_DATA[0]~32_combout\,
	datad => \ready_to_play|LUT_DATA[0]~31_combout\,
	combout => \ready_to_play|LUT_DATA[0]~33_combout\);

-- Location: LCCOMB_X25_Y38_N4
\ready_to_play|LUT_DATA[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~37_combout\ = (\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|LUT_INDEX\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[6]~37_combout\);

-- Location: LCCOMB_X26_Y42_N30
\ready_to_play|LUT_DATA[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~36_combout\ = (\ready_to_play|LUT_DATA[0]~35_combout\ & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_DATA[0]~35_combout\,
	combout => \ready_to_play|LUT_DATA[0]~36_combout\);

-- Location: LCCOMB_X26_Y40_N6
\ready_to_play|LUT_DATA[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~38_combout\ = (\ready_to_play|LUT_DATA[0]~34_combout\) # ((\ready_to_play|LUT_DATA[0]~36_combout\ & ((\ready_to_play|Decoder2~6_combout\) # (\ready_to_play|LUT_DATA[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~34_combout\,
	datab => \ready_to_play|Decoder2~6_combout\,
	datac => \ready_to_play|LUT_DATA[6]~37_combout\,
	datad => \ready_to_play|LUT_DATA[0]~36_combout\,
	combout => \ready_to_play|LUT_DATA[0]~38_combout\);

-- Location: LCCOMB_X26_Y40_N24
\ready_to_play|LUT_DATA[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~39_combout\ = (\ready_to_play|LUT_DATA[0]~28_combout\) # ((\ready_to_play|LUT_DATA[5]~29_combout\ & ((\ready_to_play|LUT_DATA[0]~33_combout\) # (\ready_to_play|LUT_DATA[0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~29_combout\,
	datab => \ready_to_play|LUT_DATA[0]~28_combout\,
	datac => \ready_to_play|LUT_DATA[0]~33_combout\,
	datad => \ready_to_play|LUT_DATA[0]~38_combout\,
	combout => \ready_to_play|LUT_DATA[0]~39_combout\);

-- Location: LCCOMB_X26_Y40_N20
\ready_to_play|LUT_DATA[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~58_combout\ = (\ready_to_play|LUT_DATA[0]~39_combout\) # ((\ready_to_play|LUT_DATA[0]~40_combout\ & ((\ready_to_play|LUT_DATA[0]~57_combout\) # (\ready_to_play|LUT_DATA[0]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~40_combout\,
	datab => \ready_to_play|LUT_DATA[0]~57_combout\,
	datac => \ready_to_play|LUT_DATA[0]~51_combout\,
	datad => \ready_to_play|LUT_DATA[0]~39_combout\,
	combout => \ready_to_play|LUT_DATA[0]~58_combout\);

-- Location: LCCOMB_X26_Y40_N2
\ready_to_play|LUT_DATA[0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~59_combout\ = (\ready_to_play|LUT_DATA[6]~26_combout\ & (!\ready_to_play|LUT_DATA[0]~25_combout\ & ((\ready_to_play|LUT_DATA[0]~58_combout\)))) # (!\ready_to_play|LUT_DATA[6]~26_combout\ & 
-- ((\ready_to_play|LUT_DATA[0]~25_combout\) # ((\ready_to_play|WideOr48~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~26_combout\,
	datab => \ready_to_play|LUT_DATA[0]~25_combout\,
	datac => \ready_to_play|WideOr48~1_combout\,
	datad => \ready_to_play|LUT_DATA[0]~58_combout\,
	combout => \ready_to_play|LUT_DATA[0]~59_combout\);

-- Location: LCCOMB_X26_Y40_N28
\ready_to_play|LUT_DATA[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~60_combout\ = (\ready_to_play|LUT_DATA[0]~25_combout\ & ((\ready_to_play|LUT_DATA[0]~59_combout\ & (\ready_to_play|WideOr55~2_combout\)) # (!\ready_to_play|LUT_DATA[0]~59_combout\ & ((\ready_to_play|WideOr36~2_combout\))))) # 
-- (!\ready_to_play|LUT_DATA[0]~25_combout\ & (((\ready_to_play|LUT_DATA[0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|WideOr55~2_combout\,
	datab => \ready_to_play|WideOr36~2_combout\,
	datac => \ready_to_play|LUT_DATA[0]~25_combout\,
	datad => \ready_to_play|LUT_DATA[0]~59_combout\,
	combout => \ready_to_play|LUT_DATA[0]~60_combout\);

-- Location: LCCOMB_X26_Y40_N18
\ready_to_play|LUT_DATA[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(0) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[0]~60_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(0),
	datac => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[0]~60_combout\,
	combout => \ready_to_play|LUT_DATA\(0));

-- Location: LCCOMB_X26_Y40_N4
\ready_to_play|mLCD_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~0_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(0),
	combout => \ready_to_play|mLCD_DATA~0_combout\);

-- Location: LCCOMB_X23_Y39_N8
\ready_to_play|mLCD_ST~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_ST~18_combout\ = (\ready_to_play|mLCD_ST~17_combout\ & (((\ready_to_play|mLCD_ST.000000~q\)))) # (!\ready_to_play|mLCD_ST~17_combout\ & (\clk_div|clk_out~q\ & (!\ready_to_play|mLCD_ST.000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datab => \ready_to_play|mLCD_ST.000011~q\,
	datac => \ready_to_play|mLCD_ST.000000~q\,
	datad => \ready_to_play|mLCD_ST~17_combout\,
	combout => \ready_to_play|mLCD_ST~18_combout\);

-- Location: FF_X23_Y39_N9
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

-- Location: LCCOMB_X23_Y39_N22
\ready_to_play|mLCD_DATA[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA[3]~1_combout\ = ((!\ready_to_play|mLCD_ST.000000~q\ & \ready_to_play|LessThan0~5_combout\)) # (!\clk_div|clk_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|mLCD_ST.000000~q\,
	datac => \clk_div|clk_out~q\,
	datad => \ready_to_play|LessThan0~5_combout\,
	combout => \ready_to_play|mLCD_DATA[3]~1_combout\);

-- Location: FF_X26_Y40_N5
\ready_to_play|mLCD_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~0_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(0));

-- Location: FF_X26_Y38_N31
\ready_to_play|state_valid_camouflage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \comb_3|LEDR~0_combout\,
	sclr => \comb_3|ALT_INV_state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_camouflage~q\);

-- Location: LCCOMB_X26_Y38_N26
\ready_to_play|LUT_DATA[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~26_combout\ = (!\ready_to_play|state_valid_camouflage~q\ & !\ready_to_play|state_valid_test~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_camouflage~q\,
	datad => \ready_to_play|state_valid_test~q\,
	combout => \ready_to_play|LUT_DATA[6]~26_combout\);

-- Location: LCCOMB_X25_Y42_N4
\ready_to_play|LUT_DATA~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA~30_combout\ = (!\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA~30_combout\);

-- Location: LCCOMB_X26_Y42_N16
\ready_to_play|Decoder2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Decoder2~8_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_DATA~30_combout\ & \ready_to_play|Decoder2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA~30_combout\,
	datad => \ready_to_play|Decoder2~6_combout\,
	combout => \ready_to_play|Decoder2~8_combout\);

-- Location: LCCOMB_X26_Y42_N26
\ready_to_play|WideOr34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr34~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(3) & (((\ready_to_play|LUT_INDEX\(0) & 
-- \ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|WideOr34~0_combout\);

-- Location: LCCOMB_X26_Y42_N4
\ready_to_play|WideOr34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr34~1_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|WideOr36~0_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|WideOr34~0_combout\,
	datad => \ready_to_play|WideOr36~0_combout\,
	combout => \ready_to_play|WideOr34~1_combout\);

-- Location: FF_X26_Y38_N21
\ready_to_play|state_valid_invisible\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	asdata => \ready_to_play|Selector4~0_combout\,
	sclr => \comb_3|ALT_INV_state\(2),
	sload => VCC,
	ena => \comb_3|ALT_INV_state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|state_valid_invisible~q\);

-- Location: LCCOMB_X26_Y42_N12
\ready_to_play|LUT_DATA[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[0]~40_combout\ = (!\ready_to_play|state_valid_invisible~q\ & !\ready_to_play|state_valid_breaker~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|state_valid_invisible~q\,
	datad => \ready_to_play|state_valid_breaker~q\,
	combout => \ready_to_play|LUT_DATA[0]~40_combout\);

-- Location: LCCOMB_X25_Y42_N6
\ready_to_play|LUT_DATA[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~64_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|state_valid_invisible~q\ & !\ready_to_play|LUT_INDEX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|state_valid_invisible~q\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[1]~64_combout\);

-- Location: LCCOMB_X26_Y42_N20
\ready_to_play|LUT_DATA[1]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~175_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_DATA[1]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_DATA[1]~64_combout\,
	combout => \ready_to_play|LUT_DATA[1]~175_combout\);

-- Location: LCCOMB_X26_Y42_N14
\ready_to_play|LUT_DATA[1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~65_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[1]~65_combout\);

-- Location: LCCOMB_X26_Y42_N6
\ready_to_play|LUT_DATA[1]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~176_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_DATA[1]~65_combout\) # (\ready_to_play|LUT_DATA[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[1]~65_combout\,
	datad => \ready_to_play|LUT_DATA[0]~31_combout\,
	combout => \ready_to_play|LUT_DATA[1]~176_combout\);

-- Location: LCCOMB_X26_Y42_N28
\ready_to_play|LUT_DATA[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~66_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_DATA[0]~36_combout\ & (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[0]~36_combout\,
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[1]~66_combout\);

-- Location: LCCOMB_X26_Y42_N18
\ready_to_play|LUT_DATA[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~67_combout\ = (\ready_to_play|LUT_DATA[1]~66_combout\ & (((\ready_to_play|LUT_DATA[0]~36_combout\)))) # (!\ready_to_play|LUT_DATA[1]~66_combout\ & (\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[0]~36_combout\,
	datad => \ready_to_play|LUT_DATA[1]~66_combout\,
	combout => \ready_to_play|LUT_DATA[1]~67_combout\);

-- Location: LCCOMB_X26_Y42_N8
\ready_to_play|LUT_DATA[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~68_combout\ = (\ready_to_play|LUT_DATA[1]~175_combout\) # ((\ready_to_play|LUT_DATA[5]~29_combout\ & ((\ready_to_play|LUT_DATA[1]~176_combout\) # (\ready_to_play|LUT_DATA[1]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~29_combout\,
	datab => \ready_to_play|LUT_DATA[1]~175_combout\,
	datac => \ready_to_play|LUT_DATA[1]~176_combout\,
	datad => \ready_to_play|LUT_DATA[1]~67_combout\,
	combout => \ready_to_play|LUT_DATA[1]~68_combout\);

-- Location: LCCOMB_X25_Y41_N4
\ready_to_play|LUT_DATA[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~69_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(0) $ (((!\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[1]~69_combout\);

-- Location: LCCOMB_X25_Y41_N6
\ready_to_play|LUT_DATA[1]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~187_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0) & 
-- (\ready_to_play|LUT_INDEX\(1) & !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[1]~187_combout\);

-- Location: LCCOMB_X25_Y41_N16
\ready_to_play|LUT_DATA[1]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~188_combout\ = (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_DATA[1]~187_combout\ & (\ready_to_play|LUT_INDEX\(4) $ (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4) & 
-- ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_DATA[1]~187_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_DATA[1]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_DATA[1]~187_combout\,
	combout => \ready_to_play|LUT_DATA[1]~188_combout\);

-- Location: LCCOMB_X25_Y41_N22
\ready_to_play|LUT_DATA[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~70_combout\ = (\ready_to_play|LUT_DATA[0]~45_combout\ & ((\ready_to_play|LUT_DATA[1]~69_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[1]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[0]~45_combout\,
	datac => \ready_to_play|LUT_DATA[1]~69_combout\,
	datad => \ready_to_play|LUT_DATA[1]~188_combout\,
	combout => \ready_to_play|LUT_DATA[1]~70_combout\);

-- Location: LCCOMB_X26_Y42_N10
\ready_to_play|LUT_DATA[1]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~79_combout\ = (\ready_to_play|LUT_DATA[1]~68_combout\) # ((\ready_to_play|LUT_DATA[0]~40_combout\ & ((\ready_to_play|LUT_DATA[1]~78_combout\) # (\ready_to_play|LUT_DATA[1]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~78_combout\,
	datab => \ready_to_play|LUT_DATA[0]~40_combout\,
	datac => \ready_to_play|LUT_DATA[1]~68_combout\,
	datad => \ready_to_play|LUT_DATA[1]~70_combout\,
	combout => \ready_to_play|LUT_DATA[1]~79_combout\);

-- Location: LCCOMB_X26_Y42_N24
\ready_to_play|LUT_DATA[1]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~80_combout\ = (\ready_to_play|LUT_DATA[6]~26_combout\ & ((\ready_to_play|LUT_DATA[0]~25_combout\ & (\ready_to_play|WideOr34~1_combout\)) # (!\ready_to_play|LUT_DATA[0]~25_combout\ & ((\ready_to_play|LUT_DATA[1]~79_combout\))))) 
-- # (!\ready_to_play|LUT_DATA[6]~26_combout\ & (\ready_to_play|LUT_DATA[0]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~26_combout\,
	datab => \ready_to_play|LUT_DATA[0]~25_combout\,
	datac => \ready_to_play|WideOr34~1_combout\,
	datad => \ready_to_play|LUT_DATA[1]~79_combout\,
	combout => \ready_to_play|LUT_DATA[1]~80_combout\);

-- Location: LCCOMB_X26_Y42_N22
\ready_to_play|LUT_DATA[1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~81_combout\ = (\ready_to_play|LUT_DATA[6]~26_combout\ & (((\ready_to_play|LUT_DATA[1]~80_combout\)))) # (!\ready_to_play|LUT_DATA[6]~26_combout\ & ((\ready_to_play|LUT_DATA[1]~80_combout\ & 
-- ((\ready_to_play|Decoder2~8_combout\))) # (!\ready_to_play|LUT_DATA[1]~80_combout\ & (\ready_to_play|WideOr46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|WideOr46~1_combout\,
	datab => \ready_to_play|LUT_DATA[6]~26_combout\,
	datac => \ready_to_play|Decoder2~8_combout\,
	datad => \ready_to_play|LUT_DATA[1]~80_combout\,
	combout => \ready_to_play|LUT_DATA[1]~81_combout\);

-- Location: LCCOMB_X26_Y42_N2
\ready_to_play|LUT_DATA[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(1) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[1]~81_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(1),
	datac => \ready_to_play|LUT_DATA[1]~81_combout\,
	datad => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(1));

-- Location: LCCOMB_X26_Y42_N0
\ready_to_play|mLCD_DATA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~2_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(1),
	combout => \ready_to_play|mLCD_DATA~2_combout\);

-- Location: FF_X26_Y42_N1
\ready_to_play|mLCD_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~2_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(1));

-- Location: LCCOMB_X24_Y40_N4
\ready_to_play|WideOr32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr32~1_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|WideOr36~0_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|WideOr32~0_combout\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|WideOr36~0_combout\,
	combout => \ready_to_play|WideOr32~1_combout\);

-- Location: LCCOMB_X25_Y38_N22
\ready_to_play|WideOr44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr44~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & 
-- ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr44~0_combout\);

-- Location: LCCOMB_X25_Y38_N28
\ready_to_play|WideOr44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr44~1_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr44~0_combout\ & !\ready_to_play|LUT_INDEX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|WideOr44~0_combout\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|WideOr44~1_combout\);

-- Location: LCCOMB_X24_Y40_N14
\ready_to_play|LUT_DATA[2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~84_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) $ (((\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~84_combout\);

-- Location: LCCOMB_X24_Y40_N30
\ready_to_play|LUT_DATA[2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~82_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~82_combout\);

-- Location: LCCOMB_X24_Y40_N0
\ready_to_play|LUT_DATA[2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~83_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_DATA[2]~82_combout\ & \ready_to_play|LUT_INDEX\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_DATA[2]~82_combout\,
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[2]~83_combout\);

-- Location: LCCOMB_X24_Y40_N8
\ready_to_play|LUT_DATA[2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~85_combout\ = (\ready_to_play|LUT_DATA[0]~34_combout\) # ((\ready_to_play|LUT_DATA[2]~83_combout\) # ((\ready_to_play|LUT_DATA~30_combout\ & \ready_to_play|LUT_DATA[2]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~34_combout\,
	datab => \ready_to_play|LUT_DATA~30_combout\,
	datac => \ready_to_play|LUT_DATA[2]~84_combout\,
	datad => \ready_to_play|LUT_DATA[2]~83_combout\,
	combout => \ready_to_play|LUT_DATA[2]~85_combout\);

-- Location: LCCOMB_X23_Y40_N18
\ready_to_play|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr21~0_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|WideOr21~0_combout\);

-- Location: LCCOMB_X24_Y40_N26
\ready_to_play|LUT_DATA[2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~86_combout\ = (\ready_to_play|LUT_DATA[5]~29_combout\ & ((\ready_to_play|LUT_DATA[2]~85_combout\) # ((\ready_to_play|LUT_DATA[1]~64_combout\ & \ready_to_play|WideOr21~0_combout\)))) # (!\ready_to_play|LUT_DATA[5]~29_combout\ & 
-- (\ready_to_play|LUT_DATA[1]~64_combout\ & ((\ready_to_play|WideOr21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~29_combout\,
	datab => \ready_to_play|LUT_DATA[1]~64_combout\,
	datac => \ready_to_play|LUT_DATA[2]~85_combout\,
	datad => \ready_to_play|WideOr21~0_combout\,
	combout => \ready_to_play|LUT_DATA[2]~86_combout\);

-- Location: LCCOMB_X24_Y40_N24
\ready_to_play|LUT_DATA[2]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~93_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|state_valid_coder~q\ & (\ready_to_play|LUT_DATA[2]~82_combout\ & \ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_DATA[2]~82_combout\,
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[2]~93_combout\);

-- Location: LCCOMB_X23_Y40_N20
\ready_to_play|LUT_DATA[2]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~94_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~94_combout\);

-- Location: LCCOMB_X24_Y40_N22
\ready_to_play|LUT_DATA[2]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~95_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_DATA[0]~45_combout\ & \ready_to_play|LUT_DATA[2]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[0]~45_combout\,
	datad => \ready_to_play|LUT_DATA[2]~94_combout\,
	combout => \ready_to_play|LUT_DATA[2]~95_combout\);

-- Location: LCCOMB_X23_Y40_N22
\ready_to_play|LUT_DATA[2]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~96_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(3) $ (!\ready_to_play|LUT_INDEX\(1))))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[2]~96_combout\);

-- Location: LCCOMB_X24_Y40_N2
\ready_to_play|LUT_DATA[2]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~185_combout\ = (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|Decoder2~6_combout\)) # (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[2]~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Decoder2~6_combout\,
	datad => \ready_to_play|LUT_DATA[2]~96_combout\,
	combout => \ready_to_play|LUT_DATA[2]~185_combout\);

-- Location: LCCOMB_X24_Y40_N20
\ready_to_play|LUT_DATA[2]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~186_combout\ = (\ready_to_play|LUT_DATA[2]~93_combout\) # ((\ready_to_play|LUT_DATA[2]~95_combout\) # ((\ready_to_play|state_valid_coder~q\ & \ready_to_play|LUT_DATA[2]~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|LUT_DATA[2]~93_combout\,
	datac => \ready_to_play|LUT_DATA[2]~95_combout\,
	datad => \ready_to_play|LUT_DATA[2]~185_combout\,
	combout => \ready_to_play|LUT_DATA[2]~186_combout\);

-- Location: LCCOMB_X25_Y40_N28
\ready_to_play|LUT_DATA[2]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~90_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(2))) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(0) & 
-- (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[2]~90_combout\);

-- Location: LCCOMB_X25_Y40_N26
\ready_to_play|LUT_DATA[2]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~91_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(0) $ ((\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[2]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_DATA[2]~90_combout\,
	combout => \ready_to_play|LUT_DATA[2]~91_combout\);

-- Location: LCCOMB_X25_Y40_N12
\ready_to_play|WideOr42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr42~0_combout\ = (!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|WideOr42~0_combout\);

-- Location: LCCOMB_X25_Y40_N18
\ready_to_play|WideOr42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr42~1_combout\ = (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|WideOr42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|WideOr42~0_combout\,
	combout => \ready_to_play|WideOr42~1_combout\);

-- Location: LCCOMB_X25_Y40_N22
\ready_to_play|LUT_DATA[2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~87_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|Decoder2~6_combout\ & ((!\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|Decoder2~6_combout\,
	combout => \ready_to_play|LUT_DATA[2]~87_combout\);

-- Location: LCCOMB_X25_Y40_N24
\ready_to_play|LUT_DATA[2]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~88_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_DATA[0]~35_combout\) # (\ready_to_play|LUT_DATA[0]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[0]~35_combout\,
	datad => \ready_to_play|LUT_DATA[0]~47_combout\,
	combout => \ready_to_play|LUT_DATA[2]~88_combout\);

-- Location: LCCOMB_X25_Y40_N6
\ready_to_play|LUT_DATA[2]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~89_combout\ = (\ready_to_play|LUT_DATA[1]~71_combout\ & ((\ready_to_play|WideOr42~1_combout\) # ((\ready_to_play|LUT_DATA[2]~87_combout\) # (\ready_to_play|LUT_DATA[2]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[1]~71_combout\,
	datab => \ready_to_play|WideOr42~1_combout\,
	datac => \ready_to_play|LUT_DATA[2]~87_combout\,
	datad => \ready_to_play|LUT_DATA[2]~88_combout\,
	combout => \ready_to_play|LUT_DATA[2]~89_combout\);

-- Location: LCCOMB_X25_Y40_N4
\ready_to_play|LUT_DATA[2]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~92_combout\ = (\ready_to_play|LUT_DATA[2]~89_combout\) # ((\ready_to_play|LUT_DATA[0]~45_combout\ & (!\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_DATA[2]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~45_combout\,
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[2]~91_combout\,
	datad => \ready_to_play|LUT_DATA[2]~89_combout\,
	combout => \ready_to_play|LUT_DATA[2]~92_combout\);

-- Location: LCCOMB_X24_Y40_N16
\ready_to_play|LUT_DATA[2]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~97_combout\ = (\ready_to_play|LUT_DATA[2]~86_combout\) # ((\ready_to_play|LUT_DATA[0]~40_combout\ & ((\ready_to_play|LUT_DATA[2]~186_combout\) # (\ready_to_play|LUT_DATA[2]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[0]~40_combout\,
	datab => \ready_to_play|LUT_DATA[2]~86_combout\,
	datac => \ready_to_play|LUT_DATA[2]~186_combout\,
	datad => \ready_to_play|LUT_DATA[2]~92_combout\,
	combout => \ready_to_play|LUT_DATA[2]~97_combout\);

-- Location: LCCOMB_X24_Y40_N6
\ready_to_play|LUT_DATA[2]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~98_combout\ = (\ready_to_play|LUT_DATA[6]~26_combout\ & (((!\ready_to_play|LUT_DATA[0]~25_combout\ & \ready_to_play|LUT_DATA[2]~97_combout\)))) # (!\ready_to_play|LUT_DATA[6]~26_combout\ & ((\ready_to_play|WideOr44~1_combout\) # 
-- ((\ready_to_play|LUT_DATA[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~26_combout\,
	datab => \ready_to_play|WideOr44~1_combout\,
	datac => \ready_to_play|LUT_DATA[0]~25_combout\,
	datad => \ready_to_play|LUT_DATA[2]~97_combout\,
	combout => \ready_to_play|LUT_DATA[2]~98_combout\);

-- Location: LCCOMB_X24_Y40_N12
\ready_to_play|LUT_DATA[2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[2]~99_combout\ = (\ready_to_play|LUT_DATA[0]~25_combout\ & ((\ready_to_play|LUT_DATA[2]~98_combout\ & (\ready_to_play|LUT_DATA~177_combout\)) # (!\ready_to_play|LUT_DATA[2]~98_combout\ & ((\ready_to_play|WideOr32~1_combout\))))) # 
-- (!\ready_to_play|LUT_DATA[0]~25_combout\ & (((\ready_to_play|LUT_DATA[2]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA~177_combout\,
	datab => \ready_to_play|LUT_DATA[0]~25_combout\,
	datac => \ready_to_play|WideOr32~1_combout\,
	datad => \ready_to_play|LUT_DATA[2]~98_combout\,
	combout => \ready_to_play|LUT_DATA[2]~99_combout\);

-- Location: LCCOMB_X24_Y40_N18
\ready_to_play|LUT_DATA[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(2) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[2]~99_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(2),
	datac => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[2]~99_combout\,
	combout => \ready_to_play|LUT_DATA\(2));

-- Location: LCCOMB_X24_Y40_N28
\ready_to_play|mLCD_DATA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~3_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(2),
	combout => \ready_to_play|mLCD_DATA~3_combout\);

-- Location: FF_X24_Y40_N29
\ready_to_play|mLCD_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~3_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(2));

-- Location: LCCOMB_X26_Y38_N28
\ready_to_play|WideOr30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr30~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1) & 
-- ((!\ready_to_play|LUT_INDEX\(2)) # (!\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr30~0_combout\);

-- Location: LCCOMB_X26_Y38_N18
\ready_to_play|LUT_DATA[3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~109_combout\ = (\ready_to_play|state_valid_flexible~q\ & ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr36~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|WideOr30~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|WideOr36~0_combout\,
	datac => \ready_to_play|state_valid_flexible~q\,
	datad => \ready_to_play|WideOr30~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~109_combout\);

-- Location: LCCOMB_X26_Y38_N10
\ready_to_play|LUT_DATA[3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~108_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[3]~108_combout\);

-- Location: LCCOMB_X26_Y38_N12
\ready_to_play|LUT_DATA[3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~111_combout\ = (\ready_to_play|LUT_DATA[6]~26_combout\ & ((\ready_to_play|LUT_DATA[3]~109_combout\) # ((\ready_to_play|LUT_DATA[3]~110_combout\ & \ready_to_play|LUT_DATA[3]~108_combout\)))) # 
-- (!\ready_to_play|LUT_DATA[6]~26_combout\ & (((\ready_to_play|LUT_DATA[3]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~110_combout\,
	datab => \ready_to_play|LUT_DATA[6]~26_combout\,
	datac => \ready_to_play|LUT_DATA[3]~109_combout\,
	datad => \ready_to_play|LUT_DATA[3]~108_combout\,
	combout => \ready_to_play|LUT_DATA[3]~111_combout\);

-- Location: LCCOMB_X25_Y39_N10
\ready_to_play|LUT_DATA[3]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~104_combout\ = (\ready_to_play|LUT_DATA[3]~62_combout\ & (\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_DATA[3]~62_combout\ & 
-- (((!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_DATA[3]~62_combout\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[3]~104_combout\);

-- Location: LCCOMB_X26_Y39_N8
\ready_to_play|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux18~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (((!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(0))) # (!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4) $ 
-- (((\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux18~0_combout\);

-- Location: LCCOMB_X26_Y39_N10
\ready_to_play|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux25~0_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(1) & ((!\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(4) & 
-- ((\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux25~0_combout\);

-- Location: LCCOMB_X26_Y39_N0
\ready_to_play|LUT_DATA[3]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~178_combout\ = (\ready_to_play|state_valid_breaker~q\ & (((!\ready_to_play|Mux25~0_combout\)))) # (!\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|state_valid_coder~q\ & (!\ready_to_play|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|Mux18~0_combout\,
	datad => \ready_to_play|Mux25~0_combout\,
	combout => \ready_to_play|LUT_DATA[3]~178_combout\);

-- Location: LCCOMB_X26_Y39_N18
\ready_to_play|LUT_DATA[3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~106_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[3]~104_combout\ & ((\ready_to_play|LUT_DATA~24_combout\)))) # (!\ready_to_play|LUT_INDEX\(5) & (((\ready_to_play|LUT_DATA[3]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[3]~104_combout\,
	datac => \ready_to_play|LUT_DATA[3]~178_combout\,
	datad => \ready_to_play|LUT_DATA~24_combout\,
	combout => \ready_to_play|LUT_DATA[3]~106_combout\);

-- Location: LCCOMB_X26_Y39_N30
\ready_to_play|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4)) # 
-- ((\ready_to_play|LUT_INDEX\(2) & \ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y39_N16
\ready_to_play|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~1_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(4)) # (\ready_to_play|LUT_INDEX\(0))))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(3)) # 
-- ((\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y39_N26
\ready_to_play|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~2_combout\ = (\ready_to_play|Mux4~1_combout\ & ((\ready_to_play|LUT_INDEX\(2)) # ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|Mux4~0_combout\)))) # (!\ready_to_play|Mux4~1_combout\ & (\ready_to_play|LUT_INDEX\(2) $ 
-- (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|Mux4~0_combout\,
	datad => \ready_to_play|Mux4~1_combout\,
	combout => \ready_to_play|Mux4~2_combout\);

-- Location: LCCOMB_X26_Y39_N28
\ready_to_play|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux4~3_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|Mux4~0_combout\ & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|Mux4~1_combout\)))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|Mux4~0_combout\ $ 
-- (\ready_to_play|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|Mux4~0_combout\,
	datad => \ready_to_play|Mux4~1_combout\,
	combout => \ready_to_play|Mux4~3_combout\);

-- Location: LCCOMB_X26_Y39_N2
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

-- Location: LCCOMB_X26_Y39_N20
\ready_to_play|LUT_DATA[3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~103_combout\ = (!\ready_to_play|state_valid_coder~q\ & (!\ready_to_play|LUT_INDEX\(5) & (!\ready_to_play|state_valid_breaker~q\ & \ready_to_play|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|Mux4~4_combout\,
	combout => \ready_to_play|LUT_DATA[3]~103_combout\);

-- Location: LCCOMB_X26_Y39_N4
\ready_to_play|LUT_DATA[3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~107_combout\ = (\ready_to_play|LUT_DATA[3]~102_combout\) # ((\ready_to_play|LUT_DATA[3]~103_combout\) # ((\ready_to_play|LUT_DATA[3]~106_combout\ & !\ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~102_combout\,
	datab => \ready_to_play|LUT_DATA[3]~106_combout\,
	datac => \ready_to_play|LUT_DATA[3]~103_combout\,
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[3]~107_combout\);

-- Location: LCCOMB_X26_Y39_N22
\ready_to_play|LUT_DATA[3]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[3]~112_combout\ = (\ready_to_play|LUT_DATA[3]~61_combout\ & ((\ready_to_play|LUT_DATA[3]~107_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & \ready_to_play|LUT_DATA[3]~111_combout\)))) # (!\ready_to_play|LUT_DATA[3]~61_combout\ & 
-- (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[3]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~61_combout\,
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[3]~111_combout\,
	datad => \ready_to_play|LUT_DATA[3]~107_combout\,
	combout => \ready_to_play|LUT_DATA[3]~112_combout\);

-- Location: LCCOMB_X26_Y39_N6
\ready_to_play|LUT_DATA[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(3) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[3]~112_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA\(3),
	datac => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[3]~112_combout\,
	combout => \ready_to_play|LUT_DATA\(3));

-- Location: LCCOMB_X26_Y39_N12
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

-- Location: FF_X26_Y39_N13
\ready_to_play|mLCD_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~4_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(3));

-- Location: LCCOMB_X25_Y41_N20
\ready_to_play|WideOr42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr42~2_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # 
-- (!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(3)))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1) & 
-- !\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|WideOr42~2_combout\);

-- Location: LCCOMB_X25_Y40_N10
\ready_to_play|WideOr42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr42~3_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|WideOr42~1_combout\) # ((!\ready_to_play|LUT_INDEX\(4) & !\ready_to_play|WideOr42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|WideOr42~1_combout\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|WideOr42~2_combout\,
	combout => \ready_to_play|WideOr42~3_combout\);

-- Location: LCCOMB_X24_Y41_N22
\ready_to_play|LUT_DATA[4]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~120_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(4) $ (\ready_to_play|LUT_INDEX\(3))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(4) & 
-- (\ready_to_play|state_valid_group~q\ $ (!\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[4]~120_combout\);

-- Location: LCCOMB_X24_Y41_N20
\ready_to_play|LUT_DATA[4]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~121_combout\ = (\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|state_valid_group~q\ & (!\ready_to_play|LUT_INDEX\(3) & 
-- ((\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[4]~121_combout\);

-- Location: LCCOMB_X24_Y41_N4
\ready_to_play|LUT_DATA[4]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~122_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_DATA[4]~120_combout\ & (\ready_to_play|LUT_INDEX\(2) $ (\ready_to_play|LUT_DATA[4]~121_combout\)))) # (!\ready_to_play|LUT_INDEX\(1) & 
-- (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_DATA[4]~120_combout\ & \ready_to_play|LUT_DATA[4]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[4]~120_combout\,
	datad => \ready_to_play|LUT_DATA[4]~121_combout\,
	combout => \ready_to_play|LUT_DATA[4]~122_combout\);

-- Location: LCCOMB_X24_Y41_N28
\ready_to_play|LUT_DATA[4]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~123_combout\ = (\ready_to_play|state_valid_group~q\ & (!\ready_to_play|LUT_INDEX\(3) & (!\ready_to_play|LUT_INDEX\(2) & !\ready_to_play|LUT_INDEX\(1)))) # (!\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_INDEX\(3) $ 
-- (\ready_to_play|LUT_INDEX\(2) $ (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(2),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[4]~123_combout\);

-- Location: LCCOMB_X24_Y41_N24
\ready_to_play|LUT_DATA[4]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~124_combout\ = (!\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_DATA[4]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_DATA[4]~123_combout\,
	combout => \ready_to_play|LUT_DATA[4]~124_combout\);

-- Location: LCCOMB_X24_Y41_N18
\ready_to_play|LUT_DATA[4]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~125_combout\ = (\ready_to_play|LUT_DATA[4]~119_combout\ & ((\ready_to_play|LUT_DATA[4]~122_combout\) # (\ready_to_play|LUT_DATA[4]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~119_combout\,
	datac => \ready_to_play|LUT_DATA[4]~122_combout\,
	datad => \ready_to_play|LUT_DATA[4]~124_combout\,
	combout => \ready_to_play|LUT_DATA[4]~125_combout\);

-- Location: LCCOMB_X24_Y39_N14
\ready_to_play|LUT_DATA[5]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~128_combout\ = (!\ready_to_play|state_valid_coder~q\ & (\ready_to_play|state_valid_group~q\ & (!\ready_to_play|state_valid_breaker~q\ & !\ready_to_play|state_valid_invisible~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|state_valid_invisible~q\,
	combout => \ready_to_play|LUT_DATA[5]~128_combout\);

-- Location: LCCOMB_X24_Y39_N4
\ready_to_play|LUT_DATA[4]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~129_combout\ = (\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[5]~128_combout\ & (\ready_to_play|LUT_INDEX\(2) $ (!\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[5]~128_combout\,
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|LUT_DATA[4]~129_combout\);

-- Location: LCCOMB_X25_Y39_N18
\ready_to_play|LUT_DATA[4]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~126_combout\ = (\ready_to_play|state_valid_breaker~q\ & ((\ready_to_play|LUT_INDEX\(0) $ (!\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|state_valid_breaker~q\ & (\ready_to_play|state_valid_coder~q\ & 
-- (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|state_valid_breaker~q\,
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[4]~126_combout\);

-- Location: LCCOMB_X25_Y39_N12
\ready_to_play|LUT_DATA[4]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~127_combout\ = (!\ready_to_play|state_valid_invisible~q\ & (\ready_to_play|LUT_DATA[4]~126_combout\ & (\ready_to_play|LUT_INDEX\(1) & \ready_to_play|LUT_DATA[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible~q\,
	datab => \ready_to_play|LUT_DATA[4]~126_combout\,
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_DATA[0]~35_combout\,
	combout => \ready_to_play|LUT_DATA[4]~127_combout\);

-- Location: LCCOMB_X25_Y38_N0
\ready_to_play|LUT_DATA[4]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~130_combout\ = (\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|LUT_DATA[0]~27_combout\ & !\ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[0]~27_combout\,
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[4]~130_combout\);

-- Location: LCCOMB_X24_Y39_N30
\ready_to_play|LUT_DATA[4]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~131_combout\ = (\ready_to_play|LUT_DATA[4]~127_combout\) # ((!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_DATA[4]~129_combout\) # (\ready_to_play|LUT_DATA[4]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_DATA[4]~129_combout\,
	datac => \ready_to_play|LUT_DATA[4]~127_combout\,
	datad => \ready_to_play|LUT_DATA[4]~130_combout\,
	combout => \ready_to_play|LUT_DATA[4]~131_combout\);

-- Location: LCCOMB_X25_Y40_N8
\ready_to_play|LUT_DATA[1]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~117_combout\ = (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|LUT_INDEX\(0) & !\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[1]~117_combout\);

-- Location: LCCOMB_X25_Y40_N30
\ready_to_play|LUT_DATA[4]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~118_combout\ = (\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[0]~47_combout\) # ((\ready_to_play|LUT_DATA[1]~117_combout\ & \ready_to_play|LUT_DATA[0]~35_combout\)))) # (!\ready_to_play|LUT_INDEX\(5) & 
-- (\ready_to_play|LUT_DATA[1]~117_combout\ & (\ready_to_play|LUT_DATA[0]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_DATA[1]~117_combout\,
	datac => \ready_to_play|LUT_DATA[0]~35_combout\,
	datad => \ready_to_play|LUT_DATA[0]~47_combout\,
	combout => \ready_to_play|LUT_DATA[4]~118_combout\);

-- Location: LCCOMB_X24_Y39_N24
\ready_to_play|LUT_DATA[4]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~179_combout\ = (!\ready_to_play|state_valid_invisible~q\ & (\ready_to_play|LUT_DATA[4]~118_combout\ & ((\ready_to_play|state_valid_coder~q\) # (\ready_to_play|state_valid_breaker~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible~q\,
	datab => \ready_to_play|state_valid_coder~q\,
	datac => \ready_to_play|LUT_DATA[4]~118_combout\,
	datad => \ready_to_play|state_valid_breaker~q\,
	combout => \ready_to_play|LUT_DATA[4]~179_combout\);

-- Location: LCCOMB_X24_Y39_N20
\ready_to_play|LUT_DATA[4]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~132_combout\ = (\ready_to_play|LUT_DATA[4]~116_combout\) # ((\ready_to_play|LUT_DATA[4]~125_combout\) # ((\ready_to_play|LUT_DATA[4]~131_combout\) # (\ready_to_play|LUT_DATA[4]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[4]~116_combout\,
	datab => \ready_to_play|LUT_DATA[4]~125_combout\,
	datac => \ready_to_play|LUT_DATA[4]~131_combout\,
	datad => \ready_to_play|LUT_DATA[4]~179_combout\,
	combout => \ready_to_play|LUT_DATA[4]~132_combout\);

-- Location: LCCOMB_X24_Y39_N10
\ready_to_play|LUT_DATA[4]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~133_combout\ = (\ready_to_play|LUT_DATA[0]~25_combout\ & ((\ready_to_play|Decoder2~7_combout\) # ((!\ready_to_play|LUT_DATA[6]~26_combout\)))) # (!\ready_to_play|LUT_DATA[0]~25_combout\ & 
-- (((\ready_to_play|LUT_DATA[6]~26_combout\ & \ready_to_play|LUT_DATA[4]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Decoder2~7_combout\,
	datab => \ready_to_play|LUT_DATA[0]~25_combout\,
	datac => \ready_to_play|LUT_DATA[6]~26_combout\,
	datad => \ready_to_play|LUT_DATA[4]~132_combout\,
	combout => \ready_to_play|LUT_DATA[4]~133_combout\);

-- Location: LCCOMB_X24_Y39_N0
\ready_to_play|LUT_DATA[4]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[4]~134_combout\ = (\ready_to_play|LUT_DATA[6]~26_combout\ & (((\ready_to_play|LUT_DATA[4]~133_combout\)))) # (!\ready_to_play|LUT_DATA[6]~26_combout\ & ((\ready_to_play|LUT_DATA[4]~133_combout\ & 
-- (\ready_to_play|WideOr52~0_combout\)) # (!\ready_to_play|LUT_DATA[4]~133_combout\ & ((\ready_to_play|WideOr42~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|WideOr52~0_combout\,
	datab => \ready_to_play|WideOr42~3_combout\,
	datac => \ready_to_play|LUT_DATA[6]~26_combout\,
	datad => \ready_to_play|LUT_DATA[4]~133_combout\,
	combout => \ready_to_play|LUT_DATA[4]~134_combout\);

-- Location: LCCOMB_X24_Y39_N6
\ready_to_play|LUT_DATA[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(4) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[4]~134_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA\(4),
	datac => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[4]~134_combout\,
	combout => \ready_to_play|LUT_DATA\(4));

-- Location: LCCOMB_X24_Y39_N28
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

-- Location: FF_X24_Y39_N29
\ready_to_play|mLCD_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~5_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(4));

-- Location: LCCOMB_X23_Y39_N16
\ready_to_play|WideOr27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr27~1_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(3))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr27~1_combout\);

-- Location: LCCOMB_X25_Y39_N8
\ready_to_play|WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr27~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1) $ 
-- (((\ready_to_play|LUT_INDEX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr27~0_combout\);

-- Location: LCCOMB_X23_Y39_N6
\ready_to_play|WideOr27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr27~2_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|WideOr27~1_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|WideOr27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|WideOr27~1_combout\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|WideOr27~0_combout\,
	combout => \ready_to_play|WideOr27~2_combout\);

-- Location: LCCOMB_X24_Y42_N8
\ready_to_play|LUT_DATA[5]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~138_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(0) & ((!\ready_to_play|LUT_INDEX\(4)) # (!\ready_to_play|LUT_INDEX\(1)))))) # 
-- (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) $ (((\ready_to_play|LUT_INDEX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~138_combout\);

-- Location: LCCOMB_X24_Y42_N6
\ready_to_play|LUT_DATA[5]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~137_combout\ = (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(3) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~137_combout\);

-- Location: LCCOMB_X23_Y42_N22
\ready_to_play|LUT_DATA[5]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~180_combout\ = (\ready_to_play|LUT_INDEX\(2) & (((\ready_to_play|LUT_DATA[5]~137_combout\)))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(5) & (\ready_to_play|LUT_DATA[5]~138_combout\ $ 
-- (!\ready_to_play|LUT_DATA[5]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[5]~138_combout\,
	datad => \ready_to_play|LUT_DATA[5]~137_combout\,
	combout => \ready_to_play|LUT_DATA[5]~180_combout\);

-- Location: LCCOMB_X24_Y42_N12
\ready_to_play|LUT_DATA[5]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~135_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3) $ (((\ready_to_play|LUT_INDEX\(4)))))) # (!\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & 
-- !\ready_to_play|LUT_INDEX\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|LUT_DATA[5]~135_combout\);

-- Location: LCCOMB_X23_Y42_N20
\ready_to_play|LUT_DATA[5]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~136_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_DATA[5]~135_combout\) # ((\ready_to_play|LUT_INDEX\(5) & !\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(5),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_DATA[5]~135_combout\,
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[5]~136_combout\);

-- Location: LCCOMB_X23_Y42_N0
\ready_to_play|LUT_DATA[5]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~181_combout\ = (\ready_to_play|state_valid_breaker~q\ & (!\ready_to_play|state_valid_invisible~q\ & ((\ready_to_play|LUT_DATA[5]~180_combout\) # (\ready_to_play|LUT_DATA[5]~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|state_valid_invisible~q\,
	datac => \ready_to_play|LUT_DATA[5]~180_combout\,
	datad => \ready_to_play|LUT_DATA[5]~136_combout\,
	combout => \ready_to_play|LUT_DATA[5]~181_combout\);

-- Location: LCCOMB_X25_Y39_N0
\ready_to_play|LUT_DATA[5]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~141_combout\ = (!\ready_to_play|state_valid_coder~q\ & (!\ready_to_play|state_valid_invisible~q\ & (!\ready_to_play|state_valid_breaker~q\ & !\ready_to_play|state_valid_group~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_coder~q\,
	datab => \ready_to_play|state_valid_invisible~q\,
	datac => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|state_valid_group~q\,
	combout => \ready_to_play|LUT_DATA[5]~141_combout\);

-- Location: LCCOMB_X25_Y39_N26
\ready_to_play|LUT_DATA[5]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~143_combout\ = (\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~143_combout\);

-- Location: LCCOMB_X25_Y39_N16
\ready_to_play|LUT_DATA[5]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~142_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(0) $ (((!\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(3)))))) # (!\ready_to_play|LUT_INDEX\(2) & (!\ready_to_play|LUT_INDEX\(3) & 
-- ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[5]~142_combout\);

-- Location: LCCOMB_X25_Y39_N6
\ready_to_play|LUT_DATA[5]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~144_combout\ = (\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_DATA[5]~142_combout\) # (!\ready_to_play|LUT_DATA[5]~143_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|LUT_DATA[5]~143_combout\) # 
-- (!\ready_to_play|LUT_DATA[5]~142_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_DATA[5]~143_combout\,
	datad => \ready_to_play|LUT_DATA[5]~142_combout\,
	combout => \ready_to_play|LUT_DATA[5]~144_combout\);

-- Location: LCCOMB_X25_Y39_N22
\ready_to_play|LUT_DATA[5]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~145_combout\ = (\ready_to_play|LUT_DATA[5]~141_combout\ & ((\ready_to_play|LUT_DATA[5]~144_combout\) # ((!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(4),
	datab => \ready_to_play|LUT_INDEX\(5),
	datac => \ready_to_play|LUT_DATA[5]~141_combout\,
	datad => \ready_to_play|LUT_DATA[5]~144_combout\,
	combout => \ready_to_play|LUT_DATA[5]~145_combout\);

-- Location: LCCOMB_X24_Y39_N2
\ready_to_play|LUT_DATA[5]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~152_combout\ = (\ready_to_play|LUT_DATA[5]~151_combout\) # ((\ready_to_play|state_valid_group~q\ & (\ready_to_play|LUT_DATA[3]~62_combout\ & \ready_to_play|LUT_INDEX\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~151_combout\,
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|LUT_DATA[3]~62_combout\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[5]~152_combout\);

-- Location: LCCOMB_X24_Y39_N16
\ready_to_play|LUT_DATA[5]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~153_combout\ = (\ready_to_play|LUT_DATA[5]~140_combout\) # ((\ready_to_play|LUT_DATA[5]~181_combout\) # ((\ready_to_play|LUT_DATA[5]~145_combout\) # (\ready_to_play|LUT_DATA[5]~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[5]~140_combout\,
	datab => \ready_to_play|LUT_DATA[5]~181_combout\,
	datac => \ready_to_play|LUT_DATA[5]~145_combout\,
	datad => \ready_to_play|LUT_DATA[5]~152_combout\,
	combout => \ready_to_play|LUT_DATA[5]~153_combout\);

-- Location: LCCOMB_X24_Y39_N22
\ready_to_play|LUT_DATA[5]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~154_combout\ = (\ready_to_play|LUT_DATA[0]~25_combout\ & (((!\ready_to_play|LUT_DATA[6]~26_combout\)))) # (!\ready_to_play|LUT_DATA[0]~25_combout\ & ((\ready_to_play|LUT_DATA[6]~26_combout\ & 
-- ((\ready_to_play|LUT_DATA[5]~153_combout\))) # (!\ready_to_play|LUT_DATA[6]~26_combout\ & (\ready_to_play|WideOr40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|WideOr40~1_combout\,
	datab => \ready_to_play|LUT_DATA[0]~25_combout\,
	datac => \ready_to_play|LUT_DATA[6]~26_combout\,
	datad => \ready_to_play|LUT_DATA[5]~153_combout\,
	combout => \ready_to_play|LUT_DATA[5]~154_combout\);

-- Location: LCCOMB_X23_Y39_N20
\ready_to_play|LUT_DATA[5]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~155_combout\ = (\ready_to_play|LUT_DATA[0]~25_combout\ & ((\ready_to_play|LUT_DATA[5]~154_combout\ & (\ready_to_play|WideOr51~3_combout\)) # (!\ready_to_play|LUT_DATA[5]~154_combout\ & ((\ready_to_play|WideOr27~2_combout\))))) # 
-- (!\ready_to_play|LUT_DATA[0]~25_combout\ & (((\ready_to_play|LUT_DATA[5]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|WideOr51~3_combout\,
	datab => \ready_to_play|WideOr27~2_combout\,
	datac => \ready_to_play|LUT_DATA[0]~25_combout\,
	datad => \ready_to_play|LUT_DATA[5]~154_combout\,
	combout => \ready_to_play|LUT_DATA[5]~155_combout\);

-- Location: LCCOMB_X23_Y39_N18
\ready_to_play|LUT_DATA[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(5) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[5]~155_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA\(5),
	datac => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[5]~155_combout\,
	combout => \ready_to_play|LUT_DATA\(5));

-- Location: LCCOMB_X23_Y39_N2
\ready_to_play|mLCD_DATA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~6_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(5),
	combout => \ready_to_play|mLCD_DATA~6_combout\);

-- Location: FF_X23_Y39_N3
\ready_to_play|mLCD_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~6_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(5));

-- Location: LCCOMB_X25_Y38_N30
\ready_to_play|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr9~0_combout\ = (\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(2) $ (((\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(0)))))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|WideOr9~0_combout\);

-- Location: LCCOMB_X25_Y38_N12
\ready_to_play|WideOr9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr9~1_combout\ = (\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(1))) # (!\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|WideOr9~1_combout\);

-- Location: LCCOMB_X25_Y38_N10
\ready_to_play|LUT_DATA[6]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~159_combout\ = (!\ready_to_play|state_valid_group~q\ & ((\ready_to_play|LUT_INDEX\(4) & ((!\ready_to_play|WideOr9~1_combout\))) # (!\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_group~q\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|WideOr9~0_combout\,
	datad => \ready_to_play|WideOr9~1_combout\,
	combout => \ready_to_play|LUT_DATA[6]~159_combout\);

-- Location: LCCOMB_X24_Y38_N10
\ready_to_play|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux8~1_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(2))))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(2)))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|Mux8~1_combout\);

-- Location: LCCOMB_X24_Y38_N24
\ready_to_play|LUT_DATA[6]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~160_combout\ = (\ready_to_play|LUT_INDEX\(5)) # ((\ready_to_play|LUT_INDEX\(4) & (\ready_to_play|Mux8~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux8~0_combout\,
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|Mux8~1_combout\,
	combout => \ready_to_play|LUT_DATA[6]~160_combout\);

-- Location: LCCOMB_X24_Y38_N18
\ready_to_play|LUT_DATA[6]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~161_combout\ = (\ready_to_play|LUT_DATA[3]~62_combout\ & ((\ready_to_play|LUT_DATA[6]~159_combout\) # ((\ready_to_play|state_valid_group~q\ & \ready_to_play|LUT_DATA[6]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~62_combout\,
	datab => \ready_to_play|state_valid_group~q\,
	datac => \ready_to_play|LUT_DATA[6]~159_combout\,
	datad => \ready_to_play|LUT_DATA[6]~160_combout\,
	combout => \ready_to_play|LUT_DATA[6]~161_combout\);

-- Location: LCCOMB_X23_Y38_N26
\ready_to_play|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux15~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(3)) # (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_INDEX\(1) & (\ready_to_play|LUT_INDEX\(4))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|Mux15~0_combout\);

-- Location: LCCOMB_X25_Y39_N14
\ready_to_play|LUT_DATA[5]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[5]~105_combout\ = (!\ready_to_play|state_valid_breaker~q\ & \ready_to_play|state_valid_coder~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datad => \ready_to_play|state_valid_coder~q\,
	combout => \ready_to_play|LUT_DATA[5]~105_combout\);

-- Location: LCCOMB_X24_Y38_N0
\ready_to_play|LUT_DATA[6]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~163_combout\ = (\ready_to_play|LUT_DATA[5]~105_combout\ & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux15~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|Mux15~1_combout\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|Mux15~0_combout\,
	datad => \ready_to_play|LUT_DATA[5]~105_combout\,
	combout => \ready_to_play|LUT_DATA[6]~163_combout\);

-- Location: LCCOMB_X24_Y38_N28
\ready_to_play|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux22~1_combout\ = (\ready_to_play|LUT_INDEX\(4)) # ((\ready_to_play|LUT_INDEX\(3) & ((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux22~1_combout\);

-- Location: LCCOMB_X24_Y38_N14
\ready_to_play|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|Mux22~0_combout\ = (\ready_to_play|LUT_INDEX\(3) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4))))) # (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(0) & 
-- (\ready_to_play|LUT_INDEX\(1) $ (\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|LUT_INDEX\(1),
	datac => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(4),
	combout => \ready_to_play|Mux22~0_combout\);

-- Location: LCCOMB_X24_Y38_N26
\ready_to_play|LUT_DATA[6]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~164_combout\ = (\ready_to_play|state_valid_breaker~q\ & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|Mux22~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_breaker~q\,
	datab => \ready_to_play|Mux22~1_combout\,
	datac => \ready_to_play|Mux22~0_combout\,
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[6]~164_combout\);

-- Location: LCCOMB_X24_Y38_N8
\ready_to_play|LUT_DATA[6]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~165_combout\ = (\ready_to_play|LUT_DATA[6]~162_combout\) # ((!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[6]~163_combout\) # (\ready_to_play|LUT_DATA[6]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~162_combout\,
	datab => \ready_to_play|LUT_DATA[6]~163_combout\,
	datac => \ready_to_play|LUT_DATA[6]~164_combout\,
	datad => \ready_to_play|LUT_INDEX\(5),
	combout => \ready_to_play|LUT_DATA[6]~165_combout\);

-- Location: LCCOMB_X24_Y38_N2
\ready_to_play|LUT_DATA[6]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~166_combout\ = (!\ready_to_play|state_valid_invisible~q\ & (!\ready_to_play|state_valid_flexible~q\ & ((\ready_to_play|LUT_DATA[6]~161_combout\) # (\ready_to_play|LUT_DATA[6]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_invisible~q\,
	datab => \ready_to_play|state_valid_flexible~q\,
	datac => \ready_to_play|LUT_DATA[6]~161_combout\,
	datad => \ready_to_play|LUT_DATA[6]~165_combout\,
	combout => \ready_to_play|LUT_DATA[6]~166_combout\);

-- Location: LCCOMB_X25_Y38_N6
\ready_to_play|LUT_DATA[1]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[1]~100_combout\ = (\ready_to_play|LUT_INDEX\(0) & \ready_to_play|LUT_INDEX\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(0),
	datad => \ready_to_play|LUT_INDEX\(2),
	combout => \ready_to_play|LUT_DATA[1]~100_combout\);

-- Location: LCCOMB_X25_Y38_N18
\ready_to_play|LUT_DATA[6]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~156_combout\ = (!\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|state_valid_test~q\ & (\ready_to_play|LUT_DATA[6]~37_combout\ & \ready_to_play|LUT_DATA[1]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(3),
	datab => \ready_to_play|state_valid_test~q\,
	datac => \ready_to_play|LUT_DATA[6]~37_combout\,
	datad => \ready_to_play|LUT_DATA[1]~100_combout\,
	combout => \ready_to_play|LUT_DATA[6]~156_combout\);

-- Location: LCCOMB_X25_Y38_N16
\ready_to_play|LUT_DATA[6]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~158_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[6]~156_combout\) # ((\ready_to_play|LUT_DATA[6]~157_combout\ & \ready_to_play|state_valid_camouflage~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~157_combout\,
	datab => \ready_to_play|LUT_DATA[6]~156_combout\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|state_valid_camouflage~q\,
	combout => \ready_to_play|LUT_DATA[6]~158_combout\);

-- Location: LCCOMB_X25_Y39_N30
\ready_to_play|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr16~0_combout\ = (\ready_to_play|LUT_INDEX\(3)) # ((\ready_to_play|LUT_INDEX\(1)) # (\ready_to_play|LUT_INDEX\(0) $ (\ready_to_play|LUT_INDEX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(0),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|WideOr16~0_combout\);

-- Location: LCCOMB_X23_Y38_N22
\ready_to_play|WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr14~0_combout\ = (\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3) & \ready_to_play|LUT_INDEX\(0)))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_INDEX\(3) & 
-- ((!\ready_to_play|LUT_INDEX\(0)) # (!\ready_to_play|LUT_INDEX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_INDEX\(3),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|WideOr14~0_combout\);

-- Location: LCCOMB_X24_Y38_N16
\ready_to_play|LUT_DATA[6]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~169_combout\ = (\ready_to_play|LUT_INDEX\(4) & (!\ready_to_play|WideOr16~0_combout\)) # (!\ready_to_play|LUT_INDEX\(4) & ((\ready_to_play|WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_INDEX\(4),
	datac => \ready_to_play|WideOr16~0_combout\,
	datad => \ready_to_play|WideOr14~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~169_combout\);

-- Location: LCCOMB_X23_Y38_N30
\ready_to_play|LUT_DATA[6]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~167_combout\ = (\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(0) & (!\ready_to_play|LUT_INDEX\(4) & \ready_to_play|LUT_INDEX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(3),
	combout => \ready_to_play|LUT_DATA[6]~167_combout\);

-- Location: LCCOMB_X23_Y38_N0
\ready_to_play|WideOr25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|WideOr25~0_combout\ = (\ready_to_play|LUT_INDEX\(0) & ((\ready_to_play|LUT_INDEX\(1) & (!\ready_to_play|LUT_INDEX\(3) & !\ready_to_play|LUT_INDEX\(4))) # (!\ready_to_play|LUT_INDEX\(1) & ((\ready_to_play|LUT_INDEX\(4)))))) # 
-- (!\ready_to_play|LUT_INDEX\(0) & (\ready_to_play|LUT_INDEX\(3) & (\ready_to_play|LUT_INDEX\(1) $ (!\ready_to_play|LUT_INDEX\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_INDEX\(3),
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_INDEX\(0),
	combout => \ready_to_play|WideOr25~0_combout\);

-- Location: LCCOMB_X23_Y38_N28
\ready_to_play|LUT_DATA[6]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~168_combout\ = (\ready_to_play|state_valid_flexible~q\ & ((\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|WideOr25~0_combout\))) # (!\ready_to_play|LUT_INDEX\(2) & (\ready_to_play|LUT_DATA[6]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|state_valid_flexible~q\,
	datab => \ready_to_play|LUT_INDEX\(2),
	datac => \ready_to_play|LUT_DATA[6]~167_combout\,
	datad => \ready_to_play|WideOr25~0_combout\,
	combout => \ready_to_play|LUT_DATA[6]~168_combout\);

-- Location: LCCOMB_X24_Y38_N30
\ready_to_play|LUT_DATA[6]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~170_combout\ = (!\ready_to_play|LUT_INDEX\(5) & ((\ready_to_play|LUT_DATA[6]~168_combout\) # ((\ready_to_play|LUT_DATA[3]~110_combout\ & \ready_to_play|LUT_DATA[6]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[3]~110_combout\,
	datab => \ready_to_play|LUT_DATA[6]~169_combout\,
	datac => \ready_to_play|LUT_INDEX\(5),
	datad => \ready_to_play|LUT_DATA[6]~168_combout\,
	combout => \ready_to_play|LUT_DATA[6]~170_combout\);

-- Location: LCCOMB_X24_Y38_N4
\ready_to_play|LUT_DATA[6]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[6]~171_combout\ = (\ready_to_play|LUT_DATA[6]~158_combout\) # ((\ready_to_play|LUT_DATA[6]~26_combout\ & ((\ready_to_play|LUT_DATA[6]~166_combout\) # (\ready_to_play|LUT_DATA[6]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[6]~26_combout\,
	datab => \ready_to_play|LUT_DATA[6]~166_combout\,
	datac => \ready_to_play|LUT_DATA[6]~158_combout\,
	datad => \ready_to_play|LUT_DATA[6]~170_combout\,
	combout => \ready_to_play|LUT_DATA[6]~171_combout\);

-- Location: LCCOMB_X24_Y38_N6
\ready_to_play|LUT_DATA[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(6) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA[6]~171_combout\))) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA\(6),
	datac => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA[6]~171_combout\,
	combout => \ready_to_play|LUT_DATA\(6));

-- Location: LCCOMB_X24_Y38_N12
\ready_to_play|mLCD_DATA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~7_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(6),
	combout => \ready_to_play|mLCD_DATA~7_combout\);

-- Location: FF_X24_Y38_N13
\ready_to_play|mLCD_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~7_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(6));

-- Location: LCCOMB_X25_Y41_N2
\ready_to_play|LUT_DATA[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(7) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA[7]~182_combout\)) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_DATA[7]~182_combout\,
	datab => \ready_to_play|LUT_DATA\(7),
	datad => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	combout => \ready_to_play|LUT_DATA\(7));

-- Location: LCCOMB_X25_Y41_N24
\ready_to_play|mLCD_DATA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_DATA~8_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(7),
	combout => \ready_to_play|mLCD_DATA~8_combout\);

-- Location: FF_X25_Y41_N25
\ready_to_play|mLCD_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_DATA~8_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_DATA\(7));

-- Location: LCCOMB_X46_Y41_N8
\ready_to_play|u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|u0|Selector3~0_combout\ = (\ready_to_play|u0|ST.01~q\) # ((\ready_to_play|u0|LCD_EN~q\ & ((\ready_to_play|u0|ST.10~q\) # (!\ready_to_play|u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|u0|ST.10~q\,
	datab => \ready_to_play|u0|ST.01~q\,
	datac => \ready_to_play|u0|LCD_EN~q\,
	datad => \ready_to_play|u0|ST.00~q\,
	combout => \ready_to_play|u0|Selector3~0_combout\);

-- Location: FF_X46_Y41_N9
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

-- Location: LCCOMB_X25_Y41_N28
\ready_to_play|LUT_DATA[8]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[8]~173_combout\ = (\ready_to_play|LUT_INDEX\(2) & ((\ready_to_play|LUT_INDEX\(0)) # (\ready_to_play|LUT_INDEX\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(2),
	datab => \ready_to_play|LUT_INDEX\(0),
	datac => \ready_to_play|LUT_INDEX\(1),
	combout => \ready_to_play|LUT_DATA[8]~173_combout\);

-- Location: LCCOMB_X25_Y41_N10
\ready_to_play|LUT_DATA[8]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA[8]~174_combout\ = ((\ready_to_play|LUT_DATA[8]~173_combout\ & ((\ready_to_play|LUT_INDEX\(1)) # (!\ready_to_play|LUT_INDEX\(4)))) # (!\ready_to_play|LUT_DATA[8]~173_combout\ & ((\ready_to_play|LUT_INDEX\(4))))) # 
-- (!\ready_to_play|LUT_DATA[0]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready_to_play|LUT_INDEX\(1),
	datab => \ready_to_play|LUT_DATA[8]~173_combout\,
	datac => \ready_to_play|LUT_INDEX\(4),
	datad => \ready_to_play|LUT_DATA[0]~54_combout\,
	combout => \ready_to_play|LUT_DATA[8]~174_combout\);

-- Location: LCCOMB_X25_Y41_N0
\ready_to_play|LUT_DATA[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|LUT_DATA\(8) = (GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & (\ready_to_play|LUT_DATA[8]~174_combout\)) # (!GLOBAL(\ready_to_play|LUT_DATA[1]~63clkctrl_outclk\) & ((\ready_to_play|LUT_DATA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ready_to_play|LUT_DATA[8]~174_combout\,
	datac => \ready_to_play|LUT_DATA[1]~63clkctrl_outclk\,
	datad => \ready_to_play|LUT_DATA\(8),
	combout => \ready_to_play|LUT_DATA\(8));

-- Location: LCCOMB_X25_Y41_N18
\ready_to_play|mLCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ready_to_play|mLCD_RS~0_combout\ = (\clk_div|clk_out~q\ & \ready_to_play|LUT_DATA\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div|clk_out~q\,
	datad => \ready_to_play|LUT_DATA\(8),
	combout => \ready_to_play|mLCD_RS~0_combout\);

-- Location: FF_X25_Y41_N19
\ready_to_play|mLCD_RS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \ready_to_play|mLCD_RS~0_combout\,
	ena => \ready_to_play|mLCD_DATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_to_play|mLCD_RS~q\);

-- Location: LCCOMB_X31_Y37_N0
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

-- Location: LCCOMB_X31_Y37_N16
\select_your_power|oHEX_D1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[0]~feeder_combout\ = \select_your_power|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \select_your_power|Mux5~0_combout\,
	combout => \select_your_power|oHEX_D1[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y37_N10
\select_your_power|oHEX_D1[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[5]~2_combout\ = (!\comb_3|state\(3) & ((\comb_3|state\(1) & (!\comb_3|state\(0) & \comb_3|state\(2))) # (!\comb_3|state\(1) & ((\comb_3|state\(2)) # (!\comb_3|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(2),
	combout => \select_your_power|oHEX_D1[5]~2_combout\);

-- Location: FF_X31_Y37_N17
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
	ena => \select_your_power|oHEX_D1[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(0));

-- Location: LCCOMB_X31_Y37_N20
\select_your_power|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux4~0_combout\ = (!\comb_3|state\(2)) # (!\comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(0),
	datad => \comb_3|state\(2),
	combout => \select_your_power|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y37_N22
\select_your_power|Mux4~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux4~0_wirecell_combout\ = !\select_your_power|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \select_your_power|Mux4~0_combout\,
	combout => \select_your_power|Mux4~0_wirecell_combout\);

-- Location: FF_X31_Y37_N23
\select_your_power|oHEX_D1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|Mux4~0_wirecell_combout\,
	sclr => \comb_3|state\(1),
	ena => \select_your_power|oHEX_D1[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(2));

-- Location: LCCOMB_X30_Y38_N12
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

-- Location: FF_X30_Y38_N13
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
	ena => \select_your_power|oHEX_D1[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(4));

-- Location: LCCOMB_X31_Y37_N18
\select_your_power|oHEX_D1[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[5]~4_combout\ = (\select_your_power|oHEX_D1[5]~2_combout\ & ((\comb_3|state\(1)) # ((\comb_3|state\(2))))) # (!\select_your_power|oHEX_D1[5]~2_combout\ & (((\select_your_power|oHEX_D1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(1),
	datab => \comb_3|state\(2),
	datac => \select_your_power|oHEX_D1\(5),
	datad => \select_your_power|oHEX_D1[5]~2_combout\,
	combout => \select_your_power|oHEX_D1[5]~4_combout\);

-- Location: FF_X31_Y37_N19
\select_your_power|oHEX_D1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D1[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(5));

-- Location: LCCOMB_X31_Y37_N12
\select_your_power|oHEX_D1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D1[6]~feeder_combout\ = \select_your_power|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \select_your_power|Mux4~0_combout\,
	combout => \select_your_power|oHEX_D1[6]~feeder_combout\);

-- Location: FF_X31_Y37_N13
\select_your_power|oHEX_D1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D1[6]~feeder_combout\,
	sclr => \comb_3|state\(1),
	ena => \select_your_power|oHEX_D1[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D1\(6));

-- Location: LCCOMB_X33_Y37_N10
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

-- Location: LCCOMB_X32_Y37_N16
\select_your_power|oHEX_D2[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|oHEX_D2[6]~0_combout\ = (\comb_3|state\(2) & (!\comb_3|state\(3) & (\comb_3|state\(1) & \comb_3|state\(0)))) # (!\comb_3|state\(2) & (!\comb_3|state\(1) & ((\comb_3|state\(3)) # (!\comb_3|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(2),
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(1),
	datad => \comb_3|state\(0),
	combout => \select_your_power|oHEX_D2[6]~0_combout\);

-- Location: FF_X33_Y37_N11
\select_your_power|oHEX_D2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D2[0]~feeder_combout\,
	ena => \select_your_power|oHEX_D2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(0));

-- Location: LCCOMB_X32_Y37_N0
\select_your_power|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux10~0_combout\ = (\comb_3|state\(3) & !\comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|state\(3),
	datad => \comb_3|state\(0),
	combout => \select_your_power|Mux10~0_combout\);

-- Location: FF_X32_Y37_N1
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
	ena => \select_your_power|oHEX_D2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(2));

-- Location: LCCOMB_X33_Y37_N24
\comb_3|counting_down|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal0~0_combout\ = (\comb_3|state\(3) & \comb_3|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datad => \comb_3|state\(0),
	combout => \comb_3|counting_down|Equal0~0_combout\);

-- Location: FF_X33_Y37_N25
\select_your_power|oHEX_D2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Equal0~0_combout\,
	asdata => VCC,
	sload => \comb_3|state\(2),
	ena => \select_your_power|oHEX_D2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(4));

-- Location: LCCOMB_X30_Y37_N10
\comb_3|picked_second_power~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|picked_second_power~0_combout\ = (\comb_3|state\(3)) # (\comb_3|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|state\(3),
	datac => \comb_3|state\(2),
	combout => \comb_3|picked_second_power~0_combout\);

-- Location: LCCOMB_X32_Y37_N6
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

-- Location: FF_X32_Y37_N7
\select_your_power|oHEX_D2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|oHEX_D2[5]~feeder_combout\,
	ena => \select_your_power|oHEX_D2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(5));

-- Location: LCCOMB_X33_Y37_N4
\select_your_power|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \select_your_power|Mux6~0_combout\ = (\comb_3|state\(2)) # (!\comb_3|state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|state\(2),
	datad => \comb_3|state\(3),
	combout => \select_your_power|Mux6~0_combout\);

-- Location: FF_X33_Y37_N5
\select_your_power|oHEX_D2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \select_your_power|Mux6~0_combout\,
	ena => \select_your_power|oHEX_D2[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \select_your_power|oHEX_D2\(6));

-- Location: LCCOMB_X84_Y21_N8
\comb_3|counting_down|countdown_val[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[1]~3_combout\ = \comb_3|counting_down|countdown_val\(1) $ (((!\comb_3|counting_down|countdown_val\(0) & \comb_3|counting_down|countdown_val[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|countdown_val\(0),
	datac => \comb_3|counting_down|countdown_val\(1),
	datad => \comb_3|counting_down|countdown_val[0]~1_combout\,
	combout => \comb_3|counting_down|countdown_val[1]~3_combout\);

-- Location: FF_X84_Y21_N9
\comb_3|counting_down|countdown_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(1));

-- Location: LCCOMB_X84_Y21_N18
\comb_3|counting_down|countdown_val[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[2]~4_combout\ = \comb_3|counting_down|countdown_val\(2) $ (((!\comb_3|counting_down|countdown_val\(0) & (\comb_3|counting_down|countdown_val\(1) & \comb_3|counting_down|countdown_val[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|countdown_val\(0),
	datab => \comb_3|counting_down|countdown_val\(1),
	datac => \comb_3|counting_down|countdown_val\(2),
	datad => \comb_3|counting_down|countdown_val[0]~1_combout\,
	combout => \comb_3|counting_down|countdown_val[2]~4_combout\);

-- Location: FF_X84_Y21_N19
\comb_3|counting_down|countdown_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(2));

-- Location: LCCOMB_X84_Y21_N28
\comb_3|counting_down|countdown_val[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[0]~0_combout\ = (!\comb_3|counting_down|countdown_val\(2) & (\comb_3|counting_down|countdown_val\(1) & !\comb_3|counting_down|countdown_val\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|countdown_val\(2),
	datac => \comb_3|counting_down|countdown_val\(1),
	datad => \comb_3|counting_down|countdown_val\(0),
	combout => \comb_3|counting_down|countdown_val[0]~0_combout\);

-- Location: LCCOMB_X79_Y22_N6
\comb_3|counting_down|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~0_combout\ = \comb_3|counting_down|second_counter\(0) $ (VCC)
-- \comb_3|counting_down|Add1~1\ = CARRY(\comb_3|counting_down|second_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(0),
	datad => VCC,
	combout => \comb_3|counting_down|Add1~0_combout\,
	cout => \comb_3|counting_down|Add1~1\);

-- Location: LCCOMB_X79_Y22_N8
\comb_3|counting_down|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~2_combout\ = (\comb_3|counting_down|second_counter\(1) & (!\comb_3|counting_down|Add1~1\)) # (!\comb_3|counting_down|second_counter\(1) & ((\comb_3|counting_down|Add1~1\) # (GND)))
-- \comb_3|counting_down|Add1~3\ = CARRY((!\comb_3|counting_down|Add1~1\) # (!\comb_3|counting_down|second_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(1),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~1\,
	combout => \comb_3|counting_down|Add1~2_combout\,
	cout => \comb_3|counting_down|Add1~3\);

-- Location: LCCOMB_X29_Y37_N16
\comb_3|counting_down|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal0~1_combout\ = (\comb_3|state\(3) & (\comb_3|state\(1) & (!\comb_3|state\(2) & \comb_3|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|state\(3),
	datab => \comb_3|state\(1),
	datac => \comb_3|state\(2),
	datad => \comb_3|state\(0),
	combout => \comb_3|counting_down|Equal0~1_combout\);

-- Location: FF_X79_Y22_N9
\comb_3|counting_down|second_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~2_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(1));

-- Location: LCCOMB_X79_Y22_N10
\comb_3|counting_down|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~4_combout\ = (\comb_3|counting_down|second_counter\(2) & (\comb_3|counting_down|Add1~3\ $ (GND))) # (!\comb_3|counting_down|second_counter\(2) & (!\comb_3|counting_down|Add1~3\ & VCC))
-- \comb_3|counting_down|Add1~5\ = CARRY((\comb_3|counting_down|second_counter\(2) & !\comb_3|counting_down|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(2),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~3\,
	combout => \comb_3|counting_down|Add1~4_combout\,
	cout => \comb_3|counting_down|Add1~5\);

-- Location: LCCOMB_X79_Y22_N14
\comb_3|counting_down|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~8_combout\ = (\comb_3|counting_down|second_counter\(4) & (\comb_3|counting_down|Add1~7\ $ (GND))) # (!\comb_3|counting_down|second_counter\(4) & (!\comb_3|counting_down|Add1~7\ & VCC))
-- \comb_3|counting_down|Add1~9\ = CARRY((\comb_3|counting_down|second_counter\(4) & !\comb_3|counting_down|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(4),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~7\,
	combout => \comb_3|counting_down|Add1~8_combout\,
	cout => \comb_3|counting_down|Add1~9\);

-- Location: FF_X79_Y22_N15
\comb_3|counting_down|second_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~8_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(4));

-- Location: LCCOMB_X79_Y22_N16
\comb_3|counting_down|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~10_combout\ = (\comb_3|counting_down|second_counter\(5) & (!\comb_3|counting_down|Add1~9\)) # (!\comb_3|counting_down|second_counter\(5) & ((\comb_3|counting_down|Add1~9\) # (GND)))
-- \comb_3|counting_down|Add1~11\ = CARRY((!\comb_3|counting_down|Add1~9\) # (!\comb_3|counting_down|second_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(5),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~9\,
	combout => \comb_3|counting_down|Add1~10_combout\,
	cout => \comb_3|counting_down|Add1~11\);

-- Location: FF_X79_Y22_N17
\comb_3|counting_down|second_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~10_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(5));

-- Location: LCCOMB_X79_Y22_N18
\comb_3|counting_down|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~12_combout\ = (\comb_3|counting_down|second_counter\(6) & (\comb_3|counting_down|Add1~11\ $ (GND))) # (!\comb_3|counting_down|second_counter\(6) & (!\comb_3|counting_down|Add1~11\ & VCC))
-- \comb_3|counting_down|Add1~13\ = CARRY((\comb_3|counting_down|second_counter\(6) & !\comb_3|counting_down|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(6),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~11\,
	combout => \comb_3|counting_down|Add1~12_combout\,
	cout => \comb_3|counting_down|Add1~13\);

-- Location: FF_X79_Y22_N19
\comb_3|counting_down|second_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~12_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(6));

-- Location: LCCOMB_X79_Y22_N20
\comb_3|counting_down|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~14_combout\ = (\comb_3|counting_down|second_counter\(7) & (!\comb_3|counting_down|Add1~13\)) # (!\comb_3|counting_down|second_counter\(7) & ((\comb_3|counting_down|Add1~13\) # (GND)))
-- \comb_3|counting_down|Add1~15\ = CARRY((!\comb_3|counting_down|Add1~13\) # (!\comb_3|counting_down|second_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(7),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~13\,
	combout => \comb_3|counting_down|Add1~14_combout\,
	cout => \comb_3|counting_down|Add1~15\);

-- Location: LCCOMB_X80_Y21_N26
\comb_3|counting_down|second_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~0_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~14_combout\,
	combout => \comb_3|counting_down|second_counter~0_combout\);

-- Location: FF_X80_Y21_N27
\comb_3|counting_down|second_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~0_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(7));

-- Location: LCCOMB_X79_Y22_N24
\comb_3|counting_down|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~18_combout\ = (\comb_3|counting_down|second_counter\(9) & (!\comb_3|counting_down|Add1~17\)) # (!\comb_3|counting_down|second_counter\(9) & ((\comb_3|counting_down|Add1~17\) # (GND)))
-- \comb_3|counting_down|Add1~19\ = CARRY((!\comb_3|counting_down|Add1~17\) # (!\comb_3|counting_down|second_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(9),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~17\,
	combout => \comb_3|counting_down|Add1~18_combout\,
	cout => \comb_3|counting_down|Add1~19\);

-- Location: FF_X79_Y22_N25
\comb_3|counting_down|second_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~18_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(9));

-- Location: LCCOMB_X79_Y22_N26
\comb_3|counting_down|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~20_combout\ = (\comb_3|counting_down|second_counter\(10) & (\comb_3|counting_down|Add1~19\ $ (GND))) # (!\comb_3|counting_down|second_counter\(10) & (!\comb_3|counting_down|Add1~19\ & VCC))
-- \comb_3|counting_down|Add1~21\ = CARRY((\comb_3|counting_down|second_counter\(10) & !\comb_3|counting_down|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(10),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~19\,
	combout => \comb_3|counting_down|Add1~20_combout\,
	cout => \comb_3|counting_down|Add1~21\);

-- Location: LCCOMB_X79_Y22_N28
\comb_3|counting_down|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~22_combout\ = (\comb_3|counting_down|second_counter\(11) & (!\comb_3|counting_down|Add1~21\)) # (!\comb_3|counting_down|second_counter\(11) & ((\comb_3|counting_down|Add1~21\) # (GND)))
-- \comb_3|counting_down|Add1~23\ = CARRY((!\comb_3|counting_down|Add1~21\) # (!\comb_3|counting_down|second_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(11),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~21\,
	combout => \comb_3|counting_down|Add1~22_combout\,
	cout => \comb_3|counting_down|Add1~23\);

-- Location: FF_X79_Y22_N29
\comb_3|counting_down|second_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~22_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(11));

-- Location: LCCOMB_X79_Y21_N4
\comb_3|counting_down|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~30_combout\ = (\comb_3|counting_down|second_counter\(15) & (!\comb_3|counting_down|Add1~29\)) # (!\comb_3|counting_down|second_counter\(15) & ((\comb_3|counting_down|Add1~29\) # (GND)))
-- \comb_3|counting_down|Add1~31\ = CARRY((!\comb_3|counting_down|Add1~29\) # (!\comb_3|counting_down|second_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(15),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~29\,
	combout => \comb_3|counting_down|Add1~30_combout\,
	cout => \comb_3|counting_down|Add1~31\);

-- Location: LCCOMB_X80_Y21_N18
\comb_3|counting_down|second_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~4_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~8_combout\,
	datac => \comb_3|counting_down|Add1~30_combout\,
	combout => \comb_3|counting_down|second_counter~4_combout\);

-- Location: FF_X80_Y21_N19
\comb_3|counting_down|second_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~4_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(15));

-- Location: LCCOMB_X79_Y21_N6
\comb_3|counting_down|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~32_combout\ = (\comb_3|counting_down|second_counter\(16) & (\comb_3|counting_down|Add1~31\ $ (GND))) # (!\comb_3|counting_down|second_counter\(16) & (!\comb_3|counting_down|Add1~31\ & VCC))
-- \comb_3|counting_down|Add1~33\ = CARRY((\comb_3|counting_down|second_counter\(16) & !\comb_3|counting_down|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(16),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~31\,
	combout => \comb_3|counting_down|Add1~32_combout\,
	cout => \comb_3|counting_down|Add1~33\);

-- Location: FF_X79_Y21_N7
\comb_3|counting_down|second_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~32_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(16));

-- Location: LCCOMB_X79_Y21_N8
\comb_3|counting_down|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~34_combout\ = (\comb_3|counting_down|second_counter\(17) & (!\comb_3|counting_down|Add1~33\)) # (!\comb_3|counting_down|second_counter\(17) & ((\comb_3|counting_down|Add1~33\) # (GND)))
-- \comb_3|counting_down|Add1~35\ = CARRY((!\comb_3|counting_down|Add1~33\) # (!\comb_3|counting_down|second_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(17),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~33\,
	combout => \comb_3|counting_down|Add1~34_combout\,
	cout => \comb_3|counting_down|Add1~35\);

-- Location: LCCOMB_X79_Y21_N12
\comb_3|counting_down|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~38_combout\ = (\comb_3|counting_down|second_counter\(19) & (!\comb_3|counting_down|Add1~37\)) # (!\comb_3|counting_down|second_counter\(19) & ((\comb_3|counting_down|Add1~37\) # (GND)))
-- \comb_3|counting_down|Add1~39\ = CARRY((!\comb_3|counting_down|Add1~37\) # (!\comb_3|counting_down|second_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(19),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~37\,
	combout => \comb_3|counting_down|Add1~38_combout\,
	cout => \comb_3|counting_down|Add1~39\);

-- Location: LCCOMB_X79_Y21_N30
\comb_3|counting_down|second_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~6_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~38_combout\,
	combout => \comb_3|counting_down|second_counter~6_combout\);

-- Location: FF_X79_Y21_N31
\comb_3|counting_down|second_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~6_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(19));

-- Location: LCCOMB_X80_Y21_N20
\comb_3|counting_down|second_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~5_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~34_combout\,
	combout => \comb_3|counting_down|second_counter~5_combout\);

-- Location: FF_X80_Y21_N21
\comb_3|counting_down|second_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~5_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(17));

-- Location: LCCOMB_X80_Y21_N14
\comb_3|counting_down|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~5_combout\ = (!\comb_3|counting_down|second_counter\(18) & (!\comb_3|counting_down|second_counter\(16) & (\comb_3|counting_down|second_counter\(19) & \comb_3|counting_down|second_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(18),
	datab => \comb_3|counting_down|second_counter\(16),
	datac => \comb_3|counting_down|second_counter\(19),
	datad => \comb_3|counting_down|second_counter\(17),
	combout => \comb_3|counting_down|Equal1~5_combout\);

-- Location: LCCOMB_X79_Y21_N14
\comb_3|counting_down|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~40_combout\ = (\comb_3|counting_down|second_counter\(20) & (\comb_3|counting_down|Add1~39\ $ (GND))) # (!\comb_3|counting_down|second_counter\(20) & (!\comb_3|counting_down|Add1~39\ & VCC))
-- \comb_3|counting_down|Add1~41\ = CARRY((\comb_3|counting_down|second_counter\(20) & !\comb_3|counting_down|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(20),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~39\,
	combout => \comb_3|counting_down|Add1~40_combout\,
	cout => \comb_3|counting_down|Add1~41\);

-- Location: LCCOMB_X80_Y21_N24
\comb_3|counting_down|second_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~7_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~40_combout\,
	combout => \comb_3|counting_down|second_counter~7_combout\);

-- Location: FF_X80_Y21_N25
\comb_3|counting_down|second_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~7_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(20));

-- Location: LCCOMB_X79_Y21_N16
\comb_3|counting_down|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~42_combout\ = (\comb_3|counting_down|second_counter\(21) & (!\comb_3|counting_down|Add1~41\)) # (!\comb_3|counting_down|second_counter\(21) & ((\comb_3|counting_down|Add1~41\) # (GND)))
-- \comb_3|counting_down|Add1~43\ = CARRY((!\comb_3|counting_down|Add1~41\) # (!\comb_3|counting_down|second_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|counting_down|second_counter\(21),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~41\,
	combout => \comb_3|counting_down|Add1~42_combout\,
	cout => \comb_3|counting_down|Add1~43\);

-- Location: LCCOMB_X79_Y21_N28
\comb_3|counting_down|second_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~8_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~42_combout\,
	combout => \comb_3|counting_down|second_counter~8_combout\);

-- Location: FF_X79_Y21_N29
\comb_3|counting_down|second_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~8_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(21));

-- Location: LCCOMB_X79_Y21_N18
\comb_3|counting_down|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Add1~44_combout\ = (\comb_3|counting_down|second_counter\(22) & (\comb_3|counting_down|Add1~43\ $ (GND))) # (!\comb_3|counting_down|second_counter\(22) & (!\comb_3|counting_down|Add1~43\ & VCC))
-- \comb_3|counting_down|Add1~45\ = CARRY((\comb_3|counting_down|second_counter\(22) & !\comb_3|counting_down|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(22),
	datad => VCC,
	cin => \comb_3|counting_down|Add1~43\,
	combout => \comb_3|counting_down|Add1~44_combout\,
	cout => \comb_3|counting_down|Add1~45\);

-- Location: LCCOMB_X80_Y21_N2
\comb_3|counting_down|second_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~9_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~44_combout\,
	combout => \comb_3|counting_down|second_counter~9_combout\);

-- Location: FF_X80_Y21_N3
\comb_3|counting_down|second_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~9_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(22));

-- Location: LCCOMB_X80_Y21_N16
\comb_3|counting_down|second_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|second_counter~10_combout\ = (!\comb_3|counting_down|Equal1~8_combout\ & \comb_3|counting_down|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Add1~46_combout\,
	combout => \comb_3|counting_down|second_counter~10_combout\);

-- Location: FF_X80_Y21_N17
\comb_3|counting_down|second_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|second_counter~10_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(23));

-- Location: LCCOMB_X80_Y21_N22
\comb_3|counting_down|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~6_combout\ = (\comb_3|counting_down|second_counter\(20) & (\comb_3|counting_down|second_counter\(22) & (\comb_3|counting_down|second_counter\(21) & \comb_3|counting_down|second_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(20),
	datab => \comb_3|counting_down|second_counter\(22),
	datac => \comb_3|counting_down|second_counter\(21),
	datad => \comb_3|counting_down|second_counter\(23),
	combout => \comb_3|counting_down|Equal1~6_combout\);

-- Location: FF_X79_Y22_N7
\comb_3|counting_down|second_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~0_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(0));

-- Location: FF_X79_Y22_N11
\comb_3|counting_down|second_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~4_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(2));

-- Location: LCCOMB_X79_Y22_N4
\comb_3|counting_down|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~0_combout\ = (\comb_3|counting_down|second_counter\(3) & (\comb_3|counting_down|second_counter\(1) & (\comb_3|counting_down|second_counter\(0) & \comb_3|counting_down|second_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(3),
	datab => \comb_3|counting_down|second_counter\(1),
	datac => \comb_3|counting_down|second_counter\(0),
	datad => \comb_3|counting_down|second_counter\(2),
	combout => \comb_3|counting_down|Equal1~0_combout\);

-- Location: LCCOMB_X79_Y22_N2
\comb_3|counting_down|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~1_combout\ = (\comb_3|counting_down|second_counter\(4) & (\comb_3|counting_down|second_counter\(5) & (!\comb_3|counting_down|second_counter\(7) & \comb_3|counting_down|second_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(4),
	datab => \comb_3|counting_down|second_counter\(5),
	datac => \comb_3|counting_down|second_counter\(7),
	datad => \comb_3|counting_down|second_counter\(6),
	combout => \comb_3|counting_down|Equal1~1_combout\);

-- Location: FF_X79_Y22_N27
\comb_3|counting_down|second_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|Add1~20_combout\,
	ena => \comb_3|counting_down|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|second_counter\(10));

-- Location: LCCOMB_X79_Y22_N0
\comb_3|counting_down|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~2_combout\ = (!\comb_3|counting_down|second_counter\(8) & (!\comb_3|counting_down|second_counter\(11) & (!\comb_3|counting_down|second_counter\(10) & !\comb_3|counting_down|second_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|second_counter\(8),
	datab => \comb_3|counting_down|second_counter\(11),
	datac => \comb_3|counting_down|second_counter\(10),
	datad => \comb_3|counting_down|second_counter\(9),
	combout => \comb_3|counting_down|Equal1~2_combout\);

-- Location: LCCOMB_X80_Y21_N10
\comb_3|counting_down|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~4_combout\ = (\comb_3|counting_down|Equal1~3_combout\ & (\comb_3|counting_down|Equal1~0_combout\ & (\comb_3|counting_down|Equal1~1_combout\ & \comb_3|counting_down|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~3_combout\,
	datab => \comb_3|counting_down|Equal1~0_combout\,
	datac => \comb_3|counting_down|Equal1~1_combout\,
	datad => \comb_3|counting_down|Equal1~2_combout\,
	combout => \comb_3|counting_down|Equal1~4_combout\);

-- Location: LCCOMB_X80_Y21_N30
\comb_3|counting_down|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|Equal1~8_combout\ = (\comb_3|counting_down|Equal1~7_combout\ & (\comb_3|counting_down|Equal1~5_combout\ & (\comb_3|counting_down|Equal1~6_combout\ & \comb_3|counting_down|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~7_combout\,
	datab => \comb_3|counting_down|Equal1~5_combout\,
	datac => \comb_3|counting_down|Equal1~6_combout\,
	datad => \comb_3|counting_down|Equal1~4_combout\,
	combout => \comb_3|counting_down|Equal1~8_combout\);

-- Location: LCCOMB_X84_Y21_N6
\comb_3|counting_down|countdown_val[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[0]~1_combout\ = (\comb_3|counting_down|Equal1~8_combout\ & (\comb_3|counting_down|Equal0~1_combout\ & ((!\comb_3|counting_down|countdown_val[0]~0_combout\) # (!\comb_3|counting_down|countdown_val\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|countdown_val\(3),
	datab => \comb_3|counting_down|countdown_val[0]~0_combout\,
	datac => \comb_3|counting_down|Equal1~8_combout\,
	datad => \comb_3|counting_down|Equal0~1_combout\,
	combout => \comb_3|counting_down|countdown_val[0]~1_combout\);

-- Location: LCCOMB_X84_Y21_N10
\comb_3|counting_down|countdown_val[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[0]~2_combout\ = \comb_3|counting_down|countdown_val\(0) $ (\comb_3|counting_down|countdown_val[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|countdown_val\(0),
	datad => \comb_3|counting_down|countdown_val[0]~1_combout\,
	combout => \comb_3|counting_down|countdown_val[0]~2_combout\);

-- Location: FF_X84_Y21_N11
\comb_3|counting_down|countdown_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(0));

-- Location: LCCOMB_X84_Y21_N12
\comb_3|counting_down|current_digit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit[0]~feeder_combout\ = \comb_3|counting_down|countdown_val\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|counting_down|countdown_val\(0),
	combout => \comb_3|counting_down|current_digit[0]~feeder_combout\);

-- Location: FF_X84_Y21_N13
\comb_3|counting_down|current_digit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(0));

-- Location: LCCOMB_X84_Y21_N0
\comb_3|counting_down|current_digit[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit[2]~feeder_combout\ = \comb_3|counting_down|countdown_val\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_3|counting_down|countdown_val\(2),
	combout => \comb_3|counting_down|current_digit[2]~feeder_combout\);

-- Location: FF_X84_Y21_N1
\comb_3|counting_down|current_digit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(2));

-- Location: LCCOMB_X80_Y21_N28
\comb_3|counting_down|countdown_val[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|countdown_val[3]~5_combout\ = (\comb_3|counting_down|countdown_val\(3)) # ((\comb_3|counting_down|Equal1~8_combout\ & (\comb_3|counting_down|countdown_val[0]~0_combout\ & \comb_3|counting_down|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|Equal1~8_combout\,
	datab => \comb_3|counting_down|countdown_val[0]~0_combout\,
	datac => \comb_3|counting_down|countdown_val\(3),
	datad => \comb_3|counting_down|Equal0~1_combout\,
	combout => \comb_3|counting_down|countdown_val[3]~5_combout\);

-- Location: FF_X80_Y21_N29
\comb_3|counting_down|countdown_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|countdown_val[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|countdown_val\(3));

-- Location: LCCOMB_X84_Y21_N22
\comb_3|counting_down|current_digit[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit[3]~1_combout\ = !\comb_3|counting_down|countdown_val\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|countdown_val\(3),
	combout => \comb_3|counting_down|current_digit[3]~1_combout\);

-- Location: FF_X84_Y21_N23
\comb_3|counting_down|current_digit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(3));

-- Location: LCCOMB_X84_Y21_N2
\comb_3|counting_down|current_digit[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|counting_down|current_digit[1]~0_combout\ = !\comb_3|counting_down|countdown_val\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|counting_down|countdown_val\(1),
	combout => \comb_3|counting_down|current_digit[1]~0_combout\);

-- Location: FF_X84_Y21_N3
\comb_3|counting_down|current_digit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \comb_3|counting_down|current_digit[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|counting_down|current_digit\(1));

-- Location: LCCOMB_X84_Y21_N24
\display_countdown|segments[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|segments[0]~0_combout\ = (!\comb_3|counting_down|current_digit\(3) & (!\comb_3|counting_down|current_digit\(1) & (\comb_3|counting_down|current_digit\(0) $ (\comb_3|counting_down|current_digit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(0),
	datab => \comb_3|counting_down|current_digit\(2),
	datac => \comb_3|counting_down|current_digit\(3),
	datad => \comb_3|counting_down|current_digit\(1),
	combout => \display_countdown|segments[0]~0_combout\);

-- Location: LCCOMB_X84_Y21_N30
\display_countdown|segments[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|segments[1]~1_combout\ = (\comb_3|counting_down|current_digit\(2) & (!\comb_3|counting_down|current_digit\(3) & (\comb_3|counting_down|current_digit\(0) $ (\comb_3|counting_down|current_digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(0),
	datab => \comb_3|counting_down|current_digit\(2),
	datac => \comb_3|counting_down|current_digit\(3),
	datad => \comb_3|counting_down|current_digit\(1),
	combout => \display_countdown|segments[1]~1_combout\);

-- Location: LCCOMB_X84_Y21_N20
\display_countdown|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|Decoder0~0_combout\ = (!\comb_3|counting_down|current_digit\(0) & (!\comb_3|counting_down|current_digit\(2) & (!\comb_3|counting_down|current_digit\(3) & \comb_3|counting_down|current_digit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(0),
	datab => \comb_3|counting_down|current_digit\(2),
	datac => \comb_3|counting_down|current_digit\(3),
	datad => \comb_3|counting_down|current_digit\(1),
	combout => \display_countdown|Decoder0~0_combout\);

-- Location: LCCOMB_X84_Y21_N26
\display_countdown|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr3~0_combout\ = (!\comb_3|counting_down|current_digit\(3) & ((\comb_3|counting_down|current_digit\(0) & (\comb_3|counting_down|current_digit\(2) $ (!\comb_3|counting_down|current_digit\(1)))) # 
-- (!\comb_3|counting_down|current_digit\(0) & (\comb_3|counting_down|current_digit\(2) & !\comb_3|counting_down|current_digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(0),
	datab => \comb_3|counting_down|current_digit\(2),
	datac => \comb_3|counting_down|current_digit\(3),
	datad => \comb_3|counting_down|current_digit\(1),
	combout => \display_countdown|WideOr3~0_combout\);

-- Location: LCCOMB_X84_Y21_N16
\display_countdown|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr2~0_combout\ = (\comb_3|counting_down|current_digit\(0)) # ((\comb_3|counting_down|current_digit\(1) & ((\comb_3|counting_down|current_digit\(3)))) # (!\comb_3|counting_down|current_digit\(1) & 
-- (\comb_3|counting_down|current_digit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(0),
	datab => \comb_3|counting_down|current_digit\(2),
	datac => \comb_3|counting_down|current_digit\(3),
	datad => \comb_3|counting_down|current_digit\(1),
	combout => \display_countdown|WideOr2~0_combout\);

-- Location: LCCOMB_X84_Y21_N14
\display_countdown|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr1~0_combout\ = (!\comb_3|counting_down|current_digit\(3) & ((\comb_3|counting_down|current_digit\(0) & ((\comb_3|counting_down|current_digit\(1)) # (!\comb_3|counting_down|current_digit\(2)))) # 
-- (!\comb_3|counting_down|current_digit\(0) & (!\comb_3|counting_down|current_digit\(2) & \comb_3|counting_down|current_digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(0),
	datab => \comb_3|counting_down|current_digit\(2),
	datac => \comb_3|counting_down|current_digit\(3),
	datad => \comb_3|counting_down|current_digit\(1),
	combout => \display_countdown|WideOr1~0_combout\);

-- Location: LCCOMB_X84_Y21_N4
\display_countdown|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_countdown|WideOr0~0_combout\ = (\comb_3|counting_down|current_digit\(3)) # ((\comb_3|counting_down|current_digit\(2) & ((!\comb_3|counting_down|current_digit\(1)) # (!\comb_3|counting_down|current_digit\(0)))) # 
-- (!\comb_3|counting_down|current_digit\(2) & ((\comb_3|counting_down|current_digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|counting_down|current_digit\(0),
	datab => \comb_3|counting_down|current_digit\(2),
	datac => \comb_3|counting_down|current_digit\(3),
	datad => \comb_3|counting_down|current_digit\(1),
	combout => \display_countdown|WideOr0~0_combout\);

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

ww_LEDR <= \LEDR~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

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
END structure;


