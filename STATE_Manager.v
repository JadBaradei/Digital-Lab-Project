module STATE_Manager(
	input clk,
	input clk_slow,
	input reset,
	input ir_input,
	input PW,
	output reg [17:0] LEDR,
	output reg [7:0] LEDG,
	input [8:0] SW,
	output reg [3:0] state,
	output [3:0] current_digit
	
);

localparam S0 = 4'b0000; // Initial State
localparam S1 = 4'b0001; // Yes I want to play
localparam S2 = 4'b0010; // Lock Coder
localparam S3 = 4'b0011; // Lock Breaker 
localparam S4 = 4'b0100; // invisibility_right_seg
localparam S5 = 4'b0101; // flexibility_right_seg
localparam S6 = 4'b0110; // camouflage_right_seg
localparam S7 = 4'b0111; // invisibility_left_seg
localparam S8 = 4'b1000; // flexibility_left_seg
localparam S9 = 4'b1001; // camouflage_left_seg
localparam S10 = 4'b1010; // Lock coder choose lock
localparam S11 = 4'b1011; // Lock breaker try to break (countdown)

localparam S13 = 4'b1101; // Lock coder wins
localparam S14 = 4'b1110; // Lock breaker wins
localparam S15 = 4'b1111; // play again?

reg picked_first_power;
reg picked_second_power;
wire countdown_finished;
reg [7:0] chosen_code_coder;
wire [31:0] ir_output;
reg [29:0] counter;


initial begin
    state = S0;
end

always@(posedge clk) begin
	case (state)
		S0 : begin
			LEDR[17:0] <= {18{1'b0}};
			LEDG[7:0] <= {8{1'b0}};
			picked_first_power <= 0;
			picked_second_power <= 0;
			chosen_code_coder <= 0;
			
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
			if (counter == 250000000) begin // Divide 50*10^6 by 50000000 to get 0.1 Hz => 10 seconds
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
			if (counter == 250000000) begin // Divide 50*10^6 by 50000000 to get 0.1 Hz => 10 seconds
				counter <= 0;
				if(!SW[4] && SW[3]) begin
					picked_second_power <= 1;
					state <= S7;
				end
				else if(SW[4] && !SW[3]) begin
					picked_second_power <= 1;
					state <= S8;
				end
				else if(SW[4] && SW[3]) begin
					picked_second_power <= 1;
					state <= S9;
				end
			end
			else begin
				counter <= counter + 1;
			end
		end
		S4 : begin //Invisibility_right_seg
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S10;
			else
				state <= S3;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S5 : begin //Flexibility_right_seg
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S10;
			else
				state <= S3;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S6 : begin //Camouflage_right_seg
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S10;
			else
				state <= S3;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S7 : begin //Invisibility_left_seg
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S10;
			else
				state <= S2;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S8 : begin //Flexibility_left_seg
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S10;
			else
				state <= S2;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S9 : begin //Camouflage_left_seg
			if (counter == 250000000)begin
			counter <= 0;
			if(picked_first_power && picked_second_power)
				state <= S10;
			else
				state <= S2;
			end
			else begin
				counter <= counter + 1;
			end
		end
		S10 : begin // Lock coder choose password
			if (SW[5]) begin
			//Read IR if 0 goto breaker wins else S11
				if (ir_output[23:16] == 0)
					state <= S14;
				else begin
					chosen_code_coder <= ir_output[23:16];
					state <= S11;
				end
			end
		end
		S11 : begin 
			if(SW[6]) begin 
				if(chosen_code_coder != ir_output[23:16]) begin 
					state <= S13;
				end else if(chosen_code_coder == ir_output[23:16]) begin 
					state <= S14;
				end
			end
			if(countdown_finished == 1) begin 
				state <= S13;
			end 
		end
		S13 : begin 
			//Lock Coder wins 
			// Turn on all Read LEDS
			LEDR[17:0] <= {18{1'b1}};
			if (counter == 250000000)begin
				counter <= 0;
				state <= S15;
			end else 
				counter <= counter + 1; 
		end 
		S14: begin
			// Lock Breaker wins 
			// Turn on all green LEDS 
			LEDG[7:0] <= {8{1'b1}};
			if (counter == 250000000)begin
				counter <= 0;
				state <= S15;
			end else 
				counter <= counter + 1;
			
		end
		S15 : begin 
				if(PW == 1'b0) 
					state <= S0;
		end 
	endcase
end



// Call IR reader
IR_RECEIVER read_ir(
	.iCLK(clk),         //clk 50MHz
	.iRST_n(reset),       //reset					
	.iIRDA(ir_input),        //IR code input
	.oDATA(ir_output) 		  //Output data
);

// Countdown on SEG
COUNTDOWN_SEG counting_down(
	.clk(clk),        // 50 MHz clock
   .state(state),      // State input
   .flag(countdown_finished),       // Flag set to 1 when countdown reaches 0
   .current_digit(current_digit) 
);


endmodule