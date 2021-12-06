module seven_seg
(
	input wire clk,
	input wire [15:0] in_num,
	output wire [3:0] enpos,
	output wire [7:0] seg
);

reg [1:0] k = 2'h0;
assign enpos = (4'b1 << k);
wire [3:0] to_seg = in_num[k * 4 +: 4]; 

reg cnt = 0;
wire clk_seg;
assign clk_seg = cnt;

integer i = 0;

always @(negedge clk) 
begin
	if (i < 4000)
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

always @(posedge clk_seg) 
begin
	k <= k + 1'h1;
end

h2seg h2seg4(.x(to_seg), .z(seg));

endmodule 