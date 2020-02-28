/*
* Module: 16-Bit Program Counter (PC)
*
* Author's Name : Hesham Mohamed Adb El-Hamed Ali
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
			input        Ep,
			input        nLp ,
			input        CLK,
			input        nCLR);
			
	parameter High_Impedance = 16'bzzzz_zzzz_zzzz_zzzz;
	parameter Zero_State     = 16'b0000_0000_0000_0000;
  
	reg    [15:0] count; // Register to hold the Current PC

	initial begin
		count <= Zero_State;
	end
	
	assign WBUS = (Ep) ? count : High_Impedance ;
    
	always @(posedge CLK) begin
	
		if(!nCLR)     count <= Zero_State; // clear (Reset)

		/* the Program Can not do both (Increment PC & Load from WBUS) in the same time 
		   Control Signals must insure that the two operations happen in different state
		   the priority for Increment operation */
		
		else if(Cp)   count <= (count == 16'hFFFF) ? Zero_State : count + 1'b1; // Increment Count till 16'hFFFF
		
		else if(!nLp) count <= WBUS;      // Load the PC from WBUS (as in Jump Instruction) 
		
		else          count <= count;     // Do Nothing
		
    end
	
endmodule
/*************************************** Test Bench ***************************************/
module t_program_counter ;

	wire [15:0] WBUS;
	reg         Cp,Ep,nLp,CLK,nCLR ;
	reg  [15:0] in;
	
	parameter High_Impedance = 16'bzzzz_zzzz_zzzz_zzzz;
	
	program_counter PC (WBUS,Cp,Ep,nLp,CLK,nCLR);
	
	assign WBUS  = (!nLp) ? in : High_Impedance;

	initial begin 
		CLK = 1 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
	
		     nCLR = 0;  Cp = 0; Ep = 0;  nLp = 1;  in = 16'h0000;  // Clear (Reset)
		#100 nCLR = 1;  Cp = 0; Ep = 0;  nLp = 1;                  // Do Nothing
		#100 nCLR = 1;  Cp = 1; Ep = 0;  nLp = 1;                  // Increment PC
		#100 nCLR = 1;  Cp = 0; Ep = 1;  nLp = 1;                  // Out PC to WBUS
		#100 nCLR = 1;  Cp = 0; Ep = 0;  nLp = 0;  in = 16'hAC15;  // Load PC from WBUS
		#100 nCLR = 1;  Cp = 1; Ep = 0;  nLp = 1;                  // Increment PC
		#100 nCLR = 1;  Cp = 0; Ep = 1;  nLp = 1;                  // Out PC to WBUS
		#100 nCLR = 1;  Cp = 0; Ep = 0;  nLp = 0;  in = 16'h8D0C;  // Load PC from WBUS
		#100 nCLR = 0;  Cp = 0; Ep = 0;  nLp = 1;  in = 16'hF953;  // Clear (Reset)
		#100 nCLR = 1;  Cp = 0; Ep = 0;  nLp = 0;  in = 16'hF953;  // Load PC from WBUS
		#100 nCLR = 1;  Cp = 1; Ep = 0;  nLp = 1;                  // Increment PC
		#100 nCLR = 1;  Cp = 0; Ep = 1;  nLp = 1;                  // Out PC to WBUS
		
	end

endmodule
