top: four_bit_adder.v full_adder.v four_bit_adder_tb.v
	iverilog -o top four_bit_adder.v full_adder.v four_bit_adder_tb.v  
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
