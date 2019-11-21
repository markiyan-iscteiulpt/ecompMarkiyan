module divider_tb();
 
   reg clk;
   reg [3:0] a;
   reg [3:0] b;
   wire [7:0] c;

   divider div(
		.clk(clk),
		.a(a),
		.b(b),
      .c(c)
		);


   initial begin
      $dumpfile("result.vcd");
      $dumpvars;

      clk = 1;
      
      a = 4'b0011;
      b = 4'b0011;

      #60

      $finish;
   end

   always #10 clk = ~clk;

endmodule


