module all_chains
(
    output res
);
integer k_num = 12;
reg [k_num - 1:0] res_o = 0;
genvar i;
generate for (i = 0; i < k_num; i = i + 1)
	begin
        chain my_chain(.res(res_o[i]));
	end
endgenerate

res = ^temp_o;
endmodule
