`include "gray_binary.v"
module gray_binary_testbench;
	reg [3:0]b;
	wire [3:0]g;
	gray_binary instance0(b, g);
	initial begin
		b = 4'b0000;
        #1 b = 4'b0001;
        #1 b = 4'b0010;
        #1 b = 4'b0011;
        #1 b = 4'b0100;
        #1 b = 4'b0101;
        #1 b = 4'b0110;
        #1 b = 4'b0111;
        #1 b = 4'b1000;
        #1 b = 4'b1001;
        #1 b = 4'b1010;
        #1 b = 4'b1011;
        #1 b = 4'b1100;
        #1 b = 4'b1101;
        #1 b = 4'b1110;
        #1 b = 4'b1111;
	end
	initial begin
		$monitor("%t | Binary = %b | Gray = %b ", $time, b, g);
		$dumpfile("dump.vcd");
		$dumpvars();
	end
endmodule