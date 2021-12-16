module my_4d3d
(
    input wire flag,
    input wire CDR,
    input reg [3:0] bits,
    output [2:0] mem
);
reg CDR_reg = 0;
assign CDR = CDR_reg;

reg temp_CDR = CDR_reg;

reg flag_reg;
assign flag = flag_reg;


always@ (negedge flag_reg)
begin

    if (temp_CDR)
        case(bits)
            4'b0100: begin mem = 3'b000; CDR = 0; end
            4'b1001: mem = 3'b001;
            4'b0101: mem = 3'b010;
            4'b0011: mem = 3'b011;
            4'b0010: begin mem = 3'b100; CDR = 0; end
            4'b1010: mem = 3'b101;
            4'b0110: mem = 3'b110;
            4'b1000: begin mem = 3'b111; CDR = 0; end
        endcase
    else
        case(bits)
            4'b1011: begin mem = 3'b000; CDR = 1; end
            4'b1001: mem = 3'b001;
            4'b0101: mem = 3'b010;
            4'b1100: mem = 3'b011;
            4'b1101: begin mem = 3'b100; CDR = 1; end
            4'b1010: mem = 3'b101;
            4'b0110: mem = 3'b110;
            4'b0111: begin mem = 3'b111; CDR = 1; end
        endcase
    flag_reg =~flag_reg;
end
