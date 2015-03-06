module eq2 (
X,
out
  );
	input signed [16:0] X;
	wire signed [16:0] Xplus1;
	wire signed [16:0] Xminus1;
	wire signed [16:0] Xplus;
	wire signed [16:0] Xminus;
	output wire signed [8:0] out;
	
	assign Xplus1 = X + 1;
	assign Xminus1 = X - 1;	
	assign Xplus = (Xplus1[16])?-Xplus1:Xplus1;
	assign Xminus =  (Xminus1[16])?-Xminus1:Xminus1;
	assign out = (Xplus + Xminus) >>> 2;
endmodule
