`timescale 1ns / 1ps

module rom_tb;

   reg  [3:0] addr;
   wire [5:0] data;

   rom  simplerom(
		    .addr(addr),
		    .data(data)
		    );

   initial begin

      $dumpfile("top.vcd");
      $dumpvars();

	addr = 4'd0;
	#10;	
	
	addr = 4'd1;
	#10;
	
	addr = 4'd2;
	#10;
	
	addr = 4'd3;
	#10;

	addr = 4'd4;
	#10;

	addr = 4'd5;
	#10;

	addr = 4'd6;
	#10;
	
	addr = 4'd7;
	#10;
	
	addr = 4'd8;     
	#10;
	
	addr = 4'd9;     
	#10;

      $finish;
      
    end 
// initial begin
   
endmodule

