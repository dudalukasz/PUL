`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:12:55 06/02/2015
// Design Name:   connect_ser_des
// Module Name:   /home/michal/Dokumenty/VHDL/Serdes/connect_ser_des_tb.v
// Project Name:  Serdes
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: connect_ser_des
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module connect_ser_des_tb;

	// Inputs
	integer i; 
	reg [7:0] in_comp;
	reg clk;
	reg nreset;

	// Outputs
	wire [7:0] out_comp;

	// Instantiate the Unit Under Test (UUT)
	connect_ser_des uut (
		.in_comp(in_comp), 
		.out_comp(out_comp), 
		.clk(clk), 
		.nreset(nreset)
	);
 
    always 
	begin 
	clk = 0; 
	#10; 
	clk = 1; 
	#10;  
	end	
	
	initial begin
		// Initialize Inputs
		in_comp = 0;
		clk = 0;
		nreset = 0;

		// Wait 100 ns for global reset to finish
		#100;
       nreset = 1;
		 in_comp = "11110000";
		 #10;
		 in_comp = "11111110";
		 #10;
		 in_comp = "10000000";
		 #10;
		 in_comp = "11111111";
		 #10
		 in_comp = "11000010";
		 #10;
		 in_comp = "11111110";
		 #10
		 in_comp = "11110000";
		 #10;
		 in_comp = "11111110";
		 #10;
		 in_comp = "10000000";
		 #10;
		 in_comp = "11111111";
		 #10
		 in_comp = "11000010";
		 #10;
		 in_comp = "11111110";
		 #10;
		// Add stimulus here

   end 
endmodule

