top:    filters.v filters_tb.v
	iverilog -o top filters.v filters_tb.v
	./top

clean: 
	rm -f top *~ *.vcd

.PHONY: clean all
