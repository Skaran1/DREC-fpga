module my_5d6d
(
    input wire flag,
    input wire CDR,
    input reg [4:0] bits,
    output [5:0] mem
);
reg CDR_reg = 0;
assign CDR = CDR_reg;

reg temp_CDR = CDR_reg;

reg flag_reg;
assign flag = flag_reg;


always@ (posedge flag_reg)
begin
    temp_CDR = CDR_reg
    if (temp_CDR)
        case(bits)
            5'b00000: begin mem = 6'b011000; CDR_reg = 0; end
            5'b00001: begin mem = 6'b100010; CDR_reg = 0; end
            5'b00010: begin mem = 6'b010010; CDR_reg = 0; end
            5'b00011: mem = 6'b110001;
            5'b00100: begin mem = 6'b001010; CDR_reg = 0; end
            5'b00101: mem = 6'b101001;
            5'b00110: mem = 6'b011001;
            5'b00111: mem = 6'b000111;
            5'b01000: begin mem = 6'b000110; CDR_reg = 0; end
            5'b01001: mem = 6'b100101;
            5'b01010: mem = 6'b010101;
            5'b01011: mem = 6'b110100;
            5'b01100: mem = 6'b001101;
            5'b01101: mem = 6'b101100;
            5'b01110: mem = 6'b011100;
            5'b01111: begin mem = 6'b101000; CDR_reg = 0; end
            5'b10000: begin mem = 6'b100100; CDR_reg = 0; end
            5'b10001: mem = 6'b100011;
            5'b10010: mem = 6'b010011;
            5'b10011: mem = 6'b110010;
            5'b10100: mem = 6'b001011;
            5'b10101: mem = 6'b101010;
            5'b10110: mem = 6'b011010;
            5'b10111: begin mem = 6'b000101; CDR_reg = 0; end
            5'b11000: begin mem = 6'b001100; CDR_reg = 0; end
            5'b11001: mem = 6'b100110;
            5'b11010: mem = 6'b010110;
            5'b11011: begin mem = 6'b001001; CDR_reg = 0; end
            5'b11100: mem = 6'b001110;
            5'b11101: begin mem = 6'b010001; CDR_reg = 0; end
            5'b11110: begin mem = 6'b100001; CDR_reg = 0; end
            5'b11111: begin mem = 6'b010100; CDR_reg = 0; end
        endcase
    else
        case(bits)
            5'b00000: begin mem = 6'b100111; CDR_reg = 1; end
            5'b00001: begin mem = 6'b011101; CDR_reg = 1; end
            5'b00010: begin mem = 6'b101101; CDR_reg = 1; end
            5'b00011: mem = 6'b110001;
            5'b00100: begin mem = 6'b110101; CDR_reg = 1; end
            5'b00101: mem = 6'b101001;
            5'b00110: mem = 6'b011001;
            5'b00111: mem = 6'b111000;
            5'b01000: begin mem = 6'b111001; CDR_reg = 1; end
            5'b01001: mem = 6'b100101;
            5'b01010: mem = 6'b010101;
            5'b01011: mem = 6'b110100;
            5'b01100: mem = 6'b001101;
            5'b01101: mem = 6'b101100;
            5'b01110: mem = 6'b011100;
            5'b01111: begin mem = 6'b010111; CDR_reg = 1; end
            5'b10000: begin mem = 6'b011011; CDR_reg = 1; end
            5'b10001: mem = 6'b100011;
            5'b10010: mem = 6'b010011;
            5'b10011: mem = 6'b110010;
            5'b10100: mem = 6'b001011;
            5'b10101: mem = 6'b101010;
            5'b10110: mem = 6'b011010;
            5'b10111: begin mem = 6'b111010; CDR_reg = 1; end
            5'b11000: begin mem = 6'b110011; CDR_reg = 1; end
            5'b11001: mem = 6'b100110;
            5'b11010: mem = 6'b010110;
            5'b11011: begin mem = 6'b110110; CDR_reg = 1; end
            5'b11100: mem = 6'b001110;
            5'b11101: begin mem = 6'b101110; CDR_reg = 1; end
            5'b11110: begin mem = 6'b011110; CDR_reg = 1; end
            5'b11111: begin mem = 6'b101011; CDR_reg = 1; end
        endcase
    flag_reg =~flag_reg;
end
