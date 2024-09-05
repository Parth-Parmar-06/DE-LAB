`include "half_adder.v"
module half_adder_testbench;
	reg A, B;
	wire S, C; 
	half_adder instance0(A, B, S, C);
	initial begin
		A = 0; B = 0;
		#1 A = 0; B = 1; 
		#1 A = 1; B = 0;
		#1 A = 1; B = 1;
	end
	initial begin
		$monitor("%t | A = %d | B = %d | S = %d | C = %d", $time, A, B, S, C);
		$dumpfile("dump.vcd");
		$dumpvars();
	end
endmodule
