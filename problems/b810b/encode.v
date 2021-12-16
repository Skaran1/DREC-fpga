module encod();

reg CDR_reg = 1;
wire CDR = CDR_reg;

reg [7:0] bits = 8'b0110_1010;
reg [9:0] bits_out;

reg flag_reg = 1;
wire flag = flag_reg;

my_5d6d my_5d6d_1(.flag(flag), .CDR(CDR), .bits(bits[4:0]), .mem(bits_out[5:0]));
my_3d4d my_3d4d_1(.flag(flag), .CDR(CDR), .bits(bits[7:5]), .mem(bits_out[9:6]));

end
