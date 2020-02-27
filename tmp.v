/*
* Module: TMP Register
*
* Brief : 
*
* Input :
* WBUS   = Data from WBUS 
* CLK    = Clock
* nLt    = Load to Register TMP. (0 = Load)
*
* Output :
* alu     = data to ALU Unit 
* WBUS    = Data to WBUS
*/
module tmp_register (
					output [7:0] alu,
					inout  [7:0] WBUS,
					input        CLK,
					input        nLt );

	parameter High_Impedance = 8'bzzzz_zzzz;
	parameter Zero_State     = 8'b0000_0000;
	
    reg [7:0] tmpreg;
  
    initial begin
        tmpreg <= Zero_State;
    end
	
	// Write your Code here :
	
	
	
	
	
	
	
	
	
	
endmodule
/*************************************** Test Bench ***************************************/
module t_tmp_register ;

	wire [7:0] alu;
	wire [7:0] WBUS;
	reg        CLK;
	reg        nLt;

	tmp_register TMP_Register (alu,WBUS,CLK,nLt);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
		
		// Write your Test Cases here :
		
	end

endmodule