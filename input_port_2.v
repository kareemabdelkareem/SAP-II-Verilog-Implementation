/*
* Module: Input Port 2
*
* Brief : 
*
* Input :
* ready     = Received Ready Signal from Input Port 1
* serial_in = input Data in Serial form
*
* Output :
* WBUS    = Data to WBUS
*/
module input_port_2 (
					output [7:0] WBUS,
					input        ready,
					input        serial_in );

	parameter High_Impedance = 8'bzzzz_zzzz;
	parameter Zero_State     = 8'b0000_0000;
	
    reg [7:0] data;
  
    initial begin
        data <= Zero_State;
    end
	
	// Write your Code here :
	
	
	
	
	
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_input_port_2 ;

	wire [7:0] WBUS;
	reg  ready;
	reg  serial_in;

	input_port_2 Input_Port_2 (WBUS,ready,serial_in);

	initial begin 
		
		// Write your Test Cases here :
		
	end

endmodule