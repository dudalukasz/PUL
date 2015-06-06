`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:21:04 05/26/2015
// Design Name:   connect_ser_des
// Module Name:   /home/michal/Dokumenty/VHDL/Serdes/Testserdes.v
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

module Testserdes;

	// Inputs
	reg [7:0] input;
	reg clk;
	reg nreset;

	// Outputs
	wire [7:0] output;

	// Instantiate the Unit Under Test (UUT)
	connect_ser_des uut (
		.input(input), 
		.output(output), 
		.clk(clk), 
		.nreset(nreset)
	);

	initial begin
		// Initialize Inputs
		input = 0;
		clk = 0;
		nreset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

