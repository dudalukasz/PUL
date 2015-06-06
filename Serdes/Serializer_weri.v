`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:07:23 05/26/2015
// Design Name:   serializer
// Module Name:   /home/michal/Dokumenty/VHDL/Serdes/Serializer_weri.v
// Project Name:  Serdes
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serializer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Serializer_weri;

	// Inputs
	reg [7:0] paralel_in;
	reg clk;
	reg nreset;

	// Outputs
	wire serial_out;

	// Instantiate the Unit Under Test (UUT)
	serializer uut (
		.paralel_in(paralel_in), 
		.clk(clk), 
		.nreset(nreset), 
		.serial_out(serial_out)
	);

	initial begin // initial - run at beginning of simulation
		// Initialize Inputs
		paralel_in = 0;
		clk = 1;
		nreset = 0; 
		// Wait 100 ns for global reset to finish
      #100; 
		
      nreset = 1;
		paralel_in = 0100010;   // wartosc poczatkowa do podania 
	end 	
	
	always begin 
	   clk = 1; 
		#10;
		clk = 0; 
		#10;
	end
		// Add stimulus here

      
endmodule

