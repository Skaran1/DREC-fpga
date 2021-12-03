module sr_latch
(
    input wire r,
    input wire s,
    output wire q,
    output wire nq
);
assign q = ~(r | nq);
assign nq = ~(s | q);
endmodule
