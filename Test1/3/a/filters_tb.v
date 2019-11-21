`timescale 1ns/1ps

module filters_tb ();
 

   reg clk, rst;
   reg x_is_valid;
   reg [3:0] x;
   wire y;

   filters filts(
		.x_is_valid(x_is_valid),
		.clk(clk),
		.rst(rst),
		.x(x),
		.y(y)
		);


   initial begin

      $dumpfile("dump.vcd");
      $dumpvars;

      rst = 1;
      clk = 1;

      x = 4'b0101;

      @(posedge clk) rst=0;


      @(posedge clk) x = 4'b0111;
      @(posedge clk) x = 4'b0100;
      @(posedge clk) x = 4'b1000;
      @(posedge clk) x = 4'b1111;
      @(posedge clk) x_is_valid = 1;


      @(posedge clk) $finish;
   end

   always #10 clk = ~clk;

endmodule


