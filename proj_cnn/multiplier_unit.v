module multiplier_unit#(parameter WIDTH = 9)
(
	
	input signed[WIDTH-1:0] dataa,
	input signed[WIDTH-1:0] datab,
	output signed[2*WIDTH-1:0] dataout
);
assign dataout = dataa * datab;

	
endmodule

