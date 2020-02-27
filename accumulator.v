/*
* Module: Accumulator
*
* Brief : The Accumulator (A) is a buffer register that stores inter-mediate answers during a computer run.
* The two-state output of the accumulator goes to the ALU ,the three-state output to the W bus.
* Therefore, the 8-bit word in the accumulator continuously drives the ALU, but this same word appears on the bus only when EA is active. 
*
* Input :
* out    = Data from WBUS
* CLK    = Clock
* nLa    = Load Register A at negedge (Write). 0 -> Write
* Ea     = Write to WBUS.
*
* Output :
* out    = Data To the WBUS
* alu    = Data to ALU
*/
module accumulator(
					inout  [7:0] out,
					output [7:0] alu,
					input        CLK,
					input        nLa,
					input        Ea );

	parameter High_Impedance = 8'bzzzz_zzzz;
	parameter Zero_State     = 8'b0000_0000;
	
    reg  [7:0] accreg;
    
    initial begin
        accreg <= Zero_State;
    end	
	
	// Write your Code here :
	
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_accumulator ;

	wire [7:0] out;
	wire [7:0] alu;
	reg        CLK;
	reg        nLa,Ea ;

	accumulator Accumulator (out,alu,CLK,nLa,Ea);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
	
		// Write your Test Cases here :
	

	end

endmodule