module my_5d6d
(
    input wire flag,
    input wire CDR,
    input reg [5:0] bits,
    output [4:0] mem
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
            6'b011000: begin mem = 5'b00000; CDR_reg = 0; end
            6'b100010: begin mem = 5'b00001; CDR_reg = 0; end
            6'b010010: begin mem = 5'b00010; CDR_reg = 0; end
            6'b110001: mem = 5'b00011;
            6'b001010: begin mem = 5'b00100; CDR_reg = 0; end
            6'b101001: mem = 5'b00101;
            6'b011001: mem = 5'b00110;
            6'b000111: mem = 5'b00111;
            6'b000110: begin mem = 5'b01000; CDR_reg = 0; end
            6'b100101: mem = 5'b01001;
            6'b010101: mem = 5'b01010;
            6'b110100: mem = 5'b01011;
            6'b001101: mem = 5'b01100;
            6'b101100: mem = 5'b01101;
            6'b011100: mem = 5'b01110;
            6'b101000: begin mem = 5'b01111; CDR_reg = 0; end
            6'b100100: begin mem = 5'b10000; CDR_reg = 0; end
            6'b100011: mem = 5'b10001;
            6'b010011: mem =5'b10010;
            6'b110010: mem = 5'b10011;
            6'b001011: mem = 5'b10100;
            6'b101010: mem = 5'b10101;
            6'b011010: mem = 6'b0110105'b10110;
            6'b000101: begin mem = 5'b10111; CDR_reg = 0; end
            6'b001100: begin mem = 5'b11000; CDR_reg = 0; end
            6'b100110: mem = 5'b11001;
            6'b010110: mem = 5'b11010;
            6'b001001: begin mem = 5'b11011; CDR_reg = 0; end
            6'b001110: mem = 5'b11100;
            6'b010001: begin mem = 5'b11101; CDR_reg = 0; end
            6'b100001: begin mem = 5'b11110; CDR_reg = 0; end
            6'b010100: begin mem = 5'b11111; CDR_reg = 0; end
        endcase
    else
        case(bits)
            6'b100111: begin mem = 5'b00000; CDR_reg = 1; end
            6'b011101: begin mem = 5'b00001; CDR_reg = 1; end
            6'b101101: begin mem = 5'b00010; CDR_reg = 1; end
            6'b110001: mem = 5'b00011;
            6'b110101: begin mem = 5'b00100; CDR_reg = 1; end
            6'b101001: mem = 5'b00101;
            6'b011001: mem = 5'b00110;
            6'b111000: mem = 5'b00111;
            6'b111001: begin mem = 5'b01000; CDR_reg = 1; end
            6'b100101: mem = 5'b01001;
            6'b010101: mem = 5'b01010;
            6'b110100: mem = 5'b01011;
            6'b001101: mem = 5'b01100;
            6'b101100: mem = 5'b01101;
            6'b011100: mem = 5'b01110;
            6'b010111: begin mem = 5'b01111; CDR_reg = 1; end
            6'b011011: begin mem = 5'b10000; CDR_reg = 1; end
            6'b100011: mem = 5'b10001;
            6'b010011: mem = 5'b10010;
            6'b110010: mem = 5'b10011;
            6'b001011: mem = 5'b10100;
            6'b101010: mem = 5'b10101;
            6'b011010: mem = 5'b10110;
            6'b111010: begin mem = 5'b10111; CDR_reg = 1; end
            6'b110011: begin mem = 5'b11000; CDR_reg = 1; end
            6'b100110: mem = 5'b11001;
            6'b010110: mem = 5'b11010;
            6'b110110: begin mem = 5'b11011; CDR_reg = 1; end
            6'b001110: mem = 5'b11100;
            6'b101110: begin mem = 5'b11101; CDR_reg = 1; end
            6'b011110: begin mem = 5'b11110; CDR_reg = 1; end
            6'b101011: begin mem = 5'b11111; CDR_reg = 1; end
        endcase
    flag_reg =~flag_reg;
end
