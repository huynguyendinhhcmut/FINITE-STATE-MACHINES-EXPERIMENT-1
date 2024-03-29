module wrapper_lab2_ex1 (
	input logic [9:0] SW, KEY,
	output logic [9:0] LEDR
);

lab2_ex1 lab2ex1 ( .clk(KEY[0]), .clr(SW[0]), .w(SW[1]), .rst(KEY[1]), .z(LEDR[9]), .y(LEDR[8:0]));

endmodule