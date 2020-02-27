/**
* Module: MAR
*
* Brief : During the fetch cycle, the MAR receives 16-bit addresses from the program counter. 
* The two-state MAR output then addresses the desired memory location. 
*
* Input :
* WBUS    = the Data from the WBUS.
* nLm     = Enable MAR to Load WBUS data (0 = enable)
* CLK     = Clock
*
* Output :
* address = Address to the RAM
*/
module mar (
			output reg [15:0] address,
			input      [15:0] WBUS,
			input             nLm ,
			input             CLK );		
	
	parameter Zero_State     = 8'b0000_0000;

    reg [15:0] addr ;

    initial begin
		addr <= Zero_State;
    end
    
	// Write your Code here :
	
	
	
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_mar;

	wire [15:0] address;
	reg  [15:0] WBUS;
	reg         CLK;
	reg         nLm;

	mar MAR (address,WBUS,nLm,CLK);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
		
		// Write your Test Cases here :
		
		
	end

endmodule
