/**
* Module: 64K Memory 
*
* Brief : The memory has a 2K ROM with addresses of 0000H to 07FFH. 
* This ROM contains a program called a monitor that initializes the computer on power-up, interprets the keyboard inputs, and so forth. 
* The rest of the memory is a 62K RAM with addresses from 0800H to FFFFH. 
*
* Input :
* data : data from MDR
* WBUS    = the Data from the WBUS.
* nCE     = Enabled the output (0 = Read from MAR)
*
* Output : Data to MDR
* data = Address to the RAM
*/
module memory (
				inout  [7:0]  data,
				input  [15:0] WBUS,
				input         nCE );		
	
	parameter Zero_State     = 8'b0000_0000;
	parameter High_Impedance = 8'bzzzz_zzzz;

    reg [7:0] memory [0:65536‬]; // 8-bits x 64K Memory Location

    initial begin
		for (i = 0; i<655367; i=i+1)
			memory[i] <= Zero_State;
    end
    
	// Write your Code here :
	
	
	
	
	
	
	
	
endmodule
/***************************************************************************/
module t_memory;

	wire [15:0] data;
	reg  [15:0] WBUS;
	reg         nCE;

	memory Memory (data,WBUS,nCE );	

	initial begin 
		
		// Write your Test Cases here :
		
		
	end

endmodule
