`include "half_subtractor.v"
module half_subtractor_testbench;
	reg A, Bin;
	wire D, Bout; 
	half_subtractor instance0(A, Bin, D, Bout);
	initial begin
		A = 0; Bin = 0;
		#1 A = 0; Bin = 1; 
		#1 A = 1; Bin = 0;
		#1 A = 1; Bin = 1;
	end
	initial begin
		$monitor("%t | A = %d | Bin = %d | D = %d | Bout = %d", $time, A, Bin, D, Bout);
		$dumpfile("dump.vcd");
		$dumpvars();
	end
endmodule
