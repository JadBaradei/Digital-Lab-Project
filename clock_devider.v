module clock_devider(
    input wire clk_in,
    output reg clk_out,
	 output reg clk_out_slow
);

reg [29:0] counter;
reg [29:0] counter1;

always @(posedge clk_in) begin
    if (counter == 12500000) begin // Divide 50*10^6 by 12500000 to get 4 Hz
        counter <= 0;
        clk_out <= ~clk_out;
    end else begin
        counter <= counter + 1;
    end
	 if (counter1 == 500000000) begin // Divide 50*10^6 by 50000000 to get 0.1 Hz => 10 seconds
        counter1 <= 0;
        clk_out_slow <= ~clk_out_slow;
    end else begin
        counter1 <= counter1 + 1;
    end
end

endmodule