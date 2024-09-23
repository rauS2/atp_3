`timescale 1ns/1ns
`include "decod.v"

module decod_tb;
	reg [2:0] in;
    reg EN;
	wire [7:0] d;

	decod uut(in, EN, d);

	initial begin
        $dumpfile("decod_tb.vcd");
        $dumpvars(0, decod_tb);
        EN = 1'b1;
        in =   3'b000; #10;
        in =   3'b001; #10;
        in =   3'b010; #10;
        in =   3'b011; #10;
        in =   3'b100; #10;
        in =   3'b101; #10;
        in =   3'b110; #10;
        in =   3'b111; #10;
        EN = 1'b0;
        in =   3'b000; #10;
        in =   3'b001; #10;
        in =   3'b010; #10;
        in =   3'b011; #10;
        in =   3'b100; #10;
        in =   3'b101; #10;
        in =   3'b110; #10;
        in =   3'b111; #10;

		
 	end

endmodule