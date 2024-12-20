module TOP_Module(
	input clk_50Mhz,
	input reset,
	input ir_input,
	input [8:0] SW,
	input PW,
	output [17:0] LEDR,
	output [7:0] LEDG,
	output [7:0] lcd_data, // LCD data output
	output lcd_rw, // 1 bit for read write
	output lcd_en, // 1 bit for enable
	output lcd_rs, // 1 bit for command
	output [6:0]	HEX0,
	output [6:0]	HEX1,
	output [6:0] 	HEX2,
	
	//VGA
	output VGA_CLK,
	output VGA_BLANK_N,
	output VGA_HS,
	output VGA_VS,
	output [7:0] VGA_R,
	output [7:0] VGA_G,
	output [7:0] VGA_B
	
);

wire clk_4hz;
wire clk_slow;
wire [3:0] state;
wire [3:0] current_digit;


clock_devider clk_div (
    .clk_in(clk_50Mhz),
    .clk_out(clk_4hz),
	 .clk_out_slow(clk_slow)
);

STATE_Manager(
	.clk(clk_50Mhz),
	.clk_slow(clk_slow),
	.reset(reset),
	.LEDR(LEDR),
	.LEDG(LEDG),
	.ir_input(ir_input),
	.SW(SW),
	.state(state),
	.PW(PW),
	.current_digit(current_digit)

);

LCD_module ready_to_play(
	.state(state),
	.clk(clk_50Mhz),
	.rst_n(clk_4hz),
	.LCD_DATA(lcd_data),
   .LCD_RW(lcd_rw),
   .LCD_EN(lcd_en),
   .LCD_RS(lcd_rs)
);

power_selection select_your_power (
	.clk(clk_50Mhz),
	.state(state),
   .oHEX_D1(HEX0),
	.oHEX_D2(HEX1)
);

DISPLAY_SEG display_countdown(
	.clk(clk_50Mhz),
	.digit(current_digit),
	.segments(HEX2)
);

DE2_115_Default vga (
	.CLOCK_50(clk_50Mhz),
	.state(state),
	.VGA_R(VGA_R),
	.VGA_G(VGA_G),
	.VGA_B(VGA_B),
	.VGA_BLANK_N(VGA_BLANK_N),
	.VGA_CLK(VGA_CLK),
	.VGA_HS(VGA_HS),
	.VGA_VS(VGA_VS)
);




endmodule