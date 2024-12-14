module STATE_Manager(
	input clk,
	input clk_slow,
	input [8:0] SW,
	output reg [3:0] state,
	output reg LEDR
);

localparam S0 = 4'b0000; // Initial State
localparam S1 = 4'b0001; // Yes I want to play
localparam S2 = 4'b0010; // Lock Coder 
localparam S3 = 4'b0011; // Lock Breaker 
localparam S4 = 4'b0100; // invisibility  
localparam S5 = 4'b0101; // Flexibility 
localparam S6 = 4'b0110; // camouflage 
localparam S7 = 4'b0111; // set a lock

reg picked_first_power;
reg picked_second_power;
reg [29:0] counter;

initial begin
    state = S0;
end

always@(posedge clk) begin
	case (state)
		S0 : begin
			LEDR <= 0;
			picked_first_power <= 0;
			picked_second_power <= 0;
			if(SW[0])
				state <= S1;
			end	
		S1 : begin 
			if(SW[1])
				state <= S2;
			else if(SW[2])
				state <= S3;
			end
		S2 : begin
			if (counter == 500000000) begin // Divide 50*10^6 by 50000000 to get 0.1 Hz => 10 seconds
				counter <= 0;
				if(!SW[4] && SW[3]) begin
					picked_first_power <= 1;
					state <= S4;
				end
				else if(SW[4] && !SW[3]) begin 
					picked_first_power <= 1;
					state <= S5;
				end
				else if(SW[4] && SW[3]) begin 
					picked_first_power <= 1;
					state <= S6;
				end
			end
			else begin
				counter <= counter + 1;
			end
		end
		S3 : begin 
			if (counter == 500000000) begin // Divide 50*10^6 by 50000000 to get 0.1 Hz => 10 seconds
				counter <= 0;
				if(!SW[4] && SW[3]) begin
					picked_second_power <= 1;
					state <= S4;
				end
				else if(SW[4] && !SW[3]) begin
					picked_second_power <= 1;
					state <= S5;
				end
				else if(SW[4] && SW[3]) begin
					picked_second_power <= 1;
					state <= S6;
				end
			end
			else begin
				counter <= counter + 1;
			end
		end
		S4 : begin //Invisibility
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S7;
			else if(picked_first_power && !picked_second_power)
				state <= S3;
			else if(!picked_first_power && picked_second_power)
				state <= S2;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S5 : begin //Flexibility
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S7;
			else if(picked_first_power && !picked_second_power)
				state <= S3;
			else if(!picked_first_power && picked_second_power)
				state <= S2;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S6 : begin //Camouflage
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S7;
			else if(picked_first_power && !picked_second_power)
				state <= S3;
			else if(!picked_first_power && picked_second_power)
				state <= S2;
			end
			else begin
				counter <= counter + 1;
			end
		end
	endcase
	
end

endmodule