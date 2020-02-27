/**
* Module: Instruction Registor (IR)
*
* Brief : Because SAP-2 has more instructions than SAP-1, we will use 8 bits for the op code rather than 4. 
* An 8-bit op code can accommodate 256 instructions. SAP-2 has only 42 instructions, so there will be no problem coding them with 8 bits.
* Using an 8-bit op code also allows upward compat-ibility with the 8080/8085 instruction set because it is based on an 8-bit op code. 
* As mentioned earlier, all SAP instructions are identical with 8080/8085 instructions. 
*
* Input :
* WBUS   = Data from WBUS
* CLK    = Clock
* nLi    = Load Load from WBUS (8-bit). 0 = load
* nEi    = Output Address. 0 = Output to lower part of WBUS (4-bit)
* nCLR   = Clear
*
* Output :
* opcode = Op Code to Determine the Operation
*/
module instruction_register (
							output [7:0] opcode,
							input  [7:0] WBUS,
							input        CLK,
							input        nLi,
							input        nEi,
							input        nCLR );

	parameter Zero_State     = 8'b0000_0000;

    reg [7:0] opcode ;

    initial begin
		opcode <= Zero_State;
    end
    
	// Write your Code here :
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_instruction_register ;

	wire [7:0] opcode;
	reg  [7:0] WBUS;
	reg        CLK;
	reg        nLi,nEi,nCLR ;

	instruction_register IR (opcode,WBUS,CLK,nLi,nEi,nCLR);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
		
		// Write your Test Cases here :
		
		
	end

endmodule
