`timescale 1ns/1ps

module bit2_multiplier(
   input  [1:0]a,
   input  [1:0]b,
   output [3:0]m
   );
 
  wire   WIRE_1;
  wire   WIRE_2;
  wire   WIRE_3;
  wire   WIRE_4;
       
  assign m[0] = a[0] & b[0];
  assign WIRE_1 = a[1] & b[0];
  assign WIRE_2 = a[0] & b[1];
  assign WIRE_4 = a[1] & b[1];

	half_adder ha(
		.a(WIRE_1),
		.b(WIRE_2),
		.c(WIRE_3),
		.s(m[1]));
	
	half_adder ha1(
		.a(WIRE_4),
		.b(WIRE_3),
		.c(m[3]),
		.s(m[2]));


endmodule // 2bit_multiplier
