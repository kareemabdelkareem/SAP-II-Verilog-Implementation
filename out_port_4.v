/*
* Module: out_port_4
*
* Brief : The contents of the accumulator can also be sent to port 4. 
* Notice that pin 7 of port 4 sends an ACKNOWLEDGE signal to the hexadecimal encoder. 
* This ACKNOWLEDGE signal and the READY signal are part of a concept called handshaking. 
* Also notice the SERIAL OUT signal from pin 0 of port 4. 
*
* Input :
* WBUS = Data from WBUS
*
* Output :
* serial_out = Data out in serial form
* acknowedge = acknowedge Signal
*/
module out_port_4 (
					output serial_out,
					output acknowedge,
					input [7:0] WBUS );

	// Write your Code here :
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_out_port_4 ;
	
	wire serial_out,acknowedge;
	reg [7:0] WBUS ;
	
	initial begin 
		
		// Write your Test Cases here :
		
		
		
	end

endmodule
