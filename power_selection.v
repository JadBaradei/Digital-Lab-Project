
module power_selection
	(
		////////////////////	8 Binary bits Input	 	////////////////////	 
		state,							
		////////////////////	HEX 7-SEG Output	 	////////////////////	 
		oHEX_D1,
		oHEX_D2
	);

//////////////////////// State  Input	 ////////////////////////
input  [3:0]   state;				
////////////////////	HEX 7-SEG Output	 	////////////////////	 
output reg [6:0]	  oHEX_D1;   
output reg [6:0]	  oHEX_D2;   

//input clk;
//=======================================================
//  REG/WIRE declarations
//=======================================================
reg player1_entered;

//=======================================================
//  Structural coding
//=======================================================

initial begin
	player1_entered = 0;
end

always @(state) begin
			if(!player1_entered)begin
				case(state)
				4'b0100 : begin //invisibility
					oHEX_D1 <= 7'b1111001;
					player1_entered <= 1;
				end
				4'b0101 : begin //flexibility
					oHEX_D1 <= 7'b0100100;
					player1_entered <= 1;
				end
				4'b0110 : begin //camouflage
					oHEX_D1 <= 7'b0110000;
					player1_entered <= 1;
				end
				default: begin
					oHEX_D2 <= 7'b1000000; // '0'
					end
				endcase
			end else begin
				case(state)
				4'b0100 : begin //invisibility
					oHEX_D2 <= 7'b1111001;
				end
				4'b0101 : begin //flexibility
					oHEX_D2 <= 7'b0100100;
				end
				4'b0110 : begin //camouflage
					oHEX_D2 <= 7'b0110000;
				end
				default: begin
					oHEX_D1 <= 7'b1000000; // '0'
					end
				endcase
			end
		end

endmodule
