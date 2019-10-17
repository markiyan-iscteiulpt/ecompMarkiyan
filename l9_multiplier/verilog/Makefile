top: half_adder.v 2bit_multiplier.v 2bit_multiplier_tb.v
	iverilog -o top half_adder.v 2bit_multiplier.v 2bit_multiplier_tb.v
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
