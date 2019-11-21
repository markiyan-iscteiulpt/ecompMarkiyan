module divider_tb();
 
   reg clk;
   reg [3:0] a;
   wire [7:0] c;

   power pow(
		.clk(clk),
		.a(a),
        .c(c)
		);


   initial begin
      $dumpfile("result.vcd");
      $dumpvars;

      clk = 1;
      
      a = 4'b1110;

      #60

      $finish;
   end

   always #10 clk = ~clk;

endmodule


