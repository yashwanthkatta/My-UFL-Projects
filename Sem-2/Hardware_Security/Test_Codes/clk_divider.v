module clk_divider(original_clk, new_clk, rst);
input original_clk, rst;
output reg new_clk;
reg [3:0]count;
wire [3:0]count_next;
always @(posedge original_clk) begin
	if (rst) begin
		new_clk <= 1'b0;
		count <= 4'b0;
	end
	else if (count_next == 4'd15) begin
		new_clk <= ~new_clk;
		count <= 4'd0; end
	else
		count <= count_next;
end

assign count_next = count + 4'd1;

endmodule
