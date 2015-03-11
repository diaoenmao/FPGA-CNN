module eq2 (
X,
out
  );
	input signed [2 * `WIDTH - 1:0] X;
	wire signed [2 * `WIDTH - 1:0] Xplus1;
	wire signed [2 * `WIDTH - 1:0] Xminus1;
	wire signed [2 * `WIDTH - 1:0] Xplus;
	wire signed [2 * `WIDTH - 1:0] Xminus;
	output wire signed [`WIDTH - 1:0] out;
	
	assign Xplus1 = X + (2 * `WIDTH - 1)'b1;
	assign Xminus1 = X - (2 * `WIDTH - 1)'b1;	
	assign Xplus = (Xplus1[2 * `WIDTH - 1])?-Xplus1:Xplus1;
	assign Xminus =  (Xminus1[2 * `WIDTH - 1])?-Xminus1:Xminus1;
	assign out = (Xplus + Xminus) >>> (2 * `WIDTH - 1)'b1;
endmodule
