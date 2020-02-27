/*
 * Module: Control Unit (Controller)
 *
 * Brief : The controller-sequencer produces the control words or microinstructions that coordinate and direct the rest of the computer. 
 * Because SAP-2 has a bigger instruction set, the controller-sequencer has more hardware. 
 * Although the CON word is bigger, the idea is the same. 
 * the control word or microinstruction determines how the registers react to the next positive clock edge. 
 *
 * Input :
 * CLK    = Clock
 * nCLR   = Clear (0 :clear)
 * opcode = From Instruction Register
 *
 * Total Output of (12) Control Signals CON : (Can Be Changed Because this Control Signals for SAP I)
 * Cp     = Increment PC
 * Ep     = Enable PC ouput to WBUS (1 = Enable)
 * nLm    = Enable MAR to Load WBUS data (0 = enable)
 * nCE    = Enable output of RAM data to WBUS (0 = enable)
 * nLi    = Load Instruction Register from WBUS (0 = load)
 * nEi    = Enable ouput of address from Instruction Register to lower 4 bits of WBUS (0 = enable)
 * nLa    = Load data into the accumulator from WBUS (0 = load)
 * Ea     = Enable ouput of accumulator to WBUS (1 = enable)
 * Su     = ALU operation (0 = Add, 1 = Subtract)
 * Eu     = Enable output of ALU to WBUS (1 = enable)
 * nLb    = Load data into Register B from WBUS (0 = load)
 * nLo    = Load data into Output Register (0 = load) 
 */
module control_unit (
					output reg [11:0] CON
					input             CLK,
					input             nCLR,
					input      [7:0]  opcode );

    // T-States
    parameter T01    = 18'b000000_000000_000001;
    parameter T02    = 18'b000000_000000_000010;
    parameter T03    = 18'b000000_000000_000100;
    parameter T04    = 18'b000000_000000_001000;
    parameter T05    = 18'b000000_000000_010000;
    parameter T06    = 18'b000000_000000_100000;
	parameter T07    = 18'b000000_000001_000000;
	parameter T08    = 18'b000000_000010_000000;
	parameter T09    = 18'b000000_000100_000000;
	parameter T10    = 18'b000000_001000_000000;
	parameter T11    = 18'b000000_010000_000000;
	parameter T12    = 18'b000000_100000_000000;
	parameter T13    = 18'b000001_000000_000000;
	parameter T14    = 18'b000010_000000_000000;
	parameter T15    = 18'b000100_000000_000000;
	parameter T16    = 18'b001000_000000_000000;
	parameter T17    = 18'b010000_000000_000000;
	parameter T18    = 18'b100000_000000_000000;
	
    // Instruction OP_Code
    parameter ADD_B    = 8'b1000_0000;
    parameter ADD_C    = 8'b1000_0001;
    parameter ANA_B    = 8'b1010_0000;
    parameter ANA_C    = 8'b1010_0001;
    parameter ANI      = 8'b1110_0110;
	parameter CALL     = 8'b1100_1101;
	parameter CMA      = 8'b0010_1111;
	parameter CALL     = 8'b1100_1101;
	parameter CDR_A    = 8'b0011_1101;
	parameter CDR_B    = 8'b0000_0101;
	parameter CDR_C    = 8'b1100_1101;
	parameter HLT      = 8'b0111_0110;
	parameter IN       = 8'b1101_1011;
	parameter INR_A    = 8'b0011_1100;
	parameter INR_B    = 8'b0000_0100;
	parameter INR_C    = 8'b0000_1100;
	parameter JM       = 8'b1111_1010;
	parameter JMP      = 8'b1100_0011;
	parameter JNZ      = 8'b1100_0010;
	parameter JZ       = 8'b1100_1010;
	parameter LDA      = 8'b0011_1010;
	parameter MOV_A_B  = 8'b0111_1000;
	parameter MOV_A_C  = 8'b0111_1001;
	parameter MOV_B_A  = 8'b0100_0111;
	parameter MOV_B_C  = 8'b0100_0001;
	parameter MOV_C_A  = 8'b0100_1111;
	parameter MOV_C_B  = 8'b0100_1000;
	parameter MVI_A    = 8'b0011_1110;
	parameter MVI_B    = 8'b0000_0110;
	parameter MVI_C    = 8'b0000_1110;
	parameter NOP      = 8'b0000_0000;
	parameter ORA_B    = 8'b1011_0000;
	parameter ORA_C    = 8'b1011_0001;
	parameter ORI      = 8'b1111_0110;
	parameter OUT      = 8'b1101_0011;
	parameter RAL      = 8'b0001_0111;
	parameter RAR      = 8'b0001_1111;
	parameter RET      = 8'b1100_1001;
	parameter STA      = 8'b0011_0010;
	parameter SUB_B    = 8'b1001_0000;
	parameter SUB_C    = 8'b1001_0001;
	parameter XRA_B    = 8'b1010_1000;
	parameter XRA_C    = 8'b1010_1001;
	parameter XRI      = 8'b1110_1110;
	
    // Ring Counter
    wire [17:0] state; 
    ring_counter RC (state,CLK,nCLR); 
	
    initial begin
		CON <= 0 ;
	end
	
	// Write your Code here :
	
	
	
	
	
	
	
	
	
	
endmodule
/***************************************************************************/
module t_control_unit ;

	wire       CON;					
	reg [7:0]  opcode;
	reg        CLK,nCLR;


	control_unit Control_Unit (CON,CLK,nCLR,opcode);

	initial begin 
		CLK = 0 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 
			
			// Write your Test Cases here :
		
		
	end

endmodule