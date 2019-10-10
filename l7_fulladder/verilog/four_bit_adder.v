`timescale 1ns / 1ps

module four_bit_adder(
	input [3:0] i_a,
	input [3:0] i_b,
	input i_CA,
	output [3:0] o_c,
	output o_CA
	);

	
	wire fa_wire1;
	wire fa_wire2;
	wire fa_wire3;

	full_adder fa1 (
		.i_bit1(i_a[0]),
		.i_bit2(i_b[0]),
		.i_carry(i_CA),
		.o_sum(o_c[0]),
		.o_carry(fa_wire1)
	);

	full_adder fa2 (
		.i_bit1(i_a[1]),
		.i_bit2(i_b[1]),
		.i_carry(fa_wire1),
		.o_sum(o_c[1]),
		.o_carry(fa_wire2)
	);

	full_adder fa3 (
		.i_bit1(i_a[2]),
		.i_bit2(i_b[2]),
		.i_carry(fa_wire2),
		.o_sum(o_c[2]),
		.o_carry(fa_wire3)
	);

	full_adder fa4 (
		.i_bit1(i_a[3]),
		.i_bit2(i_b[3]),
		.i_carry(fa_wire3),
		.o_sum(o_c[3]),
		.o_carry(o_CA)
	);



endmodule //end of four bit adder
