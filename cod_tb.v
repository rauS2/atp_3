`timescale 1ns/1ns
`include "cod.v"

module cod_tb;
	reg [3:0] in;
	wire [6:0] y;

	cod uut(in, y);

	initial begin
        $dumpfile("cod_tb.vcd");
        $dumpvars(0, cod_tb);

        in = 4'b0000; // Initialize to 0
        #10; // Wait for 10 time units
        in = 4'b0001; // Set to 1
        #10; // Wait
        in = 4'b0010; // Set to 2
        #10; // Wait
        in = 4'b0011; // Set to 3
        #10; // Wait
        in = 4'b0100; // Set to 4
        #10; // Wait
        in = 4'b0101; // Set to 5
        #10; // Wait
        in = 4'b0110; // Set to 6
        #10; // Wait
        in = 4'b0111; // Set to 7
        #10; // Wait
        in = 4'b1000; // Set to 8
        #10; // Wait
        in = 4'b1001; // Set to 9
        #10; // Wait
        in = 4'b1010; // Set to 10
        #10; // Wait
        in = 4'b1011; // Set to 11
        #10; // Wait
        in = 4'b1100; // Set to 12
        #10; // Wait
        in = 4'b1101; // Set to 13
        #10; // Wait
        in = 4'b1110; // Set to 14
        #10; // Wait
        in = 4'b1111; // Set to 15
        #10; // End
		
 	end

endmodule