//This module implements the Y = 1/2*{|X+1|-|X-1|} equation
// Here X is the initial X.

`define WIDTH 9
module eq2 (
X,
out
  );
	input wire signed [2 * `WIDTH - 1:0] X;
	wire signed [2 * `WIDTH - 1:0] Xplus1;
	wire signed [2 * `WIDTH - 1:0] Xminus1;
	wire signed [2 * `WIDTH - 1:0] Xplus;
	wire signed [2 * `WIDTH - 1:0] Xminus;
	output wire signed [2 * `WIDTH - 1:0] out;

// {{(2 * `WIDTH-1){1'b0}}, 1'b1} this notation basically acts like concatenation
// This would result in a sign extended binary one. This is necessary to make it the same size as X
	
	assign Xplus1 = X + {{(2 * `WIDTH - 1){1'b0}}, 1'b1};
	assign Xminus1 = X - {{(2 * `WIDTH - 1){1'b0}}, 1'b1};	

// Xplus and Xminus equations check the most significant bit of Xplus1 and Xminus1 
// If most significant bit is 1, then get the one's complement of Xplus1 and assign it to Xplus
// If most significant bit is 0, then Xplus is Xplus1 from previous step

	assign Xplus = (Xplus1[2 * `WIDTH - 1])?(~Xplus1+{{(2 * `WIDTH - 1){1'b0}}, 1'b1}):Xplus1;
	assign Xminus =  (Xminus1[2 * `WIDTH - 1])?(~Xminus1+{{(2 * `WIDTH - 1){1'b0}}, 1'b1}):Xminus1;

// Right shift (Xplus - Xminus) by one bit 

	assign out = (Xplus - Xminus) >>> {{(2 * `WIDTH-1){1'b0}}, 1'b1};
endmodule
