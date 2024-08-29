//Creating the Testbench
`include "binary_gray.v"
module bg_testbench;
	reg b[4];
	wire g[4];
	binary_gray instance0(b, g);
	initial begin
		A = 0; B = 0;
		#1 A = 0; B = 1; 
		#1 A = 1; B = 0;
		#1 A = 1; B = 1;
	end
	initial begin
		$monitor("%t | A = %d | B = %d | Y = %d", $time, A, B, Y);
		$dumpfile("dump.vcd");
		$dumpvars();
	end
endmodule
