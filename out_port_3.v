/*
* Module: out_port_3
*
* Brief : The contents of the accumulator can be loaded into port 3, which drives a hexadecimal display. 
* This allows us to see the processed data.
*
* Input :
* WBUS   = Data from WBUS 
*
* Output :
* out    = Data to Hexadecimal Display
*/
module out_port_3 (
					output [7:0] out,
					input  [7:0] WBUS );

	// Write your Code here :
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_out_port_3 ;

	wire [7:0] out;
	reg [7:0] WBUS ;

	initial begin 
		
		// Write your Test Cases here :
		
		
	end

endmodule
