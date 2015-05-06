`define WIDTH 9
module multiplier(
	
	input signed [`WIDTH - 1 : 0] dataa,
	input signed [2 * `WIDTH - 1 : 0] datab,
	output signed [2 * `WIDTH - 1 : 0] dataout
);
assign dataout = dataa * datab;

	
endmodule

