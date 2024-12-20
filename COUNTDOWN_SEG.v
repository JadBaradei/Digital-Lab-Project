module COUNTDOWN_SEG (
    input        clk,        // 50 MHz clock
    input  [3:0] state,      // State input
    output reg   flag,       // Flag set to 1 when countdown reaches 0
    output reg [3:0] current_digit // Current countdown value
);

    // Parameter for 1 second count at 50MHz: 50,000,000 cycles per second
    localparam ONE_SEC_COUNT = 50_000_000 - 1;

    // Registers to hold the 1-second timer and the current countdown value
    reg [25:0] second_counter = 0;  // Enough bits to count to 50 million
    reg [3:0]  countdown_val = 10; // Start from 10

    always @(posedge clk) begin
			flag <= 0;
        
		  
		  
		  
		  
		  
		  if (state == 4'b1011) begin
				
            // Counting active only when state == 4'b1011
            if (second_counter == ONE_SEC_COUNT) begin
                second_counter <= 0; // Reset second counter
					 
                if (countdown_val > 0) begin
                    countdown_val <= countdown_val - 1;
                end

                // If we just decremented to 0, set the flag
                if (countdown_val == 0) begin
                    flag <= 1;
                end
            end else begin
                second_counter <= second_counter + 1;
            end
				current_digit <= countdown_val;
        end else begin
            // Not in the correct state, do not advance
           
			  second_counter <= 0;
            countdown_val <= 10;
            flag <= flag;
				current_digit <= 0;
				
        end
			
        // Update current_digit to reflect the current countdown value
        
		   
    end
	 

	

endmodule
