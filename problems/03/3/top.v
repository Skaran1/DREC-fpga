module top
(
    input wire CLK,
	 output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
    output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G, DS_DP
);	 
	 
wire s1;
wire s2;
reg cnt = 0;
wire clk_ms;
assign clk_ms = cnt;

wire [3:0] enpos;
wire [7:0] seg;

integer i = 0;

wire [15:0] temp_memory;


assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = ~enpos;
assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G, DS_DP} = seg;

always @(negedge CLK) 
begin
	if (i < 29019607)
	begin
		i = i + 1;
		cnt = 0;
	end
	else
	begin
		i = 0;
		cnt = 1;
	end
end


master my_master1(.clk(clk_ms), .miso(s2), .mosi(s1));
slave my_slave1(.clk(clk_ms), .mosi(s1), .miso(s2), .memory(temp_memory));
seven_seg s_seg1(.clk(CLK), .in_num(temp_memory), .enpos(enpos), .seg(seg));

endmodule 