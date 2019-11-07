`timescale 1ns/1ps

module rom (
  input [3:0] addr,
  output reg [5:0] data 
);

always @(*)
begin
	case(addr)
        	0: data = 6'd0;
		1: data = 6'd1;
		2: data = 6'd1;
		3: data = 6'd2;
		4: data = 6'd3;
		5: data = 6'd5;
		6: data = 6'd8;
		7: data = 6'd13;
		8: data = 6'd21;
		9: data = 6'd34;
	endcase
end
endmodule
