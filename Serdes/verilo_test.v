module verilo_test;
   
	integer filedesc;
	integer scanfile;  	
	`define NULL = 0; 
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
    
	  // write to file 
	  initial begin
	  integer i = 0; 
	  nreset = 0; 
	  for (i=0; i<128; i=i+1) begin 
				in_comp = i; 
		nreset = 1; 
	  end 
		
	  
	  /*$display("value of fwrite %b",filedesc); 
	  filedesc = $fopen("xyz.txt","w");
	  $display("value of fwrite %b",filedesc); 
	  repeat(7)
	  
		clk = 0;
		in_comp = 00000000; 
		nreset = 0; 
		#5; 
		nreset = 1; 
	   in_comp = 1111111; 
		$fwrite(filedesc,"Number is",in_comp);
		$display("value of fwrite %b",filedesc); 
	   $fclose(filedesc);*/ 
     //end
	  
	  // read from file 
	  //initial begin
		//filedesc = $fopen("xyz.txt","r"); 
		/*if  (filedesc == `NULL) begin 
			$display("filedesc was null");
			$finish; 
		end 
		*/
	  //end
	  
	  /*always @(posedge clk) begin
				//scanfile = $fscanf(filedesc, "%d\n" , data_read );
			   if (!$feof(filedesc))begin 
					//in_comp =  data_read; 
				end
		end 
		*/	
		end
	  always begin 
	  clk = 1; 
	  #10; 
	  clk = 0; 
	  #10; 
	  end 
	  
endmodule

