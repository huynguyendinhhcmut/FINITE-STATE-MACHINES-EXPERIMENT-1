module lab2_ex1(
	input logic clk,rst,clr,
	input logic w,
	output logic z,
	output logic [8:0] y
);
	
wire [8:0] D;

always_comb begin
	if (y[4] == 1'b1 | y[8] == 1'b1)
		z = 1'b1;
	else z = 1'b0;
end
	
assign  D[0] = rst;
assign  D[1] = ~w&(y[0] | y[5] | y[6] | y[7] | y[8]) ;
assign  D[2] = ~w&y[1] ;
assign  D[3] = ~w&~y[2] ;
assign  D[4] = ~w&(y[3] | y[4]);
assign  D[5] = w&(y[0] | y[1] | y[2] | y[3] | y[4]) ;
assign  D[6] = w&y[5] ;
assign  D[7] = w&y[6] ;
assign  D[8] = w&(y[7] | y[8]);

D_FF D_FF1 (.clk(clk), .rst(clr) , .data_i(D[0]) , .data_o(y[0]));
D_FF D_FF2 (.clk(clk), .rst(clr) , .data_i(D[1]) , .data_o(y[1]));
D_FF D_FF3 (.clk(clk), .rst(clr) , .data_i(D[2]) , .data_o(y[2]));
D_FF D_FF4 (.clk(clk), .rst(clr) , .data_i(D[3]) , .data_o(y[3]));
D_FF D_FF5 (.clk(clk), .rst(clr) , .data_i(D[4]) , .data_o(y[4]));
D_FF D_FF6 (.clk(clk), .rst(clr) , .data_i(D[5]) , .data_o(y[5]));
D_FF D_FF7 (.clk(clk), .rst(clr) , .data_i(D[6]) , .data_o(y[6]));
D_FF D_FF8 (.clk(clk), .rst(clr) , .data_i(D[7]) , .data_o(y[7]));
D_FF D_FF9 (.clk(clk), .rst(clr) , .data_i(D[8]) , .data_o(y[8]));

endmodule