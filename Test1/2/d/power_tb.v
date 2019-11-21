module divider_tb();
 
   reg [3:0] a;
   wire [7:0] c;

   power pow(
		.a(a),
        .c(c)
		);


   initial begin
      $dumpfile("result.vcd");
      $dumpvars;

      
      a = 4'b0010;

      #30

      $finish;
   end

endmodule


