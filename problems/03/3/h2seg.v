module h2seg(
    input wire [3:0]x,
    output reg [7:0]z
    );
	 
always @(*)
begin 
	case (x)
		4'h0: z = 8'b11111100;
		4'h1: z = 8'b01100000;
		4'h2: z = 8'b11011010;
		4'h3: z = 8'b11110010;
		4'h4: z = 8'b01100110;
		4'h5: z = 8'b10110110;
		4'h6: z = 8'b10111110;
		4'h7: z = 8'b11100000;
		4'h8: z = 8'b11111110;
		4'h9: z = 8'b11110110;
		4'hA: z = 8'b11101110;
		4'hB: z = 8'b00111110;
		4'hC: z = 8'b10011100;
		4'hD: z = 8'b01111010;
		4'hE: z = 8'b10011110;
		4'hF: z = 8'b10001110;
	endcase
end
endmodule