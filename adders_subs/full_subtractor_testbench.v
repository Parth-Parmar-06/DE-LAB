`include "full_subtractor.v"
module full_subtractor_testbench;
	reg A, B, Bin;
	wire D, Bout; 
	full_subtractor instance0(A, B, Bin, D, Bout);
	initial begin
		A = 0; B = 0; Bin = 0;
		#1 A = 0; B = 0; Bin = 1;
		#1 A = 0; B = 1; Bin = 0;
		#1 A = 0; B = 1; Bin = 1;
        #1 A = 1; B = 0; Bin = 0;
		#1 A = 1; B = 0; Bin = 1;
		#1 A = 1; B = 1; Bin = 0;
		#1 A = 1; B = 1; Bin = 1;
	end
	initial begin
		$monitor("%t | A = %d | B = %d | Bin = %d | D = %d | Bout = %d", $time, A, B, Bin, D, Bout);
		$dumpfile("dump.vcd");
		$dumpvars();
	end
endmodule
