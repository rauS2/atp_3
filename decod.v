module decod(in,EN,d);
    input [2:0] in;
    input EN;
    output reg [7:0] d;
    always @ (in or EN) begin
        if(EN == 1'b1) begin
        case(in)
        3'b000: d = 8'b00000001;
        3'b001: d = 8'b00000010;
        3'b010: d = 8'b00000100;
        3'b011: d = 8'b00001000;
        3'b100: d = 8'b00010000;
        3'b101: d = 8'b00100000;
        3'b110: d = 8'b01000000;
        3'b111: d = 8'b10000000;
        endcase
        end
        else d = 8'b00000000;
    end
endmodule