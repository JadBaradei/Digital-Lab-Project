module TRANSFORM_COLOR(
	input [3:0] state,
	output reg [7:0] r,
	output reg [7:0] g,
	output reg [7:0] b
);

always @(*) begin
	case(state)
		4'b1101: begin
			r <= 8'b11111111; //Red 
			g <= 8'b0;
			b <= 8'b0;
		end
      4'b1110: begin
			r <= 8'b0;
			g <= 8'b11111111; // Green 
			b <= 8'b0;
		end
      
      default: begin
			r <= 8'b0;
			g <= 8'b0;
			b <= 8'b0;
		end
	endcase
end

endmodule