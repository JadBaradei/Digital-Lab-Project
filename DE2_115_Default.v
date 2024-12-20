module DE2_115_Default(

	//////// CLOCK //////////
	CLOCK_50,
	
	/////// COUNTER /////////
	state,
	
	//////// VGA //////////
	VGA_B,
	VGA_BLANK_N,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_VS,
);

//=======================================================
//  PARAMETER declarations
//=======================================================

//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input		          		CLOCK_50;

/////////// COLORS //////////
input 			[3:0]			state;

//////////// VGA //////////
output		   [7:0]		VGA_B;
output		        		VGA_BLANK_N;
output		        		VGA_CLK;
output		   [7:0]		VGA_G;
output	          		VGA_HS;
output	      [7:0]		VGA_R;
output	          		VGA_VS;


///////////////////////////////////////////////////////////////////
//=============================================================================
// REG/WIRE declarations
//=============================================================================

wire		   VGA_CTRL_CLK;
wire		   DLY_RST;

wire [7:0] r1;
wire [7:0] g1;
wire [7:0] b1;

//=============================================================================
// Structural coding
//=============================================================================

//	Reset Delay Timer
Reset_Delay			r0	(	.iCLK(CLOCK_50),.oRESET(DLY_RST)	);
VGA_Audio_PLL 		p1	(	.areset(~DLY_RST),.inclk0(CLOCK_50),.c0(VGA_CTRL_CLK));

assign VGA_CLK = VGA_CTRL_CLK;

TRANSFORM_COLOR u1(
	.state(state),
	.r(r1),
	.g(g1),
	.b(b1)
);

vga_controller u4(.iRST_n(DLY_RST),
                      .iVGA_CLK(VGA_CTRL_CLK),
							 .color_r1(r1),
							 .color_g1(g1),
							 .color_b1(b1),
                      .oBLANK_n(VGA_BLANK_N),
                      .oHS(VGA_HS),
                      .oVS(VGA_VS),
                      .b_data(VGA_B),
                      .g_data(VGA_G),
                      .r_data(VGA_R));
							 
					



endmodule
