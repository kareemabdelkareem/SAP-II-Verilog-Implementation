/**
* Module: 16-Bit Program Counter (PC)
*
* Brief : the program counter has 16 bits; therefore, it can count from  PC = 0000 0000 0000 0000 to PC = 1111 1111 1111 1111 
* This is equivalent to 0000H to FFFFH, or decimal 0 to 65,535. A low CLR signal resets the PC before each computer run; 
* so the data processing starts with the instruction stored in memory location 0000H. 
*
* Input :
* WBUS = data from WBUS
* Cp   = Increment Count (1= Increment)
* CLK  = Clock
* nCLR = Clear (0 = Clear)
* Ep   = Enable output to WBUS.
*
* Output :
* WBUS   = out the Program Counter to WBUS
*/
module program_counter (
			inout [15:0] WBUS,
			input        Cp,
			input        CLK,
			input        nCLR,
			input        Ep );
			
	parameter High_Impedance = 16'bzzzz_zzzz_zzzz_zzzz;
	parameter Zero_State     = 16'b0000_0000_0000_0000;
  
    reg    [15:0] count;

	initial begin
		count <= Zero_State;
	end
	
	// Write your Code here :
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_program_counter ;

	wire [7:0] WBUS;
	reg        Cp,CLK,Ep,nCLR ;

	program_counter PC (WBUS,Cp,CLK,nCLR,Ep);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
		
		// Write your Test Cases here :
		
		
	end

endmodule
