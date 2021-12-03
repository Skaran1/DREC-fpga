module d_flip_flop
(
    input wire d,
    input wire clk,
    output wire q,
    output wire nq
);
wire s0;
d_latch my_sr_l(.d(d), .e(~clk), .q(s0), .nq());
d_latch my_sr_l(.d(s0), .e(clk), .q(q), .nq(nq));
endmodule
