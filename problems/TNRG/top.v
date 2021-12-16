module top
(
    input CLK,
    output	wire	DS_EN1,
    output	wire	DS_EN2,
    output	wire	DS_EN3,
    output	wire	DS_EN4,
    output	wire	DS_A,
    output	wire	DS_B,
    output	wire	DS_C,
    output	wire	DS_D,
    output	wire	DS_E,
    output	wire	DS_F,
    output	wire	DS_G
);
wire res;
assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = ~enpos;
assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G, DS_DP} = seg;
enpos = 4'b0001;

all_chains my_all_chains(.res(res));
h2seg my_h2seg(.x(res), .z(seg));
end
