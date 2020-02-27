/*
* Project       : Implementation of SAP 2
* Author's Name : Hesham Mohamed Adb El-Hamed Ali
* Date          : 26/2/2020
* File Name     : CPU Top
*
* Inputs of the Module :
* CLK   = Clock
* nCLR  = Clear (0 :clear)
*/
module top (input CLK ,nCLR);
	
	// Write your Code here :
	
	
	
	
	
	
	
	
	
endmodule
/***************************************************************************/
module t_top;

	reg CLK , nCLR ;

	top SAP_II (CLK,nCLR);

	initial begin 
		CLK = 1 ;
		forever #50 CLK = ~CLK ;
	end

	initial begin 

			 nCLR = 0 ;
		#100 nCLR = 1 ;

	end

endmodule
