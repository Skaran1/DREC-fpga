module my_3d4d
(
    input wire flag,
    input wire CDR,
    input reg [2:0] bits,
    output [3:0] mem
);
reg CDR_reg = 0;
assign CDR = CDR_reg;

reg temp_CDR = CDR_reg;

reg flag_reg;
assign flag = flag_reg;


always@ (negedge flag_reg)
begin
    temp_CDR = CDR;
    if (temp_CDR)
        case(bits)
            3'b000: mem = 4'b0100;
            3'b001: mem = 4'b1001;
            3'b010: mem = 4'b0101;
            3'b011: mem = 4'b0011;
            3'b100: mem = 4'b0010;
            3'b101: mem = 4'b1010;
            3'b110: mem = 4'b0110;
            3'b111: mem = 4'b1000;
        endcase
    else
        case(bits)
            3'b000: mem = 4'b1011;
            3'b001: mem = 4'b1001;
            3'b010: mem = 4'b0101;
            3'b011: mem = 4'b1100;
            3'b100: mem = 4'b1101;
            3'b101: mem = 4'b1010;
            3'b110: mem = 4'b0110;
            3'b111: mem = 4'b0111;
        endcase
    flag_reg =~flag_reg;
end
