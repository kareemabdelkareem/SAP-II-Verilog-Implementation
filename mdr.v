/**
* Module: Memory Data Register (MDR)
*
* Brief : The memory data register (MDR) is an 8-bit buffer register , Its output sets up the RAM. 
* The memory data register receives data from the bus before a write operation, and it sends data to the bus after a read operation. 
*
* Input :
* WBUS = Data from WBUS.
* data = data from Memory
* nLd  = Enable MDR to Load WBUS data (0 = enable)
* CLK  = Clock
*
* Output :
* WBUS = data to WBUS
* data = data to Memory
*/
module mdr (
			inout [7:0] WBUS,
			inout [7:0] data,
			input       nLd ,
			input       CLK );		
	
	parameter Zero_State     = 8'b0000_0000;
	parameter High_Impedance = 8'bzzzz_zzzz;

    reg [7:0] mdrreg ;

    initial begin
		mdrreg <= Zero_State;
    end
    
	// Write your Code here :
	
	
	
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_mdr;

	wire [7:0] WBUS;
	wire [7:0] data;
	reg         CLK;
	reg         nLd;

	mdr MDR (WBUS,data,nLd ,CLK );	

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
		
		// Write your Test Cases here :
		
		
	end

endmodule
