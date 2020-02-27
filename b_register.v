/*
* Module: B Register
*
* Brief : The B register is another buffer register.
* It is used in holding the data. A low LB and positive clock edge load the word on the W bus into the B register.
*
* Input :
* WBUS   = Data from WBUS 
* CLK    = Clock
* nLb    = Load to Register B. (0 = Load)
*
* Output :
* WBUS    = Data to WBUS
*/
module b_register (
					inout  [7:0] WBUS,
					input        CLK,
					input        nLb );

	parameter High_Impedance = 8'bzzzz_zzzz;
	parameter Zero_State     = 8'b0000_0000;
	
    reg [7:0] breg;
  
    initial begin
        breg <= Zero_State;
    end
	
	// Write your Code here :
	
	
	
	
	
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_b_register ;

	wire [7:0] WBUS;
	reg        CLK;
	reg        nLb;

	b_register B_Register (WBUS,CLK,nLb);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
		
		// Write your Test Cases here :
		
	end

endmodule