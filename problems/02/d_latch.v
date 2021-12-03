module d_latch
(
    input wire d,
    input wire e,
    output wire q,
    output wire nq
);
sr_latch my_sr_l(.r(e & ~d), .s(e & d), .q(q), .nq(nq));
endmodule
