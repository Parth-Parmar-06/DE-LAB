//Creating the Testbench
`include "or_1.v"
module or_testbench;
	reg A, B;
	wire Y;
	or_1 instance0(Y, A, B);
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
