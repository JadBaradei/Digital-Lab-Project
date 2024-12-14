module LCD_Controller (	//	Host Side
						iDATA,iRS,
						iStart,oDone,
						iCLK,iRST_N,
						//	LCD Interface
						LCD_DATA,
						LCD_RW,
						LCD_EN,
						LCD_RS	);
//	CLK
parameter	CLK_Divide	=	16;
//	Host Side
input	[7:0]	iDATA; //8-bit input data to be sent to the LCD
input	iRS; //Input signal indicating whether the operation is a command or data.
input iStart; //A signal to start the LCD operation
input	iCLK; //Clock signal for synchronization.
input iRST_N; //Active-low reset signal.
output	reg		oDone; //Indicates when the LCD operation is complete
//	LCD Interface
output	[7:0]	LCD_DATA; //8-bit output data line for the LCD
output	reg		LCD_EN; //Control signal for enabling the LCD
output			LCD_RW; // Read/Write control signal (set to 0 for writing)
output			LCD_RS; // Control signal to select data or command mode
//	Internal Register
reg		[4:0]	Cont; //5-bit counter to manage timing
reg		[1:0]	ST; //2-bit state variable to track the current state of the controller
reg		preStart,mStart; //Registers used for detecting the start of an operation.

/////////////////////////////////////////////
//	Only write to LCD, bypass iRS to LCD_RS
assign	LCD_DATA	=	iDATA;  //Directly assigns iDATA to LCD_DATA, meaning the data sent to the LCD comes from the input.
assign	LCD_RW		=	1'b0; //Always set to 0, indicating that this controller will only perform write operations to the LCD.
assign	LCD_RS		=	iRS; //Passes through the input iRS, so the command/data selection is directly controlled by the host
/////////////////////////////////////////////

always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	begin
		oDone	<=	1'b0;
		LCD_EN	<=	1'b0;
		preStart<=	1'b0;
		mStart	<=	1'b0;
		Cont	<=	0;
		ST		<=	0;
	end
	/*
	This is a sequential logic block that triggers on the rising edge of iCLK 
	or the falling edge of iRST_N. If iRST_N is low (reset state), 
	the internal registers are initialized.
	*/
	else
	begin
		//////	Input Start Detect ///////
		/*
		This part detects when a start signal is asserted. 
		The combination {preStart, iStart} == 2'b01 checks 
		for a rising edge on iStart, indicating the start of a new operation.
		*/
		preStart<=	iStart;
		if({preStart,iStart}==2'b01)
		begin
			mStart	<=	1'b1;
			oDone	<=	1'b0;
		end
		//////////////////////////////////
		/*
		This block executes the state machine based on the current state (ST):
		State 0: Transition to State 1 (Wait Setup).
		State 1: Set LCD_EN high (enable the LCD) and transition to State 2.
		State 2: Count up to CLK_Divide. Once the count reaches CLK_Divide, 
					transition to State 3.
		State 3: Disable the LCD (LCD_EN low), reset mStart, set oDone high 
					(indicating the operation is complete), reset Cont, and 
					return to State 0.
		*/
		if(mStart)
		begin
			case(ST)
			0:	ST	<=	1;	//	Wait Setup
			1:	begin
					LCD_EN	<=	1'b1;
					ST		<=	2;
				end
			2:	begin					
					if(Cont<CLK_Divide)
					Cont	<=	Cont+1;
					else
					ST		<=	3;
				end
			3:	begin
					LCD_EN	<=	1'b0;
					mStart	<=	1'b0;
					oDone	<=	1'b1;
					Cont	<=	0;
					ST		<=	0;
				end
			endcase
		end
	end
end

endmodule //This marks the end of the LCD_Controller module