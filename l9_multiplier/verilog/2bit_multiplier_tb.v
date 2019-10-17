`timescale 1ns / 1ps

module four_bit_adder_tb;

	reg [1:0] A;
	reg [1:0] B;
	wire [3:0] C;

	bit2_multiplier mult(
		.a(A),
		.b(B),
		.m(C)
	);


	initial begin 
		$dumpfile("top.vcd");
		$dumpvars();
	
		A[0] = 1;
		A[1] = 1;
		
		B[0] = 1;
		B[1] = 1;

		$finish;

	end

endmodule
