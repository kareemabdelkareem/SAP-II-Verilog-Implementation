/*
* Module: 8-bit ALU & 2-bit Flags
*
* Brief : ALUs have 4 or more control bits that determine the arithmetic or logic operation performed on words A and B. 
* The ALU used in SAP-2 includes arithmetic and logic operations. 
* a flag is a flip-flop that keeps track of a changing condition during a computer run. 
* The SAP-2 computer has two flags. The sign flag is set when the accumulator contents become negative during the execution 
*
* Input :
* accumulator  = data From Accumulator
* tmp          = data From Register TMP.
* Sel          = Operation Selector 
* Eu           = Enable output to WBUS
*
* Output :
* result = Data to WBUS.
* flags  = zero & sign Flags
*/
module alu (
			output [7:0]  result,
			output [1:0]  flags,
			input  [7:0]  accumulator,
			input  [7:0]  tmp,
			input  [3:0]  Sel,
			input         Eu );

	parameter High_Impedance = 8'bzzzz_zzzz;
	parameter Zero_State     = 8'b0000_0000;
			
   reg [7:0] result ;

   initial begin
		result <= Zero_State;
   end
   
   	// Write your Code here :
	
	
	
	
	
	
   
endmodule
/*************************************** Test Bench ***************************************/
module t_alu ;

	wire [7:0]  result;
	wire [1:0]  flags;
	reg  [7:0]  tmp;
	reg  [7:0]  accumulator;
	reg  [3:0]  Sel;
	reg         Eu;

	alu ALU (result,flags,accumulator,tmp,Sel,Eu);

	initial begin 
		
		// Write your Test Cases here :
		
	end

endmodule