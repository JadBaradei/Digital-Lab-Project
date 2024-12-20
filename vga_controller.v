module vga_controller(iRST_n,
                      iVGA_CLK,
							 
							 color_r1,
							 color_g1,
							 color_b1,
                      oBLANK_n,
                      oHS,
                      oVS,
                      b_data,
                      g_data,
                      r_data);
input iRST_n;
input iVGA_CLK;
input [7:0] color_r1;
input [7:0] color_g1;
input [7:0] color_b1;

output reg oBLANK_n;
output reg oHS;
output reg oVS;
output reg [7:0] b_data;
output reg [7:0] g_data;  
output reg [7:0] r_data;                        

///////// ////            
         
reg [18:0] ADDR;
reg [23:0] bgr_data;
wire cBLANK_n,cHS,cVS,rst;

///////// //// 

assign rst = ~iRST_n;

video_sync_generator LTM_ins (.vga_clk(iVGA_CLK),
                              .reset(rst),
                              .blank_n(cBLANK_n),
                              .HS(cHS),
                              .VS(cVS));

////Addresss generator
always@(posedge iVGA_CLK,negedge iRST_n)
begin
  if (!iRST_n)
     ADDR<=19'd0;
  else if (cHS==1'b0 && cVS==1'b0) begin
     ADDR<=19'd0;
  end
  else if (cBLANK_n==1'b1)
     ADDR<=ADDR+1;
end
//////////////////////////

wire first_part;
wire second_part;
wire third_part;
assign first_part = ADDR < (19'd102400);
assign second_part = (ADDR < (19'd204800)) && (ADDR > (19'd102400));
assign third_part = ADDR > (19'd204800);

always @(ADDR) begin
	if (first_part) begin
	b_data <= color_b1;
	g_data <= color_g1;
	r_data <= color_r1;
	end else if (second_part) begin
	b_data <= color_b1;
	g_data <= color_g1;
	r_data <= color_r1;
	end else if (third_part) begin
	b_data <= color_b1;
	g_data <= color_g1;
	r_data <= color_r1;
	end else begin
	b_data <= 8'b0;
	g_data <= 8'b0;
	r_data <= 8'b0;
	end
end





always@(negedge iVGA_CLK)
begin
  oHS<=cHS;
  oVS<=cVS;
  oBLANK_n<=cBLANK_n;
end

endmodule
 	


