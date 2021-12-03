module d_flip_flop
(
    input wire d,
    input wire clk,
    output wire q,
    output wire nq
);
wire s0;
d_latch my_sr_l(.d(d), .e(!e), .q(s0), .nq());
d_latch my_sr_l(.d(s0), .e(e), .q(q), .nq(nq));
endmodule
