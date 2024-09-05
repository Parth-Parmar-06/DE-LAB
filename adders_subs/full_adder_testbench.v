`include "full_adder.v"
module full_adder_testbench;
	reg A, B, Cin;
	wire S, Cout; 
	full_adder instance0(A, B, Cin, S, Cout);
	initial begin
		A = 0; B = 0; Cin = 0;
		#1 A = 0; B = 0; Cin = 1;
		#1 A = 0; B = 1; Cin = 0;
		#1 A = 0; B = 1; Cin = 1;
        #1 A = 1; B = 0; Cin = 0;
		#1 A = 1; B = 0; Cin = 1;
		#1 A = 1; B = 1; Cin = 0;
		#1 A = 1; B = 1; Cin = 1;
	end
	initial begin
		$monitor("%t | A = %d | B = %d | Cin = %d | S = %d | Cout = %d", $time, A, B, Cin, S, Cout);
		$dumpfile("dump.vcd");
		$dumpvars();
	end
endmodule
