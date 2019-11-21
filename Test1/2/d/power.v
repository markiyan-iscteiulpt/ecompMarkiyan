`timescale 1ns/1ps

module power (
                  input [3:0] a,
                  output [11:0] c
                  );


   assign c = a**3;

endmodule


