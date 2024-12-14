module DE2_115_IR
	(
		//////// CLOCK //////////
		CLOCK_50,
	

		//////// LED //////////
		LEDG,

		//////// KEY //////////
		KEY,

		//////// SEG7 //////////
		HEX0,
		HEX1,
		HEX2,
		HEX3,

		//////// IR Receiver //////////
		IRDA_RXD,

	);

//===========================================================================
// PARAMETER declarations
//===========================================================================


//===========================================================================
// PORT declarations
//===========================================================================
//////////// CLOCK //////////
input		          		CLOCK_50;

//////////// LED //////////
output		  [8:0]		LEDG;

//////////// KEY //////////
input		     [3:0]		KEY;

//////////// SEG7 //////////
output		  [6:0]		HEX0;
output		  [6:0]		HEX1;
output		  [6:0]		HEX2;
output		  [6:0]		HEX3;

//////////// IR Receiver //////////
input		          		IRDA_RXD;


///////////////////////////////////////////////////////////////////
//=============================================================================
// REG/WIRE declarations
//=============================================================================

wire    data_ready;        //IR data_ready flag
wire    [31:0] hex_data;   //seg data input
wire	  [7:0] digit0;
wire	  [7:0] digit1;
wire	  [7:0] digit2;
wire	  [7:0] digit3;

IR_RECEIVE u1(
					///clk 50MHz////
					.iCLK(CLOCK_50), 
					//reset          
					.iRST_n(KEY[0]),        
					//IRDA code input
					.iIRDA(IRDA_RXD), 
					//data ready      					
					.oDATA_READY(data_ready),
					//decoded data 32bit
					.oDATA(hex_data)        
					);
					
SHIFT_HEX u2(
					.current_digit(hex_data[23:16]),
					.data_is_ready(data_ready),
					.reset(KEY[0]),
					.digit0(digit0),
					.digit1(digit1),
					.digit2(digit2),
					.digit3(digit3)
);

PATTERN_DETECTOR u7(
					.digit0(digit0),
					.digit1(digit1),
					.digit2(digit2),
					.digit3(digit3),
					.green_led(LEDG[0])
);
					

SEG_HEX u3(//display the HEX on HEX0                                 
           .iDIG(digit0),
           .oHEX_D(HEX0)
           );
			  
SEG_HEX u4(//display the HEX on HEX1                                 
           .iDIG(digit1),
           .oHEX_D(HEX1)
           );
			  
SEG_HEX u5(//display the HEX on HEX2                                 
           .iDIG(digit2),
           .oHEX_D(HEX2)
           );

SEG_HEX u6(//display the HEX on HEX3                                 
           .iDIG(digit3),
           .oHEX_D(HEX3)
           );
      

endmodule