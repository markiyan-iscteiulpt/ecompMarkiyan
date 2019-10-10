`timescale 1ns / 1ps

module four_bit_adder_tb;

	reg [3:0] A;
	reg [3:0] B;
	reg I_CA;
	
	wire [3:0] C;
	wire O_CA;

	four_bit_adder fba(
		.i_a(A),
		.i_b(B),
		.i_CA(I_CA),
		.o_CA(O_CA),
		.o_c(C)
	);


	initial begin 
		$dumpfile("top.vcd");
		$dumpvars();
	
		A=1;
		B=1;
		I_CA=0;

		$finish;

	end

endmodule
