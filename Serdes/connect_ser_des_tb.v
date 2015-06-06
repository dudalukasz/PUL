`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:00 06/06/2015
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

	initial begin
		// Initialize Inputs
		in_comp = 0;
		clk = 0;
		nreset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

