module master
(
	input clk,
	input wire miso,
	output wire mosi
);

reg mosi_reg;
assign mosi = mosi_reg;


reg [7:0] temp = 8'b1100_1010;
assign memoty = temp;
	
always @(negedge clk) begin
		mosi_reg = temp[7];
		temp <= {temp[6:0],miso};
end

endmodule 