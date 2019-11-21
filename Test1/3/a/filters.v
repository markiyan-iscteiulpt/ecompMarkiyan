`timescale 1ns/1ps

module filters (
                  input x_is_valid,
                  input [3:0] x,
		          input rst,
		          input clk,
                  output reg [5:0] y 
                  );
 
   reg [3:0]	x1, x2;

   always @(posedge clk) begin 
	if (rst)
	begin
		y<=6'd0;
		x1<=4'd0;
	end
	
	else
	
	if (x_is_valid)
	begin
		x1<=x>>1;
		x2<=x>>3;
		y<=x2;
	end	
   end
	
endmodule
