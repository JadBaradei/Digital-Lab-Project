module STATE_Manager(

);

reg [2:0] state;

localparam S0 = 3'b000; // Initial State
localparam S1 = 3'b001; // Yes I want to play
localparam S2 = 3'b010;
localparam S3 = 3'b011;
localparam S4 = 3'b100;


initial begin
    state = S0;
end


endmodule