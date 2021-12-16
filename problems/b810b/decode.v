module decod();

reg CDR_reg = 1;
wire CDR = CDR_reg;

reg [9:0] bits = 8'b01101_10110;
reg [7:0] bits_out;

reg flag_reg = 1;
wire flag = flag_reg;

my_4d3d my_3d4d_1(.flag(flag), .CDR(CDR), .bits(bits[9:6]), .mem(bits_out[7:5]));
my_6d5d my_5d6d_1(.flag(flag), .CDR(CDR), .bits(bits[5:0]), .mem(bits_out[4:0]));


end
