`timescale 1ns/10ps

module top(); 

reg clk = 1'b0;
reg d = 1'b0;
wire d_wire;
assign d_wire = d;
wire clk_wire;
assign clk_wire = clk;
wire q_o;
wire nq_o;

always
begin
    #1 clk = ~clk; 
end


d_flip_flop my_d_flip_flop(.d(d_wire), .clk(clk_wire), .q(q_o), .nq(nq_o));


initial begin
    $dumpvars;

    # 2 d = 1'b1;
    # 5 d = 1'b0;
     
    #7 $finish;   
end


endmodule
