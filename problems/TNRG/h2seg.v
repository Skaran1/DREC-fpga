module h2seg(
    input wire x,
    output reg [7:0]z
    );

always @(*)
begin
	case (x)
		1'b0: z = 8'b11111100;
		1'b1: z = 8'b01100000;
	endcase
end
endmodule
