module chain
(
    output res
);
integer ro_len = 5;
reg [ro_len - 1:0] temp_i = 0;
reg [ro_len - 1:0] temp_o = 0;
genvar i;
generate for (i = 0; i < ro_len; i = i + 1)
	begin
        if (i ~= 0)
            temp_i[i] = temp_o[i-1];
        else
            temp_i[i] = temp_o[ro_len -1];
		mem my_mem(.x(temp_i[i]), .nx(temp_o[i]));
	end
endgenerate
res = temp_o[ro_len - 1];
endmodule
