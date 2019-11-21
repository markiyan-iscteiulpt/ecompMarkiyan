top:   average.v divider.v divider_tb.v average_tb.v
	iverilog -o top average.v average_tb.v
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
