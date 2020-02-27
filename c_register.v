/*
* Module: C Register
*
* Brief : The C register is another buffer register.
* It is used in holding the data. A low LC and positive clock edge load the word on the W bus into the C register.
*
* Input :
* WBUS   = Data from WBUS 
* CLK    = Clock
* nLc    = Load to Register C. (0 = Load)
*
* Output :
* WBUS    = Data to WBUS
*/
module c_register (
					inout  [7:0] WBUS,
					input        CLK,
					input        nLc );

	parameter High_Impedance = 8'bzzzz_zzzz;
	parameter Zero_State     = 8'b0000_0000;
	
    reg [7:0] creg;
  
    initial begin
        creg <= Zero_State;
    end
	
	// Write your Code here :
	
	
	
	
	
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_c_register ;

	wire [7:0] WBUS;
	reg        CLK;
	reg        nLc;

	c_register C_Register (WBUS,CLK,nLc);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
		
		// Write your Test Cases here :
		
	end

endmodule