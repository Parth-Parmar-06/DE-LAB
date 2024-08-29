//Creating the Testbench
`include "not_2.v"
module not_testbench;
	reg A;
	wire Y;
	not_2 instance0(Y, A);
	initial begin
		A = 0; 
		#1 A = 1;  
	end
	initial begin
		$monitor("%t | A = %d | Y = %d", $time, A, Y);
		$dumpfile("dump.vcd");
		$dumpvars();
	end
endmodule
