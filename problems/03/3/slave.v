module slave
(
	input clk,
	input wire mosi,
	output wire miso,
	output wire [15:0] memory
);

reg miso_reg = 1'b0;
assign miso = miso_reg;

reg [7:0] temp = 8'b0;
assign memory = {8'h0, temp};
	
always @(posedge clk)
begin
		miso_reg = temp[7];
		temp <= {temp[6:0],mosi}; 
end

endmodule 