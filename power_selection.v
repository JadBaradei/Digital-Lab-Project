
module power_selection
	(
		clk,
		////////////////////	8 Binary bits Input	 	////////////////////	 
		state,							
		////////////////////	HEX 7-SEG Output	 	////////////////////	 
		oHEX_D2,
		oHEX_D1
	);

//////////////////////// State  Input	 ////////////////////////
input clk;
input  [3:0]   state;				
////////////////////	HEX 7-SEG Output	 	////////////////////	 
output reg [6:0]	  oHEX_D1;   
output reg [6:0]	  oHEX_D2;   

//input clk;
//=======================================================
//  REG/WIRE declarations
//=======================================================

reg [6:0] D1;
reg [6:0] D2;

//=======================================================
//  Structural coding
//=======================================================

always @(posedge clk) begin
    case (state)
        4'b0000: begin
            oHEX_D1 <= 7'b1000000; // '0'
            oHEX_D2 <= 7'b1000000; // '0'
        end
        4'b0100: begin // invisibility_right
            oHEX_D1 <= 7'b1111001; // '1'
            oHEX_D2 <= oHEX_D2;    // Keep same D2
        end
        4'b0101: begin // flexibility_right
            oHEX_D1 <= 7'b0100100; // '2'
            oHEX_D2 <= oHEX_D2;    // Keep same D2
        end
        4'b0110: begin // camouflage_right
            oHEX_D1 <= 7'b0110000; // '3'
            oHEX_D2 <= oHEX_D2;    // Keep same D2
        end
        4'b0111: begin // invisibility_left
            oHEX_D1 <= oHEX_D1;    // Keep same D1
            oHEX_D2 <= 7'b1111001; // '1'
        end
        4'b1000: begin // flexibility_left
            oHEX_D1 <= oHEX_D1;    // Keep same D1
            oHEX_D2 <= 7'b0100100; // '2'
        end
        4'b1001: begin // camouflage_left
            oHEX_D1 <= oHEX_D1;    // Keep same D1
            oHEX_D2 <= 7'b0110000; // '3'
        end
        default: begin
            // Unknown state: do not change outputs
            oHEX_D1 <= oHEX_D1;
            oHEX_D2 <= oHEX_D2;
        end
    endcase
end

		
endmodule
