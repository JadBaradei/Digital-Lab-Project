module	LCD_module (
	//	Host Side
	clk,rst_n,
	state,
	//	LCD Side
	LCD_DATA,LCD_RW,LCD_EN,LCD_RS
);

//	Host Side
input			clk,rst_n;
input [3:0]	state;

//	LCD Side
output	[7:0]	LCD_DATA;
output			LCD_RW,LCD_EN,LCD_RS;

reg state_valid_ready;
reg state_valid_group;
reg state_valid_coder;
reg state_valid_breaker;
reg state_valid_invisible;
reg state_valid_flexible;
reg state_valid_camouflage;
reg state_valid_test;


//	Internal Wires/Registers
reg	[5:0]	LUT_INDEX;
reg	[8:0]	LUT_DATA;
reg	[5:0]	mLCD_ST;
reg	[17:0]	mDLY;
reg			mLCD_Start;
reg	[7:0]	mLCD_DATA;
reg			mLCD_RS;
wire		mLCD_Done;

parameter	LCD_INTIAL	=	0;
parameter	LCD_LINE1	=	5;
parameter	LCD_CH_LINE	=	LCD_LINE1+16;
parameter	LCD_LINE2	=	LCD_LINE1+16+1;
parameter	LUT_SIZE	=	LCD_LINE1+32+1;

always@(posedge clk) begin

	case (state)
		4'b0000 : begin
			state_valid_ready <= 1;
			state_valid_group <= 0;
			state_valid_coder <= 0;
			state_valid_breaker <= 0;
			state_valid_invisible <= 0;
			state_valid_flexible <= 0;
			state_valid_camouflage <= 0;
			state_valid_test <= 0;
		end
		4'b0001 : begin
		   state_valid_ready <= 0;
			state_valid_group <= 1;
			state_valid_coder <= 0;
			state_valid_breaker <= 0;
			state_valid_invisible <= 0;
			state_valid_flexible <= 0;
			state_valid_camouflage <= 0;
			state_valid_test <= 0;
		end
		4'b0010 : begin 
			state_valid_ready <= 0;
			state_valid_group <= 0;
			state_valid_coder <= 1;
			state_valid_breaker <= 0;
			state_valid_invisible <= 0;
			state_valid_flexible <= 0;
			state_valid_camouflage <= 0;
			state_valid_test <= 0;
		end 
		4'b0011 : begin 
			state_valid_ready <= 0;
			state_valid_group <= 0;
			state_valid_coder <= 0;
			state_valid_breaker <= 1;
			state_valid_invisible <= 0;
			state_valid_flexible <= 0;
			state_valid_camouflage <= 0;
			state_valid_test <= 0;
		end 
		
		4'b0100 : begin 
			state_valid_ready <= 0;
			state_valid_group <= 0;
			state_valid_coder <= 0;
			state_valid_breaker <= 0;
			state_valid_invisible <= 1;
			state_valid_flexible <= 0;
			state_valid_camouflage <= 0;
			state_valid_test <= 0;
		end 
		4'b0101 : begin 
			state_valid_ready <= 0;
			state_valid_group <= 0;
			state_valid_coder <= 0;
			state_valid_breaker <= 0;
			state_valid_invisible <= 0;
			state_valid_flexible <= 1;
			state_valid_camouflage <= 0;
			state_valid_test <= 0;
		end
		4'b0110 : begin 
			state_valid_ready <= 0;
			state_valid_group <= 0;
			state_valid_coder <= 0;
			state_valid_breaker <= 0;
			state_valid_invisible <= 0;
			state_valid_flexible <= 0;
			state_valid_camouflage <= 1;
			state_valid_test <= 0;
		end
		4'b0111 : begin
			state_valid_ready <= 0;
			state_valid_group <= 0;
			state_valid_coder <= 0;
			state_valid_breaker <= 0;
			state_valid_invisible <= 0;
			state_valid_flexible <= 0;
			state_valid_camouflage <= 0;
			state_valid_test <= 1;
			end
	endcase
end

always@(posedge clk)
begin
	if(!rst_n)
	begin
		LUT_INDEX	<=	0;
		mLCD_ST		<=	0;
		mDLY		<=	0;
		mLCD_Start	<=	0;
		mLCD_DATA	<=	0;
		mLCD_RS		<=	0;
	end
	else
	begin
		if(LUT_INDEX<LUT_SIZE)
		begin
			case(mLCD_ST)
			0:	begin
					mLCD_DATA	<=	LUT_DATA[7:0];
					mLCD_RS		<=	LUT_DATA[8];
					mLCD_Start	<=	1;
					mLCD_ST		<=	1;
				end
			1:	begin
					if(mLCD_Done)
					begin
						mLCD_Start	<=	0;
						mLCD_ST		<=	2;					
					end
				end
			2:	begin
					if(mDLY<18'h3FFFE)
					mDLY	<=	mDLY+1;
					else
					begin
						mDLY	<=	0;
						mLCD_ST	<=	3;
					end
				end
			3:	begin
					LUT_INDEX	<=	LUT_INDEX+1;
					mLCD_ST	<=	0;
				end
			endcase
		end
	end
end


always@(state)
begin
	if(state_valid_ready) begin
	
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h120;
	LCD_LINE1+1:	 LUT_DATA <=  9'h152;//R
	LCD_LINE1+2:	 LUT_DATA <=  9'h165;//e
	LCD_LINE1+3:	 LUT_DATA <=  9'h161;//a
	LCD_LINE1+4:	 LUT_DATA <=  9'h164;//d
	LCD_LINE1+5:	 LUT_DATA <=  9'h179;//y
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h154;//T
   LCD_LINE1+8:    LUT_DATA <=  9'h16F;//o
   LCD_LINE1+9:    LUT_DATA <=  9'h120;
   LCD_LINE1+10:   LUT_DATA <=  9'h150;//P
   LCD_LINE1+11:   LUT_DATA <=  9'h16C;//l
	LCD_LINE1+12:   LUT_DATA <=  9'h161;//a
   LCD_LINE1+13:   LUT_DATA <=  9'h179;//y
   LCD_LINE1+14:   LUT_DATA <=  9'h13F;//?
   LCD_LINE1+15:   LUT_DATA <=  9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h120;
	LCD_LINE2+1:	LUT_DATA	<=	9'h120;
	LCD_LINE2+2:	LUT_DATA	<=	9'h120;
	LCD_LINE2+3:	LUT_DATA	<=	9'h120;
	LCD_LINE2+4:	LUT_DATA	<=	9'h120;
	LCD_LINE2+5:	LUT_DATA	<=	9'h120;
	LCD_LINE2+6:	LUT_DATA	<=	9'h120;
	LCD_LINE2+7:	LUT_DATA	<=	9'h120;
	LCD_LINE2+8:	LUT_DATA	<=	9'h120;
	LCD_LINE2+9:	LUT_DATA	<=	9'h120;
	LCD_LINE2+10:	LUT_DATA	<=	9'h120;
	LCD_LINE2+11:	LUT_DATA	<=	9'h120;
	LCD_LINE2+12:	LUT_DATA	<=	9'h120;
	LCD_LINE2+13:	LUT_DATA	<=	9'h120;
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;
	LCD_LINE2+15:	LUT_DATA	<=	9'h120;
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end
	
	
	if (state_valid_group) begin
	case (LUT_INDEX)
		//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h14C;//L
	LCD_LINE1+1:	 LUT_DATA <=  9'h16F;//o
	LCD_LINE1+2:	 LUT_DATA <=  9'h163;//c
	LCD_LINE1+3:	 LUT_DATA <=  9'h16B;//k
	LCD_LINE1+4:	 LUT_DATA <=  9'h120;
	LCD_LINE1+5:	 LUT_DATA <=  9'h120;
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h14F;//O
   LCD_LINE1+8:    LUT_DATA <=  9'h152;//R
   LCD_LINE1+9:    LUT_DATA <=  9'h120;//
   LCD_LINE1+10:   LUT_DATA <=  9'h120;//
   LCD_LINE1+11:   LUT_DATA <=  9'h120;//
	LCD_LINE1+12:   LUT_DATA <=  9'h14C;//L
   LCD_LINE1+13:   LUT_DATA <=  9'h16F;//o
   LCD_LINE1+14:   LUT_DATA <=  9'h163;//c
   LCD_LINE1+15:   LUT_DATA <=  9'h16B;//k
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h143;//C
	LCD_LINE2+1:	LUT_DATA	<=	9'h16F;//o
	LCD_LINE2+2:	LUT_DATA	<=	9'h164;//d
	LCD_LINE2+3:	LUT_DATA	<=	9'h165;//e
	LCD_LINE2+4:	LUT_DATA	<=	9'h172;//r
	LCD_LINE2+5:	LUT_DATA	<=	9'h120;
	LCD_LINE2+6:	LUT_DATA	<=	9'h120;
	LCD_LINE2+7:	LUT_DATA	<=	9'h120;
	LCD_LINE2+8:	LUT_DATA	<=	9'h120;
	LCD_LINE2+9:	LUT_DATA	<=	9'h142;//B
	LCD_LINE2+10:	LUT_DATA	<=	9'h172;//r
	LCD_LINE2+11:	LUT_DATA	<=	9'h165;//e
	LCD_LINE2+12:	LUT_DATA	<=	9'h161;//a
	LCD_LINE2+13:	LUT_DATA	<=	9'h16B;//k
	LCD_LINE2+14:	LUT_DATA	<=	9'h165;//e
	LCD_LINE2+15:	LUT_DATA	<=	9'h172;//r
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end
	
	
	if (state_valid_coder) begin
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h120;
	LCD_LINE1+1:	 LUT_DATA <=  9'h120;
	LCD_LINE1+2:	 LUT_DATA <=  9'h14C;//L
	LCD_LINE1+3:	 LUT_DATA <=  9'h16F;//o
	LCD_LINE1+4:	 LUT_DATA <=  9'h163;//c
	LCD_LINE1+5:	 LUT_DATA <=  9'h16B;//k
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h120;
   LCD_LINE1+8:    LUT_DATA <=  9'h120;
   LCD_LINE1+9:    LUT_DATA <=  9'h143;//C
   LCD_LINE1+10:   LUT_DATA <=  9'h16F;//o
   LCD_LINE1+11:   LUT_DATA <=  9'h164;//d
	LCD_LINE1+12:   LUT_DATA <=  9'h165;//e
   LCD_LINE1+13:   LUT_DATA <=  9'h172;//r
   LCD_LINE1+14:   LUT_DATA <=  9'h120;
   LCD_LINE1+15:   LUT_DATA <=  9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+1:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+2:	LUT_DATA	<=	9'h143;//C
	LCD_LINE2+3:	LUT_DATA	<=	9'h148;//H
	LCD_LINE2+4:	LUT_DATA	<=	9'h14F;//O
	LCD_LINE2+5:	LUT_DATA	<=	9'h14F;//O
	LCD_LINE2+6:	LUT_DATA	<=	9'h153;//S
	LCD_LINE2+7:	LUT_DATA	<=	9'h145;//E
	LCD_LINE2+8:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+9:	LUT_DATA	<=	9'h150;//P
	LCD_LINE2+10:	LUT_DATA	<=	9'h14F;//O
	LCD_LINE2+11:	LUT_DATA	<=	9'h157;//W
	LCD_LINE2+12:	LUT_DATA	<=	9'h145;//E
	LCD_LINE2+13:	LUT_DATA	<=	9'h152;//R
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+15:	LUT_DATA	<=	9'h120;//
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end
	
	
	if (state_valid_breaker) begin
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h120;
	LCD_LINE1+1:	 LUT_DATA <=  9'h120;
	LCD_LINE1+2:	 LUT_DATA <=  9'h14C;//L
	LCD_LINE1+3:	 LUT_DATA <=  9'h16F;//o
	LCD_LINE1+4:	 LUT_DATA <=  9'h163;//c
	LCD_LINE1+5:	 LUT_DATA <=  9'h16B;//k
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h120;
   LCD_LINE1+8:    LUT_DATA <=  9'h142;//B
   LCD_LINE1+9:    LUT_DATA <=  9'h172;//r
   LCD_LINE1+10:   LUT_DATA <=  9'h165;//e
   LCD_LINE1+11:   LUT_DATA <=  9'h161;//a
	LCD_LINE1+12:   LUT_DATA <=  9'h16B;//k
   LCD_LINE1+13:   LUT_DATA <=  9'h165;//e
   LCD_LINE1+14:   LUT_DATA <=  9'h172;//r
   LCD_LINE1+15:   LUT_DATA <=  9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+1:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+2:	LUT_DATA	<=	9'h143;//C
	LCD_LINE2+3:	LUT_DATA	<=	9'h148;//H
	LCD_LINE2+4:	LUT_DATA	<=	9'h14F;//O
	LCD_LINE2+5:	LUT_DATA	<=	9'h14F;//O
	LCD_LINE2+6:	LUT_DATA	<=	9'h153;//S
	LCD_LINE2+7:	LUT_DATA	<=	9'h145;//E
	LCD_LINE2+8:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+9:	LUT_DATA	<=	9'h150;//P
	LCD_LINE2+10:	LUT_DATA	<=	9'h14F;//O
	LCD_LINE2+11:	LUT_DATA	<=	9'h157;//W
	LCD_LINE2+12:	LUT_DATA	<=	9'h145;//E
	LCD_LINE2+13:	LUT_DATA	<=	9'h152;//R
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+15:	LUT_DATA	<=	9'h120;//
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end


	if (state_valid_invisible) begin
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h120;
	LCD_LINE1+1:	 LUT_DATA <=  9'h120;
	LCD_LINE1+2:	 LUT_DATA <=  9'h156;//
	LCD_LINE1+3:	 LUT_DATA <=  9'h150;//
	LCD_LINE1+4:	 LUT_DATA <=  9'h150;//
	LCD_LINE1+5:	 LUT_DATA <=  9'h150;//
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h120;
   LCD_LINE1+8:    LUT_DATA <=  9'h120;
   LCD_LINE1+9:    LUT_DATA <=  9'h120;//
   LCD_LINE1+10:   LUT_DATA <=  9'h120;//
   LCD_LINE1+11:   LUT_DATA <=  9'h150;//
	LCD_LINE1+12:   LUT_DATA <=  9'h120;//
   LCD_LINE1+13:   LUT_DATA <=  9'h120;//
   LCD_LINE1+14:   LUT_DATA <=  9'h120;
   LCD_LINE1+15:   LUT_DATA <=  9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+1:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+2:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+3:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+4:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+5:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+6:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+7:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+8:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+9:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+10:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+11:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+12:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+13:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+15:	LUT_DATA	<=	9'h120;//
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end
	
	if (state_valid_flexible) begin
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h120;
	LCD_LINE1+1:	 LUT_DATA <=  9'h120;
	LCD_LINE1+2:	 LUT_DATA <=  9'h14F;//
	LCD_LINE1+3:	 LUT_DATA <=  9'h120;//
	LCD_LINE1+4:	 LUT_DATA <=  9'h120;//
	LCD_LINE1+5:	 LUT_DATA <=  9'h14F;//
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h14F;
   LCD_LINE1+8:    LUT_DATA <=  9'h120;
   LCD_LINE1+9:    LUT_DATA <=  9'h120;//
   LCD_LINE1+10:   LUT_DATA <=  9'h120;//
   LCD_LINE1+11:   LUT_DATA <=  9'h120;//
	LCD_LINE1+12:   LUT_DATA <=  9'h120;//
   LCD_LINE1+13:   LUT_DATA <=  9'h120;//
   LCD_LINE1+14:   LUT_DATA <=  9'h120;
   LCD_LINE1+15:   LUT_DATA <=  9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+1:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+2:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+3:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+4:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+5:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+6:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+7:	LUT_DATA	<=	9'h14F;//
	LCD_LINE2+8:	LUT_DATA	<=	9'h14F;//
	LCD_LINE2+9:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+10:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+11:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+12:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+13:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+15:	LUT_DATA	<=	9'h120;//
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end

	if (state_valid_camouflage) begin
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h120;
	LCD_LINE1+1:	 LUT_DATA <=  9'h120;
	LCD_LINE1+2:	 LUT_DATA <=  9'h157;//
	LCD_LINE1+3:	 LUT_DATA <=  9'h150;//
	LCD_LINE1+4:	 LUT_DATA <=  9'h157;//
	LCD_LINE1+5:	 LUT_DATA <=  9'h150;//
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h157;
   LCD_LINE1+8:    LUT_DATA <=  9'h120;
   LCD_LINE1+9:    LUT_DATA <=  9'h120;//
   LCD_LINE1+10:   LUT_DATA <=  9'h120;//
   LCD_LINE1+11:   LUT_DATA <=  9'h150;//
	LCD_LINE1+12:   LUT_DATA <=  9'h120;//
   LCD_LINE1+13:   LUT_DATA <=  9'h120;//
   LCD_LINE1+14:   LUT_DATA <=  9'h120;
   LCD_LINE1+15:   LUT_DATA <=  9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+1:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+2:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+3:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+4:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+5:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+6:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+7:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+8:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+9:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+10:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+11:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+12:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+13:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+15:	LUT_DATA	<=	9'h120;//
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end
	
	if (state_valid_test) begin
	case(LUT_INDEX)
	//	Initial
	LCD_INTIAL+0:	LUT_DATA	<=	9'h038;
	LCD_INTIAL+1:	LUT_DATA	<=	9'h00C;
	LCD_INTIAL+2:	LUT_DATA	<=	9'h001;
	LCD_INTIAL+3:	LUT_DATA	<=	9'h006;
	LCD_INTIAL+4:	LUT_DATA	<=	9'h080;
	//	Line 1
	LCD_LINE1+0:	 LUT_DATA <=  9'h120;
	LCD_LINE1+1:	 LUT_DATA <=  9'h120;
	LCD_LINE1+2:	 LUT_DATA <=  9'h120;//
	LCD_LINE1+3:	 LUT_DATA <=  9'h120;//
	LCD_LINE1+4:	 LUT_DATA <=  9'h120;//
	LCD_LINE1+5:	 LUT_DATA <=  9'h120;//
	LCD_LINE1+6:    LUT_DATA <=  9'h120;
   LCD_LINE1+7:    LUT_DATA <=  9'h120;
   LCD_LINE1+8:    LUT_DATA <=  9'h120;
   LCD_LINE1+9:    LUT_DATA <=  9'h120;//
   LCD_LINE1+10:   LUT_DATA <=  9'h120;//
   LCD_LINE1+11:   LUT_DATA <=  9'h120;//
	LCD_LINE1+12:   LUT_DATA <=  9'h120;//
   LCD_LINE1+13:   LUT_DATA <=  9'h120;//
   LCD_LINE1+14:   LUT_DATA <=  9'h120;
   LCD_LINE1+15:   LUT_DATA <=  9'h120;
	//	Change Line
	LCD_CH_LINE:	LUT_DATA	<=	9'h0C0;
	//	Line 2
	LCD_LINE2+0:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+1:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+2:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+3:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+4:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+5:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+6:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+7:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+8:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+9:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+10:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+11:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+12:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+13:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+14:	LUT_DATA	<=	9'h120;//
	LCD_LINE2+15:	LUT_DATA	<=	9'h131;//
	default:		LUT_DATA	<=	9'hxxx;
	endcase
	end
	
end


LCD_Controller 		u0	(	//	Host Side
							.iDATA(mLCD_DATA),
							.iRS(mLCD_RS),
							.iStart(mLCD_Start),
							.oDone(mLCD_Done),
							.iCLK(clk),
							.iRST_N(rst_n),
							//	LCD Interface
							.LCD_DATA(LCD_DATA),
							.LCD_RW(LCD_RW),
							.LCD_EN(LCD_EN),
							.LCD_RS(LCD_RS)	);

endmodule