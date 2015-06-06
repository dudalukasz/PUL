`timescale 1ns / 1ps


module connect_ser_des_tb;

   integer file, i; 
	// Inputs
	reg [7:0] in_comp;
	reg clk;
	reg nreset;
	// line for the text read from file
	reg [7:0] data [0:15]; 

	// Outputs
	wire [7:0] out_comp;

	// Instantiate the Unit Under Test (UUT)
	connect_ser_des uut (
		.in_comp(in_comp), 
		.out_comp(out_comp), 
		.clk(clk), 
		.nreset(nreset)
	);

	initial
	   $readmemb("Dane_Odczyt.txt",data);
   
	initial begin
		
		file = $fopen("Dane_Zapis.txt","w"); 
		in_comp = 0;
		clk = 0;
		nreset = 0;
		
		// odczyt z pliku 
		$display("Data read: ");
		for (i=0;i<15;i=i+1) begin
			$display("%d : %B",i,data[i]);
			$fwrite (file,"%B \n", data[i]); 
      end 
		
		$fclose(file);

	end 
	always #5 clk = ~clk;
endmodule